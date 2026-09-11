Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.05?download=true
inline.NumInlined: 3215
inline.NumDeleted: 1068
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers13diff_deadlineINtNtB4_5utils12OffsetLookupjEBZ_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2m_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter:bb.a
.thread.i:                                        ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1087, !noalias !1088, !noundef !5 ; 2 uses
  %i.j = sub i64 %5, %i.i                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !1087, !noalias !1088, !noundef !5 ; 4 uses
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit26.i, label %bb.d

bb.d:                                             ; preds = %.thread.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #28, !noalias !1089
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit26.i: ; preds = %.thread.i
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1087, !noalias !1088, !nonnull !5, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1091, !noalias !1092, !noundef !5 ; 2 uses
  %i.r = sub i64 %2, %i.q                         ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !1091, !noalias !1092, !noundef !5 ; 4 uses
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit25.i, label %bb.e

bb.e:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit26.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @175) #28, !noalias !1093
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit25.i: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit26.i
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.j
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !1091, !noalias !1092, !nonnull !5, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.r
  %.val32.i = load i64, ptr %i.v, align 8, !noalias !1085, !noundef !5
  %.val33.i = load i64, ptr %i.y, align 8, !noalias !1085, !noundef !5
  %i.z = icmp eq i64 %.val32.i, %.val33.i
  br i1 %i.z, label %bb.m, label %bb.f

bb.f:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit25.i
  %i.aa = xor i64 %i.i, -1
  %i.ab = add i64 %6, %i.aa                       ; 3 uses
  %i.ac = icmp ult i64 %i.ab, %i.l
  br i1 %i.ac, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit24.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #28, !noalias !1094
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit24.i: ; preds = %bb.f
  %i.ad = xor i64 %i.q, -1
  %i.ae = add i64 %3, %i.ad                       ; 3 uses
  %i.af = icmp ult i64 %i.ae, %i.t
  br i1 %i.af, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.h

bb.h:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit24.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ae, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @177) #28, !noalias !1095
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit24.i
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ab
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ae
  %.val30.i = load i64, ptr %i.ag, align 8, !noalias !1085, !noundef !5
  %.val31.i = load i64, ptr %i.ah, align 8, !noalias !1085, !noundef !5
  %i.ai = icmp eq i64 %.val30.i, %.val31.i
  br i1 %i.ai, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i
  %i.aj = tail call fastcc noundef i8 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtB4_5utils12OffsetLookupjEB15_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
  %cond.i = icmp eq i8 %i.aj, 0
  br i1 %cond.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.val6, i64 120 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val6, i64 136 ; 3 uses
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !1096, !noalias !1097, !noundef !5 ; 4 uses
  %i.an = load i64, ptr %i.ak, align 8, !range !10, !alias.scope !1096, !noalias !1097, !noundef !5
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %bb.k, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak), !noalias !1097
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.k, %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.val6, i64 128 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !1096, !noalias !1097, !nonnull !5, !noundef !5
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %i.aq, i64 %i.am ; 4 uses
  store i64 1, ptr %i.ar, align 8, !noalias !1098
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1098
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 %.sroa.04.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1098
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store i64 %5, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1098
  %i.as = add i64 %i.am, 1                        ; 3 uses
  store i64 %i.as, ptr %i.al, align 8, !alias.scope !1096, !noalias !1097
  %i.at = load i64, ptr %i.ak, align 8, !range !10, !alias.scope !1099, !noalias !1100, !noundef !5
  %i.au = icmp eq i64 %i.as, %i.at
  br i1 %i.au, label %bb.l, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit

bb.l:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak), !noalias !1100
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i, %bb.l
  %i.av = load ptr, ptr %i.ap, align 8, !alias.scope !1099, !noalias !1100, !nonnull !5, !noundef !5
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %i.av, i64 %i.as ; 4 uses
  store i64 2, ptr %i.aw, align 8, !noalias !1101
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %2, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !1101
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 %5, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !1101
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i64 %.sroa.011.0.i, ptr %.sroa.67.0..sroa_idx.i, align 8, !noalias !1101
  %i.ax = add i64 %i.am, 2
  store i64 %i.ax, ptr %i.al, align 8, !alias.scope !1099, !noalias !1100
  br label %bb.n

bb.m:                                             ; preds = %bb.a, %bb.b, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit25.i, %bb.i, %bb.c, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i
  tail call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupjEB14_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2s_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit, %bb.m
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers13diff_deadlineINtNtB4_5utils12OffsetLookupmEBZ_INtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupmEB1j_INtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupmEB14_INtNtB4_7compact7CompactB14_B14_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers13diff_deadlineINtNtB6_4text12TextDiffSideeEBZ_INtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB6_4text12TextDiffSideeEB1j_INtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtB6_4text12TextDiffSideeEB14_INtNtB4_7compact7CompactB14_B14_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtB4_5utils12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %2, %3
  %i.b = sub nuw i64 %3, %2
  %.sroa.025.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 6 uses
  %i.c = icmp ult i64 %5, %6
  %i.d = sub nuw i64 %6, %5
  %.sroa.037.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 4 uses
  %i.e = sub i64 %.sroa.025.0, %.sroa.037.0       ; 3 uses
  %i.f = and i64 %i.e, 1
  %.not = icmp eq i64 %i.f, 0                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 4 uses
  %i.i = add i64 %i.h, 1                          ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !5 ; 16 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !5 ; 4 uses
  %i.r = add i64 %i.q, 1                          ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !5 ; 16 uses
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  store i64 0, ptr %i.x, align 8
  %i.y = add i64 %.sroa.037.0, %.sroa.025.0       ; 2 uses
  %i.z = lshr i64 %i.y, 1                         ; 2 uses
  %.sroa.047.0 = sub nuw i64 %i.y, %i.z           ; 2 uses
  %i.aa = icmp ult i64 %i.k, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aa)
  %.not128.not = icmp ugt i64 %i.k, %.sroa.047.0
  br i1 %.not128.not, label %bb.g, label %bb.f, !prof !8

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #28
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #28
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp ult i64 %i.t, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ab)
  %.not129.not = icmp samesign ugt i64 %i.t, %.sroa.047.0
  br i1 %.not129.not, label %.lr.ph269, label %bb.h, !prof !8

.lr.ph269:                                        ; preds = %bb.g
  %i.ac = add i64 %i.h, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load i64, ptr %i.af, align 8            ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !5 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load i64, ptr %i.al, align 8            ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !5 ; 2 uses
  %i.ap = add i64 %i.q, -1
  %i.aq = add i64 %.sroa.025.0, %2                ; 2 uses
  %i.ar = add i64 %.sroa.037.0, %5                ; 2 uses
  %11 = add i64 %6, %3
  %12 = add i64 %11, 1
  %umin = tail call i64 @llvm.umin.i64(i64 %6, i64 %5)
  %umin314 = tail call i64 @llvm.umin.i64(i64 %3, i64 %2)
  %13 = add i64 %umin, %umin314
  %14 = add i64 %13, %i.z
  %15 = sub i64 %12, %14
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #28
  unreachable

bb.i:                                             ; preds = %.lr.ph269, %._crit_edge265
  %.sroa.048.0268 = phi i64 [ 0, %.lr.ph269 ], [ %i.as, %._crit_edge265 ] ; 8 uses
  %i.as = add nuw i64 %.sroa.048.0268, 1          ; 2 uses
  %i.at = tail call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef %10)
  br i1 %i.at, label %._crit_edge270, label %.lr.ph248.preheader

.lr.ph248.preheader:                              ; preds = %bb.i
  %i.au = sub nsw i64 0, %.sroa.048.0268          ; 6 uses
  br label %.lr.ph248

.lr.ph248:                                        ; preds = %.lr.ph248.preheader, %bb.bl
  %.sroa.7.0247 = phi i64 [ %.sroa.7.1, %bb.bl ], [ %.sroa.048.0268, %.lr.ph248.preheader ] ; 2 uses
  %not..sroa.14163.0246 = phi i64 [ 1, %bb.bl ], [ 0, %.lr.ph248.preheader ]
  %i.av = sub i64 %.sroa.7.0247, %not..sroa.14163.0246 ; 12 uses
  %.not.i.not.i = icmp sgt i64 %i.av, %.sroa.7.0247
  br i1 %.not.i.not.i, label %.lr.ph264.preheader, label %bb.j

bb.j:                                             ; preds = %.lr.ph248
  %i.aw = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.av, i64 %i.au)
  switch i8 %i.aw, label %bb.k [
    i8 -1, label %.lr.ph264.preheader
    i8 0, label %bb.m
    i8 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ax = add i64 %i.av, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.11.1 = phi i1 [ true, %bb.j ], [ false, %bb.l ]
  %.sroa.7.1 = phi i64 [ %i.av, %bb.j ], [ %i.ax, %bb.l ] ; 2 uses
  %i.ay = icmp eq i64 %i.av, %i.au
  br i1 %i.ay, label %._crit_edge316.a, label %bb.ar

._crit_edge316.a:                                 ; preds = %bb.m
  %.pre321 = add i64 %i.i, %i.av
  br label %bb.as

.lr.ph264:                                        ; preds = %.lr.ph264.preheader, %bb.am
  %not..sroa.17172.0262 = phi i64 [ 1, %bb.am ], [ 0, %.lr.ph264.preheader ]
  %.sroa.7171.0261 = phi i64 [ %.sroa.7171.1, %bb.am ], [ %.sroa.048.0268, %.lr.ph264.preheader ] ; 2 uses
  %i.az = sub i64 %.sroa.7171.0261, %not..sroa.17172.0262 ; 12 uses
  %.not.i.not.i144 = icmp sgt i64 %i.az, %.sroa.7171.0261
  br i1 %.not.i.not.i144, label %._crit_edge265, label %bb.n

bb.n:                                             ; preds = %.lr.ph264
  %i.ba = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.az, i64 %i.au)
  switch i8 %i.ba, label %bb.o [
    i8 -1, label %._crit_edge265
    i8 0, label %bb.q
    i8 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bb = add i64 %i.az, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.sroa.7171.1 = phi i64 [ %i.az, %bb.n ], [ %i.bb, %bb.p ] ; 2 uses
  %.sroa.12.1 = phi i1 [ true, %bb.n ], [ false, %bb.p ]
  %i.bc = icmp eq i64 %i.az, %i.au
  br i1 %i.bc, label %._crit_edge318.a, label %bb.r

._crit_edge318.a:                                 ; preds = %bb.q
  %.pre = add i64 %i.r, %i.az
  br label %bb.s

._crit_edge265:                                   ; preds = %bb.am, %bb.n, %.lr.ph264
  %exitcond314.not = icmp eq i64 %i.as, %15
  br i1 %exitcond314.not, label %._crit_edge270, label %bb.i

bb.r:                                             ; preds = %bb.q
  %.not130 = icmp eq i64 %i.az, %.sroa.048.0268
  %.pre319 = add i64 %i.ap, %i.az                 ; 6 uses
  br i1 %.not130, label %._crit_edge317, label %bb.t

bb.s:                                             ; preds = %._crit_edge318.a, %bb.w
  %.pre-phi = phi i64 [ %.pre, %._crit_edge318.a ], [ %i.bg, %bb.w ] ; 3 uses
  %i.bd = icmp ult i64 %.pre-phi, %i.t
  br i1 %i.bd, label %bb.ab, label %bb.ac

._crit_edge317:                                   ; preds = %bb.r, %bb.w
  %i.be = icmp ult i64 %.pre319, %i.t
  br i1 %i.be, label %bb.y, label %bb.z

bb.t:                                             ; preds = %bb.r
  %i.bf = icmp ult i64 %.pre319, %i.t
  br i1 %i.bf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bg = add i64 %i.r, %i.az                     ; 4 uses
  %i.bh = icmp ult i64 %i.bg, %i.t
  br i1 %i.bh, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.t
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #28
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre319
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !5
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bg
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !5
  %i.bm = icmp ult i64 %i.bj, %i.bl
  br i1 %i.bm, label %bb.s, label %._crit_edge317

bb.x:                                             ; preds = %bb.u
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bg, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #28
  unreachable

bb.y:                                             ; preds = %._crit_edge317
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre319
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !5
  %i.bp = add i64 %i.bo, 1
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge317
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #28
  unreachable

bb.aa:                                            ; preds = %bb.ab, %bb.y
  %.sroa.014.0 = phi i64 [ %i.bu, %bb.ab ], [ %i.bp, %bb.y ] ; 5 uses
  %i.bq = sub i64 %.sroa.014.0, %i.az             ; 4 uses
  %i.br = icmp ult i64 %.sroa.014.0, %.sroa.025.0
  %i.bs = icmp ult i64 %i.bq, %.sroa.037.0
  %or.cond = and i1 %i.br, %i.bs
  br i1 %or.cond, label %bb.ae, label %bb.ad

bb.ab:                                            ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre-phi
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !5
  br label %bb.aa

bb.ac:                                            ; preds = %bb.s
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28
  unreachable

bb.ad:                                            ; preds = %bb.aa, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.020.0 = phi i64 [ %i.cj, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %i.bq, %bb.aa ]
  %.sroa.014.1 = phi i64 [ %i.ci, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.014.0, %bb.aa ] ; 3 uses
  %i.bv = add i64 %i.az, %i.q                     ; 3 uses
  %i.bw = icmp ult i64 %i.bv, %i.t
  br i1 %i.bw, label %bb.aj, label %bb.ak

bb.ae:                                            ; preds = %bb.aa
  %i.bx = sub i64 %i.aq, %.sroa.014.0             ; 2 uses
  %i.by = sub i64 %i.ar, %i.bq                    ; 2 uses
  %i.bz = sub i64 %i.bx, %2
  %i.ca = sub i64 %i.by, %5
  %.sroa.0.0.i148 = tail call noundef i64 @llvm.umin.i64(i64 %i.ca, i64 %i.bz) ; 3 uses
  %.not273 = icmp eq i64 %.sroa.0.0.i148, 0
  br i1 %.not273, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph253

.lr.ph253:                                        ; preds = %bb.ae
  %invariant.op256 = sub i64 %i.by, %i.ae
  %invariant.op258 = sub i64 %i.bx, %i.ak
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph253, %bb.ai
  %.sroa.0.0.i136251 = phi i64 [ 0, %.lr.ph253 ], [ %i.ch, %bb.ai ] ; 3 uses
  %i.cb = xor i64 %.sroa.0.0.i136251, -1          ; 2 uses
  %.reass257 = add i64 %invariant.op256, %i.cb    ; 3 uses
  %i.cc = icmp ult i64 %.reass257, %i.ag
  br i1 %i.cc, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit137, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.reass257, i64 noundef %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #28, !noalias !1110
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit137: ; preds = %bb.af
  %.reass259 = add i64 %invariant.op258, %i.cb    ; 3 uses
  %i.cd = icmp ult i64 %.reass259, %i.am
  br i1 %i.cd, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit, label %bb.ah

bb.ah:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit137
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.reass259, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #28, !noalias !1111
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit137
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.reass257
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.reass259
  %.val = load i64, ptr %i.ce, align 8, !noundef !5
  %.val140 = load i64, ptr %i.cf, align 8, !noundef !5
  %i.cg = icmp eq i64 %.val, %.val140
  br i1 %i.cg, label %bb.ai, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECsEhZmuQNqkz_11ruff_linter.exit

bb.ai:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit
  %i.ch = add nuw i64 %.sroa.0.0.i136251, 1       ; 2 uses
  %exitcond313.not = icmp eq i64 %i.ch, %.sroa.0.0.i148
  br i1 %exitcond313.not, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.af

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit, %bb.ai, %bb.ae
  %.sroa.0.0.i136.lcssa = phi i64 [ 0, %bb.ae ], [ %.sroa.0.0.i148, %bb.ai ], [ %.sroa.0.0.i136251, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit ] ; 2 uses
  %i.ci = add i64 %.sroa.0.0.i136.lcssa, %.sroa.014.0
  %i.cj = add i64 %.sroa.0.0.i136.lcssa, %i.bq
  br label %bb.ad

bb.aj:                                            ; preds = %bb.ad
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bv
  store i64 %.sroa.014.1, ptr %i.ck, align 8
  br i1 %.not, label %bb.al, label %bb.am

bb.ak:                                            ; preds = %bb.ad
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bv, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #28
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.cl = sub i64 %i.az, %i.e                     ; 2 uses
  %.sroa.024.0 = tail call i64 @llvm.abs.i64(i64 %i.cl, i1 false)
  %.not131 = icmp sgt i64 %.sroa.024.0, %.sroa.048.0268
  br i1 %.not131, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %bb.ao, %bb.aj
  %.not.i143 = icmp slt i64 %.sroa.7171.1, %i.au
  %or.cond188 = select i1 %.sroa.12.1, i1 true, i1 %.not.i143
  br i1 %or.cond188, label %._crit_edge265, label %.lr.ph264

bb.an:                                            ; preds = %bb.al
  %i.cm = sub i64 %i.h, %i.cl                     ; 3 uses
  %i.cn = icmp ult i64 %i.cm, %i.k
  br i1 %i.cn, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cm
  %i.cp = load i64, ptr %i.co, align 8, !noundef !5
  %i.cq = add i64 %i.cp, %.sroa.014.1
  %.not132 = icmp ult i64 %i.cq, %.sroa.025.0
  br i1 %.not132, label %bb.am, label %bb.aq

bb.ap:                                            ; preds = %bb.an
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cm, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #28
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.cr = sub i64 %i.aq, %.sroa.014.1
  %i.cs = sub i64 %i.ar, %.sroa.020.0
  br label %._crit_edge270.sink.split

bb.ar:                                            ; preds = %bb.m
  %.not133 = icmp eq i64 %i.av, %.sroa.048.0268
  %.pre323 = add i64 %i.ac, %i.av                 ; 6 uses
  br i1 %.not133, label %._crit_edge315, label %bb.at

bb.as:                                            ; preds = %._crit_edge316.a, %bb.aw
  %.pre-phi322 = phi i64 [ %.pre321, %._crit_edge316.a ], [ %i.cw, %bb.aw ] ; 3 uses
  %i.ct = icmp ult i64 %.pre-phi322, %i.k
  br i1 %i.ct, label %bb.bb, label %bb.bc

._crit_edge315:                                   ; preds = %bb.ar, %bb.aw
  %i.cu = icmp ult i64 %.pre323, %i.k
  br i1 %i.cu, label %bb.ay, label %bb.az

bb.at:                                            ; preds = %bb.ar
  %i.cv = icmp ult i64 %.pre323, %i.k
  br i1 %i.cv, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.cw = add i64 %i.i, %i.av                     ; 4 uses
  %i.cx = icmp ult i64 %i.cw, %i.k
  br i1 %i.cx, label %bb.aw, label %bb.ax

bb.av:                                            ; preds = %bb.at
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre323, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #28
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre323
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !5
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cw
  %i.db = load i64, ptr %i.da, align 8, !noundef !5
  %i.dc = icmp ult i64 %i.cz, %i.db
  br i1 %i.dc, label %bb.as, label %._crit_edge315

bb.ax:                                            ; preds = %bb.au
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cw, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #28
  unreachable

bb.ay:                                            ; preds = %._crit_edge315
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre323
  %i.de = load i64, ptr %i.dd, align 8, !noundef !5
  %i.df = add i64 %i.de, 1
  br label %bb.ba

bb.az:                                            ; preds = %._crit_edge315
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre323, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28
  unreachable

bb.ba:                                            ; preds = %bb.bb, %bb.ay
  %.sroa.04.0 = phi i64 [ %i.dl, %bb.bb ], [ %i.df, %bb.ay ] ; 6 uses
  %i.dg = sub i64 %.sroa.04.0, %i.av              ; 3 uses
  %i.dh = icmp ult i64 %.sroa.04.0, %i.b
  %.sroa.051.0 = select i1 %i.a, i1 %i.dh, i1 false
  %i.di = icmp ult i64 %i.dg, %i.d
  %i.dj = and i1 %i.c, %.sroa.051.0
  %or.cond186 = select i1 %i.dj, i1 %i.di, i1 false
  br i1 %or.cond186, label %bb.be, label %bb.bd

bb.bb:                                            ; preds = %bb.as
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre-phi322
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !5
  br label %bb.ba

bb.bc:                                            ; preds = %bb.as
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi322, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #28
  unreachable

bb.bd:                                            ; preds = %bb.ba, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.04.1 = phi i64 [ %i.dy, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.04.0, %bb.ba ] ; 2 uses
  %i.dm = add i64 %i.av, %i.h                     ; 3 uses
  %i.dn = icmp ult i64 %i.dm, %i.k
  br i1 %i.dn, label %bb.bj, label %bb.bk

bb.be:                                            ; preds = %bb.ba
  %i.do = add i64 %.sroa.04.0, %2                 ; 2 uses
  %i.dp = add i64 %i.dg, %5                       ; 2 uses
  %i.dq = sub i64 %3, %i.do
  %i.dr = sub i64 %6, %i.dp
  %.sroa.0.0.i149 = tail call noundef i64 @llvm.umin.i64(i64 %i.dr, i64 %i.dq) ; 3 uses
  %.not272 = icmp eq i64 %.sroa.0.0.i149, 0
  br i1 %.not272, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.be
  %invariant.op = sub i64 %i.dp, %i.ae            ; 2 uses
  %invariant.op243 = sub i64 %i.do, %i.ak         ; 2 uses
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph, %bb.bi
  %.sroa.0.0.i241 = phi i64 [ 0, %.lr.ph ], [ %i.dx, %bb.bi ] ; 4 uses
  %.reass = add nuw i64 %.sroa.0.0.i241, %invariant.op ; 2 uses
  %i.ds = icmp ult i64 %.reass, %i.ag
  br i1 %i.ds, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit139, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %invariant.op)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #28, !noalias !1112
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit139: ; preds = %bb.bf
  %.reass244 = add nuw i64 %.sroa.0.0.i241, %invariant.op243 ; 2 uses
  %i.dt = icmp ult i64 %.reass244, %i.am
  br i1 %i.dt, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit138, label %bb.bh

