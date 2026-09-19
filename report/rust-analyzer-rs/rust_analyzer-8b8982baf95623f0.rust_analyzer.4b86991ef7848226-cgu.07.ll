Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.07?download=true
inline.NumInlined: 3983
inline.NumDeleted: 1469
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvXsk4_NtNtCs1lnireelaHN_13gen_lsp_types9generated10structuresNtB6_7CommandNtNtCshzWfHUSfYae_4core5clone5Clone5clone:bb.a
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #43
          to label %bb.e unwind label %bb.o

bb.i:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !range !6, !noundef !4
  %.not4 = icmp eq i64 %i.l, -1
  br i1 %.not4, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs8yjYO7b73r2_10serde_json5value5ValueENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.n
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload1, %bb.n ], [ -1, %bb.j ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.0.0, ptr %i.o, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.m:                                             ; preds = %bb.k
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #43
          to label %bb.h unwind label %bb.o

bb.n:                                             ; preds = %bb.k
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.o:                                             ; preds = %bb.m, %bb.h, %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.p:                                             ; preds = %bb.e
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvXsl_NtNtCshzWfHUSfYae_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCscAsMj0W7j8b_3std6thread9lifecycle15spawn_uncheckedNCNCNvXs4_CsjJXvCMGntp8_6syntaxINtB2k_5ParseNtNtNtNtB2k_3ast9generated5nodes10SourceFileENtNtNtB9_3ops4drop4Drop4drop00zEs_00EINtNtB3F_8function6FnOnceuE9call_onceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #13 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  call fastcc void @_RNCNCINvNtNtCscAsMj0W7j8b_3std6thread9lifecycle15spawn_uncheckedNCNCNvXs4_CsjJXvCMGntp8_6syntaxINtB1a_5ParseNtNtNtNtB1a_3ast9generated5nodes10SourceFileENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop00zEs_00Cs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.a) #50
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCshzWfHUSfYae_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSINtNtB7_6result6ResultNtNtCsdcPuHeDsw6v_13project_model18build_dependencies21WorkspaceBuildScriptsNtCsdRkQxkTxnTp_6anyhow5ErrorENtB5_5Debug3fmtCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtBa_6result6ResultNtNtCsdcPuHeDsw6v_13project_model18build_dependencies21WorkspaceBuildScriptsNtCsdRkQxkTxnTp_6anyhow5ErrorEINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSINtNtB7_6result6ResultNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceNtCsdRkQxkTxnTp_6anyhow5ErrorENtB5_5Debug3fmtCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 13101380734168716) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [704 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtBa_6result6ResultNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceNtCsdRkQxkTxnTp_6anyhow5ErrorEINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNtB5_5Debug3fmtCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSNtNtCs39E2wp1vf7X_6intern6symbol6SymbolNtB5_5Debug3fmtCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs39E2wp1vf7X_6intern6symbol6SymbolINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXss_NtCshzWfHUSfYae_4core3fmtuNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @536, i64 noundef 2)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 1, 14) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = icmp ult i64 %1, %3
  br i1 %i.d, label %bb.b, label %bb.c

_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread: ; preds = %.split.us.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.backedge.us.i.i, %bb.f, %.lr.ph.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.backedge.us.i.i.preheader, %bb.e, %.lr.ph.split.us.i.i, %bb.u, %bb.c, %bb.w, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.c ], [ %i.m, %bb.e ], [ %i.dy, %bb.w ], [ %i.dw, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit ], [ %.sroa.014.5.i, %bb.u ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.backedge.us.i.i.preheader ], [ 0, %bb.f ], [ 1, %.lr.ph.i ], [ 0, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.backedge.us.i.i ], [ 1, %.split.us.i.i ]
  %i.e = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.e

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %1, 1
  br i1 %i.f, label %bb.d, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %1, %3
  br i1 %i.g, label %bb.w, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.h = load i8, ptr %0, align 1, !noundef !4    ; 2 uses
  %i.i = icmp samesign ult i64 %3, 16
  br i1 %i.i, label %.lr.ph.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3)
  %i.k = extractvalue { i64, i64 } %i.j, 0
  %i.l = icmp eq i64 %i.k, 1
  %i.m = zext i1 %i.l to i8
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %.sroa.01.05.i = phi i64 [ %i.q, %bb.f ], [ 0, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05.i
  %i.o = load i8, ptr %i.n, align 1, !alias.scope !7739, !noundef !4
  %i.p = icmp eq i8 %i.o, %i.h
  br i1 %i.p, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.q = add nuw nsw i64 %.sroa.01.05.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.q, %3
  br i1 %exitcond.not.i, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %.lr.ph.i

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7741)
  %i.r = load i8, ptr %0, align 1, !alias.scope !7740, !noalias !7741, !noundef !4 ; 6 uses
  %i.s = add nsw i64 %1, -1                       ; 2 uses
  %i.t = icmp eq i64 %1, 2
  br i1 %i.t, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 14) %1, i64 4) ; 4 uses
  %i.v = icmp samesign ult i64 %i.u, %1
  br i1 %i.v, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit

4:                                                ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %5 = icmp ult i64 %i.u, %18
  br i1 %5, label %.lr.ph.1, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit

.lr.ph.1:                                         ; preds = %4
  %6 = add nsw i64 %1, -2                         ; 3 uses
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %6
  %8 = load i8, ptr %7, align 1, !alias.scope !7740, !noalias !7742, !noundef !4 ; 2 uses
  %.not.i.not.i.i.1 = icmp eq i8 %8, %i.r
  br i1 %.not.i.not.i.i.1, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph.1
  %i.w = icmp ult i64 %i.u, %6
  br i1 %i.w, label %.lr.ph.2, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit

.lr.ph.2:                                         ; preds = %bb.i
  %9 = add nsw i64 %1, -3                         ; 4 uses
  %10 = icmp samesign ugt i64 %1, 2
  br i1 %10, label %.lr.ph.a, label %19

.lr.ph.a:                                         ; preds = %.lr.ph.2
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %9
  %12 = load i8, ptr %11, align 1, !alias.scope !7740, !noalias !7742, !noundef !4 ; 2 uses
  %.not.i.not.i.i.2 = icmp eq i8 %12, %i.r
  br i1 %.not.i.not.i.i.2, label %13, label %bb.k

13:                                               ; preds = %.lr.ph.a
  %14 = icmp ult i64 %i.u, %9
  br i1 %14, label %.lr.ph.3, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit

.lr.ph.3:                                         ; preds = %13
  %15 = add nsw i64 %1, -4                        ; 3 uses
  %.not = icmp eq i64 %1, 3
  br i1 %.not, label %19, label %bb.j

