Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.15?download=true
inline.NumInlined: 5570
inline.NumDeleted: 2226
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7analyze5suite5suite:bb.a
  %i.au = add i32 %i.at, -1
  %.sroa.012.0.i = zext i1 %.not14.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix11unsafe_edit(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %.sroa.012.0.i, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i32 %i.au, ptr %i.aw, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ax = load ptr, ptr %i.i, align 8, !nonnull !6, !align !331, !noundef !6
  invoke void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules10flake8_pyi5rules18docstring_in_stubs15DocstringInStubEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull align 8 %i.ax, i32 noundef %i.ae, i32 noundef %i.ag)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.c) #53
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.val.pre = load ptr, ptr %i.i, align 8
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules18docstring_in_stubs18docstring_in_stubs.exit

bb.q:                                             ; preds = %bb.r, %bb.o
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54
  unreachable

bb.r:                                             ; preds = %bb.m
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(40) %i.f) #53
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.q

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.s, %bb.r, %bb.o
  %.pn.pn22.i = phi { ptr, i32 } [ %i.bb, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i ], [ %i.ay, %bb.o ], [ %i.bb, %bb.s ], [ %i.ba, %bb.r ]
  resume { ptr, i32 } %.pn.pn22.i

bb.s:                                             ; preds = %bb.l
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.h, align 8, !noundef !6 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val17.i = load i64, ptr %i.bc, align 8        ; 2 uses
  %i.bd = icmp eq ptr %.val.i, null
  %i.be = icmp eq i64 %.val17.i, 0
  %or.cond.i.i.i = select i1 %i.bd, i1 true, i1 %i.be
  br i1 %or.cond.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val17.i, i64 noundef 1) #55
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit.i

bb.t:                                             ; preds = %bb.u, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules18docstring_in_stubs18docstring_in_stubs.exit
  ret void

bb.u:                                             ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules18docstring_in_stubs18docstring_in_stubs.exit
  call void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb5rules15repeated_global15repeated_global(ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 %0, i64 noundef %1)
  br label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7analyze6module6module(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !331, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = and i64 %i.d, 4194304
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  %i.h = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.i = load i64, ptr %i.h, align 8, !noundef !6
  tail call void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules14flake8_bugbear5rules18f_string_docstring18f_string_docstring(ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %i.g, i64 noundef %i.i)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.b, %bb.a ], [ %.pre, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  %i.l = load i64, ptr %i.k, align 8, !noundef !6
  %i.m = and i64 %i.l, 128
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules37invalid_formatter_suppression_comment37ignored_formatter_suppression_comment(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCskLngH8kgpZI_15ruff_python_ast10comparable12HashableExprINtB2_10EquivalentBq_E10equivalentCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 16 captures(none) dereferenceable(144) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(144) %1) unnamed_addr #25 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvXs9o_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_16HashableExprKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %1)
  ret i1 %i.a
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprINtB2_10EquivalentBq_E10equivalentCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #25 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %1)
  ret i1 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparableLiteralINtB2_10EquivalentBq_E10equivalentCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #26 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9528)
  %i.a = load i64, ptr %0, align 8, !range !3269, !alias.scope !9525, !noalias !9528, !noundef !6 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !range !3269, !alias.scope !9528, !noalias !9525, !noundef !6
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_RNvXs3F_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %i.a, label %_RNvXs3F_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit [
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 4, label %bb.e
    i64 5, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.d, align 8, !alias.scope !9525, !noalias !9528, !nonnull !6, !noundef !6
  %.val3.i = load ptr, ptr %i.e, align 8, !alias.scope !9528, !noalias !9525, !nonnull !6, !noundef !6
  %.val.i.i = load i8, ptr %.val.i, align 1, !range !64, !noalias !9530, !noundef !6
  %.val1.i.i = load i8, ptr %.val3.i, align 1, !range !64, !noalias !9530, !noundef !6
  %i.f = icmp eq i8 %.val.i.i, %.val1.i.i
  br label %_RNvXs3F_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !9525, !noalias !9528, !noundef !6 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !9528, !noalias !9525, !noundef !6
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %bb.o, label %_RNvXs3F_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !9525, !noalias !9528, !noundef !6 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !9528, !noalias !9525, !noundef !6
  %i.p = icmp eq i64 %i.m, %i.o
  br i1 %i.p, label %bb.q, label %_RNvXs3F_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9534)
  %i.s = load i64, ptr %i.q, align 8, !range !63, !alias.scope !9536, !noalias !9537, !noundef !6 ; 2 uses
  %i.t = load i64, ptr %i.r, align 8, !range !63, !alias.scope !9537, !noalias !9536, !noundef !6
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %bb.g, label %_RNvXs3F_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  switch i64 %i.s, label %default.unreachable [
    i64 0, label %bb.h
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i4.i = load ptr, ptr %i.v, align 8, !alias.scope !9536, !noalias !9537, !nonnull !6, !align !331, !noundef !6 ; 2 uses
  %.val2.i.i = load ptr, ptr %i.w, align 8, !alias.scope !9537, !noalias !9536, !nonnull !6, !align !331, !noundef !6 ; 2 uses
  %.val.i.i.i = load ptr, ptr %.val.i4.i, align 8, !noalias !9538, !noundef !6 ; 2 uses
  %i.x = getelementptr i8, ptr %.val.i4.i, i64 8
  %.val1.i.i.i = load i64, ptr %i.x, align 8, !noalias !9538 ; 2 uses
  %.val2.i.i.i = load ptr, ptr %.val2.i.i, align 8, !noalias !9538, !noundef !6 ; 3 uses
  %i.y = icmp ne ptr %.val.i.i.i, null            ; 2 uses
  %i.z = icmp eq ptr %.val2.i.i.i, null           ; 2 uses
  %i.aa = xor i1 %i.y, %i.z
  br i1 %i.aa, label %bb.i, label %_RNvXs3F_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %2 = getelementptr i8, ptr %.val2.i.i, i64 8
  %.val3.i.i.i = load i64, ptr %2, align 8, !noalias !9538
  %i.ab = icmp eq i64 %.val1.i.i.i, %.val3.i.i.i  ; 2 uses
  br i1 %i.y, label %3, label %bb.j

3:                                                ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i) ]
  br i1 %i.ab, label %bb.k, label %_RNvXs3F_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.assume(i1 %i.z)
  br label %_RNvXs3F_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %3
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i.i, ptr nonnull readonly %.val2.i.i.i, i64 %.val1.i.i.i), !noalias !9538
  %i.ac = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_RNvXs3F_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.g
  %i.ad = load i64, ptr %i.v, align 8, !alias.scope !9536, !noalias !9537, !noundef !6
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !9537, !noalias !9536, !noundef !6
  %i.ag = icmp eq i64 %i.ad, %i.af
  br label %_RNvXs3F_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.g
  %i.ah = load i64, ptr %i.v, align 8, !alias.scope !9536, !noalias !9537, !noundef !6
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !9537, !noalias !9536, !noundef !6
  %i.ak = icmp eq i64 %i.ah, %i.aj
  br i1 %i.ak, label %bb.n, label %_RNvXs3F_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !9536, !noalias !9537, !noundef !6
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !9537, !noalias !9536, !noundef !6
  %i.ap = icmp eq i64 %i.am, %i.ao
  br label %_RNvXs3F_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !9528, !noalias !9525, !nonnull !6, !noundef !6
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !9525, !noalias !9528, !nonnull !6, !noundef !6
  %i.au = icmp eq i64 %i.h, 0
  br i1 %i.au, label %_RNvXs3F_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i

