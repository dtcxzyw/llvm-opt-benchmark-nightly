Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir-4fc055f1ab98df9a.hir.68581c9154c06fea-cgu.06?download=true
inline.NumInlined: 1365
inline.NumDeleted: 581
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE10drop_innerCs8Xq8PKFYOms_3hir:bb.a
; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts13ConstInternedE10drop_innerCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts13ConstInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #33
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6region14RegionInternedE10drop_innerCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6region14RegionInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #33
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtree15ValTreeInternedE10drop_innerCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtree15ValTreeInternedE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #33
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorE10drop_innerCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #33
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcTNtCs33K2ylI4knu_10hir_expand15ExpandErrorKindNtCsdovh4xi6v3I_4span4SpanEE10drop_innerCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcTNtCs33K2ylI4knu_10hir_expand15ExpandErrorKindNtCsdovh4xi6v3I_4span4SpanEE9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #33
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArceE10drop_innerCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArceE9drop_slowCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #33
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEINtB2_10EquivalentBq_E10equivalentCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #10 {
bb.a:
  %.val = load i32, ptr %0, align 4, !noundef !4
  %.val1 = load i32, ptr %1, align 4, !noundef !4
  %i.a = icmp eq i32 %.val, %.val1
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtB2_10EquivalentBq_E10equivalentCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #10 {
bb.a:
  %.val = load i32, ptr %0, align 4, !noundef !4
  %.val1 = load i32, ptr %1, align 4, !noundef !4
  %i.a = icmp eq i32 %.val, %.val1
  ret i1 %i.a
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvXNvNtNtCscAsMj0W7j8b_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop() unnamed_addr #11 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = call fastcc noundef ptr @_RNvYNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrNtNtNtCshzWfHUSfYae_4core2io5write5Write9write_fmtCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull %i.a, ptr noundef nonnull @39, ptr noundef nonnull inttoptr (i64 123 to ptr))
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8Xq8PKFYOms_3hir(ptr %i.b)
  call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCshzWfHUSfYae_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = tail call fastcc noundef ptr @_RNvYNtNtNtNtCscAsMj0W7j8b_3std3sys5stdio4unix6StderrNtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8Xq8PKFYOms_3hir.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8Xq8PKFYOms_3hir.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8Xq8PKFYOms_3hir.exit.i
    i64 1, label %bb.e
  ], !prof !12

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8Xq8PKFYOms_3hir.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !1286
  store i8 3, ptr %i.a, align 8, !alias.scope !1286
  invoke void @_RNvXsd_NtNtCshzWfHUSfYae_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8Xq8PKFYOms_3hir.exit.i unwind label %bb.g

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8Xq8PKFYOms_3hir.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8Xq8PKFYOms_3hir.exit