bb.j:                                             ; preds = %.lr.ph.3
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 %15
  %17 = load i8, ptr %16, align 1, !alias.scope !7740, !noalias !7742, !noundef !4 ; 2 uses
  %.not.i.not.i.i.3 = icmp eq i8 %17, %i.r
  br i1 %.not.i.not.i.i.3, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit, label %bb.k

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %bb.h
  %18 = add nsw i64 %1, -1                        ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %18
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !7740, !noalias !7742, !noundef !4 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.y, %i.r
  br i1 %.not.i.not.i.i, label %4, label %bb.k

19:                                               ; preds = %.lr.ph.3, %.lr.ph.2
  %.lcssa50 = phi i64 [ %15, %.lr.ph.3 ], [ %9, %.lr.ph.2 ]
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.lcssa50, i64 noundef range(i64 2, 14) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #48, !noalias !7743
  unreachable

bb.k:                                             ; preds = %bb.j, %.lr.ph.a, %.lr.ph.1, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %.lcssa53 = phi i8 [ %i.y, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i ], [ %8, %.lr.ph.1 ], [ %12, %.lr.ph.a ], [ %17, %bb.j ]
  %.lcssa51 = phi i64 [ %18, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i ], [ %6, %.lr.ph.1 ], [ %9, %.lr.ph.a ], [ %15, %bb.j ]
  %i.z = add nuw nsw i64 %1, 15
  %i.aa = icmp ult i64 %3, %i.z
  br i1 %i.aa, label %.lr.ph.split.us.i.i, label %bb.l

.thread.i:                                        ; preds = %bb.g
  %i.ab = icmp ult i64 %3, 17
  br i1 %i.ab, label %.lr.ph.split.us.i.i, label %.thread92.i

.thread92.i:                                      ; preds = %.thread.i
  %i.ac = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !alias.scope !7740, !noalias !7741
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ae = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.af = shufflevector <16 x i8> %i.ae, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.m

.lr.ph.split.us.i.i:                              ; preds = %bb.k, %.thread.i
  %bcmp.i.i.us22.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 14) %1), !alias.scope !7744, !noalias !7745
  %i.ag = icmp eq i32 %bcmp.i.i.us22.i.i, 0
  br i1 %i.ag, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.backedge.us.i.i.preheader

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.backedge.us.i.i.preheader: ; preds = %.lr.ph.split.us.i.i
  %i.ah = add i64 %3, -1                          ; 2 uses
  %.not27.i.i44 = icmp ugt i64 %1, %i.ah
  br i1 %.not27.i.i44, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.backedge.us.i.i.preheader, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.backedge.us.i.i
  %i.ai = phi i64 [ %i.al, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.backedge.us.i.i ], [ %i.ah, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.backedge.us.i.i.preheader ]
  %.pn.i45 = phi ptr [ %i.aj, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.backedge.us.i.i ], [ %2, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.backedge.us.i.i.preheader ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn.i45, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.aj, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 14) %1), !alias.scope !7744, !noalias !7745
  %i.ak = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.ak, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.backedge.us.i.i: ; preds = %.split.us.i.i
  %i.al = add i64 %i.ai, -1                       ; 2 uses
  %.not27.i.i = icmp ugt i64 %1, %i.al
  br i1 %.not27.i.i, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.m:                                             ; preds = %bb.l, %.thread92.i
  %i.am = phi i8 [ %.pre.i, %.thread92.i ], [ %.lcssa53, %bb.l ]
  %i.an = phi <16 x i8> [ %i.ad, %.thread92.i ], [ %i.af, %bb.l ] ; 6 uses
  %storemerge9194.i = phi i64 [ 1, %.thread92.i ], [ %.lcssa51, %bb.l ] ; 6 uses
  %i.ao = insertelement <16 x i8> poison, i8 %i.am, i64 0
  %i.ap = shufflevector <16 x i8> %i.ao, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7744
  store ptr %2, ptr %i.a, align 8, !noalias !7744
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.ar, align 8, !noalias !7744
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.aq, ptr %i.as, align 8, !noalias !7744
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.s, ptr %i.at, align 8, !noalias !7744
  %i.au = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i4 = icmp ult i64 %i.au, %3
  br i1 %.not.i4, label %.lr.ph.i7, label %.preheader.i5

.preheader.i5:                                    ; preds = %bb.q, %bb.m
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.m ], [ %.sroa.014.2.3.i, %bb.q ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.m ], [ %i.cq, %bb.q ] ; 2 uses
  %i.av = add nuw nsw i64 %1, 15                  ; 2 uses
  %i.aw = add i64 %.sroa.06.0.lcssa.i, %i.av
  %i.ax = icmp uge i64 %i.aw, %3
  %i.ay = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3104.i = select i1 %i.ax, i1 true, i1 %i.ay
  br i1 %or.cond3104.i, label %._crit_edge.i6, label %.lr.ph106.i

.lr.ph.i7:                                        ; preds = %bb.m, %bb.q
  %.sroa.06.0102.i = phi i64 [ %i.cq, %bb.q ], [ 0, %bb.m ] ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.0102.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.az, align 1, !alias.scope !7741, !noalias !7746
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i.i = load <16 x i8>, ptr %i.ba, align 1, !alias.scope !7741, !noalias !7746
  %i.bb = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.an
  %i.bc = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i, %i.ap
  %i.bd = and <16 x i1> %i.bb, %i.bc
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.bf, align 1, !alias.scope !7741, !noalias !7746
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i.1.i = load <16 x i8>, ptr %i.bg, align 1, !alias.scope !7741, !noalias !7746
  %i.bh = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.an
  %i.bi = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i, %i.ap
  %i.bj = and <16 x i1> %i.bh, %i.bi
  %i.bk = bitcast <16 x i1> %i.bj to i16          ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.bl, align 1, !alias.scope !7741, !noalias !7746
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i.2.i = load <16 x i8>, ptr %i.bm, align 1, !alias.scope !7741, !noalias !7746
  %i.bn = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.an
  %i.bo = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i, %i.ap
  %i.bp = and <16 x i1> %i.bn, %i.bo
  %i.bq = bitcast <16 x i1> %i.bp to i16          ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.br, align 1, !alias.scope !7741, !noalias !7746
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i.3.i = load <16 x i8>, ptr %i.bs, align 1, !alias.scope !7741, !noalias !7746
  %i.bt = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.an
  %i.bu = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i, %i.ap
  %i.bv = and <16 x i1> %i.bt, %i.bu
  %i.bw = bitcast <16 x i1> %i.bv to i16          ; 2 uses
  %i.bx = icmp eq i16 %i.be, 0
  br i1 %i.bx, label %.preheader95.1.i, label %bb.r

.preheader95.1.i:                                 ; preds = %bb.r, %.lr.ph.i7
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i7 ], [ %i.cv, %bb.r ] ; 3 uses
  %i.by = icmp eq i16 %i.bk, 0
  br i1 %i.by, label %.preheader95.2.i, label %bb.n