bb.p:                                             ; preds = %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableStringLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.i.i
  %i.av = add nuw i64 %.sroa.01.09.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.av, %i.h
  br i1 %exitcond.not.i.i, label %_RNvXs3F_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %bb.p
  %.sroa.01.09.i.i = phi i64 [ %i.av, %bb.p ], [ 0, %bb.o ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.sroa.01.09.i.i ; 2 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %.sroa.01.09.i.i ; 2 uses
  %i.ay = getelementptr i8, ptr %i.aw, i64 8
  %.val5.i.i = load i64, ptr %i.ay, align 8, !noalias !9530, !noundef !6 ; 2 uses
  %i.az = getelementptr i8, ptr %i.ax, i64 8
  %.val7.i.i = load i64, ptr %i.az, align 8, !noalias !9530, !noundef !6
  %i.ba = icmp eq i64 %.val5.i.i, %.val7.i.i
  br i1 %i.ba, label %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableStringLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.i.i, label %_RNvXs3F_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableStringLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %.lr.ph.i.i
  %.val6.i.i = load ptr, ptr %i.ax, align 8, !noalias !9530, !nonnull !6, !noundef !6
  %.val.i5.i = load ptr, ptr %i.aw, align 8, !noalias !9530, !nonnull !6, !noundef !6
  %bcmp.i.i.i.i6.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i5.i, ptr nonnull readonly %.val6.i.i, i64 %.val5.i.i), !alias.scope !9539, !noalias !9530
  %.not.i.i = icmp eq i32 %bcmp.i.i.i.i6.i, 0
  br i1 %.not.i.i, label %bb.p, label %_RNvXs3F_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !9528, !noalias !9525, !nonnull !6, !noundef !6
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !9525, !noalias !9528, !nonnull !6, !noundef !6
  %i.bf = icmp eq i64 %i.m, 0
  br i1 %i.bf, label %_RNvXs3F_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i7.i

bb.r:                                             ; preds = %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast10comparable22ComparableBytesLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.i.i
  %i.bg = add nuw i64 %.sroa.01.09.i8.i, 1        ; 2 uses
  %exitcond.not.i15.i = icmp eq i64 %i.bg, %i.m
  br i1 %exitcond.not.i15.i, label %_RNvXs3F_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i7.i