bb.f:                                             ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8Xq8PKFYOms_3hir.exit
  ret i1 %.not

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  store ptr %i.c, ptr %i.d, align 8
  resume { ptr, i32 } %i.m

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8Xq8PKFYOms_3hir.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8Xq8PKFYOms_3hir.exit.i, %bb.b
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_10filter_map9FilterMapINtNtB7_7flatten7FlatMapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1V_9generated5nodes4AttrEINtCsjpcu9PwIgok_8smallvec8SmallVecANtB2B_4Metaj1_ENCNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB43_14SourceToDefCtx18derive_macro_calls00ENCB3W_s_0ENCB3W_s0_0ENCNCNCNCINvMs6_B45_NtB45_13SemanticsImpl24descend_into_macros_implINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtB1X_11syntax_node12RustLanguageEEs2_0s_000ENtNtNtB9_6traits8iterator8Iterator4nextB47_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.6 = alloca [28 x i8], align 4            ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtB7_7flatten7FlatMapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1R_9generated5nodes4AttrEINtCsjpcu9PwIgok_8smallvec8SmallVecANtB2x_4Metaj1_ENCNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB3Z_14SourceToDefCtx18derive_macro_calls00ENCB3S_s_0ENCB3S_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB43_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef align 8 dereferenceable(120) %1) #38
  %i.d = load i32, ptr %i.c, align 8, !noundef !4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = load <2 x i32>, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.58.0.copyload = load i32, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.710.0.copyload = load ptr, ptr %.sroa.710.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1299
  %i.e = mul nuw nsw i64 %.sroa.8.0.copyload, 12  ; 2 uses
  %i.f = icmp eq i64 %.sroa.8.0.copyload, 0
  br i1 %i.f, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8Xq8PKFYOms_3hir.exit.thread.i.i, label %bb.c

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8Xq8PKFYOms_3hir.exit.thread.i.i: ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !noalias !1299
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.g, align 8, !noalias !1299
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RNCNCNCNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBe_13SemanticsImpl24descend_into_macros_implINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEs2_0s_000Bg_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !1300
  %i.i = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, -9223372036854775807) 4) #30, !noalias !1300 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %.lr.ph.preheader.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.e) #35, !noalias !1299
  unreachable

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  store i64 %.sroa.8.0.copyload, ptr %i.b, align 8, !noalias !1299
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %i.k, align 8, !noalias !1299
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %.sroa.710.0.copyload, i64 %.sroa.8.0.copyload
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.012.023.i.i = phi ptr [ %i.p, %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i ], [ %.sroa.710.0.copyload, %.lr.ph.preheader.i.i ] ; 4 uses
  %.sroa.7.022.i.i = phi i64 [ %i.q, %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.10.021.i.i = phi i64 [ %i.n, %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i ], [ %.sroa.8.0.copyload, %.lr.ph.preheader.i.i ]
  %i.n = add nsw i64 %.sroa.10.021.i.i, -1        ; 2 uses
  %i.o = icmp eq ptr %.sroa.012.023.i.i, %i.m
  br i1 %i.o, label %_RNCNCNCNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBe_13SemanticsImpl24descend_into_macros_implINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEs2_0s_000Bg_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i, i64 12
  %i.q = add nuw nsw i64 %.sroa.7.022.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1299
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  %i.r = load i32, ptr %.sroa.012.023.i.i, align 4, !range !22, !alias.scope !1303, !noalias !1304, !noundef !4
  %.not.i.i.i = icmp eq i32 %i.r, 2
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXCs83ee1IJTiSq_6eitherINtB2_6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %.sroa.012.023.i.i)
          to label %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i unwind label %bb.i, !noalias !1305

bb.g:                                             ; preds = %bb.e
  store i32 2, ptr %i.a, align 4, !alias.scope !1301, !noalias !1299
  br label %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i

_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i: ; preds = %bb.g, %bb.f
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %.sroa.7.022.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false), !noalias !1305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1299
  %i.t = icmp eq i64 %i.n, 0
  br i1 %i.t, label %_RNCNCNCNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBe_13SemanticsImpl24descend_into_macros_implINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEs2_0s_000Bg_.exit, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #37, !noalias !1305
  unreachable

bb.i:                                             ; preds = %bb.f
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i.i, ptr %i.l, align 8, !noalias !1299
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEECs8Xq8PKFYOms_3hir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #36
          to label %bb.j unwind label %bb.h, !noalias !1305

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.loopexit.i.i

_RNCNCNCNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBe_13SemanticsImpl24descend_into_macros_implINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEs2_0s_000Bg_.exit: ; preds = %.lr.ph.i.i, %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8Xq8PKFYOms_3hir.exit.thread.i.i
  %i.v = phi ptr [ %i.h, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8Xq8PKFYOms_3hir.exit.thread.i.i ], [ %i.l, %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i ], [ %i.l, %.lr.ph.i.i ]
  store i64 %.sroa.8.0.copyload, ptr %i.v, align 8, !noalias !1299
  %.sroa.6.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.6.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1299
  store <2 x i32> %2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.58.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %i.w, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RNCNCNCNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBe_13SemanticsImpl24descend_into_macros_implINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEs2_0s_000Bg_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_10filter_map9FilterMapINtNtB7_7flatten7FlatMapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1V_9generated5nodes4AttrEINtCsjpcu9PwIgok_8smallvec8SmallVecANtB2B_4Metaj1_ENCNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB43_14SourceToDefCtx18derive_macro_calls00ENCB3W_s_0ENCB3W_s0_0ENCNCNCNCINvMs6_B45_NtB45_13SemanticsImpl24descend_into_macros_implINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtB45_14PathResolutionNtB47_16InlineAsmOperandEEEEEs2_0s_000ENtNtNtB9_6traits8iterator8Iterator4nextB47_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.6 = alloca [28 x i8], align 4            ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtB7_7flatten7FlatMapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1R_9generated5nodes4AttrEINtCsjpcu9PwIgok_8smallvec8SmallVecANtB2x_4Metaj1_ENCNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB3Z_14SourceToDefCtx18derive_macro_calls00ENCB3S_s_0ENCB3S_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB43_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef align 8 dereferenceable(120) %1) #38
  %i.d = load i32, ptr %i.c, align 8, !noundef !4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = load <2 x i32>, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.58.0.copyload = load i32, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.710.0.copyload = load ptr, ptr %.sroa.710.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1319
  %i.e = mul nuw nsw i64 %.sroa.8.0.copyload, 12  ; 2 uses
  %i.f = icmp eq i64 %.sroa.8.0.copyload, 0
  br i1 %i.f, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8Xq8PKFYOms_3hir.exit.thread.i.i, label %bb.c

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8Xq8PKFYOms_3hir.exit.thread.i.i: ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !noalias !1319
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.g, align 8, !noalias !1319
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RNCNCNCNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBe_13SemanticsImpl24descend_into_macros_implINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtBe_14PathResolutionNtBg_16InlineAsmOperandEEEEEs2_0s_000Bg_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !1320
  %i.i = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, -9223372036854775807) 4) #30, !noalias !1320 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %.lr.ph.preheader.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.e) #35, !noalias !1319
  unreachable

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  store i64 %.sroa.8.0.copyload, ptr %i.b, align 8, !noalias !1319
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %i.k, align 8, !noalias !1319
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %.sroa.710.0.copyload, i64 %.sroa.8.0.copyload
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.012.023.i.i = phi ptr [ %i.p, %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i ], [ %.sroa.710.0.copyload, %.lr.ph.preheader.i.i ] ; 4 uses
  %.sroa.7.022.i.i = phi i64 [ %i.q, %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.10.021.i.i = phi i64 [ %i.n, %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i ], [ %.sroa.8.0.copyload, %.lr.ph.preheader.i.i ]
  %i.n = add nsw i64 %.sroa.10.021.i.i, -1        ; 2 uses
  %i.o = icmp eq ptr %.sroa.012.023.i.i, %i.m
  br i1 %i.o, label %_RNCNCNCNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBe_13SemanticsImpl24descend_into_macros_implINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtBe_14PathResolutionNtBg_16InlineAsmOperandEEEEEs2_0s_000Bg_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i, i64 12
  %i.q = add nuw nsw i64 %.sroa.7.022.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1319
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  %i.r = load i32, ptr %.sroa.012.023.i.i, align 4, !range !22, !alias.scope !1323, !noalias !1324, !noundef !4
  %.not.i.i.i = icmp eq i32 %i.r, 2
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXCs83ee1IJTiSq_6eitherINtB2_6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %.sroa.012.023.i.i)
          to label %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i unwind label %bb.i, !noalias !1325

bb.g:                                             ; preds = %bb.e
  store i32 2, ptr %i.a, align 4, !alias.scope !1321, !noalias !1319
  br label %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i