bb.bh:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit139
  %umax312 = tail call i64 @llvm.umax.i64(i64 %i.am, i64 %invariant.op243)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax312, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #28, !noalias !1113
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit138: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit139
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.reass
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.reass244
  %.val141 = load i64, ptr %i.du, align 8, !noundef !5
  %.val142 = load i64, ptr %i.dv, align 8, !noundef !5
  %i.dw = icmp eq i64 %.val141, %.val142
  br i1 %i.dw, label %bb.bi, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECsEhZmuQNqkz_11ruff_linter.exit

bb.bi:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit138
  %i.dx = add nuw i64 %.sroa.0.0.i241, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.dx, %.sroa.0.0.i149
  br i1 %exitcond.not, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.bf

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit138, %bb.bi, %bb.be
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %bb.be ], [ %.sroa.0.0.i149, %bb.bi ], [ %.sroa.0.0.i241, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit138 ]
  %i.dy = add i64 %.sroa.0.0.i.lcssa, %.sroa.04.0
  br label %bb.bd

bb.bj:                                            ; preds = %bb.bd
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dm
  store i64 %.sroa.04.1, ptr %i.dz, align 8
  br i1 %.not, label %bb.bl, label %bb.bm

bb.bk:                                            ; preds = %bb.bd
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.dm, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #28
  unreachable

bb.bl:                                            ; preds = %bb.bm, %bb.bo, %bb.bj
  %.not.i = icmp slt i64 %.sroa.7.1, %i.au
  %or.cond187 = select i1 %.sroa.11.1, i1 true, i1 %.not.i
  br i1 %or.cond187, label %.lr.ph264.preheader, label %.lr.ph248

.lr.ph264.preheader:                              ; preds = %.lr.ph248, %bb.j, %bb.bl
  br label %.lr.ph264

bb.bm:                                            ; preds = %bb.bj
  %i.ea = sub i64 %i.av, %i.e                     ; 2 uses
  %.sroa.010.0 = tail call i64 @llvm.abs.i64(i64 %i.ea, i1 false)
  %.not134.not = icmp slt i64 %.sroa.010.0, %.sroa.048.0268
  br i1 %.not134.not, label %bb.bn, label %bb.bl

bb.bn:                                            ; preds = %bb.bm
  %i.eb = sub i64 %i.q, %i.ea                     ; 3 uses
  %i.ec = icmp ult i64 %i.eb, %i.t
  br i1 %i.ec, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.eb
  %i.ee = load i64, ptr %i.ed, align 8, !noundef !5
  %i.ef = add i64 %i.ee, %.sroa.04.1
  %.not135 = icmp ult i64 %i.ef, %.sroa.025.0
  br i1 %.not135, label %bb.bl, label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.eb, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #28
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.eg = add i64 %.sroa.04.0, %2
  %i.eh = add i64 %i.dg, %5
  br label %._crit_edge270.sink.split

._crit_edge270.sink.split:                        ; preds = %bb.bq, %bb.aq
  %.sink398 = phi i64 [ %i.cr, %bb.aq ], [ %i.eg, %bb.bq ]
  %.sink396 = phi i64 [ %i.cs, %bb.aq ], [ %i.eh, %bb.bq ]
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink398, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink396, ptr %i.ej, align 8
  br label %._crit_edge270

._crit_edge270:                                   ; preds = %bb.i, %._crit_edge265, %._crit_edge270.sink.split
  %.sink = phi i64 [ 1, %._crit_edge270.sink.split ], [ 0, %._crit_edge265 ], [ 0, %bb.i ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtB4_5utils12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %2, %3
  %i.b = sub nuw i64 %3, %2
  %.sroa.025.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 6 uses
  %i.c = icmp ult i64 %5, %6
  %i.d = sub nuw i64 %6, %5
  %.sroa.037.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 4 uses
  %i.e = sub i64 %.sroa.025.0, %.sroa.037.0       ; 3 uses
  %i.f = and i64 %i.e, 1
  %.not = icmp eq i64 %i.f, 0                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 4 uses
  %i.i = add i64 %i.h, 1                          ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !5 ; 16 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !5 ; 4 uses
  %i.r = add i64 %i.q, 1                          ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !5 ; 16 uses
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  store i64 0, ptr %i.x, align 8
  %i.y = add i64 %.sroa.037.0, %.sroa.025.0       ; 2 uses
  %i.z = lshr i64 %i.y, 1                         ; 2 uses
  %.sroa.047.0 = sub nuw i64 %i.y, %i.z           ; 2 uses
  %i.aa = icmp ult i64 %i.k, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aa)
  %.not128.not = icmp ugt i64 %i.k, %.sroa.047.0
  br i1 %.not128.not, label %bb.g, label %bb.f, !prof !8

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #28
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #28
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp ult i64 %i.t, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ab)
  %.not129.not = icmp samesign ugt i64 %i.t, %.sroa.047.0
  br i1 %.not129.not, label %.lr.ph269, label %bb.h, !prof !8

.lr.ph269:                                        ; preds = %bb.g
  %i.ac = add i64 %i.h, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load i64, ptr %i.af, align 8            ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !5 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load i64, ptr %i.al, align 8            ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !5 ; 2 uses
  %i.ap = add i64 %i.q, -1
  %i.aq = add i64 %.sroa.025.0, %2                ; 2 uses
  %i.ar = add i64 %.sroa.037.0, %5                ; 2 uses
  %11 = add i64 %6, %3
  %12 = add i64 %11, 1
  %umin = tail call i64 @llvm.umin.i64(i64 %6, i64 %5)
  %umin314 = tail call i64 @llvm.umin.i64(i64 %3, i64 %2)
  %13 = add i64 %umin, %umin314
  %14 = add i64 %13, %i.z
  %15 = sub i64 %12, %14
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #28
  unreachable

bb.i:                                             ; preds = %.lr.ph269, %._crit_edge265
  %.sroa.048.0268 = phi i64 [ 0, %.lr.ph269 ], [ %i.as, %._crit_edge265 ] ; 8 uses
  %i.as = add nuw i64 %.sroa.048.0268, 1          ; 2 uses
  %i.at = tail call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef %10)
  br i1 %i.at, label %._crit_edge270, label %.lr.ph248.preheader

.lr.ph248.preheader:                              ; preds = %bb.i
  %i.au = sub nsw i64 0, %.sroa.048.0268          ; 6 uses
  br label %.lr.ph248

.lr.ph248:                                        ; preds = %.lr.ph248.preheader, %bb.bl
  %.sroa.7.0247 = phi i64 [ %.sroa.7.1, %bb.bl ], [ %.sroa.048.0268, %.lr.ph248.preheader ] ; 2 uses
  %not..sroa.14163.0246 = phi i64 [ 1, %bb.bl ], [ 0, %.lr.ph248.preheader ]
  %i.av = sub i64 %.sroa.7.0247, %not..sroa.14163.0246 ; 12 uses
  %.not.i.not.i = icmp sgt i64 %i.av, %.sroa.7.0247
  br i1 %.not.i.not.i, label %.lr.ph264.preheader, label %bb.j

bb.j:                                             ; preds = %.lr.ph248
  %i.aw = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.av, i64 %i.au)
  switch i8 %i.aw, label %bb.k [
    i8 -1, label %.lr.ph264.preheader
    i8 0, label %bb.m
    i8 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ax = add i64 %i.av, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.11.1 = phi i1 [ true, %bb.j ], [ false, %bb.l ]
  %.sroa.7.1 = phi i64 [ %i.av, %bb.j ], [ %i.ax, %bb.l ] ; 2 uses
  %i.ay = icmp eq i64 %i.av, %i.au
  br i1 %i.ay, label %._crit_edge316.a, label %bb.ar

._crit_edge316.a:                                 ; preds = %bb.m
  %.pre321 = add i64 %i.i, %i.av
  br label %bb.as

.lr.ph264:                                        ; preds = %.lr.ph264.preheader, %bb.am
  %not..sroa.17172.0262 = phi i64 [ 1, %bb.am ], [ 0, %.lr.ph264.preheader ]
  %.sroa.7171.0261 = phi i64 [ %.sroa.7171.1, %bb.am ], [ %.sroa.048.0268, %.lr.ph264.preheader ] ; 2 uses
  %i.az = sub i64 %.sroa.7171.0261, %not..sroa.17172.0262 ; 12 uses
  %.not.i.not.i144 = icmp sgt i64 %i.az, %.sroa.7171.0261
  br i1 %.not.i.not.i144, label %._crit_edge265, label %bb.n

bb.n:                                             ; preds = %.lr.ph264
  %i.ba = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.az, i64 %i.au)
  switch i8 %i.ba, label %bb.o [
    i8 -1, label %._crit_edge265
    i8 0, label %bb.q
    i8 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bb = add i64 %i.az, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.sroa.7171.1 = phi i64 [ %i.az, %bb.n ], [ %i.bb, %bb.p ] ; 2 uses
  %.sroa.12.1 = phi i1 [ true, %bb.n ], [ false, %bb.p ]
  %i.bc = icmp eq i64 %i.az, %i.au
  br i1 %i.bc, label %._crit_edge318.a, label %bb.r

._crit_edge318.a:                                 ; preds = %bb.q
  %.pre = add i64 %i.r, %i.az
  br label %bb.s

._crit_edge265:                                   ; preds = %bb.am, %bb.n, %.lr.ph264
  %exitcond314.not = icmp eq i64 %i.as, %15
  br i1 %exitcond314.not, label %._crit_edge270, label %bb.i

bb.r:                                             ; preds = %bb.q
  %.not130 = icmp eq i64 %i.az, %.sroa.048.0268
  %.pre319 = add i64 %i.ap, %i.az                 ; 6 uses
  br i1 %.not130, label %._crit_edge317, label %bb.t

bb.s:                                             ; preds = %._crit_edge318.a, %bb.w
  %.pre-phi = phi i64 [ %.pre, %._crit_edge318.a ], [ %i.bg, %bb.w ] ; 3 uses
  %i.bd = icmp ult i64 %.pre-phi, %i.t
  br i1 %i.bd, label %bb.ab, label %bb.ac

._crit_edge317:                                   ; preds = %bb.r, %bb.w
  %i.be = icmp ult i64 %.pre319, %i.t
  br i1 %i.be, label %bb.y, label %bb.z

bb.t:                                             ; preds = %bb.r
  %i.bf = icmp ult i64 %.pre319, %i.t
  br i1 %i.bf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bg = add i64 %i.r, %i.az                     ; 4 uses
  %i.bh = icmp ult i64 %i.bg, %i.t
  br i1 %i.bh, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.t
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #28
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre319
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !5
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bg
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !5
  %i.bm = icmp ult i64 %i.bj, %i.bl
  br i1 %i.bm, label %bb.s, label %._crit_edge317

bb.x:                                             ; preds = %bb.u
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bg, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #28
  unreachable

bb.y:                                             ; preds = %._crit_edge317
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre319
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !5
  %i.bp = add i64 %i.bo, 1
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge317
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #28
  unreachable

bb.aa:                                            ; preds = %bb.ab, %bb.y
  %.sroa.014.0 = phi i64 [ %i.bu, %bb.ab ], [ %i.bp, %bb.y ] ; 5 uses
  %i.bq = sub i64 %.sroa.014.0, %i.az             ; 4 uses
  %i.br = icmp ult i64 %.sroa.014.0, %.sroa.025.0
  %i.bs = icmp ult i64 %i.bq, %.sroa.037.0
  %or.cond = and i1 %i.br, %i.bs
  br i1 %or.cond, label %bb.ae, label %bb.ad

bb.ab:                                            ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre-phi
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !5
  br label %bb.aa

bb.ac:                                            ; preds = %bb.s
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28
  unreachable

bb.ad:                                            ; preds = %bb.aa, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.020.0 = phi i64 [ %i.cj, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %i.bq, %bb.aa ]
  %.sroa.014.1 = phi i64 [ %i.ci, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.014.0, %bb.aa ] ; 3 uses
  %i.bv = add i64 %i.az, %i.q                     ; 3 uses
  %i.bw = icmp ult i64 %i.bv, %i.t
  br i1 %i.bw, label %bb.aj, label %bb.ak

bb.ae:                                            ; preds = %bb.aa
  %i.bx = sub i64 %i.aq, %.sroa.014.0             ; 2 uses
  %i.by = sub i64 %i.ar, %i.bq                    ; 2 uses
  %i.bz = sub i64 %i.bx, %2
  %i.ca = sub i64 %i.by, %5
  %.sroa.0.0.i148 = tail call noundef i64 @llvm.umin.i64(i64 %i.ca, i64 %i.bz) ; 3 uses
  %.not273 = icmp eq i64 %.sroa.0.0.i148, 0
  br i1 %.not273, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph253

.lr.ph253:                                        ; preds = %bb.ae
  %invariant.op256 = sub i64 %i.by, %i.ae
  %invariant.op258 = sub i64 %i.bx, %i.ak
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph253, %bb.ai
  %.sroa.0.0.i136251 = phi i64 [ 0, %.lr.ph253 ], [ %i.ch, %bb.ai ] ; 3 uses
  %i.cb = xor i64 %.sroa.0.0.i136251, -1          ; 2 uses
  %.reass257 = add i64 %invariant.op256, %i.cb    ; 3 uses
  %i.cc = icmp ult i64 %.reass257, %i.ag
  br i1 %i.cc, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit137, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.reass257, i64 noundef %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #28, !noalias !1122
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit137: ; preds = %bb.af
  %.reass259 = add i64 %invariant.op258, %i.cb    ; 3 uses
  %i.cd = icmp ult i64 %.reass259, %i.am
  br i1 %i.cd, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit, label %bb.ah

bb.ah:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit137
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.reass259, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #28, !noalias !1123
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit137
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.reass257
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.reass259
  %.val = load i32, ptr %i.ce, align 4, !noundef !5
  %.val140 = load i32, ptr %i.cf, align 4, !noundef !5
  %i.cg = icmp eq i32 %.val, %.val140
  br i1 %i.cg, label %bb.ai, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECsEhZmuQNqkz_11ruff_linter.exit

bb.ai:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit
  %i.ch = add nuw i64 %.sroa.0.0.i136251, 1       ; 2 uses
  %exitcond313.not = icmp eq i64 %i.ch, %.sroa.0.0.i148
  br i1 %exitcond313.not, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.af

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit, %bb.ai, %bb.ae
  %.sroa.0.0.i136.lcssa = phi i64 [ 0, %bb.ae ], [ %.sroa.0.0.i148, %bb.ai ], [ %.sroa.0.0.i136251, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit ] ; 2 uses
  %i.ci = add i64 %.sroa.0.0.i136.lcssa, %.sroa.014.0
  %i.cj = add i64 %.sroa.0.0.i136.lcssa, %i.bq
  br label %bb.ad

bb.aj:                                            ; preds = %bb.ad
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bv
  store i64 %.sroa.014.1, ptr %i.ck, align 8
  br i1 %.not, label %bb.al, label %bb.am

bb.ak:                                            ; preds = %bb.ad
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bv, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #28
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.cl = sub i64 %i.az, %i.e                     ; 2 uses
  %.sroa.024.0 = tail call i64 @llvm.abs.i64(i64 %i.cl, i1 false)
  %.not131 = icmp sgt i64 %.sroa.024.0, %.sroa.048.0268
  br i1 %.not131, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %bb.ao, %bb.aj
  %.not.i143 = icmp slt i64 %.sroa.7171.1, %i.au
  %or.cond188 = select i1 %.sroa.12.1, i1 true, i1 %.not.i143
  br i1 %or.cond188, label %._crit_edge265, label %.lr.ph264

bb.an:                                            ; preds = %bb.al
  %i.cm = sub i64 %i.h, %i.cl                     ; 3 uses
  %i.cn = icmp ult i64 %i.cm, %i.k
  br i1 %i.cn, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cm
  %i.cp = load i64, ptr %i.co, align 8, !noundef !5
  %i.cq = add i64 %i.cp, %.sroa.014.1
  %.not132 = icmp ult i64 %i.cq, %.sroa.025.0
  br i1 %.not132, label %bb.am, label %bb.aq

bb.ap:                                            ; preds = %bb.an
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cm, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #28
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.cr = sub i64 %i.aq, %.sroa.014.1
  %i.cs = sub i64 %i.ar, %.sroa.020.0
  br label %._crit_edge270.sink.split

bb.ar:                                            ; preds = %bb.m
  %.not133 = icmp eq i64 %i.av, %.sroa.048.0268
  %.pre323 = add i64 %i.ac, %i.av                 ; 6 uses
  br i1 %.not133, label %._crit_edge315, label %bb.at

bb.as:                                            ; preds = %._crit_edge316.a, %bb.aw
  %.pre-phi322 = phi i64 [ %.pre321, %._crit_edge316.a ], [ %i.cw, %bb.aw ] ; 3 uses
  %i.ct = icmp ult i64 %.pre-phi322, %i.k
  br i1 %i.ct, label %bb.bb, label %bb.bc

._crit_edge315:                                   ; preds = %bb.ar, %bb.aw
  %i.cu = icmp ult i64 %.pre323, %i.k
  br i1 %i.cu, label %bb.ay, label %bb.az

bb.at:                                            ; preds = %bb.ar
  %i.cv = icmp ult i64 %.pre323, %i.k
  br i1 %i.cv, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.cw = add i64 %i.i, %i.av                     ; 4 uses
  %i.cx = icmp ult i64 %i.cw, %i.k
  br i1 %i.cx, label %bb.aw, label %bb.ax

bb.av:                                            ; preds = %bb.at
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre323, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #28
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre323
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !5
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cw
  %i.db = load i64, ptr %i.da, align 8, !noundef !5
  %i.dc = icmp ult i64 %i.cz, %i.db
  br i1 %i.dc, label %bb.as, label %._crit_edge315

bb.ax:                                            ; preds = %bb.au
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cw, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #28
  unreachable

bb.ay:                                            ; preds = %._crit_edge315
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre323
  %i.de = load i64, ptr %i.dd, align 8, !noundef !5
  %i.df = add i64 %i.de, 1
  br label %bb.ba

bb.az:                                            ; preds = %._crit_edge315
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre323, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28
  unreachable

bb.ba:                                            ; preds = %bb.bb, %bb.ay
  %.sroa.04.0 = phi i64 [ %i.dl, %bb.bb ], [ %i.df, %bb.ay ] ; 6 uses
  %i.dg = sub i64 %.sroa.04.0, %i.av              ; 3 uses
  %i.dh = icmp ult i64 %.sroa.04.0, %i.b
  %.sroa.051.0 = select i1 %i.a, i1 %i.dh, i1 false
  %i.di = icmp ult i64 %i.dg, %i.d
  %i.dj = and i1 %i.c, %.sroa.051.0
  %or.cond186 = select i1 %i.dj, i1 %i.di, i1 false
  br i1 %or.cond186, label %bb.be, label %bb.bd

bb.bb:                                            ; preds = %bb.as
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre-phi322
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !5
  br label %bb.ba

bb.bc:                                            ; preds = %bb.as
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi322, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #28
  unreachable

bb.bd:                                            ; preds = %bb.ba, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.04.1 = phi i64 [ %i.dy, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.04.0, %bb.ba ] ; 2 uses
  %i.dm = add i64 %i.av, %i.h                     ; 3 uses
  %i.dn = icmp ult i64 %i.dm, %i.k
  br i1 %i.dn, label %bb.bj, label %bb.bk

bb.be:                                            ; preds = %bb.ba
  %i.do = add i64 %.sroa.04.0, %2                 ; 2 uses
  %i.dp = add i64 %i.dg, %5                       ; 2 uses
  %i.dq = sub i64 %3, %i.do
  %i.dr = sub i64 %6, %i.dp
  %.sroa.0.0.i149 = tail call noundef i64 @llvm.umin.i64(i64 %i.dr, i64 %i.dq) ; 3 uses
  %.not272 = icmp eq i64 %.sroa.0.0.i149, 0
  br i1 %.not272, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.be
  %invariant.op = sub i64 %i.dp, %i.ae            ; 2 uses
  %invariant.op243 = sub i64 %i.do, %i.ak         ; 2 uses
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph, %bb.bi
  %.sroa.0.0.i241 = phi i64 [ 0, %.lr.ph ], [ %i.dx, %bb.bi ] ; 4 uses
  %.reass = add nuw i64 %.sroa.0.0.i241, %invariant.op ; 2 uses
  %i.ds = icmp ult i64 %.reass, %i.ag
  br i1 %i.ds, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit139, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %invariant.op)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #28, !noalias !1124
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit139: ; preds = %bb.bf
  %.reass244 = add nuw i64 %.sroa.0.0.i241, %invariant.op243 ; 2 uses
  %i.dt = icmp ult i64 %.reass244, %i.am
  br i1 %i.dt, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit138, label %bb.bh

bb.bh:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit139
  %umax312 = tail call i64 @llvm.umax.i64(i64 %i.am, i64 %invariant.op243)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax312, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #28, !noalias !1125
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit138: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit139
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.reass
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.reass244
  %.val141 = load i32, ptr %i.du, align 4, !noundef !5
  %.val142 = load i32, ptr %i.dv, align 4, !noundef !5
  %i.dw = icmp eq i32 %.val141, %.val142
  br i1 %i.dw, label %bb.bi, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECsEhZmuQNqkz_11ruff_linter.exit

bb.bi:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit138
  %i.dx = add nuw i64 %.sroa.0.0.i241, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.dx, %.sroa.0.0.i149
  br i1 %exitcond.not, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.bf

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit138, %bb.bi, %bb.be
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %bb.be ], [ %.sroa.0.0.i149, %bb.bi ], [ %.sroa.0.0.i241, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit138 ]
  %i.dy = add i64 %.sroa.0.0.i.lcssa, %.sroa.04.0
  br label %bb.bd