.lr.ph.i7.i:                                      ; preds = %bb.q, %bb.r
  %.sroa.01.09.i8.i = phi i64 [ %i.bg, %bb.r ], [ 0, %bb.q ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %.sroa.01.09.i8.i ; 2 uses
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %.sroa.01.09.i8.i ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bh, i64 16
  %.val5.i9.i = load i64, ptr %i.bj, align 8, !alias.scope !9543, !noalias !9546, !noundef !6 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bi, i64 16
  %.val7.i10.i = load i64, ptr %i.bk, align 8, !alias.scope !9548, !noalias !9549, !noundef !6
  %i.bl = icmp eq i64 %.val5.i9.i, %.val7.i10.i
  br i1 %i.bl, label %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast10comparable22ComparableBytesLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.i.i, label %_RNvXs3F_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast10comparable22ComparableBytesLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %.lr.ph.i7.i
  %i.bm = getelementptr i8, ptr %i.bi, i64 8
  %.val6.i12.i = load ptr, ptr %i.bm, align 8, !noalias !9530, !nonnull !6, !noundef !6
  %i.bn = getelementptr i8, ptr %i.bh, i64 8
  %.val.i13.i = load ptr, ptr %i.bn, align 8, !noalias !9530, !nonnull !6, !noundef !6
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i13.i, ptr nonnull readonly %.val6.i12.i, i64 range(i64 0, -9223372036854775808) %.val5.i9.i), !alias.scope !9550, !noalias !9554
  %.not.i14.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %.not.i14.i, label %bb.r, label %_RNvXs3F_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs3F_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.r, %.lr.ph.i7.i, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast10comparable22ComparableBytesLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.i.i, %bb.p, %.lr.ph.i.i, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableStringLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.i.i, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.h, %3, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.q
  %.sroa.0.0.shrunk.i = phi i1 [ false, %bb.a ], [ %i.f, %bb.c ], [ false, %3 ], [ true, %bb.b ], [ true, %bb.p ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.m ], [ %i.ag, %bb.l ], [ %i.ap, %bb.n ], [ false, %bb.f ], [ %i.ac, %bb.k ], [ false, %bb.h ], [ %i.ab, %bb.j ], [ true, %bb.o ], [ true, %bb.q ], [ false, %.lr.ph.i.i ], [ false, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableStringLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.i.i ], [ false, %.lr.ph.i7.i ], [ false, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast10comparable22ComparableBytesLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.i.i ], [ true, %bb.r ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules23redundant_literal_union8ExprTypeINtB2_10EquivalentBq_E10equivalentBA_(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #27 {
bb.a:
  %.val = load i8, ptr %0, align 1, !range !2394, !noundef !6
  %.val1 = load i8, ptr %1, align 1, !range !2394, !noundef !6
  %i.a = icmp eq i8 %.val, %.val1
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownTReNtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif10SarifLevelEINtB2_10EquivalentBq_E10equivalentBz_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #28 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9561)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load i64, ptr %i.a, align 8, !alias.scope !9558, !noalias !9561, !noundef !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i = load i64, ptr %i.b, align 8, !alias.scope !9561, !noalias !9558, !noundef !6
  %i.c = icmp eq i64 %.val1.i, %.val3.i
  br i1 %i.c, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTReNtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif10SarifLevelENtNtB7_3cmp9PartialEq2eqBF_.exit

_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.a
  %.val2.i = load ptr, ptr %1, align 8, !alias.scope !9561, !noalias !9558, !nonnull !6, !noundef !6
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !9558, !noalias !9561, !nonnull !6, !noundef !6
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val2.i, i64 %.val1.i), !alias.scope !9563, !noalias !9567
  %i.d = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.d, label %bb.b, label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTReNtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif10SarifLevelENtNtB7_3cmp9PartialEq2eqBF_.exit

bb.b:                                             ; preds = %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4.i = load i8, ptr %i.e, align 8, !range !58, !alias.scope !9558, !noalias !9561, !noundef !6
  %.val5.i = load i8, ptr %i.f, align 8, !range !58, !alias.scope !9561, !noalias !9558, !noundef !6
  %i.g = icmp eq i8 %.val4.i, %.val5.i
  br label %_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTReNtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif10SarifLevelENtNtB7_3cmp9PartialEq2eqBF_.exit

_RNvXs8_NtCs4NRVxsYgnAr_4core5tupleTReNtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif10SarifLevelENtNtB7_3cmp9PartialEq2eqBF_.exit: ; preds = %bb.a, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.i, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.g, %bb.b ], [ false, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.i ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCsEhZmuQNqkz_11ruff_linter7messageNtB2_14EmitterContextNtNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6render12FileResolver11is_notebook(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %1, align 8, !range !8534, !noundef !6
  %i.b = trunc nuw i32 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.g, !prof !233

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !nonnull !6, !align !331, !noundef !6 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !6 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !9568, !noalias !9571, !noundef !6
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs8w9c0syp1Hj_13ruff_notebook5index13NotebookIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3geteECsEhZmuQNqkz_11ruff_linter.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.n = tail call noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneReECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9573)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9576)
  %i.o = lshr i64 %i.n, 57
  %i.p = trunc nuw nsw i64 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !9579, !noalias !9580, !noundef !6 ; 2 uses
  %i.s = load ptr, ptr %i.c, align 8, !alias.scope !9579, !noalias !9580, !nonnull !6, !noundef !6 ; 2 uses
  %i.t = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.c ], [ %i.al, %bb.f ]
  %.pn.i.i.i = phi i64 [ %i.n, %bb.c ], [ %i.am, %bb.f ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.r    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.v, align 1, !noalias !9583 ; 2 uses
  %i.w = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.u
  %i.x = bitcast <16 x i1> %i.w to i16            ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.x, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.sroa.06.0.i33.i.i = phi i16 [ %i.ak, %bb.e ], [ %i.x, %bb.d ] ; 3 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = add i64 %.sroa.01.0.i.i.i, %i.z
  %i.ab = and i64 %i.aa, %i.r
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds [48 x i8], ptr %i.s, i64 %i.ac
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -48
  %i.af = tail call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrowneINtB2_10EquivalentNtNtCscdodAO9FK5_5alloc6string6StringE10equivalentCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ae), !noalias !9586
  br i1 %i.af, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs8w9c0syp1Hj_13ruff_notebook5index13NotebookIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3geteECsEhZmuQNqkz_11ruff_linter.exit, label %bb.e, !prof !233

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = icmp eq i16 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs8w9c0syp1Hj_13ruff_notebook5index13NotebookIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3geteECsEhZmuQNqkz_11ruff_linter.exit, !prof !48

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.aj = add i16 %.sroa.06.0.i33.i.i, -1
  %i.ak = and i16 %i.aj, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.al = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.am = add i64 %.sroa.01.0.i.i.i, %i.al
  br label %bb.d

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs8w9c0syp1Hj_13ruff_notebook5index13NotebookIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3geteECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %._crit_edge.i.i, %.lr.ph.i.i, %bb.b
  %.sroa.0.0.i = phi i1 [ false, %bb.b ], [ true, %.lr.ph.i.i ], [ false, %._crit_edge.i.i ]
  ret i1 %.sroa.0.0.i

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @420, ptr noundef nonnull inttoptr (i64 139 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @422) #52
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCsEhZmuQNqkz_11ruff_linter7messageNtB2_14EmitterContextNtNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6render12FileResolver14notebook_index(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %2, align 8, !range !8534, !noundef !6
  %i.b = trunc nuw i32 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.g, !prof !233

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !nonnull !6, !align !331, !noundef !6 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !6 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !9589, !noalias !9592, !noundef !6
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.n = tail call noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneReECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9597)
  %i.o = lshr i64 %i.n, 57
  %i.p = trunc nuw nsw i64 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !9600, !noalias !9601, !noundef !6 ; 2 uses
  %i.s = load ptr, ptr %i.c, align 8, !alias.scope !9600, !noalias !9601, !nonnull !6, !noundef !6 ; 2 uses
  %i.t = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.c ], [ %i.al, %bb.f ]
  %.pn.i.i.i = phi i64 [ %i.n, %bb.c ], [ %i.am, %bb.f ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.r    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.v, align 1, !noalias !9604 ; 2 uses
  %i.w = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.u
  %i.x = bitcast <16 x i1> %i.w to i16            ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.x, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.sroa.06.0.i33.i.i = phi i16 [ %i.ak, %bb.e ], [ %i.x, %bb.d ] ; 3 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = add i64 %.sroa.01.0.i.i.i, %i.z
  %i.ab = and i64 %i.aa, %i.r
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds [48 x i8], ptr %i.s, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -48
  %i.af = tail call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrowneINtB2_10EquivalentNtNtCscdodAO9FK5_5alloc6string6StringE10equivalentCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ae), !noalias !9607
  br i1 %i.af, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs8w9c0syp1Hj_13ruff_notebook5index13NotebookIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3geteECsEhZmuQNqkz_11ruff_linter.exit, label %bb.e, !prof !233

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = icmp eq i16 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %select.unfold, !prof !48

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.aj = add i16 %.sroa.06.0.i33.i.i, -1
  %i.ak = and i16 %i.aj, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.al = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.am = add i64 %.sroa.01.0.i.i.i, %i.al
  br label %bb.d
