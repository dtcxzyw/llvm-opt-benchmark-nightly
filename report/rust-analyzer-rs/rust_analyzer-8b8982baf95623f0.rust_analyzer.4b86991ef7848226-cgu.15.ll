Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.15?download=true
inline.NumInlined: 5376
inline.NumDeleted: 2519
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_RINvYNtNvNtNtCs6u1mgJOKDyY_13rust_analyzer6config14true_or_always11deserialize1VNtNtCsjQbM3MYDIrM_10serde_core2de7Visitor9visit_i32NtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorEBb_:bb.a
  store i64 %i.c, ptr %i.d, align 8, !noalias !5322
  store i8 2, ptr %i.b, align 8, !noalias !5322
  call void @_RNvYNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error12invalid_typeCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5322
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvYNtNvNtNtCs6u1mgJOKDyY_13rust_analyzer6config14true_or_always11deserialize1VNtNtCsjQbM3MYDIrM_10serde_core2de7Visitor9visit_i64NtNtCs8yjYO7b73r2_10serde_json5error5ErrorEBb_(i64 noundef %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %0, ptr %i.c, align 8
  store i8 2, ptr %i.b, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8yjYO7b73r2_10serde_json5errorNtB5_5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvNtNtCs6u1mgJOKDyY_13rust_analyzer6config14true_or_always11deserialize1VNtNtCsjQbM3MYDIrM_10serde_core2de7Visitor9visit_i64NtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorEBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.c, align 8
  store i8 2, ptr %i.b, align 8
  call void @_RNvYNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error12invalid_typeCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvYNtNvNtNtCs6u1mgJOKDyY_13rust_analyzer6config14true_or_always11deserialize1VNtNtCsjQbM3MYDIrM_10serde_core2de7Visitor9visit_mapQINtNtNtNtCsaUNMb2qFvZy_5serde7private2de7content18MapRefDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEEBb_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 11, ptr %i.b, align 8
  %i.c = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8yjYO7b73r2_10serde_json5errorNtB5_5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvNtNtCs6u1mgJOKDyY_13rust_analyzer6config14true_or_always11deserialize1VNtNtCsjQbM3MYDIrM_10serde_core2de7Visitor9visit_mapQINtNtNtNtCsaUNMb2qFvZy_5serde7private2de7content18MapRefDeserializerNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorEEBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 11, ptr %i.b, align 8
  call void @_RNvYNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error12invalid_typeCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvYNtNvNtNtCs6u1mgJOKDyY_13rust_analyzer6config14true_or_always11deserialize1VNtNtCsjQbM3MYDIrM_10serde_core2de7Visitor9visit_seqQINtNtNtNtCsaUNMb2qFvZy_5serde7private2de7content18SeqRefDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEEBb_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 8
  %i.c = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8yjYO7b73r2_10serde_json5errorNtB5_5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvNtNtCs6u1mgJOKDyY_13rust_analyzer6config14true_or_always11deserialize1VNtNtCsjQbM3MYDIrM_10serde_core2de7Visitor9visit_seqQINtNtNtNtCsaUNMb2qFvZy_5serde7private2de7content18SeqRefDeserializerNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorEEBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 8
  call void @_RNvYNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error12invalid_typeCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvYNtNvNtNtCs6u1mgJOKDyY_13rust_analyzer6config14true_or_always11deserialize1VNtNtCsjQbM3MYDIrM_10serde_core2de7Visitor9visit_u16NtNtCs8yjYO7b73r2_10serde_json5error5ErrorEBb_(i16 noundef %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = zext i16 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.c, ptr %i.d, align 8
  store i8 1, ptr %i.b, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8yjYO7b73r2_10serde_json5errorNtB5_5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.e
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvNtNtCs6u1mgJOKDyY_13rust_analyzer6config14true_or_always11deserialize1VNtNtCsjQbM3MYDIrM_10serde_core2de7Visitor9visit_u16NtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorEBb_(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, i16 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = zext i16 %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5325
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.c, ptr %i.d, align 8, !noalias !5325
  store i8 1, ptr %i.b, align 8, !noalias !5325
  call void @_RNvYNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error12invalid_typeCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5325
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvYNtNvNtNtCs6u1mgJOKDyY_13rust_analyzer6config14true_or_always11deserialize1VNtNtCsjQbM3MYDIrM_10serde_core2de7Visitor9visit_u32NtNtCs8yjYO7b73r2_10serde_json5error5ErrorEBb_(i32 noundef %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = zext i32 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.c, ptr %i.d, align 8
  store i8 1, ptr %i.b, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8yjYO7b73r2_10serde_json5errorNtB5_5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.e
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvNtNtCs6u1mgJOKDyY_13rust_analyzer6config14true_or_always11deserialize1VNtNtCsjQbM3MYDIrM_10serde_core2de7Visitor9visit_u32NtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorEBb_(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, i32 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = zext i32 %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5328
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.c, ptr %i.d, align 8, !noalias !5328
  store i8 1, ptr %i.b, align 8, !noalias !5328
  call void @_RNvYNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error12invalid_typeCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5328
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvYNtNvNtNtCs6u1mgJOKDyY_13rust_analyzer6config14true_or_always11deserialize1VNtNtCsjQbM3MYDIrM_10serde_core2de7Visitor9visit_u64NtNtCs8yjYO7b73r2_10serde_json5error5ErrorEBb_(i64 noundef %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %0, ptr %i.c, align 8
  store i8 1, ptr %i.b, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8yjYO7b73r2_10serde_json5errorNtB5_5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvNtNtCs6u1mgJOKDyY_13rust_analyzer6config14true_or_always11deserialize1VNtNtCsjQbM3MYDIrM_10serde_core2de7Visitor9visit_u64NtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorEBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.c, align 8
  store i8 1, ptr %i.b, align 8
  call void @_RNvYNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error12invalid_typeCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: inlinehint minsize nonlazybind optsize uwtable
define internal fastcc void @_RNCINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB5_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE10initializeNCINvB4_11get_or_initNCNvBX_13default_types0E0zE0Cs6u1mgJOKDyY_13rust_analyzer(ptr nofree readonly captures(none) %.0.val, ptr nofree writeonly captures(none) %.8.val) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [32 x i8], align 8                ; 6 uses
  %i.x = alloca [2048 x i8], align 8              ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 5 uses
  %i.ab = alloca [40 x i8], align 8               ; 5 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 5 uses
  %i.ae = alloca [40 x i8], align 8               ; 5 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 5 uses
  %i.ah = alloca [40 x i8], align 8               ; 5 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [8 x i8], align 8                ; 5 uses
  %i.ak = alloca [40 x i8], align 8               ; 5 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [8 x i8], align 8                ; 5 uses
  %i.an = alloca [40 x i8], align 8               ; 5 uses
  %i.ao = alloca [8 x i8], align 8                ; 4 uses
  %i.ap = alloca [8 x i8], align 8                ; 5 uses
  %i.aq = alloca [40 x i8], align 8               ; 5 uses
  %i.ar = alloca [8 x i8], align 8                ; 4 uses
  %i.as = alloca [8 x i8], align 8                ; 5 uses
  %i.at = alloca [40 x i8], align 8               ; 5 uses
  %i.au = alloca [8 x i8], align 8                ; 4 uses
  %i.av = alloca [8 x i8], align 8                ; 5 uses
  %i.aw = alloca [40 x i8], align 8               ; 5 uses
  %i.ax = alloca [8 x i8], align 8                ; 4 uses
  %i.ay = alloca [8 x i8], align 8                ; 5 uses
  %i.az = alloca [40 x i8], align 8               ; 5 uses
  %i.ba = alloca [8 x i8], align 8                ; 4 uses
  %i.bb = alloca [8 x i8], align 8                ; 5 uses
  %i.bc = alloca [40 x i8], align 8               ; 5 uses
  %i.bd = alloca [8 x i8], align 8                ; 4 uses
  %i.be = alloca [8 x i8], align 8                ; 5 uses
  %i.bf = alloca [40 x i8], align 8               ; 5 uses
  %i.bg = alloca [8 x i8], align 8                ; 4 uses
  %i.bh = alloca [8 x i8], align 8                ; 5 uses
  %i.bi = alloca [40 x i8], align 8               ; 5 uses
  %i.bj = alloca [8 x i8], align 8                ; 4 uses
  %i.bk = alloca [8 x i8], align 8                ; 5 uses
  %i.bl = alloca [40 x i8], align 8               ; 5 uses
  %i.bm = alloca [8 x i8], align 8                ; 4 uses
  %i.bn = alloca [8 x i8], align 8                ; 5 uses
  %i.bo = alloca [40 x i8], align 8               ; 5 uses
  %i.bp = alloca [8 x i8], align 8                ; 4 uses
  %i.bq = alloca [8 x i8], align 8                ; 5 uses
  %i.br = alloca [40 x i8], align 8               ; 5 uses
  %i.bs = alloca [8 x i8], align 8                ; 4 uses
  %i.bt = alloca [8 x i8], align 8                ; 5 uses
  %i.bu = alloca [40 x i8], align 8               ; 5 uses
  %i.bv = alloca [8 x i8], align 8                ; 4 uses
  %i.bw = alloca [8 x i8], align 8                ; 5 uses
  %i.bx = alloca [40 x i8], align 8               ; 5 uses
  %i.by = alloca [8 x i8], align 8                ; 4 uses
  %i.bz = alloca [8 x i8], align 8                ; 5 uses
  %i.ca = alloca [40 x i8], align 8               ; 5 uses
  %i.cb = alloca [8 x i8], align 8                ; 4 uses
  %i.cc = alloca [8 x i8], align 8                ; 5 uses
  %i.cd = alloca [40 x i8], align 8               ; 5 uses
  %i.ce = alloca [8 x i8], align 8                ; 4 uses
  %i.cf = alloca [8 x i8], align 8                ; 5 uses
  %i.cg = alloca [40 x i8], align 8               ; 5 uses
  %i.ch = alloca [8 x i8], align 8                ; 4 uses
  %i.ci = alloca [8 x i8], align 8                ; 5 uses
  %i.cj = alloca [40 x i8], align 8               ; 5 uses
  %i.ck = alloca [8 x i8], align 8                ; 4 uses
  %i.cl = alloca [8 x i8], align 8                ; 5 uses
  %i.cm = alloca [40 x i8], align 8               ; 5 uses
  %i.cn = alloca [8 x i8], align 8                ; 4 uses
  %i.co = alloca [8 x i8], align 8                ; 5 uses
  %i.cp = alloca [40 x i8], align 8               ; 5 uses
  %i.cq = alloca [8 x i8], align 8                ; 4 uses
  %i.cr = alloca [8 x i8], align 8                ; 5 uses
  %i.cs = alloca [40 x i8], align 8               ; 5 uses
  %i.ct = alloca [8 x i8], align 8                ; 4 uses
  %i.cu = alloca [8 x i8], align 8                ; 5 uses
  %i.cv = alloca [40 x i8], align 8               ; 5 uses
  %i.cw = alloca [8 x i8], align 8                ; 4 uses
  %i.cx = alloca [8 x i8], align 8                ; 5 uses
  %i.cy = alloca [40 x i8], align 8               ; 5 uses
  %i.cz = alloca [8 x i8], align 8                ; 4 uses
  %i.da = alloca [8 x i8], align 8                ; 4 uses
  %i.db = alloca [8 x i8], align 8                ; 5 uses
  %i.dc = alloca [40 x i8], align 8               ; 5 uses
  %i.dd = alloca [36 x i8], align 4               ; 4 uses
  %i.de = alloca [36 x i8], align 4               ; 4 uses
  %i.df = alloca [32 x i8], align 8               ; 4 uses
  %.sroa.491.i.i = alloca [2048 x i8], align 8    ; 4 uses
  %i.dg = alloca [32 x i8], align 8               ; 6 uses
  %i.dh = alloca [32 x i8], align 8               ; 7 uses
  %i.di = alloca [32 x i8], align 8               ; 8 uses
  %i.dj = alloca [32 x i8], align 8               ; 5 uses
  %i.dk = alloca [32 x i8], align 8               ; 5 uses
  %i.dl = alloca [32 x i8], align 8               ; 5 uses
  %i.dm = alloca [32 x i8], align 8               ; 5 uses
  %i.dn = alloca [32 x i8], align 8               ; 6 uses
  %i.do = alloca [32 x i8], align 8               ; 6 uses
  %i.dp = alloca [32 x i8], align 8               ; 6 uses
  %i.dq = alloca [32 x i8], align 8               ; 6 uses
  %i.dr = alloca [32 x i8], align 8               ; 6 uses
  %i.ds = alloca [32 x i8], align 8               ; 6 uses
  %i.dt = alloca [32 x i8], align 8               ; 6 uses
  %i.du = alloca [32 x i8], align 8               ; 6 uses
  %i.dv = alloca [32 x i8], align 8               ; 6 uses
  %i.dw = alloca [32 x i8], align 8               ; 6 uses
  %i.dx = alloca [32 x i8], align 8               ; 6 uses
  %i.dy = alloca [32 x i8], align 8               ; 6 uses
  %i.dz = alloca [32 x i8], align 8               ; 6 uses
  %i.ea = alloca [32 x i8], align 8               ; 6 uses
  %i.eb = alloca [32 x i8], align 8               ; 6 uses
  %i.ec = alloca [32 x i8], align 8               ; 8 uses
  %i.ed = alloca [32 x i8], align 8               ; 6 uses
  %i.ee = alloca [32 x i8], align 8               ; 6 uses
  %i.ef = alloca [32 x i8], align 8               ; 6 uses
  %i.eg = alloca [36 x i8], align 4               ; 4 uses
  %i.eh = alloca [32 x i8], align 8               ; 5 uses
  %.sroa.31181 = alloca [2048 x i8], align 8      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh), !noalias !5331
  store i32 9, ptr %i.eh, align 8, !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !noalias !5338
  store <2 x i32> zeroinitializer, ptr %i.db, align 8, !noalias !5338
  call fastcc void @_RNvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5flagsINtB2_15FlagComputationNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE8add_kindCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 4 dereferenceable(8) %i.db, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.eh), !noalias !5331
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.ei = load <2 x i32>, ptr %i.db, align 8, !noalias !5338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !5338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !noalias !5338
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dc, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.eh, i64 32, i1 false), !noalias !5331
  store <2 x i32> %i.ei, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !5338
  %i.ej = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gcCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.dc) #53, !noalias !5338 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !5338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !5338
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -8 ; 3 uses
  store ptr %i.ek, ptr %i.da, align 8, !noalias !5338
  %i.el = atomicrmw add ptr %i.ek, i64 1 monotonic, align 8, !noalias !5338
  %i.em = icmp slt i64 %i.el, 0
  br i1 %i.em, label %bb.b, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i, !prof !116

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.e unwind label %bb.c, !noalias !5338

bb.c:                                             ; preds = %bb.b
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = atomicrmw sub ptr %i.ek, i64 1 release, align 8, !noalias !5341
  %i.ep = icmp eq i64 %i.eo, 1
  br i1 %i.ep, label %bb.d, label %common.resume.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.da) #58
          to label %common.resume.i.i unwind label %bb.f, !noalias !5338

bb.e:                                             ; preds = %bb.b
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5338
  unreachable

common.resume.i.i:                                ; preds = %bb.jv, %.body.i.i350.i.i, %bb.iy, %.body.i.i324.i.i, %bb.ie, %.body.i.i289.i.i, %bb.hk, %.body.i.i267.i.i, %bb.gs, %.body.i.i235.i.i, %bb.fx, %.body.i.i227.i.i, %bb.fe, %bb.fd, %bb.ez, %bb.ey, %bb.et, %bb.es, %bb.eo, %bb.en, %bb.ej, %bb.ei, %bb.ee, %bb.ed, %bb.dz, %bb.dy, %bb.du, %bb.dt, %bb.dp, %bb.do, %bb.dk, %bb.dj, %bb.df, %bb.de, %bb.da, %bb.cz, %bb.cv, %bb.cu, %bb.cq, %bb.cp, %bb.cl, %bb.ck, %bb.cg, %bb.cf, %bb.cb, %bb.ca, %bb.bw, %bb.bv, %bb.br, %bb.bq, %bb.bm, %bb.bl, %bb.bh, %bb.bg, %bb.bc, %bb.bb, %bb.ax, %bb.aw, %bb.as, %bb.ar, %bb.an, %bb.am, %bb.ai, %bb.ah, %bb.ad, %bb.ac, %bb.y, %bb.x, %bb.t, %bb.s, %bb.o, %bb.n, %bb.i, %bb.h, %bb.d, %bb.c
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.afj, %.body.i.i324.i.i ], [ %i.en, %bb.c ], [ %i.ev, %bb.h ], [ %i.fh, %bb.n ], [ %i.fq, %bb.s ], [ %i.fz, %bb.x ], [ %i.gi, %bb.ac ], [ %i.gr, %bb.ah ], [ %i.ha, %bb.am ], [ %i.hj, %bb.ar ], [ %i.hs, %bb.aw ], [ %i.ib, %bb.bb ], [ %i.ik, %bb.bg ], [ %i.it, %bb.bl ], [ %i.jc, %bb.bq ], [ %i.jl, %bb.bv ], [ %i.ju, %bb.ca ], [ %i.kd, %bb.cf ], [ %i.km, %bb.ck ], [ %i.kv, %bb.cp ], [ %i.le, %bb.cu ], [ %i.ln, %bb.cz ], [ %i.lw, %bb.de ], [ %i.mf, %bb.dj ], [ %i.mo, %bb.do ], [ %i.mx, %bb.dt ], [ %i.ng, %bb.dy ], [ %i.np, %bb.ed ], [ %i.ny, %bb.ei ], [ %i.og, %bb.en ], [ %i.os, %bb.es ], [ %i.pc, %bb.ey ], [ %i.pk, %bb.fd ], [ %i.rn, %.body.i.i227.i.i ], [ %i.vc, %.body.i.i235.i.i ], [ %i.yl, %.body.i.i267.i.i ], [ %eh.lpad-body.i.i.i.i, %.body.i.i289.i.i ], [ %i.en, %bb.d ], [ %i.ev, %bb.i ], [ %i.fh, %bb.o ], [ %i.fq, %bb.t ], [ %i.fz, %bb.y ], [ %i.gi, %bb.ad ], [ %i.gr, %bb.ai ], [ %i.ha, %bb.an ], [ %i.hj, %bb.as ], [ %i.hs, %bb.ax ], [ %i.ib, %bb.bc ], [ %i.ik, %bb.bh ], [ %i.it, %bb.bm ], [ %i.jc, %bb.br ], [ %i.jl, %bb.bw ], [ %i.ju, %bb.cb ], [ %i.kd, %bb.cg ], [ %i.km, %bb.cl ], [ %i.kv, %bb.cq ], [ %i.le, %bb.cv ], [ %i.ln, %bb.da ], [ %i.lw, %bb.df ], [ %i.mf, %bb.dk ], [ %i.mo, %bb.dp ], [ %i.mx, %bb.du ], [ %i.ng, %bb.dz ], [ %i.np, %bb.ee ], [ %i.ny, %bb.ej ], [ %i.og, %bb.eo ], [ %i.os, %bb.et ], [ %i.pc, %bb.ez ], [ %i.pk, %bb.fe ], [ %i.rn, %bb.fx ], [ %i.vc, %bb.gs ], [ %i.yl, %bb.hk ], [ %eh.lpad-body.i.i.i.i, %bb.ie ], [ %i.afj, %bb.iy ], [ %i.aig, %bb.jv ], [ %i.aig, %.body.i.i350.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !5338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh), !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg), !noalias !5331
  store i32 18, ptr %i.eg, align 4, !noalias !5331
  %i.er = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB2_6Region3new(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %i.eg), !noalias !5348 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !5349
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -8 ; 3 uses
  store ptr %i.es, ptr %i.cz, align 8, !noalias !5349
  %i.et = atomicrmw add ptr %i.es, i64 1 monotonic, align 8, !noalias !5349
  %i.eu = icmp slt i64 %i.et, 0
  br i1 %i.eu, label %bb.g, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s0_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i, !prof !116

bb.g:                                             ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.j unwind label %bb.h, !noalias !5349

bb.h:                                             ; preds = %bb.g
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ew = atomicrmw sub ptr %i.es, i64 1 release, align 8, !noalias !5352
  %i.ex = icmp eq i64 %i.ew, 1
  br i1 %i.ex, label %bb.i, label %common.resume.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6region14RegionInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cz) #58
          to label %common.resume.i.i unwind label %bb.k, !noalias !5349

bb.j:                                             ; preds = %bb.g
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5349
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s0_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !5349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg), !noalias !5331
  %i.ez = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TysStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #53, !noalias !5331 ; 3 uses
  %i.fa = atomicrmw add ptr %i.ez, i64 1 monotonic, align 8, !noalias !5331
  %i.fb = icmp slt i64 %i.fa, 0
  br i1 %i.fb, label %bb.l, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0sb_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i, !prof !116

bb.l:                                             ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s0_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57, !noalias !5331
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0sb_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s0_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef), !noalias !5331
  store i32 24, ptr %i.ef, align 8, !noalias !5331
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr %i.ez, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !5359
  store <2 x i32> zeroinitializer, ptr %i.cx, align 8, !noalias !5359
  call fastcc void @_RNvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5flagsINtB2_15FlagComputationNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE8add_kindCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 4 dereferenceable(8) %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ef), !noalias !5331
  %.sroa.4.0..sroa_idx.i119.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.fc = load <2 x i32>, ptr %i.cx, align 8, !noalias !5359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !5359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !5359
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cy, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ef, i64 32, i1 false), !noalias !5331
  store <2 x i32> %i.fc, ptr %.sroa.4.0..sroa_idx.i119.i.i, align 8, !noalias !5359
  %i.fd = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gcCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.cy) #53, !noalias !5359 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !5359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !5359
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 -8 ; 3 uses
  store ptr %i.fe, ptr %i.cw, align 8, !noalias !5359
  %i.ff = atomicrmw add ptr %i.fe, i64 1 monotonic, align 8, !noalias !5359
  %i.fg = icmp slt i64 %i.ff, 0
  br i1 %i.fg, label %bb.m, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit122.i.i, !prof !116

bb.m:                                             ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0sb_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.p unwind label %bb.n, !noalias !5359

bb.n:                                             ; preds = %bb.m
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fi = atomicrmw sub ptr %i.fe, i64 1 release, align 8, !noalias !5362
  %i.fj = icmp eq i64 %i.fi, 1
  br i1 %i.fj, label %bb.o, label %common.resume.i.i

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cw) #58
          to label %common.resume.i.i unwind label %bb.q, !noalias !5359

bb.p:                                             ; preds = %bb.m
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5359
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit122.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0sb_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !5359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !noalias !5331
  store i32 5, ptr %i.ee, align 8, !noalias !5331
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  store i8 1, ptr %.sroa.47.0..sroa_idx.i.i, align 4, !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !5369
  store <2 x i32> zeroinitializer, ptr %i.cu, align 8, !noalias !5369
  call fastcc void @_RNvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5flagsINtB2_15FlagComputationNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE8add_kindCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 4 dereferenceable(8) %i.cu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ee), !noalias !5331
  %.sroa.4.0..sroa_idx.i123.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.fl = load <2 x i32>, ptr %i.cu, align 8, !noalias !5369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !5369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !5369
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ee, i64 32, i1 false), !noalias !5331
  store <2 x i32> %i.fl, ptr %.sroa.4.0..sroa_idx.i123.i.i, align 8, !noalias !5369
  %i.fm = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gcCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.cv) #53, !noalias !5369 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !5369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !5369
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 -8 ; 3 uses
  store ptr %i.fn, ptr %i.ct, align 8, !noalias !5369
  %i.fo = atomicrmw add ptr %i.fn, i64 1 monotonic, align 8, !noalias !5369
  %i.fp = icmp slt i64 %i.fo, 0
  br i1 %i.fp, label %bb.r, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit126.i.i, !prof !116

bb.r:                                             ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit122.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.u unwind label %bb.s, !noalias !5369

bb.s:                                             ; preds = %bb.r
  %i.fq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fr = atomicrmw sub ptr %i.fn, i64 1 release, align 8, !noalias !5372
  %i.fs = icmp eq i64 %i.fr, 1
  br i1 %i.fs, label %bb.t, label %common.resume.i.i

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ct) #58
          to label %common.resume.i.i unwind label %bb.v, !noalias !5369