bb.bj:                                            ; preds = %bb.bd
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dm
  store i64 %.sroa.04.1, ptr %i.dz, align 8
  br i1 %.not, label %bb.bl, label %bb.bm

bb.bk:                                            ; preds = %bb.bd
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.dm, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #28
  unreachable

bb.bl:                                            ; preds = %bb.bm, %bb.bo, %bb.bj
  %.not.i = icmp slt i64 %.sroa.7.1, %i.au
  %or.cond187 = select i1 %.sroa.11.1, i1 true, i1 %.not.i
  br i1 %or.cond187, label %.lr.ph264.preheader, label %.lr.ph248

.lr.ph264.preheader:                              ; preds = %.lr.ph248, %bb.j, %bb.bl
  br label %.lr.ph264

bb.bm:                                            ; preds = %bb.bj
  %i.ea = sub i64 %i.av, %i.e                     ; 2 uses
  %.sroa.010.0 = tail call i64 @llvm.abs.i64(i64 %i.ea, i1 false)
  %.not134.not = icmp slt i64 %.sroa.010.0, %.sroa.048.0268
  br i1 %.not134.not, label %bb.bn, label %bb.bl

bb.bn:                                            ; preds = %bb.bm
  %i.eb = sub i64 %i.q, %i.ea                     ; 3 uses
  %i.ec = icmp ult i64 %i.eb, %i.t
  br i1 %i.ec, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.eb
  %i.ee = load i64, ptr %i.ed, align 8, !noundef !5
  %i.ef = add i64 %i.ee, %.sroa.04.1
  %.not135 = icmp ult i64 %i.ef, %.sroa.025.0
  br i1 %.not135, label %bb.bl, label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.eb, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #28
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.eg = add i64 %.sroa.04.0, %2
  %i.eh = add i64 %i.dg, %5
  br label %._crit_edge270.sink.split

._crit_edge270.sink.split:                        ; preds = %bb.bq, %bb.aq
  %.sink398 = phi i64 [ %i.cr, %bb.aq ], [ %i.eg, %bb.bq ]
  %.sink396 = phi i64 [ %i.cs, %bb.aq ], [ %i.eh, %bb.bq ]
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink398, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink396, ptr %i.ej, align 8
  br label %._crit_edge270

._crit_edge270:                                   ; preds = %bb.i, %._crit_edge265, %._crit_edge270.sink.split
  %.sink = phi i64 [ 1, %._crit_edge270.sink.split ], [ 0, %._crit_edge265 ], [ 0, %bb.i ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtB6_4text12TextDiffSideeEB13_ECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %2, %3
  %i.b = sub nuw i64 %3, %2
  %.sroa.025.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 6 uses
  %i.c = icmp ult i64 %5, %6
  %i.d = sub nuw i64 %6, %5
  %.sroa.037.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 4 uses
  %i.e = sub i64 %.sroa.025.0, %.sroa.037.0       ; 3 uses
  %i.f = and i64 %i.e, 1
  %.not = icmp eq i64 %i.f, 0                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 4 uses
  %i.i = add i64 %i.h, 1                          ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !5 ; 16 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !5 ; 4 uses
  %i.r = add i64 %i.q, 1                          ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !5 ; 16 uses
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  store i64 0, ptr %i.x, align 8
  %i.y = add i64 %.sroa.037.0, %.sroa.025.0       ; 2 uses
  %i.z = lshr i64 %i.y, 1                         ; 2 uses
  %.sroa.047.0 = sub nuw i64 %i.y, %i.z           ; 2 uses
  %i.aa = icmp ult i64 %i.k, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aa)
  %.not128.not = icmp ugt i64 %i.k, %.sroa.047.0
  br i1 %.not128.not, label %bb.g, label %bb.f, !prof !8

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #28
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #28
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp ult i64 %i.t, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ab)
  %.not129.not = icmp samesign ugt i64 %i.t, %.sroa.047.0
  br i1 %.not129.not, label %.lr.ph243, label %bb.h, !prof !8

.lr.ph243:                                        ; preds = %bb.g
  %i.ac = add i64 %i.h, -1
  %i.ad = add i64 %i.q, -1
  %i.ae = add i64 %.sroa.025.0, %2                ; 2 uses
  %i.af = add i64 %.sroa.037.0, %5                ; 2 uses
  %11 = add i64 %6, %3
  %12 = add i64 %11, 1
  %umin = tail call i64 @llvm.umin.i64(i64 %6, i64 %5)
  %umin277 = tail call i64 @llvm.umin.i64(i64 %3, i64 %2)
  %13 = add i64 %umin, %umin277
  %14 = add i64 %13, %i.z
  %15 = sub i64 %12, %14
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #28
  unreachable

bb.i:                                             ; preds = %.lr.ph243, %._crit_edge239
  %.sroa.048.0242 = phi i64 [ 0, %.lr.ph243 ], [ %i.ag, %._crit_edge239 ] ; 8 uses
  %i.ag = add nuw i64 %.sroa.048.0242, 1          ; 2 uses
  %i.ah = tail call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef %10)
  br i1 %i.ah, label %._crit_edge244, label %.lr.ph224.preheader

.lr.ph224.preheader:                              ; preds = %bb.i
  %i.ai = sub nsw i64 0, %.sroa.048.0242          ; 6 uses
  br label %.lr.ph224

.lr.ph224:                                        ; preds = %.lr.ph224.preheader, %bb.bf
  %.sroa.7.0223 = phi i64 [ %.sroa.7.1, %bb.bf ], [ %.sroa.048.0242, %.lr.ph224.preheader ] ; 2 uses
  %not..sroa.14161.0222 = phi i64 [ 1, %bb.bf ], [ 0, %.lr.ph224.preheader ]
  %i.aj = sub i64 %.sroa.7.0223, %not..sroa.14161.0222 ; 12 uses
  %.not.i.not.i = icmp sgt i64 %i.aj, %.sroa.7.0223
  br i1 %.not.i.not.i, label %.lr.ph238.preheader, label %bb.j

bb.j:                                             ; preds = %.lr.ph224
  %i.ak = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.aj, i64 %i.ai)
  switch i8 %i.ak, label %bb.k [
    i8 -1, label %.lr.ph238.preheader
    i8 0, label %bb.m
    i8 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.al = add i64 %i.aj, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.11.1 = phi i1 [ true, %bb.j ], [ false, %bb.l ]
  %.sroa.7.1 = phi i64 [ %i.aj, %bb.j ], [ %i.al, %bb.l ] ; 2 uses
  %i.am = icmp eq i64 %i.aj, %i.ai
  br i1 %i.am, label %._crit_edge279.a, label %bb.ao

._crit_edge279.a:                                 ; preds = %bb.m
  %.pre284 = add i64 %i.i, %i.aj
  br label %bb.ap

.lr.ph238:                                        ; preds = %.lr.ph238.preheader, %bb.aj
  %not..sroa.17170.0236 = phi i64 [ 1, %bb.aj ], [ 0, %.lr.ph238.preheader ]
  %.sroa.7169.0235 = phi i64 [ %.sroa.7169.1, %bb.aj ], [ %.sroa.048.0242, %.lr.ph238.preheader ] ; 2 uses
  %i.an = sub i64 %.sroa.7169.0235, %not..sroa.17170.0236 ; 12 uses
  %.not.i.not.i138 = icmp sgt i64 %i.an, %.sroa.7169.0235
  br i1 %.not.i.not.i138, label %._crit_edge239, label %bb.n

bb.n:                                             ; preds = %.lr.ph238
  %i.ao = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.an, i64 %i.ai)
  switch i8 %i.ao, label %bb.o [
    i8 -1, label %._crit_edge239
    i8 0, label %bb.q
    i8 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ap = add i64 %i.an, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.sroa.7169.1 = phi i64 [ %i.an, %bb.n ], [ %i.ap, %bb.p ] ; 2 uses
  %.sroa.12.1 = phi i1 [ true, %bb.n ], [ false, %bb.p ]
  %i.aq = icmp eq i64 %i.an, %i.ai
  br i1 %i.aq, label %._crit_edge281.a, label %bb.r

._crit_edge281.a:                                 ; preds = %bb.q
  %.pre = add i64 %i.r, %i.an
  br label %bb.s

._crit_edge239:                                   ; preds = %bb.aj, %bb.n, %.lr.ph238
  %exitcond277.not = icmp eq i64 %i.ag, %15
  br i1 %exitcond277.not, label %._crit_edge244, label %bb.i

bb.r:                                             ; preds = %bb.q
  %.not130 = icmp eq i64 %i.an, %.sroa.048.0242
  %.pre282 = add i64 %i.ad, %i.an                 ; 6 uses
  br i1 %.not130, label %._crit_edge280, label %bb.t

bb.s:                                             ; preds = %._crit_edge281.a, %bb.w
  %.pre-phi = phi i64 [ %.pre, %._crit_edge281.a ], [ %i.au, %bb.w ] ; 3 uses
  %i.ar = icmp ult i64 %.pre-phi, %i.t
  br i1 %i.ar, label %bb.ab, label %bb.ac

._crit_edge280:                                   ; preds = %bb.r, %bb.w
  %i.as = icmp ult i64 %.pre282, %i.t
  br i1 %i.as, label %bb.y, label %bb.z

bb.t:                                             ; preds = %bb.r
  %i.at = icmp ult i64 %.pre282, %i.t
  br i1 %i.at, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.au = add i64 %i.r, %i.an                     ; 4 uses
  %i.av = icmp ult i64 %i.au, %i.t
  br i1 %i.av, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.t
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre282, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #28
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre282
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !5
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.au
  %i.az = load i64, ptr %i.ay, align 8, !noundef !5
  %i.ba = icmp ult i64 %i.ax, %i.az
  br i1 %i.ba, label %bb.s, label %._crit_edge280

bb.x:                                             ; preds = %bb.u
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.au, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #28
  unreachable

bb.y:                                             ; preds = %._crit_edge280
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre282
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !5
  %i.bd = add i64 %i.bc, 1
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge280
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre282, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #28
  unreachable

bb.aa:                                            ; preds = %bb.ab, %bb.y
  %.sroa.014.0 = phi i64 [ %i.bi, %bb.ab ], [ %i.bd, %bb.y ] ; 5 uses
  %i.be = sub i64 %.sroa.014.0, %i.an             ; 4 uses
  %i.bf = icmp ult i64 %.sroa.014.0, %.sroa.025.0
  %i.bg = icmp ult i64 %i.be, %.sroa.037.0
  %or.cond = and i1 %i.bf, %i.bg
  br i1 %or.cond, label %bb.ae, label %bb.ad

bb.ab:                                            ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre-phi
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !5
  br label %bb.aa

bb.ac:                                            ; preds = %bb.s
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28
  unreachable

bb.ad:                                            ; preds = %bb.aa, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.020.0 = phi i64 [ %i.cc, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %i.be, %bb.aa ]
  %.sroa.014.1 = phi i64 [ %i.cb, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.014.0, %bb.aa ] ; 3 uses
  %i.bj = add i64 %i.an, %i.q                     ; 3 uses
  %i.bk = icmp ult i64 %i.bj, %i.t
  br i1 %i.bk, label %bb.ag, label %bb.ah

bb.ae:                                            ; preds = %bb.aa
  %i.bl = sub i64 %i.ae, %.sroa.014.0             ; 2 uses
  %i.bm = sub i64 %i.af, %i.be                    ; 2 uses
  %i.bn = sub i64 %i.bl, %2
  %i.bo = sub i64 %i.bm, %5
  %.sroa.0.0.i142 = tail call noundef i64 @llvm.umin.i64(i64 %i.bo, i64 %i.bn) ; 3 uses
  %.not247 = icmp eq i64 %.sroa.0.0.i142, 0
  br i1 %.not247, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph229

.lr.ph229:                                        ; preds = %bb.ae, %bb.af
  %.sroa.0.0.i136227 = phi i64 [ %i.ca, %bb.af ], [ 0, %bb.ae ] ; 4 uses
  %i.bp = xor i64 %.sroa.0.0.i136227, -1          ; 2 uses
  %i.bq = add i64 %i.bm, %i.bp
  %i.br = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.bq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) ; 2 uses
  %i.bs = extractvalue { ptr, i64 } %i.br, 1      ; 2 uses
  %i.bt = add i64 %i.bl, %i.bp
  %i.bu = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) ; 2 uses
  %i.bv = extractvalue { ptr, i64 } %i.bu, 1
  %i.bw = icmp eq i64 %i.bs, %i.bv
  br i1 %i.bw, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECsEhZmuQNqkz_11ruff_linter.exit

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %.lr.ph229
  %i.bx = extractvalue { ptr, i64 } %i.bu, 0
  %i.by = extractvalue { ptr, i64 } %i.br, 0
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %i.by, ptr nonnull readonly %i.bx, i64 %i.bs), !alias.scope !1132
  %i.bz = icmp eq i32 %bcmp.i, 0
  br i1 %i.bz, label %bb.af, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECsEhZmuQNqkz_11ruff_linter.exit

bb.af:                                            ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit
  %i.ca = add nuw i64 %.sroa.0.0.i136227, 1       ; 2 uses
  %exitcond276.not = icmp eq i64 %i.ca, %.sroa.0.0.i142
  br i1 %exitcond276.not, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph229

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, %bb.af, %.lr.ph229, %bb.ae
  %.sroa.0.0.i136.lcssa = phi i64 [ 0, %bb.ae ], [ %.sroa.0.0.i136227, %.lr.ph229 ], [ %.sroa.0.0.i142, %bb.af ], [ %.sroa.0.0.i136227, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit ] ; 2 uses
  %i.cb = add i64 %.sroa.0.0.i136.lcssa, %.sroa.014.0
  %i.cc = add i64 %.sroa.0.0.i136.lcssa, %i.be
  br label %bb.ad

bb.ag:                                            ; preds = %bb.ad
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bj
  store i64 %.sroa.014.1, ptr %i.cd, align 8
  br i1 %.not, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.ad
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bj, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #28
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.ce = sub i64 %i.an, %i.e                     ; 2 uses
  %.sroa.024.0 = tail call i64 @llvm.abs.i64(i64 %i.ce, i1 false)
  %.not131 = icmp sgt i64 %.sroa.024.0, %.sroa.048.0242
  br i1 %.not131, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.al, %bb.ag
  %.not.i137 = icmp slt i64 %.sroa.7169.1, %i.ai
  %or.cond188 = select i1 %.sroa.12.1, i1 true, i1 %.not.i137
  br i1 %or.cond188, label %._crit_edge239, label %.lr.ph238

bb.ak:                                            ; preds = %bb.ai
  %i.cf = sub i64 %i.h, %i.ce                     ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %i.k
  br i1 %i.cg, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cf
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !5
  %i.cj = add i64 %i.ci, %.sroa.014.1
  %.not132 = icmp ult i64 %i.cj, %.sroa.025.0
  br i1 %.not132, label %bb.aj, label %bb.an

bb.am:                                            ; preds = %bb.ak
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cf, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #28
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.ck = sub i64 %i.ae, %.sroa.014.1
  %i.cl = sub i64 %i.af, %.sroa.020.0
  br label %._crit_edge244.sink.split

bb.ao:                                            ; preds = %bb.m
  %.not133 = icmp eq i64 %i.aj, %.sroa.048.0242
  %.pre286 = add i64 %i.ac, %i.aj                 ; 6 uses
  br i1 %.not133, label %._crit_edge278, label %bb.aq

bb.ap:                                            ; preds = %._crit_edge279.a, %bb.at
  %.pre-phi285 = phi i64 [ %.pre284, %._crit_edge279.a ], [ %i.cp, %bb.at ] ; 3 uses
  %i.cm = icmp ult i64 %.pre-phi285, %i.k
  br i1 %i.cm, label %bb.ay, label %bb.az

._crit_edge278:                                   ; preds = %bb.ao, %bb.at
  %i.cn = icmp ult i64 %.pre286, %i.k
  br i1 %i.cn, label %bb.av, label %bb.aw

bb.aq:                                            ; preds = %bb.ao
  %i.co = icmp ult i64 %.pre286, %i.k
  br i1 %i.co, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.cp = add i64 %i.i, %i.aj                     ; 4 uses
  %i.cq = icmp ult i64 %i.cp, %i.k
  br i1 %i.cq, label %bb.at, label %bb.au

bb.as:                                            ; preds = %bb.aq
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre286, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #28
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre286
  %i.cs = load i64, ptr %i.cr, align 8, !noundef !5
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cp
  %i.cu = load i64, ptr %i.ct, align 8, !noundef !5
  %i.cv = icmp ult i64 %i.cs, %i.cu
  br i1 %i.cv, label %bb.ap, label %._crit_edge278

bb.au:                                            ; preds = %bb.ar
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cp, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #28
  unreachable

bb.av:                                            ; preds = %._crit_edge278
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre286
  %i.cx = load i64, ptr %i.cw, align 8, !noundef !5
  %i.cy = add i64 %i.cx, 1
  br label %bb.ax

end_hunk_0
begin_hunk_1_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1r_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2h_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter:bb.a
  %i.s = add nuw i64 %i.p, %.sroa.82.16.copyload.i ; 2 uses
  %i.t = icmp ult i64 %i.r, %.val14.i.i.i.i.i
  br i1 %i.t, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = add nuw i64 %.sroa.93.16.copyload.i, %.sroa.6.16.copyload.i
  %umax.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.val14.i.i.i.i.i, i64 %i.u)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i.i.i.i, i64 noundef range(i64 0, 576460752303423488) %.val14.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #28, !noalias !3789
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i: ; preds = %bb.c
  %i.v = icmp ult i64 %i.s, %.val12.i.i.i.i.i
  br i1 %i.v, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit15.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i
  %i.w = add i64 %.sroa.93.16.copyload.i, %.sroa.82.16.copyload.i
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.val12.i.i.i.i.i, i64 %i.w)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef range(i64 0, 576460752303423488) %.val12.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #28, !noalias !3790
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit15.i.i.i.i.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %.val13.i.i.i.i.i, i64 %i.r ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3792)
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !3791, !noalias !3793, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !3791, !noalias !3793, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3794)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !3794, !noalias !3795, !noundef !5
  %i.ad = sub i64 %i.aa, %i.ac                    ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !3794, !noalias !3795, !noundef !5 ; 2 uses
  %i.ag = icmp ult i64 %i.ad, %i.af
  br i1 %i.ag, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit15.i.i.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #28, !noalias !3796
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit15.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.val11.i.i.i.i.i, i64 %i.s ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !3794, !noalias !3795, !nonnull !5, !noundef !5
  %i.ak = load ptr, ptr %i.ah, align 8, !alias.scope !3792, !noalias !3797, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !3792, !noalias !3797, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3798)
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !3798, !noalias !3799, !noundef !5
  %i.ap = sub i64 %i.am, %i.ao                    ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !3798, !noalias !3799, !noundef !5 ; 2 uses
  %i.as = icmp ult i64 %i.ap, %i.ar
  br i1 %i.as, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ap, i64 noundef %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #28, !noalias !3800
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ad
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !3798, !noalias !3799, !nonnull !5, !noundef !5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ap
  %.val.i.i.i.i.i = load i32, ptr %i.at, align 4, !noalias !3801, !noundef !5
  %.val10.i.i.i.i.i = load i32, ptr %i.aw, align 4, !noalias !3801, !noundef !5
  %i.ax = icmp eq i32 %.val.i.i.i.i.i, %.val10.i.i.i.i.i
  br i1 %i.ax, label %bb.h, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit

bb.h:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i
  %i.ay = add nuw i64 %.sroa.01.054.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ay, %i.o
  br i1 %exitcond.not.i.i.i.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread409, label %bb.c

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i
  %.not = icmp eq i64 %.sroa.01.054.i.i.i.i, 0
  br i1 %.not, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread409

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread: ; preds = %bb.b, %bb.a, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread409, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.0.0.i73408 = phi i64 [ 0, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.0.0.i73412, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread409 ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %i.az = add i64 %.sroa.0.0.i73408, %2           ; 3 uses
  %i.ba = add i64 %.sroa.0.0.i73408, %5           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3803)
  %i.bb = icmp uge i64 %i.az, %3
  %i.bc = icmp uge i64 %i.ba, %6
  %or.cond.i74 = or i1 %i.bb, %i.bc
  br i1 %or.cond.i74, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge, label %.lr.ph.i.i.i.i75

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge: ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val50.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert1383 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val51.pre = load i64, ptr %.phi.trans.insert1383, align 8
  %.phi.trans.insert1385 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val48.pre = load ptr, ptr %.phi.trans.insert1385, align 8
  %.phi.trans.insert1387 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val49.pre = load i64, ptr %.phi.trans.insert1387, align 8
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit

.lr.ph.i.i.i.i75:                                 ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = sub nuw i64 %3, %i.az                   ; 2 uses
  %i.bi = sub nuw i64 %6, %i.ba                   ; 2 uses
  %.val14.i.i.i.i.i76 = load i64, ptr %i.bd, align 8, !alias.scope !3803, !noalias !3802 ; 5 uses
  %.val12.i.i.i.i.i77 = load i64, ptr %i.be, align 8, !alias.scope !3802, !noalias !3803 ; 5 uses
  %.val11.i.i.i.i.i78 = load ptr, ptr %i.bf, align 8, !alias.scope !3802, !noalias !3803 ; 4 uses
  %.val13.i.i.i.i.i79 = load ptr, ptr %i.bg, align 8, !alias.scope !3803, !noalias !3802 ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i.i.i.i75
  %i.bj = phi i64 [ %3, %.lr.ph.i.i.i.i75 ], [ %i.bm, %bb.o ]
  %.sroa.01.052.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i75 ], [ %i.cq, %bb.o ] ; 3 uses
  %i.bk = phi i64 [ %6, %.lr.ph.i.i.i.i75 ], [ %i.bl, %bb.o ]
  %i.bl = add i64 %i.bk, -1                       ; 4 uses
  %exitcond.not.i.i.i.i80 = icmp eq i64 %.sroa.01.052.i.i.i.i, %i.bh
  br i1 %exitcond.not.i.i.i.i80, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = add i64 %i.bj, -1                       ; 4 uses
  %i.bn = icmp ult i64 %i.bl, %.val14.i.i.i.i.i76
  br i1 %i.bn, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i81, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bl, i64 noundef range(i64 0, 576460752303423488) %.val14.i.i.i.i.i76, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #28, !noalias !3804
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i81: ; preds = %bb.j
  %i.bo = icmp ult i64 %i.bm, %.val12.i.i.i.i.i77
  br i1 %i.bo, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit15.i.i.i.i.i82, label %bb.l