end_hunk_0
begin_hunk_1_@_RNvXs4e_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_9ExprBinOpNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i8, ptr %i.d, align 8, !range !2392, !noundef !6
  %.val1 = load i8, ptr %i.e, align 8, !range !2392, !noundef !6
  %i.f = icmp eq i8 %.val, %.val1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !noundef !6
  %i.k = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi i1 [ %i.k, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs4o_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_10ExprLambdaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #30 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !42, !noundef !6
  %.not = icmp eq i64 %i.a, -1
  %i.b = load i64, ptr %1, align 8, !range !42, !noundef !6
  %i.c = icmp eq i64 %i.b, -1                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %.split

bb.c:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.d, label %bb.e

.split:                                           ; preds = %bb.b
  %i.d = tail call fastcc noundef zeroext i1 @_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_20ComparableParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1)
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.split, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6, !noundef !6
  %i.i = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.h)
  br label %bb.e

bb.e:                                             ; preds = %.split, %bb.c, %bb.b, %bb.d
  %.sroa.0.0 = phi i1 [ %i.i, %bb.d ], [ false, %bb.b ], [ false, %bb.c ], [ false, %.split ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs4t_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_6ExprIfNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #30 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.c = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.b)
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  %i.h = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.g)
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.m = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.l)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi i1 [ %i.m, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs52_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_13ExprGeneratorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #30 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.d)
  br i1 %i.e, label %bb.b, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !6 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !6
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit

_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit, %bb.f, %.lr.ph9, %bb.e, %bb.d, %.lr.ph, %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %.lr.ph ], [ true, %bb.c ], [ true, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit ], [ false, %bb.f ], [ false, %.lr.ph9 ], [ false, %bb.e ], [ false, %bb.d ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !6, !noundef !6
  %.not7.not = icmp eq i64 %i.g, 0
  br i1 %.not7.not, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.c, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.01.0.i8 = phi i64 [ %i.ao, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit ], [ 0, %bb.c ] ; 3 uses
  %i.o = getelementptr inbounds nuw [288 x i8], ptr %i.n, i64 %.sroa.01.0.i8 ; 5 uses
  %i.p = getelementptr inbounds nuw [288 x i8], ptr %i.l, i64 %.sroa.01.0.i8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10306)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 280
  %i.r = load i8, ptr %i.q, align 8, !range !64, !alias.scope !10308, !noalias !10309, !noundef !6
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 280
  %i.t = load i8, ptr %i.s, align 8, !range !64, !alias.scope !10309, !noalias !10308, !noundef !6
  %i.u = icmp eq i8 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit

