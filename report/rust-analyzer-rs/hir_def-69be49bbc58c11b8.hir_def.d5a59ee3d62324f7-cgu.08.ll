Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.08?download=true
inline.NumInlined: 3532
inline.NumDeleted: 1668
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoj1_E17try_reserve_exactBM_:bb.a
  %i.i = extractvalue { i64, i64 } %i.g, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.4.0 = phi i64 [ %i.i, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0 = phi i64 [ %i.h, %bb.c ], [ -1, %bb.a ], [ 0, %bb.b ]
  %i.j = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.k = insertvalue { i64, i64 } %i.j, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.k
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoj1_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !4349, !noalias !4350, !noundef !5 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !4349, !noalias !4350
  %.sink10.i = select i1 %i.b, i64 %i.d, i64 %i.a ; 3 uses
  %i.e = icmp eq i64 %.sink10.i, -1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.sink10.i, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.f, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoj1_E8try_growBM_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit
    i64 0, label %bb.e
  ], !prof !4

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.l, i64 noundef %i.m) #42
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoj1_E8try_growBM_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !5   ; 6 uses
  %i.c = icmp ult i64 %i.b, 2                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !4356, !noalias !4357, !nonnull !5 ; 3 uses
  %.sink9.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink9.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.g = load i64, ptr %.sink9.i, align 8, !noundef !5 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #43
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 2
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.b, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.i = mul i64 %1, 24                           ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 384307168202282325
  br i1 %or.cond.not, label %bb.m, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit, !prof !26

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit: ; preds = %bb.f
  br i1 %i.c, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit
  %i.j = mul i64 %.sink.i, 24                     ; 2 uses
  %or.cond62.not = icmp ugt i64 %i.b, 384307168202282325
  br i1 %or.cond62.not, label %bb.m, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit45, !prof !26

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.k = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 8) #48 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit45: ; preds = %bb.g
  %i.m = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.j, i64 noundef 8, i64 noundef %i.i) #48 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.k, %bb.j ], [ %i.m, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit45 ]
  store ptr %.sroa.030.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.o = mul nuw nsw i64 %i.g, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.e, i64 %i.o, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.p = mul nuw nsw i64 %i.g, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.f, i64 %i.p, i1 false)
  store i64 %i.g, ptr %0, align 8
  %i.q = mul i64 %.sink.i, 24                     ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.b, 384307168202282325
  br i1 %or.cond.not.i, label %bb.l, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBF_.exit, !prof !26

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4358
  store i64 0, ptr %i.a, align 8, !noalias !4358
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.q, ptr %i.r, align 8, !noalias !4358
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4358
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBF_.exit: ; preds = %bb.k
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.q, i64 noundef 8) #48
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit45, %bb.h, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBF_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBF_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.i, %bb.h ], [ undef, %bb.e ], [ %i.i, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit45 ], [ %i.j, %bb.g ], [ %i.i, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBF_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.s = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.t = insertvalue { i64, i64 } %i.s, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.t
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationj1_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !alias.scope !4366, !noalias !4367, !noundef !5 ; 7 uses
  %i.c = icmp ugt i64 %i.b, 1                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !4366, !noalias !4367, !nonnull !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !4366, !noalias !4367
  %.sink10.i = select i1 %i.c, i64 %i.g, i64 %i.b ; 3 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0                ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4368)
  %i.n = icmp ult i64 %i.b, 2                     ; 2 uses
  %.sink9.idx.i.i = select i1 %i.c, i64 16, i64 0
  %.sink9.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i.i
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.o = load i64, ptr %.sink9.i.i, align 8, !alias.scope !4368, !noundef !5 ; 5 uses
  %.not.i = icmp ult i64 %i.m, %i.o
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #43, !noalias !4368
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.b, %i.m
  br i1 %.not43.i, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = mul i64 %i.m, 72                         ; 3 uses
  %or.cond.not.i = icmp ugt i64 %i.k, 128102389400760774
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationEBH_.exit.i, !prof !26

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationEBH_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationEBH_.exit.i
  %or.cond62.not.i = icmp ugt i64 %i.b, 128102389400760775
  br i1 %or.cond62.not.i, label %bb.p, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationEBH_.exit45.i, !prof !26