bb.l:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i81
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bm, i64 noundef range(i64 0, 576460752303423488) %.val12.i.i.i.i.i77, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #28, !noalias !3805
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit15.i.i.i.i.i82: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i81
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %.val13.i.i.i.i.i79, i64 %i.bl ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3807)
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !3806, !noalias !3808, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !3806, !noalias !3808, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3809)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !3809, !noalias !3810, !noundef !5
  %i.bv = sub i64 %i.bs, %i.bu                    ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !3809, !noalias !3810, !noundef !5 ; 2 uses
  %i.by = icmp ult i64 %i.bv, %i.bx
  br i1 %i.by, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i83, label %bb.m

bb.m:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit15.i.i.i.i.i82
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bv, i64 noundef %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #28, !noalias !3811
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i83: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit15.i.i.i.i.i82
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %.val11.i.i.i.i.i78, i64 %i.bm ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !3809, !noalias !3810, !nonnull !5, !noundef !5
  %i.cc = load ptr, ptr %i.bz, align 8, !alias.scope !3807, !noalias !3812, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !3807, !noalias !3812, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3813)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !3813, !noalias !3814, !noundef !5
  %i.ch = sub i64 %i.ce, %i.cg                    ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !3813, !noalias !3814, !noundef !5 ; 2 uses
  %i.ck = icmp ult i64 %i.ch, %i.cj
  br i1 %i.ck, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i84, label %bb.n

bb.n:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i83
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ch, i64 noundef %i.cj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #28, !noalias !3815
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i84: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i83
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.bv
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !3813, !noalias !3814, !nonnull !5, !noundef !5
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.ch
  %.val.i.i.i.i.i85 = load i32, ptr %i.cl, align 4, !noalias !3816, !noundef !5
  %.val10.i.i.i.i.i86 = load i32, ptr %i.co, align 4, !noalias !3816, !noundef !5
  %i.cp = icmp eq i32 %.val.i.i.i.i.i85, %.val10.i.i.i.i.i86
  br i1 %i.cp, label %bb.o, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit

bb.o:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i84
  %i.cq = add nuw i64 %.sroa.01.052.i.i.i.i, 1    ; 2 uses
  %exitcond105.not.i.i.i.i = icmp eq i64 %i.cq, %i.bi
  br i1 %exitcond105.not.i.i.i.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.i

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.i, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i84, %bb.o, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge
  %.val61 = phi i64 [ %.val49.pre, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %.val12.i.i.i.i.i77, %bb.o ], [ %.val12.i.i.i.i.i77, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i84 ], [ %.val12.i.i.i.i.i77, %bb.i ] ; 24 uses
  %.val60 = phi ptr [ %.val48.pre, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %.val11.i.i.i.i.i78, %bb.o ], [ %.val11.i.i.i.i.i78, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i84 ], [ %.val11.i.i.i.i.i78, %bb.i ] ; 13 uses
  %.val63 = phi i64 [ %.val51.pre, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %.val14.i.i.i.i.i76, %bb.o ], [ %.val14.i.i.i.i.i76, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i84 ], [ %.val14.i.i.i.i.i76, %bb.i ] ; 27 uses
  %.val62 = phi ptr [ %.val50.pre, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %.val13.i.i.i.i.i79, %bb.o ], [ %.val13.i.i.i.i.i79, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i84 ], [ %.val13.i.i.i.i.i79, %bb.i ] ; 14 uses
  %.sroa.0.0.i87 = phi i64 [ 0, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.bh, %bb.i ], [ %.sroa.01.052.i.i.i.i, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i84 ], [ %i.bi, %bb.o ] ; 4 uses
  %i.cr = sub i64 %3, %.sroa.0.0.i87              ; 11 uses
  %i.cs = sub i64 %6, %.sroa.0.0.i87              ; 12 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.6.0..sroa_idx.i129 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
  %.sroa.7.0..sroa_idx.i130 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 14 uses
  %.sroa.52.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %.sroa.6.0..sroa_idx.i122 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  %.sroa.7.0..sroa_idx.i124 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %.sroa.52.0..sroa_idx.i110 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %.sroa.6.0..sroa_idx.i112 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %.sroa.7.0..sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  br label %bb.p

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread409: ; preds = %bb.h, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.0.0.i73412 = phi i64 [ %.sroa.01.054.i.i.i.i, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %i.o, %bb.h ] ; 2 uses
  store i64 0, ptr %0, align 8, !alias.scope !3817
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.df, align 8, !alias.scope !3817
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.dg, align 8, !alias.scope !3818
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.52.0.copyload.i = load i64, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !3818
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !3818
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !3818
  %i.dh = trunc nuw i64 %.sroa.01.0.copyload.i to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i = select i1 %i.dh, i64 %.sroa.52.0.copyload.i, i64 %2
  %.sroa.5.sroa.5.0.i = select i1 %i.dh, i64 %.sroa.6.0.copyload.i, i64 %5
  %i.di = select i1 %i.dh, i64 %.sroa.7.0.copyload.i, i64 0
  %.sroa.5.sroa.6.0.i = add i64 %i.di, %.sroa.0.0.i73412
  store i64 1, ptr %i.dg, align 8, !alias.scope !3818
  store i64 %.sroa.5.sroa.0.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !3818
  store i64 %.sroa.5.sroa.5.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !3818
  store i64 %.sroa.5.sroa.6.0.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !3818
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread

bb.p:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.0366.0 = phi i64 [ %i.ba, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.0366.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit ] ; 39 uses
  %.sroa.0.0 = phi i64 [ %i.az, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit ] ; 38 uses
  %i.dj = icmp ult i64 %.sroa.0.0, %i.cr          ; 2 uses
  %i.dk = icmp ult i64 %.sroa.0366.0, %i.cs       ; 3 uses
  %or.cond445 = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %or.cond445, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit, %bb.p
  br i1 %i.dj, label %bb.ba, label %bb.bb

bb.r:                                             ; preds = %bb.p
  %i.dl = sub nuw i64 %i.cr, %.sroa.0.0           ; 5 uses
  %i.dm = sub nuw i64 %i.cs, %.sroa.0366.0        ; 5 uses
  %i.dn = icmp ult i64 %i.dl, 97
  %i.do = icmp ult i64 %i.dm, 97
  %or.cond.i = or i1 %i.do, %i.dn
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.0.0.i88 = call noundef i64 @llvm.umin.i64(i64 %i.dm, i64 %i.dl) ; 2 uses
  %.sroa.0.0.i89 = call noundef i64 @llvm.umax.i64(i64 %i.dm, i64 %i.dl)
  %i.dp = shl nuw i64 %.sroa.0.0.i88, 1
  %i.dq = icmp slt i64 %.sroa.0.0.i88, 0
  br i1 %i.dq, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %bb.s
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.052.0.i = phi i64 [ -1, %bb.t ], [ %i.dp, %bb.s ]
  %i.dr = icmp ult i64 %.sroa.0.0.i89, %.sroa.052.0.i
  br i1 %i.dr, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i = icmp ule i64 %i.dm, %i.dl
  %.not.i.fr = freeze i1 %.not.i                  ; 2 uses
  %i.ds = icmp ule i64 %i.dl, %i.dm               ; 2 uses
  br label %bb.w

.loopexit:                                        ; preds = %bb.as, %bb.ar, %.outer.us, %bb.ad
  %.sroa.525.2.i.ph.lcssa710 = phi i64 [ %.sroa.525.0.i1054, %bb.ar ], [ %.sroa.525.3.i.us, %.outer.us ], [ %.sroa.525.2.i.ph1015.us, %bb.ad ], [ %.sroa.525.0.i1054, %bb.as ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa699 = phi i64 [ %.sroa.023.0.i1055, %bb.ar ], [ %.sroa.023.2.i.us, %.outer.us ], [ %.sroa.023.1.i.ph1016.us, %bb.ad ], [ %.sroa.023.0.i1055, %bb.as ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa688 = phi i64 [ %.sroa.9.0.i1056, %bb.ar ], [ %.sroa.9.3.i.us, %.outer.us ], [ %.sroa.9.2.i.ph1017.us, %bb.ad ], [ %.sroa.9.0.i1056, %bb.as ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa677 = phi i64 [ %.sroa.12.0.i1057, %bb.ar ], [ %.sroa.12.3.i.us, %.outer.us ], [ %.sroa.12.2.i.ph1018.us, %bb.ad ], [ %.sroa.12.0.i1057, %bb.as ] ; 2 uses
  %.not.i92 = icmp ugt i64 %spec.select446, 4
  %or.cond451 = select i1 %i.dt, i1 true, i1 %.not.i92
  br i1 %or.cond451, label %bb.ap, label %bb.w

bb.w:                                             ; preds = %bb.v, %.loopexit
  %.sroa.12.0.i1057 = phi i64 [ undef, %bb.v ], [ %.sroa.12.2.i.ph.lcssa677, %.loopexit ] ; 3 uses
  %.sroa.9.0.i1056 = phi i64 [ undef, %bb.v ], [ %.sroa.9.2.i.ph.lcssa688, %.loopexit ] ; 3 uses
  %.sroa.023.0.i1055 = phi i64 [ 0, %bb.v ], [ %.sroa.023.1.i.ph.lcssa699, %.loopexit ] ; 3 uses
  %.sroa.525.0.i1054 = phi i64 [ undef, %bb.v ], [ %.sroa.525.2.i.ph.lcssa710, %.loopexit ] ; 3 uses
  %.sroa.0400.01053 = phi i64 [ 0, %bb.v ], [ %spec.select446, %.loopexit ] ; 12 uses
  %i.dt = icmp eq i64 %.sroa.0400.01053, 4        ; 2 uses
  %i.du = add nuw nsw i64 %.sroa.0400.01053, 1
  %spec.select446 = select i1 %i.dt, i64 4, i64 %i.du ; 2 uses
  %i.dv = icmp eq i64 %.sroa.0400.01053, 0        ; 2 uses
  %i.dw = add i64 %.sroa.0400.01053, %.sroa.0.0   ; 6 uses
  %i.dx = icmp ult i64 %i.dw, %.val61
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %.val60, i64 %i.dw ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 8
  %.fr = freeze i1 %i.dx
  %i.ea = sub i64 %i.cr, %i.dw
  br i1 %.fr, label %.lr.ph.us.preheader, label %.split1019

.lr.ph.us.preheader:                              ; preds = %bb.w
  %i.eb = call i64 @llvm.usub.sat.i64(i64 %.val61, i64 %i.dw)
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.outer.us
  %.sroa.12.2.i.ph1018.us = phi i64 [ %.sroa.12.3.i.us, %.outer.us ], [ %.sroa.12.0.i1057, %.lr.ph.us.preheader ] ; 7 uses
  %.sroa.9.2.i.ph1017.us = phi i64 [ %.sroa.9.3.i.us, %.outer.us ], [ %.sroa.9.0.i1056, %.lr.ph.us.preheader ] ; 7 uses
  %.sroa.023.1.i.ph1016.us = phi i64 [ %.sroa.023.2.i.us, %.outer.us ], [ %.sroa.023.0.i1055, %.lr.ph.us.preheader ] ; 4 uses
  %.sroa.525.2.i.ph1015.us = phi i64 [ %.sroa.525.3.i.us, %.outer.us ], [ %.sroa.525.0.i1054, %.lr.ph.us.preheader ] ; 8 uses
  %.sroa.0402.0.ph1014.us = phi i64 [ %spec.select447.us.us, %.outer.us ], [ 0, %.lr.ph.us.preheader ]
  br label %bb.x

bb.x:                                             ; preds = %bb.ad, %.lr.ph.us
  %.sroa.0402.0802.us.us = phi i64 [ %.sroa.0402.0.ph1014.us, %.lr.ph.us ], [ %spec.select447.us.us, %bb.ad ] ; 11 uses
  %i.ec = icmp eq i64 %.sroa.0402.0802.us.us, 4   ; 3 uses
  %i.ed = add nuw nsw i64 %.sroa.0402.0802.us.us, 1
  %spec.select447.us.us = select i1 %i.ec, i64 4, i64 %i.ed ; 4 uses
  %i.ee = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !3819
  br i1 %i.ee, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ef = icmp eq i64 %.sroa.0402.0802.us.us, 0   ; 2 uses
  %i.eg = or i64 %.sroa.0402.0802.us.us, %.sroa.0400.01053
  %or.cond2.i.us.us = icmp eq i64 %i.eg, 0
  br i1 %or.cond2.i.us.us, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %i.dv, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %brmerge.i.not.us.us = and i1 %.not.i.fr, %i.ef
  br i1 %brmerge.i.not.us.us, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %or.cond3.old.i.us.us = or i1 %i.ds, %i.ef
  br i1 %or.cond3.old.i.us.us, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.eh = add i64 %.sroa.0402.0802.us.us, %.sroa.0366.0 ; 7 uses
  %i.ei = icmp ult i64 %i.eh, %.val63
  br i1 %i.ei, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.us.us, label %.split

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.us.us: ; preds = %bb.ac
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %.val62, i64 %i.eh ; 2 uses
  %.val56.us.us = load ptr, ptr %i.ej, align 8, !alias.scope !3820, !noalias !3821, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 8
  %.val57.us.us = load i64, ptr %i.ek, align 8, !alias.scope !3820, !noalias !3821, !noundef !5
  %.val58.us.us = load ptr, ptr %i.dy, align 8    ; 4 uses
  %.val59.us.us = load i64, ptr %i.dz, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !3822)
  %i.el = getelementptr inbounds nuw i8, ptr %.val56.us.us, i64 24
  %i.em = load i64, ptr %i.el, align 8, !alias.scope !3822, !noalias !3823, !noundef !5
  %i.en = sub i64 %.val57.us.us, %i.em            ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.val56.us.us, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !alias.scope !3822, !noalias !3823, !noundef !5 ; 2 uses
  %i.eq = icmp ult i64 %i.en, %i.ep
  br i1 %i.eq, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit1.i.us.us, label %.split812.us

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit1.i.us.us: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.us.us
  %i.er = getelementptr inbounds nuw i8, ptr %.val56.us.us, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !3822, !noalias !3823, !nonnull !5, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val58.us.us) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3824)
  %i.et = getelementptr inbounds nuw i8, ptr %.val58.us.us, i64 24
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !3824, !noalias !3825, !noundef !5
  %i.ev = sub i64 %.val59.us.us, %i.eu            ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.val58.us.us, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !3824, !noalias !3825, !noundef !5 ; 2 uses
  %i.ey = icmp ult i64 %i.ev, %i.ex
  br i1 %i.ey, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.us.us, label %.split816.us

_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.us.us: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit1.i.us.us
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.en
  %i.fa = getelementptr inbounds nuw i8, ptr %.val58.us.us, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !alias.scope !3824, !noalias !3825, !nonnull !5, !noundef !5
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.ev
  %.val.i.us.us = load i32, ptr %i.ez, align 4, !noundef !5
  %.val2.i.us.us = load i32, ptr %i.fc, align 4, !noundef !5
  %.not449.us.us = icmp eq i32 %.val.i.us.us, %.val2.i.us.us
  br i1 %.not449.us.us, label %.split820.us.us, label %bb.ad

bb.ad:                                            ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.us.us, %bb.ab, %bb.aa, %bb.y
  %.not.i94.us.us = icmp ugt i64 %spec.select447.us.us, 4
  %or.cond452.us.us = select i1 %i.ec, i1 true, i1 %.not.i94.us.us
  br i1 %or.cond452.us.us, label %.loopexit, label %bb.x

.split820.us.us:                                  ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.us.us
  %i.fd = sub i64 %i.cs, %i.eh
  %.sroa.0.0.i99.us = call noundef i64 @llvm.umin.i64(i64 %i.fd, i64 %i.ea) ; 3 uses
  %.not1061 = icmp eq i64 %.sroa.0.0.i99.us, 0
  br i1 %.not1061, label %.outer.us, label %.lr.ph1011.us.preheader

.lr.ph1011.us.preheader:                          ; preds = %.split820.us.us
  %umax = call i64 @llvm.umax.i64(i64 %.val63, i64 %i.eh) ; 2 uses
  %i.fe = sub i64 %umax, %i.eh
  %invariant.gep = getelementptr [16 x i8], ptr %.val62, i64 %i.eh
  br label %.lr.ph1011.us

.lr.ph1011.us:                                    ; preds = %.lr.ph1011.us.preheader, %bb.ag
  %.sroa.01.0.i1010.us = phi i64 [ %i.ge, %bb.ag ], [ 0, %.lr.ph1011.us.preheader ] ; 7 uses
  %i.ff = and i64 %.sroa.01.0.i1010.us, 1023
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph1011.us
  %i.fh = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !3819
  br i1 %i.fh, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph1011.us
  %exitcond.not = icmp eq i64 %.sroa.01.0.i1010.us, %i.fe
  br i1 %exitcond.not, label %.split1031.us, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit100.us

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit100.us: ; preds = %bb.af
  %i.fi = add nuw i64 %.sroa.01.0.i1010.us, %i.dw ; 2 uses
  %exitcond1380.not = icmp eq i64 %.sroa.01.0.i1010.us, %i.eb
  br i1 %exitcond1380.not, label %.split1035.us, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit101.us

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit101.us: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit100.us
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %.sroa.01.0.i1010.us ; 2 uses
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %.val60, i64 %i.fi ; 2 uses
  %.val52.us = load ptr, ptr %gep, align 8, !alias.scope !3820, !noalias !3821, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.fk = getelementptr i8, ptr %gep, i64 8
  %.val53.us = load i64, ptr %i.fk, align 8, !alias.scope !3820, !noalias !3821, !noundef !5
  %.val54.us = load ptr, ptr %i.fj, align 8       ; 4 uses
  %i.fl = getelementptr i8, ptr %i.fj, i64 8
  %.val55.us = load i64, ptr %i.fl, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !3826)
  %i.fm = getelementptr inbounds nuw i8, ptr %.val52.us, i64 24
  %i.fn = load i64, ptr %i.fm, align 8, !alias.scope !3826, !noalias !3827, !noundef !5
  %i.fo = sub i64 %.val53.us, %i.fn               ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.val52.us, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !3826, !noalias !3827, !noundef !5 ; 2 uses
  %i.fr = icmp ult i64 %i.fo, %i.fq
  br i1 %i.fr, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit1.i102.us, label %.split1039.us

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit1.i102.us: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit101.us
end_hunk_1
begin_hunk_2_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1r_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2h_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter:bb.a

.lr.ph.split.us.i275:                             ; preds = %.lr.ph.i270, %bb.hd
  %.sroa.0105.0644.us.i276 = phi i64 [ %i.adw, %bb.hd ], [ %.pre1390, %.lr.ph.i270 ] ; 3 uses
  %i.adw = add i64 %.sroa.0105.0644.us.i276, -1   ; 6 uses
  %i.adx = and i64 %i.adw, 1023
  %i.ady = icmp eq i64 %i.adx, 0
  br i1 %i.ady, label %bb.gs, label %bb.gu

bb.gs:                                            ; preds = %.lr.ph.split.us.i275
  %i.adz = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.i285

bb.gt:                                            ; preds = %bb.gs
  br i1 %i.adz, label %.loopexit5.i223, label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %.lr.ph.split.us.i275
  %i.aea = add i64 %i.adw, %.sroa.0366.0          ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val62) ]
  %i.aeb = icmp ult i64 %i.aea, %.val63
  br i1 %i.aeb, label %bb.gv, label %.invoke.i

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val60) ]
  %i.aec = getelementptr inbounds nuw [16 x i8], ptr %.val62, i64 %i.aea ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3934)
  call void @llvm.experimental.noalias.scope.decl(metadata !3935)
  %i.aed = load ptr, ptr %i.aec, align 8, !alias.scope !3934, !noalias !3936, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aec, i64 8
  %i.aef = load i64, ptr %i.aee, align 8, !alias.scope !3934, !noalias !3936, !noundef !5
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aed, i64 24
  %i.aeh = load i64, ptr %i.aeg, align 8, !alias.scope !3937, !noalias !3938, !noundef !5
  %i.aei = sub i64 %i.aef, %i.aeh                 ; 3 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aed, i64 16
  %i.aek = load i64, ptr %i.aej, align 8, !alias.scope !3937, !noalias !3938, !noundef !5 ; 2 uses
  %i.ael = icmp ult i64 %i.aei, %i.aek
  br i1 %i.ael, label %.noexc.us.i277, label %.invoke.i

.noexc.us.i277:                                   ; preds = %bb.gv
  %i.aem = load ptr, ptr %i.adu, align 8, !alias.scope !3935, !noalias !3939, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.aen = load i64, ptr %i.adv, align 8, !alias.scope !3935, !noalias !3939, !noundef !5
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aem, i64 24
  %i.aep = load i64, ptr %i.aeo, align 8, !alias.scope !3940, !noalias !3941, !noundef !5
  %i.aeq = sub i64 %i.aen, %i.aep                 ; 3 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aem, i64 16
  %i.aes = load i64, ptr %i.aer, align 8, !alias.scope !3940, !noalias !3941, !noundef !5 ; 2 uses
  %i.aet = icmp ult i64 %i.aeq, %i.aes
  br i1 %i.aet, label %bb.gw, label %.invoke.i