bb.d:                                             ; preds = %.lr.ph9
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.x = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.w), !inline_history !10272
  br i1 %i.x, label %bb.e, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  %i.aa = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.z), !inline_history !10272
  br i1 %i.aa, label %bb.f, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !10308, !noalias !10309, !noundef !6 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !10309, !noalias !10308, !noundef !6
  %i.af = icmp eq i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.g, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !10309, !noalias !10308, !nonnull !6, !noundef !6
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !10308, !noalias !10309, !nonnull !6, !noundef !6
  %.not35.not = icmp eq i64 %i.ac, 0
  br i1 %.not35.not, label %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.ak = add nuw i64 %.sroa.01.0.i16, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.ak, %i.ac
  br i1 %exitcond.not, label %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.sroa.01.0.i16 = phi i64 [ %i.ak, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.al = getelementptr inbounds nuw [128 x i8], ptr %i.aj, i64 %.sroa.01.0.i16
  %i.am = getelementptr inbounds nuw [128 x i8], ptr %i.ah, i64 %.sroa.01.0.i16
  %i.an = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.am), !inline_history !10273
  br i1 %i.an, label %bb.h, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit

_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.h, %bb.g
  %i.ao = add nuw i64 %.sroa.01.0.i8, 1           ; 2 uses
  %exitcond19.not = icmp eq i64 %i.ao, %i.g
  br i1 %exitcond19.not, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph9
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs5V_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ExprNumberLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #19 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10313)
  %i.a = load i64, ptr %0, align 8, !range !63, !alias.scope !10310, !noalias !10313, !noundef !6 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !range !63, !alias.scope !10313, !noalias !10310, !noundef !6
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_RNvXs2B_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_16ComparableNumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.a, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %bb.g
    i64 2, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.d, align 8, !alias.scope !10310, !noalias !10313, !nonnull !6, !align !331, !noundef !6 ; 2 uses
  %.val2.i = load ptr, ptr %i.e, align 8, !alias.scope !10313, !noalias !10310, !nonnull !6, !align !331, !noundef !6 ; 2 uses
  %.val.i.i = load ptr, ptr %.val.i, align 8, !noalias !10315, !noundef !6 ; 2 uses
  %i.f = getelementptr i8, ptr %.val.i, i64 8
  %.val1.i.i = load i64, ptr %i.f, align 8, !noalias !10315 ; 2 uses
  %.val2.i.i = load ptr, ptr %.val2.i, align 8, !noalias !10315, !noundef !6 ; 3 uses
  %i.g = icmp ne ptr %.val.i.i, null              ; 2 uses
  %i.h = icmp eq ptr %.val2.i.i, null             ; 2 uses
  %i.i = xor i1 %i.g, %i.h
  br i1 %i.i, label %bb.d, label %_RNvXs2B_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_16ComparableNumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %2 = getelementptr i8, ptr %.val2.i, i64 8
  %.val3.i.i = load i64, ptr %2, align 8, !noalias !10315
  %i.j = icmp eq i64 %.val1.i.i, %.val3.i.i       ; 2 uses
  br i1 %i.g, label %3, label %bb.e