bb.j:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationEBH_.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !4368
  %i.q = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #48, !noalias !4368 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.l

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationEBH_.exit45.i: ; preds = %bb.i
  %i.s = mul nuw i64 %.sink.i.i, 72
  %i.t = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.p) #48, !noalias !4368 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationEBH_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationEBH_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %i.d, align 8, !alias.scope !4368
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !4368
  store i64 %i.m, ptr %0, align 8, !alias.scope !4368
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.l:                                             ; preds = %bb.j
  %i.v = mul nuw nsw i64 %i.o, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.d, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = mul nuw nsw i64 %i.o, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.o, ptr %0, align 8, !alias.scope !4368
  %i.x = mul i64 %.sink.i.i, 72                   ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %i.b, 128102389400760775
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationEBF_.exit.i, !prof !26

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4369
  store i64 0, ptr %i.a, align 8, !noalias !4369
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !4369
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4369
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationEBF_.exit.i: ; preds = %bb.m
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 8) #48, !noalias !4368
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.o:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationEBH_.exit45.i, %bb.j
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.p) #42
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationEBF_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #43
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def5attrs7DocAtomj1_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !4377, !noalias !4378, !noundef !5 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 1
  %i.e = load ptr, ptr %0, align 8, !alias.scope !4377, !noalias !4378, !nonnull !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !4377, !noalias !4378 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0                ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4379)
  %i.n = icmp ult i64 %i.c, 2                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #43, !noalias !4379
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.c, %i.m
  br i1 %.not43.i, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.o = mul i64 %i.m, 48                         ; 3 uses
  %or.cond.not.i = icmp ugt i64 %i.k, 192153584101141161
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEBH_.exit.i, !prof !26

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEBH_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEBH_.exit.i
  %or.cond62.not.i = icmp ugt i64 %i.c, 192153584101141162
  br i1 %or.cond62.not.i, label %bb.p, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEBH_.exit45.i, !prof !26

bb.j:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEBH_.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !4379
  %i.p = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef 8) #48, !noalias !4379 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.o, label %bb.l

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEBH_.exit45.i: ; preds = %bb.i
  %i.r = mul nuw i64 %.sink.i.i, 48
  %i.s = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.r, i64 noundef 8, i64 noundef %i.o) #48, !noalias !4379 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEBH_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.p, %bb.l ], [ %i.s, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEBH_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !4379
  store i64 %.sink10.i, ptr %i.f, align 8, !alias.scope !4379
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !4379
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.l:                                             ; preds = %bb.j
  %i.u = mul nuw nsw i64 %i.c, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 dereferenceable(56) %0, i64 %i.u, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.v = mul nuw nsw i64 %i.g, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(56) %0, ptr nonnull align 8 %i.e, i64 %i.v, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !4379
  %i.w = mul i64 %.sink.i.i, 48                   ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %i.c, 192153584101141162
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEBF_.exit.i, !prof !26

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4380
  store i64 0, ptr %i.a, align 8, !noalias !4380
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.w, ptr %i.x, align 8, !noalias !4380
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4380
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEBF_.exit.i: ; preds = %bb.m
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.w, i64 noundef 8) #48, !noalias !4379
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.o:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEBH_.exit45.i, %bb.j
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.o) #42
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEBF_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #43
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefj1_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !alias.scope !4388, !noalias !4389, !noundef !5 ; 7 uses
  %i.c = icmp ugt i64 %i.b, 1                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !4388, !noalias !4389, !nonnull !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !4388, !noalias !4389
  %.sink10.i = select i1 %i.c, i64 %i.g, i64 %i.b ; 3 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0                ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4390)
  %i.n = icmp ult i64 %i.b, 2                     ; 2 uses
  %.sink9.idx.i.i = select i1 %i.c, i64 16, i64 0
  %.sink9.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i.i
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.o = load i64, ptr %.sink9.i.i, align 8, !alias.scope !4390, !noundef !5 ; 5 uses
  %.not.i = icmp ult i64 %i.m, %i.o
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #43, !noalias !4390
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.b, %i.m
  br i1 %.not43.i, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = mul i64 %i.m, 20                         ; 3 uses
  %or.cond.not.i = icmp ugt i64 %i.k, 461168601842738789
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEBH_.exit.i, !prof !26

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEBH_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEBH_.exit.i
  %or.cond62.not.i = icmp ugt i64 %i.b, 461168601842738790
  br i1 %or.cond62.not.i, label %bb.p, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEBH_.exit45.i, !prof !26

