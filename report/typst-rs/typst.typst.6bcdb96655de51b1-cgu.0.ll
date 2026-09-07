Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst.typst.6bcdb96655de51b1-cgu.0?download=true
inline.NumInlined: 14587
inline.NumDeleted: 6611
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_RNvXsr_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs89doag9UmMt_9toml_edit3key3KeyENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs9fPPV5zPXBl_5typst:bb.a
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !52171
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !52172
  %.idx.i = mul nuw nsw i64 %i.f, 144
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RNvXsr_NtCs3oUPovFnLWP_4core3fmtSNtNtCs89doag9UmMt_9toml_edit3key3KeyNtB5_5Debug3fmtCs9fPPV5zPXBl_5typst.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52173
  store ptr %.sroa.0.05.i.i, ptr %i.a, align 8, !noalias !52173, !captures !117
  %i.j = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @157) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52173
  %i.k = icmp eq ptr %i.i, %i.g
  br i1 %i.k, label %_RNvXsr_NtCs3oUPovFnLWP_4core3fmtSNtNtCs89doag9UmMt_9toml_edit3key3KeyNtB5_5Debug3fmtCs9fPPV5zPXBl_5typst.exit, label %.lr.ph.i.i

_RNvXsr_NtCs3oUPovFnLWP_4core3fmtSNtNtCs89doag9UmMt_9toml_edit3key3KeyNtB5_5Debug3fmtCs9fPPV5zPXBl_5typst.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.l = call noundef zeroext i1 @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !52171
  ret i1 %i.l
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder4util2id2IdENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !52179
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !52180
  %.idx.i = mul nuw nsw i64 %i.f, 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RNvXsr_NtCs3oUPovFnLWP_4core3fmtSNtNtNtCsj1PC5XHMKi0_12clap_builder4util2id2IdNtB5_5Debug3fmtCs9fPPV5zPXBl_5typst.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52181
  store ptr %.sroa.0.05.i.i, ptr %i.a, align 8, !noalias !52181, !captures !117
  %i.j = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @159) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52181
  %i.k = icmp eq ptr %i.i, %i.g
  br i1 %i.k, label %_RNvXsr_NtCs3oUPovFnLWP_4core3fmtSNtNtNtCsj1PC5XHMKi0_12clap_builder4util2id2IdNtB5_5Debug3fmtCs9fPPV5zPXBl_5typst.exit, label %.lr.ph.i.i

_RNvXsr_NtCs3oUPovFnLWP_4core3fmtSNtNtNtCsj1PC5XHMKi0_12clap_builder4util2id2IdNtB5_5Debug3fmtCs9fPPV5zPXBl_5typst.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.l = call noundef zeroext i1 @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !52179
  ret i1 %i.l
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsj1PC5XHMKi0_12clap_builder5error7context11ContextKindENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !52187
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !52188
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  %i.h = icmp samesign eq i64 %i.f, 0
  br i1 %i.h, label %_RNvXsr_NtCs3oUPovFnLWP_4core3fmtSNtNtNtCsj1PC5XHMKi0_12clap_builder5error7context11ContextKindNtB5_5Debug3fmtCs9fPPV5zPXBl_5typst.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52189
  store ptr %.sroa.0.05.i.i, ptr %i.a, align 8, !noalias !52189, !captures !117
  %i.j = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @161) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52189
  %i.k = icmp eq ptr %i.i, %i.g
  br i1 %i.k, label %_RNvXsr_NtCs3oUPovFnLWP_4core3fmtSNtNtNtCsj1PC5XHMKi0_12clap_builder5error7context11ContextKindNtB5_5Debug3fmtCs9fPPV5zPXBl_5typst.exit, label %.lr.ph.i.i

_RNvXsr_NtCs3oUPovFnLWP_4core3fmtSNtNtNtCsj1PC5XHMKi0_12clap_builder5error7context11ContextKindNtB5_5Debug3fmtCs9fPPV5zPXBl_5typst.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.l = call noundef zeroext i1 @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !52187
  ret i1 %i.l
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !52195
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !52196
  %.idx.i = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RNvXsr_NtCs3oUPovFnLWP_4core3fmtSjNtB5_5Debug3fmtCs9fPPV5zPXBl_5typst.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52197
  store ptr %.sroa.0.05.i.i, ptr %i.a, align 8, !noalias !52197, !captures !117
  %i.j = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @165) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52197
  %i.k = icmp eq ptr %i.i, %i.g
  br i1 %i.k, label %_RNvXsr_NtCs3oUPovFnLWP_4core3fmtSjNtB5_5Debug3fmtCs9fPPV5zPXBl_5typst.exit, label %.lr.ph.i.i