3:                                                ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  br i1 %i.j, label %bb.f, label %_RNvXs2B_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_16ComparableNumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.assume(i1 %i.h)
  br label %_RNvXs2B_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_16ComparableNumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %3
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val2.i.i, i64 %.val1.i.i), !noalias !10315
  %i.k = icmp eq i32 %bcmp.i.i.i.i, 0
  br label %_RNvXs2B_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_16ComparableNumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.d, align 8, !alias.scope !10310, !noalias !10313, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !10313, !noalias !10310, !noundef !6
  %i.o = icmp eq i64 %i.l, %i.n
  br label %_RNvXs2B_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_16ComparableNumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.d, align 8, !alias.scope !10310, !noalias !10313, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !10313, !noalias !10310, !noundef !6
  %i.s = icmp eq i64 %i.p, %i.r
  br i1 %i.s, label %bb.i, label %_RNvXs2B_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_16ComparableNumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !10310, !noalias !10313, !noundef !6
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !10313, !noalias !10310, !noundef !6
  %i.x = icmp eq i64 %i.u, %i.w
  br label %_RNvXs2B_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_16ComparableNumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs2B_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_16ComparableNumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.c, %3, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.sroa.0.0.shrunk.i = phi i1 [ false, %bb.h ], [ %i.o, %bb.g ], [ %i.x, %bb.i ], [ false, %bb.a ], [ %i.k, %bb.f ], [ false, %bb.c ], [ %i.j, %bb.e ], [ false, %3 ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs5m_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_11ExprCompareNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #30 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.d)
  br i1 %i.e, label %bb.b, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable15ComparableCmpOpINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !6 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !6
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable15ComparableCmpOpINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !6, !noundef !6
  %i.o = icmp eq i64 %i.g, 0
  br i1 %i.o, label %.loopexit, label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.p = add nuw i64 %.sroa.01.06.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.p, %i.g
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.01.06.i = phi i64 [ %i.p, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.06.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.06.i
  %.val.i = load i8, ptr %i.q, align 1, !range !4871, !noundef !6
  %.val5.i = load i8, ptr %i.r, align 1, !range !4871, !noundef !6
  %.not.i = icmp eq i8 %.val.i, %.val5.i
  br i1 %.not.i, label %bb.d, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable15ComparableCmpOpINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit

.loopexit:                                        ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i64, ptr %i.s, align 8, !noundef !6 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load i64, ptr %i.u, align 8, !noundef !6
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.e, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable15ComparableCmpOpINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit

_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable15ComparableCmpOpINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.lr.ph.i, %.lr.ph, %bb.e, %.loopexit, %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ true, %bb.e ], [ false, %bb.a ], [ false, %bb.b ], [ false, %.loopexit ], [ %i.ad, %.lr.ph ], [ false, %.lr.ph.i ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %.loopexit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !6, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !6, !noundef !6
  %.not4.not = icmp eq i64 %i.t, 0
  br i1 %.not4.not, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable15ComparableCmpOpINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.sroa.01.0.i5 = phi i64 [ %i.ae, %.lr.ph ], [ 0, %bb.e ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [128 x i8], ptr %i.aa, i64 %.sroa.01.0.i5
  %i.ac = getelementptr inbounds nuw [128 x i8], ptr %i.y, i64 %.sroa.01.0.i5
  %i.ad = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ac), !inline_history !9669 ; 2 uses
  %i.ae = add nuw i64 %.sroa.01.0.i5, 1           ; 2 uses
  %exitcond.not = icmp ne i64 %i.ae, %i.t
  %or.cond.not = select i1 %i.ad, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable15ComparableCmpOpINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs5r_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_8ExprCallNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #30 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.d)
  br i1 %i.e, label %bb.b, label %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10319)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !10316, !noalias !10319, !noundef !6 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !10319, !noalias !10316, !noundef !6
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !10319, !noalias !10316, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !10316, !noalias !10319, !nonnull !6, !noundef !6
  %.not6.not = icmp eq i64 %i.g, 0
  br i1 %.not6.not, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.o = add nuw i64 %.sroa.01.0.i17, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.01.0.i17 = phi i64 [ %i.o, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.p = getelementptr inbounds nuw [128 x i8], ptr %i.n, i64 %.sroa.01.0.i17
  %i.q = getelementptr inbounds nuw [128 x i8], ptr %i.l, i64 %.sroa.01.0.i17
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.q), !noalias !10321, !inline_history !10322
  br i1 %i.r, label %bb.d, label %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !10316, !noalias !10319, !noundef !6 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !10319, !noalias !10316, !noundef !6
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.e, label %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !10319, !noalias !10316, !nonnull !6, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !10316, !noalias !10319, !nonnull !6, !noundef !6
  %.not48.not = icmp eq i64 %i.t, 0
  br i1 %.not48.not, label %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %.lr.ph11

bb.f:                                             ; preds = %_RNvXs31_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableKeywordNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  %i.ab = add nuw i64 %.sroa.01.0.i9, 1           ; 2 uses
  %exitcond21.not = icmp eq i64 %i.ab, %i.t
  br i1 %exitcond21.not, label %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %.lr.ph11

.lr.ph11:                                         ; preds = %bb.e, %bb.f
  %.sroa.01.0.i9 = phi i64 [ %i.ab, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [144 x i8], ptr %i.aa, i64 %.sroa.01.0.i9 ; 3 uses
  %i.ad = getelementptr inbounds nuw [144 x i8], ptr %i.y, i64 %.sroa.01.0.i9 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10326)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !10323, !noalias !10328, !noundef !6 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  %.not.i = icmp eq ptr %i.af, null
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !10326, !noalias !10329, !noundef !6 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph11
  br i1 %i.aj, label %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.i

bb.h:                                             ; preds = %.lr.ph11
  br i1 %i.aj, label %_RNvXs31_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableKeywordNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 136
  %i.al = load i64, ptr %i.ag, align 8, !alias.scope !10323, !noalias !10328, !noundef !6 ; 2 uses
  %i.am = load i64, ptr %i.ak, align 8, !alias.scope !10326, !noalias !10329, !noundef !6
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %.split, label %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

.split:                                           ; preds = %bb.i
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.af, ptr nonnull %i.ai, i64 %i.al), !noalias !10330, !inline_history !10331
  %i.ao = icmp eq i32 %bcmp.i, 0
  br i1 %i.ao, label %_RNvXs31_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableKeywordNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs31_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableKeywordNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.h, %.split
  %i.ap = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ad), !noalias !10321, !inline_history !10331
  br i1 %i.ap, label %bb.f, label %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %.lr.ph, %_RNvXs31_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableKeywordNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.f, %bb.i, %bb.g, %bb.h, %.split, %bb.e, %._crit_edge, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %bb.e ], [ false, %._crit_edge ], [ false, %bb.b ], [ false, %.split ], [ false, %_RNvXs31_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableKeywordNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ], [ true, %bb.f ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.h ], [ false, %.lr.ph ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs5w_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_23ExprInterpolatedElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #30 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.d)
  br i1 %i.e, label %bb.b, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !range !2027, !noundef !6
  %.not = icmp eq i64 %i.g, -2
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !range !2027, !noundef !6
  %i.j = icmp eq i64 %i.i, -2                     ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.j, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter.exit, label %bb.e

bb.d:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@_RNvXsh_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTTNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking5rules37runtime_import_in_type_checking_block6ActionEINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1N_7imports13ImportBindingEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterB1R_:bb.a
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTTNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5types14ImportFromDataNtBS_9AliasDataENtBS_19ImportFromStatementEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #36 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !12019
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !6
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTTNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5types14ImportFromDataNtBS_9AliasDataENtBS_19ImportFromStatementEE15into_allocationBY_.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, 192                        ; 2 uses
  %i.h = add i64 %i.g, 192                        ; 2 uses
  %i.i = add i64 %i.c, 17
  %i.j = add i64 %i.i, %i.h                       ; 3 uses
  %i.k = icmp uge i64 %i.j, %i.h
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp ult i64 %i.j, 9223372036854775793
  tail call void @llvm.assume(i1 %i.l)
  %i.m = sub i64 -192, %i.g
  %i.n = getelementptr inbounds i8, ptr %i.a, i64 %i.m
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTTNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5types14ImportFromDataNtBS_9AliasDataENtBS_19ImportFromStatementEE15into_allocationBY_.exit

_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTTNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5types14ImportFromDataNtBS_9AliasDataENtBS_19ImportFromStatementEE15into_allocationBY_.exit: ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.n, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.q = getelementptr i8, ptr %i.a, i64 %i.c
  %i.r = getelementptr i8, ptr %i.q, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.s, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.o, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.r, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.p, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTTReNtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif10SarifLevelEuEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #36 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !12022
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !6
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTTReNtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif10SarifLevelEuEE15into_allocationBY_.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, 24                         ; 2 uses
  %i.h = add i64 %i.g, 24
  %i.i = icmp ult i64 %i.h, -15
  tail call void @llvm.assume(i1 %i.i)
  %i.j = and i64 %i.g, -16                        ; 2 uses
  %i.k = add i64 %i.j, 32                         ; 2 uses
  %i.l = add i64 %i.c, 17
  %i.m = add i64 %i.l, %i.k                       ; 3 uses
  %i.n = icmp uge i64 %i.m, %i.k
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp ult i64 %i.m, 9223372036854775793
  tail call void @llvm.assume(i1 %i.o)
  %i.p = sub i64 -32, %i.j
  %i.q = getelementptr inbounds i8, ptr %i.a, i64 %i.p
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTTReNtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif10SarifLevelEuEE15into_allocationBY_.exit

_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTTReNtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif10SarifLevelEuEE15into_allocationBY_.exit: ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.514.0 = phi ptr [ undef, %bb.a ], [ %i.q, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.413.0 = phi i64 [ undef, %bb.a ], [ %i.m, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.t = getelementptr i8, ptr %i.a, i64 %i.c
  %i.u = getelementptr i8, ptr %i.t, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.v, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.r, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.u, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.s, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.413.0, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.514.0, ptr %.sroa.514.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecTjINtNtCs4NRVxsYgnAr_4core6option6OptionjEEEEENtNtNtNtB1t_4iter6traits7collect12IntoIterator9into_iterCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #36 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 5 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !12025
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !6
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecTjINtNtCs4NRVxsYgnAr_4core6option6OptionjEEEEE15into_allocationCsEhZmuQNqkz_11ruff_linter.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = icmp slt i64 %i.c, 576460752303423487
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl i64 %i.c, 5                          ; 2 uses
  %i.i = add i64 %i.h, 32                         ; 2 uses
  %i.j = add nsw i64 %i.c, 17
  %i.k = add i64 %i.j, %i.i                       ; 3 uses
  %i.l = icmp uge i64 %i.k, %i.i
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp ult i64 %i.k, 9223372036854775793
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 -32, %i.h
  %i.o = getelementptr inbounds i8, ptr %i.a, i64 %i.n
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecTjINtNtCs4NRVxsYgnAr_4core6option6OptionjEEEEE15into_allocationCsEhZmuQNqkz_11ruff_linter.exit

_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecTjINtNtCs4NRVxsYgnAr_4core6option6OptionjEEEEE15into_allocationCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.o, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.k, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.r = getelementptr i8, ptr %i.a, i64 %i.c
  %i.s = getelementptr i8, ptr %i.r, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.t, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.p, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.s, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.q, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsh_NtNtCsdjW2DEjcQy2_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs2_NtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXshb_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_16ExprBytesLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b)
  br i1 %i.c, label %bb.b, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i32, ptr %i.f, align 8, !noundef !6
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = load i32, ptr %i.i, align 4, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.l = load i32, ptr %i.k, align 4, !noundef !6
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !noundef !6
  %i.o = icmp eq ptr %i.n, null                   ; 2 uses
  %i.p = load ptr, ptr %1, align 8, !noundef !6   ; 2 uses
  %i.q = icmp eq ptr %i.p, null                   ; 2 uses
  %i.r = xor i1 %i.o, %i.q
  br i1 %i.r, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.assume(i1 %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noundef !6 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !noundef !6
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.m, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i32, ptr %i.x, align 8, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !noundef !6
  %i.ab = icmp eq i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.h, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !noundef !6
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !noundef !6
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.i, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.ah, ptr noundef nonnull align 4 %i.ai)
  br i1 %i.aj, label %bb.j, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !noundef !6 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i64, ptr %i.am, align 8, !noundef !6
  %i.ao = icmp eq i64 %i.al, %i.an
  br i1 %i.ao, label %bb.k, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.ap = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.aq = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.aq, ptr nonnull %i.ap, i64 %i.al)
  %i.ar = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ar, label %bb.l, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.at = load i8, ptr %i.as, align 4, !noundef !6
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.av = load i8, ptr %i.au, align 4, !noundef !6
  %i.aw = icmp eq i8 %i.at, %i.av
  br label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !6, !noundef !6
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !6, !noundef !6
  %i.bb = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.ay, i64 noundef %i.t)
  br label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ %i.bb, %bb.m ], [ false, %bb.d ], [ false, %bb.f ], [ %i.aw, %bb.l ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.k ], [ false, %bb.h ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXshg_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprNumberLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b)
  br i1 %i.c, label %bb.b, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !noundef !6
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i32, ptr %i.i, align 4, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = load i32, ptr %i.k, align 4, !noundef !6
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12031)
  %i.n = load i64, ptr %0, align 8, !range !63, !alias.scope !12028, !noalias !12031, !noundef !6 ; 2 uses
  %i.o = load i64, ptr %1, align 8, !range !63, !alias.scope !12031, !noalias !12028, !noundef !6
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %bb.e, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.n, label %default.unreachable [
    i64 0, label %bb.f
    i64 1, label %bb.j
    i64 2, label %bb.k
  ]

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.q, align 8, !alias.scope !12028, !noalias !12031, !noundef !6 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i64, ptr %i.s, align 8, !alias.scope !12028, !noalias !12031 ; 2 uses
  %.val3.i = load ptr, ptr %i.r, align 8, !alias.scope !12031, !noalias !12028, !noundef !6 ; 3 uses
  %i.t = icmp ne ptr %.val.i, null                ; 2 uses
  %i.u = icmp eq ptr %.val3.i, null               ; 2 uses
  %i.v = xor i1 %i.t, %i.u
  br i1 %i.v, label %bb.g, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4.i = load i64, ptr %2, align 8, !alias.scope !12031, !noalias !12028
  %i.w = icmp eq i64 %.val2.i, %.val4.i           ; 2 uses
  br i1 %i.t, label %3, label %bb.h