bb.u:                                             ; preds = %bb.r
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5369
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit126.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit122.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !5369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed), !noalias !5331
  store i32 12, ptr %i.ed, align 8, !noalias !5331
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr %i.fm, ptr %.sroa.411.0..sroa_idx.i.i, align 8, !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !5379
  store <2 x i32> zeroinitializer, ptr %i.cr, align 8, !noalias !5379
  call fastcc void @_RNvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5flagsINtB2_15FlagComputationNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE8add_kindCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 4 dereferenceable(8) %i.cr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ed), !noalias !5331
  %.sroa.4.0..sroa_idx.i127.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.fu = load <2 x i32>, ptr %i.cr, align 8, !noalias !5379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !5379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !5379
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ed, i64 32, i1 false), !noalias !5331
  store <2 x i32> %i.fu, ptr %.sroa.4.0..sroa_idx.i127.i.i, align 8, !noalias !5379
  %i.fv = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gcCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.cs) #53, !noalias !5379 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !5379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !5379
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 -8 ; 3 uses
  store ptr %i.fw, ptr %i.cq, align 8, !noalias !5379
  %i.fx = atomicrmw add ptr %i.fw, i64 1 monotonic, align 8, !noalias !5379
  %i.fy = icmp slt i64 %i.fx, 0
  br i1 %i.fy, label %bb.w, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit130.i.i, !prof !116

bb.w:                                             ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit126.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.z unwind label %bb.x, !noalias !5379

bb.x:                                             ; preds = %bb.w
  %i.fz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ga = atomicrmw sub ptr %i.fw, i64 1 release, align 8, !noalias !5382
  %i.gb = icmp eq i64 %i.ga, 1
  br i1 %i.gb, label %bb.y, label %common.resume.i.i

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cq) #58
          to label %common.resume.i.i unwind label %bb.aa, !noalias !5379

bb.z:                                             ; preds = %bb.w
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5379
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit130.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit126.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !5379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec), !noalias !5331
  store i32 14, ptr %i.ec, align 8, !noalias !5331
  %.sroa.415.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %i.er, ptr %.sroa.415.0..sroa_idx.i.i, align 8, !noalias !5331
  %.sroa.516.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store ptr %i.fv, ptr %.sroa.516.0..sroa_idx.i.i, align 8, !noalias !5331
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  store i8 0, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !5389
  store <2 x i32> zeroinitializer, ptr %i.co, align 8, !noalias !5389
  call fastcc void @_RNvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5flagsINtB2_15FlagComputationNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE8add_kindCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 4 dereferenceable(8) %i.co, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ec), !noalias !5331
  %.sroa.4.0..sroa_idx.i131.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.gd = load <2 x i32>, ptr %i.co, align 8, !noalias !5389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !5389
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !5389
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cp, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ec, i64 32, i1 false), !noalias !5331
  store <2 x i32> %i.gd, ptr %.sroa.4.0..sroa_idx.i131.i.i, align 8, !noalias !5389
  %i.ge = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gcCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.cp) #53, !noalias !5389 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !5389
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !5389
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 -8 ; 3 uses
  store ptr %i.gf, ptr %i.cn, align 8, !noalias !5389
  %i.gg = atomicrmw add ptr %i.gf, i64 1 monotonic, align 8, !noalias !5389
  %i.gh = icmp slt i64 %i.gg, 0
  br i1 %i.gh, label %bb.ab, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit134.i.i, !prof !116

bb.ab:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit130.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.ae unwind label %bb.ac, !noalias !5389

bb.ac:                                            ; preds = %bb.ab
  %i.gi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gj = atomicrmw sub ptr %i.gf, i64 1 release, align 8, !noalias !5392
  %i.gk = icmp eq i64 %i.gj, 1
  br i1 %i.gk, label %bb.ad, label %common.resume.i.i

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cn) #58
          to label %common.resume.i.i unwind label %bb.af, !noalias !5389

bb.ae:                                            ; preds = %bb.ab
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5389
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit134.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit130.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !5389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb), !noalias !5331
  store i32 5, ptr %i.eb, align 8, !noalias !5331
  %.sroa.423.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  store i8 0, ptr %.sroa.423.0..sroa_idx.i.i, align 4, !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !5399
  store <2 x i32> zeroinitializer, ptr %i.cl, align 8, !noalias !5399
  call fastcc void @_RNvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5flagsINtB2_15FlagComputationNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE8add_kindCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 4 dereferenceable(8) %i.cl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.eb), !noalias !5331
  %.sroa.4.0..sroa_idx.i135.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.gm = load <2 x i32>, ptr %i.cl, align 8, !noalias !5399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !5399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !5399
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.eb, i64 32, i1 false), !noalias !5331
  store <2 x i32> %i.gm, ptr %.sroa.4.0..sroa_idx.i135.i.i, align 8, !noalias !5399
  %i.gn = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gcCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.cm) #53, !noalias !5399 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !5399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !5399
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 -8 ; 3 uses
  store ptr %i.go, ptr %i.ck, align 8, !noalias !5399
  %i.gp = atomicrmw add ptr %i.go, i64 1 monotonic, align 8, !noalias !5399
  %i.gq = icmp slt i64 %i.gp, 0
  br i1 %i.gq, label %bb.ag, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit138.i.i, !prof !116

bb.ag:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit134.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.aj unwind label %bb.ah, !noalias !5399

bb.ah:                                            ; preds = %bb.ag
  %i.gr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gs = atomicrmw sub ptr %i.go, i64 1 release, align 8, !noalias !5402
  %i.gt = icmp eq i64 %i.gs, 1
  br i1 %i.gt, label %bb.ai, label %common.resume.i.i

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ck) #58
          to label %common.resume.i.i unwind label %bb.ak, !noalias !5399

bb.aj:                                            ; preds = %bb.ag
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5399
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit138.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit134.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !5399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea), !noalias !5331
  store i32 5, ptr %i.ea, align 8, !noalias !5331
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  store i8 2, ptr %.sroa.426.0..sroa_idx.i.i, align 4, !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !5409
  store <2 x i32> zeroinitializer, ptr %i.ci, align 8, !noalias !5409
  call fastcc void @_RNvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5flagsINtB2_15FlagComputationNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE8add_kindCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 4 dereferenceable(8) %i.ci, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ea), !noalias !5331
  %.sroa.4.0..sroa_idx.i139.i.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.gv = load <2 x i32>, ptr %i.ci, align 8, !noalias !5409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !5409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !5409
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ea, i64 32, i1 false), !noalias !5331
  store <2 x i32> %i.gv, ptr %.sroa.4.0..sroa_idx.i139.i.i, align 8, !noalias !5409
  %i.gw = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gcCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.cj) #53, !noalias !5409 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !5409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !5409
  %i.gx = getelementptr inbounds i8, ptr %i.gw, i64 -8 ; 3 uses
  store ptr %i.gx, ptr %i.ch, align 8, !noalias !5409
  %i.gy = atomicrmw add ptr %i.gx, i64 1 monotonic, align 8, !noalias !5409
  %i.gz = icmp slt i64 %i.gy, 0
  br i1 %i.gz, label %bb.al, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit142.i.i, !prof !116

bb.al:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit138.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.ao unwind label %bb.am, !noalias !5409

bb.am:                                            ; preds = %bb.al
  %i.ha = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hb = atomicrmw sub ptr %i.gx, i64 1 release, align 8, !noalias !5412
  %i.hc = icmp eq i64 %i.hb, 1
  br i1 %i.hc, label %bb.an, label %common.resume.i.i

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ch) #58
          to label %common.resume.i.i unwind label %bb.ap, !noalias !5409

bb.ao:                                            ; preds = %bb.al
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.hd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5409
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit142.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit138.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !5409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea), !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz), !noalias !5331
  store i32 5, ptr %i.dz, align 8, !noalias !5331
  %.sroa.429.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  store i8 3, ptr %.sroa.429.0..sroa_idx.i.i, align 4, !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !5419
  store <2 x i32> zeroinitializer, ptr %i.cf, align 8, !noalias !5419
  call fastcc void @_RNvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5flagsINtB2_15FlagComputationNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE8add_kindCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 4 dereferenceable(8) %i.cf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dz), !noalias !5331
  %.sroa.4.0..sroa_idx.i143.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.he = load <2 x i32>, ptr %i.cf, align 8, !noalias !5419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !5419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !5419
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.dz, i64 32, i1 false), !noalias !5331
  store <2 x i32> %i.he, ptr %.sroa.4.0..sroa_idx.i143.i.i, align 8, !noalias !5419
  %i.hf = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gcCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.cg) #53, !noalias !5419 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !5419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !5419
  %i.hg = getelementptr inbounds i8, ptr %i.hf, i64 -8 ; 3 uses
  store ptr %i.hg, ptr %i.ce, align 8, !noalias !5419
  %i.hh = atomicrmw add ptr %i.hg, i64 1 monotonic, align 8, !noalias !5419
  %i.hi = icmp slt i64 %i.hh, 0
  br i1 %i.hi, label %bb.aq, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit146.i.i, !prof !116

bb.aq:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit142.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.at unwind label %bb.ar, !noalias !5419

bb.ar:                                            ; preds = %bb.aq
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hk = atomicrmw sub ptr %i.hg, i64 1 release, align 8, !noalias !5422
  %i.hl = icmp eq i64 %i.hk, 1
  br i1 %i.hl, label %bb.as, label %common.resume.i.i

bb.as:                                            ; preds = %bb.ar
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ce) #58
          to label %common.resume.i.i unwind label %bb.au, !noalias !5419

bb.at:                                            ; preds = %bb.aq
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5419
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit146.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit142.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !5419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy), !noalias !5331
  store i32 5, ptr %i.dy, align 8, !noalias !5331
  %.sroa.432.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  store i8 4, ptr %.sroa.432.0..sroa_idx.i.i, align 4, !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !5429
  store <2 x i32> zeroinitializer, ptr %i.cc, align 8, !noalias !5429
  call fastcc void @_RNvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5flagsINtB2_15FlagComputationNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE8add_kindCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 4 dereferenceable(8) %i.cc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dy), !noalias !5331
  %.sroa.4.0..sroa_idx.i147.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.hn = load <2 x i32>, ptr %i.cc, align 8, !noalias !5429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !5429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !5429
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.dy, i64 32, i1 false), !noalias !5331
  store <2 x i32> %i.hn, ptr %.sroa.4.0..sroa_idx.i147.i.i, align 8, !noalias !5429
  %i.ho = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gcCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.cd) #53, !noalias !5429 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !5429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !5429
  %i.hp = getelementptr inbounds i8, ptr %i.ho, i64 -8 ; 3 uses
  store ptr %i.hp, ptr %i.cb, align 8, !noalias !5429
  %i.hq = atomicrmw add ptr %i.hp, i64 1 monotonic, align 8, !noalias !5429
  %i.hr = icmp slt i64 %i.hq, 0
  br i1 %i.hr, label %bb.av, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit150.i.i, !prof !116

bb.av:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit146.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.ay unwind label %bb.aw, !noalias !5429

bb.aw:                                            ; preds = %bb.av
  %i.hs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ht = atomicrmw sub ptr %i.hp, i64 1 release, align 8, !noalias !5432
  %i.hu = icmp eq i64 %i.ht, 1
  br i1 %i.hu, label %bb.ax, label %common.resume.i.i

bb.ax:                                            ; preds = %bb.aw
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cb) #58
          to label %common.resume.i.i unwind label %bb.az, !noalias !5429

bb.ay:                                            ; preds = %bb.av
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.hv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5429
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit150.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit146.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !5429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx), !noalias !5331
  store i32 5, ptr %i.dx, align 8, !noalias !5331
  %.sroa.435.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  store i8 5, ptr %.sroa.435.0..sroa_idx.i.i, align 4, !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !5439
  store <2 x i32> zeroinitializer, ptr %i.bz, align 8, !noalias !5439
  call fastcc void @_RNvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5flagsINtB2_15FlagComputationNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE8add_kindCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 4 dereferenceable(8) %i.bz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dx), !noalias !5331
  %.sroa.4.0..sroa_idx.i151.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.hw = load <2 x i32>, ptr %i.bz, align 8, !noalias !5439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !5439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !5439
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.dx, i64 32, i1 false), !noalias !5331
  store <2 x i32> %i.hw, ptr %.sroa.4.0..sroa_idx.i151.i.i, align 8, !noalias !5439
  %i.hx = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gcCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.ca) #53, !noalias !5439 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !5439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !5439
  %i.hy = getelementptr inbounds i8, ptr %i.hx, i64 -8 ; 3 uses
  store ptr %i.hy, ptr %i.by, align 8, !noalias !5439
  %i.hz = atomicrmw add ptr %i.hy, i64 1 monotonic, align 8, !noalias !5439
  %i.ia = icmp slt i64 %i.hz, 0
  br i1 %i.ia, label %bb.ba, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit154.i.i, !prof !116

bb.ba:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit150.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.bd unwind label %bb.bb, !noalias !5439

bb.bb:                                            ; preds = %bb.ba
  %i.ib = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ic = atomicrmw sub ptr %i.hy, i64 1 release, align 8, !noalias !5442
  %i.id = icmp eq i64 %i.ic, 1
  br i1 %i.id, label %bb.bc, label %common.resume.i.i

bb.bc:                                            ; preds = %bb.bb
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.by) #58
          to label %common.resume.i.i unwind label %bb.be, !noalias !5439

bb.bd:                                            ; preds = %bb.ba
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.ie = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5439
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit154.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit150.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !5439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw), !noalias !5331
  store i32 4, ptr %i.dw, align 8, !noalias !5331
  %.sroa.438.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store i8 0, ptr %.sroa.438.0..sroa_idx.i.i, align 4, !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !5449
  store <2 x i32> zeroinitializer, ptr %i.bw, align 8, !noalias !5449
  call fastcc void @_RNvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5flagsINtB2_15FlagComputationNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE8add_kindCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 4 dereferenceable(8) %i.bw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dw), !noalias !5331
  %.sroa.4.0..sroa_idx.i155.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.if = load <2 x i32>, ptr %i.bw, align 8, !noalias !5449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !5449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !5449
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.dw, i64 32, i1 false), !noalias !5331
  store <2 x i32> %i.if, ptr %.sroa.4.0..sroa_idx.i155.i.i, align 8, !noalias !5449
  %i.ig = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gcCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.bx) #53, !noalias !5449 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !5449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !5449
  %i.ih = getelementptr inbounds i8, ptr %i.ig, i64 -8 ; 3 uses
  store ptr %i.ih, ptr %i.bv, align 8, !noalias !5449
  %i.ii = atomicrmw add ptr %i.ih, i64 1 monotonic, align 8, !noalias !5449
  %i.ij = icmp slt i64 %i.ii, 0
  br i1 %i.ij, label %bb.bf, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit158.i.i, !prof !116

bb.bf:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit154.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.bi unwind label %bb.bg, !noalias !5449

bb.bg:                                            ; preds = %bb.bf
  %i.ik = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.il = atomicrmw sub ptr %i.ih, i64 1 release, align 8, !noalias !5452
  %i.im = icmp eq i64 %i.il, 1
  br i1 %i.im, label %bb.bh, label %common.resume.i.i

bb.bh:                                            ; preds = %bb.bg
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bv) #58
          to label %common.resume.i.i unwind label %bb.bj, !noalias !5449

bb.bi:                                            ; preds = %bb.bf
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.in = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5449
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit158.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit154.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !5449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv), !noalias !5331
  store i32 4, ptr %i.dv, align 8, !noalias !5331
  %.sroa.441.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  store i8 1, ptr %.sroa.441.0..sroa_idx.i.i, align 4, !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !5459
  store <2 x i32> zeroinitializer, ptr %i.bt, align 8, !noalias !5459
  call fastcc void @_RNvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5flagsINtB2_15FlagComputationNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE8add_kindCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 4 dereferenceable(8) %i.bt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dv), !noalias !5331
  %.sroa.4.0..sroa_idx.i159.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.io = load <2 x i32>, ptr %i.bt, align 8, !noalias !5459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !5459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !5459
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.dv, i64 32, i1 false), !noalias !5331
  store <2 x i32> %i.io, ptr %.sroa.4.0..sroa_idx.i159.i.i, align 8, !noalias !5459
  %i.ip = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gcCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.bu) #53, !noalias !5459 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !5459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !5459
  %i.iq = getelementptr inbounds i8, ptr %i.ip, i64 -8 ; 3 uses
  store ptr %i.iq, ptr %i.bs, align 8, !noalias !5459
  %i.ir = atomicrmw add ptr %i.iq, i64 1 monotonic, align 8, !noalias !5459
  %i.is = icmp slt i64 %i.ir, 0
  br i1 %i.is, label %bb.bk, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit162.i.i, !prof !116

bb.bk:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit158.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.bn unwind label %bb.bl, !noalias !5459

bb.bl:                                            ; preds = %bb.bk
  %i.it = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iu = atomicrmw sub ptr %i.iq, i64 1 release, align 8, !noalias !5462
  %i.iv = icmp eq i64 %i.iu, 1
  br i1 %i.iv, label %bb.bm, label %common.resume.i.i

bb.bm:                                            ; preds = %bb.bl
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bs) #58
          to label %common.resume.i.i unwind label %bb.bo, !noalias !5459

bb.bn:                                            ; preds = %bb.bk
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.iw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5459
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit162.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit158.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !5459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv), !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du), !noalias !5331
  store i32 4, ptr %i.du, align 8, !noalias !5331
  %.sroa.444.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  store i8 2, ptr %.sroa.444.0..sroa_idx.i.i, align 4, !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !5469
  store <2 x i32> zeroinitializer, ptr %i.bq, align 8, !noalias !5469
  call fastcc void @_RNvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5flagsINtB2_15FlagComputationNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE8add_kindCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 4 dereferenceable(8) %i.bq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.du), !noalias !5331
  %.sroa.4.0..sroa_idx.i163.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.ix = load <2 x i32>, ptr %i.bq, align 8, !noalias !5469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !5469
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !5469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.du, i64 32, i1 false), !noalias !5331
  store <2 x i32> %i.ix, ptr %.sroa.4.0..sroa_idx.i163.i.i, align 8, !noalias !5469
  %i.iy = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gcCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.br) #53, !noalias !5469 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !5469
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !5469
  %i.iz = getelementptr inbounds i8, ptr %i.iy, i64 -8 ; 3 uses
  store ptr %i.iz, ptr %i.bp, align 8, !noalias !5469
  %i.ja = atomicrmw add ptr %i.iz, i64 1 monotonic, align 8, !noalias !5469
  %i.jb = icmp slt i64 %i.ja, 0
  br i1 %i.jb, label %bb.bp, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit166.i.i, !prof !116

bb.bp:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit162.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.bs unwind label %bb.bq, !noalias !5469

bb.bq:                                            ; preds = %bb.bp
  %i.jc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jd = atomicrmw sub ptr %i.iz, i64 1 release, align 8, !noalias !5472
  %i.je = icmp eq i64 %i.jd, 1
  br i1 %i.je, label %bb.br, label %common.resume.i.i

bb.br:                                            ; preds = %bb.bq
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bp) #58
          to label %common.resume.i.i unwind label %bb.bt, !noalias !5469

bb.bs:                                            ; preds = %bb.bp
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.jf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5469
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit166.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit162.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !5469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du), !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt), !noalias !5331
  store i32 4, ptr %i.dt, align 8, !noalias !5331
  %.sroa.447.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  store i8 3, ptr %.sroa.447.0..sroa_idx.i.i, align 4, !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !5479
  store <2 x i32> zeroinitializer, ptr %i.bn, align 8, !noalias !5479
  call fastcc void @_RNvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5flagsINtB2_15FlagComputationNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE8add_kindCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 4 dereferenceable(8) %i.bn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dt), !noalias !5331
  %.sroa.4.0..sroa_idx.i167.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.jg = load <2 x i32>, ptr %i.bn, align 8, !noalias !5479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !5479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !5479
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.dt, i64 32, i1 false), !noalias !5331
  store <2 x i32> %i.jg, ptr %.sroa.4.0..sroa_idx.i167.i.i, align 8, !noalias !5479
  %i.jh = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gcCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.bo) #53, !noalias !5479 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !5479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !5479
  %i.ji = getelementptr inbounds i8, ptr %i.jh, i64 -8 ; 3 uses
  store ptr %i.ji, ptr %i.bm, align 8, !noalias !5479
  %i.jj = atomicrmw add ptr %i.ji, i64 1 monotonic, align 8, !noalias !5479
  %i.jk = icmp slt i64 %i.jj, 0
  br i1 %i.jk, label %bb.bu, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit170.i.i, !prof !116

bb.bu:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit166.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.bx unwind label %bb.bv, !noalias !5479

bb.bv:                                            ; preds = %bb.bu
  %i.jl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jm = atomicrmw sub ptr %i.ji, i64 1 release, align 8, !noalias !5482
  %i.jn = icmp eq i64 %i.jm, 1
  br i1 %i.jn, label %bb.bw, label %common.resume.i.i

bb.bw:                                            ; preds = %bb.bv
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bm) #58
          to label %common.resume.i.i unwind label %bb.by, !noalias !5479

bb.bx:                                            ; preds = %bb.bu
  unreachable

bb.by:                                            ; preds = %bb.bw
  %i.jo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5479
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit170.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit166.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !5479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt), !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds), !noalias !5331
  store i32 4, ptr %i.ds, align 8, !noalias !5331
  %.sroa.450.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i8 4, ptr %.sroa.450.0..sroa_idx.i.i, align 4, !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !5489
  store <2 x i32> zeroinitializer, ptr %i.bk, align 8, !noalias !5489
  call fastcc void @_RNvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5flagsINtB2_15FlagComputationNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE8add_kindCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 4 dereferenceable(8) %i.bk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ds), !noalias !5331
  %.sroa.4.0..sroa_idx.i171.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.jp = load <2 x i32>, ptr %i.bk, align 8, !noalias !5489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !5489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !5489
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ds, i64 32, i1 false), !noalias !5331
  store <2 x i32> %i.jp, ptr %.sroa.4.0..sroa_idx.i171.i.i, align 8, !noalias !5489
  %i.jq = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gcCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.bl) #53, !noalias !5489 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !5489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !5489
  %i.jr = getelementptr inbounds i8, ptr %i.jq, i64 -8 ; 3 uses
  store ptr %i.jr, ptr %i.bj, align 8, !noalias !5489
  %i.js = atomicrmw add ptr %i.jr, i64 1 monotonic, align 8, !noalias !5489
  %i.jt = icmp slt i64 %i.js, 0
  br i1 %i.jt, label %bb.bz, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit174.i.i, !prof !116

bb.bz:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit170.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.cc unwind label %bb.ca, !noalias !5489

bb.ca:                                            ; preds = %bb.bz
  %i.ju = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jv = atomicrmw sub ptr %i.jr, i64 1 release, align 8, !noalias !5492
  %i.jw = icmp eq i64 %i.jv, 1
  br i1 %i.jw, label %bb.cb, label %common.resume.i.i

bb.cb:                                            ; preds = %bb.ca
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bj) #58
          to label %common.resume.i.i unwind label %bb.cd, !noalias !5489

bb.cc:                                            ; preds = %bb.bz
  unreachable

bb.cd:                                            ; preds = %bb.cb
  %i.jx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5489
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit174.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit170.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !5489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr), !noalias !5331
  store i32 4, ptr %i.dr, align 8, !noalias !5331
  %.sroa.453.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  store i8 5, ptr %.sroa.453.0..sroa_idx.i.i, align 4, !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !5499
  store <2 x i32> zeroinitializer, ptr %i.bh, align 8, !noalias !5499
  call fastcc void @_RNvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5flagsINtB2_15FlagComputationNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE8add_kindCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 4 dereferenceable(8) %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dr), !noalias !5331
  %.sroa.4.0..sroa_idx.i175.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.jy = load <2 x i32>, ptr %i.bh, align 8, !noalias !5499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !5499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !5499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.dr, i64 32, i1 false), !noalias !5331
  store <2 x i32> %i.jy, ptr %.sroa.4.0..sroa_idx.i175.i.i, align 8, !noalias !5499
  %i.jz = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gcCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.bi) #53, !noalias !5499 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !5499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !5499
  %i.ka = getelementptr inbounds i8, ptr %i.jz, i64 -8 ; 3 uses
  store ptr %i.ka, ptr %i.bg, align 8, !noalias !5499
  %i.kb = atomicrmw add ptr %i.ka, i64 1 monotonic, align 8, !noalias !5499
  %i.kc = icmp slt i64 %i.kb, 0
  br i1 %i.kc, label %bb.ce, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit178.i.i, !prof !116

bb.ce:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit174.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.ch unwind label %bb.cf, !noalias !5499

bb.cf:                                            ; preds = %bb.ce
  %i.kd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ke = atomicrmw sub ptr %i.ka, i64 1 release, align 8, !noalias !5502
  %i.kf = icmp eq i64 %i.ke, 1
  br i1 %i.kf, label %bb.cg, label %common.resume.i.i

bb.cg:                                            ; preds = %bb.cf
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bg) #58
          to label %common.resume.i.i unwind label %bb.ci, !noalias !5499

bb.ch:                                            ; preds = %bb.ce
  unreachable