bb.n:                                             ; preds = %.preheader95.1.i
  %i.bz = or disjoint i64 %.sroa.06.0102.i, 16
  %i.ca = trunc nuw i8 %.sroa.014.2.i to i1
  %i.cb = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Cs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bz, i16 noundef %i.bk, i1 noundef zeroext %i.ca) #49
  %i.cc = zext i1 %i.cb to i8
  %i.cd = or i8 %.sroa.014.2.i, %i.cc
  br label %.preheader95.2.i

.preheader95.2.i:                                 ; preds = %bb.n, %.preheader95.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader95.1.i ], [ %i.cd, %bb.n ] ; 3 uses
  %i.ce = icmp eq i16 %i.bq, 0
  br i1 %i.ce, label %.preheader95.3.i, label %bb.o

bb.o:                                             ; preds = %.preheader95.2.i
  %i.cf = or disjoint i64 %.sroa.06.0102.i, 32
  %i.cg = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.ch = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Cs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cf, i16 noundef %i.bq, i1 noundef zeroext %i.cg) #49
  %i.ci = zext i1 %i.ch to i8
  %i.cj = or i8 %.sroa.014.2.1.i, %i.ci
  br label %.preheader95.3.i

.preheader95.3.i:                                 ; preds = %bb.o, %.preheader95.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader95.2.i ], [ %i.cj, %bb.o ] ; 3 uses
  %i.ck = icmp eq i16 %i.bw, 0
  br i1 %i.ck, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader95.3.i
  %i.cl = or disjoint i64 %.sroa.06.0102.i, 48
  %i.cm = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Cs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cl, i16 noundef %i.bw, i1 noundef zeroext %i.cm) #49
  %i.co = zext i1 %i.cn to i8
  %i.cp = or i8 %.sroa.014.2.2.i, %i.co
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.preheader95.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader95.3.i ], [ %i.cp, %bb.p ] ; 2 uses
  %i.cq = add i64 %.sroa.06.0102.i, 64            ; 3 uses
  %i.cr = add i64 %i.cq, %i.au
  %i.cs = icmp uge i64 %i.cr, %3
  %i.ct = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.cs, i1 true, i1 %i.ct
  br i1 %or.cond.i, label %.preheader.i5, label %.lr.ph.i7

bb.r:                                             ; preds = %.lr.ph.i7
  %i.cu = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Cs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0102.i, i16 noundef %i.be, i1 noundef zeroext false) #49
  %i.cv = zext i1 %i.cu to i8
  br label %.preheader95.1.i

._crit_edge.i6:                                   ; preds = %bb.s, %.preheader.i5
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i5 ], [ %.sroa.014.4.i, %bb.s ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.ay, %.preheader.i5 ], [ %i.dp, %bb.s ]
  %i.cw = sub nuw i64 %3, %i.s
  %i.cx = add i64 %i.cw, -16                      ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 %i.cx ; 2 uses
  %.sroa.0.0.copyload.i57.i = load <16 x i8>, ptr %i.cy, align 1, !alias.scope !7741, !noalias !7747
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i58.i = load <16 x i8>, ptr %i.cz, align 1, !alias.scope !7741, !noalias !7747
  %i.da = icmp eq <16 x i8> %.sroa.0.0.copyload.i57.i, %i.an
  %i.db = icmp eq <16 x i8> %.sroa.01.0.copyload.i58.i, %i.ap
  %i.dc = and <16 x i1> %i.da, %i.db
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %i.de = icmp eq i16 %i.dd, 0
  br i1 %i.de, label %bb.u, label %bb.v

.lr.ph106.i:                                      ; preds = %.preheader.i5, %bb.s
  %.sroa.06.1105.i = phi i64 [ %i.dm, %bb.s ], [ %.sroa.06.0.lcssa.i, %.preheader.i5 ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1105.i ; 2 uses
  %.sroa.0.0.copyload.i59.i = load <16 x i8>, ptr %i.df, align 1, !alias.scope !7741, !noalias !7748
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i60.i = load <16 x i8>, ptr %i.dg, align 1, !alias.scope !7741, !noalias !7748
  %i.dh = icmp eq <16 x i8> %.sroa.0.0.copyload.i59.i, %i.an
  %i.di = icmp eq <16 x i8> %.sroa.01.0.copyload.i60.i, %i.ap
  %i.dj = and <16 x i1> %i.dh, %i.di
  %i.dk = bitcast <16 x i1> %i.dj to i16          ; 2 uses
  %i.dl = icmp eq i16 %i.dk, 0
  br i1 %i.dl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.t, %.lr.ph106.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph106.i ], [ %i.dr, %bb.t ] ; 2 uses
  %i.dm = add i64 %.sroa.06.1105.i, 16            ; 2 uses
  %i.dn = add i64 %i.dm, %i.av
  %i.do = icmp uge i64 %i.dn, %3
  %i.dp = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.do, %i.dp
  br i1 %or.cond3.i, label %._crit_edge.i6, label %.lr.ph106.i

bb.t:                                             ; preds = %.lr.ph106.i
  %i.dq = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Cs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1105.i, i16 noundef %i.dk, i1 noundef zeroext false) #49
  %i.dr = zext i1 %i.dq to i8
  br label %bb.s

bb.u:                                             ; preds = %bb.v, %._crit_edge.i6
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i6 ], [ %i.du, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7744
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

bb.v:                                             ; preds = %._crit_edge.i6
  %i.ds = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Cs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cx, i16 noundef %i.dd, i1 noundef zeroext %.lcssa.i) #49
  %i.dt = zext i1 %i.ds to i8
  %i.du = or i8 %.sroa.014.3.lcssa.i, %i.dt
  br label %bb.u

_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit: ; preds = %4, %bb.i, %13, %bb.j, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  call fastcc void @_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 dereferenceable(104) %i.b) #49
  %i.dv = load i64, ptr %i.c, align 8, !range !5, !noundef !4
  %i.dw = trunc nuw nsw i64 %i.dv to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

bb.w:                                             ; preds = %bb.c
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1)
  %i.dx = icmp eq i32 %bcmp, 0
  %i.dy = zext i1 %i.dx to i8
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !5, !noundef !4
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.b, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !range !18, !alias.scope !7771, !noalias !7772, !noundef !4
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs6u1mgJOKDyY_13rust_analyzer.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.promoted = load i64, ptr %i.c, align 8        ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !7771, !noalias !7772, !nonnull !4, !noundef !4 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !7771, !noalias !7772, !noundef !4 ; 16 uses
  %.promoted52 = load i8, ptr %i.g, align 8, !alias.scope !7771, !noalias !7772 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7773)
  %i.l = trunc nuw i8 %.promoted52 to i1          ; 2 uses
  %i.m = icmp eq i64 %.promoted, 0
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not.i.i.peel = icmp ult i64 %.promoted, %i.k
  br i1 %.not.i.i.peel, label %bb.c, label %.split.i.i.peel

.split.i.i.peel:                                  ; preds = %bb.b
  %i.n = icmp eq i64 %.promoted, %i.k
  br i1 %i.n, label %bb.d, label %.loopexit199

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !7774, !noalias !7775, !noundef !4
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %bb.d, label %.loopexit199