_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i: ; preds = %bb.g, %bb.f
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %.sroa.7.022.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false), !noalias !1325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1319
  %i.t = icmp eq i64 %i.n, 0
  br i1 %i.t, label %_RNCNCNCNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBe_13SemanticsImpl24descend_into_macros_implINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtBe_14PathResolutionNtBg_16InlineAsmOperandEEEEEs2_0s_000Bg_.exit, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #37, !noalias !1325
  unreachable

bb.i:                                             ; preds = %bb.f
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i.i, ptr %i.l, align 8, !noalias !1319
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEECs8Xq8PKFYOms_3hir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #36
          to label %bb.j unwind label %bb.h, !noalias !1325

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.loopexit.i.i

_RNCNCNCNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBe_13SemanticsImpl24descend_into_macros_implINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtBe_14PathResolutionNtBg_16InlineAsmOperandEEEEEs2_0s_000Bg_.exit: ; preds = %.lr.ph.i.i, %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8Xq8PKFYOms_3hir.exit.thread.i.i
  %i.v = phi ptr [ %i.h, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8Xq8PKFYOms_3hir.exit.thread.i.i ], [ %i.l, %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i ], [ %i.l, %.lr.ph.i.i ]
  store i64 %.sroa.8.0.copyload, ptr %i.v, align 8, !noalias !1319
  %.sroa.6.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.6.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1319
  store <2 x i32> %2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.58.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %i.w, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RNCNCNCNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBe_13SemanticsImpl24descend_into_macros_implINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtBe_14PathResolutionNtBg_16InlineAsmOperandEEEEEs2_0s_000Bg_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_10filter_map9FilterMapINtNtB7_7flatten7FlatMapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1V_9generated5nodes4AttrEINtCsjpcu9PwIgok_8smallvec8SmallVecANtB2B_4Metaj1_ENCNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB43_14SourceToDefCtx18derive_macro_calls00ENCB3W_s_0ENCB3W_s0_0ENCNCNCNCINvMs6_B45_NtB45_13SemanticsImpl24descend_into_macros_implNtNtBb_7convert10InfallibleEs2_0s_000ENtNtNtB9_6traits8iterator8Iterator4nextB47_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.6 = alloca [28 x i8], align 4            ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtB7_7flatten7FlatMapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1R_9generated5nodes4AttrEINtCsjpcu9PwIgok_8smallvec8SmallVecANtB2x_4Metaj1_ENCNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB3Z_14SourceToDefCtx18derive_macro_calls00ENCB3S_s_0ENCB3S_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB43_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef align 8 dereferenceable(120) %1) #38
  %i.d = load i32, ptr %i.c, align 8, !noundef !4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = load <2 x i32>, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.58.0.copyload = load i32, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.710.0.copyload = load ptr, ptr %.sroa.710.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1339
  %i.e = mul nuw nsw i64 %.sroa.8.0.copyload, 12  ; 2 uses
  %i.f = icmp eq i64 %.sroa.8.0.copyload, 0
  br i1 %i.f, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8Xq8PKFYOms_3hir.exit.thread.i.i, label %bb.c

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8Xq8PKFYOms_3hir.exit.thread.i.i: ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !noalias !1339
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.g, align 8, !noalias !1339
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RNCNCNCNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBe_13SemanticsImpl24descend_into_macros_implNtNtCshzWfHUSfYae_4core7convert10InfallibleEs2_0s_000Bg_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !1340
  %i.i = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, -9223372036854775807) 4) #30, !noalias !1340 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %.lr.ph.preheader.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.e) #35, !noalias !1339
  unreachable

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  store i64 %.sroa.8.0.copyload, ptr %i.b, align 8, !noalias !1339
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %i.k, align 8, !noalias !1339
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %.sroa.710.0.copyload, i64 %.sroa.8.0.copyload
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.012.023.i.i = phi ptr [ %i.p, %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i ], [ %.sroa.710.0.copyload, %.lr.ph.preheader.i.i ] ; 4 uses
  %.sroa.7.022.i.i = phi i64 [ %i.q, %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.10.021.i.i = phi i64 [ %i.n, %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i ], [ %.sroa.8.0.copyload, %.lr.ph.preheader.i.i ]
  %i.n = add nsw i64 %.sroa.10.021.i.i, -1        ; 2 uses
  %i.o = icmp eq ptr %.sroa.012.023.i.i, %i.m
  br i1 %i.o, label %_RNCNCNCNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBe_13SemanticsImpl24descend_into_macros_implNtNtCshzWfHUSfYae_4core7convert10InfallibleEs2_0s_000Bg_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i, i64 12
  %i.q = add nuw nsw i64 %.sroa.7.022.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1339
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  %i.r = load i32, ptr %.sroa.012.023.i.i, align 4, !range !22, !alias.scope !1343, !noalias !1344, !noundef !4
  %.not.i.i.i = icmp eq i32 %i.r, 2
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXCs83ee1IJTiSq_6eitherINtB2_6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %.sroa.012.023.i.i)
          to label %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i unwind label %bb.i, !noalias !1345