bb.gw:                                            ; preds = %.noexc.us.i277
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aed, i64 8
  %i.aev = load ptr, ptr %i.aeu, align 8, !alias.scope !3937, !noalias !3938, !nonnull !5, !noundef !5
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %i.aev, i64 %i.aei
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aem, i64 8
  %i.aey = load ptr, ptr %i.aex, align 8, !alias.scope !3940, !noalias !3941, !nonnull !5, !noundef !5
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %i.aey, i64 %i.aeq
  %.val225.us.i278 = load i32, ptr %i.aew, align 4, !noundef !5
  %.val226.us.i279 = load i32, ptr %i.aez, align 4, !noundef !5
  %i.afa = icmp eq i32 %.val225.us.i278, %.val226.us.i279
  br i1 %i.afa, label %bb.ha, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.afb = add i64 %i.adw, %i.adr                 ; 3 uses
  %i.afc = load ptr, ptr %i.un, align 8, !noalias !3894, !nonnull !5, !noundef !5 ; 3 uses
  %i.afd = load i64, ptr %i.uo, align 8, !noalias !3894, !noundef !5 ; 5 uses
  %i.afe = icmp ult i64 %i.afb, %i.afd
  br i1 %i.afe, label %bb.gy, label %.invoke.i

bb.gy:                                            ; preds = %bb.gx
  %i.aff = add i64 %.sroa.0105.0644.us.i276, %i.adq ; 3 uses
  %i.afg = icmp ult i64 %i.aff, %i.afd
  br i1 %i.afg, label %bb.gz, label %.invoke.i

bb.gz:                                            ; preds = %bb.gy
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afc, i64 %i.afb
  %i.afi = load i8, ptr %i.afh, align 1, !noundef !5
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afc, i64 %i.aff
  %i.afk = load i8, ptr %i.afj, align 1, !noundef !5
  %.sroa.0.0.i.us.i280 = call noundef i8 @llvm.umax.i8(i8 %i.afk, i8 %i.afi)
  br label %bb.hc

bb.ha:                                            ; preds = %bb.gw
  %i.afl = add i64 %.sroa.0105.0644.us.i276, %i.adr ; 3 uses
  %i.afm = load i64, ptr %i.uo, align 8, !noalias !3894, !noundef !5 ; 3 uses
  %i.afn = icmp ult i64 %i.afl, %i.afm
  br i1 %i.afn, label %bb.hb, label %.invoke.i

bb.hb:                                            ; preds = %bb.ha
  %i.afo = load ptr, ptr %i.un, align 8, !noalias !3894, !nonnull !5, !noundef !5 ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 %i.afl
  %i.afq = load i8, ptr %i.afp, align 1, !noundef !5
  %i.afr = add i8 %i.afq, 1
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.gz
  %i.afs = phi ptr [ %i.afo, %bb.hb ], [ %i.afc, %bb.gz ]
  %i.aft = phi i64 [ %i.afm, %bb.hb ], [ %i.afd, %bb.gz ] ; 2 uses
  %.sroa.04.0.us.i281 = phi i8 [ %i.afr, %bb.hb ], [ %.sroa.0.0.i.us.i280, %bb.gz ]
  %i.afu = add i64 %i.adw, %i.adq                 ; 3 uses
  %i.afv = icmp ult i64 %i.afu, %i.aft
  br i1 %i.afv, label %bb.hd, label %.invoke.i

bb.hd:                                            ; preds = %bb.hc
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afs, i64 %i.afu
  store i8 %.sroa.04.0.us.i281, ptr %i.afw, align 1
  %.not168.us.i282 = icmp eq i64 %i.adw, 0
  br i1 %.not168.us.i282, label %..loopexit20_crit_edge.split.us.i283, label %.lr.ph.split.us.i275

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.i285: ; preds = %bb.gs
  %lpad.loopexit21.us.i286 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i156

..loopexit20_crit_edge.split.us.i283:             ; preds = %bb.hd
  %.not.i284 = icmp eq i64 %i.up, 0
  br i1 %.not.i284, label %.lr.ph707.i180, label %.lr.ph682.split.i266

.lr.ph.split.i272:                                ; preds = %.lr.ph.i270
  %i.afx = and i64 %.pre1390, 1023
  %i.afy = icmp eq i64 %i.afx, 1
  br i1 %i.afy, label %bb.he, label %bb.hg

bb.he:                                            ; preds = %.lr.ph.split.i272
  %i.afz = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.hf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i273

bb.hf:                                            ; preds = %bb.he
  br i1 %i.afz, label %.loopexit5.i223, label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %.lr.ph.split.i272
  %i.aga = add i64 %i.cs, -1                      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val62) ]
  %i.agb = icmp ult i64 %i.aga, %.val63
  br i1 %i.agb, label %bb.hh, label %.invoke.i

bb.hh:                                            ; preds = %bb.hg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val60) ]
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.hc, %bb.ha, %bb.gy, %bb.gx, %.noexc.us.i277, %bb.gv, %bb.gu, %bb.fb, %bb.ez, %bb.ey, %bb.ex, %.noexc195.i189, %bb.ev, %bb.eu, %bb.er, %bb.gc, %bb.ga, %bb.fz, %bb.fy, %.noexc187.i204, %bb.fw, %bb.fv, %bb.fn, %bb.fl, %bb.fk, %bb.fj, %.noexc191.i237, %bb.fh, %bb.fg, %bb.gm, %bb.gl, %.noexc183.i260, %bb.gj, %bb.gi, %bb.gf, %bb.hh, %bb.hg
  %i.agc = phi i64 [ %i.ads, %bb.hh ], [ %i.aga, %bb.hg ], [ %.val61, %bb.fv ], [ %.val63, %bb.gf ], [ %.val63, %bb.fg ], [ %i.vv, %.noexc195.i189 ], [ %i.ade, %bb.gm ], [ %.val61, %bb.gi ], [ %i.acm, %.noexc183.i260 ], [ %i.acx, %bb.gl ], [ %i.acc, %bb.gj ], [ %i.za, %bb.fn ], [ %i.yd, %.noexc191.i237 ], [ %i.yo, %bb.fj ], [ %i.ys, %bb.fl ], [ %i.yq, %bb.fk ], [ %i.xv, %bb.fh ], [ %i.abd, %bb.gc ], [ %i.aae, %.noexc187.i204 ], [ %i.aap, %bb.fy ], [ %i.aav, %bb.ga ], [ %i.aar, %bb.fz ], [ %i.zu, %bb.fw ], [ %i.vb, %bb.er ], [ %i.va, %bb.eu ], [ %i.wy, %bb.fb ], [ %i.wi, %bb.ey ], [ %i.vm, %bb.ev ], [ %i.wg, %bb.ex ], [ %i.wn, %bb.ez ], [ %i.afb, %bb.gx ], [ %i.afl, %bb.ha ], [ %i.aeq, %.noexc.us.i277 ], [ %i.aff, %bb.gy ], [ %i.afu, %bb.hc ], [ %i.aea, %bb.gu ], [ %i.aei, %bb.gv ]
  %i.agd = phi i64 [ %.val61, %bb.hh ], [ %.val63, %bb.hg ], [ %.val61, %bb.fv ], [ %.val63, %bb.gf ], [ %.val63, %bb.fg ], [ %i.vx, %.noexc195.i189 ], [ %i.acz, %bb.gm ], [ %.val61, %bb.gi ], [ %i.aco, %.noexc183.i260 ], [ %i.acz, %bb.gl ], [ %i.ace, %bb.gj ], [ %.pre1201.i241, %bb.fn ], [ %i.yf, %.noexc191.i237 ], [ %.pre1201.i241, %bb.fj ], [ %.pre1201.i241, %bb.fl ], [ %.pre1201.i241, %bb.fk ], [ %i.xx, %bb.fh ], [ %.pre1199.i208, %bb.gc ], [ %i.aag, %.noexc187.i204 ], [ %.pre1199.i208, %bb.fy ], [ %.pre1199.i208, %bb.ga ], [ %.pre1199.i208, %bb.fz ], [ %i.zw, %bb.fw ], [ %.val63, %bb.er ], [ %.val61, %bb.eu ], [ %.pre1197.i193, %bb.fb ], [ %.pre1197.i193, %bb.ey ], [ %i.vo, %bb.ev ], [ %.pre1197.i193, %bb.ex ], [ %.pre1197.i193, %bb.ez ], [ %i.afd, %bb.gx ], [ %i.afm, %bb.ha ], [ %i.aes, %.noexc.us.i277 ], [ %i.afd, %bb.gy ], [ %i.aft, %bb.hc ], [ %.val63, %bb.gu ], [ %i.aek, %bb.gv ]
  %i.age = phi ptr [ @103, %bb.hh ], [ @102, %bb.hg ], [ @93, %bb.fv ], [ @98, %bb.gf ], [ @86, %bb.fg ], [ @181, %.noexc195.i189 ], [ @101, %bb.gm ], [ @99, %bb.gi ], [ @181, %.noexc183.i260 ], [ @100, %bb.gl ], [ @181, %bb.gj ], [ @91, %bb.fn ], [ @181, %.noexc191.i237 ], [ @88, %bb.fj ], [ @89, %bb.fl ], [ @90, %bb.fk ], [ @181, %bb.fh ], [ @97, %bb.gc ], [ @181, %.noexc187.i204 ], [ @94, %bb.fy ], [ @95, %bb.ga ], [ @96, %bb.fz ], [ @181, %bb.fw ], [ @80, %bb.er ], [ @81, %bb.eu ], [ @85, %bb.fb ], [ @84, %bb.ey ], [ @181, %bb.ev ], [ @82, %bb.ex ], [ @83, %bb.ez ], [ @104, %bb.gx ], [ @106, %bb.ha ], [ @181, %.noexc.us.i277 ], [ @105, %bb.gy ], [ @107, %bb.hc ], [ @102, %bb.gu ], [ @181, %bb.gv ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.agc, i64 noundef %i.agd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.age) #28
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i154

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.hi:                                            ; preds = %.loopexit.split-lp.i156
  %i.agf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.loopexit5.i223
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3894
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread: ; preds = %bb.bg, %bb.bh, %bb.ej, %bb.bk, %bb.bi, %.sink.split.i, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit
  %.val68 = load ptr, ptr %i.cv, align 8          ; 4 uses
  %.val69 = load i64, ptr %i.cw, align 8          ; 4 uses
  %.val70 = load ptr, ptr %i.ct, align 8          ; 4 uses
  %.val71 = load i64, ptr %i.cu, align 8          ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3942)
  call void @llvm.experimental.noalias.scope.decl(metadata !3943)
  %i.agg = sub i64 %.pre, %.pre1390               ; 3 uses
  %i.agh = and i64 %i.agg, 1
  %.not.i287 = icmp eq i64 %i.agh, 0              ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.agj = load i64, ptr %i.agi, align 8, !alias.scope !3942, !noalias !3944, !noundef !5 ; 4 uses
  %i.agk = add i64 %i.agj, 1                      ; 5 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.agm = load i64, ptr %i.agl, align 8, !alias.scope !3942, !noalias !3944, !noundef !5 ; 16 uses
  %i.agn = icmp ult i64 %i.agk, %i.agm
  br i1 %i.agn, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread
  %i.ago = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.agp = load ptr, ptr %i.ago, align 8, !alias.scope !3942, !noalias !3944, !nonnull !5, !noundef !5 ; 7 uses
  %i.agq = getelementptr inbounds nuw [8 x i8], ptr %i.agp, i64 %i.agk
  store i64 0, ptr %i.agq, align 8, !noalias !3945
  %i.agr = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ags = load i64, ptr %i.agr, align 8, !alias.scope !3943, !noalias !3946, !noundef !5 ; 4 uses
  %i.agt = add i64 %i.ags, 1                      ; 5 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.agv = load i64, ptr %i.agu, align 8, !alias.scope !3943, !noalias !3946, !noundef !5 ; 16 uses
  %i.agw = icmp ult i64 %i.agt, %i.agv
  br i1 %i.agw, label %bb.hl, label %bb.hm

bb.hk:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.agk, i64 noundef %i.agm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28, !noalias !3945
  unreachable

bb.hl:                                            ; preds = %bb.hj
  %i.agx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.agy = load ptr, ptr %i.agx, align 8, !alias.scope !3943, !noalias !3946, !nonnull !5, !noundef !5 ; 7 uses
  %i.agz = getelementptr inbounds nuw [8 x i8], ptr %i.agy, i64 %i.agt
  store i64 0, ptr %i.agz, align 8, !noalias !3945
  %i.aha = add i64 %.pre, %.pre1390               ; 2 uses
  %i.ahb = lshr i64 %i.aha, 1                     ; 2 uses
  %.sroa.047.0.i = sub nuw i64 %i.aha, %i.ahb     ; 2 uses
  %i.ahc = icmp ult i64 %i.agm, 1152921504606846976
  call void @llvm.assume(i1 %i.ahc)
  %.not128.not.i = icmp ugt i64 %i.agm, %.sroa.047.0.i
  br i1 %.not128.not.i, label %bb.ho, label %bb.hn, !prof !8

bb.hm:                                            ; preds = %bb.hj
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.agt, i64 noundef %i.agv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #28, !noalias !3945
  unreachable

bb.hn:                                            ; preds = %bb.hl
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #28, !noalias !3945
  unreachable

bb.ho:                                            ; preds = %bb.hl
  %i.ahd = icmp ult i64 %i.agv, 1152921504606846976
  call void @llvm.assume(i1 %i.ahd)
  %.not129.not.i = icmp samesign ugt i64 %i.agv, %.sroa.047.0.i
  br i1 %.not129.not.i, label %.lr.ph136.i, label %bb.hp, !prof !8

.lr.ph136.i:                                      ; preds = %bb.ho
  %i.ahe = add i64 %i.agj, -1
  %i.ahf = add i64 %i.ags, -1
  %.neg = add i64 %i.cr, 1
  %.neg454 = add i64 %.neg, %i.cs
  %11 = add i64 %.sroa.0366.0, %.sroa.0.0
  %12 = add i64 %11, %i.ahb
  %13 = sub i64 %.neg454, %12
  br label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #28, !noalias !3945
  unreachable

bb.hq:                                            ; preds = %._crit_edge132.i, %.lr.ph136.i
  %.sroa.048.0135.i = phi i64 [ 0, %.lr.ph136.i ], [ %i.ahg, %._crit_edge132.i ] ; 10 uses
  %i.ahg = add nuw i64 %.sroa.048.0135.i, 1       ; 2 uses
  %i.ahh = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !3945
  br i1 %i.ahh, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1C_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph119.preheader.i

.lr.ph119.preheader.i:                            ; preds = %bb.hq
  %i.ahi = sub nsw i64 0, %.sroa.048.0135.i       ; 6 uses
  %.pre225.i = sub i64 %i.agk, %.sroa.048.0135.i
  br label %.lr.ph119.i

.lr.ph119.i:                                      ; preds = %bb.jv, %.lr.ph119.preheader.i
  %.sroa.7.0118.i = phi i64 [ %.sroa.7.1.i, %bb.jv ], [ %.sroa.048.0135.i, %.lr.ph119.preheader.i ] ; 2 uses
  %not..sroa.1418.0117.i = phi i64 [ 1, %bb.jv ], [ 0, %.lr.ph119.preheader.i ]
  %i.ahj = sub i64 %.sroa.7.0118.i, %not..sroa.1418.0117.i ; 11 uses
  %.not.i.not.i.i = icmp sgt i64 %i.ahj, %.sroa.7.0118.i
  br i1 %.not.i.not.i.i, label %.lr.ph131.preheader.i, label %bb.hr

bb.hr:                                            ; preds = %.lr.ph119.i
  %i.ahk = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.ahj, i64 %i.ahi)
  switch i8 %i.ahk, label %bb.hs [
    i8 -1, label %.lr.ph131.preheader.i
    i8 0, label %bb.hu
    i8 1, label %bb.ht
  ]

bb.hs:                                            ; preds = %bb.hr
  unreachable

bb.ht:                                            ; preds = %bb.hr
  %i.ahl = add i64 %i.ahj, -1
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hr
  %.sroa.11.1.i = phi i1 [ true, %bb.hr ], [ false, %bb.ht ]
  %.sroa.7.1.i = phi i64 [ %i.ahj, %bb.hr ], [ %i.ahl, %bb.ht ] ; 2 uses
  %i.ahm = icmp eq i64 %i.ahj, %i.ahi
  br i1 %i.ahm, label %._crit_edge220.i.a, label %bb.ja

.lr.ph131.preheader.i:                            ; preds = %bb.jv, %bb.hr, %.lr.ph119.i
  %.pre.i292 = sub i64 %i.agt, %.sroa.048.0135.i
  br label %.lr.ph131.i

.lr.ph131.i:                                      ; preds = %bb.iv, %.lr.ph131.preheader.i
  %not..sroa.1727.0129.i = phi i64 [ 1, %bb.iv ], [ 0, %.lr.ph131.preheader.i ]
  %.sroa.726.0128.i = phi i64 [ %.sroa.726.1.i, %bb.iv ], [ %.sroa.048.0135.i, %.lr.ph131.preheader.i ] ; 2 uses
  %i.ahn = sub i64 %.sroa.726.0128.i, %not..sroa.1727.0129.i ; 11 uses
  %.not.i.not.i152.i = icmp sgt i64 %i.ahn, %.sroa.726.0128.i
  br i1 %.not.i.not.i152.i, label %._crit_edge132.i, label %bb.hv

bb.hv:                                            ; preds = %.lr.ph131.i
  %i.aho = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.ahn, i64 %i.ahi)
  switch i8 %i.aho, label %bb.hw [
    i8 -1, label %._crit_edge132.i
    i8 0, label %bb.hy
    i8 1, label %bb.hx
  ]

bb.hw:                                            ; preds = %bb.hv
  unreachable

bb.hx:                                            ; preds = %bb.hv
  %i.ahp = add i64 %i.ahn, -1
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hv
  %.sroa.726.1.i = phi i64 [ %i.ahn, %bb.hv ], [ %i.ahp, %bb.hx ] ; 2 uses
  %.sroa.12.1.i289 = phi i1 [ true, %bb.hv ], [ false, %bb.hx ]
  %i.ahq = icmp eq i64 %i.ahn, %i.ahi
  br i1 %i.ahq, label %._crit_edge222.i.a, label %bb.hz

._crit_edge132.i:                                 ; preds = %bb.iv, %bb.hv, %.lr.ph131.i
  %exitcond218.not.i = icmp eq i64 %i.ahg, %13
  br i1 %exitcond218.not.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1C_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.hq

bb.hz:                                            ; preds = %bb.hy
  %.not130.i = icmp eq i64 %i.ahn, %.sroa.048.0135.i
  %.pre223.i = add i64 %i.ahf, %i.ahn             ; 6 uses
  br i1 %.not130.i, label %._crit_edge221.i.a, label %bb.ia

._crit_edge222.i.a:                               ; preds = %bb.hy, %bb.id
  %.pre-phi.i = phi i64 [ %i.ahu, %bb.id ], [ %.pre.i292, %bb.hy ] ; 3 uses
  %i.ahr = icmp ult i64 %.pre-phi.i, %i.agv
  br i1 %i.ahr, label %bb.ii, label %bb.ij

._crit_edge221.i.a:                               ; preds = %bb.id, %bb.hz
  %i.ahs = icmp ult i64 %.pre223.i, %i.agv
  br i1 %i.ahs, label %bb.if, label %bb.ig

bb.ia:                                            ; preds = %bb.hz
  %i.aht = icmp ult i64 %.pre223.i, %i.agv
  br i1 %i.aht, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  %i.ahu = add i64 %i.ahn, %i.agt                 ; 4 uses
  %i.ahv = icmp ult i64 %i.ahu, %i.agv
  br i1 %i.ahv, label %bb.id, label %bb.ie

bb.ic:                                            ; preds = %bb.ia
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre223.i, i64 noundef %i.agv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #28, !noalias !3945
  unreachable

bb.id:                                            ; preds = %bb.ib
  %i.ahw = getelementptr inbounds nuw [8 x i8], ptr %i.agy, i64 %.pre223.i
  %i.ahx = load i64, ptr %i.ahw, align 8, !noalias !3945, !noundef !5
  %i.ahy = getelementptr inbounds nuw [8 x i8], ptr %i.agy, i64 %i.ahu
  %i.ahz = load i64, ptr %i.ahy, align 8, !noalias !3945, !noundef !5
  %i.aia = icmp ult i64 %i.ahx, %i.ahz
  br i1 %i.aia, label %._crit_edge222.i.a, label %._crit_edge221.i.a

bb.ie:                                            ; preds = %bb.ib
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ahu, i64 noundef %i.agv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #28, !noalias !3945
  unreachable

bb.if:                                            ; preds = %._crit_edge221.i.a
  %i.aib = getelementptr inbounds nuw [8 x i8], ptr %i.agy, i64 %.pre223.i
  %i.aic = load i64, ptr %i.aib, align 8, !noalias !3945, !noundef !5
  %i.aid = add i64 %i.aic, 1
  br label %bb.ih

bb.ig:                                            ; preds = %._crit_edge221.i.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre223.i, i64 noundef %i.agv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #28, !noalias !3945
  unreachable

bb.ih:                                            ; preds = %bb.ii, %bb.if
  %.sroa.014.0.i = phi i64 [ %i.aii, %bb.ii ], [ %i.aid, %bb.if ] ; 5 uses
  %i.aie = sub i64 %.sroa.014.0.i, %i.ahn         ; 4 uses
  %i.aif = icmp ult i64 %.sroa.014.0.i, %.pre
  %i.aig = icmp ult i64 %i.aie, %.pre1390
  %or.cond.i290 = and i1 %i.aif, %i.aig
  br i1 %or.cond.i290, label %bb.il, label %bb.ik