3:                                                ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i) ]
  br i1 %i.w, label %bb.i, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.u)
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %3
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val3.i, i64 %.val2.i), !noalias !12033
  %i.x = icmp eq i32 %bcmp.i.i, 0
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.e
  %i.y = load double, ptr %i.q, align 8, !alias.scope !12028, !noalias !12031, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load double, ptr %i.z, align 8, !alias.scope !12031, !noalias !12028, !noundef !6
  %i.ab = fcmp oeq double %i.y, %i.aa
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.e
  %i.ac = load double, ptr %i.q, align 8, !alias.scope !12028, !noalias !12031, !noundef !6
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !alias.scope !12031, !noalias !12028, !noundef !6
  %i.af = fcmp oeq double %i.ac, %i.ae
  br i1 %i.af, label %bb.l, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load double, ptr %i.ag, align 8, !alias.scope !12028, !noalias !12031, !noundef !6
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !alias.scope !12031, !noalias !12028, !noundef !6
  %i.ak = fcmp oeq double %i.ah, %i.aj
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %3, %bb.f, %bb.d, %bb.c, %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.k ], [ %i.ab, %bb.j ], [ %i.ak, %bb.l ], [ false, %bb.d ], [ %i.x, %bb.i ], [ false, %bb.f ], [ %i.w, %bb.h ], [ false, %3 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXshl_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_18ExprBooleanLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %0, ptr noundef nonnull align 4 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !64, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i8, ptr %i.c, align 4, !range !64, !noundef !6
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %0, ptr noundef nonnull align 4 %1)
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !noundef !6
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.e
  %.sroa.0.0 = phi i1 [ %i.p, %bb.e ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 4, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 4, !noundef !6
  %i.p = icmp eq i32 %i.m, %i.o
  br label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsi2_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprTupleNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !range !64, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.d = load i8, ptr %i.c, align 4, !range !64, !noundef !6
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.f, ptr noundef nonnull align 4 %i.g)
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 8, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i32, ptr %i.k, align 8, !noundef !6
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = load i32, ptr %i.n, align 4, !noundef !6
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.q = load i32, ptr %i.p, align 4, !noundef !6
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !6 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !6
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !6, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !6, !noundef !6
  %i.ab = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.y, i64 noundef %i.t)
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 37
  %.val = load i8, ptr %i.ac, align 1, !range !4436, !noundef !6
  %.val1 = load i8, ptr %i.ad, align 1, !range !4436, !noundef !6
  %i.ae = icmp eq i8 %.val, %.val1
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.a, %bb.b, %bb.c, %bb.e, %bb.g
  %.sroa.0.0 = phi i1 [ %i.ae, %bb.g ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.f ], [ false, %bb.d ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsi7_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprSliceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b)
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !noundef !6
  %i.e = load i32, ptr %1, align 8, !noundef !6
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !noundef !6
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !align !331, !noundef !6 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !align !331, !noundef !6 ; 2 uses
  %i.p = icmp eq ptr %i.o, null                   ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.p, label %bb.k, label %.split