bb.g:                                             ; preds = %bb.e
  store i32 2, ptr %i.a, align 4, !alias.scope !1341, !noalias !1339
  br label %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i

_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i: ; preds = %bb.g, %bb.f
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %.sroa.7.022.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false), !noalias !1345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1339
  %i.t = icmp eq i64 %i.n, 0
  br i1 %i.t, label %_RNCNCNCNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBe_13SemanticsImpl24descend_into_macros_implNtNtCshzWfHUSfYae_4core7convert10InfallibleEs2_0s_000Bg_.exit, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #37, !noalias !1345
  unreachable

bb.i:                                             ; preds = %bb.f
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i.i, ptr %i.l, align 8, !noalias !1339
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEECs8Xq8PKFYOms_3hir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #36
          to label %bb.j unwind label %bb.h, !noalias !1345

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.loopexit.i.i

_RNCNCNCNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBe_13SemanticsImpl24descend_into_macros_implNtNtCshzWfHUSfYae_4core7convert10InfallibleEs2_0s_000Bg_.exit: ; preds = %.lr.ph.i.i, %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8Xq8PKFYOms_3hir.exit.thread.i.i
  %i.v = phi ptr [ %i.h, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8Xq8PKFYOms_3hir.exit.thread.i.i ], [ %i.l, %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i ], [ %i.l, %.lr.ph.i.i ]
  store i64 %.sroa.8.0.copyload, ptr %i.v, align 8, !noalias !1339
  %.sroa.6.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.6.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1339
  store <2 x i32> %2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.58.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %i.w, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RNCNCNCNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBe_13SemanticsImpl24descend_into_macros_implNtNtCshzWfHUSfYae_4core7convert10InfallibleEs2_0s_000Bg_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_10filter_map9FilterMapINtNtB7_7flatten7FlatMapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1V_9generated5nodes4AttrEINtCsjpcu9PwIgok_8smallvec8SmallVecANtB2B_4Metaj1_ENCNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB43_14SourceToDefCtx18derive_macro_calls00ENCB3W_s_0ENCB3W_s0_0ENCNCNCNCINvMs6_B45_NtB45_13SemanticsImpl24descend_into_macros_implTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtB7J_9HirFileIdENtNtB2D_6tokens6StringINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtB45_14PathResolutionNtB47_16InlineAsmOperandEEEEs2_0s_000ENtNtNtB9_6traits8iterator8Iterator4nextB47_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.6 = alloca [28 x i8], align 4            ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtB7_7flatten7FlatMapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1R_9generated5nodes4AttrEINtCsjpcu9PwIgok_8smallvec8SmallVecANtB2x_4Metaj1_ENCNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB3Z_14SourceToDefCtx18derive_macro_calls00ENCB3S_s_0ENCB3S_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB43_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef align 8 dereferenceable(120) %1) #38
  %i.d = load i32, ptr %i.c, align 8, !noundef !4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = load <2 x i32>, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.58.0.copyload = load i32, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.710.0.copyload = load ptr, ptr %.sroa.710.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1359
  %i.e = mul nuw nsw i64 %.sroa.8.0.copyload, 12  ; 2 uses
  %i.f = icmp eq i64 %.sroa.8.0.copyload, 0
  br i1 %i.f, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8Xq8PKFYOms_3hir.exit.thread.i.i, label %bb.c

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8Xq8PKFYOms_3hir.exit.thread.i.i: ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !noalias !1359
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.g, align 8, !noalias !1359
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RNCNCNCNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBe_13SemanticsImpl24descend_into_macros_implTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtB2f_9HirFileIdENtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtBe_14PathResolutionNtBg_16InlineAsmOperandEEEEs2_0s_000Bg_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !1360
  %i.i = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, -9223372036854775807) 4) #30, !noalias !1360 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %.lr.ph.preheader.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.e) #35, !noalias !1359
  unreachable

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  store i64 %.sroa.8.0.copyload, ptr %i.b, align 8, !noalias !1359
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %i.k, align 8, !noalias !1359
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %.sroa.710.0.copyload, i64 %.sroa.8.0.copyload
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.012.023.i.i = phi ptr [ %i.p, %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i ], [ %.sroa.710.0.copyload, %.lr.ph.preheader.i.i ] ; 4 uses
  %.sroa.7.022.i.i = phi i64 [ %i.q, %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.10.021.i.i = phi i64 [ %i.n, %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i ], [ %.sroa.8.0.copyload, %.lr.ph.preheader.i.i ]
  %i.n = add nsw i64 %.sroa.10.021.i.i, -1        ; 2 uses
  %i.o = icmp eq ptr %.sroa.012.023.i.i, %i.m
  br i1 %i.o, label %_RNCNCNCNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBe_13SemanticsImpl24descend_into_macros_implTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtB2f_9HirFileIdENtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtBe_14PathResolutionNtBg_16InlineAsmOperandEEEEs2_0s_000Bg_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i, i64 12
  %i.q = add nuw nsw i64 %.sroa.7.022.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1359
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  %i.r = load i32, ptr %.sroa.012.023.i.i, align 4, !range !22, !alias.scope !1363, !noalias !1364, !noundef !4
  %.not.i.i.i = icmp eq i32 %i.r, 2
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXCs83ee1IJTiSq_6eitherINtB2_6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %.sroa.012.023.i.i)
          to label %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i unwind label %bb.i, !noalias !1365

