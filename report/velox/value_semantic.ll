begin_hunk_0
  %5 = alloca %"class.std::__cxx11::basic_string.3", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string.3", align 8 ; 16 uses
  %7 = alloca %"class.std::__cxx11::basic_string.3", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string.3", align 8 ; 18 uses
  %9 = alloca %"class.std::__cxx11::basic_string.3", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
end_hunk_0
begin_hunk_1
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 20 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null          ; 3 uses
  %.sink284.sroa.gep288 = getelementptr inbounds nuw i8, ptr %9, i64 18
  %.sink284.sroa.gep289 = getelementptr inbounds nuw i8, ptr %9, i64 17
  %.sink281.sroa.gep = getelementptr inbounds nuw i8, ptr %9, i64 17
  %.sink281.sroa.gep290 = getelementptr inbounds nuw i8, ptr %9, i64 17
  %.sink281.sroa.gep291 = getelementptr inbounds nuw i8, ptr %8, i64 18
  %.sink281.sroa.gep292 = getelementptr inbounds nuw i8, ptr %8, i64 17
  br i1 %.not10.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %.lr.ph.i.i.i

end_hunk_1
begin_hunk_2
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  switch i32 %i.dm, label %bb.m [
    i32 1, label %._crit_edge.i.i22.i
    i32 4096, label %._crit_edge.i.i14.i
  ]

._crit_edge.i.i14.i:                              ; preds = %bb.l
  %.ptr274.a = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
end_hunk_2
begin_hunk_3
  call void @__cxa_free_exception(ptr nonnull %i.dn) #30, !noalias !103
  br label %.body

_ZNK5boost15program_options22error_with_option_name27get_canonical_option_prefixB5cxx11Ev.exit: ; preds = %._crit_edge.i.i22.i, %._crit_edge.i.i14.i
  %.sink = phi i64 [ 2, %._crit_edge.i.i22.i ], [ 1, %._crit_edge.i.i14.i ] ; 5 uses
  %.sink279.sroa.phi = phi ptr [ %.sink281.sroa.gep291, %._crit_edge.i.i22.i ], [ %.sink281.sroa.gep292, %._crit_edge.i.i14.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sink, ptr %i.dp, align 8, !tbaa !21, !alias.scope !103
  store i8 0, ptr %.sink279.sroa.phi, align 1, !tbaa !22, !alias.scope !103
  %.ptr = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.dq = load ptr, ptr %6, align 8, !tbaa !18, !noalias !106 ; 3 uses
end_hunk_3
begin_hunk_4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i: ; preds = %._crit_edge.i.i22.i187, %._crit_edge.i.i14.i188, %._crit_edge.i.i6.i189, %._crit_edge.i.i.i190
  %.sink285 = phi i64 [ 2, %._crit_edge.i.i22.i187 ], [ 1, %._crit_edge.i.i14.i188 ], [ 1, %._crit_edge.i.i6.i189 ], [ 1, %._crit_edge.i.i.i190 ] ; 3 uses
  %.sink284.sroa.phi = phi ptr [ %.sink284.sroa.gep288, %._crit_edge.i.i22.i187 ], [ %.sink284.sroa.gep289, %._crit_edge.i.i14.i188 ], [ %.sink281.sroa.gep, %._crit_edge.i.i6.i189 ], [ %.sink281.sroa.gep290, %._crit_edge.i.i.i190 ]
  %i.fg = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.sink285, ptr %i.fg, align 8, !tbaa !21, !alias.scope !109
  store i8 0, ptr %.sink284.sroa.phi, align 1, !tbaa !22, !alias.scope !109
end_hunk_4