_RNvXsr_NtCs3oUPovFnLWP_4core3fmtSjNtB5_5Debug3fmtCs9fPPV5zPXBl_5typst.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.l = call noundef zeroext i1 @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !52195
  ret i1 %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !28, !noundef !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !28
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 8 uses
  %i.b = alloca [88 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr inttoptr (i64 16 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store i64 0, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52224)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !52225
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52226)
  store i64 0, ptr %i.b, align 8, !alias.scope !52227, !noalias !52228
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !52227, !noalias !52228
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.56.0..sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(72) %0, i64 72, i1 false), !alias.scope !52229, !noalias !52224
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef 1)
          to label %bb.b unwind label %bb.i, !noalias !52230

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false), !noalias !52225
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !52231, !noalias !52232, !noundef !28 ; 4 uses
  %.promoted.i = load i64, ptr %i.a, align 8, !alias.scope !52231, !noalias !52232 ; 3 uses
  %.not.i.i22.i = icmp eq i64 %i.f, %.promoted.i
  br i1 %.not.i.i22.i, label %.loopexit, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.lr.ph.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.lr.ph.i: ; preds = %bb.b
  %.sroa.5.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.5.0.copyload8.i = load i8, ptr %.sroa.5.0..sroa_idx7.i, align 8, !alias.scope !52233, !noalias !52225 ; 2 uses
  %.not.i = icmp eq i8 %.sroa.5.0.copyload8.i, 2
  br i1 %.not.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.lr.ph.split.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.lr.ph.split.i: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.lr.ph.i
  %i.g = load ptr, ptr %i.c, align 8, !alias.scope !52224, !noalias !52230, !nonnull !28
  %.promoted26.i = load i64, ptr %i.d, align 8, !alias.scope !52224, !noalias !52230 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.f, 1
  tail call void @llvm.assume(i1 %.not.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52235)
  %i.h = icmp eq i64 %.promoted.i, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.j = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %.promoted26.i ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(72) %0, i64 64, i1 false), !noalias !52224
  %.sroa.4.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i8 %.sroa.5.0.copyload8.i, ptr %.sroa.4.0..sroa_idx.us.i, align 8, !noalias !52225
  %.sroa.511.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.j, i64 65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.511.0..sroa_idx.us.i, ptr noundef nonnull readonly align 1 dereferenceable(7) %i.i, i64 7, i1 false), !noalias !52224
  %i.k = add i64 %.promoted26.i, 1
  store i64 %i.k, ptr %i.d, align 8, !alias.scope !52224, !noalias !52230
  br label %.loopexit

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread.i: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52235)
  %i.l = icmp eq i64 %.promoted.i, 0
  tail call void @llvm.assume(i1 %i.l)
  store i64 1, ptr %i.a, align 8, !noalias !52225
  %i.m = icmp eq i64 %i.f, 1
  br i1 %i.m, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread.i
  %i.n = add i64 %i.f, -1                         ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  br label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.p = icmp eq i64 %i.r, %i.n
  br i1 %i.p, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i.i.i.i.i.i4.i5 = phi i64 [ 0, %bb.c ], [ %i.r, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %.sroa.0.0.i.i.i.i.i.i.i4.i5
  %i.r = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i4.i5, 1 ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.q)
          to label %bb.d unwind label %bb.f, !noalias !52225

bb.e:                                             ; preds = %.lr.ph7
  %i.s = add i64 %.sroa.0.1.i.i.i.i.i.i.i5.i6, 1  ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.n
  br i1 %i.t, label %.body, label %.lr.ph7

bb.f:                                             ; preds = %.lr.ph
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = icmp eq i64 %i.r, %i.n
  br i1 %i.v, label %.body, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.f, %bb.e
  %.sroa.0.1.i.i.i.i.i.i.i5.i6 = phi i64 [ %i.s, %bb.e ], [ %i.r, %bb.f ] ; 2 uses
  %i.w = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %.sroa.0.1.i.i.i.i.i.i.i5.i6
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.w) #62
          to label %bb.e unwind label %bb.g, !noalias !52225