bb.g:                                             ; preds = %bb.e
  store i32 2, ptr %i.a, align 4, !alias.scope !1361, !noalias !1359
  br label %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i

_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i: ; preds = %bb.g, %bb.f
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %.sroa.7.022.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false), !noalias !1365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1359
  %i.t = icmp eq i64 %i.n, 0
  br i1 %i.t, label %_RNCNCNCNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBe_13SemanticsImpl24descend_into_macros_implTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtB2f_9HirFileIdENtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtBe_14PathResolutionNtBg_16InlineAsmOperandEEEEs2_0s_000Bg_.exit, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #37, !noalias !1365
  unreachable

bb.i:                                             ; preds = %bb.f
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i.i, ptr %i.l, align 8, !noalias !1359
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEECs8Xq8PKFYOms_3hir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #36
          to label %bb.j unwind label %bb.h, !noalias !1365

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.loopexit.i.i

_RNCNCNCNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBe_13SemanticsImpl24descend_into_macros_implTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtB2f_9HirFileIdENtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtBe_14PathResolutionNtBg_16InlineAsmOperandEEEEs2_0s_000Bg_.exit: ; preds = %.lr.ph.i.i, %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8Xq8PKFYOms_3hir.exit.thread.i.i
  %i.v = phi ptr [ %i.h, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8Xq8PKFYOms_3hir.exit.thread.i.i ], [ %i.l, %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEENtNtB7_5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i.i ], [ %i.l, %.lr.ph.i.i ]
  store i64 %.sroa.8.0.copyload, ptr %i.v, align 8, !noalias !1359
  %.sroa.6.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.6.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1359
  store <2 x i32> %2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.58.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %i.w, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RNCNCNCNCINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBe_13SemanticsImpl24descend_into_macros_implTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtB2f_9HirFileIdENtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtBe_14PathResolutionNtBg_16InlineAsmOperandEEEEs2_0s_000Bg_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtB7_7flatten7FlatMapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1R_9generated5nodes4AttrEINtCsjpcu9PwIgok_8smallvec8SmallVecANtB2x_4Metaj1_ENCNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB3Z_14SourceToDefCtx18derive_macro_calls00ENCB3S_s_0ENCB3S_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB43_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1425)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1430
  store ptr %i.d, ptr %i.c, align 8, !noalias !1431
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.f = load i64, ptr %i.e, align 8, !range !6, !alias.scope !1432, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_EEECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1435
  store ptr %i.c, ptr %i.b, align 8, !noalias !1436
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1437, !noundef !4 ; 2 uses
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !1437 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !1438
  %i.n = icmp ugt i64 %i.m, 1
  %i.o = load ptr, ptr %i.h, align 8, !alias.scope !1438, !nonnull !4
  %.sink11.i.i.i.i.i.i.i.i.i = select i1 %i.n, ptr %i.o, ptr %i.h
  %i.p = icmp eq i64 %.promoted.i.i.i.i.i.i.i, %i.k
  br i1 %i.p, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.q = icmp eq i64 %i.s, %i.k
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.r = phi i64 [ %i.s, %bb.c ], [ %.promoted.i.i.i.i.i.i.i, %bb.b ] ; 2 uses
  %i.s = add i64 %i.r, 1                          ; 3 uses
  store i64 %i.s, ptr %i.i, align 8, !alias.scope !1437
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.sink11.i.i.i.i.i.i.i.i.i, i64 %i.r ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !range !1439, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noundef !4
  %i.x = call noundef align 8 ptr @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaRTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtB2N_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherB3q_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEQNCNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB6b_14SourceToDefCtx18derive_macro_calls0s_0E0INtB7_5FnMutTuB1P_EE8call_mutB6f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.u, ptr noundef %i.w), !noalias !1440 ; 2 uses
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not7.i.i.i.i.i.i.i, label %bb.c, label %bb.h

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1435
  %.pr.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !1441
  call void @llvm.experimental.noalias.scope.decl(metadata !1442)
  %i.y = icmp eq i64 %.pr.i.i.i.i.i, 0
  br i1 %i.y, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_EEECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  call void @llvm.experimental.noalias.scope.decl(metadata !1444)
  %i.z = load i64, ptr %i.j, align 8, !alias.scope !1445, !noundef !4 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !1445 ; 2 uses
  %i.aa = icmp eq i64 %.promoted.i.i.i.i.i.i.i.i, %i.z
  br i1 %i.aa, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_EECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d
  %i.ab = load i64, ptr %i.l, align 8, !alias.scope !1446, !noundef !4
  %i.ac = icmp ugt i64 %i.ab, 1
  %i.ad = load ptr, ptr %i.h, align 8, !alias.scope !1446, !nonnull !4
  %.sink11.i.i.i.i23.i.i.i.i.i = select i1 %i.ac, ptr %i.ad, ptr %i.h
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaEECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ae = phi i64 [ %.promoted.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.af, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaEECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.af = add i64 %i.ae, 1                        ; 3 uses
  store i64 %i.af, ptr %i.i, align 8, !alias.scope !1445
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sink11.i.i.i.i23.i.i.i.i.i, i64 %i.ae
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !noalias !1447, !noundef !4
  %i.al = add i32 %i.ak, -1                       ; 2 uses
  store i32 %i.al, ptr %i.aj, align 4, !noalias !1447
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECs8Xq8PKFYOms_3hir.exit.sink.split.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaEECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECs8Xq8PKFYOms_3hir.exit.sink.split.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ai) #33
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaEECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i.i.i.i unwind label %bb.f, !noalias !1448

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaEECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECs8Xq8PKFYOms_3hir.exit.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.an = icmp eq i64 %i.af, %i.z
  br i1 %i.an, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_EECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i.i, label %bb.e