bb.j:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEBH_.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !4390
  %i.q = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 4) #48, !noalias !4390 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.l

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEBH_.exit45.i: ; preds = %bb.i
  %i.s = mul nuw i64 %.sink.i.i, 20
  %i.t = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 4, i64 noundef %i.p) #48, !noalias !4390 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEBH_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEBH_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %i.d, align 8, !alias.scope !4390
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !4390
  store i64 %i.m, ptr %0, align 8, !alias.scope !4390
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.l:                                             ; preds = %bb.j
  %i.v = mul nuw nsw i64 %i.o, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 8 %i.d, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = mul nuw nsw i64 %i.o, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull align 4 %i.e, i64 %i.w, i1 false)
  store i64 %i.o, ptr %0, align 8, !alias.scope !4390
  %i.x = mul i64 %.sink.i.i, 20                   ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %i.b, 461168601842738790
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEBF_.exit.i, !prof !26

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4391
  store i64 0, ptr %i.a, align 8, !noalias !4391
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !4391
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4391
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEBF_.exit.i: ; preds = %bb.m
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 4) #48, !noalias !4390
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.o:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEBH_.exit45.i, %bb.j
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.p) #42
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEBF_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #43
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBL_4AttrEj1_E21reserve_one_uncheckedCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !4395, !noalias !4396, !noundef !5 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !4395, !noalias !4396
  %.sink10.i = select i1 %i.b, i64 %i.d, i64 %i.a ; 3 uses
  %i.e = icmp eq i64 %.sink10.i, -1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.sink10.i, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.f, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBL_4AttrEj1_E8try_growCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit
    i64 0, label %bb.e
  ], !prof !4

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.l, i64 noundef %i.m) #42
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBL_4AttrEj1_E8try_growCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !5   ; 6 uses
  %i.c = icmp ult i64 %i.b, 2                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !4402, !noalias !4403, !nonnull !5 ; 3 uses
  %.sink9.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink9.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.g = load i64, ptr %.sink9.i, align 8, !noundef !5 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #43
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 2
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.b, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.i = mul i64 %1, 24                           ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 384307168202282325
  br i1 %or.cond.not, label %bb.m, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECsileJQcQObtj_7hir_def.exit, !prof !26

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECsileJQcQObtj_7hir_def.exit: ; preds = %bb.f
  br i1 %i.c, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECsileJQcQObtj_7hir_def.exit
  %i.j = mul i64 %.sink.i, 24                     ; 2 uses
  %or.cond62.not = icmp ugt i64 %i.b, 384307168202282325
  br i1 %or.cond62.not, label %bb.m, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECsileJQcQObtj_7hir_def.exit45, !prof !26

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECsileJQcQObtj_7hir_def.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.k = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 8) #48 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECsileJQcQObtj_7hir_def.exit45: ; preds = %bb.g
  %i.m = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.j, i64 noundef 8, i64 noundef %i.i) #48 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECsileJQcQObtj_7hir_def.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.k, %bb.j ], [ %i.m, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECsileJQcQObtj_7hir_def.exit45 ]
  store ptr %.sroa.030.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.o = mul nuw nsw i64 %i.g, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.e, i64 %i.o, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.p = mul nuw nsw i64 %i.g, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.f, i64 %i.p, i1 false)
  store i64 %i.g, ptr %0, align 8
  %i.q = mul i64 %.sink.i, 24                     ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.b, 384307168202282325
  br i1 %or.cond.not.i, label %bb.l, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBE_4AttrEECsileJQcQObtj_7hir_def.exit, !prof !26

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4404
  store i64 0, ptr %i.a, align 8, !noalias !4404
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.q, ptr %i.r, align 8, !noalias !4404
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4404
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBE_4AttrEECsileJQcQObtj_7hir_def.exit: ; preds = %bb.k
end_hunk_0