bb.ii:                                            ; preds = %._crit_edge222.i.a
  %i.aih = getelementptr inbounds nuw [8 x i8], ptr %i.agy, i64 %.pre-phi.i
  %i.aii = load i64, ptr %i.aih, align 8, !noalias !3945, !noundef !5
  br label %bb.ih

bb.ij:                                            ; preds = %._crit_edge222.i.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi.i, i64 noundef %i.agv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28, !noalias !3945
  unreachable

bb.ik:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.ih
  %.sroa.020.0.i = phi i64 [ %i.ajx, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i ], [ %i.aie, %bb.ih ]
  %.sroa.014.1.i = phi i64 [ %i.ajw, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i ], [ %.sroa.014.0.i, %bb.ih ] ; 3 uses
  %i.aij = add i64 %i.ahn, %i.ags                 ; 3 uses
  %i.aik = icmp ult i64 %i.aij, %i.agv
  br i1 %i.aik, label %bb.is, label %bb.it

bb.il:                                            ; preds = %bb.ih
  %i.ail = sub i64 %i.cr, %.sroa.014.0.i          ; 2 uses
  %i.aim = sub i64 %i.cs, %i.aie                  ; 2 uses
  %i.ain = sub i64 %i.ail, %.sroa.0.0
  %i.aio = sub i64 %i.aim, %.sroa.0366.0
  %.sroa.0.0.i156.i = call noundef i64 @llvm.umin.i64(i64 %i.aio, i64 %i.ain) ; 3 uses
  %.not140.i = icmp eq i64 %.sroa.0.0.i156.i, 0
  br i1 %.not140.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph124.i

.lr.ph124.i:                                      ; preds = %bb.il
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  br label %bb.im

bb.im:                                            ; preds = %bb.ir, %.lr.ph124.i
  %.sroa.0.0.i136122.i = phi i64 [ 0, %.lr.ph124.i ], [ %i.ajv, %bb.ir ] ; 3 uses
  %i.aip = xor i64 %.sroa.0.0.i136122.i, -1       ; 2 uses
  %i.aiq = add i64 %i.aim, %i.aip                 ; 3 uses
  %i.air = icmp ult i64 %i.aiq, %.val71
  br i1 %i.air, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.in

bb.in:                                            ; preds = %bb.im
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aiq, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #28, !noalias !3947
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.im
  %i.ais = add i64 %i.ail, %i.aip                 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %i.ait = icmp ult i64 %i.ais, %.val69
  br i1 %i.ait, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit157.i, label %bb.io

bb.io:                                            ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ais, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #28, !noalias !3948
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit157.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i
  %i.aiu = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.aiq ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3949)
  call void @llvm.experimental.noalias.scope.decl(metadata !3950)
  %i.aiv = load ptr, ptr %i.aiu, align 8, !alias.scope !3949, !noalias !3951, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiu, i64 8
  %i.aix = load i64, ptr %i.aiw, align 8, !alias.scope !3949, !noalias !3951, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !3952)
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aiv, i64 24
  %i.aiz = load i64, ptr %i.aiy, align 8, !alias.scope !3952, !noalias !3953, !noundef !5
  %i.aja = sub i64 %i.aix, %i.aiz                 ; 3 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aiv, i64 16
  %i.ajc = load i64, ptr %i.ajb, align 8, !alias.scope !3952, !noalias !3953, !noundef !5 ; 2 uses
  %i.ajd = icmp ult i64 %i.aja, %i.ajc
  br i1 %i.ajd, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit139.i, label %bb.ip

bb.ip:                                            ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit157.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aja, i64 noundef %i.ajc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #28, !noalias !3954
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit139.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit157.i
  %i.aje = getelementptr inbounds nuw [16 x i8], ptr %.val68, i64 %i.ais ; 2 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aiv, i64 8
  %i.ajg = load ptr, ptr %i.ajf, align 8, !alias.scope !3952, !noalias !3953, !nonnull !5, !noundef !5
  %i.ajh = load ptr, ptr %i.aje, align 8, !alias.scope !3950, !noalias !3955, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.aje, i64 8
  %i.ajj = load i64, ptr %i.aji, align 8, !alias.scope !3950, !noalias !3955, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !3956)
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajh, i64 24
  %i.ajl = load i64, ptr %i.ajk, align 8, !alias.scope !3956, !noalias !3957, !noundef !5
  %i.ajm = sub i64 %i.ajj, %i.ajl                 ; 3 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajh, i64 16
  %i.ajo = load i64, ptr %i.ajn, align 8, !alias.scope !3956, !noalias !3957, !noundef !5 ; 2 uses
  %i.ajp = icmp ult i64 %i.ajm, %i.ajo
  br i1 %i.ajp, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit138.i, label %bb.iq

bb.iq:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit139.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ajm, i64 noundef %i.ajo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #28, !noalias !3958
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit138.i: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit139.i
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr %i.ajg, i64 %i.aja
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajh, i64 8
  %i.ajs = load ptr, ptr %i.ajr, align 8, !alias.scope !3956, !noalias !3957, !nonnull !5, !noundef !5
  %i.ajt = getelementptr inbounds nuw [4 x i8], ptr %i.ajs, i64 %i.ajm
  %.val141.i = load i32, ptr %i.ajq, align 4, !noalias !3945, !noundef !5
  %.val142.i = load i32, ptr %i.ajt, align 4, !noalias !3945, !noundef !5
  %i.aju = icmp eq i32 %.val141.i, %.val142.i
  br i1 %i.aju, label %bb.ir, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i

bb.ir:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit138.i
  %i.ajv = add nuw i64 %.sroa.0.0.i136122.i, 1    ; 2 uses
  %exitcond217.not.i = icmp eq i64 %i.ajv, %.sroa.0.0.i156.i
  br i1 %exitcond217.not.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.im

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.ir, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit138.i, %bb.il
  %.sroa.0.0.i136.lcssa.i = phi i64 [ 0, %bb.il ], [ %.sroa.0.0.i136122.i, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit138.i ], [ %.sroa.0.0.i156.i, %bb.ir ] ; 2 uses
  %i.ajw = add i64 %.sroa.0.0.i136.lcssa.i, %.sroa.014.0.i
  %i.ajx = add i64 %.sroa.0.0.i136.lcssa.i, %i.aie
  br label %bb.ik

bb.is:                                            ; preds = %bb.ik
  %i.ajy = getelementptr inbounds nuw [8 x i8], ptr %i.agy, i64 %i.aij
  store i64 %.sroa.014.1.i, ptr %i.ajy, align 8, !noalias !3945
  br i1 %.not.i287, label %bb.iu, label %bb.iv

bb.it:                                            ; preds = %bb.ik
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aij, i64 noundef %i.agv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #28, !noalias !3945
  unreachable

bb.iu:                                            ; preds = %bb.is
  %i.ajz = sub i64 %i.ahn, %i.agg                 ; 2 uses
  %.sroa.024.0.i = call i64 @llvm.abs.i64(i64 %i.ajz, i1 false)
  %.not131.i = icmp sgt i64 %.sroa.024.0.i, %.sroa.048.0135.i
  br i1 %.not131.i, label %bb.iv, label %bb.iw

bb.iv:                                            ; preds = %bb.ix, %bb.iu, %bb.is
  %.not.i151.i = icmp slt i64 %.sroa.726.1.i, %i.ahi
  %or.cond43.i = select i1 %.sroa.12.1.i289, i1 true, i1 %.not.i151.i
  br i1 %or.cond43.i, label %._crit_edge132.i, label %.lr.ph131.i

bb.iw:                                            ; preds = %bb.iu
  %i.aka = sub i64 %i.agj, %i.ajz                 ; 3 uses
  %i.akb = icmp ult i64 %i.aka, %i.agm
  br i1 %i.akb, label %bb.ix, label %bb.iy

bb.ix:                                            ; preds = %bb.iw
  %i.akc = getelementptr inbounds nuw [8 x i8], ptr %i.agp, i64 %i.aka
  %i.akd = load i64, ptr %i.akc, align 8, !noalias !3945, !noundef !5
  %i.ake = add i64 %i.akd, %.sroa.014.1.i
  %.not132.i = icmp ult i64 %i.ake, %.pre
end_hunk_2
begin_hunk_3_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1r_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2h_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter:bb.a
  br label %bb.kf

bb.kf:                                            ; preds = %bb.bc, %bb.ke
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2n_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4194)
  %i.h = icmp uge i64 %2, %3
  %i.i = icmp uge i64 %5, %6
  %or.cond.i72 = or i1 %i.h, %i.i
  br i1 %or.cond.i72, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4195
  call void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEBW_EINtB5_7ZipImplBW_BW_E3newCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, i64 noundef %5, i64 noundef %6, i64 noundef %2, i64 noundef %3), !noalias !4195
  %.sroa.6.16.copyload.i = load i64, ptr %i.e, align 8, !noalias !4195
  %.sroa.82.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.82.16.copyload.i = load i64, ptr %.sroa.82.16..sroa_idx.i, align 8, !noalias !4195
  %.sroa.93.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.93.16.copyload.i = load i64, ptr %.sroa.93.16..sroa_idx.i, align 8, !noalias !4195 ; 3 uses
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.10.16.copyload.i = load i64, ptr %.sroa.10.16..sroa_idx.i, align 8, !noalias !4195 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4195
  %i.j = icmp ult i64 %.sroa.93.16.copyload.i, %.sroa.10.16.copyload.i
  br i1 %i.j, label %.lr.ph.i.i.i.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = sub nuw i64 %.sroa.10.16.copyload.i, %.sroa.93.16.copyload.i ; 2 uses
  %.val11.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !4194, !noalias !4196, !noundef !5 ; 2 uses
  %.val9.i.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !4193, !noalias !4194 ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !4193, !noalias !4194, !nonnull !5
  %.val10.i.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !4194, !noalias !4193, !nonnull !5
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.sroa.01.034.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.al, %bb.f ] ; 3 uses
  %i.p = phi i64 [ %.sroa.93.16.copyload.i, %.lr.ph.i.i.i.i ], [ %i.q, %bb.f ] ; 3 uses
  %i.q = add nuw i64 %i.p, 1
  %i.r = add nuw i64 %i.p, %.sroa.6.16.copyload.i ; 3 uses
  %i.s = add nuw i64 %i.p, %.sroa.82.16.copyload.i ; 3 uses
  %i.t = icmp ult i64 %i.r, %.val11.i.i.i.i.i
  br i1 %i.t, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef range(i64 0, 576460752303423488) %.val11.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #28, !noalias !4197
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i: ; preds = %bb.c
  %i.u = icmp ult i64 %i.s, %.val9.i.i.i.i.i
  br i1 %i.u, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef range(i64 0, 576460752303423488) %.val9.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #28, !noalias !4198
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.val10.i.i.i.i.i, i64 %i.r ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i, i64 %i.s ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4200)
  %i.x = load ptr, ptr %i.v, align 8, !alias.scope !4199, !noalias !4201, !nonnull !5, !align !6, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !4199, !noalias !4201, !noundef !5
  %i.aa = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x, i64 noundef %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181), !noalias !4202 ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 1      ; 2 uses
  %i.ac = load ptr, ptr %i.w, align 8, !alias.scope !4200, !noalias !4203, !nonnull !5, !align !6, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !4200, !noalias !4203, !noundef !5
  %i.af = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ac, i64 noundef %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181), !noalias !4202 ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 1
  %i.ah = icmp eq i64 %i.ab, %i.ag
  br i1 %i.ah, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i
  %i.ai = extractvalue { ptr, i64 } %i.af, 0
  %i.aj = extractvalue { ptr, i64 } %i.aa, 0
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.aj, ptr nonnull readonly %i.ai, i64 %i.ab), !alias.scope !4204, !noalias !4202
  %i.ak = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ak, label %bb.f, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit

bb.f:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i
  %i.al = add nuw i64 %.sroa.01.034.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.al, %i.o
  br i1 %exitcond.not.i.i.i.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread412, label %bb.c

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i
  %.not = icmp eq i64 %.sroa.01.034.i.i.i.i, 0
  br i1 %.not, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread412

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread: ; preds = %bb.b, %bb.a, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread412, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.0.0.i73411 = phi i64 [ 0, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.0.0.i73415, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread412 ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %i.am = add i64 %.sroa.0.0.i73411, %2           ; 3 uses
  %i.an = add i64 %.sroa.0.0.i73411, %5           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4206)
  %i.ao = icmp uge i64 %i.am, %3
  %i.ap = icmp uge i64 %i.an, %6
  %or.cond.i74 = or i1 %i.ao, %i.ap
  br i1 %or.cond.i74, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge, label %.lr.ph.i.i.i.i75

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge: ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val50.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert1088 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val51.pre = load i64, ptr %.phi.trans.insert1088, align 8
  %.phi.trans.insert1090 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val48.pre = load ptr, ptr %.phi.trans.insert1090, align 8
  %.phi.trans.insert1092 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val49.pre = load i64, ptr %.phi.trans.insert1092, align 8
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit

.lr.ph.i.i.i.i75:                                 ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = sub nuw i64 %3, %i.am                   ; 2 uses
  %i.av = sub nuw i64 %6, %i.an                   ; 2 uses
  %.val11.i.i.i.i.i76 = load i64, ptr %i.aq, align 8, !alias.scope !4206, !noalias !4205 ; 6 uses
  %.val9.i.i.i.i.i77 = load i64, ptr %i.ar, align 8, !alias.scope !4205, !noalias !4206 ; 6 uses
  %.val.i.i.i.i.i78 = load ptr, ptr %i.as, align 8, !alias.scope !4205, !noalias !4206 ; 5 uses
  %.val10.i.i.i.i.i79 = load ptr, ptr %i.at, align 8, !alias.scope !4206, !noalias !4205 ; 5 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i75
  %i.aw = phi i64 [ %3, %.lr.ph.i.i.i.i75 ], [ %i.az, %bb.k ]
  %.sroa.01.032.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i75 ], [ %i.bs, %bb.k ] ; 4 uses
  %i.ax = phi i64 [ %6, %.lr.ph.i.i.i.i75 ], [ %i.ay, %bb.k ]
  %i.ay = add i64 %i.ax, -1                       ; 4 uses
  %exitcond.not.i.i.i.i80 = icmp eq i64 %.sroa.01.032.i.i.i.i, %i.au
  br i1 %exitcond.not.i.i.i.i80, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = add i64 %i.aw, -1                       ; 4 uses
  %i.ba = icmp ult i64 %i.ay, %.val11.i.i.i.i.i76
  br i1 %i.ba, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i81, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ay, i64 noundef range(i64 0, 576460752303423488) %.val11.i.i.i.i.i76, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #28, !noalias !4207
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i81: ; preds = %bb.h
  %i.bb = icmp ult i64 %i.az, %.val9.i.i.i.i.i77
  br i1 %i.bb, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i82, label %bb.j

bb.j:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i81
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.az, i64 noundef range(i64 0, 576460752303423488) %.val9.i.i.i.i.i77, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #28, !noalias !4208
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i82: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i81
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %.val10.i.i.i.i.i79, i64 %i.ay ; 2 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i78, i64 %i.az ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4210)
  %i.be = load ptr, ptr %i.bc, align 8, !alias.scope !4209, !noalias !4211, !nonnull !5, !align !6, !noundef !5
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !4209, !noalias !4211, !noundef !5
  %i.bh = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.be, i64 noundef %i.bg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181), !noalias !4212 ; 2 uses
  %i.bi = extractvalue { ptr, i64 } %i.bh, 1      ; 2 uses
  %i.bj = load ptr, ptr %i.bd, align 8, !alias.scope !4210, !noalias !4213, !nonnull !5, !align !6, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !4210, !noalias !4213, !noundef !5
  %i.bm = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bj, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181), !noalias !4212 ; 2 uses
  %i.bn = extractvalue { ptr, i64 } %i.bm, 1
  %i.bo = icmp eq i64 %i.bi, %i.bn
  br i1 %i.bo, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i84, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i84: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i82
  %i.bp = extractvalue { ptr, i64 } %i.bm, 0
  %i.bq = extractvalue { ptr, i64 } %i.bh, 0
  %bcmp.i.i.i.i.i.i85 = tail call i32 @bcmp(ptr nonnull readonly %i.bq, ptr nonnull readonly %i.bp, i64 %i.bi), !alias.scope !4214, !noalias !4212
  %i.br = icmp eq i32 %bcmp.i.i.i.i.i.i85, 0
  br i1 %i.br, label %bb.k, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit

bb.k:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i84
  %i.bs = add nuw i64 %.sroa.01.032.i.i.i.i, 1    ; 2 uses
  %exitcond48.not.i.i.i.i = icmp eq i64 %i.bs, %i.av
  br i1 %exitcond48.not.i.i.i.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.g

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.g, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i82, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i84, %bb.k, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge
  %.val61 = phi i64 [ %.val49.pre, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %.val9.i.i.i.i.i77, %bb.k ], [ %.val9.i.i.i.i.i77, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i84 ], [ %.val9.i.i.i.i.i77, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i82 ], [ %.val9.i.i.i.i.i77, %bb.g ] ; 22 uses
  %.val60 = phi ptr [ %.val48.pre, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %.val.i.i.i.i.i78, %bb.k ], [ %.val.i.i.i.i.i78, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i84 ], [ %.val.i.i.i.i.i78, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i82 ], [ %.val.i.i.i.i.i78, %bb.g ] ; 13 uses
  %.val63 = phi i64 [ %.val51.pre, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %.val11.i.i.i.i.i76, %bb.k ], [ %.val11.i.i.i.i.i76, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i84 ], [ %.val11.i.i.i.i.i76, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i82 ], [ %.val11.i.i.i.i.i76, %bb.g ] ; 25 uses
  %.val62 = phi ptr [ %.val50.pre, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %.val10.i.i.i.i.i79, %bb.k ], [ %.val10.i.i.i.i.i79, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i84 ], [ %.val10.i.i.i.i.i79, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i82 ], [ %.val10.i.i.i.i.i79, %bb.g ] ; 14 uses
  %.sroa.0.0.i83 = phi i64 [ 0, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread._RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit_crit_edge ], [ %i.au, %bb.g ], [ %.sroa.01.032.i.i.i.i, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i82 ], [ %.sroa.01.032.i.i.i.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i84 ], [ %i.av, %bb.k ] ; 4 uses
  %i.bt = sub i64 %3, %.sroa.0.0.i83              ; 11 uses
  %i.bu = sub i64 %6, %.sroa.0.0.i83              ; 12 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.6.0..sroa_idx.i125 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
  %.sroa.7.0..sroa_idx.i126 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 14 uses
  %.sroa.52.0..sroa_idx.i116 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %.sroa.6.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  %.sroa.7.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %.sroa.52.0..sroa_idx.i106 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %.sroa.6.0..sroa_idx.i108 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %.sroa.7.0..sroa_idx.i110 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  br label %bb.l

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread412: ; preds = %bb.f, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.0.0.i73415 = phi i64 [ %.sroa.01.034.i.i.i.i, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %i.o, %bb.f ] ; 2 uses
  store i64 0, ptr %0, align 8, !alias.scope !4215
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.ch, align 8, !alias.scope !4215
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.ci, align 8, !alias.scope !4216
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.52.0.copyload.i = load i64, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !4216
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !4216
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !4216
  %i.cj = trunc nuw i64 %.sroa.01.0.copyload.i to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i = select i1 %i.cj, i64 %.sroa.52.0.copyload.i, i64 %2
  %.sroa.5.sroa.5.0.i = select i1 %i.cj, i64 %.sroa.6.0.copyload.i, i64 %5
  %i.ck = select i1 %i.cj, i64 %.sroa.7.0.copyload.i, i64 0
  %.sroa.5.sroa.6.0.i = add i64 %i.ck, %.sroa.0.0.i73415
  store i64 1, ptr %i.ci, align 8, !alias.scope !4216
  store i64 %.sroa.5.sroa.0.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !4216
  store i64 %.sroa.5.sroa.5.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !4216
  store i64 %.sroa.5.sroa.6.0.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !4216
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread

bb.l:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.0369.0 = phi i64 [ %i.an, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.0369.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit ] ; 40 uses
  %.sroa.0.0 = phi i64 [ %i.am, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit ] ; 39 uses
  %i.cl = icmp ult i64 %.sroa.0.0, %i.bt          ; 2 uses
  %i.cm = icmp ult i64 %.sroa.0369.0, %i.bu       ; 3 uses
  %or.cond450 = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond450, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit, %bb.l
  br i1 %i.cl, label %bb.at, label %bb.au

bb.n:                                             ; preds = %bb.l
  %i.cn = sub nuw i64 %i.bt, %.sroa.0.0           ; 5 uses
  %i.co = sub nuw i64 %i.bu, %.sroa.0369.0        ; 5 uses
  %i.cp = icmp ult i64 %i.cn, 97
  %i.cq = icmp ult i64 %i.co, 97
  %or.cond.i = or i1 %i.cq, %i.cp
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.i86 = call noundef i64 @llvm.umin.i64(i64 %i.co, i64 %i.cn) ; 2 uses
  %.sroa.0.0.i87 = call noundef i64 @llvm.umax.i64(i64 %i.co, i64 %i.cn)
  %i.cr = shl nuw i64 %.sroa.0.0.i86, 1
  %i.cs = icmp slt i64 %.sroa.0.0.i86, 0
  br i1 %i.cs, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %bb.o
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.052.0.i = phi i64 [ -1, %bb.p ], [ %i.cr, %bb.o ]
  %i.ct = icmp ult i64 %.sroa.0.0.i87, %.sroa.052.0.i
  br i1 %i.ct, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.i = icmp ule i64 %i.co, %i.cn
  %.not.i.fr = freeze i1 %.not.i                  ; 2 uses
  %i.cu = icmp ule i64 %i.cn, %i.co               ; 2 uses
  br label %bb.s