bb.f:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECs8Xq8PKFYOms_3hir.exit.sink.split.i.i.i.i.i.i.i.i.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.h)
          to label %.body.i.i.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #37, !noalias !1448
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_EECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaEECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i.i.i.i, %bb.d
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.h)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_EEECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i unwind label %bb.i

bb.h:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1435
  br label %bb.ac

bb.i:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_EECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.i, %bb.f
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.aq, %bb.i ], [ %i.ao, %bb.f ]
  store i64 0, ptr %i.e, align 8, !alias.scope !1432
  br label %common.resume.i.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_EEECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_EECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i.i, %._crit_edge, %bb.a
  store i64 0, ptr %i.e, align 8, !alias.scope !1432
  %i.ar = load i64, ptr %1, align 8, !range !6, !alias.scope !1449, !noundef !4
  %i.as = trunc nuw i64 %i.ar to i1
  br i1 %i.as, label %bb.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_EEECs8Xq8PKFYOms_3hir.exit34.i.i.i.i.i

bb.j:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_EEECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.au = call noundef align 8 ptr @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4AttrENCNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB2j_14SourceToDefCtx18derive_macro_calls00ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB4G_13FlattenCompatppE13iter_try_fold7flattenINtCsjpcu9PwIgok_8smallvec8SmallVecANtB1G_4Metaj1_EuINtNtNtBc_3ops12control_flow11ControlFlowRTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtB7g_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtBc_6option6OptionINtCs83ee1IJTiSq_6either6EitherB7T_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEENCINvNvXsi_B4G_B4T_B3N_8try_fold7flattenINtB5I_8IntoIterB6e_EuB6v_NCINvNvB3N_8find_map5checkB6f_B7a_QNCB2c_s_0E0E0E0B6v_EB2n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.at, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e) ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.ac

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i.i.i.i = load i64, ptr %1, align 8, !range !6, !alias.scope !1449, !noundef !4
  %.val6.i.i.i.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !1449 ; 3 uses
  %i.av = icmp eq i64 %.val.i.i.i.i.i.i, 0
  %i.aw = icmp eq ptr %.val6.i.i.i.i.i.i, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !noundef !4
  %i.az = add i32 %i.ay, -1                       ; 2 uses
  store i32 %i.az, ptr %i.ax, align 4
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val6.i.i.i.i.i.i) #33
          to label %bb.o unwind label %bb.n