bb.ci:                                            ; preds = %bb.cg
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5499
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit178.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit174.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !5499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr), !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq), !noalias !5331
  store i32 6, ptr %i.dq, align 8, !noalias !5331
  %.sroa.456.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store i8 0, ptr %.sroa.456.0..sroa_idx.i.i, align 4, !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !5509
  store <2 x i32> zeroinitializer, ptr %i.be, align 8, !noalias !5509
  call fastcc void @_RNvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5flagsINtB2_15FlagComputationNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE8add_kindCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 4 dereferenceable(8) %i.be, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dq), !noalias !5331
  %.sroa.4.0..sroa_idx.i179.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.kh = load <2 x i32>, ptr %i.be, align 8, !noalias !5509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !5509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !5509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.dq, i64 32, i1 false), !noalias !5331
  store <2 x i32> %i.kh, ptr %.sroa.4.0..sroa_idx.i179.i.i, align 8, !noalias !5509
  %i.ki = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gcCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.bf) #53, !noalias !5509 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !5509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !5509
  %i.kj = getelementptr inbounds i8, ptr %i.ki, i64 -8 ; 3 uses
  store ptr %i.kj, ptr %i.bd, align 8, !noalias !5509
  %i.kk = atomicrmw add ptr %i.kj, i64 1 monotonic, align 8, !noalias !5509
  %i.kl = icmp slt i64 %i.kk, 0
  br i1 %i.kl, label %bb.cj, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit182.i.i, !prof !116

bb.cj:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit178.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.cm unwind label %bb.ck, !noalias !5509

bb.ck:                                            ; preds = %bb.cj
  %i.km = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kn = atomicrmw sub ptr %i.kj, i64 1 release, align 8, !noalias !5512
  %i.ko = icmp eq i64 %i.kn, 1
  br i1 %i.ko, label %bb.cl, label %common.resume.i.i

bb.cl:                                            ; preds = %bb.ck
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bd) #58
          to label %common.resume.i.i unwind label %bb.cn, !noalias !5509

bb.cm:                                            ; preds = %bb.cj
  unreachable

bb.cn:                                            ; preds = %bb.cl
  %i.kp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5509
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit182.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit178.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !5509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq), !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp), !noalias !5331
  store i32 6, ptr %i.dp, align 8, !noalias !5331
  %.sroa.459.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  store i8 1, ptr %.sroa.459.0..sroa_idx.i.i, align 4, !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !5519
  store <2 x i32> zeroinitializer, ptr %i.bb, align 8, !noalias !5519
  call fastcc void @_RNvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5flagsINtB2_15FlagComputationNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE8add_kindCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 4 dereferenceable(8) %i.bb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dp), !noalias !5331
  %.sroa.4.0..sroa_idx.i183.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.kq = load <2 x i32>, ptr %i.bb, align 8, !noalias !5519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !5519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !5519
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.dp, i64 32, i1 false), !noalias !5331
  store <2 x i32> %i.kq, ptr %.sroa.4.0..sroa_idx.i183.i.i, align 8, !noalias !5519
  %i.kr = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gcCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.bc) #53, !noalias !5519 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !5519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !5519
  %i.ks = getelementptr inbounds i8, ptr %i.kr, i64 -8 ; 3 uses
  store ptr %i.ks, ptr %i.ba, align 8, !noalias !5519
  %i.kt = atomicrmw add ptr %i.ks, i64 1 monotonic, align 8, !noalias !5519
  %i.ku = icmp slt i64 %i.kt, 0
  br i1 %i.ku, label %bb.co, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit186.i.i, !prof !116

bb.co:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit182.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.cr unwind label %bb.cp, !noalias !5519

bb.cp:                                            ; preds = %bb.co
  %i.kv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kw = atomicrmw sub ptr %i.ks, i64 1 release, align 8, !noalias !5522
  %i.kx = icmp eq i64 %i.kw, 1
  br i1 %i.kx, label %bb.cq, label %common.resume.i.i

bb.cq:                                            ; preds = %bb.cp
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ba) #58
          to label %common.resume.i.i unwind label %bb.cs, !noalias !5519

bb.cr:                                            ; preds = %bb.co
  unreachable

bb.cs:                                            ; preds = %bb.cq
  %i.ky = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5519
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit186.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit182.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !5519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp), !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !noalias !5331
  store i32 6, ptr %i.do, align 8, !noalias !5331
  %.sroa.462.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store i8 2, ptr %.sroa.462.0..sroa_idx.i.i, align 4, !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !5529
  store <2 x i32> zeroinitializer, ptr %i.ay, align 8, !noalias !5529
  call fastcc void @_RNvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5flagsINtB2_15FlagComputationNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE8add_kindCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 4 dereferenceable(8) %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.do), !noalias !5331
  %.sroa.4.0..sroa_idx.i187.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.kz = load <2 x i32>, ptr %i.ay, align 8, !noalias !5529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !5529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !5529
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.do, i64 32, i1 false), !noalias !5331
  store <2 x i32> %i.kz, ptr %.sroa.4.0..sroa_idx.i187.i.i, align 8, !noalias !5529
  %i.la = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gcCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.az) #53, !noalias !5529 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !5529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !5529
  %i.lb = getelementptr inbounds i8, ptr %i.la, i64 -8 ; 3 uses
  store ptr %i.lb, ptr %i.ax, align 8, !noalias !5529
  %i.lc = atomicrmw add ptr %i.lb, i64 1 monotonic, align 8, !noalias !5529
  %i.ld = icmp slt i64 %i.lc, 0
  br i1 %i.ld, label %bb.ct, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit190.i.i, !prof !116

bb.ct:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit186.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.cw unwind label %bb.cu, !noalias !5529

bb.cu:                                            ; preds = %bb.ct
  %i.le = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lf = atomicrmw sub ptr %i.lb, i64 1 release, align 8, !noalias !5532
  %i.lg = icmp eq i64 %i.lf, 1
  br i1 %i.lg, label %bb.cv, label %common.resume.i.i

bb.cv:                                            ; preds = %bb.cu
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ax) #58
          to label %common.resume.i.i unwind label %bb.cx, !noalias !5529

bb.cw:                                            ; preds = %bb.ct
  unreachable

bb.cx:                                            ; preds = %bb.cv
  %i.lh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5529
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit190.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit186.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !5529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !noalias !5331
  store i32 6, ptr %i.dn, align 8, !noalias !5331
  %.sroa.465.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  store i8 3, ptr %.sroa.465.0..sroa_idx.i.i, align 4, !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !5539
  store <2 x i32> zeroinitializer, ptr %i.av, align 8, !noalias !5539
  call fastcc void @_RNvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5flagsINtB2_15FlagComputationNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE8add_kindCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 4 dereferenceable(8) %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dn), !noalias !5331
  %.sroa.4.0..sroa_idx.i191.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.li = load <2 x i32>, ptr %i.av, align 8, !noalias !5539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !5539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !5539
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.dn, i64 32, i1 false), !noalias !5331
  store <2 x i32> %i.li, ptr %.sroa.4.0..sroa_idx.i191.i.i, align 8, !noalias !5539
  %i.lj = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gcCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.aw) #53, !noalias !5539 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !5539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !5539
  %i.lk = getelementptr inbounds i8, ptr %i.lj, i64 -8 ; 3 uses
  store ptr %i.lk, ptr %i.au, align 8, !noalias !5539
  %i.ll = atomicrmw add ptr %i.lk, i64 1 monotonic, align 8, !noalias !5539
  %i.lm = icmp slt i64 %i.ll, 0
  br i1 %i.lm, label %bb.cy, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit194.i.i, !prof !116

bb.cy:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit190.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.db unwind label %bb.cz, !noalias !5539

bb.cz:                                            ; preds = %bb.cy
  %i.ln = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lo = atomicrmw sub ptr %i.lk, i64 1 release, align 8, !noalias !5542
  %i.lp = icmp eq i64 %i.lo, 1
  br i1 %i.lp, label %bb.da, label %common.resume.i.i

bb.da:                                            ; preds = %bb.cz
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.au) #58
          to label %common.resume.i.i unwind label %bb.dc, !noalias !5539

bb.db:                                            ; preds = %bb.cy
  unreachable

bb.dc:                                            ; preds = %bb.da
  %i.lq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5539
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit194.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit190.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !5539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !noalias !5331
  store i32 2, ptr %i.dm, align 8, !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !5549
  store <2 x i32> zeroinitializer, ptr %i.as, align 8, !noalias !5549
  call fastcc void @_RNvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5flagsINtB2_15FlagComputationNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE8add_kindCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 4 dereferenceable(8) %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dm), !noalias !5331
  %.sroa.4.0..sroa_idx.i195.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.lr = load <2 x i32>, ptr %i.as, align 8, !noalias !5549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !5549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !5549
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.dm, i64 32, i1 false), !noalias !5331
  store <2 x i32> %i.lr, ptr %.sroa.4.0..sroa_idx.i195.i.i, align 8, !noalias !5549
  %i.ls = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gcCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.at) #53, !noalias !5549 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !5549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !5549
  %i.lt = getelementptr inbounds i8, ptr %i.ls, i64 -8 ; 3 uses
  store ptr %i.lt, ptr %i.ar, align 8, !noalias !5549
  %i.lu = atomicrmw add ptr %i.lt, i64 1 monotonic, align 8, !noalias !5549
  %i.lv = icmp slt i64 %i.lu, 0
  br i1 %i.lv, label %bb.dd, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit198.i.i, !prof !116

bb.dd:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit194.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.dg unwind label %bb.de, !noalias !5549

bb.de:                                            ; preds = %bb.dd
  %i.lw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lx = atomicrmw sub ptr %i.lt, i64 1 release, align 8, !noalias !5552
  %i.ly = icmp eq i64 %i.lx, 1
  br i1 %i.ly, label %bb.df, label %common.resume.i.i

bb.df:                                            ; preds = %bb.de
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ar) #58
          to label %common.resume.i.i unwind label %bb.dh, !noalias !5549

bb.dg:                                            ; preds = %bb.dd
  unreachable

bb.dh:                                            ; preds = %bb.df
  %i.lz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5549
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit198.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit194.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !5549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !noalias !5331
  store i32 3, ptr %i.dl, align 8, !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !5559
  store <2 x i32> zeroinitializer, ptr %i.ap, align 8, !noalias !5559
  call fastcc void @_RNvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5flagsINtB2_15FlagComputationNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE8add_kindCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 4 dereferenceable(8) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dl), !noalias !5331
  %.sroa.4.0..sroa_idx.i199.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.ma = load <2 x i32>, ptr %i.ap, align 8, !noalias !5559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !5559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !5559
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.dl, i64 32, i1 false), !noalias !5331
  store <2 x i32> %i.ma, ptr %.sroa.4.0..sroa_idx.i199.i.i, align 8, !noalias !5559
  %i.mb = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gcCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.aq) #53, !noalias !5559 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !5559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !5559
  %i.mc = getelementptr inbounds i8, ptr %i.mb, i64 -8 ; 3 uses
  store ptr %i.mc, ptr %i.ao, align 8, !noalias !5559
  %i.md = atomicrmw add ptr %i.mc, i64 1 monotonic, align 8, !noalias !5559
  %i.me = icmp slt i64 %i.md, 0
  br i1 %i.me, label %bb.di, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit202.i.i, !prof !116

bb.di:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit198.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.dl unwind label %bb.dj, !noalias !5559

bb.dj:                                            ; preds = %bb.di
  %i.mf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mg = atomicrmw sub ptr %i.mc, i64 1 release, align 8, !noalias !5562
  %i.mh = icmp eq i64 %i.mg, 1
  br i1 %i.mh, label %bb.dk, label %common.resume.i.i

bb.dk:                                            ; preds = %bb.dj
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ao) #58
          to label %common.resume.i.i unwind label %bb.dm, !noalias !5559

bb.dl:                                            ; preds = %bb.di
  unreachable

bb.dm:                                            ; preds = %bb.dk
  %i.mi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5559
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit202.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit198.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !5559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !noalias !5331
  store i32 23, ptr %i.dk, align 8, !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !5569
  store <2 x i32> zeroinitializer, ptr %i.am, align 8, !noalias !5569
  call fastcc void @_RNvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5flagsINtB2_15FlagComputationNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE8add_kindCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 4 dereferenceable(8) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dk), !noalias !5331
  %.sroa.4.0..sroa_idx.i203.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.mj = load <2 x i32>, ptr %i.am, align 8, !noalias !5569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !5569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !5569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.dk, i64 32, i1 false), !noalias !5331
  store <2 x i32> %i.mj, ptr %.sroa.4.0..sroa_idx.i203.i.i, align 8, !noalias !5569
  %i.mk = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gcCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.an) #53, !noalias !5569 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !5569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !5569
  %i.ml = getelementptr inbounds i8, ptr %i.mk, i64 -8 ; 3 uses
  store ptr %i.ml, ptr %i.al, align 8, !noalias !5569
  %i.mm = atomicrmw add ptr %i.ml, i64 1 monotonic, align 8, !noalias !5569
  %i.mn = icmp slt i64 %i.mm, 0
  br i1 %i.mn, label %bb.dn, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit206.i.i, !prof !116

bb.dn:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit202.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.dq unwind label %bb.do, !noalias !5569

bb.do:                                            ; preds = %bb.dn
  %i.mo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mp = atomicrmw sub ptr %i.ml, i64 1 release, align 8, !noalias !5572
  %i.mq = icmp eq i64 %i.mp, 1
  br i1 %i.mq, label %bb.dp, label %common.resume.i.i

bb.dp:                                            ; preds = %bb.do
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.al) #58
          to label %common.resume.i.i unwind label %bb.dr, !noalias !5569

bb.dq:                                            ; preds = %bb.dn
  unreachable

bb.dr:                                            ; preds = %bb.dp
  %i.mr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5569
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit206.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit202.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !5569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !5331
  store i32 30, ptr %i.dj, align 8, !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !5579
  store <2 x i32> zeroinitializer, ptr %i.aj, align 8, !noalias !5579
  call fastcc void @_RNvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5flagsINtB2_15FlagComputationNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE8add_kindCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 4 dereferenceable(8) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dj), !noalias !5331
  %.sroa.4.0..sroa_idx.i207.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.ms = load <2 x i32>, ptr %i.aj, align 8, !noalias !5579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !5579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !5579
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.dj, i64 32, i1 false), !noalias !5331
  store <2 x i32> %i.ms, ptr %.sroa.4.0..sroa_idx.i207.i.i, align 8, !noalias !5579
  %i.mt = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gcCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.ak) #53, !noalias !5579 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !5579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !5579
  %i.mu = getelementptr inbounds i8, ptr %i.mt, i64 -8 ; 3 uses
  store ptr %i.mu, ptr %i.ai, align 8, !noalias !5579
  %i.mv = atomicrmw add ptr %i.mu, i64 1 monotonic, align 8, !noalias !5579
  %i.mw = icmp slt i64 %i.mv, 0
  br i1 %i.mw, label %bb.ds, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit210.i.i, !prof !116

bb.ds:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit206.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.dv unwind label %bb.dt, !noalias !5579

bb.dt:                                            ; preds = %bb.ds
  %i.mx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.my = atomicrmw sub ptr %i.mu, i64 1 release, align 8, !noalias !5582
  %i.mz = icmp eq i64 %i.my, 1
  br i1 %i.mz, label %bb.du, label %common.resume.i.i

bb.du:                                            ; preds = %bb.dt
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ai) #58
          to label %common.resume.i.i unwind label %bb.dw, !noalias !5579

bb.dv:                                            ; preds = %bb.ds
  unreachable

bb.dw:                                            ; preds = %bb.du
  %i.na = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5579
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit210.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit206.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !5579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !noalias !5331
  store i32 14, ptr %i.di, align 8, !noalias !5331
  %.sroa.477.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr %i.er, ptr %.sroa.477.0..sroa_idx.i.i, align 8, !noalias !5331
  %.sroa.578.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store ptr %i.ej, ptr %.sroa.578.0..sroa_idx.i.i, align 8, !noalias !5331
  %.sroa.679.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  store i8 0, ptr %.sroa.679.0..sroa_idx.i.i, align 8, !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !5589
  store <2 x i32> zeroinitializer, ptr %i.ag, align 8, !noalias !5589
  call fastcc void @_RNvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5flagsINtB2_15FlagComputationNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE8add_kindCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 4 dereferenceable(8) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.di), !noalias !5331
  %.sroa.4.0..sroa_idx.i211.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.nb = load <2 x i32>, ptr %i.ag, align 8, !noalias !5589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !5589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !5589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.di, i64 32, i1 false), !noalias !5331
  store <2 x i32> %i.nb, ptr %.sroa.4.0..sroa_idx.i211.i.i, align 8, !noalias !5589
  %i.nc = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gcCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.ah) #53, !noalias !5589 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !5589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !5589
  %i.nd = getelementptr inbounds i8, ptr %i.nc, i64 -8 ; 3 uses
  store ptr %i.nd, ptr %i.af, align 8, !noalias !5589
  %i.ne = atomicrmw add ptr %i.nd, i64 1 monotonic, align 8, !noalias !5589
  %i.nf = icmp slt i64 %i.ne, 0
  br i1 %i.nf, label %bb.dx, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit214.i.i, !prof !116

bb.dx:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit210.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.ea unwind label %bb.dy, !noalias !5589

bb.dy:                                            ; preds = %bb.dx
  %i.ng = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nh = atomicrmw sub ptr %i.nd, i64 1 release, align 8, !noalias !5592
  %i.ni = icmp eq i64 %i.nh, 1
  br i1 %i.ni, label %bb.dz, label %common.resume.i.i

bb.dz:                                            ; preds = %bb.dy
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af) #58
          to label %common.resume.i.i unwind label %bb.eb, !noalias !5589

bb.ea:                                            ; preds = %bb.dx
  unreachable

bb.eb:                                            ; preds = %bb.dz
  %i.nj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5589
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit214.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit210.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !5589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !5331
  store i32 13, ptr %i.dh, align 8, !noalias !5331
  %.sroa.483.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %i.fd, ptr %.sroa.483.0..sroa_idx.i.i, align 8, !noalias !5331
  %.sroa.584.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i8 1, ptr %.sroa.584.0..sroa_idx.i.i, align 8, !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !5599
  store <2 x i32> zeroinitializer, ptr %i.ad, align 8, !noalias !5599
  call fastcc void @_RNvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5flagsINtB2_15FlagComputationNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE8add_kindCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 4 dereferenceable(8) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dh), !noalias !5331
  %.sroa.4.0..sroa_idx.i215.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.nk = load <2 x i32>, ptr %i.ad, align 8, !noalias !5599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !5599
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !5599
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.dh, i64 32, i1 false), !noalias !5331
  store <2 x i32> %i.nk, ptr %.sroa.4.0..sroa_idx.i215.i.i, align 8, !noalias !5599
  %i.nl = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gcCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.ae) #53, !noalias !5599 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !5599
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !5599
  %i.nm = getelementptr inbounds i8, ptr %i.nl, i64 -8 ; 3 uses
  store ptr %i.nm, ptr %i.ac, align 8, !noalias !5599
  %i.nn = atomicrmw add ptr %i.nm, i64 1 monotonic, align 8, !noalias !5599
  %i.no = icmp slt i64 %i.nn, 0
  br i1 %i.no, label %bb.ec, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit218.i.i, !prof !116

bb.ec:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit214.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.ef unwind label %bb.ed, !noalias !5599

bb.ed:                                            ; preds = %bb.ec
  %i.np = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nq = atomicrmw sub ptr %i.nm, i64 1 release, align 8, !noalias !5602
  %i.nr = icmp eq i64 %i.nq, 1
  br i1 %i.nr, label %bb.ee, label %common.resume.i.i

bb.ee:                                            ; preds = %bb.ed
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac) #58
          to label %common.resume.i.i unwind label %bb.eg, !noalias !5599

bb.ef:                                            ; preds = %bb.ec
  unreachable

bb.eg:                                            ; preds = %bb.ee
  %i.ns = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5599
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit218.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit214.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !5599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !5331
  store <2 x i32> <i32 29, i32 3>, ptr %i.dg, align 8, !noalias !5331
  %.sroa.588.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i32 0, ptr %.sroa.588.0..sroa_idx.i.i, align 8, !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !5609
  store <2 x i32> zeroinitializer, ptr %i.aa, align 8, !noalias !5609
  call fastcc void @_RNvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5flagsINtB2_15FlagComputationNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE8add_kindCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 4 dereferenceable(8) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dg), !noalias !5331
  %.sroa.4.0..sroa_idx.i219.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.nt = load <2 x i32>, ptr %i.aa, align 8, !noalias !5609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !5609
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !5609
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.dg, i64 32, i1 false), !noalias !5331
  store <2 x i32> %i.nt, ptr %.sroa.4.0..sroa_idx.i219.i.i, align 8, !noalias !5609
  %i.nu = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6new_gcCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.ab) #53, !noalias !5609 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !5609
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !5609
  %i.nv = getelementptr inbounds i8, ptr %i.nu, i64 -8 ; 3 uses
  store ptr %i.nv, ptr %i.z, align 8, !noalias !5609
  %i.nw = atomicrmw add ptr %i.nv, i64 1 monotonic, align 8, !noalias !5609
  %i.nx = icmp slt i64 %i.nw, 0
  br i1 %i.nx, label %bb.eh, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit222.i.i, !prof !116

bb.eh:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit218.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.ek unwind label %bb.ei, !noalias !5609

bb.ei:                                            ; preds = %bb.eh
  %i.ny = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nz = atomicrmw sub ptr %i.nv, i64 1 release, align 8, !noalias !5612
  %i.oa = icmp eq i64 %i.nz, 1
  br i1 %i.oa, label %bb.ej, label %common.resume.i.i

bb.ej:                                            ; preds = %bb.ei
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #58
          to label %common.resume.i.i unwind label %bb.el, !noalias !5609

bb.ek:                                            ; preds = %bb.eh
  unreachable

bb.el:                                            ; preds = %bb.ej
  %i.ob = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5609
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit222.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit218.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !5609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.491.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !noalias !5331
  store i32 6, ptr %i.df, align 8, !noalias !5331
  %i.oc = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const3new(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.df), !noalias !5348 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !5619
  %i.od = getelementptr inbounds i8, ptr %i.oc, i64 -8 ; 3 uses
  store ptr %i.od, ptr %i.y, align 8, !noalias !5619
  %i.oe = atomicrmw add ptr %i.od, i64 1 monotonic, align 8, !noalias !5619
  %i.of = icmp slt i64 %i.oe, 0
  br i1 %i.of, label %bb.em, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i, !prof !116

bb.em:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit222.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.ep unwind label %bb.en, !noalias !5619

bb.en:                                            ; preds = %bb.em
  %i.og = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oh = atomicrmw sub ptr %i.od, i64 1 release, align 8, !noalias !5622
  %i.oi = icmp eq i64 %i.oh, 1
  br i1 %i.oi, label %bb.eo, label %common.resume.i.i

bb.eo:                                            ; preds = %bb.en
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts13ConstInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #58
          to label %common.resume.i.i unwind label %bb.eq, !noalias !5619

bb.ep:                                            ; preds = %bb.em
  unreachable

bb.eq:                                            ; preds = %bb.eo
  %i.oj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5619
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types00Cs6u1mgJOKDyY_13rust_analyzer.exit222.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !5619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !5629
  call void @llvm.experimental.noalias.scope.decl(metadata !5632)
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.ok = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ol = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  br label %.noexc.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.ew, %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %storemerge8.i.i.i.i = phi i64 [ 0, %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i ], [ %i.ox, %bb.ew ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !5635
  %i.om = zext nneg i64 %storemerge8.i.i.i.i to i128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !5635
  store i8 0, ptr %i.v, align 8, !noalias !5635
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 1, !noalias !5635
  store i128 %i.om, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 2, !noalias !5635
  %i.on = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtree15ValTreeInternedE6new_gcCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %i.v) #53, !noalias !5635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !5635
  store ptr %i.fm, ptr %i.ok, align 8, !noalias !5635
  store ptr %i.on, ptr %i.ol, align 8, !noalias !5635
  store i32 5, ptr %i.w, align 8, !noalias !5635
  %i.oo = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const3new(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.w), !noalias !5638 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !5635
  %i.op = getelementptr inbounds i8, ptr %i.oo, i64 -8 ; 3 uses
  store ptr %i.op, ptr %i.u, align 8, !noalias !5635
  %i.oq = atomicrmw add ptr %i.op, i64 1 monotonic, align 8, !noalias !5635
  %i.or = icmp slt i64 %i.oq, 0
  br i1 %i.or, label %bb.er, label %bb.ew, !prof !116

bb.er:                                            ; preds = %.noexc.i.i.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.eu unwind label %bb.es, !noalias !5635

bb.es:                                            ; preds = %bb.er
  %i.os = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ot = atomicrmw sub ptr %i.op, i64 1 release, align 8, !noalias !5639
  %i.ou = icmp eq i64 %i.ot, 1
  br i1 %i.ou, label %bb.et, label %common.resume.i.i