.loopexit:                                        ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.thread.us825, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.thread.us787, %.outer.us, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.thread.us.us
  %.sroa.525.2.i.ph.lcssa624 = phi i64 [ %.sroa.525.0.i869, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.thread.us787 ], [ %.sroa.525.3.i.us, %.outer.us ], [ %.sroa.525.2.i.ph842.us, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.thread.us.us ], [ %.sroa.525.0.i869, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.thread.us825 ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa617 = phi i64 [ %.sroa.023.0.i870, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.thread.us787 ], [ %.sroa.023.2.i.us, %.outer.us ], [ %.sroa.023.1.i.ph843.us, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.thread.us.us ], [ %.sroa.023.0.i870, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.thread.us825 ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa610 = phi i64 [ %.sroa.9.0.i871, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.thread.us787 ], [ %.sroa.9.3.i.us, %.outer.us ], [ %.sroa.9.2.i.ph844.us, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.thread.us.us ], [ %.sroa.9.0.i871, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.thread.us825 ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa603 = phi i64 [ %.sroa.12.0.i872, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.thread.us787 ], [ %.sroa.12.3.i.us, %.outer.us ], [ %.sroa.12.2.i.ph845.us, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.thread.us.us ], [ %.sroa.12.0.i872, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.thread.us825 ] ; 2 uses
  %.not.i90 = icmp ugt i64 %spec.select451, 4
  %or.cond456 = select i1 %i.cv, i1 true, i1 %.not.i90
  br i1 %or.cond456, label %bb.ak, label %bb.s

bb.s:                                             ; preds = %bb.r, %.loopexit
  %.sroa.12.0.i872 = phi i64 [ undef, %bb.r ], [ %.sroa.12.2.i.ph.lcssa603, %.loopexit ] ; 3 uses
  %.sroa.9.0.i871 = phi i64 [ undef, %bb.r ], [ %.sroa.9.2.i.ph.lcssa610, %.loopexit ] ; 3 uses
  %.sroa.023.0.i870 = phi i64 [ 0, %bb.r ], [ %.sroa.023.1.i.ph.lcssa617, %.loopexit ] ; 3 uses
  %.sroa.525.0.i869 = phi i64 [ undef, %bb.r ], [ %.sroa.525.2.i.ph.lcssa624, %.loopexit ] ; 3 uses
  %.sroa.0403.0868 = phi i64 [ 0, %bb.r ], [ %spec.select451, %.loopexit ] ; 12 uses
  %i.cv = icmp eq i64 %.sroa.0403.0868, 4         ; 2 uses
  %i.cw = add nuw nsw i64 %.sroa.0403.0868, 1
  %spec.select451 = select i1 %i.cv, i64 4, i64 %i.cw ; 2 uses
  %i.cx = icmp eq i64 %.sroa.0403.0868, 0         ; 2 uses
  %i.cy = add i64 %.sroa.0403.0868, %.sroa.0.0    ; 6 uses
  %i.cz = icmp ult i64 %i.cy, %.val61
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %.val60, i64 %i.cy ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 8
  %.fr = freeze i1 %i.cz
  %i.dc = sub i64 %i.bt, %i.cy
  br i1 %.fr, label %.lr.ph.us.preheader, label %.split846

.lr.ph.us.preheader:                              ; preds = %bb.s
  %i.dd = call i64 @llvm.usub.sat.i64(i64 %.val61, i64 %i.cy)
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.outer.us
  %.sroa.12.2.i.ph845.us = phi i64 [ %.sroa.12.3.i.us, %.outer.us ], [ %.sroa.12.0.i872, %.lr.ph.us.preheader ] ; 7 uses
  %.sroa.9.2.i.ph844.us = phi i64 [ %.sroa.9.3.i.us, %.outer.us ], [ %.sroa.9.0.i871, %.lr.ph.us.preheader ] ; 7 uses
  %.sroa.023.1.i.ph843.us = phi i64 [ %.sroa.023.2.i.us, %.outer.us ], [ %.sroa.023.0.i870, %.lr.ph.us.preheader ] ; 4 uses
  %.sroa.525.2.i.ph842.us = phi i64 [ %.sroa.525.3.i.us, %.outer.us ], [ %.sroa.525.0.i869, %.lr.ph.us.preheader ] ; 8 uses
  %.sroa.0405.0.ph841.us = phi i64 [ %spec.select452.us.us, %.outer.us ], [ 0, %.lr.ph.us.preheader ]
  br label %bb.t

bb.t:                                             ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.thread.us.us, %.lr.ph.us
  %.sroa.0405.0678.us.us = phi i64 [ %.sroa.0405.0.ph841.us, %.lr.ph.us ], [ %spec.select452.us.us, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.thread.us.us ] ; 11 uses
  %i.de = icmp eq i64 %.sroa.0405.0678.us.us, 4   ; 3 uses
  %i.df = add nuw nsw i64 %.sroa.0405.0678.us.us, 1
  %spec.select452.us.us = select i1 %i.de, i64 4, i64 %i.df ; 4 uses
  %i.dg = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !4217
  br i1 %i.dg, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dh = icmp eq i64 %.sroa.0405.0678.us.us, 0   ; 2 uses
  %i.di = or i64 %.sroa.0405.0678.us.us, %.sroa.0403.0868
  %or.cond2.i.us.us = icmp eq i64 %i.di, 0
  br i1 %or.cond2.i.us.us, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.thread.us.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %i.cx, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %brmerge.i.not.us.us = and i1 %.not.i.fr, %i.dh
  br i1 %brmerge.i.not.us.us, label %bb.y, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.thread.us.us

bb.x:                                             ; preds = %bb.v
  %or.cond3.old.i.us.us = or i1 %i.cu, %i.dh
  br i1 %or.cond3.old.i.us.us, label %bb.y, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.thread.us.us

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dj = add i64 %.sroa.0405.0678.us.us, %.sroa.0369.0 ; 6 uses
  %i.dk = icmp ult i64 %i.dj, %.val63
  br i1 %i.dk, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.us.us, label %.split

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.us.us: ; preds = %bb.y
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %.val62, i64 %i.dj ; 2 uses
  %.val56.us.us = load ptr, ptr %i.dl, align 8, !alias.scope !4218, !noalias !4219, !nonnull !5, !align !6, !noundef !5
  %i.dm = getelementptr i8, ptr %i.dl, i64 8
  %.val57.us.us = load i64, ptr %i.dm, align 8, !alias.scope !4218, !noalias !4219, !noundef !5
  %.val58.us.us = load ptr, ptr %i.da, align 8    ; 2 uses
  %.val59.us.us = load i64, ptr %i.db, align 8
  %i.dn = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val56.us.us, i64 noundef %.val57.us.us, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181), !noalias !4220 ; 2 uses
  %i.do = extractvalue { ptr, i64 } %i.dn, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val58.us.us) ]
  %i.dp = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val58.us.us, i64 noundef %.val59.us.us, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181), !noalias !4220 ; 2 uses
  %i.dq = extractvalue { ptr, i64 } %i.dp, 1
  %i.dr = icmp eq i64 %i.do, %i.dq
  br i1 %i.dr, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.us.us, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.thread.us.us

_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.us.us: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.us.us
  %i.ds = extractvalue { ptr, i64 } %i.dp, 0
  %i.dt = extractvalue { ptr, i64 } %i.dn, 0
  %bcmp.i.i.us.us = call i32 @bcmp(ptr nonnull readonly %i.dt, ptr nonnull readonly %i.ds, i64 %i.do), !alias.scope !4221, !noalias !4220
  %.not454.us.us = icmp eq i32 %bcmp.i.i.us.us, 0
  br i1 %.not454.us.us, label %.split688.us.us, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.thread.us.us

_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.thread.us.us: ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.us.us, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.us.us, %bb.x, %bb.w, %bb.u
  %.not.i92.us.us = icmp ugt i64 %spec.select452.us.us, 4
  %or.cond457.us.us = select i1 %i.de, i1 true, i1 %.not.i92.us.us
  br i1 %or.cond457.us.us, label %.loopexit, label %bb.t

.split688.us.us:                                  ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit.us.us
  %i.du = sub i64 %i.bu, %i.dj
  %.sroa.0.0.i97.us = call noundef i64 @llvm.umin.i64(i64 %i.du, i64 %i.dc) ; 3 uses
  %.not876 = icmp eq i64 %.sroa.0.0.i97.us, 0
  br i1 %.not876, label %.outer.us, label %.lr.ph837.us.preheader

.lr.ph837.us.preheader:                           ; preds = %.split688.us.us
  %i.dv = call i64 @llvm.usub.sat.i64(i64 %.val63, i64 %i.dj)
  br label %.lr.ph837.us

.lr.ph837.us:                                     ; preds = %.lr.ph837.us.preheader, %bb.ab
  %.sroa.01.0.i836.us = phi i64 [ %i.em, %bb.ab ], [ 0, %.lr.ph837.us.preheader ] ; 8 uses
  %i.dw = and i64 %.sroa.01.0.i836.us, 1023
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph837.us
  %i.dy = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !4217
  br i1 %i.dy, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph837.us
  %i.dz = add nuw i64 %.sroa.01.0.i836.us, %i.dj  ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.01.0.i836.us, %i.dv
  br i1 %exitcond.not, label %.split854.us, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit98.us

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit98.us: ; preds = %bb.aa
  %i.ea = add nuw i64 %.sroa.01.0.i836.us, %i.cy  ; 2 uses
  %exitcond1085.not = icmp eq i64 %.sroa.01.0.i836.us, %i.dd
  br i1 %exitcond1085.not, label %.split858.us, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit99.us

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit99.us: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit98.us
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %.val62, i64 %i.dz ; 2 uses
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %.val60, i64 %i.ea ; 2 uses
  %.val52.us = load ptr, ptr %i.eb, align 8, !alias.scope !4218, !noalias !4219, !nonnull !5, !align !6, !noundef !5
  %i.ed = getelementptr i8, ptr %i.eb, i64 8
  %.val53.us = load i64, ptr %i.ed, align 8, !alias.scope !4218, !noalias !4219, !noundef !5
  %.val54.us = load ptr, ptr %i.ec, align 8       ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ec, i64 8
  %.val55.us = load i64, ptr %i.ee, align 8
  %i.ef = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val52.us, i64 noundef %.val53.us, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181), !noalias !4222 ; 2 uses
  %i.eg = extractvalue { ptr, i64 } %i.ef, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val54.us) ]
  %i.eh = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val54.us, i64 noundef %.val55.us, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181), !noalias !4222 ; 2 uses
  %i.ei = extractvalue { ptr, i64 } %i.eh, 1
  %i.ej = icmp eq i64 %i.eg, %i.ei
  br i1 %i.ej, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit102.us, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit102.thread.us

_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit102.us: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit99.us
  %i.ek = extractvalue { ptr, i64 } %i.eh, 0
  %i.el = extractvalue { ptr, i64 } %i.ef, 0
  %bcmp.i.i101.us = call i32 @bcmp(ptr nonnull readonly %i.el, ptr nonnull readonly %i.ek, i64 %i.eg), !alias.scope !4223, !noalias !4222
  %.not455.us = icmp eq i32 %bcmp.i.i101.us, 0
  br i1 %.not455.us, label %bb.ab, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit102.thread.us

bb.ab:                                            ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit102.us
  %i.em = add nuw i64 %.sroa.01.0.i836.us, 1      ; 2 uses
  %exitcond1086.not = icmp eq i64 %i.em, %.sroa.0.0.i97.us
  br i1 %exitcond1086.not, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit102.thread.us, label %.lr.ph837.us

_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit102.thread.us: ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit102.us, %bb.ab, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit99.us
  %.sroa.01.0.i.lcssa.us = phi i64 [ %.sroa.01.0.i836.us, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit99.us ], [ %.sroa.01.0.i836.us, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit102.us ], [ %.sroa.0.0.i97.us, %bb.ab ] ; 8 uses
  %i.en = icmp ugt i64 %.sroa.01.0.i.lcssa.us, 95
  br i1 %i.en, label %bb.ac, label %.outer.us

bb.ac:                                            ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsEhZmuQNqkz_11ruff_linter.exit102.thread.us
  %i.eo = icmp ugt i64 %.sroa.01.0.i.lcssa.us, 767
  br i1 %i.eo, label %.loopexit507.split.us, label %bb.ad
end_hunk_3
begin_hunk_4_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2n_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter:bb.a
.lr.ph.i272:                                      ; preds = %bb.fw
  %i.yr = mul i64 %i.rc, %i.qp                    ; 2 uses
  %i.ys = mul i64 %.sroa.0102.0384.i269, %i.qp    ; 2 uses
  %i.yt = add i64 %i.rc, %.sroa.0.0               ; 3 uses
  %i.yu = icmp ult i64 %i.yt, %.val61
  %i.yv = getelementptr inbounds nuw [16 x i8], ptr %.val60, i64 %i.yt ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 8
  %.fr.i273 = freeze i1 %i.yu
  br i1 %.fr.i273, label %.lr.ph.split.us.i277, label %.lr.ph.split.i274

.lr.ph.split.us.i277:                             ; preds = %.lr.ph.i272, %bb.gg
  %.sroa.0105.0357.us.i278 = phi i64 [ %i.yx, %bb.gg ], [ %.pre1095, %.lr.ph.i272 ] ; 3 uses
  %i.yx = add i64 %.sroa.0105.0357.us.i278, -1    ; 6 uses
  %i.yy = and i64 %i.yx, 1023
  %i.yz = icmp eq i64 %i.yy, 0
  br i1 %i.yz, label %bb.fx, label %bb.fz

bb.fx:                                            ; preds = %.lr.ph.split.us.i277
  %i.za = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.i279

bb.fy:                                            ; preds = %bb.fx
  br i1 %i.za, label %.loopexit10.i214, label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %.lr.ph.split.us.i277
  %i.zb = add i64 %i.yx, %.sroa.0369.0            ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val62) ]
  %i.zc = icmp ult i64 %i.zb, %.val63
  br i1 %i.zc, label %bb.ga, label %.invoke.i

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val60) ]
  %i.zd = getelementptr inbounds nuw [16 x i8], ptr %.val62, i64 %i.zb ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4297)
  call void @llvm.experimental.noalias.scope.decl(metadata !4298)
  %i.ze = load ptr, ptr %i.zd, align 8, !alias.scope !4297, !noalias !4299, !nonnull !5, !align !6, !noundef !5
  %i.zf = getelementptr inbounds nuw i8, ptr %i.zd, i64 8
  %i.zg = load i64, ptr %i.zf, align 8, !alias.scope !4297, !noalias !4299, !noundef !5
  %i.zh = invoke { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ze, i64 noundef %i.zg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181)
          to label %.noexc.us.i281 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.i279 ; 2 uses

.noexc.us.i281:                                   ; preds = %bb.ga
  %i.zi = extractvalue { ptr, i64 } %i.zh, 0
  %i.zj = extractvalue { ptr, i64 } %i.zh, 1      ; 2 uses
  %i.zk = load ptr, ptr %i.yv, align 8, !alias.scope !4298, !noalias !4300, !nonnull !5, !align !6, !noundef !5
  %i.zl = load i64, ptr %i.yw, align 8, !alias.scope !4298, !noalias !4300, !noundef !5
  %i.zm = invoke { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.zk, i64 noundef %i.zl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181)
          to label %.noexc181.us.i282 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.i279 ; 2 uses

.noexc181.us.i282:                                ; preds = %.noexc.us.i281
  %i.zn = extractvalue { ptr, i64 } %i.zm, 1
  %i.zo = icmp eq i64 %i.zj, %i.zn
  br i1 %i.zo, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.us.i289, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread.us.i283

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.us.i289: ; preds = %.noexc181.us.i282
  %i.zp = extractvalue { ptr, i64 } %i.zm, 0
  %bcmp.i270.us.i290 = call i32 @bcmp(ptr nonnull readonly %i.zi, ptr nonnull readonly %i.zp, i64 %i.zj), !alias.scope !4301
  %i.zq = icmp eq i32 %bcmp.i270.us.i290, 0
  br i1 %i.zq, label %bb.gd, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread.us.i283

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread.us.i283: ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.us.i289, %.noexc181.us.i282
  %i.zr = add i64 %i.yx, %i.ys                    ; 3 uses
  %i.zs = load ptr, ptr %i.qz, align 8, !noalias !4269, !nonnull !5, !noundef !5 ; 3 uses
  %i.zt = load i64, ptr %i.ra, align 8, !noalias !4269, !noundef !5 ; 5 uses
  %i.zu = icmp ult i64 %i.zr, %i.zt
  br i1 %i.zu, label %bb.gb, label %.invoke.i

bb.gb:                                            ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread.us.i283
  %i.zv = add i64 %.sroa.0105.0357.us.i278, %i.yr ; 3 uses
  %i.zw = icmp ult i64 %i.zv, %i.zt
  br i1 %i.zw, label %bb.gc, label %.invoke.i

bb.gc:                                            ; preds = %bb.gb
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zs, i64 %i.zr
  %i.zy = load i8, ptr %i.zx, align 1, !noundef !5
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zs, i64 %i.zv
  %i.aaa = load i8, ptr %i.zz, align 1, !noundef !5
  %.sroa.0.0.i272.us.i284 = call noundef i8 @llvm.umax.i8(i8 %i.aaa, i8 %i.zy)
  br label %bb.gf

bb.gd:                                            ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.us.i289
  %i.aab = add i64 %.sroa.0105.0357.us.i278, %i.ys ; 3 uses
  %i.aac = load i64, ptr %i.ra, align 8, !noalias !4269, !noundef !5 ; 3 uses
  %i.aad = icmp ult i64 %i.aab, %i.aac
  br i1 %i.aad, label %bb.ge, label %.invoke.i

bb.ge:                                            ; preds = %bb.gd
  %i.aae = load ptr, ptr %i.qz, align 8, !noalias !4269, !nonnull !5, !noundef !5 ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 %i.aab
  %i.aag = load i8, ptr %i.aaf, align 1, !noundef !5
  %i.aah = add i8 %i.aag, 1
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gc
  %i.aai = phi ptr [ %i.aae, %bb.ge ], [ %i.zs, %bb.gc ]
  %i.aaj = phi i64 [ %i.aac, %bb.ge ], [ %i.zt, %bb.gc ] ; 2 uses
  %.sroa.04.0.us.i285 = phi i8 [ %i.aah, %bb.ge ], [ %.sroa.0.0.i272.us.i284, %bb.gc ]
  %i.aak = add i64 %i.yx, %i.yr                   ; 3 uses
  %i.aal = icmp ult i64 %i.aak, %i.aaj
  br i1 %i.aal, label %bb.gg, label %.invoke.i

bb.gg:                                            ; preds = %bb.gf
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aai, i64 %i.aak
  store i8 %.sroa.04.0.us.i285, ptr %i.aam, align 1
  %.not168.us.i286 = icmp eq i64 %i.yx, 0
  br i1 %.not168.us.i286, label %..loopexit25_crit_edge.split.us.i287, label %.lr.ph.split.us.i277

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.i279: ; preds = %.noexc.us.i281, %bb.ga, %bb.fx
  %lpad.loopexit26.us.i280 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i151

..loopexit25_crit_edge.split.us.i287:             ; preds = %bb.gg
  %.not.i288 = icmp eq i64 %i.rc, 0
  br i1 %.not.i288, label %.lr.ph410.i175, label %.lr.ph385.split.i268

.lr.ph.split.i274:                                ; preds = %.lr.ph.i272
  %i.aan = and i64 %.pre1095, 1023
  %i.aao = icmp eq i64 %i.aan, 1
  br i1 %i.aao, label %bb.gh, label %bb.gj

bb.gh:                                            ; preds = %.lr.ph.split.i274
  %i.aap = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i275

bb.gi:                                            ; preds = %bb.gh
  br i1 %i.aap, label %.loopexit10.i214, label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %.lr.ph.split.i274
  %i.aaq = add i64 %i.bu, -1                      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val62) ]
  %i.aar = icmp ult i64 %i.aaq, %.val63
  br i1 %i.aar, label %bb.gk, label %.invoke.i