bb.f:                                             ; preds = %bb.d
  br i1 %i.p, label %bb.g, label %bb.k

.split:                                           ; preds = %bb.e
  %i.q = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.m, ptr noundef nonnull align 8 %i.o)
  br i1 %i.q, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.split, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !align !331, !noundef !6 ; 2 uses
  %.not4 = icmp eq ptr %i.s, null
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !align !331, !noundef !6 ; 2 uses
  %i.v = icmp eq ptr %i.u, null                   ; 2 uses
  br i1 %.not4, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.v, label %bb.k, label %.split8

bb.i:                                             ; preds = %bb.g
  br i1 %i.v, label %bb.j, label %bb.k

.split8:                                          ; preds = %bb.h
  %i.w = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.s, ptr noundef nonnull align 8 %i.u)
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.split8, %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !align !331, !noundef !6 ; 2 uses
  %.not6 = icmp eq ptr %i.y, null                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !align !331, !noundef !6 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null                 ; 2 uses
  %brmerge = or i1 %.not6, %i.ab
  %.mux = and i1 %.not6, %i.ab
  br i1 %brmerge, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %.split8, %.split, %bb.c, %bb.f, %bb.i, %bb.a, %bb.b, %bb.e, %bb.h, %bb.l
  %.sroa.0.0.shrunk = phi i1 [ %i.ac, %bb.l ], [ false, %bb.c ], [ false, %.split8 ], [ false, %bb.h ], [ false, %bb.e ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.i ], [ false, %bb.f ], [ %.mux, %bb.j ], [ false, %.split ]
  ret i1 %.sroa.0.0.shrunk

bb.l:                                             ; preds = %bb.j
  %i.ac = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.y, ptr noundef nonnull align 8 %i.aa)
  br label %bb.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsic_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_20ExprIpyEscapeCommandNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b)
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i32, ptr %i.f, align 8, !noundef !6
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.l = load i32, ptr %i.k, align 4, !noundef !6
end_hunk_2