bb.d:                                             ; preds = %bb.c, %.split.i.i.peel, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted ; 4 uses
  %i.s = icmp samesign eq i64 %.promoted, %i.k
  br i1 %i.s, label %.loopexit200, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.r, align 1, !noalias !7776, !noundef !4 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.f, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit12.i.i.peel

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit12.i.i.peel: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = and i8 %i.t, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = add nuw nsw i64 %.promoted, 1
  %i.z = icmp samesign ne i64 %i.y, %i.k
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = load i8, ptr %i.v, align 1, !noalias !7776, !noundef !4
  %i.ab = shl nuw nsw i32 %i.x, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32               ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad
  %i.af = icmp samesign ugt i8 %i.t, -33
  br i1 %i.af, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit14.i.i.peel, label %bb.g

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit14.i.i.peel: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit12.i.i.peel
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.ah = add nuw nsw i64 %.promoted, 2
  %i.ai = icmp samesign ne i64 %i.ah, %i.k
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !7776, !noundef !4
  %i.ak = shl nuw nsw i32 %i.ad, 6
  %i.al = and i8 %i.aj, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am            ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i8 %i.t, -17
  br i1 %i.aq, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit16.i.i.peel, label %bb.g

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit16.i.i.peel: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit14.i.i.peel
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.as = add nuw nsw i64 %.promoted, 3
  %i.at = icmp samesign ne i64 %i.as, %i.k
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i8, ptr %i.ar, align 1, !noalias !7776, !noundef !4
  %i.av = shl nuw nsw i32 %i.x, 18
  %i.aw = and i32 %i.av, 1835008
  %i.ax = shl nuw nsw i32 %i.an, 6
  %i.ay = and i8 %i.au, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.aw
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = zext nneg i8 %i.t to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit16.i.i.peel, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit14.i.i.peel, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit12.i.i.peel
  %.sroa.4.0.i.ph.i.peel = phi i32 [ %i.ap, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit14.i.i.peel ], [ %i.bb, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit16.i.i.peel ], [ %i.ae, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit12.i.i.peel ], [ %i.bc, %bb.f ] ; 4 uses
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bd)
  br i1 %i.l, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 128
  br i1 %i.be, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 2048
  br i1 %i.bf, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 65536
  %..i.peel = select i1 %i.bg, i64 3, i64 4
  br label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel

_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.i.peel = phi i64 [ 2, %bb.i ], [ %..i.peel, %bb.j ], [ 1, %bb.h ]
  %i.bh = add i64 %.sroa.01.0.i.peel, %.promoted  ; 13 uses
  store i64 %i.bh, ptr %i.c, align 8, !alias.scope !7773, !noalias !7772
  %i.bi = icmp eq i64 %i.bh, 0
  %.not.i.i = icmp ult i64 %i.bh, %i.k
  %i.bj = icmp eq i64 %i.bh, %i.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh ; 4 uses
  %i.bm = icmp samesign eq i64 %i.bh, %i.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bo = add nuw nsw i64 %i.bh, 1
  %i.bp = icmp samesign ne i64 %i.bo, %i.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.br = add nuw nsw i64 %i.bh, 2
  %i.bs = icmp samesign ne i64 %i.br, %i.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bu = add nuw nsw i64 %i.bh, 3
  %i.bv = icmp samesign ne i64 %i.bu, %i.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7771)
  br i1 %i.bi, label %bb.n, label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !4 ; 2 uses
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4 ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !4 ; 12 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !4 ; 16 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  %i.ci = add nsw i64 %i.cg, -1                   ; 5 uses
  br i1 %i.by, label %bb.aa, label %bb.s

bb.l:                                             ; preds = %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %.not.i.i, label %bb.m, label %.split.i.i

.split.i.i:                                       ; preds = %bb.l
  br i1 %i.bj, label %bb.n, label %.loopexit199

bb.m:                                             ; preds = %bb.l
  %i.cj = load i8, ptr %i.bk, align 1, !alias.scope !7774, !noalias !7777, !noundef !4
  %i.ck = icmp sgt i8 %i.cj, -65
  br i1 %i.ck, label %bb.n, label %.loopexit199

bb.n:                                             ; preds = %bb.m, %.split.i.i, %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %i.bm, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = load i8, ptr %i.bl, align 1, !noalias !7778, !noundef !4 ; 5 uses
  %i.cm = icmp sgt i8 %i.cl, -1
  br i1 %i.cm, label %bb.p, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit12.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit12.i.i: ; preds = %bb.o
  %i.cn = and i8 %i.cl, 31
  %i.co = zext nneg i8 %i.cn to i32               ; 3 uses
  tail call void @llvm.assume(i1 %i.bp)
  %i.cp = load i8, ptr %i.bn, align 1, !noalias !7778, !noundef !4
  %i.cq = shl nuw nsw i32 %i.co, 6
  %i.cr = and i8 %i.cp, 63