bb.gk:                                            ; preds = %bb.gj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val60) ]
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.gf, %bb.gd, %bb.gb, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread.us.i283, %bb.fz, %bb.el, %bb.ej, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit198.thread.i191, %bb.ei, %bb.eg, %bb.ed, %bb.fi, %bb.fg, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit190.thread.i204, %bb.ff, %bb.fd, %bb.ev, %bb.et, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit194.thread.i234, %bb.es, %bb.eq, %bb.fr, %bb.fq, %bb.fo, %bb.fl, %bb.gk, %bb.gj
  %i.aas = phi i64 [ %i.yt, %bb.gk ], [ %i.uz, %bb.ev ], [ %i.wv, %bb.fi ], [ %i.yf, %bb.fr ], [ %i.rn, %bb.eg ], [ %i.aaq, %bb.gj ], [ %.val61, %bb.fo ], [ %i.xy, %bb.fq ], [ %.val63, %bb.fl ], [ %i.tv, %bb.eq ], [ %i.ul, %bb.es ], [ %i.ur, %bb.et ], [ %i.up, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit194.thread.i234 ], [ %i.vn, %bb.fd ], [ %i.wd, %bb.ff ], [ %i.wn, %bb.fg ], [ %i.wj, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit190.thread.i204 ], [ %i.so, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit198.thread.i191 ], [ %i.ro, %bb.ed ], [ %i.tg, %bb.el ], [ %i.st, %bb.ej ], [ %i.si, %bb.ei ], [ %i.zv, %bb.gb ], [ %i.aab, %bb.gd ], [ %i.aak, %bb.gf ], [ %i.zb, %bb.fz ], [ %i.zr, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread.us.i283 ]
  %i.aat = phi i64 [ %.val61, %bb.gk ], [ %i.un, %bb.ev ], [ %i.wf, %bb.fi ], [ %i.ya, %bb.fr ], [ %.val61, %bb.eg ], [ %.val63, %bb.gj ], [ %.val61, %bb.fo ], [ %i.ya, %bb.fq ], [ %.val63, %bb.fl ], [ %.val63, %bb.eq ], [ %.pre640.i237, %bb.es ], [ %.pre640.i237, %bb.et ], [ %i.un, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit194.thread.i234 ], [ %.val61, %bb.fd ], [ %.pre636.i213, %bb.ff ], [ %.pre636.i213, %bb.fg ], [ %i.wf, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit190.thread.i204 ], [ %i.sk, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit198.thread.i191 ], [ %.val63, %bb.ed ], [ %i.sk, %bb.el ], [ %.pre632.i241, %bb.ej ], [ %.pre632.i241, %bb.ei ], [ %i.zt, %bb.gb ], [ %i.aac, %bb.gd ], [ %i.aaj, %bb.gf ], [ %.val63, %bb.fz ], [ %i.zt, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread.us.i283 ]
  %i.aau = phi ptr [ @103, %bb.gk ], [ @91, %bb.ev ], [ @97, %bb.fi ], [ @101, %bb.fr ], [ @81, %bb.eg ], [ @102, %bb.gj ], [ @99, %bb.fo ], [ @100, %bb.fq ], [ @98, %bb.fl ], [ @86, %bb.eq ], [ @88, %bb.es ], [ @89, %bb.et ], [ @90, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit194.thread.i234 ], [ @93, %bb.fd ], [ @94, %bb.ff ], [ @95, %bb.fg ], [ @96, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit190.thread.i204 ], [ @84, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit198.thread.i191 ], [ @80, %bb.ed ], [ @85, %bb.el ], [ @83, %bb.ej ], [ @82, %bb.ei ], [ @105, %bb.gb ], [ @106, %bb.gd ], [ @107, %bb.gf ], [ @102, %bb.fz ], [ @104, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread.us.i283 ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aas, i64 noundef %i.aat, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aau) #28
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i149

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.gl:                                            ; preds = %.loopexit.split-lp.i151
  %i.aav = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.loopexit10.i214
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4269
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread: ; preds = %bb.az, %bb.ba, %bb.du, %bb.bd, %bb.bb, %.sink.split.i, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit
  %.val68 = load ptr, ptr %i.bx, align 8          ; 4 uses
  %.val69 = load i64, ptr %i.by, align 8          ; 4 uses
  %.val70 = load ptr, ptr %i.bv, align 8          ; 4 uses
  %.val71 = load i64, ptr %i.bw, align 8          ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4302)
  call void @llvm.experimental.noalias.scope.decl(metadata !4303)
  %i.aaw = sub i64 %.pre, %.pre1095               ; 3 uses
  %i.aax = and i64 %i.aaw, 1
  %.not.i291 = icmp eq i64 %i.aax, 0              ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aaz = load i64, ptr %i.aay, align 8, !alias.scope !4302, !noalias !4304, !noundef !5 ; 4 uses
  %i.aba = add i64 %i.aaz, 1                      ; 5 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.abc = load i64, ptr %i.abb, align 8, !alias.scope !4302, !noalias !4304, !noundef !5 ; 16 uses
  %i.abd = icmp ult i64 %i.aba, %i.abc
  br i1 %i.abd, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread
  %i.abe = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.abf = load ptr, ptr %i.abe, align 8, !alias.scope !4302, !noalias !4304, !nonnull !5, !noundef !5 ; 7 uses
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %i.abf, i64 %i.aba
  store i64 0, ptr %i.abg, align 8, !noalias !4305
  %i.abh = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.abi = load i64, ptr %i.abh, align 8, !alias.scope !4303, !noalias !4306, !noundef !5 ; 4 uses
  %i.abj = add i64 %i.abi, 1                      ; 5 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.abl = load i64, ptr %i.abk, align 8, !alias.scope !4303, !noalias !4306, !noundef !5 ; 16 uses
  %i.abm = icmp ult i64 %i.abj, %i.abl
  br i1 %i.abm, label %bb.go, label %bb.gp

bb.gn:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aba, i64 noundef %i.abc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28, !noalias !4305
  unreachable

bb.go:                                            ; preds = %bb.gm
  %i.abn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.abo = load ptr, ptr %i.abn, align 8, !alias.scope !4303, !noalias !4306, !nonnull !5, !noundef !5 ; 7 uses
  %i.abp = getelementptr inbounds nuw [8 x i8], ptr %i.abo, i64 %i.abj
  store i64 0, ptr %i.abp, align 8, !noalias !4305
  %i.abq = add i64 %.pre, %.pre1095               ; 2 uses
  %i.abr = lshr i64 %i.abq, 1                     ; 2 uses
  %.sroa.047.0.i = sub nuw i64 %i.abq, %i.abr     ; 2 uses
  %i.abs = icmp ult i64 %i.abc, 1152921504606846976
  call void @llvm.assume(i1 %i.abs)
  %.not128.not.i = icmp ugt i64 %i.abc, %.sroa.047.0.i
  br i1 %.not128.not.i, label %bb.gr, label %bb.gq, !prof !8

bb.gp:                                            ; preds = %bb.gm
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.abj, i64 noundef %i.abl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #28, !noalias !4305
  unreachable

bb.gq:                                            ; preds = %bb.go
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #28, !noalias !4305
  unreachable

bb.gr:                                            ; preds = %bb.go
  %i.abt = icmp ult i64 %i.abl, 1152921504606846976
  call void @llvm.assume(i1 %i.abt)
  %.not129.not.i = icmp samesign ugt i64 %i.abl, %.sroa.047.0.i
  br i1 %.not129.not.i, label %.lr.ph112.i, label %bb.gs, !prof !8

.lr.ph112.i:                                      ; preds = %bb.gr
  %i.abu = add i64 %i.aaz, -1
  %i.abv = add i64 %i.abi, -1
  %.neg459 = add i64 %i.bt, 1
  %.neg461 = add i64 %.neg459, %i.bu
  %11 = add i64 %.sroa.0369.0, %.sroa.0.0
  %12 = add i64 %11, %i.abr
  %13 = sub i64 %.neg461, %12
  br label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #28, !noalias !4305
  unreachable

bb.gt:                                            ; preds = %._crit_edge108.i, %.lr.ph112.i
  %.sroa.048.0111.i = phi i64 [ 0, %.lr.ph112.i ], [ %i.abw, %._crit_edge108.i ] ; 10 uses
  %i.abw = add nuw i64 %.sroa.048.0111.i, 1       ; 2 uses
  %i.abx = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !4305
  br i1 %i.abx, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph94.preheader.i

.lr.ph94.preheader.i:                             ; preds = %bb.gt
  %i.aby = sub nsw i64 0, %.sroa.048.0111.i       ; 6 uses
  %.pre168.i = sub i64 %i.aba, %.sroa.048.0111.i
  br label %.lr.ph94.i

.lr.ph94.i:                                       ; preds = %bb.iu, %.lr.ph94.preheader.i
  %.sroa.7.093.i = phi i64 [ %.sroa.7.1.i, %bb.iu ], [ %.sroa.048.0111.i, %.lr.ph94.preheader.i ] ; 2 uses
  %not..sroa.1418.092.i = phi i64 [ 1, %bb.iu ], [ 0, %.lr.ph94.preheader.i ]
  %i.abz = sub i64 %.sroa.7.093.i, %not..sroa.1418.092.i ; 11 uses
  %.not.i.not.i.i = icmp sgt i64 %i.abz, %.sroa.7.093.i
  br i1 %.not.i.not.i.i, label %.lr.ph107.preheader.i, label %bb.gu

bb.gu:                                            ; preds = %.lr.ph94.i
  %i.aca = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.abz, i64 %i.aby)
  switch i8 %i.aca, label %bb.gv [
    i8 -1, label %.lr.ph107.preheader.i
    i8 0, label %bb.gx
    i8 1, label %bb.gw
  ]

bb.gv:                                            ; preds = %bb.gu
  unreachable

bb.gw:                                            ; preds = %bb.gu
  %i.acb = add i64 %i.abz, -1
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gu
  %.sroa.11.1.i = phi i1 [ true, %bb.gu ], [ false, %bb.gw ]
  %.sroa.7.1.i = phi i64 [ %i.abz, %bb.gu ], [ %i.acb, %bb.gw ] ; 2 uses
  %i.acc = icmp eq i64 %i.abz, %i.aby
  br i1 %i.acc, label %._crit_edge163.i.a, label %bb.ib

.lr.ph107.preheader.i:                            ; preds = %bb.iu, %bb.gu, %.lr.ph94.i
  %.pre.i297 = sub i64 %i.abj, %.sroa.048.0111.i
  br label %.lr.ph107.i

.lr.ph107.i:                                      ; preds = %bb.hw, %.lr.ph107.preheader.i
  %not..sroa.1727.0105.i = phi i64 [ 1, %bb.hw ], [ 0, %.lr.ph107.preheader.i ]
  %.sroa.726.0104.i = phi i64 [ %.sroa.726.1.i, %bb.hw ], [ %.sroa.048.0111.i, %.lr.ph107.preheader.i ] ; 2 uses
  %i.acd = sub i64 %.sroa.726.0104.i, %not..sroa.1727.0105.i ; 11 uses
  %.not.i.not.i145.i = icmp sgt i64 %i.acd, %.sroa.726.0104.i
  br i1 %.not.i.not.i145.i, label %._crit_edge108.i, label %bb.gy

bb.gy:                                            ; preds = %.lr.ph107.i
  %i.ace = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.acd, i64 %i.aby)
  switch i8 %i.ace, label %bb.gz [
    i8 -1, label %._crit_edge108.i
    i8 0, label %bb.hb
    i8 1, label %bb.ha
  ]

bb.gz:                                            ; preds = %bb.gy
  unreachable

bb.ha:                                            ; preds = %bb.gy
  %i.acf = add i64 %i.acd, -1
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gy
  %.sroa.726.1.i = phi i64 [ %i.acd, %bb.gy ], [ %i.acf, %bb.ha ] ; 2 uses
  %.sroa.12.1.i293 = phi i1 [ true, %bb.gy ], [ false, %bb.ha ]
  %i.acg = icmp eq i64 %i.acd, %i.aby
  br i1 %i.acg, label %._crit_edge165.i.a, label %bb.hc

._crit_edge108.i:                                 ; preds = %bb.hw, %bb.gy, %.lr.ph107.i
  %exitcond161.not.i = icmp eq i64 %i.abw, %13
  br i1 %exitcond161.not.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.gt

bb.hc:                                            ; preds = %bb.hb
  %.not130.i = icmp eq i64 %i.acd, %.sroa.048.0111.i
  %.pre166.i = add i64 %i.abv, %i.acd             ; 6 uses
  br i1 %.not130.i, label %._crit_edge164.i.a, label %bb.hd

._crit_edge165.i.a:                               ; preds = %bb.hb, %bb.hg
  %.pre-phi.i = phi i64 [ %i.ack, %bb.hg ], [ %.pre.i297, %bb.hb ] ; 3 uses
  %i.ach = icmp ult i64 %.pre-phi.i, %i.abl
  br i1 %i.ach, label %bb.hl, label %bb.hm

._crit_edge164.i.a:                               ; preds = %bb.hg, %bb.hc
  %i.aci = icmp ult i64 %.pre166.i, %i.abl
  br i1 %i.aci, label %bb.hi, label %bb.hj

bb.hd:                                            ; preds = %bb.hc
  %i.acj = icmp ult i64 %.pre166.i, %i.abl
  br i1 %i.acj, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.ack = add i64 %i.acd, %i.abj                 ; 4 uses
  %i.acl = icmp ult i64 %i.ack, %i.abl
  br i1 %i.acl, label %bb.hg, label %bb.hh

bb.hf:                                            ; preds = %bb.hd
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre166.i, i64 noundef %i.abl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #28, !noalias !4305
  unreachable

bb.hg:                                            ; preds = %bb.he
  %i.acm = getelementptr inbounds nuw [8 x i8], ptr %i.abo, i64 %.pre166.i
  %i.acn = load i64, ptr %i.acm, align 8, !noalias !4305, !noundef !5
  %i.aco = getelementptr inbounds nuw [8 x i8], ptr %i.abo, i64 %i.ack
  %i.acp = load i64, ptr %i.aco, align 8, !noalias !4305, !noundef !5
  %i.acq = icmp ult i64 %i.acn, %i.acp
  br i1 %i.acq, label %._crit_edge165.i.a, label %._crit_edge164.i.a

bb.hh:                                            ; preds = %bb.he
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ack, i64 noundef %i.abl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #28, !noalias !4305
  unreachable

bb.hi:                                            ; preds = %._crit_edge164.i.a
  %i.acr = getelementptr inbounds nuw [8 x i8], ptr %i.abo, i64 %.pre166.i
  %i.acs = load i64, ptr %i.acr, align 8, !noalias !4305, !noundef !5
  %i.act = add i64 %i.acs, 1
  br label %bb.hk

bb.hj:                                            ; preds = %._crit_edge164.i.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre166.i, i64 noundef %i.abl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #28, !noalias !4305
  unreachable

bb.hk:                                            ; preds = %bb.hl, %bb.hi
  %.sroa.014.0.i = phi i64 [ %i.acy, %bb.hl ], [ %i.act, %bb.hi ] ; 5 uses
  %i.acu = sub i64 %.sroa.014.0.i, %i.acd         ; 4 uses
  %i.acv = icmp ult i64 %.sroa.014.0.i, %.pre
  %i.acw = icmp ult i64 %i.acu, %.pre1095
  %or.cond.i294 = and i1 %i.acv, %i.acw
  br i1 %or.cond.i294, label %bb.ho, label %bb.hn

bb.hl:                                            ; preds = %._crit_edge165.i.a
  %i.acx = getelementptr inbounds nuw [8 x i8], ptr %i.abo, i64 %.pre-phi.i
  %i.acy = load i64, ptr %i.acx, align 8, !noalias !4305, !noundef !5
  br label %bb.hk

bb.hm:                                            ; preds = %._crit_edge165.i.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi.i, i64 noundef %i.abl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28, !noalias !4305
  unreachable

bb.hn:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.hk
  %.sroa.020.0.i = phi i64 [ %i.aec, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i ], [ %i.acu, %bb.hk ]
  %.sroa.014.1.i = phi i64 [ %i.aeb, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i ], [ %.sroa.014.0.i, %bb.hk ] ; 3 uses
  %i.acz = add i64 %i.acd, %i.abi                 ; 3 uses
  %i.ada = icmp ult i64 %i.acz, %i.abl
  br i1 %i.ada, label %bb.ht, label %bb.hu

bb.ho:                                            ; preds = %bb.hk
  %i.adb = sub i64 %i.bt, %.sroa.014.0.i          ; 2 uses
  %i.adc = sub i64 %i.bu, %i.acu                  ; 2 uses
  %i.add = sub i64 %i.adb, %.sroa.0.0
  %i.ade = sub i64 %i.adc, %.sroa.0369.0
  %.sroa.0.0.i149.i = call noundef i64 @llvm.umin.i64(i64 %i.ade, i64 %i.add) ; 3 uses
  %.not116.i = icmp eq i64 %.sroa.0.0.i149.i, 0
  br i1 %.not116.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph99.i

.lr.ph99.i:                                       ; preds = %bb.ho
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  br label %bb.hp

bb.hp:                                            ; preds = %bb.hs, %.lr.ph99.i
  %.sroa.0.0.i13697.i = phi i64 [ 0, %.lr.ph99.i ], [ %i.aea, %bb.hs ] ; 4 uses
  %i.adf = xor i64 %.sroa.0.0.i13697.i, -1        ; 2 uses
  %i.adg = add i64 %i.adc, %i.adf                 ; 3 uses
  %i.adh = icmp ult i64 %i.adg, %.val71
  br i1 %i.adh, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.adg, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #28, !noalias !4307
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.hp
  %i.adi = add i64 %i.adb, %i.adf                 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %i.adj = icmp ult i64 %i.adi, %.val69
  br i1 %i.adj, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit150.i, label %bb.hr

bb.hr:                                            ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.adi, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #28, !noalias !4308
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit150.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i
  %i.adk = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.adg ; 2 uses
  %i.adl = getelementptr inbounds nuw [16 x i8], ptr %.val68, i64 %i.adi ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4309)
  call void @llvm.experimental.noalias.scope.decl(metadata !4310)
  %i.adm = load ptr, ptr %i.adk, align 8, !alias.scope !4309, !noalias !4311, !nonnull !5, !align !6, !noundef !5
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adk, i64 8
  %i.ado = load i64, ptr %i.adn, align 8, !alias.scope !4309, !noalias !4311, !noundef !5
  %i.adp = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.adm, i64 noundef %i.ado, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181), !noalias !4312 ; 2 uses
  %i.adq = extractvalue { ptr, i64 } %i.adp, 1    ; 2 uses
  %i.adr = load ptr, ptr %i.adl, align 8, !alias.scope !4310, !noalias !4313, !nonnull !5, !align !6, !noundef !5
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adl, i64 8
  %i.adt = load i64, ptr %i.ads, align 8, !alias.scope !4310, !noalias !4313, !noundef !5
  %i.adu = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.adr, i64 noundef %i.adt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181), !noalias !4312 ; 2 uses
  %i.adv = extractvalue { ptr, i64 } %i.adu, 1
  %i.adw = icmp eq i64 %i.adq, %i.adv
  br i1 %i.adw, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit150.i
  %i.adx = extractvalue { ptr, i64 } %i.adu, 0
  %i.ady = extractvalue { ptr, i64 } %i.adp, 0
  %bcmp.i.i296 = call i32 @bcmp(ptr nonnull readonly %i.ady, ptr nonnull readonly %i.adx, i64 %i.adq), !alias.scope !4314, !noalias !4312
  %i.adz = icmp eq i32 %bcmp.i.i296, 0
  br i1 %i.adz, label %bb.hs, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i

bb.hs:                                            ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i
  %i.aea = add nuw i64 %.sroa.0.0.i13697.i, 1     ; 2 uses
  %exitcond160.not.i = icmp eq i64 %i.aea, %.sroa.0.0.i149.i
  br i1 %exitcond160.not.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.hp

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.hs, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit150.i, %bb.ho
  %.sroa.0.0.i136.lcssa.i = phi i64 [ 0, %bb.ho ], [ %.sroa.0.0.i13697.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i ], [ %.sroa.0.0.i149.i, %bb.hs ], [ %.sroa.0.0.i13697.i, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit150.i ] ; 2 uses
  %i.aeb = add i64 %.sroa.0.0.i136.lcssa.i, %.sroa.014.0.i
  %i.aec = add i64 %.sroa.0.0.i136.lcssa.i, %i.acu
  br label %bb.hn

bb.ht:                                            ; preds = %bb.hn
  %i.aed = getelementptr inbounds nuw [8 x i8], ptr %i.abo, i64 %i.acz
  store i64 %.sroa.014.1.i, ptr %i.aed, align 8, !noalias !4305
  br i1 %.not.i291, label %bb.hv, label %bb.hw

bb.hu:                                            ; preds = %bb.hn
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.acz, i64 noundef %i.abl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #28, !noalias !4305
  unreachable

bb.hv:                                            ; preds = %bb.ht
  %i.aee = sub i64 %i.acd, %i.aaw                 ; 2 uses
  %.sroa.024.0.i = call i64 @llvm.abs.i64(i64 %i.aee, i1 false)
  %.not131.i = icmp sgt i64 %.sroa.024.0.i, %.sroa.048.0111.i
  br i1 %.not131.i, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hy, %bb.hv, %bb.ht
  %.not.i144.i = icmp slt i64 %.sroa.726.1.i, %i.aby
  %or.cond45.i = select i1 %.sroa.12.1.i293, i1 true, i1 %.not.i144.i
  br i1 %or.cond45.i, label %._crit_edge108.i, label %.lr.ph107.i

bb.hx:                                            ; preds = %bb.hv
  %i.aef = sub i64 %i.aaz, %i.aee                 ; 3 uses
  %i.aeg = icmp ult i64 %i.aef, %i.abc
  br i1 %i.aeg, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  %i.aeh = getelementptr inbounds nuw [8 x i8], ptr %i.abf, i64 %i.aef
  %i.aei = load i64, ptr %i.aeh, align 8, !noalias !4305, !noundef !5
  %i.aej = add i64 %i.aei, %.sroa.014.1.i
  %.not132.i = icmp ult i64 %i.aej, %.pre
  br i1 %.not132.i, label %bb.hw, label %bb.ia

bb.hz:                                            ; preds = %bb.hx
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aef, i64 noundef %i.abc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #28, !noalias !4305
  unreachable

bb.ia:                                            ; preds = %bb.hy
  %i.aek = sub i64 %i.bt, %.sroa.014.1.i
  %i.ael = sub i64 %i.bu, %.sroa.020.0.i
  br label %bb.ja

bb.ib:                                            ; preds = %bb.gx
  %.not133.i = icmp eq i64 %i.abz, %.sroa.048.0111.i
  %.pre170.i = add i64 %i.abu, %i.abz             ; 6 uses
  br i1 %.not133.i, label %._crit_edge162.i, label %bb.ic

._crit_edge163.i.a:                               ; preds = %bb.gx, %bb.if
  %.pre-phi169.i = phi i64 [ %i.aep, %bb.if ], [ %.pre168.i, %bb.gx ] ; 3 uses
  %i.aem = icmp ult i64 %.pre-phi169.i, %i.abc
  br i1 %i.aem, label %bb.ik, label %bb.il

._crit_edge162.i:                                 ; preds = %bb.if, %bb.ib
  %i.aen = icmp ult i64 %.pre170.i, %i.abc
  br i1 %i.aen, label %bb.ih, label %bb.ii

end_hunk_4