bb.g:                                             ; preds = %.lr.ph7
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !52236
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !52225
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_EECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(88) %i.b) #62
          to label %.body unwind label %bb.h, !noalias !52225

.body:                                            ; preds = %bb.e, %bb.f, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.i ], [ %i.u, %bb.f ], [ %i.u, %bb.e ]
  %.val = load ptr, ptr %i.c, align 8, !nonnull !28, !noundef !28
  %.val3 = load i64, ptr %i.d, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs9fPPV5zPXBl_5typst(ptr nonnull %.val, i64 %.val3) #62
          to label %bb.k unwind label %bb.j

.loopexit:                                        ; preds = %bb.d, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread.i, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.lr.ph.split.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !52225
  %i.aa = load ptr, ptr %i.c, align 8, !nonnull !28, !noundef !28
  %i.ab = load i64, ptr %i.d, align 8, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ac = insertvalue { ptr, i64 } poison, ptr %i.aa, 0
  %i.ad = insertvalue { ptr, i64 } %i.ac, i64 %i.ab, 1
  ret { ptr, i64 } %i.ad

bb.j:                                             ; preds = %.body
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

bb.k:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i64 %1, %3
  br i1 %i.e, label %bb.c, label %bb.d

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.thread: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9fPPV5zPXBl_5typst.exit.backedge.us.i.i, %.split.us.i.i, %bb.h, %.loopexit9.i.i, %bb.g, %.lr.ph.split.us.i.i, %bb.w, %bb.d, %bb.a, %bb.y, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.d ], [ %.sroa.014.5.i, %bb.w ], [ 1, %bb.a ], [ %i.u, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit ], [ %i.eb, %bb.y ], [ 0, %bb.g ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %bb.h ], [ 1, %.loopexit9.i.i ], [ 1, %.split.us.i.i ], [ 0, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9fPPV5zPXBl_5typst.exit.backedge.us.i.i ]
  %i.f = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.f

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %1, 1
  br i1 %i.g, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %1, %3
  br i1 %i.h, label %bb.y, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.i = icmp ult i64 %1, 33
  br i1 %i.i, label %bb.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit

bb.f:                                             ; preds = %bb.c
  %.val = load i8, ptr %0, align 1, !noundef !28  ; 2 uses
  %i.j = icmp samesign ult i64 %3, 16
  br i1 %i.j, label %.lr.ph.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1
  %i.n = trunc nuw i64 %i.l to i1
  br i1 %i.n, label %.loopexit9.i.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.thread

.loopexit9.i.i:                                   ; preds = %.lr.ph.i.i, %bb.g
  %.sroa.5.0.i.i = phi i64 [ %i.m, %bb.g ], [ %.sroa.04.011.i.i, %.lr.ph.i.i ]
  %i.o = icmp ult i64 %.sroa.5.0.i.i, %3
  tail call void @llvm.assume(i1 %i.o)
  br label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.thread

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.h
  %.sroa.04.011.i.i = phi i64 [ %i.s, %bb.h ], [ 0, %bb.f ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.04.011.i.i
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !52260, !noundef !28
  %i.r = icmp eq i8 %i.q, %.val
  br i1 %i.r, label %.loopexit9.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.s = add nuw nsw i64 %.sroa.04.011.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.s, %3
  br i1 %exitcond.not.i.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.thread, label %.lr.ph.i.i

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit: ; preds = %bb.k, %bb.j, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  call fastcc void @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 dereferenceable(104) %i.b) #60
  %i.t = load i64, ptr %i.c, align 8, !range !33, !noundef !28
  %i.u = trunc nuw nsw i64 %i.t to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.thread

bb.i:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52262)
  %i.v = load i8, ptr %0, align 1, !alias.scope !52261, !noalias !52262, !noundef !28 ; 3 uses
  %i.w = add nsw i64 %1, -1                       ; 2 uses
  %i.x = icmp eq i64 %1, 2
  br i1 %i.x, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %1, i64 4) ; 2 uses
  %i.z = icmp ult i64 %i.y, %1
  br i1 %i.z, label %.lr.ph, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit

bb.k:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9fPPV5zPXBl_5typst.exit.i.i
  %i.aa = icmp ult i64 %i.y, %i.ac
  br i1 %i.aa, label %.lr.ph, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %i.ab = phi i64 [ %i.ac, %bb.k ], [ %1, %bb.j ]
  %i.ac = add nsw i64 %i.ab, -1                   ; 6 uses
  %i.ad = icmp ult i64 %i.ac, %1
  br i1 %i.ad, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9fPPV5zPXBl_5typst.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ac, i64 noundef range(i64 2, 33) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @473) #65, !noalias !52263
  unreachable

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !52261, !noalias !52264, !noundef !28 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.af, %i.v
  br i1 %.not.i.not.i.i, label %bb.k, label %bb.m

bb.m:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9fPPV5zPXBl_5typst.exit.i.i
  %i.ag = add nuw nsw i64 %1, 15
  %i.ah = icmp ult i64 %3, %i.ag
  br i1 %i.ah, label %.lr.ph.split.us.i.i, label %bb.n

.thread.i:                                        ; preds = %bb.i
  %i.ai = icmp ult i64 %3, 17
  br i1 %i.ai, label %.lr.ph.split.us.i.i, label %.thread92.i

.thread92.i:                                      ; preds = %.thread.i
  %i.aj = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.ak = shufflevector <16 x i8> %i.aj, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !alias.scope !52261, !noalias !52262
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.al = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.am = shufflevector <16 x i8> %i.al, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.o

.lr.ph.split.us.i.i:                              ; preds = %bb.m, %.thread.i
  %bcmp.i.i.us22.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 33) %1), !alias.scope !52265, !noalias !52266
  %i.an = icmp eq i32 %bcmp.i.i.us22.i.i, 0
  br i1 %i.an, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9fPPV5zPXBl_5typst.exit.backedge.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9fPPV5zPXBl_5typst.exit.backedge.us.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ao, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 33) %1), !alias.scope !52265, !noalias !52266
  %i.ap = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.ap, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9fPPV5zPXBl_5typst.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9fPPV5zPXBl_5typst.exit.backedge.us.i.i: ; preds = %.lr.ph.split.us.i.i, %.split.us.i.i
  %.pn.i = phi ptr [ %i.ao, %.split.us.i.i ], [ %2, %.lr.ph.split.us.i.i ]
  %.in.i = phi i64 [ %i.aq, %.split.us.i.i ], [ %3, %.lr.ph.split.us.i.i ]
  %i.aq = add i64 %.in.i, -1                      ; 2 uses
  %.not27.i.i = icmp ugt i64 %1, %i.aq
  br i1 %.not27.i.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.o:                                             ; preds = %bb.n, %.thread92.i
  %i.ar = phi i8 [ %.pre.i, %.thread92.i ], [ %i.af, %bb.n ]
  %i.as = phi <16 x i8> [ %i.ak, %.thread92.i ], [ %i.am, %bb.n ] ; 6 uses
  %storemerge9194.i = phi i64 [ 1, %.thread92.i ], [ %i.ac, %bb.n ] ; 6 uses
  %i.at = insertelement <16 x i8> poison, i8 %i.ar, i64 0
  %i.au = shufflevector <16 x i8> %i.at, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52265
  store ptr %2, ptr %i.a, align 8, !noalias !52265
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.aw, align 8, !noalias !52265
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.av, ptr %i.ax, align 8, !noalias !52265
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.w, ptr %i.ay, align 8, !noalias !52265
  %i.az = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.az, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.s, %bb.o
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.o ], [ %.sroa.014.2.3.i, %bb.s ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.o ], [ %i.cv, %bb.s ] ; 2 uses
  %i.ba = add nuw nsw i64 %1, 15                  ; 2 uses
  %i.bb = add i64 %.sroa.06.0.lcssa.i, %i.ba
  %i.bc = icmp uge i64 %i.bb, %3
  %i.bd = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3104.i = select i1 %i.bc, i1 true, i1 %i.bd
  br i1 %or.cond3104.i, label %._crit_edge.i, label %.lr.ph106.i

.lr.ph.i:                                         ; preds = %bb.o, %bb.s
  %.sroa.06.0102.i = phi i64 [ %i.cv, %bb.s ], [ 0, %bb.o ] ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.0102.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.be, align 1, !alias.scope !52262, !noalias !52267
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i.i = load <16 x i8>, ptr %i.bf, align 1, !alias.scope !52262, !noalias !52267
  %i.bg = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.as
  %i.bh = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i, %i.au
  %i.bi = and <16 x i1> %i.bg, %i.bh
end_hunk_0