bb.et:                                            ; preds = %bb.es
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts13ConstInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #58
          to label %common.resume.i.i unwind label %bb.ev, !noalias !5635

bb.eu:                                            ; preds = %bb.er
  unreachable

bb.ev:                                            ; preds = %bb.et
  %i.ov = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5635
  unreachable

bb.ew:                                            ; preds = %.noexc.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !5635
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %storemerge8.i.i.i.i
  store ptr %i.oo, ptr %i.ow, align 8, !alias.scope !5632, !noalias !5646
  %i.ox = add nuw nsw i64 %storemerge8.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ox, 256
  br i1 %exitcond.not.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstEKj100_NCINvMBJ_BG_10wrap_mut_1jNCNCNvB1r_13default_types0se_0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i, label %.noexc.i.i.i.i

_RINvNtCshzWfHUSfYae_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstEKj100_NCINvMBJ_BG_10wrap_mut_1jNCNCNvB1r_13default_types0se_0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %bb.ew
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %.sroa.491.i.i, ptr noundef nonnull align 8 dereferenceable(2048) %i.x, i64 2048, i1 false), !noalias !5331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !5629
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !noalias !5331
  store i32 22, ptr %i.de, align 4, !noalias !5331
  %i.oy = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB2_6Region3new(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %i.de), !noalias !5348 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !5647
  %i.oz = getelementptr inbounds i8, ptr %i.oy, i64 -8 ; 3 uses
  store ptr %i.oz, ptr %i.t, align 8, !noalias !5647
  %i.pa = atomicrmw add ptr %i.oz, i64 1 monotonic, align 8, !noalias !5647
  %i.pb = icmp slt i64 %i.pa, 0
  br i1 %i.pb, label %bb.ex, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s0_0Cs6u1mgJOKDyY_13rust_analyzer.exit224.i.i, !prof !116

bb.ex:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstEKj100_NCINvMBJ_BG_10wrap_mut_1jNCNCNvB1r_13default_types0se_0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.fa unwind label %bb.ey, !noalias !5647

bb.ey:                                            ; preds = %bb.ex
  %i.pc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pd = atomicrmw sub ptr %i.oz, i64 1 release, align 8, !noalias !5650
  %i.pe = icmp eq i64 %i.pd, 1
  br i1 %i.pe, label %bb.ez, label %common.resume.i.i

bb.ez:                                            ; preds = %bb.ey
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6region14RegionInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #58
          to label %common.resume.i.i unwind label %bb.fb, !noalias !5647

bb.fa:                                            ; preds = %bb.ex
  unreachable

bb.fb:                                            ; preds = %bb.ez
  %i.pf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5647
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s0_0Cs6u1mgJOKDyY_13rust_analyzer.exit224.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstEKj100_NCINvMBJ_BG_10wrap_mut_1jNCNCNvB1r_13default_types0se_0E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !noalias !5331
  store i32 21, ptr %i.dd, align 4, !noalias !5331
  %i.pg = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB2_6Region3new(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %i.dd), !noalias !5348 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !5657
  %i.ph = getelementptr inbounds i8, ptr %i.pg, i64 -8 ; 3 uses
  store ptr %i.ph, ptr %i.s, align 8, !noalias !5657
  %i.pi = atomicrmw add ptr %i.ph, i64 1 monotonic, align 8, !noalias !5657
  %i.pj = icmp slt i64 %i.pi, 0
  br i1 %i.pj, label %bb.fc, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s0_0Cs6u1mgJOKDyY_13rust_analyzer.exit226.i.i, !prof !116

bb.fc:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s0_0Cs6u1mgJOKDyY_13rust_analyzer.exit224.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57
          to label %bb.ff unwind label %bb.fd, !noalias !5657
end_hunk_0
begin_hunk_1_@_RNCINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB5_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE10initializeNCINvB4_11get_or_initNCNvBX_13default_types0E0zE0Cs6u1mgJOKDyY_13rust_analyzer:bb.a
  %i.pk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pl = atomicrmw sub ptr %i.ph, i64 1 release, align 8, !noalias !5660
  %i.pm = icmp eq i64 %i.pl, 1
  br i1 %i.pm, label %bb.fe, label %common.resume.i.i

bb.fe:                                            ; preds = %bb.fd
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6region14RegionInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #58
          to label %common.resume.i.i unwind label %bb.fg, !noalias !5657

bb.ff:                                            ; preds = %bb.fc
  unreachable

bb.fg:                                            ; preds = %bb.fe
  %i.pn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5657
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s0_0Cs6u1mgJOKDyY_13rust_analyzer.exit226.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s0_0Cs6u1mgJOKDyY_13rust_analyzer.exit224.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !5657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !5331
  %i.po = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg18GenericArgsStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #53, !noalias !5331 ; 2 uses
  %i.pp = atomicrmw add ptr %i.po, i64 1 monotonic, align 8, !noalias !5331
  %i.pq = icmp slt i64 %i.pp, 0
  br i1 %i.pq, label %bb.fh, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s1_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i, !prof !116

bb.fh:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s0_0Cs6u1mgJOKDyY_13rust_analyzer.exit226.i.i
  call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57, !noalias !5331
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s1_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s0_0Cs6u1mgJOKDyY_13rust_analyzer.exit226.i.i
  %i.pr = call fastcc noundef nonnull ptr @_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s2_0Cs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) inttoptr (i64 4 to ptr), i64 noundef 0) #53, !noalias !5331
  %i.ps = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsS_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB7_20CanonicalVarsStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, i64 24) acquire, align 8, !noalias !5331
  %i.pt = icmp eq i32 %i.ps, 0
  br i1 %i.pt, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB5L_18InternSliceStorageNtB3i_20CanonicalVarsStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i, label %bb.fi, !prof !17

bb.fi:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s1_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %i.pu = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsS_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB7_20CanonicalVarsStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, i64 24) acquire, align 8, !noalias !5667
  %i.pv = icmp eq i32 %i.pu, 0
  br i1 %i.pv, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB5L_18InternSliceStorageNtB3i_20CanonicalVarsStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i, label %bb.fj, !prof !17

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5667
  store ptr @_RNvNvXsS_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB7_20CanonicalVarsStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, ptr %i.c, align 8, !noalias !5667
  %i.pw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.a, ptr %i.pw, align 8, !noalias !5667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5667
  store ptr %i.c, ptr %i.b, align 8, !noalias !5667
  call void @_RNvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvXsS_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB7_20CanonicalVarsStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, i64 24), i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12), !noalias !5331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5667
  br label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB5L_18InternSliceStorageNtB3i_20CanonicalVarsStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i

_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB5L_18InternSliceStorageNtB3i_20CanonicalVarsStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i: ; preds = %bb.fj, %bb.fi, %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s1_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %i.px = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsS_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB7_20CanonicalVarsStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, i64 8), align 8, !noalias !5331, !noundef !18
  %.not.i.i.i.i.i = icmp eq i64 %i.px, 0
  br i1 %.not.i.i.i.i.i, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB5L_18InternSliceStorageNtB3i_20CanonicalVarsStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i
  %i.py = load ptr, ptr @_RNvNvXsS_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB7_20CanonicalVarsStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, align 8, !noalias !5331, !nonnull !18, !noundef !18 ; 9 uses
  %i.pz = cmpxchg weak ptr %i.py, i64 0, i64 -4 acquire monotonic, align 8, !noalias !5331
  %i.qa = extractvalue { i64, i1 } %i.pz, 1
  br i1 %i.qa, label %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner20CanonicalVarsStorageE6selectCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i, label %bb.fm, !prof !17

bb.fl:                                            ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB5L_18InternSliceStorageNtB3i_20CanonicalVarsStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #56, !noalias !5331
  unreachable

bb.fm:                                            ; preds = %bb.fk
  call void @_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.py), !noalias !5331
  br label %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner20CanonicalVarsStorageE6selectCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i

_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner20CanonicalVarsStorageE6selectCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i: ; preds = %bb.fm, %bb.fk
  %i.qb = getelementptr inbounds nuw i8, ptr %i.py, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5331
  store ptr %i.a, ptr %i.r, align 8, !noalias !5331
  %i.qc = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.qc, align 8, !noalias !5331
  %i.qd = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 0, ptr %i.qd, align 8, !noalias !5331
  call void @llvm.experimental.noalias.scope.decl(metadata !5670)
  %i.qe = getelementptr inbounds nuw i8, ptr %i.py, i64 24 ; 3 uses
  %i.qf = load i64, ptr %i.qe, align 8, !alias.scope !5673, !noalias !5676, !noundef !18
  %i.qg = icmp eq i64 %i.qf, 0
  br i1 %i.qg, label %bb.fn, label %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4P_13InternedSliceNtB2Q_20CanonicalVarsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i, !prof !116

bb.fn:                                            ; preds = %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner20CanonicalVarsStorageE6selectCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i
  %i.qh = invoke { i64, i64 } @_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE14reserve_rehashNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4X_13InternedSliceNtB2Q_20CanonicalVarsStorageE21from_header_and_slices_0EB2U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.qb, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @_RNvNvXsS_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB7_20CanonicalVarsStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, i1 noundef zeroext true) #58
          to label %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4P_13InternedSliceNtB2Q_20CanonicalVarsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i unwind label %.body.i.i227.i.i, !noalias !5331 ; 0 uses

_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4P_13InternedSliceNtB2Q_20CanonicalVarsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i: ; preds = %bb.fn, %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner20CanonicalVarsStorageE6selectCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5678
  store ptr %i.r, ptr %i.q, align 8, !noalias !5678
  %i.qi = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.qb, ptr %i.qi, align 8, !noalias !5678
  %.val.i.i.i.i.i = load ptr, ptr %i.qb, align 8, !alias.scope !5670, !noalias !5676, !nonnull !18, !noundef !18 ; 4 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.py, i64 16 ; 2 uses
  %.val5.i.i.i.i.i = load i64, ptr %i.qj, align 8, !alias.scope !5670, !noalias !5676, !noundef !18 ; 3 uses
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fu, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4P_13InternedSliceNtB2Q_20CanonicalVarsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i
  %.pn.i.i.i.i.i.i = phi i64 [ 0, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4P_13InternedSliceNtB2Q_20CanonicalVarsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i ], [ %i.rf, %bb.fu ]
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ undef, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4P_13InternedSliceNtB2Q_20CanonicalVarsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i ], [ %.sroa.4.1.i.i.i.i.i.i, %bb.fu ]
  %.sroa.01.0.i.i.i.i.i.i = phi i64 [ 0, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4P_13InternedSliceNtB2Q_20CanonicalVarsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i ], [ %.sroa.01.1.i.i.i.i.i.i, %bb.fu ]
  %i.qk = phi i64 [ 0, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4P_13InternedSliceNtB2Q_20CanonicalVarsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i ], [ %i.re, %bb.fu ]
  %.sroa.0.017.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %.val5.i.i.i.i.i ; 4 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.sroa.0.017.i.i.i.i.i.i
  %.sroa.0.0.copyload.i18.i.i.i.i.i.i = load <16 x i8>, ptr %i.ql, align 1, !noalias !5679 ; 3 uses
  %i.qm = icmp eq <16 x i8> %.sroa.0.0.copyload.i18.i.i.i.i.i.i, zeroinitializer
  %i.qn = bitcast <16 x i1> %i.qm to i16
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fq, %bb.fo
  %.sroa.05.0.i.i.i.i.i.i = phi i16 [ %i.qn, %bb.fo ], [ %i.qr, %bb.fq ] ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.sroa.05.0.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.qo = add i16 %.sroa.05.0.i.i.i.i.i.i, -1
  %i.qp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i.i.i.i.i.i, i1 true)
  %i.qq = zext nneg i16 %i.qp to i64
  %i.qr = and i16 %i.qo, %.sroa.05.0.i.i.i.i.i.i
  %i.qs = add i64 %.sroa.0.017.i.i.i.i.i.i, %i.qq
  %i.qt = and i64 %i.qs, %.val5.i.i.i.i.i         ; 2 uses
  %i.qu = call fastcc noundef zeroext i1 @_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB59_13InternedSliceNtB2S_20CanonicalVarsStorageE21from_header_and_slice0NCB56_s_0E0Cs6u1mgJOKDyY_13rust_analyzer(ptr noundef nonnull %i.q, i64 noundef %i.qt) #53, !noalias !5331, !inline_history !5682
  br i1 %i.qu, label %bb.fy, label %bb.fp

bb.fr:                                            ; preds = %bb.fp
  %.not11.i.i.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i.i.i, 1
  br i1 %.not11.i.i.i.i.i.i, label %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i.i.i, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.qv = icmp slt <16 x i8> %.sroa.0.0.copyload.i18.i.i.i.i.i.i, zeroinitializer
  %i.qw = bitcast <16 x i1> %i.qv to i16          ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %i.qw, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i.i.i, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.qx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.qw, i1 true)
  %i.qy = zext nneg i16 %i.qx to i64
  %i.qz = add i64 %.sroa.0.017.i.i.i.i.i.i, %i.qy
  %i.ra = and i64 %i.qz, %.val5.i.i.i.i.i
  br label %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i.i.i

_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i.i.i: ; preds = %bb.ft, %bb.fs, %bb.fr
  %.sroa.4.1.i.i.i.i.i.i = phi i64 [ %.sroa.4.0.i.i.i.i.i.i, %bb.fr ], [ %i.ra, %bb.ft ], [ undef, %bb.fs ] ; 3 uses
  %.sroa.01.1.i.i.i.i.i.i = phi i64 [ 1, %bb.fr ], [ 1, %bb.ft ], [ 0, %bb.fs ]
  %i.rb = icmp eq <16 x i8> %.sroa.0.0.copyload.i18.i.i.i.i.i.i, splat (i8 -1)
  %i.rc = bitcast <16 x i1> %i.rb to i16
  %i.rd = icmp eq i16 %i.rc, 0
  br i1 %i.rd, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i.i.i
  %i.re = add i64 %i.qk, 16                       ; 2 uses
  %i.rf = add i64 %i.re, %.sroa.0.017.i.i.i.i.i.i
  br label %bb.fo

bb.fv:                                            ; preds = %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i.i.i
  %i.rg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.sroa.4.1.i.i.i.i.i.i
  %i.rh = load i8, ptr %i.rg, align 1, !noalias !5331, !noundef !18
  %i.ri = icmp sgt i8 %i.rh, -1
  br i1 %i.ri, label %bb.fw, label %bb.fz

bb.fw:                                            ; preds = %bb.fv
  %.val62.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i.i, align 16, !noalias !5331
  %i.rj = icmp slt <16 x i8> %.val62.i.i.i.i.i.i.i, zeroinitializer
  %i.rk = bitcast <16 x i1> %i.rj to i16          ; 2 uses
  %.not.i22.i.i.i.i.i.i = icmp ne i16 %i.rk, 0
  %i.rl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.rk, i1 true)
  %i.rm = zext nneg i16 %i.rl to i64
  call void @llvm.assume(i1 %.not.i22.i.i.i.i.i.i)
  br label %bb.fz

.body.i.i227.i.i:                                 ; preds = %bb.ga, %bb.fn
  %i.rn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ro = cmpxchg ptr %i.py, i64 -4, i64 0 release monotonic, align 8, !noalias !5331
  %.sroa.18.0.in.i.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.ro, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i.i, label %common.resume.i.i, label %bb.fx, !prof !17

bb.fx:                                            ; preds = %.body.i.i227.i.i
  invoke void @_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.py)
          to label %common.resume.i.i unwind label %bb.ge, !noalias !5331

bb.fy:                                            ; preds = %bb.fq
  %i.rp = sub nsw i64 0, %i.qt
  %i.rq = getelementptr inbounds [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.rp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5331
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %i.rq, i64 -8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !5331
  br label %bb.gb

bb.fz:                                            ; preds = %bb.fw, %bb.fv
  %.sroa.3.0.i.i.ph.i.i.i.i = phi i64 [ %i.rm, %bb.fw ], [ %.sroa.4.1.i.i.i.i.i.i, %bb.fv ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5331
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !5331
  %i.rr = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #59, !noalias !5331 ; 4 uses
  %i.rs = icmp eq ptr %i.rr, null
  br i1 %i.rs, label %bb.ga, label %bb.gd

bb.ga:                                            ; preds = %bb.fz
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #57
          to label %.noexc10.i.i.i.i unwind label %.body.i.i227.i.i, !noalias !5331

.noexc10.i.i.i.i:                                 ; preds = %bb.ga
  unreachable

bb.gb:                                            ; preds = %bb.gd, %bb.fy
  %i.rt = phi ptr [ %.pre.i.i.i.i, %bb.fy ], [ %i.rr, %bb.gd ] ; 2 uses
  %i.ru = cmpxchg ptr %i.py, i64 -4, i64 0 release monotonic, align 8, !noalias !5331
  %.sroa.18.0.in.i.i.i.i11.i.i.i.i = extractvalue { i64, i1 } %i.ru, 1
  br i1 %.sroa.18.0.in.i.i.i.i11.i.i.i.i, label %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner20CanonicalVarsStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i, label %bb.gc, !prof !17

bb.gc:                                            ; preds = %bb.gb
  call void @_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.py), !noalias !5331
  br label %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner20CanonicalVarsStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i

bb.gd:                                            ; preds = %bb.fz
  store <2 x i64> <i64 1, i64 0>, ptr %i.rr, align 8, !noalias !5331
  call void @llvm.experimental.noalias.scope.decl(metadata !5683)
  %i.rv = load ptr, ptr %i.qb, align 8, !alias.scope !5683, !noalias !5331, !nonnull !18, !noundef !18 ; 3 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 %.sroa.3.0.i.i.ph.i.i.i.i ; 2 uses
  %i.rx = load i8, ptr %i.rw, align 1, !noalias !5686, !noundef !18
  %i.ry = and i8 %i.rx, 1
  %i.rz = zext nneg i8 %i.ry to i64
  %i.sa = add i64 %.sroa.3.0.i.i.ph.i.i.i.i, -16
  %i.sb = load i64, ptr %i.qj, align 8, !alias.scope !5683, !noalias !5331, !noundef !18
  %i.sc = and i64 %i.sb, %i.sa
  store i8 0, ptr %i.rw, align 1, !noalias !5686
  %i.sd = getelementptr i8, ptr %i.rv, i64 %i.sc
  %i.se = getelementptr i8, ptr %i.sd, i64 16
  store i8 0, ptr %i.se, align 1, !noalias !5686
  %i.sf = load <2 x i64>, ptr %i.qe, align 8, !alias.scope !5683, !noalias !5331
  %i.sg = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.rz, i64 0
  %i.sh = sub <2 x i64> %i.sf, %i.sg
  store <2 x i64> %i.sh, ptr %i.qe, align 8, !alias.scope !5683, !noalias !5331
  %i.si = sub nsw i64 0, %.sroa.3.0.i.i.ph.i.i.i.i
  %i.sj = getelementptr inbounds [8 x i8], ptr %i.rv, i64 %i.si
  %i.sk = getelementptr inbounds i8, ptr %i.sj, i64 -8
  store ptr %i.rr, ptr %i.sk, align 8, !noalias !5686
  br label %bb.gb

bb.ge:                                            ; preds = %bb.fx
  %i.sl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5331
  unreachable

_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner20CanonicalVarsStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i: ; preds = %bb.gc, %bb.gb
  %i.sm = atomicrmw add ptr %i.rt, i64 1 monotonic, align 8, !noalias !5331
  %i.sn = icmp slt i64 %i.sm, 0
  br i1 %i.sn, label %bb.gf, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s3_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i, !prof !116

bb.gf:                                            ; preds = %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner20CanonicalVarsStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
  call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57, !noalias !5331
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s3_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner20CanonicalVarsStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
  %i.so = call fastcc noundef nonnull ptr @_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s4_0Cs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0) #53, !noalias !5331
  %i.sp = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner14PatListStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #53, !noalias !5331 ; 2 uses
  %i.sq = atomicrmw add ptr %i.sp, i64 1 monotonic, align 8, !noalias !5331
  %i.sr = icmp slt i64 %i.sq, 0
  br i1 %i.sr, label %bb.gg, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s5_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i, !prof !116

bb.gg:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s3_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57, !noalias !5331
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s5_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s3_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %i.ss = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsa_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaquesNtB7_24PredefinedOpaquesStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, i64 24) acquire, align 8, !noalias !5331
  %i.st = icmp eq i32 %i.ss, 0
  br i1 %i.st, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB3i_2ty2TyEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB5Y_18InternSliceStorageNtNtB3i_7opaques24PredefinedOpaquesStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i, label %bb.gh, !prof !17

bb.gh:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s5_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %i.su = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsa_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaquesNtB7_24PredefinedOpaquesStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, i64 24) acquire, align 8, !noalias !5687
  %i.sv = icmp eq i32 %i.su, 0
  br i1 %i.sv, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB3i_2ty2TyEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB5Y_18InternSliceStorageNtNtB3i_7opaques24PredefinedOpaquesStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i, label %bb.gi, !prof !17

bb.gi:                                            ; preds = %bb.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5687
  store ptr @_RNvNvXsa_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaquesNtB7_24PredefinedOpaquesStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, ptr %i.e, align 8, !noalias !5687
  %i.sw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.a, ptr %i.sw, align 8, !noalias !5687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5687
  store ptr %i.e, ptr %i.d, align 8, !noalias !5687
  call void @_RNvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvXsa_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaquesNtB7_24PredefinedOpaquesStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, i64 24), i1 noundef zeroext true, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @26, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12), !noalias !5331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5687
  br label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB3i_2ty2TyEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB5Y_18InternSliceStorageNtNtB3i_7opaques24PredefinedOpaquesStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i

_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB3i_2ty2TyEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB5Y_18InternSliceStorageNtNtB3i_7opaques24PredefinedOpaquesStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i: ; preds = %bb.gi, %bb.gh, %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s5_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %i.sx = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsa_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaquesNtB7_24PredefinedOpaquesStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, i64 8), align 8, !noalias !5331, !noundef !18
  %.not.i.i.i229.i.i = icmp eq i64 %i.sx, 0
  br i1 %.not.i.i.i229.i.i, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB3i_2ty2TyEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB5Y_18InternSliceStorageNtNtB3i_7opaques24PredefinedOpaquesStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i
  %i.sy = load ptr, ptr @_RNvNvXsa_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaquesNtB7_24PredefinedOpaquesStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, align 8, !noalias !5331, !nonnull !18, !noundef !18 ; 9 uses
  %i.sz = cmpxchg weak ptr %i.sy, i64 0, i64 -4 acquire monotonic, align 8, !noalias !5331
  %i.ta = extractvalue { i64, i1 } %i.sz, 1
  br i1 %i.ta, label %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques24PredefinedOpaquesStorageE6selectCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i, label %bb.gl, !prof !17

bb.gk:                                            ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB3i_2ty2TyEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB5Y_18InternSliceStorageNtNtB3i_7opaques24PredefinedOpaquesStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #56, !noalias !5331
  unreachable

bb.gl:                                            ; preds = %bb.gj
  call void @_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.sy), !noalias !5331
  br label %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques24PredefinedOpaquesStorageE6selectCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i

_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques24PredefinedOpaquesStorageE6selectCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i: ; preds = %bb.gl, %bb.gj
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sy, i64 8 ; 3 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sy, i64 24 ; 3 uses
  %i.td = load i64, ptr %i.tc, align 8, !alias.scope !5690, !noalias !5695, !noundef !18
  %i.te = icmp eq i64 %i.td, 0
  br i1 %i.te, label %bb.gm, label %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2Q_2ty2TyEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB52_13InternedSliceNtNtB2Q_7opaques24PredefinedOpaquesStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i, !prof !116

bb.gm:                                            ; preds = %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques24PredefinedOpaquesStorageE6selectCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i
  %i.tf = invoke { i64, i64 } @_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2Q_2ty2TyEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE14reserve_rehashNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5a_13InternedSliceNtNtB2Q_7opaques24PredefinedOpaquesStorageE21from_header_and_slices_0EB2S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.tb, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @_RNvNvXsa_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaquesNtB7_24PredefinedOpaquesStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, i1 noundef zeroext true) #58
          to label %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2Q_2ty2TyEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB52_13InternedSliceNtNtB2Q_7opaques24PredefinedOpaquesStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i unwind label %.body.i.i235.i.i, !noalias !5331 ; 0 uses

_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2Q_2ty2TyEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB52_13InternedSliceNtNtB2Q_7opaques24PredefinedOpaquesStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i: ; preds = %bb.gm, %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques24PredefinedOpaquesStorageE6selectCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i
  %.val.i.i.i230.i.i = load ptr, ptr %i.tb, align 8, !alias.scope !5697, !noalias !5695, !nonnull !18, !noundef !18 ; 5 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sy, i64 16 ; 2 uses
  %.val5.i.i.i231.i.i = load i64, ptr %i.tg, align 8, !alias.scope !5697, !noalias !5695, !noundef !18 ; 4 uses
  br label %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2Q_2ty2TyEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB52_13InternedSliceNtNtB2Q_7opaques24PredefinedOpaquesStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.split.us.i.i.i.i.i