common.resume.i.i.i.i.i:                          ; preds = %.body47.i.i.i.i.i, %.body31.i.i.i.i.i, %bb.n, %.body.i.i.i.i.i
  %common.resume.op.i.i.i.i.i = phi { ptr, i32 } [ %i.bb, %bb.n ], [ %eh.lpad-body48.i.i.i.i.i, %.body47.i.i.i.i.i ], [ %eh.lpad-body32.i.i.i.i.i, %.body31.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.bb = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %1, align 8, !alias.scope !1449
  br label %common.resume.i.i.i.i.i

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k
  store i64 0, ptr %1, align 8, !alias.scope !1449
  %.pre.i.i.i.i.i = load i64, ptr %i.e, align 8, !range !6, !alias.scope !1450
  %i.bc = icmp eq i64 %.pre.i.i.i.i.i, 0
  call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  br i1 %i.bc, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_EEECs8Xq8PKFYOms_3hir.exit34.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1452)
  call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !1454, !noundef !4 ; 2 uses
  %.promoted.i.i.i24.i.i.i.i.i = load i64, ptr %i.be, align 8, !alias.scope !1454 ; 2 uses
  %i.bh = icmp eq i64 %.promoted.i.i.i24.i.i.i.i.i, %i.bg
end_hunk_0