end_hunk_0
begin_hunk_1_@llvm.umin.i32
!7542 = !{!7527}
!7543 = !{!7529}
!7544 = !{!7529, !7527, !7525, !7523, !7531}
!7545 = !{!7529, !7527, !7525, !7523}
!7546 = !{!7533}
!7547 = !{!7535}
!7548 = !{!7537}
!7549 = !{!7539}
!7550 = !{!7539, !7537, !7535, !7533, !7531}
!7551 = !{!7539, !7537, !7535, !7533}
!7552 = distinct !{!7552, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push"}
!7553 = distinct !{!7553, !7552, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push: argument 0"}
!7554 = !{!7553}
!7555 = distinct !{!7555, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str"}
!7556 = distinct !{!7556, !7555, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str: argument 1"}
!7557 = distinct !{!7557, !7555, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str: argument 0"}
!7558 = distinct !{!7558, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs6u1mgJOKDyY_13rust_analyzer"}
!7559 = distinct !{!7559, !7558, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7560 = !{!7556}
!7561 = !{!7559, !7557}
!7562 = distinct !{!7562, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultIBv_TbNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtB4_2io5error5ErrorEINtNtBR_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EE6unwrapCs6u1mgJOKDyY_13rust_analyzer"}
!7563 = distinct !{!7563, !7562, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultIBv_TbNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtB4_2io5error5ErrorEINtNtBR_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EE6unwrapCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7564 = distinct !{!7564, !7562, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultIBv_TbNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtB4_2io5error5ErrorEINtNtBR_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EE6unwrapCs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!7565 = distinct !{!7565, !7562, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultIBv_TbNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtB4_2io5error5ErrorEINtNtBR_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EE6unwrapCs6u1mgJOKDyY_13rust_analyzer: argument 2"}
!7566 = distinct !{!7566, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultTbNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtB4_2io5error5ErrorEECs6u1mgJOKDyY_13rust_analyzer"}
!7567 = distinct !{!7567, !7566, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultTbNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtB4_2io5error5ErrorEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7568 = distinct !{!7568, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6u1mgJOKDyY_13rust_analyzer"}
!7569 = distinct !{!7569, !7568, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7570 = distinct !{!7570, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs6u1mgJOKDyY_13rust_analyzer"}
!7571 = distinct !{!7571, !7570, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7572 = !{!7563}
!7573 = !{!7564}
!7574 = !{!7563, !7564, !7565}
!7575 = !{!7563, !7564}
!7576 = !{!7565}
!7577 = !{!7569, !7567}
!7578 = !{!7571}
!7579 = distinct !{!7579, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_uNtCsdRkQxkTxnTp_6anyhow5ErrorEINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6u1mgJOKDyY_13rust_analyzer"}
!7580 = distinct !{!7580, !7579, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_uNtCsdRkQxkTxnTp_6anyhow5ErrorEINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7581 = distinct !{!7581, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCsdRkQxkTxnTp_6anyhow5ErrorEECs6u1mgJOKDyY_13rust_analyzer"}
!7582 = distinct !{!7582, !7581, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCsdRkQxkTxnTp_6anyhow5ErrorEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7583 = distinct !{!7583, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs6u1mgJOKDyY_13rust_analyzer"}
!7584 = distinct !{!7584, !7583, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7585 = distinct !{!7585, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultIBv_uNtCsdRkQxkTxnTp_6anyhow5ErrorEINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EE6unwrapCs6u1mgJOKDyY_13rust_analyzer"}
!7586 = distinct !{!7586, !7585, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultIBv_uNtCsdRkQxkTxnTp_6anyhow5ErrorEINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EE6unwrapCs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!7587 = distinct !{!7587, !7585, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultIBv_uNtCsdRkQxkTxnTp_6anyhow5ErrorEINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EE6unwrapCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7588 = !{!7580}
!7589 = !{!7582, !7580}
!7590 = !{!7584}
!7591 = !{!7584, !7580}
!7592 = !{!7587, !7586}
!7593 = !{!7587}
!7594 = distinct !{!7594, !"_RNvMs1_NtNtCscAsMj0W7j8b_3std6thread9lifecycleINtB5_9JoinInneruE4joinCs6u1mgJOKDyY_13rust_analyzer"}
!7595 = distinct !{!7595, !7594, !"_RNvMs1_NtNtCscAsMj0W7j8b_3std6thread9lifecycleINtB5_9JoinInneruE4joinCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7596 = distinct !{!7596, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std6thread6thread6ThreadECs6u1mgJOKDyY_13rust_analyzer"}
!7597 = distinct !{!7597, !7596, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std6thread6thread6ThreadECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7598 = distinct !{!7598, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtNtCscAsMj0W7j8b_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECs6u1mgJOKDyY_13rust_analyzer"}
!7599 = distinct !{!7599, !7598, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtNtCscAsMj0W7j8b_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7600 = distinct !{!7600, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtNtCscAsMj0W7j8b_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECs6u1mgJOKDyY_13rust_analyzer"}
!7601 = distinct !{!7601, !7600, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtNtCscAsMj0W7j8b_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7602 = distinct !{!7602, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCscAsMj0W7j8b_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer"}
!7603 = distinct !{!7603, !7602, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCscAsMj0W7j8b_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7604 = distinct !{!7604, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std6thread6thread6ThreadECs6u1mgJOKDyY_13rust_analyzer"}
!7605 = distinct !{!7605, !7604, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std6thread6thread6ThreadECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7606 = distinct !{!7606, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtNtCscAsMj0W7j8b_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECs6u1mgJOKDyY_13rust_analyzer"}
!7607 = distinct !{!7607, !7606, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtNtCscAsMj0W7j8b_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7608 = distinct !{!7608, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtNtCscAsMj0W7j8b_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECs6u1mgJOKDyY_13rust_analyzer"}
!7609 = distinct !{!7609, !7608, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtNtCscAsMj0W7j8b_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7610 = distinct !{!7610, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCscAsMj0W7j8b_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer"}
!7611 = distinct !{!7611, !7610, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCscAsMj0W7j8b_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7612 = distinct !{!7612, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtNtCscAsMj0W7j8b_3std6thread9lifecycle6PacketuEEECs6u1mgJOKDyY_13rust_analyzer"}
!7613 = distinct !{!7613, !7612, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtNtCscAsMj0W7j8b_3std6thread9lifecycle6PacketuEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7614 = distinct !{!7614, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcINtNtNtCscAsMj0W7j8b_3std6thread9lifecycle6PacketuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer"}
!7615 = distinct !{!7615, !7614, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcINtNtNtCscAsMj0W7j8b_3std6thread9lifecycle6PacketuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7616 = distinct !{!7616, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtNtCscAsMj0W7j8b_3std6thread9lifecycle6PacketuEEECs6u1mgJOKDyY_13rust_analyzer"}
!7617 = distinct !{!7617, !7616, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtNtCscAsMj0W7j8b_3std6thread9lifecycle6PacketuEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7618 = distinct !{!7618, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcINtNtNtCscAsMj0W7j8b_3std6thread9lifecycle6PacketuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer"}
!7619 = distinct !{!7619, !7618, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcINtNtNtCscAsMj0W7j8b_3std6thread9lifecycle6PacketuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7620 = distinct !{!7620, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtNtCscAsMj0W7j8b_3std6thread9lifecycle6PacketuEEECs6u1mgJOKDyY_13rust_analyzer"}
!7621 = distinct !{!7621, !7620, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtNtCscAsMj0W7j8b_3std6thread9lifecycle6PacketuEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7622 = distinct !{!7622, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcINtNtNtCscAsMj0W7j8b_3std6thread9lifecycle6PacketuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer"}
!7623 = distinct !{!7623, !7622, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcINtNtNtCscAsMj0W7j8b_3std6thread9lifecycle6PacketuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7624 = distinct !{!7624, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs6u1mgJOKDyY_13rust_analyzer"}
!7625 = distinct !{!7625, !7624, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7626 = !{!7595}
!7627 = !{!7597}
!7628 = !{!7599}
!7629 = !{!7601}
!7630 = !{!7603}
!7631 = !{!7603, !7601, !7599, !7597, !7595}
!7632 = !{!7605}
!7633 = !{!7607}
!7634 = !{!7609}
!7635 = !{!7611}
!7636 = !{!7611, !7609, !7607, !7605, !7595}
!7637 = !{!7613}
!7638 = !{!7615}
!7639 = !{!7615, !7613, !7595}
!7640 = !{!7615, !7613}
!7641 = !{!7617}
!7642 = !{!7619}
!7643 = !{!7619, !7617, !7595}
!7644 = !{!7619, !7617}
!7645 = !{!7621}
!7646 = !{!7623}
!7647 = !{!7623, !7621, !7595}
!7648 = !{!7623, !7621}
!7649 = !{!7625}
!7650 = distinct !{!7650, !"_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator3nthCs6u1mgJOKDyY_13rust_analyzer"}
!7651 = distinct !{!7651, !7650, !"_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator3nthCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7652 = distinct !{!7652, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCs6u1mgJOKDyY_13rust_analyzer"}
!7653 = distinct !{!7653, !7652, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7654 = distinct !{!7654, !"_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator3nthCs6u1mgJOKDyY_13rust_analyzer"}
!7655 = distinct !{!7655, !7654, !"_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator3nthCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7656 = distinct !{!7656, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCs6u1mgJOKDyY_13rust_analyzer"}
!7657 = distinct !{!7657, !7656, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7658 = !{!7653, !7651}
!7659 = !{!7651}
!7660 = !{!7657, !7655}
!7661 = !{!7655}
!7662 = distinct !{!7662, !"_RINvYINtNtNtCshzWfHUSfYae_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECs6u1mgJOKDyY_13rust_analyzer"}
!7663 = distinct !{!7663, !7662, !"_RINvYINtNtNtCshzWfHUSfYae_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7664 = distinct !{!7664, !"_RNvXsX_NtNtCshzWfHUSfYae_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer"}
!7665 = distinct !{!7665, !7664, !"_RNvXsX_NtNtCshzWfHUSfYae_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7666 = distinct !{!7666, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCs6u1mgJOKDyY_13rust_analyzer"}
!7667 = distinct !{!7667, !7666, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7668 = distinct !{!7668, !7664, !"_RNvXsX_NtNtCshzWfHUSfYae_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer: argument 0:Peel0"}
!7669 = distinct !{!7669, !7666, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCs6u1mgJOKDyY_13rust_analyzer: argument 0:Peel0"}
!7670 = distinct !{!7670, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs6u1mgJOKDyY_13rust_analyzer"}
!7671 = distinct !{!7671, !7670, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7672 = distinct !{!7672, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!7673 = distinct !{!7673, !7672, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!7674 = distinct !{!7674, !7672, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!7675 = distinct !{!7675, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr"}
!7676 = distinct !{!7676, !7675, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr: argument 0"}
!7677 = !{!7663}
!7678 = !{!7667, !7665, !7663}
!7679 = !{!7671, !7669, !7668, !7663}
!7680 = !{!7665}
!7681 = !{!7667}
!7682 = !{!7673}
!7683 = !{!7671, !7667, !7665, !7663}
!7684 = !{!7673, !7667, !7665, !7663}
!7685 = !{!7674}
!7686 = !{!7674, !7673, !7667, !7665, !7663}
!7687 = !{!7676}
!7688 = distinct !{!7688, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back"}
!7689 = distinct !{!7689, !7688, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 1"}
!7690 = distinct !{!7690, !7688, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 0"}
!7691 = !{!7690, !7689}
!7692 = distinct !{!7692, !"_RNvXs5_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core5clone5Clone5clone"}
!7693 = distinct !{!7693, !7692, !"_RNvXs5_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core5clone5Clone5clone: argument 1"}
!7694 = distinct !{!7694, !7692, !"_RNvXs5_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core5clone5Clone5clone: argument 0"}
!7695 = distinct !{!7695, !"_RNvXsd_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer"}
!7696 = distinct !{!7696, !7695, !"_RNvXsd_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7697 = distinct !{null}
!7698 = distinct !{!7698, !"_RNvXNtNtCshzWfHUSfYae_4core5clone6uninitNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprNtB2_8CopySpec9clone_oneCs6u1mgJOKDyY_13rust_analyzer"}
!7699 = distinct !{!7699, !7698, !"_RNvXNtNtCshzWfHUSfYae_4core5clone6uninitNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprNtB2_8CopySpec9clone_oneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7700 = distinct !{null, null}
!7701 = !{!7693}
!7702 = !{!7694}
!7703 = !{!7694, !7693}
!7704 = !{!7696}
!7705 = !{!7699, !7696}
!7706 = distinct !{!7706, !"_RNvXsi_Cs2vT3jxLudSK_3urlNtB5_3UrlNtNtCshzWfHUSfYae_4core5clone5Clone5clone"}
!7707 = distinct !{!7707, !7706, !"_RNvXsi_Cs2vT3jxLudSK_3urlNtB5_3UrlNtNtCshzWfHUSfYae_4core5clone5Clone5clone: argument 0"}
!7708 = distinct !{!7708, !7706, !"_RNvXsi_Cs2vT3jxLudSK_3urlNtB5_3UrlNtNtCshzWfHUSfYae_4core5clone5Clone5clone: argument 1"}
!7709 = distinct !{!7709, !"_RNvXsxX_NtNtCs1lnireelaHN_13gen_lsp_types9generated10structuresNtB6_17CodeActionContextNtNtCshzWfHUSfYae_4core5clone5Clone5clone"}
!7710 = distinct !{!7710, !7709, !"_RNvXsxX_NtNtCs1lnireelaHN_13gen_lsp_types9generated10structuresNtB6_17CodeActionContextNtNtCshzWfHUSfYae_4core5clone5Clone5clone: argument 0"}
!7711 = distinct !{!7711, !7709, !"_RNvXsxX_NtNtCs1lnireelaHN_13gen_lsp_types9generated10structuresNtB6_17CodeActionContextNtNtCshzWfHUSfYae_4core5clone5Clone5clone: argument 1"}
!7712 = !{!7707}
!7713 = !{!7708}
!7714 = !{!7707, !7708}
!7715 = !{!7710}
!7716 = !{!7711}
!7717 = !{!7710, !7711}
!7718 = distinct !{!7718, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr"}
!7719 = distinct !{!7719, !7718, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr: argument 0"}
!7720 = distinct !{!7720, !"_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains"}
!7721 = distinct !{!7721, !7720, !"_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains: argument 0"}
!7722 = distinct !{!7722, !7720, !"_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains: argument 1"}
!7723 = distinct !{!7723, !"_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECs6u1mgJOKDyY_13rust_analyzer"}
!7724 = distinct !{!7724, !7723, !"_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!7725 = distinct !{!7725, !7723, !"_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7726 = distinct !{!7726, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6u1mgJOKDyY_13rust_analyzer"}
!7727 = distinct !{!7727, !7726, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7728 = distinct !{!7728, !"_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains0Cs6u1mgJOKDyY_13rust_analyzer"}
!7729 = distinct !{!7729, !7728, !"_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains0Cs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7730 = distinct !{!7730, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECs6u1mgJOKDyY_13rust_analyzer"}
!7731 = distinct !{!7731, !7730, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!7732 = distinct !{!7732, !7730, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7733 = distinct !{!7733, !"_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss1_0Cs6u1mgJOKDyY_13rust_analyzer"}
!7734 = distinct !{!7734, !7733, !"_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss1_0Cs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7735 = distinct !{!7735, !"_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss1_0Cs6u1mgJOKDyY_13rust_analyzer"}
!7736 = distinct !{!7736, !7735, !"_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss1_0Cs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7737 = distinct !{!7737, !"_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss1_0Cs6u1mgJOKDyY_13rust_analyzer"}
!7738 = distinct !{!7738, !7737, !"_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss1_0Cs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7739 = !{!7719}
!7740 = !{!7721}
!7741 = !{!7722}
!7742 = !{!7729, !7727, !7725, !7724, !7722}
!7743 = !{!7729, !7727, !7725, !7724, !7721, !7722}
!7744 = !{!7721, !7722}
!7745 = !{!7732, !7731}
!7746 = !{!7734, !7721}
!7747 = !{!7736, !7721}
!7748 = !{!7738, !7721}
!7749 = distinct !{!7749, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!7750 = distinct !{!7750, !7749, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!7751 = distinct !{!7751, !7749, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!7752 = distinct !{!7752, !7749, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!7753 = distinct !{!7753, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!7754 = distinct !{!7754, !7753, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!7755 = distinct !{!7755, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs6u1mgJOKDyY_13rust_analyzer"}
!7756 = distinct !{!7756, !7755, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7757 = distinct !{!7757, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs6u1mgJOKDyY_13rust_analyzer"}
!7758 = distinct !{!7758, !7757, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7759 = distinct !{!7759, !7757, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!7760 = distinct !{!7760, !7757, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs6u1mgJOKDyY_13rust_analyzer: argument 2"}
!7761 = distinct !{!7761, !7757, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs6u1mgJOKDyY_13rust_analyzer: argument 3"}
!7762 = distinct !{!7762, !"_RNvXsy_NtNtCshzWfHUSfYae_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!7763 = distinct !{!7763, !7762, !"_RNvXsy_NtNtCshzWfHUSfYae_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!7764 = distinct !{!7764, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs6u1mgJOKDyY_13rust_analyzer"}
!7765 = distinct !{!7765, !7764, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7766 = distinct !{!7766, !7764, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!7767 = distinct !{!7767, !7764, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs6u1mgJOKDyY_13rust_analyzer: argument 2"}
!7768 = distinct !{!7768, !7764, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs6u1mgJOKDyY_13rust_analyzer: argument 3"}
!7769 = distinct !{!7769, !"_RNvXsy_NtNtCshzWfHUSfYae_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!7770 = distinct !{!7770, !7769, !"_RNvXsy_NtNtCshzWfHUSfYae_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!7771 = !{!7750}
!7772 = !{!7751}
!7773 = !{!7752}
!7774 = !{!7754}
!7775 = !{!7751, !7752}
!7776 = !{!7756, !7751, !7752}
!7777 = !{!7751, !7750}
!7778 = !{!7756, !7751, !7750}
!7779 = !{!7758}
!7780 = !{!7759}
!7781 = !{!7760}
!7782 = !{!7761}
!7783 = !{!7758, !7760, !7761}
!7784 = !{!7758, !7759, !7761}
!7785 = !{!7758, !7759, !7760}
!7786 = !{!7763, !7758}
!7787 = !{!7759, !7760, !7761}
!7788 = !{!7758, !7759, !7760, !7761}
!7789 = !{!7765}
!7790 = !{!7766}
!7791 = !{!7767}
!7792 = !{!7768}
!7793 = !{!7765, !7767, !7768}
!7794 = !{!7765, !7766, !7768}
!7795 = !{!7765, !7766, !7767}
!7796 = !{!7765, !7766, !7767, !7768}
!7797 = !{!7770, !7765}
!7798 = !{!7766, !7767, !7768}
!7799 = distinct !{!7799, !"_RNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs6u1mgJOKDyY_13rust_analyzer"}
!7800 = distinct !{!7800, !7799, !"_RNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7801 = distinct !{!7801, !"_RINvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCshzWfHUSfYae_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECs6u1mgJOKDyY_13rust_analyzer"}
!7802 = distinct !{!7802, !7801, !"_RINvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCshzWfHUSfYae_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7803 = !{!7802, !7800}
!7804 = distinct !{!7804, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug"}
!7805 = distinct !{!7805, !7804, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug: argument 0"}
!7806 = distinct !{!7806, !7804, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug: argument 1"}
!7807 = distinct !{!7807, !7804, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug: argument 2"}
!7808 = !{!7805}
!7809 = !{!7806}
!7810 = !{!7805, !7806, !7807}
!7811 = !{!7806, !7807}
!7812 = !{!7805, !7807}
!7813 = !{!7805, !7806}
!7814 = distinct !{!7814, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug"}
!7815 = distinct !{!7815, !7814, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug: argument 0"}
!7816 = distinct !{!7816, !7814, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug: argument 1"}
!7817 = distinct !{!7817, !7814, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug: argument 2"}
!7818 = !{!7815}
!7819 = !{!7816}
!7820 = !{!7815, !7816, !7817}
!7821 = !{!7816, !7817}
!7822 = !{!7815, !7817}
!7823 = !{!7815, !7816}
!7824 = distinct !{!7824, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug"}
!7825 = distinct !{!7825, !7824, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug: argument 0"}
!7826 = distinct !{!7826, !7824, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug: argument 1"}
!7827 = distinct !{!7827, !7824, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug: argument 2"}
!7828 = !{!7825}
!7829 = !{!7826}
!7830 = !{!7825, !7826, !7827}
!7831 = !{!7826, !7827}
!7832 = !{!7825, !7827}
!7833 = !{!7825, !7826}
!7834 = distinct !{!7834, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug"}
!7835 = distinct !{!7835, !7834, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug: argument 0"}
!7836 = distinct !{!7836, !7834, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug: argument 1"}
!7837 = distinct !{!7837, !7834, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug: argument 2"}
!7838 = !{!7835}
!7839 = !{!7836}
!7840 = !{!7835, !7836, !7837}
!7841 = !{!7836, !7837}
!7842 = !{!7835, !7837}
!7843 = !{!7835, !7836}
!7844 = distinct !{!7844, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug"}
!7845 = distinct !{!7845, !7844, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug: argument 0"}
!7846 = distinct !{!7846, !7844, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug: argument 1"}
!7847 = distinct !{!7847, !7844, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug: argument 2"}
!7848 = !{!7845}
!7849 = !{!7846}
!7850 = !{!7845, !7846, !7847}
!7851 = !{!7846, !7847}
!7852 = !{!7845, !7847}
!7853 = !{!7845, !7846}
!7854 = distinct !{!7854, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug"}
!7855 = distinct !{!7855, !7854, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug: argument 0"}
!7856 = distinct !{!7856, !7854, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug: argument 1"}
!7857 = distinct !{!7857, !7854, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug: argument 2"}
!7858 = !{!7855}
!7859 = !{!7856}
!7860 = !{!7855, !7856, !7857}
!7861 = !{!7856, !7857}
!7862 = !{!7855, !7857}
!7863 = !{!7855, !7856}
!7864 = distinct !{!7864, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug"}
!7865 = distinct !{!7865, !7864, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug: argument 0"}
!7866 = distinct !{!7866, !7864, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug: argument 1"}
!7867 = distinct !{!7867, !7864, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug: argument 2"}
!7868 = !{!7865}
!7869 = !{!7866}
!7870 = !{!7865, !7866, !7867}
!7871 = !{!7866, !7867}
!7872 = !{!7865, !7867}
!7873 = !{!7865, !7866}
!7874 = distinct !{!7874, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug"}
!7875 = distinct !{!7875, !7874, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug: argument 0"}
!7876 = distinct !{!7876, !7874, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug: argument 1"}
!7877 = distinct !{!7877, !7874, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug: argument 2"}
!7878 = !{!7875}
!7879 = !{!7876}
!7880 = !{!7875, !7876, !7877}
!7881 = !{!7876, !7877}
!7882 = !{!7875, !7877}
!7883 = !{!7875, !7876}
!7884 = distinct !{!7884, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug"}
!7885 = distinct !{!7885, !7884, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug: argument 0"}
!7886 = distinct !{!7886, !7884, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug: argument 1"}
!7887 = distinct !{!7887, !7884, !"_RNvXs0_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11DataVisitorNtNtCsaMQbKjKCVRW_12tracing_core5field5Visit12record_debug: argument 2"}
!7888 = !{!7885}
!7889 = !{!7886}
!7890 = !{!7885, !7886, !7887}
!7891 = !{!7886, !7887}
!7892 = !{!7885, !7887}
!7893 = !{!7885, !7886}
!7894 = distinct !{!7894, !"_RINvXs_NtNtCsiS54oC2UhYT_4toml2de5errorNtB5_5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error6customNtNtCshzWfHUSfYae_4core3fmt9ArgumentsECs6u1mgJOKDyY_13rust_analyzer"}
!7895 = distinct !{!7895, !7894, !"_RINvXs_NtNtCsiS54oC2UhYT_4toml2de5errorNtB5_5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error6customNtNtCshzWfHUSfYae_4core3fmt9ArgumentsECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7896 = distinct !{!7896, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs6u1mgJOKDyY_13rust_analyzer"}
!7897 = distinct !{!7897, !7896, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!7898 = !{!7895}
!7899 = !{!7897, !7895}
!7900 = distinct !{!7900, !"_RINvXs_NtNtCsiS54oC2UhYT_4toml2de5errorNtB5_5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error6customNtNtCshzWfHUSfYae_4core3fmt9ArgumentsECs6u1mgJOKDyY_13rust_analyzer"}
!7901 = distinct !{!7901, !7900, !"_RINvXs_NtNtCsiS54oC2UhYT_4toml2de5errorNtB5_5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error6customNtNtCshzWfHUSfYae_4core3fmt9ArgumentsECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7902 = distinct !{!7902, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs6u1mgJOKDyY_13rust_analyzer"}
!7903 = distinct !{!7903, !7902, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!7904 = !{!7901}
!7905 = !{!7903, !7901}
!7906 = distinct !{!7906, !"_RINvXs_NtNtCsiS54oC2UhYT_4toml2de5errorNtB5_5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error6customNtNtCshzWfHUSfYae_4core3fmt9ArgumentsECs6u1mgJOKDyY_13rust_analyzer"}
!7907 = distinct !{!7907, !7906, !"_RINvXs_NtNtCsiS54oC2UhYT_4toml2de5errorNtB5_5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error6customNtNtCshzWfHUSfYae_4core3fmt9ArgumentsECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7908 = distinct !{!7908, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs6u1mgJOKDyY_13rust_analyzer"}
!7909 = distinct !{!7909, !7908, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!7910 = !{!7907}
!7911 = !{!7909, !7907}
!7912 = distinct !{!7912, !"_RINvXs_NtNtCsiS54oC2UhYT_4toml2de5errorNtB5_5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error6customNtNtCshzWfHUSfYae_4core3fmt9ArgumentsECs6u1mgJOKDyY_13rust_analyzer"}
!7913 = distinct !{!7913, !7912, !"_RINvXs_NtNtCsiS54oC2UhYT_4toml2de5errorNtB5_5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error6customNtNtCshzWfHUSfYae_4core3fmt9ArgumentsECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7914 = distinct !{!7914, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs6u1mgJOKDyY_13rust_analyzer"}
!7915 = distinct !{!7915, !7914, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!7916 = !{!7913}
!7917 = !{!7915, !7913}
!7918 = distinct !{!7918, !"_RINvXs_NtNtCsiS54oC2UhYT_4toml2de5errorNtB5_5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error6customNtNtCshzWfHUSfYae_4core3fmt9ArgumentsECs6u1mgJOKDyY_13rust_analyzer"}
!7919 = distinct !{!7919, !7918, !"_RINvXs_NtNtCsiS54oC2UhYT_4toml2de5errorNtB5_5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error6customNtNtCshzWfHUSfYae_4core3fmt9ArgumentsECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7920 = distinct !{!7920, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs6u1mgJOKDyY_13rust_analyzer"}
!7921 = distinct !{!7921, !7920, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!7922 = !{!7919}
!7923 = !{!7921, !7919}
!7924 = distinct !{!7924, !"_RINvXs_NtNtCsiS54oC2UhYT_4toml2de5errorNtB5_5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error6customNtNtCshzWfHUSfYae_4core3fmt9ArgumentsECs6u1mgJOKDyY_13rust_analyzer"}
!7925 = distinct !{!7925, !7924, !"_RINvXs_NtNtCsiS54oC2UhYT_4toml2de5errorNtB5_5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error6customNtNtCshzWfHUSfYae_4core3fmt9ArgumentsECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7926 = distinct !{!7926, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs6u1mgJOKDyY_13rust_analyzer"}
!7927 = distinct !{!7927, !7926, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!7928 = distinct !{!7928, !"_RINvXs_NtNtCsiS54oC2UhYT_4toml2de5errorNtB5_5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error6customNtNtCshzWfHUSfYae_4core3fmt9ArgumentsECs6u1mgJOKDyY_13rust_analyzer"}
!7929 = distinct !{!7929, !7928, !"_RINvXs_NtNtCsiS54oC2UhYT_4toml2de5errorNtB5_5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error6customNtNtCshzWfHUSfYae_4core3fmt9ArgumentsECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!7930 = distinct !{!7930, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs6u1mgJOKDyY_13rust_analyzer"}
!7931 = distinct !{!7931, !7930, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!7932 = !{!7925}
!7933 = !{!7927, !7925}
!7934 = !{!7929}
!7935 = !{!7931, !7929}
end_hunk_1