_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2Q_2ty2TyEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB52_13InternedSliceNtNtB2Q_7opaques24PredefinedOpaquesStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.split.us.i.i.i.i.i: ; preds = %bb.gp, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2Q_2ty2TyEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB52_13InternedSliceNtNtB2Q_7opaques24PredefinedOpaquesStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i
  %.pn.i.us.i.i.i.i.i = phi i64 [ %i.tv, %bb.gp ], [ 0, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2Q_2ty2TyEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB52_13InternedSliceNtNtB2Q_7opaques24PredefinedOpaquesStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i ]
  %.sroa.4.0.i.us.i.i.i.i.i = phi i64 [ %.sroa.4.1.i.us.i.i.i.i.i, %bb.gp ], [ undef, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2Q_2ty2TyEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB52_13InternedSliceNtNtB2Q_7opaques24PredefinedOpaquesStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i ]
  %.sroa.01.0.i.us.i.i.i.i.i = phi i64 [ %.sroa.01.1.i.us.i.i.i.i.i, %bb.gp ], [ 0, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2Q_2ty2TyEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB52_13InternedSliceNtNtB2Q_7opaques24PredefinedOpaquesStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i ]
  %i.th = phi i64 [ %i.tu, %bb.gp ], [ 0, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2Q_2ty2TyEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB52_13InternedSliceNtNtB2Q_7opaques24PredefinedOpaquesStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i ]
  %.sroa.0.017.i.us.i.i.i.i.i = and i64 %.pn.i.us.i.i.i.i.i, %.val5.i.i.i231.i.i ; 5 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %.val.i.i.i230.i.i, i64 %.sroa.0.017.i.us.i.i.i.i.i
  %.sroa.0.0.copyload.i18.i.us.i.i.i.i.i = load <16 x i8>, ptr %i.ti, align 1, !noalias !5698 ; 3 uses
  %i.tj = icmp eq <16 x i8> %.sroa.0.0.copyload.i18.i.us.i.i.i.i.i, zeroinitializer
  %i.tk = bitcast <16 x i1> %i.tj to i16          ; 4 uses
  %.not.i17.us.i.i.i.i.i = icmp eq i16 %i.tk, 0
  br i1 %.not.i17.us.i.i.i.i.i, label %._crit_edge.split.us.us.i.i.i.i.i, label %.lr.ph.us.i.i.i.i.i

._crit_edge.split.us.us.i.i.i.i.i:                ; preds = %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2S_2ty2TyEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5m_13InternedSliceNtNtB2S_7opaques24PredefinedOpaquesStorageE21from_header_and_slice0NCB5j_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.us.us.i.i.i.i.i, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2Q_2ty2TyEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB52_13InternedSliceNtNtB2Q_7opaques24PredefinedOpaquesStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.split.us.i.i.i.i.i
  %.not11.i.us.i.i.i.i.i = icmp eq i64 %.sroa.01.0.i.us.i.i.i.i.i, 1
  br i1 %.not11.i.us.i.i.i.i.i, label %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.us.i.i.i.i.i, label %bb.gn

bb.gn:                                            ; preds = %._crit_edge.split.us.us.i.i.i.i.i
  %i.tl = icmp slt <16 x i8> %.sroa.0.0.copyload.i18.i.us.i.i.i.i.i, zeroinitializer
  %i.tm = bitcast <16 x i1> %i.tl to i16          ; 2 uses
  %.not.i.i.us.i.i.i.i.i = icmp eq i16 %i.tm, 0
  br i1 %.not.i.i.us.i.i.i.i.i, label %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.us.i.i.i.i.i, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.tn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.tm, i1 true)
  %i.to = zext nneg i16 %i.tn to i64
  %i.tp = add i64 %.sroa.0.017.i.us.i.i.i.i.i, %i.to
  %i.tq = and i64 %i.tp, %.val5.i.i.i231.i.i
  br label %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.us.i.i.i.i.i

_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.us.i.i.i.i.i: ; preds = %bb.go, %bb.gn, %._crit_edge.split.us.us.i.i.i.i.i
  %.sroa.4.1.i.us.i.i.i.i.i = phi i64 [ %.sroa.4.0.i.us.i.i.i.i.i, %._crit_edge.split.us.us.i.i.i.i.i ], [ %i.tq, %bb.go ], [ undef, %bb.gn ] ; 3 uses
  %.sroa.01.1.i.us.i.i.i.i.i = phi i64 [ 1, %._crit_edge.split.us.us.i.i.i.i.i ], [ 1, %bb.go ], [ 0, %bb.gn ]
  %i.tr = icmp eq <16 x i8> %.sroa.0.0.copyload.i18.i.us.i.i.i.i.i, splat (i8 -1)
  %i.ts = bitcast <16 x i1> %i.tr to i16
  %i.tt = icmp eq i16 %i.ts, 0
  br i1 %i.tt, label %bb.gp, label %.split.us.i.i.i.i.i

bb.gp:                                            ; preds = %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.us.i.i.i.i.i
  %i.tu = add i64 %i.th, 16                       ; 2 uses
  %i.tv = add i64 %i.tu, %.sroa.0.017.i.us.i.i.i.i.i
  br label %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2Q_2ty2TyEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB52_13InternedSliceNtNtB2Q_7opaques24PredefinedOpaquesStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.split.us.i.i.i.i.i

.lr.ph.us.i.i.i.i.i:                              ; preds = %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2Q_2ty2TyEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB52_13InternedSliceNtNtB2Q_7opaques24PredefinedOpaquesStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.split.us.i.i.i.i.i
  %i.tw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.tk, i1 true)
  %i.tx = zext nneg i16 %i.tw to i64
  %i.ty = add i64 %.sroa.0.017.i.us.i.i.i.i.i, %i.tx
  %i.tz = and i64 %i.ty, %.val5.i.i.i231.i.i
  %i.ua = sub nsw i64 0, %i.tz
  %i.ub = getelementptr inbounds [8 x i8], ptr %.val.i.i.i230.i.i, i64 %i.ua
  %i.uc = getelementptr inbounds i8, ptr %i.ub, i64 -8
  %.val3.i.us26.us.i.i.i.i.i = load ptr, ptr %i.uc, align 8, !noalias !5701, !nonnull !18, !noundef !18 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %.val3.i.us26.us.i.i.i.i.i, i64 8
  %i.ue = load i64, ptr %i.ud, align 8, !noalias !5701, !noundef !18
  %i.uf = icmp eq i64 %i.ue, 0
  br i1 %i.uf, label %.loopexit.i.i.i.i, label %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2S_2ty2TyEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5m_13InternedSliceNtNtB2S_7opaques24PredefinedOpaquesStorageE21from_header_and_slice0NCB5j_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.us.us.preheader.i.i.i.i.i

_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2S_2ty2TyEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5m_13InternedSliceNtNtB2S_7opaques24PredefinedOpaquesStorageE21from_header_and_slice0NCB5j_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.us.us.preheader.i.i.i.i.i: ; preds = %.lr.ph.us.i.i.i.i.i
  %i.ug = add i16 %i.tk, -1
  %i.uh = and i16 %i.ug, %i.tk
  br label %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2S_2ty2TyEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5m_13InternedSliceNtNtB2S_7opaques24PredefinedOpaquesStorageE21from_header_and_slice0NCB5j_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.us.us.i.i.i.i.i

bb.gq:                                            ; preds = %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2S_2ty2TyEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5m_13InternedSliceNtNtB2S_7opaques24PredefinedOpaquesStorageE21from_header_and_slice0NCB5j_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.us.us.i.i.i.i.i
  %i.ui = add i16 %i.uu, -2
  %i.uj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.uu, i1 true)
  %i.uk = zext nneg i16 %i.uj to i64
  %i.ul = and i16 %i.ui, %i.uu
  %i.um = add i64 %.sroa.0.017.i.us.i.i.i.i.i, %i.uk
  %i.un = and i64 %i.um, %.val5.i.i.i231.i.i
  %i.uo = sub nsw i64 0, %i.un
  %i.up = getelementptr inbounds [8 x i8], ptr %.val.i.i.i230.i.i, i64 %i.uo
  %i.uq = getelementptr inbounds i8, ptr %i.up, i64 -8
  %.val3.i.us.us.i.i.i.i.i = load ptr, ptr %i.uq, align 8, !noalias !5701, !nonnull !18, !noundef !18 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %.val3.i.us.us.i.i.i.i.i, i64 8
  %i.us = load i64, ptr %i.ur, align 8, !noalias !5701, !noundef !18
  %i.ut = icmp eq i64 %i.us, 0
  br i1 %i.ut, label %.loopexit.i.i.i.i, label %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2S_2ty2TyEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5m_13InternedSliceNtNtB2S_7opaques24PredefinedOpaquesStorageE21from_header_and_slice0NCB5j_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.us.us.i.i.i.i.i

_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2S_2ty2TyEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5m_13InternedSliceNtNtB2S_7opaques24PredefinedOpaquesStorageE21from_header_and_slice0NCB5j_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.us.us.i.i.i.i.i: ; preds = %bb.gq, %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2S_2ty2TyEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5m_13InternedSliceNtNtB2S_7opaques24PredefinedOpaquesStorageE21from_header_and_slice0NCB5j_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.us.us.preheader.i.i.i.i.i
  %i.uu = phi i16 [ %i.ul, %bb.gq ], [ %i.uh, %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2S_2ty2TyEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5m_13InternedSliceNtNtB2S_7opaques24PredefinedOpaquesStorageE21from_header_and_slice0NCB5j_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.us.us.preheader.i.i.i.i.i ] ; 4 uses
  %.not.i.us.us.i.i.i.i.i = icmp eq i16 %i.uu, 0
  br i1 %.not.i.us.us.i.i.i.i.i, label %._crit_edge.split.us.us.i.i.i.i.i, label %bb.gq

.split.us.i.i.i.i.i:                              ; preds = %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.us.i.i.i.i.i
  %i.uv = getelementptr inbounds nuw i8, ptr %.val.i.i.i230.i.i, i64 %.sroa.4.1.i.us.i.i.i.i.i
  %i.uw = load i8, ptr %i.uv, align 1, !noalias !5695, !noundef !18
  %i.ux = icmp sgt i8 %i.uw, -1
  br i1 %i.ux, label %bb.gr, label %bb.gt

bb.gr:                                            ; preds = %.split.us.i.i.i.i.i
  %.val62.i.i.i.i.i238.i.i = load <16 x i8>, ptr %.val.i.i.i230.i.i, align 16, !noalias !5695
  %i.uy = icmp slt <16 x i8> %.val62.i.i.i.i.i238.i.i, zeroinitializer
  %i.uz = bitcast <16 x i1> %i.uy to i16          ; 2 uses
  %.not.i22.i.i.i.i239.i.i = icmp ne i16 %i.uz, 0
  %i.va = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.uz, i1 true)
  %i.vb = zext nneg i16 %i.va to i64
  call void @llvm.assume(i1 %.not.i22.i.i.i.i239.i.i)
  br label %bb.gt

.body.i.i235.i.i:                                 ; preds = %bb.gu, %bb.gm
  %i.vc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vd = cmpxchg ptr %i.sy, i64 -4, i64 0 release monotonic, align 8, !noalias !5331
  %.sroa.18.0.in.i.i.i.i.i.i236.i.i = extractvalue { i64, i1 } %i.vd, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i236.i.i, label %common.resume.i.i, label %bb.gs, !prof !17

bb.gs:                                            ; preds = %.body.i.i235.i.i
  invoke void @_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.sy)
          to label %common.resume.i.i unwind label %bb.gx, !noalias !5331

bb.gt:                                            ; preds = %bb.gr, %.split.us.i.i.i.i.i
  %.sroa.3.0.i.ph.i.i.i.i.i = phi i64 [ %i.vb, %bb.gr ], [ %.sroa.4.1.i.us.i.i.i.i.i, %.split.us.i.i.i.i.i ] ; 3 uses
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !5331
  %i.ve = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #59, !noalias !5331 ; 4 uses
  %i.vf = icmp eq ptr %i.ve, null
  br i1 %i.vf, label %bb.gu, label %bb.gw

bb.gu:                                            ; preds = %bb.gt
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #57
          to label %.noexc10.i.i237.i.i unwind label %.body.i.i235.i.i, !noalias !5331

.noexc10.i.i237.i.i:                              ; preds = %bb.gu
  unreachable

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.us.i.i.i.i.i, %bb.gq, %bb.gw
  %i.vg = phi ptr [ %i.ve, %bb.gw ], [ %.val3.i.us.us.i.i.i.i.i, %bb.gq ], [ %.val3.i.us26.us.i.i.i.i.i, %.lr.ph.us.i.i.i.i.i ] ; 2 uses
  %i.vh = cmpxchg ptr %i.sy, i64 -4, i64 0 release monotonic, align 8, !noalias !5331
  %.sroa.18.0.in.i.i.i.i11.i.i234.i.i = extractvalue { i64, i1 } %i.vh, 1
  br i1 %.sroa.18.0.in.i.i.i.i11.i.i234.i.i, label %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques24PredefinedOpaquesStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i, label %bb.gv, !prof !17

bb.gv:                                            ; preds = %.loopexit.i.i.i.i
  call void @_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.sy), !noalias !5331
  br label %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques24PredefinedOpaquesStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i

bb.gw:                                            ; preds = %bb.gt
  store <2 x i64> <i64 1, i64 0>, ptr %i.ve, align 8, !noalias !5331
  call void @llvm.experimental.noalias.scope.decl(metadata !5704)
  %i.vi = load ptr, ptr %i.tb, align 8, !alias.scope !5704, !noalias !5331, !nonnull !18, !noundef !18 ; 3 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 %.sroa.3.0.i.ph.i.i.i.i.i ; 2 uses
  %i.vk = load i8, ptr %i.vj, align 1, !noalias !5707, !noundef !18
  %i.vl = and i8 %i.vk, 1
  %i.vm = zext nneg i8 %i.vl to i64
  %i.vn = add i64 %.sroa.3.0.i.ph.i.i.i.i.i, -16
  %i.vo = load i64, ptr %i.tg, align 8, !alias.scope !5704, !noalias !5331, !noundef !18
  %i.vp = and i64 %i.vo, %i.vn
  store i8 0, ptr %i.vj, align 1, !noalias !5707
  %i.vq = getelementptr i8, ptr %i.vi, i64 %i.vp
  %i.vr = getelementptr i8, ptr %i.vq, i64 16
  store i8 0, ptr %i.vr, align 1, !noalias !5707
  %i.vs = load <2 x i64>, ptr %i.tc, align 8, !alias.scope !5704, !noalias !5331
  %i.vt = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.vm, i64 0
  %i.vu = sub <2 x i64> %i.vs, %i.vt
  store <2 x i64> %i.vu, ptr %i.tc, align 8, !alias.scope !5704, !noalias !5331
  %i.vv = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i.i
  %i.vw = getelementptr inbounds [8 x i8], ptr %i.vi, i64 %i.vv
  %i.vx = getelementptr inbounds i8, ptr %i.vw, i64 -8
  store ptr %i.ve, ptr %i.vx, align 8, !noalias !5707
  br label %.loopexit.i.i.i.i

bb.gx:                                            ; preds = %bb.gs
  %i.vy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5331
  unreachable

_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques24PredefinedOpaquesStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i: ; preds = %bb.gv, %.loopexit.i.i.i.i
  %i.vz = atomicrmw add ptr %i.vg, i64 1 monotonic, align 8, !noalias !5331
  %i.wa = icmp slt i64 %i.vz, 0
  br i1 %i.wa, label %bb.gy, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s6_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i, !prof !116

bb.gy:                                            ; preds = %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques24PredefinedOpaquesStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
  call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57, !noalias !5331
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s6_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques24PredefinedOpaquesStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
  %i.wb = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsA_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaquesNtB7_19SolverDefIdsStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, i64 24) acquire, align 8, !noalias !5331
  %i.wc = icmp eq i32 %i.wb, 0
  br i1 %i.wc, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB4D_18InternSliceStorageNtNtB2e_7opaques19SolverDefIdsStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i, label %bb.gz, !prof !17

bb.gz:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s6_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %i.wd = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsA_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaquesNtB7_19SolverDefIdsStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, i64 24) acquire, align 8, !noalias !5708
  %i.we = icmp eq i32 %i.wd, 0
  br i1 %i.we, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB4D_18InternSliceStorageNtNtB2e_7opaques19SolverDefIdsStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i, label %bb.ha, !prof !17

bb.ha:                                            ; preds = %bb.gz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5708
  store ptr @_RNvNvXsA_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaquesNtB7_19SolverDefIdsStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, ptr %i.g, align 8, !noalias !5708
  %i.wf = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.a, ptr %i.wf, align 8, !noalias !5708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5708
  store ptr %i.g, ptr %i.f, align 8, !noalias !5708
  call void @_RNvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvXsA_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaquesNtB7_19SolverDefIdsStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, i64 24), i1 noundef zeroext true, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12), !noalias !5331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5708
  br label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB4D_18InternSliceStorageNtNtB2e_7opaques19SolverDefIdsStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i

_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB4D_18InternSliceStorageNtNtB2e_7opaques19SolverDefIdsStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i: ; preds = %bb.ha, %bb.gz, %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s6_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %i.wg = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsA_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaquesNtB7_19SolverDefIdsStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, i64 8), align 8, !noalias !5331, !noundef !18
  %.not.i.i.i241.i.i = icmp eq i64 %i.wg, 0
  br i1 %.not.i.i.i241.i.i, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB4D_18InternSliceStorageNtNtB2e_7opaques19SolverDefIdsStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i
  %i.wh = load ptr, ptr @_RNvNvXsA_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaquesNtB7_19SolverDefIdsStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, align 8, !noalias !5331, !nonnull !18, !noundef !18 ; 9 uses
  %i.wi = cmpxchg weak ptr %i.wh, i64 0, i64 -4 acquire monotonic, align 8, !noalias !5331
  %i.wj = extractvalue { i64, i1 } %i.wi, 1
  br i1 %i.wj, label %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques19SolverDefIdsStorageE6selectCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i, label %bb.hd, !prof !17

bb.hc:                                            ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB4D_18InternSliceStorageNtNtB2e_7opaques19SolverDefIdsStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #56, !noalias !5331
  unreachable

bb.hd:                                            ; preds = %bb.hb
  call void @_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.wh), !noalias !5331
  br label %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques19SolverDefIdsStorageE6selectCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i

_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques19SolverDefIdsStorageE6selectCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i: ; preds = %bb.hd, %bb.hb
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wh, i64 8 ; 3 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wh, i64 24 ; 3 uses
  %i.wm = load i64, ptr %i.wl, align 8, !alias.scope !5711, !noalias !5716, !noundef !18
  %i.wn = icmp eq i64 %i.wm, 0
  br i1 %i.wn, label %bb.he, label %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB3H_13InternedSliceNtNtB1M_7opaques19SolverDefIdsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i, !prof !116

bb.he:                                            ; preds = %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques19SolverDefIdsStorageE6selectCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i
  %i.wo = invoke { i64, i64 } @_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE14reserve_rehashNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB3P_13InternedSliceNtNtB1M_7opaques19SolverDefIdsStorageE21from_header_and_slices_0EB1O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.wk, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @_RNvNvXsA_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaquesNtB7_19SolverDefIdsStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, i1 noundef zeroext true) #58
          to label %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB3H_13InternedSliceNtNtB1M_7opaques19SolverDefIdsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i unwind label %.body.i.i267.i.i, !noalias !5331 ; 0 uses

_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB3H_13InternedSliceNtNtB1M_7opaques19SolverDefIdsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i: ; preds = %bb.he, %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques19SolverDefIdsStorageE6selectCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i
  %.val.i.i.i242.i.i = load ptr, ptr %i.wk, align 8, !alias.scope !5718, !noalias !5716, !nonnull !18, !noundef !18 ; 5 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wh, i64 16 ; 2 uses
  %.val5.i.i.i243.i.i = load i64, ptr %i.wp, align 8, !alias.scope !5718, !noalias !5716, !noundef !18 ; 4 uses
  br label %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB3H_13InternedSliceNtNtB1M_7opaques19SolverDefIdsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.split.us.i.i.i.i.i

_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB3H_13InternedSliceNtNtB1M_7opaques19SolverDefIdsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.split.us.i.i.i.i.i: ; preds = %bb.hh, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB3H_13InternedSliceNtNtB1M_7opaques19SolverDefIdsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i
  %.pn.i.us.i.i.i244.i.i = phi i64 [ %i.xe, %bb.hh ], [ 0, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB3H_13InternedSliceNtNtB1M_7opaques19SolverDefIdsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i ]
  %.sroa.4.0.i.us.i.i.i245.i.i = phi i64 [ %.sroa.4.1.i.us.i.i.i263.i.i, %bb.hh ], [ undef, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB3H_13InternedSliceNtNtB1M_7opaques19SolverDefIdsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i ]
  %.sroa.01.0.i.us.i.i.i246.i.i = phi i64 [ %.sroa.01.1.i.us.i.i.i264.i.i, %bb.hh ], [ 0, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB3H_13InternedSliceNtNtB1M_7opaques19SolverDefIdsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i ]
  %i.wq = phi i64 [ %i.xd, %bb.hh ], [ 0, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB3H_13InternedSliceNtNtB1M_7opaques19SolverDefIdsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i ]
  %.sroa.0.017.i.us.i.i.i247.i.i = and i64 %.pn.i.us.i.i.i244.i.i, %.val5.i.i.i243.i.i ; 5 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %.val.i.i.i242.i.i, i64 %.sroa.0.017.i.us.i.i.i247.i.i
  %.sroa.0.0.copyload.i18.i.us.i.i.i248.i.i = load <16 x i8>, ptr %i.wr, align 1, !noalias !5719 ; 3 uses
  %i.ws = icmp eq <16 x i8> %.sroa.0.0.copyload.i18.i.us.i.i.i248.i.i, zeroinitializer
  %i.wt = bitcast <16 x i1> %i.ws to i16          ; 4 uses
  %.not.i17.us.i.i.i249.i.i = icmp eq i16 %i.wt, 0
  br i1 %.not.i17.us.i.i.i249.i.i, label %._crit_edge.split.us.us.i.i.i259.i.i, label %.lr.ph.us.i.i.i250.i.i

._crit_edge.split.us.us.i.i.i259.i.i:             ; preds = %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB41_13InternedSliceNtNtB1O_7opaques19SolverDefIdsStorageE21from_header_and_slice0NCB3Y_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.us.us.i.i.i.i.i, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB3H_13InternedSliceNtNtB1M_7opaques19SolverDefIdsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.split.us.i.i.i.i.i
  %.not11.i.us.i.i.i260.i.i = icmp eq i64 %.sroa.01.0.i.us.i.i.i246.i.i, 1
  br i1 %.not11.i.us.i.i.i260.i.i, label %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.us.i.i.i262.i.i, label %bb.hf

bb.hf:                                            ; preds = %._crit_edge.split.us.us.i.i.i259.i.i
  %i.wu = icmp slt <16 x i8> %.sroa.0.0.copyload.i18.i.us.i.i.i248.i.i, zeroinitializer
  %i.wv = bitcast <16 x i1> %i.wu to i16          ; 2 uses
  %.not.i.i.us.i.i.i261.i.i = icmp eq i16 %i.wv, 0
  br i1 %.not.i.i.us.i.i.i261.i.i, label %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.us.i.i.i262.i.i, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.ww = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.wv, i1 true)
  %i.wx = zext nneg i16 %i.ww to i64
  %i.wy = add i64 %.sroa.0.017.i.us.i.i.i247.i.i, %i.wx
  %i.wz = and i64 %i.wy, %.val5.i.i.i243.i.i
  br label %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.us.i.i.i262.i.i

_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.us.i.i.i262.i.i: ; preds = %bb.hg, %bb.hf, %._crit_edge.split.us.us.i.i.i259.i.i
  %.sroa.4.1.i.us.i.i.i263.i.i = phi i64 [ %.sroa.4.0.i.us.i.i.i245.i.i, %._crit_edge.split.us.us.i.i.i259.i.i ], [ %i.wz, %bb.hg ], [ undef, %bb.hf ] ; 3 uses
  %.sroa.01.1.i.us.i.i.i264.i.i = phi i64 [ 1, %._crit_edge.split.us.us.i.i.i259.i.i ], [ 1, %bb.hg ], [ 0, %bb.hf ]
  %i.xa = icmp eq <16 x i8> %.sroa.0.0.copyload.i18.i.us.i.i.i248.i.i, splat (i8 -1)
  %i.xb = bitcast <16 x i1> %i.xa to i16
  %i.xc = icmp eq i16 %i.xb, 0
  br i1 %i.xc, label %bb.hh, label %.split.us.i.i.i265.i.i

bb.hh:                                            ; preds = %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.us.i.i.i262.i.i
  %i.xd = add i64 %i.wq, 16                       ; 2 uses
  %i.xe = add i64 %i.xd, %.sroa.0.017.i.us.i.i.i247.i.i
  br label %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB3H_13InternedSliceNtNtB1M_7opaques19SolverDefIdsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.split.us.i.i.i.i.i

.lr.ph.us.i.i.i250.i.i:                           ; preds = %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB3H_13InternedSliceNtNtB1M_7opaques19SolverDefIdsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.split.us.i.i.i.i.i
  %i.xf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.wt, i1 true)
  %i.xg = zext nneg i16 %i.xf to i64
  %i.xh = add i64 %.sroa.0.017.i.us.i.i.i247.i.i, %i.xg
  %i.xi = and i64 %i.xh, %.val5.i.i.i243.i.i
  %i.xj = sub nsw i64 0, %i.xi
  %i.xk = getelementptr inbounds [8 x i8], ptr %.val.i.i.i242.i.i, i64 %i.xj
  %i.xl = getelementptr inbounds i8, ptr %i.xk, i64 -8
  %.val3.i.us26.us.i.i.i251.i.i = load ptr, ptr %i.xl, align 8, !noalias !5722, !nonnull !18, !noundef !18 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %.val3.i.us26.us.i.i.i251.i.i, i64 8
  %i.xn = load i64, ptr %i.xm, align 8, !noalias !5722, !noundef !18
  %i.xo = icmp eq i64 %i.xn, 0
  br i1 %i.xo, label %.loopexit.i.i254.i.i, label %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB41_13InternedSliceNtNtB1O_7opaques19SolverDefIdsStorageE21from_header_and_slice0NCB3Y_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.us.us.preheader.i.i.i.i.i

_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB41_13InternedSliceNtNtB1O_7opaques19SolverDefIdsStorageE21from_header_and_slice0NCB3Y_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.us.us.preheader.i.i.i.i.i: ; preds = %.lr.ph.us.i.i.i250.i.i
  %i.xp = add i16 %i.wt, -1
  %i.xq = and i16 %i.xp, %i.wt
  br label %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB41_13InternedSliceNtNtB1O_7opaques19SolverDefIdsStorageE21from_header_and_slice0NCB3Y_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.us.us.i.i.i.i.i

bb.hi:                                            ; preds = %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB41_13InternedSliceNtNtB1O_7opaques19SolverDefIdsStorageE21from_header_and_slice0NCB3Y_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.us.us.i.i.i.i.i
  %i.xr = add i16 %i.yd, -2
  %i.xs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.yd, i1 true)
  %i.xt = zext nneg i16 %i.xs to i64
  %i.xu = and i16 %i.xr, %i.yd
  %i.xv = add i64 %.sroa.0.017.i.us.i.i.i247.i.i, %i.xt
  %i.xw = and i64 %i.xv, %.val5.i.i.i243.i.i
  %i.xx = sub nsw i64 0, %i.xw
  %i.xy = getelementptr inbounds [8 x i8], ptr %.val.i.i.i242.i.i, i64 %i.xx
  %i.xz = getelementptr inbounds i8, ptr %i.xy, i64 -8
  %.val3.i.us.us.i.i.i253.i.i = load ptr, ptr %i.xz, align 8, !noalias !5722, !nonnull !18, !noundef !18 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %.val3.i.us.us.i.i.i253.i.i, i64 8
  %i.yb = load i64, ptr %i.ya, align 8, !noalias !5722, !noundef !18
  %i.yc = icmp eq i64 %i.yb, 0
  br i1 %i.yc, label %.loopexit.i.i254.i.i, label %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB41_13InternedSliceNtNtB1O_7opaques19SolverDefIdsStorageE21from_header_and_slice0NCB3Y_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.us.us.i.i.i.i.i

_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB41_13InternedSliceNtNtB1O_7opaques19SolverDefIdsStorageE21from_header_and_slice0NCB3Y_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.us.us.i.i.i.i.i: ; preds = %bb.hi, %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB41_13InternedSliceNtNtB1O_7opaques19SolverDefIdsStorageE21from_header_and_slice0NCB3Y_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.us.us.preheader.i.i.i.i.i
  %i.yd = phi i16 [ %i.xu, %bb.hi ], [ %i.xq, %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB41_13InternedSliceNtNtB1O_7opaques19SolverDefIdsStorageE21from_header_and_slice0NCB3Y_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.us.us.preheader.i.i.i.i.i ] ; 4 uses
  %.not.i.us.us.i.i.i252.i.i = icmp eq i16 %i.yd, 0
  br i1 %.not.i.us.us.i.i.i252.i.i, label %._crit_edge.split.us.us.i.i.i259.i.i, label %bb.hi

.split.us.i.i.i265.i.i:                           ; preds = %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.us.i.i.i262.i.i
  %i.ye = getelementptr inbounds nuw i8, ptr %.val.i.i.i242.i.i, i64 %.sroa.4.1.i.us.i.i.i263.i.i
  %i.yf = load i8, ptr %i.ye, align 1, !noalias !5716, !noundef !18
  %i.yg = icmp sgt i8 %i.yf, -1
  br i1 %i.yg, label %bb.hj, label %bb.hl

bb.hj:                                            ; preds = %.split.us.i.i.i265.i.i
  %.val62.i.i.i.i.i270.i.i = load <16 x i8>, ptr %.val.i.i.i242.i.i, align 16, !noalias !5716
  %i.yh = icmp slt <16 x i8> %.val62.i.i.i.i.i270.i.i, zeroinitializer
  %i.yi = bitcast <16 x i1> %i.yh to i16          ; 2 uses
  %.not.i22.i.i.i.i271.i.i = icmp ne i16 %i.yi, 0
  %i.yj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.yi, i1 true)
  %i.yk = zext nneg i16 %i.yj to i64
  call void @llvm.assume(i1 %.not.i22.i.i.i.i271.i.i)
  br label %bb.hl

.body.i.i267.i.i:                                 ; preds = %bb.hm, %bb.he
  %i.yl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ym = cmpxchg ptr %i.wh, i64 -4, i64 0 release monotonic, align 8, !noalias !5331
  %.sroa.18.0.in.i.i.i.i.i.i268.i.i = extractvalue { i64, i1 } %i.ym, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i268.i.i, label %common.resume.i.i, label %bb.hk, !prof !17

bb.hk:                                            ; preds = %.body.i.i267.i.i
  invoke void @_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.wh)
          to label %common.resume.i.i unwind label %bb.hp, !noalias !5331

bb.hl:                                            ; preds = %bb.hj, %.split.us.i.i.i265.i.i
  %.sroa.3.0.i.ph.i.i.i266.i.i = phi i64 [ %i.yk, %bb.hj ], [ %.sroa.4.1.i.us.i.i.i263.i.i, %.split.us.i.i.i265.i.i ] ; 3 uses
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !5331
  %i.yn = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #59, !noalias !5331 ; 4 uses
  %i.yo = icmp eq ptr %i.yn, null
  br i1 %i.yo, label %bb.hm, label %bb.ho

bb.hm:                                            ; preds = %bb.hl
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #57
          to label %.noexc10.i.i269.i.i unwind label %.body.i.i267.i.i, !noalias !5331

.noexc10.i.i269.i.i:                              ; preds = %bb.hm
  unreachable

.loopexit.i.i254.i.i:                             ; preds = %.lr.ph.us.i.i.i250.i.i, %bb.hi, %bb.ho
  %i.yp = phi ptr [ %i.yn, %bb.ho ], [ %.val3.i.us.us.i.i.i253.i.i, %bb.hi ], [ %.val3.i.us26.us.i.i.i251.i.i, %.lr.ph.us.i.i.i250.i.i ] ; 2 uses
  %i.yq = cmpxchg ptr %i.wh, i64 -4, i64 0 release monotonic, align 8, !noalias !5331
  %.sroa.18.0.in.i.i.i.i11.i.i258.i.i = extractvalue { i64, i1 } %i.yq, 1
  br i1 %.sroa.18.0.in.i.i.i.i11.i.i258.i.i, label %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques19SolverDefIdsStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i, label %bb.hn, !prof !17

bb.hn:                                            ; preds = %.loopexit.i.i254.i.i
  call void @_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.wh), !noalias !5331
  br label %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques19SolverDefIdsStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i

bb.ho:                                            ; preds = %bb.hl
  store <2 x i64> <i64 1, i64 0>, ptr %i.yn, align 8, !noalias !5331
  call void @llvm.experimental.noalias.scope.decl(metadata !5725)
  %i.yr = load ptr, ptr %i.wk, align 8, !alias.scope !5725, !noalias !5331, !nonnull !18, !noundef !18 ; 3 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 %.sroa.3.0.i.ph.i.i.i266.i.i ; 2 uses
  %i.yt = load i8, ptr %i.ys, align 1, !noalias !5728, !noundef !18
  %i.yu = and i8 %i.yt, 1
  %i.yv = zext nneg i8 %i.yu to i64
  %i.yw = add i64 %.sroa.3.0.i.ph.i.i.i266.i.i, -16
  %i.yx = load i64, ptr %i.wp, align 8, !alias.scope !5725, !noalias !5331, !noundef !18
  %i.yy = and i64 %i.yx, %i.yw
  store i8 0, ptr %i.ys, align 1, !noalias !5728
  %i.yz = getelementptr i8, ptr %i.yr, i64 %i.yy
  %i.za = getelementptr i8, ptr %i.yz, i64 16
  store i8 0, ptr %i.za, align 1, !noalias !5728
  %i.zb = load <2 x i64>, ptr %i.wl, align 8, !alias.scope !5725, !noalias !5331
  %i.zc = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.yv, i64 0
  %i.zd = sub <2 x i64> %i.zb, %i.zc
  store <2 x i64> %i.zd, ptr %i.wl, align 8, !alias.scope !5725, !noalias !5331
  %i.ze = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i266.i.i
  %i.zf = getelementptr inbounds [8 x i8], ptr %i.yr, i64 %i.ze
  %i.zg = getelementptr inbounds i8, ptr %i.zf, i64 -8
  store ptr %i.yn, ptr %i.zg, align 8, !noalias !5728
  br label %.loopexit.i.i254.i.i

bb.hp:                                            ; preds = %bb.hk
  %i.zh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5331
  unreachable

_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques19SolverDefIdsStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i: ; preds = %bb.hn, %.loopexit.i.i254.i.i
  %i.zi = atomicrmw add ptr %i.yp, i64 1 monotonic, align 8, !noalias !5331
  %i.zj = icmp slt i64 %i.zi, 0
  br i1 %i.zj, label %bb.hq, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s7_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i, !prof !116

bb.hq:                                            ; preds = %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques19SolverDefIdsStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
  call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57, !noalias !5331
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s7_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques19SolverDefIdsStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
  %i.zk = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate33BoundExistentialPredicatesStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #53, !noalias !5331 ; 2 uses
  %i.zl = atomicrmw add ptr %i.zk, i64 1 monotonic, align 8, !noalias !5331
  %i.zm = icmp slt i64 %i.zl, 0
  br i1 %i.zm, label %bb.hr, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s8_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i, !prof !116

bb.hr:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s7_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57, !noalias !5331
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s8_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s7_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %i.zn = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs1E_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB8_14ClausesStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, i64 24) acquire, align 8, !noalias !5331
  %i.zo = icmp eq i32 %i.zn, 0
  br i1 %i.zo, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB2b_6ClauseEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB52_18InternSliceStorageNtB2b_14ClausesStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i, label %bb.hs, !prof !17

bb.hs:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s8_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %i.zp = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs1E_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB8_14ClausesStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, i64 24) acquire, align 8, !noalias !5729
  %i.zq = icmp eq i32 %i.zp, 0
  br i1 %i.zq, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB2b_6ClauseEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB52_18InternSliceStorageNtB2b_14ClausesStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i, label %bb.ht, !prof !17

bb.ht:                                            ; preds = %bb.hs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5729
  store ptr @_RNvNvXs1E_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB8_14ClausesStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, ptr %i.i, align 8, !noalias !5729
  %i.zr = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.a, ptr %i.zr, align 8, !noalias !5729
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5729
  store ptr %i.i, ptr %i.h, align 8, !noalias !5729
  call void @_RNvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvXs1E_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB8_14ClausesStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, i64 24), i1 noundef zeroext true, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12), !noalias !5331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5729
  br label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB2b_6ClauseEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB52_18InternSliceStorageNtB2b_14ClausesStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i

_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB2b_6ClauseEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB52_18InternSliceStorageNtB2b_14ClausesStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i: ; preds = %bb.ht, %bb.hs, %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s8_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5732
  store i64 0, ptr %i.p, align 8, !alias.scope !5735, !noalias !5746
  call void @_RINvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseNtNtCshzWfHUSfYae_4core4hash4Hash10hash_sliceNtCsh04pLiDBs3j_10rustc_hash8FxHasherECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef range(i64 0, 1152921504606846976) 0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p), !noalias !5749
  %.val.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !noalias !5732, !noundef !18 ; 2 uses
  %i.zs = call noundef i64 @llvm.fshl.i64(i64 %.val.i.i.i.i.i.i, i64 %.val.i.i.i.i.i.i, i64 26) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5732
  %i.zt = shl i64 %i.zs, 7
  %i.zu = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs1E_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB8_14ClausesStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, i64 16), align 8, !noalias !5331, !noundef !18
  %i.zv = and i64 %i.zu, 63
  %i.zw = lshr i64 %i.zt, %i.zv                   ; 3 uses
  %i.zx = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs1E_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB8_14ClausesStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, i64 8), align 8, !noalias !5331, !noundef !18 ; 2 uses
  %i.zy = icmp ult i64 %i.zw, %i.zx
  br i1 %i.zy, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB2b_6ClauseEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB52_18InternSliceStorageNtB2b_14ClausesStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i
  %i.zz = load ptr, ptr @_RNvNvXs1E_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB8_14ClausesStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, align 8, !noalias !5331, !nonnull !18, !noundef !18
  %i.aaa = getelementptr inbounds nuw [128 x i8], ptr %i.zz, i64 %i.zw ; 9 uses
  %i.aab = cmpxchg weak ptr %i.aaa, i64 0, i64 -4 acquire monotonic, align 8, !noalias !5331
  %i.aac = extractvalue { i64, i1 } %i.aab, 1
  br i1 %i.aac, label %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate14ClausesStorageE6selectCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i, label %bb.hw, !prof !17

bb.hv:                                            ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB2b_6ClauseEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB52_18InternSliceStorageNtB2b_14ClausesStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.zw, i64 noundef %i.zx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #56, !noalias !5331
  unreachable

bb.hw:                                            ; preds = %bb.hu
  call void @_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.aaa), !noalias !5331
  br label %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate14ClausesStorageE6selectCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i

_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate14ClausesStorageE6selectCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i: ; preds = %bb.hw, %bb.hu
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8 ; 4 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aaa, i64 24 ; 3 uses
  %i.aaf = load i64, ptr %i.aae, align 8, !alias.scope !5750, !noalias !5755, !noundef !18
  %i.aag = icmp eq i64 %i.aaf, 0
  br i1 %i.aag, label %bb.hx, label %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB1J_6ClauseEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB46_13InternedSliceNtB1J_14ClausesStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i, !prof !116

bb.hx:                                            ; preds = %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate14ClausesStorageE6selectCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i
  %i.aah = invoke { i64, i64 } @_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB1J_6ClauseEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE14reserve_rehashNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4e_13InternedSliceNtB1J_14ClausesStorageE21from_header_and_slices_0EB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aad, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @_RNvNvXs1E_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB8_14ClausesStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, i1 noundef zeroext true) #58
          to label %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB1J_6ClauseEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB46_13InternedSliceNtB1J_14ClausesStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !5331 ; 0 uses

_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB1J_6ClauseEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB46_13InternedSliceNtB1J_14ClausesStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i: ; preds = %bb.hx, %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate14ClausesStorageE6selectCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i
  %.val.i.i.i273.i.i = load ptr, ptr %i.aad, align 8, !alias.scope !5757, !noalias !5755, !nonnull !18, !noundef !18 ; 4 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aaa, i64 16 ; 2 uses
  %.val5.i.i.i274.i.i = load i64, ptr %i.aai, align 8, !alias.scope !5757, !noalias !5755, !noundef !18 ; 3 uses
  %i.aaj = lshr i64 %i.zs, 57
  %i.aak = trunc nuw nsw i64 %i.aaj to i8         ; 3 uses
  %i.aal = insertelement <16 x i8> poison, i8 %i.aak, i64 0
  %i.aam = shufflevector <16 x i8> %i.aal, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.hy

bb.hy:                                            ; preds = %bb.ib, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB1J_6ClauseEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB46_13InternedSliceNtB1J_14ClausesStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i
  %.pre18.i.i.i.i.i = phi ptr [ %.val.i.i.i273.i.i, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB1J_6ClauseEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB46_13InternedSliceNtB1J_14ClausesStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i ], [ %.pre1821.i.i.i.i.i, %bb.ib ] ; 3 uses
  %.pn.i.i.i.i275.i.i = phi i64 [ %i.zs, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB1J_6ClauseEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB46_13InternedSliceNtB1J_14ClausesStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i ], [ %i.abr, %bb.ib ]
  %.sroa.4.0.i.i.i.i276.i.i = phi i64 [ undef, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB1J_6ClauseEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB46_13InternedSliceNtB1J_14ClausesStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i ], [ %.sroa.4.1.i.i.i.i284.i.i, %bb.ib ]
  %.sroa.01.0.i.i.i.i277.i.i = phi i64 [ 0, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB1J_6ClauseEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB46_13InternedSliceNtB1J_14ClausesStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i ], [ %.sroa.01.1.i.i.i.i285.i.i, %bb.ib ]
  %i.aan = phi i64 [ 0, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB1J_6ClauseEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB46_13InternedSliceNtB1J_14ClausesStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i ], [ %i.abq, %bb.ib ]
  %.sroa.0.017.i.i.i.i278.i.i = and i64 %.pn.i.i.i.i275.i.i, %.val5.i.i.i274.i.i ; 4 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %.val.i.i.i273.i.i, i64 %.sroa.0.017.i.i.i.i278.i.i
  %.sroa.0.0.copyload.i18.i.i.i.i279.i.i = load <16 x i8>, ptr %i.aao, align 1, !noalias !5758 ; 3 uses
  %i.aap = icmp eq <16 x i8> %.sroa.0.0.copyload.i18.i.i.i.i279.i.i, %i.aam
  %i.aaq = bitcast <16 x i1> %i.aap to i16        ; 2 uses
  %.not.i13.i.i.i.i.i = icmp eq i16 %i.aaq, 0
  br i1 %.not.i13.i.i.i.i.i, label %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB1L_6ClauseEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4q_13InternedSliceNtB1L_14ClausesStorageE21from_header_and_slice0NCB4n_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.hy, %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB1L_6ClauseEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4q_13InternedSliceNtB1L_14ClausesStorageE21from_header_and_slice0NCB4n_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.backedge.i.i.i.i.i
  %.pre1820.i.i.i.i.i = phi ptr [ %.pre1819.i.i.i.i.i, %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB1L_6ClauseEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4q_13InternedSliceNtB1L_14ClausesStorageE21from_header_and_slice0NCB4n_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.backedge.i.i.i.i.i ], [ %.pre18.i.i.i.i.i, %bb.hy ]
  %i.aar = phi ptr [ %i.abg, %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB1L_6ClauseEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4q_13InternedSliceNtB1L_14ClausesStorageE21from_header_and_slice0NCB4n_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.backedge.i.i.i.i.i ], [ %.pre18.i.i.i.i.i, %bb.hy ] ; 2 uses
  %.sroa.05.0.i14.i.i.i.i.i = phi i16 [ %i.aav, %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB1L_6ClauseEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4q_13InternedSliceNtB1L_14ClausesStorageE21from_header_and_slice0NCB4n_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.backedge.i.i.i.i.i ], [ %i.aaq, %bb.hy ] ; 3 uses
  %i.aas = add i16 %.sroa.05.0.i14.i.i.i.i.i, -1
  %i.aat = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i14.i.i.i.i.i, i1 true)
  %i.aau = zext nneg i16 %i.aat to i64
  %i.aav = and i16 %i.aas, %.sroa.05.0.i14.i.i.i.i.i ; 2 uses
  %i.aaw = add i64 %.sroa.0.017.i.i.i.i278.i.i, %i.aau
  %i.aax = and i64 %i.aaw, %.val5.i.i.i274.i.i
  %i.aay = sub nsw i64 0, %i.aax                  ; 2 uses
  %i.aaz = getelementptr inbounds [8 x i8], ptr %i.aar, i64 %i.aay
  %i.aba = getelementptr inbounds i8, ptr %i.aaz, i64 -8
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.aba, align 8, !noalias !5761, !nonnull !18, !noundef !18 ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i.i.i, i64 16
  %i.abc = load i64, ptr %i.abb, align 8, !noalias !5761, !noundef !18
  %i.abd = icmp eq i64 %i.abc, 0
  br i1 %i.abd, label %.split.i.i.i.i.i, label %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB1L_6ClauseEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4q_13InternedSliceNtB1L_14ClausesStorageE21from_header_and_slice0NCB4n_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.backedge.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i
  %i.abe = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i.i.i, i64 24
  %i.abf = invoke noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseINtB5_14SlicePartialEqBC_E17equal_same_lengthCs6u1mgJOKDyY_13rust_analyzer(ptr noundef nonnull %i.abe, ptr noundef nonnull inttoptr (i64 8 to ptr), i64 noundef 0)
          to label %.noexc8.i.i.i.i unwind label %.loopexit.i.i294.i.i, !noalias !5331

.noexc8.i.i.i.i:                                  ; preds = %.split.i.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %i.aad, align 8, !alias.scope !5757, !noalias !5761 ; 3 uses
  br i1 %i.abf, label %bb.if, label %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB1L_6ClauseEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4q_13InternedSliceNtB1L_14ClausesStorageE21from_header_and_slice0NCB4n_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.backedge.i.i.i.i.i

_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB1L_6ClauseEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4q_13InternedSliceNtB1L_14ClausesStorageE21from_header_and_slice0NCB4n_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.backedge.i.i.i.i.i: ; preds = %.noexc8.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.pre1819.i.i.i.i.i = phi ptr [ %.pre.i.i.i.i.i, %.noexc8.i.i.i.i ], [ %.pre1820.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.abg = phi ptr [ %.pre.i.i.i.i.i, %.noexc8.i.i.i.i ], [ %i.aar, %.lr.ph.i.i.i.i.i ]
  %.not.i.i.i.i280.i.i = icmp eq i16 %i.aav, 0
  br i1 %.not.i.i.i.i280.i.i, label %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB1L_6ClauseEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4q_13InternedSliceNtB1L_14ClausesStorageE21from_header_and_slice0NCB4n_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB1L_6ClauseEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4q_13InternedSliceNtB1L_14ClausesStorageE21from_header_and_slice0NCB4n_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit._crit_edge.i.i.i.i.i: ; preds = %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB1L_6ClauseEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4q_13InternedSliceNtB1L_14ClausesStorageE21from_header_and_slice0NCB4n_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.backedge.i.i.i.i.i, %bb.hy
  %.pre1821.i.i.i.i.i = phi ptr [ %.pre18.i.i.i.i.i, %bb.hy ], [ %.pre1819.i.i.i.i.i, %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB1L_6ClauseEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4q_13InternedSliceNtB1L_14ClausesStorageE21from_header_and_slice0NCB4n_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.backedge.i.i.i.i.i ]
  %.not11.i.i.i.i281.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i277.i.i, 1
  br i1 %.not11.i.i.i.i281.i.i, label %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i283.i.i, label %bb.hz

bb.hz:                                            ; preds = %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB1L_6ClauseEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4q_13InternedSliceNtB1L_14ClausesStorageE21from_header_and_slice0NCB4n_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit._crit_edge.i.i.i.i.i
  %i.abh = icmp slt <16 x i8> %.sroa.0.0.copyload.i18.i.i.i.i279.i.i, zeroinitializer
  %i.abi = bitcast <16 x i1> %i.abh to i16        ; 2 uses
  %.not.i.i.i.i.i282.i.i = icmp eq i16 %i.abi, 0
  br i1 %.not.i.i.i.i.i282.i.i, label %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i283.i.i, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.abj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.abi, i1 true)
  %i.abk = zext nneg i16 %i.abj to i64
  %i.abl = add i64 %.sroa.0.017.i.i.i.i278.i.i, %i.abk
  %i.abm = and i64 %i.abl, %.val5.i.i.i274.i.i
  br label %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i283.i.i

_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i283.i.i: ; preds = %bb.ia, %bb.hz, %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB1L_6ClauseEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4q_13InternedSliceNtB1L_14ClausesStorageE21from_header_and_slice0NCB4n_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit._crit_edge.i.i.i.i.i
  %.sroa.4.1.i.i.i.i284.i.i = phi i64 [ %.sroa.4.0.i.i.i.i276.i.i, %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB1L_6ClauseEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4q_13InternedSliceNtB1L_14ClausesStorageE21from_header_and_slice0NCB4n_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit._crit_edge.i.i.i.i.i ], [ %i.abm, %bb.ia ], [ undef, %bb.hz ] ; 3 uses
  %.sroa.01.1.i.i.i.i285.i.i = phi i64 [ 1, %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB1L_6ClauseEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4q_13InternedSliceNtB1L_14ClausesStorageE21from_header_and_slice0NCB4n_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit._crit_edge.i.i.i.i.i ], [ 1, %bb.ia ], [ 0, %bb.hz ]
  %i.abn = icmp eq <16 x i8> %.sroa.0.0.copyload.i18.i.i.i.i279.i.i, splat (i8 -1)
  %i.abo = bitcast <16 x i1> %i.abn to i16
  %i.abp = icmp eq i16 %i.abo, 0
  br i1 %i.abp, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i283.i.i
  %i.abq = add i64 %i.aan, 16                     ; 2 uses
  %i.abr = add i64 %i.abq, %.sroa.0.017.i.i.i.i278.i.i
  br label %bb.hy

end_hunk_1
begin_hunk_2_@_RNCINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB5_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE10initializeNCINvB4_11get_or_initNCNvBX_13default_types0E0zE0Cs6u1mgJOKDyY_13rust_analyzer:bb.a
  store i8 %i.aak, ptr %i.ach, align 1, !noalias !5770
  %i.aco = getelementptr i8, ptr %i.acg, i64 %i.acn
  %i.acp = getelementptr i8, ptr %i.aco, i64 16
  store i8 %i.aak, ptr %i.acp, align 1, !noalias !5770
  %i.acq = load <2 x i64>, ptr %i.aae, align 8, !alias.scope !5767, !noalias !5331
  %i.acr = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ack, i64 0
  %i.acs = sub <2 x i64> %i.acq, %i.acr
  store <2 x i64> %i.acs, ptr %i.aae, align 8, !alias.scope !5767, !noalias !5331
  %i.act = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i286.i.i
  %i.acu = getelementptr inbounds [8 x i8], ptr %i.acg, i64 %i.act
  %i.acv = getelementptr inbounds i8, ptr %i.acu, i64 -8
  store ptr %i.acb, ptr %i.acv, align 8, !noalias !5770
  br label %bb.ii

bb.il:                                            ; preds = %bb.ie
  %i.acw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5331
  unreachable

_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate14ClausesStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i: ; preds = %bb.ij, %bb.ii
  %i.acx = atomicrmw add ptr %i.acd, i64 1 monotonic, align 8, !noalias !5331
  %i.acy = icmp slt i64 %i.acx, 0
  br i1 %i.acy, label %bb.im, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s9_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i, !prof !116

bb.im:                                            ; preds = %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate14ClausesStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
  call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57, !noalias !5331
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s9_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate14ClausesStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
  %i.acz = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsQ_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB7_24RegionAssumptionsStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, i64 24) acquire, align 8, !noalias !5331
  %i.ada = icmp eq i32 %i.acz, 0
  br i1 %i.ada, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB3l_11generic_arg10GenericArgEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB6j_18InternSliceStorageNtNtB3l_6region24RegionAssumptionsStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i, label %bb.in, !prof !17

bb.in:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s9_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %i.adb = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsQ_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB7_24RegionAssumptionsStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, i64 24) acquire, align 8, !noalias !5771
  %i.adc = icmp eq i32 %i.adb, 0
  br i1 %i.adc, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB3l_11generic_arg10GenericArgEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB6j_18InternSliceStorageNtNtB3l_6region24RegionAssumptionsStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i, label %bb.io, !prof !17

bb.io:                                            ; preds = %bb.in
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5771
  store ptr @_RNvNvXsQ_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB7_24RegionAssumptionsStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, ptr %i.k, align 8, !noalias !5771
  %i.add = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.a, ptr %i.add, align 8, !noalias !5771
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5771
  store ptr %i.k, ptr %i.j, align 8, !noalias !5771
  call void @_RNvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvXsQ_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB7_24RegionAssumptionsStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, i64 24), i1 noundef zeroext true, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12), !noalias !5331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5771
  br label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB3l_11generic_arg10GenericArgEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB6j_18InternSliceStorageNtNtB3l_6region24RegionAssumptionsStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i

_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB3l_11generic_arg10GenericArgEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB6j_18InternSliceStorageNtNtB3l_6region24RegionAssumptionsStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i: ; preds = %bb.io, %bb.in, %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s9_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %i.ade = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsQ_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB7_24RegionAssumptionsStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, i64 8), align 8, !noalias !5331, !noundef !18
  %.not.i.i.i298.i.i = icmp eq i64 %i.ade, 0
  br i1 %.not.i.i.i298.i.i, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB3l_11generic_arg10GenericArgEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB6j_18InternSliceStorageNtNtB3l_6region24RegionAssumptionsStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i
  %i.adf = load ptr, ptr @_RNvNvXsQ_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB7_24RegionAssumptionsStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, align 8, !noalias !5331, !nonnull !18, !noundef !18 ; 9 uses
  %i.adg = cmpxchg weak ptr %i.adf, i64 0, i64 -4 acquire monotonic, align 8, !noalias !5331
  %i.adh = extractvalue { i64, i1 } %i.adg, 1
  br i1 %i.adh, label %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6region24RegionAssumptionsStorageE6selectCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i, label %bb.ir, !prof !17

bb.iq:                                            ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB3l_11generic_arg10GenericArgEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB6j_18InternSliceStorageNtNtB3l_6region24RegionAssumptionsStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #56, !noalias !5331
  unreachable

bb.ir:                                            ; preds = %bb.ip
  call void @_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.adf), !noalias !5331
  br label %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6region24RegionAssumptionsStorageE6selectCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i

_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6region24RegionAssumptionsStorageE6selectCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i: ; preds = %bb.ir, %bb.ip
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adf, i64 8 ; 3 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adf, i64 24 ; 3 uses
  %i.adk = load i64, ptr %i.adj, align 8, !alias.scope !5774, !noalias !5779, !noundef !18
  %i.adl = icmp eq i64 %i.adk, 0
  br i1 %i.adl, label %bb.is, label %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2T_11generic_arg10GenericArgEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5n_13InternedSliceNtNtB2T_6region24RegionAssumptionsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i, !prof !116

bb.is:                                            ; preds = %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6region24RegionAssumptionsStorageE6selectCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i
  %i.adm = invoke { i64, i64 } @_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2T_11generic_arg10GenericArgEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE14reserve_rehashNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5v_13InternedSliceNtNtB2T_6region24RegionAssumptionsStorageE21from_header_and_slices_0EB2V_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.adi, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @_RNvNvXsQ_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB7_24RegionAssumptionsStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, i1 noundef zeroext true) #58
          to label %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2T_11generic_arg10GenericArgEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5n_13InternedSliceNtNtB2T_6region24RegionAssumptionsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i unwind label %.body.i.i324.i.i, !noalias !5331 ; 0 uses

_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2T_11generic_arg10GenericArgEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5n_13InternedSliceNtNtB2T_6region24RegionAssumptionsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i: ; preds = %bb.is, %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6region24RegionAssumptionsStorageE6selectCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i
  %.val.i.i.i299.i.i = load ptr, ptr %i.adi, align 8, !alias.scope !5781, !noalias !5779, !nonnull !18, !noundef !18 ; 5 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adf, i64 16 ; 2 uses
  %.val5.i.i.i300.i.i = load i64, ptr %i.adn, align 8, !alias.scope !5781, !noalias !5779, !noundef !18 ; 4 uses
  br label %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2T_11generic_arg10GenericArgEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5n_13InternedSliceNtNtB2T_6region24RegionAssumptionsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.split.us.i.i.i.i.i

_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2T_11generic_arg10GenericArgEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5n_13InternedSliceNtNtB2T_6region24RegionAssumptionsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.split.us.i.i.i.i.i: ; preds = %bb.iv, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2T_11generic_arg10GenericArgEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5n_13InternedSliceNtNtB2T_6region24RegionAssumptionsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i
  %.pn.i.us.i.i.i301.i.i = phi i64 [ %i.aec, %bb.iv ], [ 0, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2T_11generic_arg10GenericArgEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5n_13InternedSliceNtNtB2T_6region24RegionAssumptionsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i ]
  %.sroa.4.0.i.us.i.i.i302.i.i = phi i64 [ %.sroa.4.1.i.us.i.i.i320.i.i, %bb.iv ], [ undef, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2T_11generic_arg10GenericArgEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5n_13InternedSliceNtNtB2T_6region24RegionAssumptionsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i ]
  %.sroa.01.0.i.us.i.i.i303.i.i = phi i64 [ %.sroa.01.1.i.us.i.i.i321.i.i, %bb.iv ], [ 0, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2T_11generic_arg10GenericArgEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5n_13InternedSliceNtNtB2T_6region24RegionAssumptionsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i ]
  %i.ado = phi i64 [ %i.aeb, %bb.iv ], [ 0, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2T_11generic_arg10GenericArgEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5n_13InternedSliceNtNtB2T_6region24RegionAssumptionsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i ]
  %.sroa.0.017.i.us.i.i.i304.i.i = and i64 %.pn.i.us.i.i.i301.i.i, %.val5.i.i.i300.i.i ; 5 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %.val.i.i.i299.i.i, i64 %.sroa.0.017.i.us.i.i.i304.i.i
  %.sroa.0.0.copyload.i18.i.us.i.i.i305.i.i = load <16 x i8>, ptr %i.adp, align 1, !noalias !5782 ; 3 uses
  %i.adq = icmp eq <16 x i8> %.sroa.0.0.copyload.i18.i.us.i.i.i305.i.i, zeroinitializer
  %i.adr = bitcast <16 x i1> %i.adq to i16        ; 4 uses
  %.not.i17.us.i.i.i306.i.i = icmp eq i16 %i.adr, 0
  br i1 %.not.i17.us.i.i.i306.i.i, label %._crit_edge.split.us.us.i.i.i316.i.i, label %.lr.ph.us.i.i.i307.i.i

._crit_edge.split.us.us.i.i.i316.i.i:             ; preds = %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2V_11generic_arg10GenericArgEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5H_13InternedSliceNtNtB2V_6region24RegionAssumptionsStorageE21from_header_and_slice0NCB5E_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.us.us.i.i.i.i.i, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2T_11generic_arg10GenericArgEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5n_13InternedSliceNtNtB2T_6region24RegionAssumptionsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.split.us.i.i.i.i.i
  %.not11.i.us.i.i.i317.i.i = icmp eq i64 %.sroa.01.0.i.us.i.i.i303.i.i, 1
  br i1 %.not11.i.us.i.i.i317.i.i, label %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.us.i.i.i319.i.i, label %bb.it

bb.it:                                            ; preds = %._crit_edge.split.us.us.i.i.i316.i.i
  %i.ads = icmp slt <16 x i8> %.sroa.0.0.copyload.i18.i.us.i.i.i305.i.i, zeroinitializer
  %i.adt = bitcast <16 x i1> %i.ads to i16        ; 2 uses
  %.not.i.i.us.i.i.i318.i.i = icmp eq i16 %i.adt, 0
  br i1 %.not.i.i.us.i.i.i318.i.i, label %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.us.i.i.i319.i.i, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.adu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.adt, i1 true)
  %i.adv = zext nneg i16 %i.adu to i64
  %i.adw = add i64 %.sroa.0.017.i.us.i.i.i304.i.i, %i.adv
  %i.adx = and i64 %i.adw, %.val5.i.i.i300.i.i
  br label %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.us.i.i.i319.i.i

_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.us.i.i.i319.i.i: ; preds = %bb.iu, %bb.it, %._crit_edge.split.us.us.i.i.i316.i.i
  %.sroa.4.1.i.us.i.i.i320.i.i = phi i64 [ %.sroa.4.0.i.us.i.i.i302.i.i, %._crit_edge.split.us.us.i.i.i316.i.i ], [ %i.adx, %bb.iu ], [ undef, %bb.it ] ; 3 uses
  %.sroa.01.1.i.us.i.i.i321.i.i = phi i64 [ 1, %._crit_edge.split.us.us.i.i.i316.i.i ], [ 1, %bb.iu ], [ 0, %bb.it ]
  %i.ady = icmp eq <16 x i8> %.sroa.0.0.copyload.i18.i.us.i.i.i305.i.i, splat (i8 -1)
  %i.adz = bitcast <16 x i1> %i.ady to i16
  %i.aea = icmp eq i16 %i.adz, 0
  br i1 %i.aea, label %bb.iv, label %.split.us.i.i.i322.i.i

bb.iv:                                            ; preds = %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.us.i.i.i319.i.i
  %i.aeb = add i64 %i.ado, 16                     ; 2 uses
  %i.aec = add i64 %i.aeb, %.sroa.0.017.i.us.i.i.i304.i.i
  br label %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2T_11generic_arg10GenericArgEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5n_13InternedSliceNtNtB2T_6region24RegionAssumptionsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.split.us.i.i.i.i.i

.lr.ph.us.i.i.i307.i.i:                           ; preds = %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2T_11generic_arg10GenericArgEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5n_13InternedSliceNtNtB2T_6region24RegionAssumptionsStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.split.us.i.i.i.i.i
  %i.aed = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.adr, i1 true)
  %i.aee = zext nneg i16 %i.aed to i64
  %i.aef = add i64 %.sroa.0.017.i.us.i.i.i304.i.i, %i.aee
  %i.aeg = and i64 %i.aef, %.val5.i.i.i300.i.i
  %i.aeh = sub nsw i64 0, %i.aeg
  %i.aei = getelementptr inbounds [8 x i8], ptr %.val.i.i.i299.i.i, i64 %i.aeh
  %i.aej = getelementptr inbounds i8, ptr %i.aei, i64 -8
  %.val3.i.us26.us.i.i.i308.i.i = load ptr, ptr %i.aej, align 8, !noalias !5785, !nonnull !18, !noundef !18 ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %.val3.i.us26.us.i.i.i308.i.i, i64 8
  %i.ael = load i64, ptr %i.aek, align 8, !noalias !5785, !noundef !18
  %i.aem = icmp eq i64 %i.ael, 0
  br i1 %i.aem, label %.loopexit.i.i311.i.i, label %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2V_11generic_arg10GenericArgEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5H_13InternedSliceNtNtB2V_6region24RegionAssumptionsStorageE21from_header_and_slice0NCB5E_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.us.us.preheader.i.i.i.i.i

_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2V_11generic_arg10GenericArgEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5H_13InternedSliceNtNtB2V_6region24RegionAssumptionsStorageE21from_header_and_slice0NCB5E_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.us.us.preheader.i.i.i.i.i: ; preds = %.lr.ph.us.i.i.i307.i.i
  %i.aen = add i16 %i.adr, -1
  %i.aeo = and i16 %i.aen, %i.adr
  br label %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2V_11generic_arg10GenericArgEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5H_13InternedSliceNtNtB2V_6region24RegionAssumptionsStorageE21from_header_and_slice0NCB5E_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.us.us.i.i.i.i.i

bb.iw:                                            ; preds = %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2V_11generic_arg10GenericArgEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5H_13InternedSliceNtNtB2V_6region24RegionAssumptionsStorageE21from_header_and_slice0NCB5E_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.us.us.i.i.i.i.i
  %i.aep = add i16 %i.afb, -2
  %i.aeq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.afb, i1 true)
  %i.aer = zext nneg i16 %i.aeq to i64
  %i.aes = and i16 %i.aep, %i.afb
  %i.aet = add i64 %.sroa.0.017.i.us.i.i.i304.i.i, %i.aer
  %i.aeu = and i64 %i.aet, %.val5.i.i.i300.i.i
  %i.aev = sub nsw i64 0, %i.aeu
  %i.aew = getelementptr inbounds [8 x i8], ptr %.val.i.i.i299.i.i, i64 %i.aev
  %i.aex = getelementptr inbounds i8, ptr %i.aew, i64 -8
  %.val3.i.us.us.i.i.i310.i.i = load ptr, ptr %i.aex, align 8, !noalias !5785, !nonnull !18, !noundef !18 ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %.val3.i.us.us.i.i.i310.i.i, i64 8
  %i.aez = load i64, ptr %i.aey, align 8, !noalias !5785, !noundef !18
  %i.afa = icmp eq i64 %i.aez, 0
  br i1 %i.afa, label %.loopexit.i.i311.i.i, label %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2V_11generic_arg10GenericArgEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5H_13InternedSliceNtNtB2V_6region24RegionAssumptionsStorageE21from_header_and_slice0NCB5E_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.us.us.i.i.i.i.i

_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2V_11generic_arg10GenericArgEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5H_13InternedSliceNtNtB2V_6region24RegionAssumptionsStorageE21from_header_and_slice0NCB5E_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.us.us.i.i.i.i.i: ; preds = %bb.iw, %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2V_11generic_arg10GenericArgEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5H_13InternedSliceNtNtB2V_6region24RegionAssumptionsStorageE21from_header_and_slice0NCB5E_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.us.us.preheader.i.i.i.i.i
  %i.afb = phi i16 [ %i.aes, %bb.iw ], [ %i.aeo, %_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2V_11generic_arg10GenericArgEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB5H_13InternedSliceNtNtB2V_6region24RegionAssumptionsStorageE21from_header_and_slice0NCB5E_s_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.us.us.preheader.i.i.i.i.i ] ; 4 uses
  %.not.i.us.us.i.i.i309.i.i = icmp eq i16 %i.afb, 0
  br i1 %.not.i.us.us.i.i.i309.i.i, label %._crit_edge.split.us.us.i.i.i316.i.i, label %bb.iw

.split.us.i.i.i322.i.i:                           ; preds = %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.us.i.i.i319.i.i
  %i.afc = getelementptr inbounds nuw i8, ptr %.val.i.i.i299.i.i, i64 %.sroa.4.1.i.us.i.i.i320.i.i
  %i.afd = load i8, ptr %i.afc, align 1, !noalias !5779, !noundef !18
  %i.afe = icmp sgt i8 %i.afd, -1
  br i1 %i.afe, label %bb.ix, label %bb.iz

bb.ix:                                            ; preds = %.split.us.i.i.i322.i.i
  %.val62.i.i.i.i.i327.i.i = load <16 x i8>, ptr %.val.i.i.i299.i.i, align 16, !noalias !5779
  %i.aff = icmp slt <16 x i8> %.val62.i.i.i.i.i327.i.i, zeroinitializer
  %i.afg = bitcast <16 x i1> %i.aff to i16        ; 2 uses
  %.not.i22.i.i.i.i328.i.i = icmp ne i16 %i.afg, 0
  %i.afh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.afg, i1 true)
  %i.afi = zext nneg i16 %i.afh to i64
  call void @llvm.assume(i1 %.not.i22.i.i.i.i328.i.i)
  br label %bb.iz

.body.i.i324.i.i:                                 ; preds = %bb.ja, %bb.is
  %i.afj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afk = cmpxchg ptr %i.adf, i64 -4, i64 0 release monotonic, align 8, !noalias !5331
  %.sroa.18.0.in.i.i.i.i.i.i325.i.i = extractvalue { i64, i1 } %i.afk, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i325.i.i, label %common.resume.i.i, label %bb.iy, !prof !17

bb.iy:                                            ; preds = %.body.i.i324.i.i
  invoke void @_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.adf)
          to label %common.resume.i.i unwind label %bb.jd, !noalias !5331

bb.iz:                                            ; preds = %bb.ix, %.split.us.i.i.i322.i.i
  %.sroa.3.0.i.ph.i.i.i323.i.i = phi i64 [ %i.afi, %bb.ix ], [ %.sroa.4.1.i.us.i.i.i320.i.i, %.split.us.i.i.i322.i.i ] ; 3 uses
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !5331
  %i.afl = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #59, !noalias !5331 ; 4 uses
  %i.afm = icmp eq ptr %i.afl, null
  br i1 %i.afm, label %bb.ja, label %bb.jc

bb.ja:                                            ; preds = %bb.iz
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #57
          to label %.noexc10.i.i326.i.i unwind label %.body.i.i324.i.i, !noalias !5331

.noexc10.i.i326.i.i:                              ; preds = %bb.ja
  unreachable

.loopexit.i.i311.i.i:                             ; preds = %.lr.ph.us.i.i.i307.i.i, %bb.iw, %bb.jc
  %i.afn = phi ptr [ %i.afl, %bb.jc ], [ %.val3.i.us.us.i.i.i310.i.i, %bb.iw ], [ %.val3.i.us26.us.i.i.i308.i.i, %.lr.ph.us.i.i.i307.i.i ] ; 2 uses
  %i.afo = cmpxchg ptr %i.adf, i64 -4, i64 0 release monotonic, align 8, !noalias !5331
  %.sroa.18.0.in.i.i.i.i11.i.i315.i.i = extractvalue { i64, i1 } %i.afo, 1
  br i1 %.sroa.18.0.in.i.i.i.i11.i.i315.i.i, label %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6region24RegionAssumptionsStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i, label %bb.jb, !prof !17

bb.jb:                                            ; preds = %.loopexit.i.i311.i.i
  call void @_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.adf), !noalias !5331
  br label %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6region24RegionAssumptionsStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i

bb.jc:                                            ; preds = %bb.iz
  store <2 x i64> <i64 1, i64 0>, ptr %i.afl, align 8, !noalias !5331
  call void @llvm.experimental.noalias.scope.decl(metadata !5788)
  %i.afp = load ptr, ptr %i.adi, align 8, !alias.scope !5788, !noalias !5331, !nonnull !18, !noundef !18 ; 3 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 %.sroa.3.0.i.ph.i.i.i323.i.i ; 2 uses
  %i.afr = load i8, ptr %i.afq, align 1, !noalias !5791, !noundef !18
  %i.afs = and i8 %i.afr, 1
  %i.aft = zext nneg i8 %i.afs to i64
  %i.afu = add i64 %.sroa.3.0.i.ph.i.i.i323.i.i, -16
  %i.afv = load i64, ptr %i.adn, align 8, !alias.scope !5788, !noalias !5331, !noundef !18
  %i.afw = and i64 %i.afv, %i.afu
  store i8 0, ptr %i.afq, align 1, !noalias !5791
  %i.afx = getelementptr i8, ptr %i.afp, i64 %i.afw
  %i.afy = getelementptr i8, ptr %i.afx, i64 16
  store i8 0, ptr %i.afy, align 1, !noalias !5791
  %i.afz = load <2 x i64>, ptr %i.adj, align 8, !alias.scope !5788, !noalias !5331
  %i.aga = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.aft, i64 0
  %i.agb = sub <2 x i64> %i.afz, %i.aga
  store <2 x i64> %i.agb, ptr %i.adj, align 8, !alias.scope !5788, !noalias !5331
  %i.agc = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i323.i.i
  %i.agd = getelementptr inbounds [8 x i8], ptr %i.afp, i64 %i.agc
  %i.age = getelementptr inbounds i8, ptr %i.agd, i64 -8
  store ptr %i.afl, ptr %i.age, align 8, !noalias !5791
  br label %.loopexit.i.i311.i.i

bb.jd:                                            ; preds = %bb.iy
  %i.agf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5331
  unreachable

_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6region24RegionAssumptionsStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i: ; preds = %bb.jb, %.loopexit.i.i311.i.i
  %i.agg = atomicrmw add ptr %i.afn, i64 1 monotonic, align 8, !noalias !5331
  %i.agh = icmp slt i64 %i.agg, 0
  br i1 %i.agh, label %bb.je, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0sa_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i, !prof !116

bb.je:                                            ; preds = %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6region24RegionAssumptionsStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
  call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57, !noalias !5331
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0sa_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6region24RegionAssumptionsStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
  %i.agi = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts13ConstsStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #53, !noalias !5331 ; 2 uses
  %i.agj = atomicrmw add ptr %i.agi, i64 1 monotonic, align 8, !noalias !5331
  %i.agk = icmp slt i64 %i.agj, 0
  br i1 %i.agk, label %bb.jf, label %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0sc_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i, !prof !116

bb.jf:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0sa_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57, !noalias !5331
  unreachable

_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0sc_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0sa_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %i.agl = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsU_NtCs8K4cjrcxBsw_6hir_ty3mirNtB7_17ProjectionStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, i64 24) acquire, align 8, !noalias !5331
  %i.agm = icmp eq i32 %i.agl, 0
  br i1 %i.agm, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB2d_5LocalEEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB57_18InternSliceStorageNtB2d_17ProjectionStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i, label %bb.jg, !prof !17

bb.jg:                                            ; preds = %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0sc_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %i.agn = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsU_NtCs8K4cjrcxBsw_6hir_ty3mirNtB7_17ProjectionStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, i64 24) acquire, align 8, !noalias !5792
  %i.ago = icmp eq i32 %i.agn, 0
  br i1 %i.ago, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB2d_5LocalEEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB57_18InternSliceStorageNtB2d_17ProjectionStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i, label %bb.jh, !prof !17

bb.jh:                                            ; preds = %bb.jg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5792
  store ptr @_RNvNvXsU_NtCs8K4cjrcxBsw_6hir_ty3mirNtB7_17ProjectionStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, ptr %i.m, align 8, !noalias !5792
  %i.agp = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.a, ptr %i.agp, align 8, !noalias !5792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5792
  store ptr %i.m, ptr %i.l, align 8, !noalias !5792
  call void @_RNvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvXsU_NtCs8K4cjrcxBsw_6hir_ty3mirNtB7_17ProjectionStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, i64 24), i1 noundef zeroext true, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12), !noalias !5331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5792
  br label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB2d_5LocalEEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB57_18InternSliceStorageNtB2d_17ProjectionStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i

_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB2d_5LocalEEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB57_18InternSliceStorageNtB2d_17ProjectionStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i: ; preds = %bb.jh, %bb.jg, %_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0sc_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %i.agq = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsU_NtCs8K4cjrcxBsw_6hir_ty3mirNtB7_17ProjectionStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, i64 8), align 8, !noalias !5331, !noundef !18
  %.not.i.i.i330.i.i = icmp eq i64 %i.agq, 0
  br i1 %.not.i.i.i330.i.i, label %bb.jj, label %bb.ji

bb.ji:                                            ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB2d_5LocalEEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB57_18InternSliceStorageNtB2d_17ProjectionStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i
  %i.agr = load ptr, ptr @_RNvNvXsU_NtCs8K4cjrcxBsw_6hir_ty3mirNtB7_17ProjectionStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, align 8, !noalias !5331, !nonnull !18, !noundef !18 ; 9 uses
  %i.ags = cmpxchg weak ptr %i.agr, i64 0, i64 -4 acquire monotonic, align 8, !noalias !5331
  %i.agt = extractvalue { i64, i1 } %i.ags, 1
  br i1 %i.agt, label %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtCs8K4cjrcxBsw_6hir_ty3mir17ProjectionStorageE6selectCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i, label %bb.jk, !prof !17

bb.jj:                                            ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB2d_5LocalEEEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB57_18InternSliceStorageNtB2d_17ProjectionStorageE3get0E0zECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #56, !noalias !5331
  unreachable

bb.jk:                                            ; preds = %bb.ji
  call void @_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.agr), !noalias !5331
  br label %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtCs8K4cjrcxBsw_6hir_ty3mir17ProjectionStorageE6selectCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i

_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtCs8K4cjrcxBsw_6hir_ty3mir17ProjectionStorageE6selectCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i: ; preds = %bb.jk, %bb.ji
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agr, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5331
  store ptr %i.a, ptr %i.o, align 8, !noalias !5331
  %i.agv = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.agv, align 8, !noalias !5331
  %i.agw = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %i.agw, align 8, !noalias !5331
  call void @llvm.experimental.noalias.scope.decl(metadata !5795)
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agr, i64 24 ; 3 uses
  %i.agy = load i64, ptr %i.agx, align 8, !alias.scope !5798, !noalias !5801, !noundef !18
  %i.agz = icmp eq i64 %i.agy, 0
  br i1 %i.agz, label %bb.jl, label %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1L_5LocalEEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4b_13InternedSliceNtB1L_17ProjectionStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i, !prof !116

bb.jl:                                            ; preds = %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtCs8K4cjrcxBsw_6hir_ty3mir17ProjectionStorageE6selectCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i
  %i.aha = invoke { i64, i64 } @_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1L_5LocalEEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE14reserve_rehashNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4j_13InternedSliceNtB1L_17ProjectionStorageE21from_header_and_slices_0EB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.agu, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @_RNvNvXsU_NtCs8K4cjrcxBsw_6hir_ty3mirNtB7_17ProjectionStorageNtNtCs39E2wp1vf7X_6intern12intern_slice15SliceInternable7storage7STORAGE, i1 noundef zeroext true) #58
          to label %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1L_5LocalEEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4b_13InternedSliceNtB1L_17ProjectionStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i unwind label %.body.i.i350.i.i, !noalias !5331 ; 0 uses

_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1L_5LocalEEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4b_13InternedSliceNtB1L_17ProjectionStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i: ; preds = %bb.jl, %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtCs8K4cjrcxBsw_6hir_ty3mir17ProjectionStorageE6selectCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5803
  store ptr %i.o, ptr %i.n, align 8, !noalias !5803
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.agu, ptr %i.ahb, align 8, !noalias !5803
  %.val.i.i.i331.i.i = load ptr, ptr %i.agu, align 8, !alias.scope !5795, !noalias !5801, !nonnull !18, !noundef !18 ; 4 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agr, i64 16 ; 2 uses
  %.val5.i.i.i332.i.i = load i64, ptr %i.ahc, align 8, !alias.scope !5795, !noalias !5801, !noundef !18 ; 3 uses
  br label %bb.jm

bb.jm:                                            ; preds = %bb.js, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1L_5LocalEEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4b_13InternedSliceNtB1L_17ProjectionStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i
  %.pn.i.i.i.i333.i.i = phi i64 [ 0, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1L_5LocalEEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4b_13InternedSliceNtB1L_17ProjectionStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i ], [ %i.ahy, %bb.js ]
  %.sroa.4.0.i.i.i.i334.i.i = phi i64 [ undef, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1L_5LocalEEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4b_13InternedSliceNtB1L_17ProjectionStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i ], [ %.sroa.4.1.i.i.i.i347.i.i, %bb.js ]
  %.sroa.01.0.i.i.i.i335.i.i = phi i64 [ 0, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1L_5LocalEEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4b_13InternedSliceNtB1L_17ProjectionStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i ], [ %.sroa.01.1.i.i.i.i348.i.i, %bb.js ]
  %i.ahd = phi i64 [ 0, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1L_5LocalEEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4b_13InternedSliceNtB1L_17ProjectionStorageE21from_header_and_slices_0ECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i ], [ %i.ahx, %bb.js ]
  %.sroa.0.017.i.i.i.i336.i.i = and i64 %.pn.i.i.i.i333.i.i, %.val5.i.i.i332.i.i ; 4 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %.val.i.i.i331.i.i, i64 %.sroa.0.017.i.i.i.i336.i.i
  %.sroa.0.0.copyload.i18.i.i.i.i337.i.i = load <16 x i8>, ptr %i.ahe, align 1, !noalias !5804 ; 3 uses
  %i.ahf = icmp eq <16 x i8> %.sroa.0.0.copyload.i18.i.i.i.i337.i.i, zeroinitializer
  %i.ahg = bitcast <16 x i1> %i.ahf to i16
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jo, %bb.jm
  %.sroa.05.0.i.i.i.i338.i.i = phi i16 [ %i.ahg, %bb.jm ], [ %i.ahk, %bb.jo ] ; 4 uses
  %.not.i.i.i.i339.i.i = icmp eq i16 %.sroa.05.0.i.i.i.i338.i.i, 0
  br i1 %.not.i.i.i.i339.i.i, label %bb.jp, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.ahh = add i16 %.sroa.05.0.i.i.i.i338.i.i, -1
  %i.ahi = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i.i.i.i338.i.i, i1 true)
  %i.ahj = zext nneg i16 %i.ahi to i64
  %i.ahk = and i16 %i.ahh, %.sroa.05.0.i.i.i.i338.i.i
  %i.ahl = add i64 %.sroa.0.017.i.i.i.i336.i.i, %i.ahj
  %i.ahm = and i64 %i.ahl, %.val5.i.i.i332.i.i    ; 2 uses
  %i.ahn = call fastcc noundef zeroext i1 @_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1N_5LocalEEEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB4v_13InternedSliceNtB1N_17ProjectionStorageE21from_header_and_slice0NCB4s_s_0E0Cs6u1mgJOKDyY_13rust_analyzer(ptr noundef nonnull %i.n, i64 noundef %i.ahm) #53, !noalias !5331, !inline_history !5682
  br i1 %i.ahn, label %bb.jw, label %bb.jn

bb.jp:                                            ; preds = %bb.jn
  %.not11.i.i.i.i344.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i335.i.i, 1
  br i1 %.not11.i.i.i.i344.i.i, label %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i346.i.i, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.aho = icmp slt <16 x i8> %.sroa.0.0.copyload.i18.i.i.i.i337.i.i, zeroinitializer
  %i.ahp = bitcast <16 x i1> %i.aho to i16        ; 2 uses
  %.not.i.i.i.i.i345.i.i = icmp eq i16 %i.ahp, 0
  br i1 %.not.i.i.i.i.i345.i.i, label %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i346.i.i, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.ahq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ahp, i1 true)
  %i.ahr = zext nneg i16 %i.ahq to i64
  %i.ahs = add i64 %.sroa.0.017.i.i.i.i336.i.i, %i.ahr
  %i.aht = and i64 %i.ahs, %.val5.i.i.i332.i.i
  br label %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i346.i.i

_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i346.i.i: ; preds = %bb.jr, %bb.jq, %bb.jp
  %.sroa.4.1.i.i.i.i347.i.i = phi i64 [ %.sroa.4.0.i.i.i.i334.i.i, %bb.jp ], [ %i.aht, %bb.jr ], [ undef, %bb.jq ] ; 3 uses
  %.sroa.01.1.i.i.i.i348.i.i = phi i64 [ 1, %bb.jp ], [ 1, %bb.jr ], [ 0, %bb.jq ]
  %i.ahu = icmp eq <16 x i8> %.sroa.0.0.copyload.i18.i.i.i.i337.i.i, splat (i8 -1)
  %i.ahv = bitcast <16 x i1> %i.ahu to i16
  %i.ahw = icmp eq i16 %i.ahv, 0
  br i1 %i.ahw, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i346.i.i
  %i.ahx = add i64 %i.ahd, 16                     ; 2 uses
  %i.ahy = add i64 %i.ahx, %.sroa.0.017.i.i.i.i336.i.i
  br label %bb.jm

bb.jt:                                            ; preds = %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i346.i.i
  %i.ahz = getelementptr inbounds nuw i8, ptr %.val.i.i.i331.i.i, i64 %.sroa.4.1.i.i.i.i347.i.i
  %i.aia = load i8, ptr %i.ahz, align 1, !noalias !5331, !noundef !18
  %i.aib = icmp sgt i8 %i.aia, -1
  br i1 %i.aib, label %bb.ju, label %bb.jx

bb.ju:                                            ; preds = %bb.jt
  %.val62.i.i.i.i.i353.i.i = load <16 x i8>, ptr %.val.i.i.i331.i.i, align 16, !noalias !5331
  %i.aic = icmp slt <16 x i8> %.val62.i.i.i.i.i353.i.i, zeroinitializer
  %i.aid = bitcast <16 x i1> %i.aic to i16        ; 2 uses
  %.not.i22.i.i.i.i354.i.i = icmp ne i16 %i.aid, 0
  %i.aie = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aid, i1 true)
  %i.aif = zext nneg i16 %i.aie to i64
  call void @llvm.assume(i1 %.not.i22.i.i.i.i354.i.i)
  br label %bb.jx

.body.i.i350.i.i:                                 ; preds = %bb.jy, %bb.jl
  %i.aig = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aih = cmpxchg ptr %i.agr, i64 -4, i64 0 release monotonic, align 8, !noalias !5331
  %.sroa.18.0.in.i.i.i.i.i.i351.i.i = extractvalue { i64, i1 } %i.aih, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i351.i.i, label %common.resume.i.i, label %bb.jv, !prof !17

bb.jv:                                            ; preds = %.body.i.i350.i.i
  invoke void @_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.agr)
          to label %common.resume.i.i unwind label %bb.kc, !noalias !5331

bb.jw:                                            ; preds = %bb.jo
  %i.aii = sub nsw i64 0, %i.ahm
  %i.aij = getelementptr inbounds [8 x i8], ptr %.val.i.i.i331.i.i, i64 %i.aii
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5331
  %.phi.trans.insert.i.i340.i.i = getelementptr inbounds i8, ptr %i.aij, i64 -8
  %.pre.i.i341.i.i = load ptr, ptr %.phi.trans.insert.i.i340.i.i, align 8, !noalias !5331
  br label %bb.jz

bb.jx:                                            ; preds = %bb.ju, %bb.jt
  %.sroa.3.0.i.i.ph.i.i349.i.i = phi i64 [ %i.aif, %bb.ju ], [ %.sroa.4.1.i.i.i.i347.i.i, %bb.jt ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5331
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !5331
  %i.aik = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #59, !noalias !5331 ; 4 uses
  %i.ail = icmp eq ptr %i.aik, null
  br i1 %i.ail, label %bb.jy, label %bb.kb

bb.jy:                                            ; preds = %bb.jx
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #57
          to label %.noexc10.i.i352.i.i unwind label %.body.i.i350.i.i, !noalias !5331

.noexc10.i.i352.i.i:                              ; preds = %bb.jy
  unreachable

bb.jz:                                            ; preds = %bb.kb, %bb.jw
  %i.aim = phi ptr [ %.pre.i.i341.i.i, %bb.jw ], [ %i.aik, %bb.kb ] ; 2 uses
  %i.ain = cmpxchg ptr %i.agr, i64 -4, i64 0 release monotonic, align 8, !noalias !5331
  %.sroa.18.0.in.i.i.i.i11.i.i343.i.i = extractvalue { i64, i1 } %i.ain, 1
  br i1 %.sroa.18.0.in.i.i.i.i11.i.i343.i.i, label %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtCs8K4cjrcxBsw_6hir_ty3mir17ProjectionStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i, label %bb.ka, !prof !17

bb.ka:                                            ; preds = %bb.jz
  call void @_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.agr), !noalias !5331
  br label %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtCs8K4cjrcxBsw_6hir_ty3mir17ProjectionStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i

bb.kb:                                            ; preds = %bb.jx
  store <2 x i64> <i64 1, i64 0>, ptr %i.aik, align 8, !noalias !5331
  call void @llvm.experimental.noalias.scope.decl(metadata !5807)
  %i.aio = load ptr, ptr %i.agu, align 8, !alias.scope !5807, !noalias !5331, !nonnull !18, !noundef !18 ; 3 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 %.sroa.3.0.i.i.ph.i.i349.i.i ; 2 uses
  %i.aiq = load i8, ptr %i.aip, align 1, !noalias !5810, !noundef !18
  %i.air = and i8 %i.aiq, 1
  %i.ais = zext nneg i8 %i.air to i64
  %i.ait = add i64 %.sroa.3.0.i.i.ph.i.i349.i.i, -16
  %i.aiu = load i64, ptr %i.ahc, align 8, !alias.scope !5807, !noalias !5331, !noundef !18
  %i.aiv = and i64 %i.aiu, %i.ait
  store i8 0, ptr %i.aip, align 1, !noalias !5810
  %i.aiw = getelementptr i8, ptr %i.aio, i64 %i.aiv
  %i.aix = getelementptr i8, ptr %i.aiw, i64 16
  store i8 0, ptr %i.aix, align 1, !noalias !5810
  %i.aiy = load <2 x i64>, ptr %i.agx, align 8, !alias.scope !5807, !noalias !5331
  %i.aiz = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ais, i64 0
  %i.aja = sub <2 x i64> %i.aiy, %i.aiz
  store <2 x i64> %i.aja, ptr %i.agx, align 8, !alias.scope !5807, !noalias !5331
  %i.ajb = sub nsw i64 0, %.sroa.3.0.i.i.ph.i.i349.i.i
  %i.ajc = getelementptr inbounds [8 x i8], ptr %i.aio, i64 %i.ajb
  %i.ajd = getelementptr inbounds i8, ptr %i.ajc, i64 -8
  store ptr %i.aik, ptr %i.ajd, align 8, !noalias !5810
  br label %bb.jz

bb.kc:                                            ; preds = %bb.jv
  %i.aje = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !5331
  unreachable

_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtCs8K4cjrcxBsw_6hir_ty3mir17ProjectionStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i: ; preds = %bb.ka, %bb.jz
  %i.ajf = atomicrmw add ptr %i.aim, i64 1 monotonic, align 8, !noalias !5331
  %i.ajg = icmp slt i64 %i.ajf, 0
  br i1 %i.ajg, label %bb.kd, label %_RNCINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB5_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE11get_or_initNCNvBX_13default_types0E0Cs6u1mgJOKDyY_13rust_analyzer.exit, !prof !116

bb.kd:                                            ; preds = %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtCs8K4cjrcxBsw_6hir_ty3mir17ProjectionStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
  call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #57, !noalias !5331
  unreachable

_RNCINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB5_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE11get_or_initNCNvBX_13default_types0E0Cs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtCs8K4cjrcxBsw_6hir_ty3mir17ProjectionStorageE21from_header_and_sliceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
  %i.ajh = call fastcc noundef nonnull ptr @_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s4_0Cs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 1) #53, !noalias !5331
  %i.aji = call fastcc noundef nonnull ptr @_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s4_0Cs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 1) #53, !noalias !5331
  %i.ajj = call fastcc noundef nonnull ptr @_RNCNCNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types0s2_0Cs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @83, i64 noundef 1) #53, !noalias !5331
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.31181)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %.sroa.31181, ptr noundef nonnull align 8 dereferenceable(2048) %.sroa.491.i.i, i64 2048, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.491.i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  store ptr %i.gn, ptr %.8.val, align 8
  %.sroa.4154.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  store ptr %i.fm, ptr %.sroa.4154.0..8.val.sroa_idx, align 8
  %.sroa.5155.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  store ptr %i.gw, ptr %.sroa.5155.0..8.val.sroa_idx, align 8
  %.sroa.6156.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  store ptr %i.hf, ptr %.sroa.6156.0..8.val.sroa_idx, align 8
  %.sroa.7157.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  store ptr %i.ho, ptr %.sroa.7157.0..8.val.sroa_idx, align 8
  %.sroa.8158.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  store ptr %i.hx, ptr %.sroa.8158.0..8.val.sroa_idx, align 8
  %.sroa.9159.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  store ptr %i.ig, ptr %.sroa.9159.0..8.val.sroa_idx, align 8
  %.sroa.10160.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  store ptr %i.ip, ptr %.sroa.10160.0..8.val.sroa_idx, align 8
  %.sroa.11161.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  store ptr %i.iy, ptr %.sroa.11161.0..8.val.sroa_idx, align 8
  %.sroa.12162.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 72
  store ptr %i.jh, ptr %.sroa.12162.0..8.val.sroa_idx, align 8
  %.sroa.13163.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 80
  store ptr %i.jq, ptr %.sroa.13163.0..8.val.sroa_idx, align 8
  %.sroa.14164.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 88
  store ptr %i.jz, ptr %.sroa.14164.0..8.val.sroa_idx, align 8
  %.sroa.15165.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 96
  store ptr %i.ki, ptr %.sroa.15165.0..8.val.sroa_idx, align 8
  %.sroa.16166.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 104
  store ptr %i.kr, ptr %.sroa.16166.0..8.val.sroa_idx, align 8
  %.sroa.17167.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 112
  store ptr %i.la, ptr %.sroa.17167.0..8.val.sroa_idx, align 8
  %.sroa.18168.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 120
  store ptr %i.lj, ptr %.sroa.18168.0..8.val.sroa_idx, align 8
  %.sroa.19169.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  store ptr %i.fd, ptr %.sroa.19169.0..8.val.sroa_idx, align 8
  %.sroa.20170.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 136
  store ptr %i.ls, ptr %.sroa.20170.0..8.val.sroa_idx, align 8
  %.sroa.21171.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 144
  store ptr %i.mb, ptr %.sroa.21171.0..8.val.sroa_idx, align 8
  %.sroa.22172.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 152
  store ptr %i.ej, ptr %.sroa.22172.0..8.val.sroa_idx, align 8
  %.sroa.23173.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 160
  store ptr %i.mk, ptr %.sroa.23173.0..8.val.sroa_idx, align 8
  %.sroa.24174.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 168
  store ptr %i.mt, ptr %.sroa.24174.0..8.val.sroa_idx, align 8
  %.sroa.25175.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 176
  store ptr %i.nc, ptr %.sroa.25175.0..8.val.sroa_idx, align 8
  %.sroa.26176.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 184
  store ptr %i.fv, ptr %.sroa.26176.0..8.val.sroa_idx, align 8
  %.sroa.27177.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 192
  store ptr %i.ge, ptr %.sroa.27177.0..8.val.sroa_idx, align 8
  %.sroa.28178.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 200
  store ptr %i.nl, ptr %.sroa.28178.0..8.val.sroa_idx, align 8
  %.sroa.29179.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 208
  store ptr %i.nu, ptr %.sroa.29179.0..8.val.sroa_idx, align 8
  %.sroa.30180.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 216
  store ptr %i.oc, ptr %.sroa.30180.0..8.val.sroa_idx, align 8
  %.sroa.31181.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %.sroa.31181.0..8.val.sroa_idx, ptr noundef nonnull align 8 dereferenceable(2048) %.sroa.31181, i64 2048, i1 false)
  %.sroa.32182.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 2272
  store ptr %i.oy, ptr %.sroa.32182.0..8.val.sroa_idx, align 8
  %.sroa.33183.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 2280
  store ptr %i.er, ptr %.sroa.33183.0..8.val.sroa_idx, align 8
  %.sroa.34184.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 2288
  store ptr %i.pg, ptr %.sroa.34184.0..8.val.sroa_idx, align 8
  %.sroa.35185.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 2296
  store ptr %i.ez, ptr %.sroa.35185.0..8.val.sroa_idx, align 8
  %.sroa.36186.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 2304
  store ptr %i.po, ptr %.sroa.36186.0..8.val.sroa_idx, align 8
  %.sroa.37187.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 2312
  store ptr %i.pr, ptr %.sroa.37187.0..8.val.sroa_idx, align 8
  %.sroa.38188.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 2320
  store ptr %i.rt, ptr %.sroa.38188.0..8.val.sroa_idx, align 8
  %.sroa.39189.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 2328
  store ptr %i.so, ptr %.sroa.39189.0..8.val.sroa_idx, align 8
  %.sroa.40190.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 2336
  store ptr %i.sp, ptr %.sroa.40190.0..8.val.sroa_idx, align 8
  %.sroa.41191.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 2344
  store ptr %i.vg, ptr %.sroa.41191.0..8.val.sroa_idx, align 8
  %.sroa.42192.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 2352
  store ptr %i.yp, ptr %.sroa.42192.0..8.val.sroa_idx, align 8
  %.sroa.43193.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 2360
  store ptr %i.zk, ptr %.sroa.43193.0..8.val.sroa_idx, align 8
  %.sroa.44194.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 2368
  store ptr %i.acd, ptr %.sroa.44194.0..8.val.sroa_idx, align 8
  %.sroa.45195.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 2376
  store ptr %i.afn, ptr %.sroa.45195.0..8.val.sroa_idx, align 8
  %.sroa.46196.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 2384
  store ptr %i.agi, ptr %.sroa.46196.0..8.val.sroa_idx, align 8
  %.sroa.47197.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 2392
  store ptr %i.aim, ptr %.sroa.47197.0..8.val.sroa_idx, align 8
  %.sroa.48198.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 2400
  store ptr %i.ajh, ptr %.sroa.48198.0..8.val.sroa_idx, align 8
  %.sroa.49199.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 2408
  store ptr %i.aji, ptr %.sroa.49199.0..8.val.sroa_idx, align 8
  %.sroa.50200.0..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.8.val, i64 2416
  store ptr %i.ajj, ptr %.sroa.50200.0..8.val.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.31181)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE10initializeNCINvB1a_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB57_13InternStorageB2N_E3get0E0zE0E0Cs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !18, !align !25, !noundef !18 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !25, !noundef !18 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !116

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef 1024)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #56
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtree15ValTreeInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE10initializeNCINvB1a_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB5q_13InternStorageB2N_E3get0E0zE0E0Cs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !18, !align !25, !noundef !18 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !25, !noundef !18 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !116

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtree15ValTreeInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef 1024)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #56
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB2Y_6ClauseEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE10initializeNCINvB1a_11get_or_initNCNvMsg_NtCs39E2wp1vf7X_6intern12intern_sliceINtB5L_18InternSliceStorageNtB2Y_14ClausesStorageE3get0E0zE0E0Cs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !18, !align !25, !noundef !18 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !25, !noundef !18 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !116

bb.b:                                             ; preds = %bb.a
end_hunk_2
