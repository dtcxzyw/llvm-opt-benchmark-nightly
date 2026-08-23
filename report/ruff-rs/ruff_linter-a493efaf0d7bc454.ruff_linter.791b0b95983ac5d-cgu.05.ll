Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.05?download=true
inline.NumInlined: 3215
inline.NumDeleted: 1068
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers13diff_deadlineINtNtB4_5utils12OffsetLookupjEBZ_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2m_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter:bb.a

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #28, !noalias !1046
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit24.i: ; preds = %bb.f
  %i.ad = xor i64 %i.q, -1
  %i.ae = add i64 %3, %i.ad                       ; 3 uses
  %i.af = icmp ult i64 %i.ae, %i.t
  br i1 %i.af, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.h

bb.h:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit24.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ae, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @177) #28, !noalias !1049
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit24.i
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ab
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ae
  %.val30.i = load i64, ptr %i.ag, align 8, !noalias !1031, !noundef !4
  %.val31.i = load i64, ptr %i.ah, align 8, !noalias !1031, !noundef !4
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
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !1052, !noalias !1055, !noundef !4 ; 4 uses
  %i.an = load i64, ptr %i.ak, align 8, !range !57, !alias.scope !1052, !noalias !1055, !noundef !4
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %bb.k, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak), !noalias !1055
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.k, %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.val6, i64 128 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !1052, !noalias !1055, !nonnull !4, !noundef !4
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %i.aq, i64 %i.am ; 4 uses
  store i64 1, ptr %i.ar, align 8, !noalias !1061
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1061
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 %.sroa.04.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1061
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store i64 %5, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1061
  %i.as = add i64 %i.am, 1                        ; 3 uses
  store i64 %i.as, ptr %i.al, align 8, !alias.scope !1052, !noalias !1055
  %i.at = load i64, ptr %i.ak, align 8, !range !57, !alias.scope !1062, !noalias !1065, !noundef !4
  %i.au = icmp eq i64 %i.as, %i.at
  br i1 %i.au, label %bb.l, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit

bb.l:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak), !noalias !1065
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i, %bb.l
  %i.av = load ptr, ptr %i.ap, align 8, !alias.scope !1062, !noalias !1065, !nonnull !4, !noundef !4
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %i.av, i64 %i.as ; 4 uses
  store i64 2, ptr %i.aw, align 8, !noalias !1071
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %2, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !1071
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 %5, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !1071
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i64 %.sroa.011.0.i, ptr %.sroa.67.0..sroa_idx.i, align 8, !noalias !1071
  %i.ax = add i64 %i.am, 2
  store i64 %i.ax, ptr %i.al, align 8, !alias.scope !1062, !noalias !1065
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
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 4 uses
  %i.i = add i64 %i.h, 1                          ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 16 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !4 ; 4 uses
  %i.r = add i64 %i.q, 1                          ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !4 ; 16 uses
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  store i64 0, ptr %i.x, align 8
  %i.y = add i64 %.sroa.037.0, %.sroa.025.0       ; 2 uses
  %i.z = lshr i64 %i.y, 1
  %.sroa.047.0 = sub i64 %i.y, %i.z               ; 3 uses
  %i.aa = icmp ult i64 %i.k, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aa)
  %.not128.not = icmp ugt i64 %i.k, %.sroa.047.0
  br i1 %.not128.not, label %bb.g, label %bb.f, !prof !33

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
  br i1 %.not129.not, label %.lr.ph269, label %bb.h, !prof !33

.lr.ph269:                                        ; preds = %bb.g
  %i.ac = add i64 %i.h, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load i64, ptr %i.af, align 8            ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load i64, ptr %i.al, align 8            ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !4 ; 2 uses
  %i.ap = add i64 %i.q, -1
  %i.aq = add i64 %.sroa.025.0, %2                ; 2 uses
  %i.ar = add i64 %.sroa.037.0, %5                ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #28
  unreachable

bb.i:                                             ; preds = %.lr.ph269, %._crit_edge265
  %.sroa.048.0268 = phi i64 [ 0, %.lr.ph269 ], [ %i.as, %._crit_edge265 ] ; 9 uses
  %i.as = add nuw nsw i64 %.sroa.048.0268, 1
  %i.at = tail call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef %10)
  br i1 %i.at, label %._crit_edge270, label %.lr.ph248.preheader

.lr.ph248.preheader:                              ; preds = %bb.i
  %11 = sub nsw i64 0, %.sroa.048.0268            ; 6 uses
  br label %.lr.ph248

.lr.ph248:                                        ; preds = %.lr.ph248.preheader, %bb.bj
  %.sroa.7.0247 = phi i64 [ %.sroa.7.1, %bb.bj ], [ %.sroa.048.0268, %.lr.ph248.preheader ] ; 2 uses
  %not..sroa.14163.0246 = phi i64 [ 1, %bb.bj ], [ 0, %.lr.ph248.preheader ]
  %i.au = sub i64 %.sroa.7.0247, %not..sroa.14163.0246 ; 12 uses
  %.not.i.not.i = icmp sgt i64 %i.au, %.sroa.7.0247
  br i1 %.not.i.not.i, label %.lr.ph264.preheader, label %bb.j

bb.j:                                             ; preds = %.lr.ph248
  %i.av = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.au, i64 %11)
  switch i8 %i.av, label %bb.k [
    i8 -1, label %.lr.ph264.preheader
    i8 0, label %bb.m
    i8 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aw = add i64 %i.au, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.11.1 = phi i1 [ true, %bb.j ], [ false, %bb.l ]
  %.sroa.7.1 = phi i64 [ %i.au, %bb.j ], [ %i.aw, %bb.l ] ; 2 uses
  %i.ax = icmp eq i64 %i.au, %11
  br i1 %i.ax, label %._crit_edge316, label %bb.aq

._crit_edge316:                                   ; preds = %bb.m
  %.pre321 = add i64 %i.i, %i.au
  br label %._crit_edge316.a

.lr.ph264:                                        ; preds = %.lr.ph264.preheader, %bb.al
  %not..sroa.17172.0262 = phi i64 [ 1, %bb.al ], [ 0, %.lr.ph264.preheader ]
  %.sroa.7171.0261 = phi i64 [ %.sroa.7171.1, %bb.al ], [ %.sroa.048.0268, %.lr.ph264.preheader ] ; 2 uses
  %i.ay = sub i64 %.sroa.7171.0261, %not..sroa.17172.0262 ; 12 uses
  %.not.i.not.i144 = icmp sgt i64 %i.ay, %.sroa.7171.0261
  br i1 %.not.i.not.i144, label %._crit_edge265, label %bb.n

bb.n:                                             ; preds = %.lr.ph264
  %i.az = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.ay, i64 %11)
  switch i8 %i.az, label %bb.o [
    i8 -1, label %._crit_edge265
    i8 0, label %bb.q
    i8 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ba = add i64 %i.ay, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.sroa.7171.1 = phi i64 [ %i.ay, %bb.n ], [ %i.ba, %bb.p ] ; 2 uses
  %.sroa.12.1 = phi i1 [ true, %bb.n ], [ false, %bb.p ]
  %i.bb = icmp eq i64 %i.ay, %11
  br i1 %i.bb, label %._crit_edge318, label %bb.r

._crit_edge318:                                   ; preds = %bb.q
  %.pre = add i64 %i.r, %i.ay
  br label %._crit_edge318.a

._crit_edge265:                                   ; preds = %bb.al, %bb.n, %.lr.ph264
  %exitcond314.not = icmp eq i64 %.sroa.048.0268, %.sroa.047.0
  br i1 %exitcond314.not, label %._crit_edge270, label %bb.i

bb.r:                                             ; preds = %bb.q
  %.not130 = icmp eq i64 %i.ay, %.sroa.048.0268
  %.pre319 = add i64 %i.ap, %i.ay                 ; 6 uses
  br i1 %.not130, label %._crit_edge317, label %bb.s

._crit_edge318.a:                                 ; preds = %._crit_edge318, %bb.v
  %.pre-phi = phi i64 [ %.pre, %._crit_edge318 ], [ %i.bf, %bb.v ] ; 3 uses
  %i.bc = icmp ult i64 %.pre-phi, %i.t
  br i1 %i.bc, label %bb.aa, label %bb.ab

._crit_edge317:                                   ; preds = %bb.r, %bb.v
  %i.bd = icmp ult i64 %.pre319, %i.t
  br i1 %i.bd, label %bb.x, label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.be = icmp ult i64 %.pre319, %i.t
  br i1 %i.be, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bf = add i64 %i.r, %i.ay                     ; 4 uses
  %i.bg = icmp ult i64 %i.bf, %i.t
  br i1 %i.bg, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #28
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre319
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !4
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bf
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !4
  %i.bl = icmp ult i64 %i.bi, %i.bk
  br i1 %i.bl, label %._crit_edge318.a, label %._crit_edge317

bb.w:                                             ; preds = %bb.t
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bf, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #28
  unreachable

bb.x:                                             ; preds = %._crit_edge317
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre319
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !4
  %i.bo = add i64 %i.bn, 1
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge317
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #28
  unreachable

bb.z:                                             ; preds = %bb.aa, %bb.x
  %.sroa.014.0 = phi i64 [ %i.bt, %bb.aa ], [ %i.bo, %bb.x ] ; 5 uses
  %i.bp = sub i64 %.sroa.014.0, %i.ay             ; 4 uses
  %i.bq = icmp ult i64 %.sroa.014.0, %.sroa.025.0
  %i.br = icmp ult i64 %i.bp, %.sroa.037.0
  %or.cond = and i1 %i.bq, %i.br
  br i1 %or.cond, label %bb.ad, label %bb.ac

bb.aa:                                            ; preds = %._crit_edge318.a
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre-phi
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !4
  br label %bb.z

bb.ab:                                            ; preds = %._crit_edge318.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28
  unreachable

bb.ac:                                            ; preds = %bb.z, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.020.0 = phi i64 [ %i.ci, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %i.bp, %bb.z ]
  %.sroa.014.1 = phi i64 [ %i.ch, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.014.0, %bb.z ] ; 3 uses
  %i.bu = add i64 %i.ay, %i.q                     ; 3 uses
  %i.bv = icmp ult i64 %i.bu, %i.t
  br i1 %i.bv, label %bb.ai, label %bb.aj

bb.ad:                                            ; preds = %bb.z
  %i.bw = sub i64 %i.aq, %.sroa.014.0             ; 2 uses
  %i.bx = sub i64 %i.ar, %i.bp                    ; 2 uses
  %i.by = sub i64 %i.bw, %2
  %i.bz = sub i64 %i.bx, %5
  %.sroa.0.0.i148 = tail call noundef i64 @llvm.umin.i64(i64 %i.bz, i64 %i.by) ; 3 uses
  %.not273 = icmp eq i64 %.sroa.0.0.i148, 0
  br i1 %.not273, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph253

.lr.ph253:                                        ; preds = %bb.ad
  %invariant.op256 = sub i64 %i.bx, %i.ae
  %invariant.op258 = sub i64 %i.bw, %i.ak
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph253, %bb.ah
  %.sroa.0.0.i136251 = phi i64 [ 0, %.lr.ph253 ], [ %i.cg, %bb.ah ] ; 3 uses
  %i.ca = xor i64 %.sroa.0.0.i136251, -1          ; 2 uses
  %.reass257 = add i64 %invariant.op256, %i.ca    ; 3 uses
  %i.cb = icmp ult i64 %.reass257, %i.ag
  br i1 %i.cb, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit137, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.reass257, i64 noundef %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #28, !noalias !1072
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit137: ; preds = %bb.ae
  %.reass259 = add i64 %invariant.op258, %i.ca    ; 3 uses
  %i.cc = icmp ult i64 %.reass259, %i.am
  br i1 %i.cc, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit, label %bb.ag

bb.ag:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit137
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.reass259, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #28, !noalias !1075
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit137
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.reass257
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.reass259
  %.val = load i64, ptr %i.cd, align 8, !noundef !4
  %.val140 = load i64, ptr %i.ce, align 8, !noundef !4
  %i.cf = icmp eq i64 %.val, %.val140
  br i1 %i.cf, label %bb.ah, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECsEhZmuQNqkz_11ruff_linter.exit

bb.ah:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit
  %i.cg = add nuw i64 %.sroa.0.0.i136251, 1       ; 2 uses
  %exitcond313.not = icmp eq i64 %i.cg, %.sroa.0.0.i148
  br i1 %exitcond313.not, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.ae

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit, %bb.ah, %bb.ad
  %.sroa.0.0.i136.lcssa = phi i64 [ 0, %bb.ad ], [ %.sroa.0.0.i148, %bb.ah ], [ %.sroa.0.0.i136251, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit ] ; 2 uses
  %i.ch = add i64 %.sroa.0.0.i136.lcssa, %.sroa.014.0
  %i.ci = add i64 %.sroa.0.0.i136.lcssa, %i.bp
  br label %bb.ac

bb.ai:                                            ; preds = %bb.ac
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bu
  store i64 %.sroa.014.1, ptr %i.cj, align 8
  br i1 %.not, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %bb.ac
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bu, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #28
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.ck = sub i64 %i.ay, %i.e                     ; 2 uses
  %.sroa.024.0 = tail call i64 @llvm.abs.i64(i64 %i.ck, i1 false)
  %.not131 = icmp sgt i64 %.sroa.024.0, %.sroa.048.0268
  br i1 %.not131, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.an, %bb.ai
  %.not.i143 = icmp slt i64 %.sroa.7171.1, %11
  %or.cond188 = select i1 %.sroa.12.1, i1 true, i1 %.not.i143
  br i1 %or.cond188, label %._crit_edge265, label %.lr.ph264

bb.am:                                            ; preds = %bb.ak
  %i.cl = sub i64 %i.h, %i.ck                     ; 3 uses
  %i.cm = icmp ult i64 %i.cl, %i.k
  br i1 %i.cm, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cl
  %i.co = load i64, ptr %i.cn, align 8, !noundef !4
  %i.cp = add i64 %i.co, %.sroa.014.1
  %.not132 = icmp ult i64 %i.cp, %.sroa.025.0
  br i1 %.not132, label %bb.al, label %bb.ap

bb.ao:                                            ; preds = %bb.am
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cl, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #28
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.cq = sub i64 %i.aq, %.sroa.014.1
  %i.cr = sub i64 %i.ar, %.sroa.020.0
  br label %._crit_edge270.sink.split

bb.aq:                                            ; preds = %bb.m
  %.not133 = icmp eq i64 %i.au, %.sroa.048.0268
  %.pre323 = add i64 %i.ac, %i.au                 ; 6 uses
  br i1 %.not133, label %._crit_edge315, label %bb.ar

._crit_edge316.a:                                 ; preds = %._crit_edge316, %bb.au
  %.pre-phi322 = phi i64 [ %.pre321, %._crit_edge316 ], [ %i.cv, %bb.au ] ; 3 uses
  %i.cs = icmp ult i64 %.pre-phi322, %i.k
  br i1 %i.cs, label %bb.az, label %bb.ba

._crit_edge315:                                   ; preds = %bb.aq, %bb.au
  %i.ct = icmp ult i64 %.pre323, %i.k
  br i1 %i.ct, label %bb.aw, label %bb.ax

bb.ar:                                            ; preds = %bb.aq
  %i.cu = icmp ult i64 %.pre323, %i.k
  br i1 %i.cu, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.cv = add i64 %i.i, %i.au                     ; 4 uses
  %i.cw = icmp ult i64 %i.cv, %i.k
  br i1 %i.cw, label %bb.au, label %bb.av

bb.at:                                            ; preds = %bb.ar
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre323, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #28
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre323
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !4
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cv
  %i.da = load i64, ptr %i.cz, align 8, !noundef !4
  %i.db = icmp ult i64 %i.cy, %i.da
  br i1 %i.db, label %._crit_edge316.a, label %._crit_edge315

bb.av:                                            ; preds = %bb.as
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cv, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #28
  unreachable

bb.aw:                                            ; preds = %._crit_edge315
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre323
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !4
  %i.de = add i64 %i.dd, 1
  br label %bb.ay

bb.ax:                                            ; preds = %._crit_edge315
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre323, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28
  unreachable

bb.ay:                                            ; preds = %bb.az, %bb.aw
  %.sroa.04.0 = phi i64 [ %i.dk, %bb.az ], [ %i.de, %bb.aw ] ; 6 uses
  %i.df = sub i64 %.sroa.04.0, %i.au              ; 3 uses
  %i.dg = icmp ult i64 %.sroa.04.0, %i.b
  %.sroa.051.0 = select i1 %i.a, i1 %i.dg, i1 false
  %i.dh = icmp ult i64 %i.df, %i.d
  %i.di = and i1 %i.c, %.sroa.051.0
  %or.cond186 = select i1 %i.di, i1 %i.dh, i1 false
  br i1 %or.cond186, label %bb.bc, label %bb.bb

bb.az:                                            ; preds = %._crit_edge316.a
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre-phi322
  %i.dk = load i64, ptr %i.dj, align 8, !noundef !4
  br label %bb.ay

bb.ba:                                            ; preds = %._crit_edge316.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi322, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #28
  unreachable

bb.bb:                                            ; preds = %bb.ay, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.04.1 = phi i64 [ %i.dx, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.04.0, %bb.ay ] ; 2 uses
  %i.dl = add i64 %i.au, %i.h                     ; 3 uses
  %i.dm = icmp ult i64 %i.dl, %i.k
  br i1 %i.dm, label %bb.bh, label %bb.bi

bb.bc:                                            ; preds = %bb.ay
  %i.dn = add i64 %.sroa.04.0, %2                 ; 2 uses
  %i.do = add i64 %i.df, %5                       ; 2 uses
  %i.dp = sub i64 %3, %i.dn
  %i.dq = sub i64 %6, %i.do
  %.sroa.0.0.i149 = tail call noundef i64 @llvm.umin.i64(i64 %i.dq, i64 %i.dp) ; 3 uses
  %.not272 = icmp eq i64 %.sroa.0.0.i149, 0
  br i1 %.not272, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bc
  %invariant.op = sub i64 %i.do, %i.ae            ; 2 uses
  %invariant.op243 = sub i64 %i.dn, %i.ak         ; 2 uses
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph, %bb.bg
  %.sroa.0.0.i241 = phi i64 [ 0, %.lr.ph ], [ %i.dw, %bb.bg ] ; 4 uses
  %.reass = add nuw i64 %.sroa.0.0.i241, %invariant.op ; 2 uses
  %i.dr = icmp ult i64 %.reass, %i.ag
  br i1 %i.dr, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit139, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %invariant.op)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #28, !noalias !1078
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit139: ; preds = %bb.bd
  %.reass244 = add nuw i64 %.sroa.0.0.i241, %invariant.op243 ; 2 uses
  %i.ds = icmp ult i64 %.reass244, %i.am
  br i1 %i.ds, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit138, label %bb.bf

bb.bf:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit139
  %umax312 = tail call i64 @llvm.umax.i64(i64 %i.am, i64 %invariant.op243)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax312, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #28, !noalias !1081
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit138: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit139
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.reass
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.reass244
  %.val141 = load i64, ptr %i.dt, align 8, !noundef !4
  %.val142 = load i64, ptr %i.du, align 8, !noundef !4
  %i.dv = icmp eq i64 %.val141, %.val142
  br i1 %i.dv, label %bb.bg, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECsEhZmuQNqkz_11ruff_linter.exit

bb.bg:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit138
  %i.dw = add nuw i64 %.sroa.0.0.i241, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.dw, %.sroa.0.0.i149
  br i1 %exitcond.not, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.bd

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit138, %bb.bg, %bb.bc
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %bb.bc ], [ %.sroa.0.0.i149, %bb.bg ], [ %.sroa.0.0.i241, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit138 ]
  %i.dx = add i64 %.sroa.0.0.i.lcssa, %.sroa.04.0
  br label %bb.bb

bb.bh:                                            ; preds = %bb.bb
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dl
  store i64 %.sroa.04.1, ptr %i.dy, align 8
  br i1 %.not, label %bb.bj, label %bb.bk

bb.bi:                                            ; preds = %bb.bb
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.dl, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #28
  unreachable

bb.bj:                                            ; preds = %bb.bk, %bb.bm, %bb.bh
  %.not.i = icmp slt i64 %.sroa.7.1, %11
  %or.cond187 = select i1 %.sroa.11.1, i1 true, i1 %.not.i
  br i1 %or.cond187, label %.lr.ph264.preheader, label %.lr.ph248

.lr.ph264.preheader:                              ; preds = %.lr.ph248, %bb.j, %bb.bj
  br label %.lr.ph264

bb.bk:                                            ; preds = %bb.bh
  %i.dz = sub i64 %i.au, %i.e                     ; 2 uses
  %.sroa.010.0 = tail call i64 @llvm.abs.i64(i64 %i.dz, i1 false)
  %.not134.not = icmp slt i64 %.sroa.010.0, %.sroa.048.0268
  br i1 %.not134.not, label %bb.bl, label %bb.bj

bb.bl:                                            ; preds = %bb.bk
  %i.ea = sub i64 %i.q, %i.dz                     ; 3 uses
  %i.eb = icmp ult i64 %i.ea, %i.t
  br i1 %i.eb, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ea
  %i.ed = load i64, ptr %i.ec, align 8, !noundef !4
  %i.ee = add i64 %i.ed, %.sroa.04.1
  %.not135 = icmp ult i64 %i.ee, %.sroa.025.0
  br i1 %.not135, label %bb.bj, label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ea, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #28
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.ef = add i64 %.sroa.04.0, %2
  %i.eg = add i64 %i.df, %5
  br label %._crit_edge270.sink.split

._crit_edge270.sink.split:                        ; preds = %bb.bo, %bb.ap
  %.sink398 = phi i64 [ %i.cq, %bb.ap ], [ %i.ef, %bb.bo ]
  %.sink396 = phi i64 [ %i.cr, %bb.ap ], [ %i.eg, %bb.bo ]
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink398, ptr %i.eh, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink396, ptr %i.ei, align 8
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
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 4 uses
  %i.i = add i64 %i.h, 1                          ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 16 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !4 ; 4 uses
  %i.r = add i64 %i.q, 1                          ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !4 ; 16 uses
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  store i64 0, ptr %i.x, align 8
  %i.y = add i64 %.sroa.037.0, %.sroa.025.0       ; 2 uses
  %i.z = lshr i64 %i.y, 1
  %.sroa.047.0 = sub i64 %i.y, %i.z               ; 3 uses
  %i.aa = icmp ult i64 %i.k, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aa)
  %.not128.not = icmp ugt i64 %i.k, %.sroa.047.0
  br i1 %.not128.not, label %bb.g, label %bb.f, !prof !33

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
  br i1 %.not129.not, label %.lr.ph269, label %bb.h, !prof !33

.lr.ph269:                                        ; preds = %bb.g
  %i.ac = add i64 %i.h, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load i64, ptr %i.af, align 8            ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load i64, ptr %i.al, align 8            ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !4 ; 2 uses
  %i.ap = add i64 %i.q, -1
  %i.aq = add i64 %.sroa.025.0, %2                ; 2 uses
  %i.ar = add i64 %.sroa.037.0, %5                ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #28
  unreachable

bb.i:                                             ; preds = %.lr.ph269, %._crit_edge265
  %.sroa.048.0268 = phi i64 [ 0, %.lr.ph269 ], [ %i.as, %._crit_edge265 ] ; 9 uses
  %i.as = add nuw nsw i64 %.sroa.048.0268, 1
  %i.at = tail call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef %10)
  br i1 %i.at, label %._crit_edge270, label %.lr.ph248.preheader

.lr.ph248.preheader:                              ; preds = %bb.i
  %11 = sub nsw i64 0, %.sroa.048.0268            ; 6 uses
  br label %.lr.ph248

.lr.ph248:                                        ; preds = %.lr.ph248.preheader, %bb.bj
  %.sroa.7.0247 = phi i64 [ %.sroa.7.1, %bb.bj ], [ %.sroa.048.0268, %.lr.ph248.preheader ] ; 2 uses
  %not..sroa.14163.0246 = phi i64 [ 1, %bb.bj ], [ 0, %.lr.ph248.preheader ]
  %i.au = sub i64 %.sroa.7.0247, %not..sroa.14163.0246 ; 12 uses
  %.not.i.not.i = icmp sgt i64 %i.au, %.sroa.7.0247
  br i1 %.not.i.not.i, label %.lr.ph264.preheader, label %bb.j

bb.j:                                             ; preds = %.lr.ph248
  %i.av = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.au, i64 %11)
  switch i8 %i.av, label %bb.k [
    i8 -1, label %.lr.ph264.preheader
    i8 0, label %bb.m
    i8 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aw = add i64 %i.au, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.11.1 = phi i1 [ true, %bb.j ], [ false, %bb.l ]
  %.sroa.7.1 = phi i64 [ %i.au, %bb.j ], [ %i.aw, %bb.l ] ; 2 uses
  %i.ax = icmp eq i64 %i.au, %11
  br i1 %i.ax, label %._crit_edge316, label %bb.aq

._crit_edge316:                                   ; preds = %bb.m
  %.pre321 = add i64 %i.i, %i.au
  br label %._crit_edge316.a

.lr.ph264:                                        ; preds = %.lr.ph264.preheader, %bb.al
  %not..sroa.17172.0262 = phi i64 [ 1, %bb.al ], [ 0, %.lr.ph264.preheader ]
  %.sroa.7171.0261 = phi i64 [ %.sroa.7171.1, %bb.al ], [ %.sroa.048.0268, %.lr.ph264.preheader ] ; 2 uses
  %i.ay = sub i64 %.sroa.7171.0261, %not..sroa.17172.0262 ; 12 uses
  %.not.i.not.i144 = icmp sgt i64 %i.ay, %.sroa.7171.0261
  br i1 %.not.i.not.i144, label %._crit_edge265, label %bb.n

bb.n:                                             ; preds = %.lr.ph264
  %i.az = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.ay, i64 %11)
  switch i8 %i.az, label %bb.o [
    i8 -1, label %._crit_edge265
    i8 0, label %bb.q
    i8 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ba = add i64 %i.ay, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.sroa.7171.1 = phi i64 [ %i.ay, %bb.n ], [ %i.ba, %bb.p ] ; 2 uses
  %.sroa.12.1 = phi i1 [ true, %bb.n ], [ false, %bb.p ]
  %i.bb = icmp eq i64 %i.ay, %11
  br i1 %i.bb, label %._crit_edge318, label %bb.r

._crit_edge318:                                   ; preds = %bb.q
  %.pre = add i64 %i.r, %i.ay
  br label %._crit_edge318.a

._crit_edge265:                                   ; preds = %bb.al, %bb.n, %.lr.ph264
  %exitcond314.not = icmp eq i64 %.sroa.048.0268, %.sroa.047.0
  br i1 %exitcond314.not, label %._crit_edge270, label %bb.i

bb.r:                                             ; preds = %bb.q
  %.not130 = icmp eq i64 %i.ay, %.sroa.048.0268
  %.pre319 = add i64 %i.ap, %i.ay                 ; 6 uses
  br i1 %.not130, label %._crit_edge317, label %bb.s

._crit_edge318.a:                                 ; preds = %._crit_edge318, %bb.v
  %.pre-phi = phi i64 [ %.pre, %._crit_edge318 ], [ %i.bf, %bb.v ] ; 3 uses
  %i.bc = icmp ult i64 %.pre-phi, %i.t
  br i1 %i.bc, label %bb.aa, label %bb.ab

._crit_edge317:                                   ; preds = %bb.r, %bb.v
  %i.bd = icmp ult i64 %.pre319, %i.t
  br i1 %i.bd, label %bb.x, label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.be = icmp ult i64 %.pre319, %i.t
  br i1 %i.be, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bf = add i64 %i.r, %i.ay                     ; 4 uses
  %i.bg = icmp ult i64 %i.bf, %i.t
  br i1 %i.bg, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #28
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre319
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !4
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bf
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !4
  %i.bl = icmp ult i64 %i.bi, %i.bk
  br i1 %i.bl, label %._crit_edge318.a, label %._crit_edge317

bb.w:                                             ; preds = %bb.t
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bf, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #28
  unreachable

bb.x:                                             ; preds = %._crit_edge317
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre319
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !4
  %i.bo = add i64 %i.bn, 1
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge317
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #28
  unreachable

bb.z:                                             ; preds = %bb.aa, %bb.x
  %.sroa.014.0 = phi i64 [ %i.bt, %bb.aa ], [ %i.bo, %bb.x ] ; 5 uses
  %i.bp = sub i64 %.sroa.014.0, %i.ay             ; 4 uses
  %i.bq = icmp ult i64 %.sroa.014.0, %.sroa.025.0
  %i.br = icmp ult i64 %i.bp, %.sroa.037.0
  %or.cond = and i1 %i.bq, %i.br
  br i1 %or.cond, label %bb.ad, label %bb.ac

bb.aa:                                            ; preds = %._crit_edge318.a
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre-phi
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !4
  br label %bb.z

bb.ab:                                            ; preds = %._crit_edge318.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28
  unreachable

bb.ac:                                            ; preds = %bb.z, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.020.0 = phi i64 [ %i.ci, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %i.bp, %bb.z ]
  %.sroa.014.1 = phi i64 [ %i.ch, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.014.0, %bb.z ] ; 3 uses
  %i.bu = add i64 %i.ay, %i.q                     ; 3 uses
  %i.bv = icmp ult i64 %i.bu, %i.t
  br i1 %i.bv, label %bb.ai, label %bb.aj

bb.ad:                                            ; preds = %bb.z
  %i.bw = sub i64 %i.aq, %.sroa.014.0             ; 2 uses
  %i.bx = sub i64 %i.ar, %i.bp                    ; 2 uses
  %i.by = sub i64 %i.bw, %2
  %i.bz = sub i64 %i.bx, %5
  %.sroa.0.0.i148 = tail call noundef i64 @llvm.umin.i64(i64 %i.bz, i64 %i.by) ; 3 uses
  %.not273 = icmp eq i64 %.sroa.0.0.i148, 0
  br i1 %.not273, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph253

.lr.ph253:                                        ; preds = %bb.ad
  %invariant.op256 = sub i64 %i.bx, %i.ae
  %invariant.op258 = sub i64 %i.bw, %i.ak
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph253, %bb.ah
  %.sroa.0.0.i136251 = phi i64 [ 0, %.lr.ph253 ], [ %i.cg, %bb.ah ] ; 3 uses
  %i.ca = xor i64 %.sroa.0.0.i136251, -1          ; 2 uses
  %.reass257 = add i64 %invariant.op256, %i.ca    ; 3 uses
  %i.cb = icmp ult i64 %.reass257, %i.ag
  br i1 %i.cb, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit137, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.reass257, i64 noundef %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #28, !noalias !1084
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit137: ; preds = %bb.ae
  %.reass259 = add i64 %invariant.op258, %i.ca    ; 3 uses
  %i.cc = icmp ult i64 %.reass259, %i.am
  br i1 %i.cc, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit, label %bb.ag

bb.ag:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit137
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.reass259, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #28, !noalias !1087
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit137
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.reass257
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.reass259
  %.val = load i32, ptr %i.cd, align 4, !noundef !4
  %.val140 = load i32, ptr %i.ce, align 4, !noundef !4
  %i.cf = icmp eq i32 %.val, %.val140
  br i1 %i.cf, label %bb.ah, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECsEhZmuQNqkz_11ruff_linter.exit

bb.ah:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit
  %i.cg = add nuw i64 %.sroa.0.0.i136251, 1       ; 2 uses
  %exitcond313.not = icmp eq i64 %i.cg, %.sroa.0.0.i148
  br i1 %exitcond313.not, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.ae

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit, %bb.ah, %bb.ad
  %.sroa.0.0.i136.lcssa = phi i64 [ 0, %bb.ad ], [ %.sroa.0.0.i148, %bb.ah ], [ %.sroa.0.0.i136251, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit ] ; 2 uses
  %i.ch = add i64 %.sroa.0.0.i136.lcssa, %.sroa.014.0
  %i.ci = add i64 %.sroa.0.0.i136.lcssa, %i.bp
  br label %bb.ac

bb.ai:                                            ; preds = %bb.ac
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bu
  store i64 %.sroa.014.1, ptr %i.cj, align 8
  br i1 %.not, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %bb.ac
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bu, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #28
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.ck = sub i64 %i.ay, %i.e                     ; 2 uses
  %.sroa.024.0 = tail call i64 @llvm.abs.i64(i64 %i.ck, i1 false)
  %.not131 = icmp sgt i64 %.sroa.024.0, %.sroa.048.0268
  br i1 %.not131, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.an, %bb.ai
  %.not.i143 = icmp slt i64 %.sroa.7171.1, %11
  %or.cond188 = select i1 %.sroa.12.1, i1 true, i1 %.not.i143
  br i1 %or.cond188, label %._crit_edge265, label %.lr.ph264

bb.am:                                            ; preds = %bb.ak
  %i.cl = sub i64 %i.h, %i.ck                     ; 3 uses
  %i.cm = icmp ult i64 %i.cl, %i.k
  br i1 %i.cm, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cl
  %i.co = load i64, ptr %i.cn, align 8, !noundef !4
  %i.cp = add i64 %i.co, %.sroa.014.1
  %.not132 = icmp ult i64 %i.cp, %.sroa.025.0
  br i1 %.not132, label %bb.al, label %bb.ap

bb.ao:                                            ; preds = %bb.am
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cl, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #28
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.cq = sub i64 %i.aq, %.sroa.014.1
  %i.cr = sub i64 %i.ar, %.sroa.020.0
  br label %._crit_edge270.sink.split

bb.aq:                                            ; preds = %bb.m
  %.not133 = icmp eq i64 %i.au, %.sroa.048.0268
  %.pre323 = add i64 %i.ac, %i.au                 ; 6 uses
  br i1 %.not133, label %._crit_edge315, label %bb.ar

._crit_edge316.a:                                 ; preds = %._crit_edge316, %bb.au
  %.pre-phi322 = phi i64 [ %.pre321, %._crit_edge316 ], [ %i.cv, %bb.au ] ; 3 uses
  %i.cs = icmp ult i64 %.pre-phi322, %i.k
  br i1 %i.cs, label %bb.az, label %bb.ba

._crit_edge315:                                   ; preds = %bb.aq, %bb.au
  %i.ct = icmp ult i64 %.pre323, %i.k
  br i1 %i.ct, label %bb.aw, label %bb.ax

bb.ar:                                            ; preds = %bb.aq
  %i.cu = icmp ult i64 %.pre323, %i.k
  br i1 %i.cu, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.cv = add i64 %i.i, %i.au                     ; 4 uses
  %i.cw = icmp ult i64 %i.cv, %i.k
  br i1 %i.cw, label %bb.au, label %bb.av

bb.at:                                            ; preds = %bb.ar
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre323, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #28
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre323
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !4
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cv
  %i.da = load i64, ptr %i.cz, align 8, !noundef !4
  %i.db = icmp ult i64 %i.cy, %i.da
  br i1 %i.db, label %._crit_edge316.a, label %._crit_edge315

bb.av:                                            ; preds = %bb.as
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cv, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #28
  unreachable

bb.aw:                                            ; preds = %._crit_edge315
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre323
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !4
  %i.de = add i64 %i.dd, 1
  br label %bb.ay

bb.ax:                                            ; preds = %._crit_edge315
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre323, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28
  unreachable

bb.ay:                                            ; preds = %bb.az, %bb.aw
  %.sroa.04.0 = phi i64 [ %i.dk, %bb.az ], [ %i.de, %bb.aw ] ; 6 uses
  %i.df = sub i64 %.sroa.04.0, %i.au              ; 3 uses
  %i.dg = icmp ult i64 %.sroa.04.0, %i.b
  %.sroa.051.0 = select i1 %i.a, i1 %i.dg, i1 false
  %i.dh = icmp ult i64 %i.df, %i.d
  %i.di = and i1 %i.c, %.sroa.051.0
  %or.cond186 = select i1 %i.di, i1 %i.dh, i1 false
  br i1 %or.cond186, label %bb.bc, label %bb.bb

bb.az:                                            ; preds = %._crit_edge316.a
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre-phi322
  %i.dk = load i64, ptr %i.dj, align 8, !noundef !4
  br label %bb.ay

bb.ba:                                            ; preds = %._crit_edge316.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi322, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #28
  unreachable

bb.bb:                                            ; preds = %bb.ay, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.04.1 = phi i64 [ %i.dx, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.04.0, %bb.ay ] ; 2 uses
  %i.dl = add i64 %i.au, %i.h                     ; 3 uses
  %i.dm = icmp ult i64 %i.dl, %i.k
  br i1 %i.dm, label %bb.bh, label %bb.bi

bb.bc:                                            ; preds = %bb.ay
  %i.dn = add i64 %.sroa.04.0, %2                 ; 2 uses
  %i.do = add i64 %i.df, %5                       ; 2 uses
  %i.dp = sub i64 %3, %i.dn
  %i.dq = sub i64 %6, %i.do
  %.sroa.0.0.i149 = tail call noundef i64 @llvm.umin.i64(i64 %i.dq, i64 %i.dp) ; 3 uses
  %.not272 = icmp eq i64 %.sroa.0.0.i149, 0
  br i1 %.not272, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bc
  %invariant.op = sub i64 %i.do, %i.ae            ; 2 uses
  %invariant.op243 = sub i64 %i.dn, %i.ak         ; 2 uses
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph, %bb.bg
  %.sroa.0.0.i241 = phi i64 [ 0, %.lr.ph ], [ %i.dw, %bb.bg ] ; 4 uses
  %.reass = add nuw i64 %.sroa.0.0.i241, %invariant.op ; 2 uses
  %i.dr = icmp ult i64 %.reass, %i.ag
  br i1 %i.dr, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit139, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %invariant.op)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #28, !noalias !1090
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit139: ; preds = %bb.bd
  %.reass244 = add nuw i64 %.sroa.0.0.i241, %invariant.op243 ; 2 uses
  %i.ds = icmp ult i64 %.reass244, %i.am
  br i1 %i.ds, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit138, label %bb.bf

bb.bf:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit139
  %umax312 = tail call i64 @llvm.umax.i64(i64 %i.am, i64 %invariant.op243)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax312, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #28, !noalias !1093
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit138: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit139
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.reass
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.reass244
  %.val141 = load i32, ptr %i.dt, align 4, !noundef !4
  %.val142 = load i32, ptr %i.du, align 4, !noundef !4
  %i.dv = icmp eq i32 %.val141, %.val142
  br i1 %i.dv, label %bb.bg, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECsEhZmuQNqkz_11ruff_linter.exit

bb.bg:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit138
  %i.dw = add nuw i64 %.sroa.0.0.i241, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.dw, %.sroa.0.0.i149
  br i1 %exitcond.not, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.bd

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit138, %bb.bg, %bb.bc
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %bb.bc ], [ %.sroa.0.0.i149, %bb.bg ], [ %.sroa.0.0.i241, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit138 ]
  %i.dx = add i64 %.sroa.0.0.i.lcssa, %.sroa.04.0
  br label %bb.bb

bb.bh:                                            ; preds = %bb.bb
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dl
  store i64 %.sroa.04.1, ptr %i.dy, align 8
  br i1 %.not, label %bb.bj, label %bb.bk

bb.bi:                                            ; preds = %bb.bb
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.dl, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #28
  unreachable

bb.bj:                                            ; preds = %bb.bk, %bb.bm, %bb.bh
  %.not.i = icmp slt i64 %.sroa.7.1, %11
  %or.cond187 = select i1 %.sroa.11.1, i1 true, i1 %.not.i
  br i1 %or.cond187, label %.lr.ph264.preheader, label %.lr.ph248

.lr.ph264.preheader:                              ; preds = %.lr.ph248, %bb.j, %bb.bj
  br label %.lr.ph264

bb.bk:                                            ; preds = %bb.bh
  %i.dz = sub i64 %i.au, %i.e                     ; 2 uses
  %.sroa.010.0 = tail call i64 @llvm.abs.i64(i64 %i.dz, i1 false)
  %.not134.not = icmp slt i64 %.sroa.010.0, %.sroa.048.0268
  br i1 %.not134.not, label %bb.bl, label %bb.bj

bb.bl:                                            ; preds = %bb.bk
  %i.ea = sub i64 %i.q, %i.dz                     ; 3 uses
  %i.eb = icmp ult i64 %i.ea, %i.t
  br i1 %i.eb, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ea
  %i.ed = load i64, ptr %i.ec, align 8, !noundef !4
  %i.ee = add i64 %i.ed, %.sroa.04.1
  %.not135 = icmp ult i64 %i.ee, %.sroa.025.0
  br i1 %.not135, label %bb.bj, label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ea, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #28
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.ef = add i64 %.sroa.04.0, %2
  %i.eg = add i64 %i.df, %5
  br label %._crit_edge270.sink.split

._crit_edge270.sink.split:                        ; preds = %bb.bo, %bb.ap
  %.sink398 = phi i64 [ %i.cq, %bb.ap ], [ %i.ef, %bb.bo ]
  %.sink396 = phi i64 [ %i.cr, %bb.ap ], [ %i.eg, %bb.bo ]
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink398, ptr %i.eh, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink396, ptr %i.ei, align 8
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
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 4 uses
  %i.i = add i64 %i.h, 1                          ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 16 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !4 ; 4 uses
  %i.r = add i64 %i.q, 1                          ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !4 ; 16 uses
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  store i64 0, ptr %i.x, align 8
  %i.y = add i64 %.sroa.037.0, %.sroa.025.0       ; 2 uses
  %i.z = lshr i64 %i.y, 1
  %.sroa.047.0 = sub i64 %i.y, %i.z               ; 3 uses
  %i.aa = icmp ult i64 %i.k, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aa)
  %.not128.not = icmp ugt i64 %i.k, %.sroa.047.0
  br i1 %.not128.not, label %bb.g, label %bb.f, !prof !33

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
  br i1 %.not129.not, label %.lr.ph243, label %bb.h, !prof !33

.lr.ph243:                                        ; preds = %bb.g
  %i.ac = add i64 %i.h, -1
  %i.ad = add i64 %i.q, -1
  %i.ae = add i64 %.sroa.025.0, %2                ; 2 uses
  %i.af = add i64 %.sroa.037.0, %5                ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #28
  unreachable

bb.i:                                             ; preds = %.lr.ph243, %._crit_edge239
  %.sroa.048.0242 = phi i64 [ 0, %.lr.ph243 ], [ %i.ag, %._crit_edge239 ] ; 9 uses
  %i.ag = add nuw nsw i64 %.sroa.048.0242, 1
  %i.ah = tail call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef %10)
  br i1 %i.ah, label %._crit_edge244, label %.lr.ph224.preheader

.lr.ph224.preheader:                              ; preds = %bb.i
  %11 = sub nsw i64 0, %.sroa.048.0242            ; 6 uses
  br label %.lr.ph224

.lr.ph224:                                        ; preds = %.lr.ph224.preheader, %bb.bd
  %.sroa.7.0223 = phi i64 [ %.sroa.7.1, %bb.bd ], [ %.sroa.048.0242, %.lr.ph224.preheader ] ; 2 uses
  %not..sroa.14161.0222 = phi i64 [ 1, %bb.bd ], [ 0, %.lr.ph224.preheader ]
  %i.ai = sub i64 %.sroa.7.0223, %not..sroa.14161.0222 ; 12 uses
  %.not.i.not.i = icmp sgt i64 %i.ai, %.sroa.7.0223
  br i1 %.not.i.not.i, label %.lr.ph238.preheader, label %bb.j

bb.j:                                             ; preds = %.lr.ph224
  %i.aj = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.ai, i64 %11)
  switch i8 %i.aj, label %bb.k [
    i8 -1, label %.lr.ph238.preheader
    i8 0, label %bb.m
    i8 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ak = add i64 %i.ai, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.11.1 = phi i1 [ true, %bb.j ], [ false, %bb.l ]
  %.sroa.7.1 = phi i64 [ %i.ai, %bb.j ], [ %i.ak, %bb.l ] ; 2 uses
  %i.al = icmp eq i64 %i.ai, %11
  br i1 %i.al, label %._crit_edge279, label %bb.an

._crit_edge279:                                   ; preds = %bb.m
  %.pre284 = add i64 %i.i, %i.ai
  br label %._crit_edge279.a

.lr.ph238:                                        ; preds = %.lr.ph238.preheader, %bb.ai
  %not..sroa.17170.0236 = phi i64 [ 1, %bb.ai ], [ 0, %.lr.ph238.preheader ]
  %.sroa.7169.0235 = phi i64 [ %.sroa.7169.1, %bb.ai ], [ %.sroa.048.0242, %.lr.ph238.preheader ] ; 2 uses
  %i.am = sub i64 %.sroa.7169.0235, %not..sroa.17170.0236 ; 12 uses
  %.not.i.not.i138 = icmp sgt i64 %i.am, %.sroa.7169.0235
  br i1 %.not.i.not.i138, label %._crit_edge239, label %bb.n

bb.n:                                             ; preds = %.lr.ph238
  %i.an = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.am, i64 %11)
  switch i8 %i.an, label %bb.o [
    i8 -1, label %._crit_edge239
    i8 0, label %bb.q
    i8 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ao = add i64 %i.am, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.sroa.7169.1 = phi i64 [ %i.am, %bb.n ], [ %i.ao, %bb.p ] ; 2 uses
  %.sroa.12.1 = phi i1 [ true, %bb.n ], [ false, %bb.p ]
  %i.ap = icmp eq i64 %i.am, %11
  br i1 %i.ap, label %._crit_edge281, label %bb.r

._crit_edge281:                                   ; preds = %bb.q
  %.pre = add i64 %i.r, %i.am
  br label %._crit_edge281.a

._crit_edge239:                                   ; preds = %bb.ai, %bb.n, %.lr.ph238
  %exitcond277.not = icmp eq i64 %.sroa.048.0242, %.sroa.047.0
  br i1 %exitcond277.not, label %._crit_edge244, label %bb.i

bb.r:                                             ; preds = %bb.q
  %.not130 = icmp eq i64 %i.am, %.sroa.048.0242
  %.pre282 = add i64 %i.ad, %i.am                 ; 6 uses
  br i1 %.not130, label %._crit_edge280, label %bb.s

._crit_edge281.a:                                 ; preds = %._crit_edge281, %bb.v
  %.pre-phi = phi i64 [ %.pre, %._crit_edge281 ], [ %i.at, %bb.v ] ; 3 uses
  %i.aq = icmp ult i64 %.pre-phi, %i.t
  br i1 %i.aq, label %bb.aa, label %bb.ab

._crit_edge280:                                   ; preds = %bb.r, %bb.v
  %i.ar = icmp ult i64 %.pre282, %i.t
  br i1 %i.ar, label %bb.x, label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.as = icmp ult i64 %.pre282, %i.t
  br i1 %i.as, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.at = add i64 %i.r, %i.am                     ; 4 uses
  %i.au = icmp ult i64 %i.at, %i.t
  br i1 %i.au, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre282, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #28
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre282
  %i.aw = load i64, ptr %i.av, align 8, !noundef !4
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.at
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !4
  %i.az = icmp ult i64 %i.aw, %i.ay
  br i1 %i.az, label %._crit_edge281.a, label %._crit_edge280

bb.w:                                             ; preds = %bb.t
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.at, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #28
  unreachable

bb.x:                                             ; preds = %._crit_edge280
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre282
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !4
  %i.bc = add i64 %i.bb, 1
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge280
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre282, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #28
  unreachable

bb.z:                                             ; preds = %bb.aa, %bb.x
  %.sroa.014.0 = phi i64 [ %i.bh, %bb.aa ], [ %i.bc, %bb.x ] ; 5 uses
  %i.bd = sub i64 %.sroa.014.0, %i.am             ; 4 uses
  %i.be = icmp ult i64 %.sroa.014.0, %.sroa.025.0
  %i.bf = icmp ult i64 %i.bd, %.sroa.037.0
  %or.cond = and i1 %i.be, %i.bf
  br i1 %or.cond, label %bb.ad, label %bb.ac

bb.aa:                                            ; preds = %._crit_edge281.a
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre-phi
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !4
  br label %bb.z

bb.ab:                                            ; preds = %._crit_edge281.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28
  unreachable

bb.ac:                                            ; preds = %bb.z, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.020.0 = phi i64 [ %i.cb, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %i.bd, %bb.z ]
  %.sroa.014.1 = phi i64 [ %i.ca, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.014.0, %bb.z ] ; 3 uses
  %i.bi = add i64 %i.am, %i.q                     ; 3 uses
  %i.bj = icmp ult i64 %i.bi, %i.t
  br i1 %i.bj, label %bb.af, label %bb.ag

bb.ad:                                            ; preds = %bb.z
  %i.bk = sub i64 %i.ae, %.sroa.014.0             ; 2 uses
  %i.bl = sub i64 %i.af, %i.bd                    ; 2 uses
  %i.bm = sub i64 %i.bk, %2
  %i.bn = sub i64 %i.bl, %5
  %.sroa.0.0.i142 = tail call noundef i64 @llvm.umin.i64(i64 %i.bn, i64 %i.bm) ; 3 uses
  %.not247 = icmp eq i64 %.sroa.0.0.i142, 0
  br i1 %.not247, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph229

.lr.ph229:                                        ; preds = %bb.ad, %bb.ae
  %.sroa.0.0.i136227 = phi i64 [ %i.bz, %bb.ae ], [ 0, %bb.ad ] ; 4 uses
  %i.bo = xor i64 %.sroa.0.0.i136227, -1          ; 2 uses
  %i.bp = add i64 %i.bl, %i.bo
  %i.bq = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.bp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) ; 2 uses
  %i.br = extractvalue { ptr, i64 } %i.bq, 1      ; 2 uses
  %i.bs = add i64 %i.bk, %i.bo
  %i.bt = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) ; 2 uses
  %i.bu = extractvalue { ptr, i64 } %i.bt, 1
  %i.bv = icmp eq i64 %i.br, %i.bu
  br i1 %i.bv, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECsEhZmuQNqkz_11ruff_linter.exit

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %.lr.ph229
  %i.bw = extractvalue { ptr, i64 } %i.bt, 0
  %i.bx = extractvalue { ptr, i64 } %i.bq, 0
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %i.bx, ptr nonnull readonly %i.bw, i64 %i.br), !alias.scope !1096
  %i.by = icmp eq i32 %bcmp.i, 0
  br i1 %i.by, label %bb.ae, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECsEhZmuQNqkz_11ruff_linter.exit

bb.ae:                                            ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit
  %i.bz = add nuw i64 %.sroa.0.0.i136227, 1       ; 2 uses
  %exitcond276.not = icmp eq i64 %i.bz, %.sroa.0.0.i142
  br i1 %exitcond276.not, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph229

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, %bb.ae, %.lr.ph229, %bb.ad
  %.sroa.0.0.i136.lcssa = phi i64 [ 0, %bb.ad ], [ %.sroa.0.0.i136227, %.lr.ph229 ], [ %.sroa.0.0.i142, %bb.ae ], [ %.sroa.0.0.i136227, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit ] ; 2 uses
  %i.ca = add i64 %.sroa.0.0.i136.lcssa, %.sroa.014.0
  %i.cb = add i64 %.sroa.0.0.i136.lcssa, %i.bd
  br label %bb.ac

bb.af:                                            ; preds = %bb.ac
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bi
  store i64 %.sroa.014.1, ptr %i.cc, align 8
  br i1 %.not, label %bb.ah, label %bb.ai

bb.ag:                                            ; preds = %bb.ac
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bi, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #28
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.cd = sub i64 %i.am, %i.e                     ; 2 uses
  %.sroa.024.0 = tail call i64 @llvm.abs.i64(i64 %i.cd, i1 false)
  %.not131 = icmp sgt i64 %.sroa.024.0, %.sroa.048.0242
  br i1 %.not131, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ak, %bb.af
  %.not.i137 = icmp slt i64 %.sroa.7169.1, %11
  %or.cond188 = select i1 %.sroa.12.1, i1 true, i1 %.not.i137
  br i1 %or.cond188, label %._crit_edge239, label %.lr.ph238

bb.aj:                                            ; preds = %bb.ah
  %i.ce = sub i64 %i.h, %i.cd                     ; 3 uses
  %i.cf = icmp ult i64 %i.ce, %i.k
  br i1 %i.cf, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ce
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !4
  %i.ci = add i64 %i.ch, %.sroa.014.1
  %.not132 = icmp ult i64 %i.ci, %.sroa.025.0
  br i1 %.not132, label %bb.ai, label %bb.am

bb.al:                                            ; preds = %bb.aj
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ce, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #28
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.cj = sub i64 %i.ae, %.sroa.014.1
  %i.ck = sub i64 %i.af, %.sroa.020.0
  br label %._crit_edge244.sink.split

bb.an:                                            ; preds = %bb.m
  %.not133 = icmp eq i64 %i.ai, %.sroa.048.0242
  %.pre286 = add i64 %i.ac, %i.ai                 ; 6 uses
  br i1 %.not133, label %._crit_edge278, label %bb.ao

._crit_edge279.a:                                 ; preds = %._crit_edge279, %bb.ar
  %.pre-phi285 = phi i64 [ %.pre284, %._crit_edge279 ], [ %i.co, %bb.ar ] ; 3 uses
  %i.cl = icmp ult i64 %.pre-phi285, %i.k
  br i1 %i.cl, label %bb.aw, label %bb.ax

._crit_edge278:                                   ; preds = %bb.an, %bb.ar
  %i.cm = icmp ult i64 %.pre286, %i.k
  br i1 %i.cm, label %bb.at, label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.cn = icmp ult i64 %.pre286, %i.k
  br i1 %i.cn, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.co = add i64 %i.i, %i.ai                     ; 4 uses
  %i.cp = icmp ult i64 %i.co, %i.k
  br i1 %i.cp, label %bb.ar, label %bb.as

bb.aq:                                            ; preds = %bb.ao
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre286, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #28
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre286
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !4
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.co
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !4
  %i.cu = icmp ult i64 %i.cr, %i.ct
  br i1 %i.cu, label %._crit_edge279.a, label %._crit_edge278

bb.as:                                            ; preds = %bb.ap
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.co, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #28
  unreachable

bb.at:                                            ; preds = %._crit_edge278
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre286
  %i.cw = load i64, ptr %i.cv, align 8, !noundef !4
  %i.cx = add i64 %i.cw, 1
  br label %bb.av

bb.au:                                            ; preds = %._crit_edge278
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre286, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28
  unreachable

bb.av:                                            ; preds = %bb.aw, %bb.at
  %.sroa.04.0 = phi i64 [ %i.dd, %bb.aw ], [ %i.cx, %bb.at ] ; 6 uses
  %i.cy = sub i64 %.sroa.04.0, %i.ai              ; 3 uses
  %i.cz = icmp ult i64 %.sroa.04.0, %i.b
  %.sroa.051.0 = select i1 %i.a, i1 %i.cz, i1 false
  %i.da = icmp ult i64 %i.cy, %i.d
  %i.db = and i1 %i.c, %.sroa.051.0
  %or.cond186 = select i1 %i.db, i1 %i.da, i1 false
  br i1 %or.cond186, label %bb.az, label %bb.ay

bb.aw:                                            ; preds = %._crit_edge279.a
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre-phi285
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !4
  br label %bb.av

bb.ax:                                            ; preds = %._crit_edge279.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi285, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #28
  unreachable

bb.ay:                                            ; preds = %bb.av, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_ECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.04.1 = phi i64 [ %i.dv, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.04.0, %bb.av ] ; 2 uses
  %i.de = add i64 %i.ai, %i.h                     ; 3 uses
  %i.df = icmp ult i64 %i.de, %i.k
  br i1 %i.df, label %bb.bb, label %bb.bc

bb.az:                                            ; preds = %bb.av
  %i.dg = add i64 %.sroa.04.0, %2                 ; 2 uses
  %i.dh = add i64 %i.cy, %5                       ; 2 uses
  %i.di = sub i64 %3, %i.dg
  %i.dj = sub i64 %6, %i.dh
  %.sroa.0.0.i144 = tail call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 %i.di) ; 3 uses
  %.not246 = icmp eq i64 %.sroa.0.0.i144, 0
  br i1 %.not246, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_ECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.az, %bb.ba
  %.sroa.0.0.i217 = phi i64 [ %i.du, %bb.ba ], [ 0, %bb.az ] ; 5 uses
  %i.dk = add i64 %.sroa.0.0.i217, %i.dh
  %i.dl = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.dk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) ; 2 uses
  %i.dm = extractvalue { ptr, i64 } %i.dl, 1      ; 2 uses
  %i.dn = add i64 %.sroa.0.0.i217, %i.dg
  %i.do = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.dn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) ; 2 uses
  %i.dp = extractvalue { ptr, i64 } %i.do, 1
  %i.dq = icmp eq i64 %i.dm, %i.dp
  br i1 %i.dq, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit147, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_ECsEhZmuQNqkz_11ruff_linter.exit

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit147: ; preds = %.lr.ph
  %i.dr = extractvalue { ptr, i64 } %i.do, 0
  %i.ds = extractvalue { ptr, i64 } %i.dl, 0
  %bcmp.i146 = tail call i32 @bcmp(ptr nonnull readonly %i.ds, ptr nonnull readonly %i.dr, i64 %i.dm), !alias.scope !1100
  %i.dt = icmp eq i32 %bcmp.i146, 0
  br i1 %i.dt, label %bb.ba, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_ECsEhZmuQNqkz_11ruff_linter.exit

bb.ba:                                            ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit147
  %i.du = add nuw i64 %.sroa.0.0.i217, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.du, %.sroa.0.0.i144
  br i1 %exitcond.not, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_ECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit147, %bb.ba, %.lr.ph, %bb.az
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %bb.az ], [ %.sroa.0.0.i217, %.lr.ph ], [ %.sroa.0.0.i144, %bb.ba ], [ %.sroa.0.0.i217, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit147 ]
  %i.dv = add i64 %.sroa.0.0.i.lcssa, %.sroa.04.0
  br label %bb.ay

bb.bb:                                            ; preds = %bb.ay
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.de
  store i64 %.sroa.04.1, ptr %i.dw, align 8
  br i1 %.not, label %bb.bd, label %bb.be

bb.bc:                                            ; preds = %bb.ay
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.de, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #28
  unreachable

bb.bd:                                            ; preds = %bb.be, %bb.bg, %bb.bb
  %.not.i = icmp slt i64 %.sroa.7.1, %11
  %or.cond187 = select i1 %.sroa.11.1, i1 true, i1 %.not.i
  br i1 %or.cond187, label %.lr.ph238.preheader, label %.lr.ph224

.lr.ph238.preheader:                              ; preds = %.lr.ph224, %bb.j, %bb.bd
  br label %.lr.ph238

bb.be:                                            ; preds = %bb.bb
  %i.dx = sub i64 %i.ai, %i.e                     ; 2 uses
  %.sroa.010.0 = tail call i64 @llvm.abs.i64(i64 %i.dx, i1 false)
  %.not134.not = icmp slt i64 %.sroa.010.0, %.sroa.048.0242
  br i1 %.not134.not, label %bb.bf, label %bb.bd

bb.bf:                                            ; preds = %bb.be
  %i.dy = sub i64 %i.q, %i.dx                     ; 3 uses
  %i.dz = icmp ult i64 %i.dy, %i.t
  br i1 %i.dz, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.dy
  %i.eb = load i64, ptr %i.ea, align 8, !noundef !4
  %i.ec = add i64 %i.eb, %.sroa.04.1
  %.not135 = icmp ult i64 %i.ec, %.sroa.025.0
  br i1 %.not135, label %bb.bd, label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.dy, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #28
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.ed = add i64 %.sroa.04.0, %2
  %i.ee = add i64 %i.cy, %5
  br label %._crit_edge244.sink.split

._crit_edge244.sink.split:                        ; preds = %bb.bi, %bb.am
  %.sink350 = phi i64 [ %i.cj, %bb.am ], [ %i.ed, %bb.bi ]
  %.sink348 = phi i64 [ %i.ck, %bb.am ], [ %i.ee, %bb.bi ]
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink350, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink348, ptr %i.eg, align 8
  br label %._crit_edge244

._crit_edge244:                                   ; preds = %bb.i, %._crit_edge239, %._crit_edge244.sink.split
  %.sink = phi i64 [ 1, %._crit_edge244.sink.split ], [ 0, %._crit_edge239 ], [ 0, %bb.i ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupjEB14_INtNtB4_4hook12NoFinishHookQIB1D_QINtNtB4_7compact7CompactIB15_mEB2y_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.0.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2)
  %.sroa.05.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5)
  %i.c = add i64 %.sroa.05.0, %.sroa.0.0          ; 2 uses
  %i.d = lshr i64 %i.c, 1
  %.sroa.011.0 = sub i64 %i.c, %i.d
  %i.e = add nuw i64 %.sroa.011.0, 1              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtNtCsiqiOkcJdymw_7similar10algorithms5myersNtB2_1V3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, i64 noundef %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtNtCsiqiOkcJdymw_7similar10algorithms5myersNtB2_1V3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, i64 noundef %i.e)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.f, %bb.b, %bb.d
  %.pn = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.f, %bb.b ], [ %i.h, %bb.f ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(32) %i.b) #26
          to label %common.resume unwind label %bb.j

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactIBT_mEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef align 8 dereferenceable(32) %i.a, ptr noalias noundef align 8 dereferenceable(32) %i.b, i64 %7, i32 noundef %8)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(32) %i.a) #26
          to label %.body unwind label %bb.j

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsEhZmuQNqkz_11ruff_linter.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECsEhZmuQNqkz_11ruff_linter.exit19 unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECsEhZmuQNqkz_11ruff_linter.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %.body, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.h ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECsEhZmuQNqkz_11ruff_linter.exit19: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECsEhZmuQNqkz_11ruff_linter.exit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.j:                                             ; preds = %bb.d, %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupjEB14_INtNtB4_4hook12NoFinishHookQIB1D_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2y_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.0.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2)
  %.sroa.05.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5)
  %i.c = add i64 %.sroa.05.0, %.sroa.0.0          ; 2 uses
  %i.d = lshr i64 %i.c, 1
  %.sroa.011.0 = sub i64 %i.c, %i.d
  %i.e = add nuw i64 %.sroa.011.0, 1              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtNtCsiqiOkcJdymw_7similar10algorithms5myersNtB2_1V3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, i64 noundef %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtNtCsiqiOkcJdymw_7similar10algorithms5myersNtB2_1V3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, i64 noundef %i.e)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.f, %bb.b, %bb.d
  %.pn = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.f, %bb.b ], [ %i.h, %bb.f ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(32) %i.b) #26
          to label %common.resume unwind label %bb.j

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef align 8 dereferenceable(32) %i.a, ptr noalias noundef align 8 dereferenceable(32) %i.b, i64 %7, i32 noundef %8)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(32) %i.a) #26
          to label %.body unwind label %bb.j

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsEhZmuQNqkz_11ruff_linter.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECsEhZmuQNqkz_11ruff_linter.exit19 unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECsEhZmuQNqkz_11ruff_linter.exit
end_hunk_0
begin_hunk_1_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1r_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2h_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter:bb.a

.noexc.us.i277:                                   ; preds = %bb.gv
  %i.aem = load ptr, ptr %i.adu, align 8, !alias.scope !3860, !noalias !3868, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  %i.aen = load i64, ptr %i.adv, align 8, !alias.scope !3860, !noalias !3868, !noundef !4
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aem, i64 24
  %i.aep = load i64, ptr %i.aeo, align 8, !alias.scope !3869, !noalias !3872, !noundef !4
  %i.aeq = sub i64 %i.aen, %i.aep                 ; 3 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aem, i64 16
  %i.aes = load i64, ptr %i.aer, align 8, !alias.scope !3869, !noalias !3872, !noundef !4 ; 2 uses
  %i.aet = icmp ult i64 %i.aeq, %i.aes
  br i1 %i.aet, label %bb.gw, label %.invoke.i

bb.gw:                                            ; preds = %.noexc.us.i277
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aed, i64 8
  %i.aev = load ptr, ptr %i.aeu, align 8, !alias.scope !3863, !noalias !3866, !nonnull !4, !noundef !4
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %i.aev, i64 %i.aei
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aem, i64 8
  %i.aey = load ptr, ptr %i.aex, align 8, !alias.scope !3869, !noalias !3872, !nonnull !4, !noundef !4
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %i.aey, i64 %i.aeq
  %.val225.us.i278 = load i32, ptr %i.aew, align 4, !noundef !4
  %.val226.us.i279 = load i32, ptr %i.aez, align 4, !noundef !4
  %i.afa = icmp eq i32 %.val225.us.i278, %.val226.us.i279
  br i1 %i.afa, label %bb.ha, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.afb = add i64 %i.adw, %i.adr                 ; 3 uses
  %i.afc = load ptr, ptr %i.un, align 8, !noalias !3767, !nonnull !4, !noundef !4 ; 3 uses
  %i.afd = load i64, ptr %i.uo, align 8, !noalias !3767, !noundef !4 ; 5 uses
  %i.afe = icmp ult i64 %i.afb, %i.afd
  br i1 %i.afe, label %bb.gy, label %.invoke.i

bb.gy:                                            ; preds = %bb.gx
  %i.aff = add i64 %.sroa.0105.0644.us.i276, %i.adq ; 3 uses
  %i.afg = icmp ult i64 %i.aff, %i.afd
  br i1 %i.afg, label %bb.gz, label %.invoke.i

bb.gz:                                            ; preds = %bb.gy
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afc, i64 %i.afb
  %i.afi = load i8, ptr %i.afh, align 1, !noundef !4
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afc, i64 %i.aff
  %i.afk = load i8, ptr %i.afj, align 1, !noundef !4
  %.sroa.0.0.i.us.i280 = call noundef i8 @llvm.umax.i8(i8 %i.afk, i8 %i.afi)
  br label %bb.hc

bb.ha:                                            ; preds = %bb.gw
  %i.afl = add i64 %.sroa.0105.0644.us.i276, %i.adr ; 3 uses
  %i.afm = load i64, ptr %i.uo, align 8, !noalias !3767, !noundef !4 ; 3 uses
  %i.afn = icmp ult i64 %i.afl, %i.afm
  br i1 %i.afn, label %bb.hb, label %.invoke.i

bb.hb:                                            ; preds = %bb.ha
  %i.afo = load ptr, ptr %i.un, align 8, !noalias !3767, !nonnull !4, !noundef !4 ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 %i.afl
  %i.afq = load i8, ptr %i.afp, align 1, !noundef !4
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
  %i.afx = add i64 %.sroa.088.0.i147, -1          ; 2 uses
  %i.afy = and i64 %i.afx, 1023
  %i.afz = icmp eq i64 %i.afy, 0
  br i1 %i.afz, label %bb.he, label %bb.hg

bb.he:                                            ; preds = %.lr.ph.split.i272
  %i.aga = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.hf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i273

bb.hf:                                            ; preds = %bb.he
  br i1 %i.aga, label %.loopexit5.i223, label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %.lr.ph.split.i272
  %i.agb = add i64 %i.afx, %.sroa.0365.0          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val62) ]
  %i.agc = icmp ult i64 %i.agb, %.val63
  br i1 %i.agc, label %bb.hh, label %.invoke.i

bb.hh:                                            ; preds = %bb.hg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val60) ]
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.hc, %bb.ha, %bb.gy, %bb.gx, %.noexc.us.i277, %bb.gv, %bb.gu, %bb.fb, %bb.ez, %bb.ey, %bb.ex, %.noexc195.i189, %bb.ev, %bb.eu, %bb.er, %bb.gc, %bb.ga, %bb.fz, %bb.fy, %.noexc187.i204, %bb.fw, %bb.fv, %bb.fn, %bb.fl, %bb.fk, %bb.fj, %.noexc191.i237, %bb.fh, %bb.fg, %bb.gm, %bb.gl, %.noexc183.i260, %bb.gj, %bb.gi, %bb.gf, %bb.hh, %bb.hg
  %i.agd = phi i64 [ %i.ads, %bb.hh ], [ %i.agb, %bb.hg ], [ %.val61, %bb.fv ], [ %.val63, %bb.gf ], [ %.val63, %bb.fg ], [ %i.vv, %.noexc195.i189 ], [ %i.ade, %bb.gm ], [ %.val61, %bb.gi ], [ %i.acm, %.noexc183.i260 ], [ %i.acx, %bb.gl ], [ %i.acc, %bb.gj ], [ %i.za, %bb.fn ], [ %i.yd, %.noexc191.i237 ], [ %i.yo, %bb.fj ], [ %i.ys, %bb.fl ], [ %i.yq, %bb.fk ], [ %i.xv, %bb.fh ], [ %i.abd, %bb.gc ], [ %i.aae, %.noexc187.i204 ], [ %i.aap, %bb.fy ], [ %i.aav, %bb.ga ], [ %i.aar, %bb.fz ], [ %i.zu, %bb.fw ], [ %i.vb, %bb.er ], [ %i.va, %bb.eu ], [ %i.wy, %bb.fb ], [ %i.wi, %bb.ey ], [ %i.vm, %bb.ev ], [ %i.wg, %bb.ex ], [ %i.wn, %bb.ez ], [ %i.afb, %bb.gx ], [ %i.afl, %bb.ha ], [ %i.aeq, %.noexc.us.i277 ], [ %i.aff, %bb.gy ], [ %i.afu, %bb.hc ], [ %i.aea, %bb.gu ], [ %i.aei, %bb.gv ]
  %i.age = phi i64 [ %.val61, %bb.hh ], [ %.val63, %bb.hg ], [ %.val61, %bb.fv ], [ %.val63, %bb.gf ], [ %.val63, %bb.fg ], [ %i.vx, %.noexc195.i189 ], [ %i.acz, %bb.gm ], [ %.val61, %bb.gi ], [ %i.aco, %.noexc183.i260 ], [ %i.acz, %bb.gl ], [ %i.ace, %bb.gj ], [ %.pre1201.i241, %bb.fn ], [ %i.yf, %.noexc191.i237 ], [ %.pre1201.i241, %bb.fj ], [ %.pre1201.i241, %bb.fl ], [ %.pre1201.i241, %bb.fk ], [ %i.xx, %bb.fh ], [ %.pre1199.i208, %bb.gc ], [ %i.aag, %.noexc187.i204 ], [ %.pre1199.i208, %bb.fy ], [ %.pre1199.i208, %bb.ga ], [ %.pre1199.i208, %bb.fz ], [ %i.zw, %bb.fw ], [ %.val63, %bb.er ], [ %.val61, %bb.eu ], [ %.pre1197.i193, %bb.fb ], [ %.pre1197.i193, %bb.ey ], [ %i.vo, %bb.ev ], [ %.pre1197.i193, %bb.ex ], [ %.pre1197.i193, %bb.ez ], [ %i.afd, %bb.gx ], [ %i.afm, %bb.ha ], [ %i.aes, %.noexc.us.i277 ], [ %i.afd, %bb.gy ], [ %i.aft, %bb.hc ], [ %.val63, %bb.gu ], [ %i.aek, %bb.gv ]
  %i.agf = phi ptr [ @103, %bb.hh ], [ @102, %bb.hg ], [ @93, %bb.fv ], [ @98, %bb.gf ], [ @86, %bb.fg ], [ @181, %.noexc195.i189 ], [ @101, %bb.gm ], [ @99, %bb.gi ], [ @181, %.noexc183.i260 ], [ @100, %bb.gl ], [ @181, %bb.gj ], [ @91, %bb.fn ], [ @181, %.noexc191.i237 ], [ @88, %bb.fj ], [ @89, %bb.fl ], [ @90, %bb.fk ], [ @181, %bb.fh ], [ @97, %bb.gc ], [ @181, %.noexc187.i204 ], [ @94, %bb.fy ], [ @95, %bb.ga ], [ @96, %bb.fz ], [ @181, %bb.fw ], [ @80, %bb.er ], [ @81, %bb.eu ], [ @85, %bb.fb ], [ @84, %bb.ey ], [ @181, %bb.ev ], [ @82, %bb.ex ], [ @83, %bb.ez ], [ @104, %bb.gx ], [ @106, %bb.ha ], [ @181, %.noexc.us.i277 ], [ @105, %bb.gy ], [ @107, %bb.hc ], [ @102, %bb.gu ], [ @181, %bb.gv ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.agd, i64 noundef %i.age, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.agf) #28
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i154

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.hi:                                            ; preds = %.loopexit.split-lp.i156
  %i.agg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.loopexit5.i223
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3767
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread: ; preds = %bb.bg, %bb.bh, %bb.ej, %bb.bk, %bb.bi, %.sink.split.i, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit
  %.val68 = load ptr, ptr %i.cv, align 8          ; 4 uses
  %.val69 = load i64, ptr %i.cw, align 8          ; 4 uses
  %.val70 = load ptr, ptr %i.ct, align 8          ; 4 uses
  %.val71 = load i64, ptr %i.cu, align 8          ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3874)
  call void @llvm.experimental.noalias.scope.decl(metadata !3877)
  %.sroa.025.0.i = call i64 @llvm.usub.sat.i64(i64 %i.cr, i64 %.sroa.0.0) ; 6 uses
  %.sroa.037.0.i = call i64 @llvm.usub.sat.i64(i64 %i.cs, i64 %.sroa.0365.0) ; 4 uses
  %i.agh = sub i64 %.sroa.025.0.i, %.sroa.037.0.i ; 3 uses
  %i.agi = and i64 %i.agh, 1
  %.not.i287 = icmp eq i64 %i.agi, 0              ; 2 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.agk = load i64, ptr %i.agj, align 8, !alias.scope !3874, !noalias !3879, !noundef !4 ; 4 uses
  %i.agl = add i64 %i.agk, 1                      ; 5 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.agn = load i64, ptr %i.agm, align 8, !alias.scope !3874, !noalias !3879, !noundef !4 ; 16 uses
  %i.ago = icmp ult i64 %i.agl, %i.agn
  br i1 %i.ago, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread
  %i.agp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.agq = load ptr, ptr %i.agp, align 8, !alias.scope !3874, !noalias !3879, !nonnull !4, !noundef !4 ; 7 uses
  %i.agr = getelementptr inbounds nuw [8 x i8], ptr %i.agq, i64 %i.agl
  store i64 0, ptr %i.agr, align 8, !noalias !3881
  %i.ags = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.agt = load i64, ptr %i.ags, align 8, !alias.scope !3877, !noalias !3882, !noundef !4 ; 4 uses
  %i.agu = add i64 %i.agt, 1                      ; 5 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.agw = load i64, ptr %i.agv, align 8, !alias.scope !3877, !noalias !3882, !noundef !4 ; 16 uses
  %i.agx = icmp ult i64 %i.agu, %i.agw
  br i1 %i.agx, label %bb.hl, label %bb.hm

bb.hk:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.agl, i64 noundef %i.agn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28, !noalias !3881
  unreachable

bb.hl:                                            ; preds = %bb.hj
  %i.agy = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.agz = load ptr, ptr %i.agy, align 8, !alias.scope !3877, !noalias !3882, !nonnull !4, !noundef !4 ; 7 uses
  %i.aha = getelementptr inbounds nuw [8 x i8], ptr %i.agz, i64 %i.agu
  store i64 0, ptr %i.aha, align 8, !noalias !3881
  %i.ahb = add i64 %.sroa.025.0.i, %.sroa.037.0.i ; 2 uses
  %i.ahc = lshr i64 %i.ahb, 1
  %.sroa.047.0.i = sub i64 %i.ahb, %i.ahc         ; 3 uses
  %i.ahd = icmp ult i64 %i.agn, 1152921504606846976
  call void @llvm.assume(i1 %i.ahd)
  %.not128.not.i = icmp ugt i64 %i.agn, %.sroa.047.0.i
  br i1 %.not128.not.i, label %bb.ho, label %bb.hn, !prof !33

bb.hm:                                            ; preds = %bb.hj
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.agu, i64 noundef %i.agw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #28, !noalias !3881
  unreachable

bb.hn:                                            ; preds = %bb.hl
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #28, !noalias !3881
  unreachable

bb.ho:                                            ; preds = %bb.hl
  %i.ahe = icmp ult i64 %i.agw, 1152921504606846976
  call void @llvm.assume(i1 %i.ahe)
  %.not129.not.i = icmp samesign ugt i64 %i.agw, %.sroa.047.0.i
  br i1 %.not129.not.i, label %.lr.ph136.i, label %bb.hp, !prof !33

.lr.ph136.i:                                      ; preds = %bb.ho
  %i.ahf = add i64 %i.agk, -1
  %i.ahg = add i64 %i.agt, -1
  %i.ahh = add i64 %.sroa.025.0.i, %.sroa.0.0     ; 2 uses
  %i.ahi = add i64 %.sroa.037.0.i, %.sroa.0365.0  ; 2 uses
  br label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #28, !noalias !3881
  unreachable

bb.hq:                                            ; preds = %._crit_edge132.i, %.lr.ph136.i
  %.sroa.048.0135.i = phi i64 [ 0, %.lr.ph136.i ], [ %i.ahj, %._crit_edge132.i ] ; 11 uses
  %i.ahj = add nuw nsw i64 %.sroa.048.0135.i, 1
  %i.ahk = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !3881
  br i1 %i.ahk, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1C_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph119.preheader.i

.lr.ph119.preheader.i:                            ; preds = %bb.hq
  %11 = sub nsw i64 0, %.sroa.048.0135.i          ; 6 uses
  %.pre225.i = sub i64 %i.agl, %.sroa.048.0135.i
  br label %.lr.ph119.i

.lr.ph119.i:                                      ; preds = %bb.jv, %.lr.ph119.preheader.i
  %.sroa.7.0118.i = phi i64 [ %.sroa.7.1.i, %bb.jv ], [ %.sroa.048.0135.i, %.lr.ph119.preheader.i ] ; 2 uses
  %not..sroa.1418.0117.i = phi i64 [ 1, %bb.jv ], [ 0, %.lr.ph119.preheader.i ]
  %i.ahl = sub i64 %.sroa.7.0118.i, %not..sroa.1418.0117.i ; 11 uses
  %.not.i.not.i.i = icmp sgt i64 %i.ahl, %.sroa.7.0118.i
  br i1 %.not.i.not.i.i, label %.lr.ph131.preheader.i, label %bb.hr

bb.hr:                                            ; preds = %.lr.ph119.i
  %i.ahm = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.ahl, i64 %11)
  switch i8 %i.ahm, label %bb.hs [
    i8 -1, label %.lr.ph131.preheader.i
    i8 0, label %bb.hu
    i8 1, label %bb.ht
  ]

bb.hs:                                            ; preds = %bb.hr
  unreachable

bb.ht:                                            ; preds = %bb.hr
  %i.ahn = add i64 %i.ahl, -1
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hr
  %.sroa.11.1.i = phi i1 [ true, %bb.hr ], [ false, %bb.ht ]
  %.sroa.7.1.i = phi i64 [ %i.ahl, %bb.hr ], [ %i.ahn, %bb.ht ] ; 2 uses
  %i.aho = icmp eq i64 %i.ahl, %11
  br i1 %i.aho, label %._crit_edge220.i, label %bb.ja

.lr.ph131.preheader.i:                            ; preds = %bb.jv, %bb.hr, %.lr.ph119.i
  %.pre.i292 = sub i64 %i.agu, %.sroa.048.0135.i
  br label %.lr.ph131.i

.lr.ph131.i:                                      ; preds = %bb.iv, %.lr.ph131.preheader.i
  %not..sroa.1727.0129.i = phi i64 [ 1, %bb.iv ], [ 0, %.lr.ph131.preheader.i ]
  %.sroa.726.0128.i = phi i64 [ %.sroa.726.1.i, %bb.iv ], [ %.sroa.048.0135.i, %.lr.ph131.preheader.i ] ; 2 uses
  %i.ahp = sub i64 %.sroa.726.0128.i, %not..sroa.1727.0129.i ; 11 uses
  %.not.i.not.i152.i = icmp sgt i64 %i.ahp, %.sroa.726.0128.i
  br i1 %.not.i.not.i152.i, label %._crit_edge132.i, label %bb.hv

bb.hv:                                            ; preds = %.lr.ph131.i
  %i.ahq = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.ahp, i64 %11)
  switch i8 %i.ahq, label %bb.hw [
    i8 -1, label %._crit_edge132.i
    i8 0, label %bb.hy
    i8 1, label %bb.hx
  ]

bb.hw:                                            ; preds = %bb.hv
  unreachable

bb.hx:                                            ; preds = %bb.hv
  %i.ahr = add i64 %i.ahp, -1
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hv
  %.sroa.726.1.i = phi i64 [ %i.ahp, %bb.hv ], [ %i.ahr, %bb.hx ] ; 2 uses
  %.sroa.12.1.i289 = phi i1 [ true, %bb.hv ], [ false, %bb.hx ]
  %i.ahs = icmp eq i64 %i.ahp, %11
  br i1 %i.ahs, label %._crit_edge222.i, label %bb.hz

._crit_edge132.i:                                 ; preds = %bb.iv, %bb.hv, %.lr.ph131.i
  %exitcond218.not.i = icmp eq i64 %.sroa.048.0135.i, %.sroa.047.0.i
  br i1 %exitcond218.not.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1C_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.hq

bb.hz:                                            ; preds = %bb.hy
  %.not130.i = icmp eq i64 %i.ahp, %.sroa.048.0135.i
  %.pre223.i = add i64 %i.ahg, %i.ahp             ; 6 uses
  br i1 %.not130.i, label %._crit_edge221.i, label %bb.ia

._crit_edge222.i:                                 ; preds = %bb.hy, %bb.id
  %.pre-phi.i = phi i64 [ %i.ahw, %bb.id ], [ %.pre.i292, %bb.hy ] ; 3 uses
  %i.aht = icmp ult i64 %.pre-phi.i, %i.agw
  br i1 %i.aht, label %bb.ii, label %bb.ij

._crit_edge221.i:                                 ; preds = %bb.id, %bb.hz
  %i.ahu = icmp ult i64 %.pre223.i, %i.agw
  br i1 %i.ahu, label %bb.if, label %bb.ig

bb.ia:                                            ; preds = %bb.hz
  %i.ahv = icmp ult i64 %.pre223.i, %i.agw
  br i1 %i.ahv, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  %i.ahw = add i64 %i.ahp, %i.agu                 ; 4 uses
  %i.ahx = icmp ult i64 %i.ahw, %i.agw
  br i1 %i.ahx, label %bb.id, label %bb.ie

bb.ic:                                            ; preds = %bb.ia
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre223.i, i64 noundef %i.agw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #28, !noalias !3881
  unreachable

bb.id:                                            ; preds = %bb.ib
  %i.ahy = getelementptr inbounds nuw [8 x i8], ptr %i.agz, i64 %.pre223.i
  %i.ahz = load i64, ptr %i.ahy, align 8, !noalias !3881, !noundef !4
  %i.aia = getelementptr inbounds nuw [8 x i8], ptr %i.agz, i64 %i.ahw
  %i.aib = load i64, ptr %i.aia, align 8, !noalias !3881, !noundef !4
  %i.aic = icmp ult i64 %i.ahz, %i.aib
  br i1 %i.aic, label %._crit_edge222.i, label %._crit_edge221.i

bb.ie:                                            ; preds = %bb.ib
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ahw, i64 noundef %i.agw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #28, !noalias !3881
  unreachable

bb.if:                                            ; preds = %._crit_edge221.i
  %i.aid = getelementptr inbounds nuw [8 x i8], ptr %i.agz, i64 %.pre223.i
  %i.aie = load i64, ptr %i.aid, align 8, !noalias !3881, !noundef !4
  %i.aif = add i64 %i.aie, 1
  br label %bb.ih

bb.ig:                                            ; preds = %._crit_edge221.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre223.i, i64 noundef %i.agw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #28, !noalias !3881
  unreachable

bb.ih:                                            ; preds = %bb.ii, %bb.if
  %.sroa.014.0.i = phi i64 [ %i.aik, %bb.ii ], [ %i.aif, %bb.if ] ; 5 uses
  %i.aig = sub i64 %.sroa.014.0.i, %i.ahp         ; 4 uses
  %i.aih = icmp ult i64 %.sroa.014.0.i, %.sroa.025.0.i
  %i.aii = icmp ult i64 %i.aig, %.sroa.037.0.i
  %or.cond.i290 = and i1 %i.aih, %i.aii
  br i1 %or.cond.i290, label %bb.il, label %bb.ik

bb.ii:                                            ; preds = %._crit_edge222.i
  %i.aij = getelementptr inbounds nuw [8 x i8], ptr %i.agz, i64 %.pre-phi.i
  %i.aik = load i64, ptr %i.aij, align 8, !noalias !3881, !noundef !4
  br label %bb.ih

bb.ij:                                            ; preds = %._crit_edge222.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi.i, i64 noundef %i.agw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28, !noalias !3881
  unreachable

bb.ik:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.ih
  %.sroa.020.0.i = phi i64 [ %i.ajz, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i ], [ %i.aig, %bb.ih ]
  %.sroa.014.1.i = phi i64 [ %i.ajy, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i ], [ %.sroa.014.0.i, %bb.ih ] ; 3 uses
  %i.ail = add i64 %i.ahp, %i.agt                 ; 3 uses
  %i.aim = icmp ult i64 %i.ail, %i.agw
  br i1 %i.aim, label %bb.is, label %bb.it

bb.il:                                            ; preds = %bb.ih
  %i.ain = sub i64 %i.ahh, %.sroa.014.0.i         ; 2 uses
  %i.aio = sub i64 %i.ahi, %i.aig                 ; 2 uses
  %i.aip = sub i64 %i.ain, %.sroa.0.0
  %i.aiq = sub i64 %i.aio, %.sroa.0365.0
  %.sroa.0.0.i156.i = call noundef i64 @llvm.umin.i64(i64 %i.aiq, i64 %i.aip) ; 3 uses
  %.not140.i = icmp eq i64 %.sroa.0.0.i156.i, 0
  br i1 %.not140.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph124.i

.lr.ph124.i:                                      ; preds = %bb.il
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  br label %bb.im

bb.im:                                            ; preds = %bb.ir, %.lr.ph124.i
  %.sroa.0.0.i136122.i = phi i64 [ 0, %.lr.ph124.i ], [ %i.ajx, %bb.ir ] ; 3 uses
  %i.air = xor i64 %.sroa.0.0.i136122.i, -1       ; 2 uses
  %i.ais = add i64 %i.aio, %i.air                 ; 3 uses
  %i.ait = icmp ult i64 %i.ais, %.val71
  br i1 %i.ait, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.in

bb.in:                                            ; preds = %bb.im
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ais, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #28, !noalias !3883
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.im
  %i.aiu = add i64 %i.ain, %i.air                 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %i.aiv = icmp ult i64 %i.aiu, %.val69
  br i1 %i.aiv, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit157.i, label %bb.io

bb.io:                                            ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aiu, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #28, !noalias !3886
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit157.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i
  %i.aiw = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.ais ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3889)
  call void @llvm.experimental.noalias.scope.decl(metadata !3892)
  %i.aix = load ptr, ptr %i.aiw, align 8, !alias.scope !3889, !noalias !3894, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aiw, i64 8
  %i.aiz = load i64, ptr %i.aiy, align 8, !alias.scope !3889, !noalias !3894, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !3895)
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aix, i64 24
  %i.ajb = load i64, ptr %i.aja, align 8, !alias.scope !3895, !noalias !3898, !noundef !4
  %i.ajc = sub i64 %i.aiz, %i.ajb                 ; 3 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.aix, i64 16
  %i.aje = load i64, ptr %i.ajd, align 8, !alias.scope !3895, !noalias !3898, !noundef !4 ; 2 uses
  %i.ajf = icmp ult i64 %i.ajc, %i.aje
  br i1 %i.ajf, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit139.i, label %bb.ip

bb.ip:                                            ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit157.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ajc, i64 noundef %i.aje, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #28, !noalias !3900
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit139.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit157.i
  %i.ajg = getelementptr inbounds nuw [16 x i8], ptr %.val68, i64 %i.aiu ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.aix, i64 8
  %i.aji = load ptr, ptr %i.ajh, align 8, !alias.scope !3895, !noalias !3898, !nonnull !4, !noundef !4
  %i.ajj = load ptr, ptr %i.ajg, align 8, !alias.scope !3892, !noalias !3901, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajg, i64 8
  %i.ajl = load i64, ptr %i.ajk, align 8, !alias.scope !3892, !noalias !3901, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !3902)
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajj, i64 24
  %i.ajn = load i64, ptr %i.ajm, align 8, !alias.scope !3902, !noalias !3905, !noundef !4
  %i.ajo = sub i64 %i.ajl, %i.ajn                 ; 3 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajj, i64 16
  %i.ajq = load i64, ptr %i.ajp, align 8, !alias.scope !3902, !noalias !3905, !noundef !4 ; 2 uses
  %i.ajr = icmp ult i64 %i.ajo, %i.ajq
  br i1 %i.ajr, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit138.i, label %bb.iq

bb.iq:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit139.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ajo, i64 noundef %i.ajq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #28, !noalias !3907
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit138.i: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit139.i
  %i.ajs = getelementptr inbounds nuw [4 x i8], ptr %i.aji, i64 %i.ajc
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajj, i64 8
  %i.aju = load ptr, ptr %i.ajt, align 8, !alias.scope !3902, !noalias !3905, !nonnull !4, !noundef !4
  %i.ajv = getelementptr inbounds nuw [4 x i8], ptr %i.aju, i64 %i.ajo
  %.val141.i = load i32, ptr %i.ajs, align 4, !noalias !3881, !noundef !4
  %.val142.i = load i32, ptr %i.ajv, align 4, !noalias !3881, !noundef !4
  %i.ajw = icmp eq i32 %.val141.i, %.val142.i
  br i1 %i.ajw, label %bb.ir, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i

bb.ir:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit138.i
  %i.ajx = add nuw i64 %.sroa.0.0.i136122.i, 1    ; 2 uses
  %exitcond217.not.i = icmp eq i64 %i.ajx, %.sroa.0.0.i156.i
  br i1 %exitcond217.not.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.im

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.ir, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit138.i, %bb.il
  %.sroa.0.0.i136.lcssa.i = phi i64 [ 0, %bb.il ], [ %.sroa.0.0.i136122.i, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit138.i ], [ %.sroa.0.0.i156.i, %bb.ir ] ; 2 uses
  %i.ajy = add i64 %.sroa.0.0.i136.lcssa.i, %.sroa.014.0.i
  %i.ajz = add i64 %.sroa.0.0.i136.lcssa.i, %i.aig
  br label %bb.ik

bb.is:                                            ; preds = %bb.ik
  %i.aka = getelementptr inbounds nuw [8 x i8], ptr %i.agz, i64 %i.ail
  store i64 %.sroa.014.1.i, ptr %i.aka, align 8, !noalias !3881
  br i1 %.not.i287, label %bb.iu, label %bb.iv

bb.it:                                            ; preds = %bb.ik
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ail, i64 noundef %i.agw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #28, !noalias !3881
  unreachable

bb.iu:                                            ; preds = %bb.is
  %i.akb = sub i64 %i.ahp, %i.agh                 ; 2 uses
  %.sroa.024.0.i = call i64 @llvm.abs.i64(i64 %i.akb, i1 false)
  %.not131.i = icmp sgt i64 %.sroa.024.0.i, %.sroa.048.0135.i
  br i1 %.not131.i, label %bb.iv, label %bb.iw

bb.iv:                                            ; preds = %bb.ix, %bb.iu, %bb.is
  %.not.i151.i = icmp slt i64 %.sroa.726.1.i, %11
  %or.cond43.i = select i1 %.sroa.12.1.i289, i1 true, i1 %.not.i151.i
  br i1 %or.cond43.i, label %._crit_edge132.i, label %.lr.ph131.i

bb.iw:                                            ; preds = %bb.iu
  %i.akc = sub i64 %i.agk, %i.akb                 ; 3 uses
  %i.akd = icmp ult i64 %i.akc, %i.agn
  br i1 %i.akd, label %bb.ix, label %bb.iy

bb.ix:                                            ; preds = %bb.iw
  %i.ake = getelementptr inbounds nuw [8 x i8], ptr %i.agq, i64 %i.akc
  %i.akf = load i64, ptr %i.ake, align 8, !noalias !3881, !noundef !4
  %i.akg = add i64 %i.akf, %.sroa.014.1.i
  %.not132.i = icmp ult i64 %i.akg, %.sroa.025.0.i
  br i1 %.not132.i, label %bb.iv, label %bb.iz

bb.iy:                                            ; preds = %bb.iw
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.akc, i64 noundef %i.agn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #28, !noalias !3881
  unreachable

bb.iz:                                            ; preds = %bb.ix
  %i.akh = sub i64 %i.ahh, %.sroa.014.1.i
  %i.aki = sub i64 %i.ahi, %.sroa.020.0.i
  br label %bb.kb

bb.ja:                                            ; preds = %bb.hu
  %.not133.i = icmp eq i64 %i.ahl, %.sroa.048.0135.i
  %.pre227.i = add i64 %i.ahf, %i.ahl             ; 6 uses
  br i1 %.not133.i, label %._crit_edge219.i, label %bb.jb

._crit_edge220.i:                                 ; preds = %bb.hu, %bb.je
  %.pre-phi226.i = phi i64 [ %i.akm, %bb.je ], [ %.pre225.i, %bb.hu ] ; 3 uses
  %i.akj = icmp ult i64 %.pre-phi226.i, %i.agn
  br i1 %i.akj, label %bb.jj, label %bb.jk

._crit_edge219.i:                                 ; preds = %bb.je, %bb.ja
  %i.akk = icmp ult i64 %.pre227.i, %i.agn
  br i1 %i.akk, label %bb.jg, label %bb.jh

bb.jb:                                            ; preds = %bb.ja
  %i.akl = icmp ult i64 %.pre227.i, %i.agn
  br i1 %i.akl, label %bb.jc, label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  %i.akm = add i64 %i.ahl, %i.agl                 ; 4 uses
  %i.akn = icmp ult i64 %i.akm, %i.agn
  br i1 %i.akn, label %bb.je, label %bb.jf

bb.jd:                                            ; preds = %bb.jb
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre227.i, i64 noundef %i.agn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #28, !noalias !3881
  unreachable

bb.je:                                            ; preds = %bb.jc
  %i.ako = getelementptr inbounds nuw [8 x i8], ptr %i.agq, i64 %.pre227.i
  %i.akp = load i64, ptr %i.ako, align 8, !noalias !3881, !noundef !4
  %i.akq = getelementptr inbounds nuw [8 x i8], ptr %i.agq, i64 %i.akm
  %i.akr = load i64, ptr %i.akq, align 8, !noalias !3881, !noundef !4
  %i.aks = icmp ult i64 %i.akp, %i.akr
  br i1 %i.aks, label %._crit_edge220.i, label %._crit_edge219.i

bb.jf:                                            ; preds = %bb.jc
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.akm, i64 noundef %i.agn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #28, !noalias !3881
  unreachable

bb.jg:                                            ; preds = %._crit_edge219.i
  %i.akt = getelementptr inbounds nuw [8 x i8], ptr %i.agq, i64 %.pre227.i
  %i.aku = load i64, ptr %i.akt, align 8, !noalias !3881, !noundef !4
  %i.akv = add i64 %i.aku, 1
  br label %bb.ji

bb.jh:                                            ; preds = %._crit_edge219.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre227.i, i64 noundef %i.agn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28, !noalias !3881
  unreachable

bb.ji:                                            ; preds = %bb.jj, %bb.jg
  %.sroa.04.0.i288 = phi i64 [ %i.ala, %bb.jj ], [ %i.akv, %bb.jg ] ; 6 uses
  %i.akw = sub i64 %.sroa.04.0.i288, %i.ahl       ; 3 uses
  %i.akx = icmp ult i64 %.sroa.04.0.i288, %.pre
  %i.aky = icmp ult i64 %i.akw, %.pre1389
  %or.cond41.i = select i1 %i.akx, i1 %i.aky, i1 false
  br i1 %or.cond41.i, label %bb.jm, label %bb.jl

bb.jj:                                            ; preds = %._crit_edge220.i
  %i.akz = getelementptr inbounds nuw [8 x i8], ptr %i.agq, i64 %.pre-phi226.i
  %i.ala = load i64, ptr %i.akz, align 8, !noalias !3881, !noundef !4
  br label %bb.ji

bb.jk:                                            ; preds = %._crit_edge220.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi226.i, i64 noundef %i.agn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #28, !noalias !3881
  unreachable

bb.jl:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.ji
  %.sroa.04.1.i = phi i64 [ %i.aml, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i ], [ %.sroa.04.0.i288, %bb.ji ] ; 2 uses
  %i.alb = add i64 %i.ahl, %i.agk                 ; 3 uses
  %i.alc = icmp ult i64 %i.alb, %i.agn
  br i1 %i.alc, label %bb.jt, label %bb.ju

bb.jm:                                            ; preds = %bb.ji
  %i.ald = add i64 %.sroa.04.0.i288, %.sroa.0.0   ; 4 uses
  %i.ale = add i64 %i.akw, %.sroa.0365.0          ; 3 uses
  %i.alf = sub i64 %i.cr, %i.ald
  %i.alg = sub i64 %i.cs, %i.ale
  %.sroa.0.0.i158.i = call noundef i64 @llvm.umin.i64(i64 %i.alg, i64 %i.alf) ; 3 uses
  %.not139.i = icmp eq i64 %.sroa.0.0.i158.i, 0
  br i1 %.not139.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph.i292

.lr.ph.i292:                                      ; preds = %bb.jm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  %umax215.i = call i64 @llvm.umax.i64(i64 %.val69, i64 %i.ald) ; 2 uses
  %i.alh = sub i64 %umax215.i, %i.ald
  %invariant.gep.i = getelementptr [16 x i8], ptr %.val68, i64 %i.ald
  br label %bb.jn

bb.jn:                                            ; preds = %bb.js, %.lr.ph.i292
  %.sroa.0.0.i114.i = phi i64 [ 0, %.lr.ph.i292 ], [ %i.amk, %bb.js ] ; 5 uses
  %i.ali = add nuw i64 %.sroa.0.0.i114.i, %i.ale  ; 2 uses
  %i.alj = icmp ult i64 %i.ali, %.val71
  br i1 %i.alj, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit159.i, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %umax.i293 = call i64 @llvm.umax.i64(i64 %.val71, i64 %i.ale)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i293, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #28, !noalias !3908
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit159.i: ; preds = %bb.jn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %exitcond.not.i294 = icmp eq i64 %.sroa.0.0.i114.i, %i.alh
  br i1 %exitcond.not.i294, label %bb.jp, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit160.i

bb.jp:                                            ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit159.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax215.i, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #28, !noalias !3911
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit160.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit159.i
  %i.alk = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.ali ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3914)
  call void @llvm.experimental.noalias.scope.decl(metadata !3917)
  %i.all = load ptr, ptr %i.alk, align 8, !alias.scope !3914, !noalias !3919, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %i.alk, i64 8
  %i.aln = load i64, ptr %i.alm, align 8, !alias.scope !3914, !noalias !3919, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !3920)
  %i.alo = getelementptr inbounds nuw i8, ptr %i.all, i64 24
  %i.alp = load i64, ptr %i.alo, align 8, !alias.scope !3920, !noalias !3923, !noundef !4
  %i.alq = sub i64 %i.aln, %i.alp                 ; 3 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %i.all, i64 16
  %i.als = load i64, ptr %i.alr, align 8, !alias.scope !3920, !noalias !3923, !noundef !4 ; 2 uses
  %i.alt = icmp ult i64 %i.alq, %i.als
  br i1 %i.alt, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit137.i, label %bb.jq

bb.jq:                                            ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit160.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.alq, i64 noundef %i.als, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #28, !noalias !3925
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit137.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit160.i
  %gep.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.sroa.0.0.i114.i ; 2 uses
  %i.alu = getelementptr inbounds nuw i8, ptr %i.all, i64 8
  %i.alv = load ptr, ptr %i.alu, align 8, !alias.scope !3920, !noalias !3923, !nonnull !4, !noundef !4
  %i.alw = load ptr, ptr %gep.i, align 8, !alias.scope !3917, !noalias !3926, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  %i.aly = load i64, ptr %i.alx, align 8, !alias.scope !3917, !noalias !3926, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !3927)
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alw, i64 24
  %i.ama = load i64, ptr %i.alz, align 8, !alias.scope !3927, !noalias !3930, !noundef !4
  %i.amb = sub i64 %i.aly, %i.ama                 ; 3 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alw, i64 16
  %i.amd = load i64, ptr %i.amc, align 8, !alias.scope !3927, !noalias !3930, !noundef !4 ; 2 uses
  %i.ame = icmp ult i64 %i.amb, %i.amd
  br i1 %i.ame, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.jr

bb.jr:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit137.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.amb, i64 noundef %i.amd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #28, !noalias !3932
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit137.i
  %i.amf = getelementptr inbounds nuw [4 x i8], ptr %i.alv, i64 %i.alq
  %i.amg = getelementptr inbounds nuw i8, ptr %i.alw, i64 8
  %i.amh = load ptr, ptr %i.amg, align 8, !alias.scope !3927, !noalias !3930, !nonnull !4, !noundef !4
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr %i.amh, i64 %i.amb
  %.val.i295 = load i32, ptr %i.amf, align 4, !noalias !3881, !noundef !4
  %.val140.i = load i32, ptr %i.ami, align 4, !noalias !3881, !noundef !4
  %i.amj = icmp eq i32 %.val.i295, %.val140.i
  br i1 %i.amj, label %bb.js, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i

bb.js:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i
  %i.amk = add nuw i64 %.sroa.0.0.i114.i, 1       ; 2 uses
  %exitcond216.not.i = icmp eq i64 %i.amk, %.sroa.0.0.i158.i
  br i1 %exitcond216.not.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.jn

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.js, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i, %bb.jm
  %.sroa.0.0.i.lcssa.i = phi i64 [ 0, %bb.jm ], [ %.sroa.0.0.i114.i, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i ], [ %.sroa.0.0.i158.i, %bb.js ]
  %i.aml = add i64 %.sroa.0.0.i.lcssa.i, %.sroa.04.0.i288
  br label %bb.jl

bb.jt:                                            ; preds = %bb.jl
  %i.amm = getelementptr inbounds nuw [8 x i8], ptr %i.agq, i64 %i.alb
  store i64 %.sroa.04.1.i, ptr %i.amm, align 8, !noalias !3881
  br i1 %.not.i287, label %bb.jv, label %bb.jw

bb.ju:                                            ; preds = %bb.jl
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.alb, i64 noundef %i.agn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #28, !noalias !3881
  unreachable

bb.jv:                                            ; preds = %bb.jy, %bb.jw, %bb.jt
  %.not.i.i = icmp slt i64 %.sroa.7.1.i, %11
  %or.cond42.i = select i1 %.sroa.11.1.i, i1 true, i1 %.not.i.i
  br i1 %or.cond42.i, label %.lr.ph131.preheader.i, label %.lr.ph119.i

bb.jw:                                            ; preds = %bb.jt
  %i.amn = sub i64 %i.ahl, %i.agh                 ; 2 uses
  %.sroa.010.0.i = call i64 @llvm.abs.i64(i64 %i.amn, i1 false)
  %.not134.not.i = icmp slt i64 %.sroa.010.0.i, %.sroa.048.0135.i
  br i1 %.not134.not.i, label %bb.jx, label %bb.jv

bb.jx:                                            ; preds = %bb.jw
  %i.amo = sub i64 %i.agt, %i.amn                 ; 3 uses
  %i.amp = icmp ult i64 %i.amo, %i.agw
  br i1 %i.amp, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %bb.jx
  %i.amq = getelementptr inbounds nuw [8 x i8], ptr %i.agz, i64 %i.amo
  %i.amr = load i64, ptr %i.amq, align 8, !noalias !3881, !noundef !4
  %i.ams = add i64 %i.amr, %.sroa.04.1.i
  %.not135.i = icmp ult i64 %i.ams, %.sroa.025.0.i
  br i1 %.not135.i, label %bb.jv, label %bb.ka

bb.jz:                                            ; preds = %bb.jx
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.amo, i64 noundef %i.agw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #28, !noalias !3881
  unreachable

bb.ka:                                            ; preds = %bb.jy
  %i.amt = add i64 %.sroa.04.0.i288, %.sroa.0.0
  %i.amu = add i64 %i.akw, %.sroa.0365.0
  br label %bb.kb

bb.kb:                                            ; preds = %bb.ka, %bb.iz
  %.sroa.7.0.ph = phi i64 [ %i.amu, %bb.ka ], [ %i.aki, %bb.iz ] ; 2 uses
  %.sroa.5.0.ph = phi i64 [ %i.amt, %bb.ka ], [ %i.akh, %bb.iz ] ; 2 uses
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1r_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2h_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.0.0, i64 noundef %.sroa.5.0.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.0365.0, i64 noundef %.sroa.7.0.ph, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1r_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2h_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.5.0.ph, i64 noundef %i.cr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.7.0.ph, i64 noundef %i.cs, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.bc

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1C_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %._crit_edge132.i, %bb.hq
  call fastcc void @_RNvMNtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB2_7ReplaceINtNtB4_8patience8PatienceINtNtB4_5utils12OffsetLookupmEB1q_INtNtB4_7compact7CompactB1q_B1q_IBN_NtNtB4_7capture7CaptureEEEE8flush_eqCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(208) %0)
  %.sroa.0.0.copyload.i296 = load i64, ptr %0, align 8, !alias.scope !3933
  %i.amv = trunc nuw i64 %.sroa.0.0.copyload.i296 to i1
  br i1 %i.amv, label %bb.kc, label %bb.kd

bb.kc:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1C_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.6.0.copyload.i301 = load i64, ptr %.sroa.6.0..sroa_idx.i129, align 8, !alias.scope !3933
  %i.amw = add i64 %.sroa.6.0.copyload.i301, %.pre
  br label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit302

bb.kd:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1C_12OffsetLookupmEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit
  store i64 %.sroa.0.0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3933
  store i64 %.sroa.0365.0, ptr %.sroa.7.0..sroa_idx.i130, align 8, !alias.scope !3933
  br label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit302

_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit302: ; preds = %bb.kc, %bb.kd
  %.sink.i300 = phi i64 [ %i.amw, %bb.kc ], [ %.pre, %bb.kd ]
  store i64 1, ptr %0, align 8, !alias.scope !3933
  store i64 %.sink.i300, ptr %.sroa.6.0..sroa_idx.i129, align 8, !alias.scope !3933
  call fastcc void @_RNvMNtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB2_7ReplaceINtNtB4_8patience8PatienceINtNtB4_5utils12OffsetLookupmEB1q_INtNtB4_7compact7CompactB1q_B1q_IBN_NtNtB4_7capture7CaptureEEEE8flush_eqCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(208) %0)
  %.sroa.01.0.copyload.i303 = load i64, ptr %i.dd, align 8, !alias.scope !3936
  %.sroa.52.0.copyload.i305 = load i64, ptr %.sroa.52.0..sroa_idx.i120, align 8, !alias.scope !3936
  %.sroa.6.0.copyload.i307 = load i64, ptr %.sroa.6.0..sroa_idx.i122, align 8, !alias.scope !3936
  %.sroa.7.0.copyload.i309 = load i64, ptr %.sroa.7.0..sroa_idx.i124, align 8, !alias.scope !3936
  %i.amx = trunc nuw i64 %.sroa.01.0.copyload.i303 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i310 = select i1 %i.amx, i64 %.sroa.52.0.copyload.i305, i64 %.sroa.0.0
  %.sroa.5.sroa.5.0.i311 = select i1 %i.amx, i64 %.sroa.6.0.copyload.i307, i64 %.sroa.0365.0
  %i.amy = select i1 %i.amx, i64 %.sroa.7.0.copyload.i309, i64 0
  %.sroa.5.sroa.6.0.i312 = add i64 %i.amy, %.pre1389
  store i64 1, ptr %i.dd, align 8, !alias.scope !3936
  store i64 %.sroa.5.sroa.0.0.i310, ptr %.sroa.52.0..sroa_idx.i120, align 8, !alias.scope !3936
  store i64 %.sroa.5.sroa.5.0.i311, ptr %.sroa.6.0..sroa_idx.i122, align 8, !alias.scope !3936
  store i64 %.sroa.5.sroa.6.0.i312, ptr %.sroa.7.0..sroa_idx.i124, align 8, !alias.scope !3936
  br label %bb.bc

.thread:                                          ; preds = %bb.bb
  %i.amz = sub nuw i64 %i.cs, %.sroa.0365.0
  call fastcc void @_RNvMNtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB2_7ReplaceINtNtB4_8patience8PatienceINtNtB4_5utils12OffsetLookupmEB1q_INtNtB4_7compact7CompactB1q_B1q_IBN_NtNtB4_7capture7CaptureEEEE8flush_eqCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(208) %0)
  %.sroa.01.0.copyload.i313 = load i64, ptr %i.dd, align 8, !alias.scope !3939
  %.sroa.52.0.copyload.i315 = load i64, ptr %.sroa.52.0..sroa_idx.i120, align 8, !alias.scope !3939
  %.sroa.6.0.copyload.i317 = load i64, ptr %.sroa.6.0..sroa_idx.i122, align 8, !alias.scope !3939
  %.sroa.7.0.copyload.i319 = load i64, ptr %.sroa.7.0..sroa_idx.i124, align 8, !alias.scope !3939
  %i.ana = trunc nuw i64 %.sroa.01.0.copyload.i313 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i320 = select i1 %i.ana, i64 %.sroa.52.0.copyload.i315, i64 %.sroa.0.0
  %.sroa.5.sroa.5.0.i321 = select i1 %i.ana, i64 %.sroa.6.0.copyload.i317, i64 %.sroa.0365.0
  %i.anb = select i1 %i.ana, i64 %.sroa.7.0.copyload.i319, i64 0
  %.sroa.5.sroa.6.0.i322 = add i64 %i.amz, %i.anb
  store i64 1, ptr %i.dd, align 8, !alias.scope !3939
  store i64 %.sroa.5.sroa.0.0.i320, ptr %.sroa.52.0..sroa_idx.i120, align 8, !alias.scope !3939
  store i64 %.sroa.5.sroa.5.0.i321, ptr %.sroa.6.0..sroa_idx.i122, align 8, !alias.scope !3939
  store i64 %.sroa.5.sroa.6.0.i322, ptr %.sroa.7.0..sroa_idx.i124, align 8, !alias.scope !3939
  br label %bb.bc

bb.ke:                                            ; preds = %bb.bc
  store i64 0, ptr %0, align 8, !alias.scope !3942
  store i64 0, ptr %i.dd, align 8, !alias.scope !3942
  %.sroa.01.0.copyload.i323 = load i64, ptr %i.de, align 8, !alias.scope !3947
  %.sroa.52.0.copyload.i325 = load i64, ptr %.sroa.52.0..sroa_idx.i110, align 8, !alias.scope !3947
  %.sroa.6.0.copyload.i327 = load i64, ptr %.sroa.6.0..sroa_idx.i112, align 8, !alias.scope !3947
  %.sroa.7.0.copyload.i329 = load i64, ptr %.sroa.7.0..sroa_idx.i114, align 8, !alias.scope !3947
  %i.anc = trunc nuw i64 %.sroa.01.0.copyload.i323 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i330 = select i1 %i.anc, i64 %.sroa.52.0.copyload.i325, i64 %i.cr
  %.sroa.5.sroa.5.0.i331 = select i1 %i.anc, i64 %.sroa.6.0.copyload.i327, i64 %i.cs
  %i.and = select i1 %i.anc, i64 %.sroa.7.0.copyload.i329, i64 0
  %.sroa.5.sroa.6.0.i332 = add i64 %i.and, %.sroa.0.0.i87
  store i64 1, ptr %i.de, align 8, !alias.scope !3947
  store i64 %.sroa.5.sroa.0.0.i330, ptr %.sroa.52.0..sroa_idx.i110, align 8, !alias.scope !3947
  store i64 %.sroa.5.sroa.5.0.i331, ptr %.sroa.6.0..sroa_idx.i112, align 8, !alias.scope !3947
  store i64 %.sroa.5.sroa.6.0.i332, ptr %.sroa.7.0..sroa_idx.i114, align 8, !alias.scope !3947
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3951)
  %i.h = icmp uge i64 %2, %3
  %i.i = icmp uge i64 %5, %6
  %or.cond.i72 = or i1 %i.h, %i.i
  br i1 %or.cond.i72, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3953
  call void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEBW_EINtB5_7ZipImplBW_BW_E3newCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, i64 noundef %5, i64 noundef %6, i64 noundef %2, i64 noundef %3), !noalias !3953
  %.sroa.6.16.copyload.i = load i64, ptr %i.e, align 8, !noalias !3953
  %.sroa.82.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.82.16.copyload.i = load i64, ptr %.sroa.82.16..sroa_idx.i, align 8, !noalias !3953
  %.sroa.93.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.93.16.copyload.i = load i64, ptr %.sroa.93.16..sroa_idx.i, align 8, !noalias !3953 ; 3 uses
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.10.16.copyload.i = load i64, ptr %.sroa.10.16..sroa_idx.i, align 8, !noalias !3953 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3953
  %i.j = icmp ult i64 %.sroa.93.16.copyload.i, %.sroa.10.16.copyload.i
  br i1 %i.j, label %.lr.ph.i.i.i.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit.thread

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = sub nuw i64 %.sroa.10.16.copyload.i, %.sroa.93.16.copyload.i ; 2 uses
  %.val11.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !3951, !noalias !3954, !noundef !4 ; 2 uses
  %.val9.i.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !3948, !noalias !3951 ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !3948, !noalias !3951, !nonnull !4
  %.val10.i.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !3951, !noalias !3948, !nonnull !4
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
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef range(i64 0, 576460752303423488) %.val11.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #28, !noalias !3963
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i: ; preds = %bb.c
  %i.u = icmp ult i64 %i.s, %.val9.i.i.i.i.i
  br i1 %i.u, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef range(i64 0, 576460752303423488) %.val9.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #28, !noalias !3966
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.val10.i.i.i.i.i, i64 %i.r ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i, i64 %i.s ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3969)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3972)
  %i.x = load ptr, ptr %i.v, align 8, !alias.scope !3969, !noalias !3974, !nonnull !4, !align !10, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !3969, !noalias !3974, !noundef !4
  %i.aa = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x, i64 noundef %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181), !noalias !3978 ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 1      ; 2 uses
  %i.ac = load ptr, ptr %i.w, align 8, !alias.scope !3972, !noalias !3979, !nonnull !4, !align !10, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !3972, !noalias !3979, !noundef !4
  %i.af = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ac, i64 noundef %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181), !noalias !3978 ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 1
  %i.ah = icmp eq i64 %i.ab, %i.ag
  br i1 %i.ah, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i
  %i.ai = extractvalue { ptr, i64 } %i.af, 0
  %i.aj = extractvalue { ptr, i64 } %i.aa, 0
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.aj, ptr nonnull readonly %i.ai, i64 %i.ab), !alias.scope !3980, !noalias !3978
  %i.ak = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ak, label %bb.f, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit

end_hunk_1
begin_hunk_2_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2n_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter:bb.a
  %i.zf = getelementptr inbounds nuw i8, ptr %i.zd, i64 8
  %i.zg = load i64, ptr %i.zf, align 8, !alias.scope !4229, !noalias !4234, !noundef !4
  %i.zh = invoke { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ze, i64 noundef %i.zg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181)
          to label %.noexc.us.i281 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.i279 ; 2 uses

.noexc.us.i281:                                   ; preds = %bb.ga
  %i.zi = extractvalue { ptr, i64 } %i.zh, 0
  %i.zj = extractvalue { ptr, i64 } %i.zh, 1      ; 2 uses
  %i.zk = load ptr, ptr %i.yv, align 8, !alias.scope !4232, !noalias !4235, !nonnull !4, !align !10, !noundef !4
  %i.zl = load i64, ptr %i.yw, align 8, !alias.scope !4232, !noalias !4235, !noundef !4
  %i.zm = invoke { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.zk, i64 noundef %i.zl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181)
          to label %.noexc181.us.i282 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.i279 ; 2 uses

.noexc181.us.i282:                                ; preds = %.noexc.us.i281
  %i.zn = extractvalue { ptr, i64 } %i.zm, 1
  %i.zo = icmp eq i64 %i.zj, %i.zn
  br i1 %i.zo, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.us.i289, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread.us.i283

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.us.i289: ; preds = %.noexc181.us.i282
  %i.zp = extractvalue { ptr, i64 } %i.zm, 0
  %bcmp.i270.us.i290 = call i32 @bcmp(ptr nonnull readonly %i.zi, ptr nonnull readonly %i.zp, i64 %i.zj), !alias.scope !4236
  %i.zq = icmp eq i32 %bcmp.i270.us.i290, 0
  br i1 %i.zq, label %bb.gd, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread.us.i283

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread.us.i283: ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.us.i289, %.noexc181.us.i282
  %i.zr = add i64 %i.yx, %i.ys                    ; 3 uses
  %i.zs = load ptr, ptr %i.qz, align 8, !noalias !4163, !nonnull !4, !noundef !4 ; 3 uses
  %i.zt = load i64, ptr %i.ra, align 8, !noalias !4163, !noundef !4 ; 5 uses
  %i.zu = icmp ult i64 %i.zr, %i.zt
  br i1 %i.zu, label %bb.gb, label %.invoke.i

bb.gb:                                            ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread.us.i283
  %i.zv = add i64 %.sroa.0105.0357.us.i278, %i.yr ; 3 uses
  %i.zw = icmp ult i64 %i.zv, %i.zt
  br i1 %i.zw, label %bb.gc, label %.invoke.i

bb.gc:                                            ; preds = %bb.gb
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zs, i64 %i.zr
  %i.zy = load i8, ptr %i.zx, align 1, !noundef !4
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zs, i64 %i.zv
  %i.aaa = load i8, ptr %i.zz, align 1, !noundef !4
  %.sroa.0.0.i272.us.i284 = call noundef i8 @llvm.umax.i8(i8 %i.aaa, i8 %i.zy)
  br label %bb.gf

bb.gd:                                            ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.us.i289
  %i.aab = add i64 %.sroa.0105.0357.us.i278, %i.ys ; 3 uses
  %i.aac = load i64, ptr %i.ra, align 8, !noalias !4163, !noundef !4 ; 3 uses
  %i.aad = icmp ult i64 %i.aab, %i.aac
  br i1 %i.aad, label %bb.ge, label %.invoke.i

bb.ge:                                            ; preds = %bb.gd
  %i.aae = load ptr, ptr %i.qz, align 8, !noalias !4163, !nonnull !4, !noundef !4 ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 %i.aab
  %i.aag = load i8, ptr %i.aaf, align 1, !noundef !4
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
  %i.aan = add i64 %.sroa.088.0.i142, -1          ; 2 uses
  %i.aao = and i64 %i.aan, 1023
  %i.aap = icmp eq i64 %i.aao, 0
  br i1 %i.aap, label %bb.gh, label %bb.gj

bb.gh:                                            ; preds = %.lr.ph.split.i274
  %i.aaq = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i275

bb.gi:                                            ; preds = %bb.gh
  br i1 %i.aaq, label %.loopexit10.i214, label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %.lr.ph.split.i274
  %i.aar = add i64 %i.aan, %.sroa.0368.0          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val62) ]
  %i.aas = icmp ult i64 %i.aar, %.val63
  br i1 %i.aas, label %bb.gk, label %.invoke.i

bb.gk:                                            ; preds = %bb.gj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val60) ]
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.gf, %bb.gd, %bb.gb, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread.us.i283, %bb.fz, %bb.el, %bb.ej, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit198.thread.i191, %bb.ei, %bb.eg, %bb.ed, %bb.fi, %bb.fg, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit190.thread.i204, %bb.ff, %bb.fd, %bb.ev, %bb.et, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit194.thread.i234, %bb.es, %bb.eq, %bb.fr, %bb.fq, %bb.fo, %bb.fl, %bb.gk, %bb.gj
  %i.aat = phi i64 [ %i.yt, %bb.gk ], [ %i.uz, %bb.ev ], [ %i.wv, %bb.fi ], [ %i.yf, %bb.fr ], [ %i.rn, %bb.eg ], [ %i.aar, %bb.gj ], [ %.val61, %bb.fo ], [ %i.xy, %bb.fq ], [ %.val63, %bb.fl ], [ %i.tv, %bb.eq ], [ %i.ul, %bb.es ], [ %i.ur, %bb.et ], [ %i.up, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit194.thread.i234 ], [ %i.vn, %bb.fd ], [ %i.wd, %bb.ff ], [ %i.wn, %bb.fg ], [ %i.wj, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit190.thread.i204 ], [ %i.so, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit198.thread.i191 ], [ %i.ro, %bb.ed ], [ %i.tg, %bb.el ], [ %i.st, %bb.ej ], [ %i.si, %bb.ei ], [ %i.zv, %bb.gb ], [ %i.aab, %bb.gd ], [ %i.aak, %bb.gf ], [ %i.zb, %bb.fz ], [ %i.zr, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread.us.i283 ]
  %i.aau = phi i64 [ %.val61, %bb.gk ], [ %i.un, %bb.ev ], [ %i.wf, %bb.fi ], [ %i.ya, %bb.fr ], [ %.val61, %bb.eg ], [ %.val63, %bb.gj ], [ %.val61, %bb.fo ], [ %i.ya, %bb.fq ], [ %.val63, %bb.fl ], [ %.val63, %bb.eq ], [ %.pre640.i237, %bb.es ], [ %.pre640.i237, %bb.et ], [ %i.un, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit194.thread.i234 ], [ %.val61, %bb.fd ], [ %.pre636.i213, %bb.ff ], [ %.pre636.i213, %bb.fg ], [ %i.wf, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit190.thread.i204 ], [ %i.sk, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit198.thread.i191 ], [ %.val63, %bb.ed ], [ %i.sk, %bb.el ], [ %.pre632.i241, %bb.ej ], [ %.pre632.i241, %bb.ei ], [ %i.zt, %bb.gb ], [ %i.aac, %bb.gd ], [ %i.aaj, %bb.gf ], [ %.val63, %bb.fz ], [ %i.zt, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread.us.i283 ]
  %i.aav = phi ptr [ @103, %bb.gk ], [ @91, %bb.ev ], [ @97, %bb.fi ], [ @101, %bb.fr ], [ @81, %bb.eg ], [ @102, %bb.gj ], [ @99, %bb.fo ], [ @100, %bb.fq ], [ @98, %bb.fl ], [ @86, %bb.eq ], [ @88, %bb.es ], [ @89, %bb.et ], [ @90, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit194.thread.i234 ], [ @93, %bb.fd ], [ @94, %bb.ff ], [ @95, %bb.fg ], [ @96, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit190.thread.i204 ], [ @84, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit198.thread.i191 ], [ @80, %bb.ed ], [ @85, %bb.el ], [ @83, %bb.ej ], [ @82, %bb.ei ], [ @105, %bb.gb ], [ @106, %bb.gd ], [ @107, %bb.gf ], [ @102, %bb.fz ], [ @104, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter.exit.thread.us.i283 ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aat, i64 noundef %i.aau, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aav) #28
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i149

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.gl:                                            ; preds = %.loopexit.split-lp.i151
  %i.aaw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.loopexit10.i214
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4163
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread: ; preds = %bb.az, %bb.ba, %bb.du, %bb.bd, %bb.bb, %.sink.split.i, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit
  %.val68 = load ptr, ptr %i.bx, align 8          ; 4 uses
  %.val69 = load i64, ptr %i.by, align 8          ; 4 uses
  %.val70 = load ptr, ptr %i.bv, align 8          ; 4 uses
  %.val71 = load i64, ptr %i.bw, align 8          ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4240)
  call void @llvm.experimental.noalias.scope.decl(metadata !4243)
  %.sroa.025.0.i = call i64 @llvm.usub.sat.i64(i64 %i.bt, i64 %.sroa.0.0) ; 6 uses
  %.sroa.037.0.i = call i64 @llvm.usub.sat.i64(i64 %i.bu, i64 %.sroa.0368.0) ; 4 uses
  %i.aax = sub i64 %.sroa.025.0.i, %.sroa.037.0.i ; 3 uses
  %i.aay = and i64 %i.aax, 1
  %.not.i291 = icmp eq i64 %i.aay, 0              ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aba = load i64, ptr %i.aaz, align 8, !alias.scope !4240, !noalias !4245, !noundef !4 ; 4 uses
  %i.abb = add i64 %i.aba, 1                      ; 5 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.abd = load i64, ptr %i.abc, align 8, !alias.scope !4240, !noalias !4245, !noundef !4 ; 16 uses
  %i.abe = icmp ult i64 %i.abb, %i.abd
  br i1 %i.abe, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread
  %i.abf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.abg = load ptr, ptr %i.abf, align 8, !alias.scope !4240, !noalias !4245, !nonnull !4, !noundef !4 ; 7 uses
  %i.abh = getelementptr inbounds nuw [8 x i8], ptr %i.abg, i64 %i.abb
  store i64 0, ptr %i.abh, align 8, !noalias !4247
  %i.abi = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.abj = load i64, ptr %i.abi, align 8, !alias.scope !4243, !noalias !4248, !noundef !4 ; 4 uses
  %i.abk = add i64 %i.abj, 1                      ; 5 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.abm = load i64, ptr %i.abl, align 8, !alias.scope !4243, !noalias !4248, !noundef !4 ; 16 uses
  %i.abn = icmp ult i64 %i.abk, %i.abm
  br i1 %i.abn, label %bb.go, label %bb.gp

bb.gn:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter.exit.thread
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.abb, i64 noundef %i.abd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28, !noalias !4247
  unreachable

bb.go:                                            ; preds = %bb.gm
  %i.abo = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.abp = load ptr, ptr %i.abo, align 8, !alias.scope !4243, !noalias !4248, !nonnull !4, !noundef !4 ; 7 uses
  %i.abq = getelementptr inbounds nuw [8 x i8], ptr %i.abp, i64 %i.abk
  store i64 0, ptr %i.abq, align 8, !noalias !4247
  %i.abr = add i64 %.sroa.025.0.i, %.sroa.037.0.i ; 2 uses
  %i.abs = lshr i64 %i.abr, 1
  %.sroa.047.0.i = sub i64 %i.abr, %i.abs         ; 3 uses
  %i.abt = icmp ult i64 %i.abd, 1152921504606846976
  call void @llvm.assume(i1 %i.abt)
  %.not128.not.i = icmp ugt i64 %i.abd, %.sroa.047.0.i
  br i1 %.not128.not.i, label %bb.gr, label %bb.gq, !prof !33

bb.gp:                                            ; preds = %bb.gm
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.abk, i64 noundef %i.abm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #28, !noalias !4247
  unreachable

bb.gq:                                            ; preds = %bb.go
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #28, !noalias !4247
  unreachable

bb.gr:                                            ; preds = %bb.go
  %i.abu = icmp ult i64 %i.abm, 1152921504606846976
  call void @llvm.assume(i1 %i.abu)
  %.not129.not.i = icmp samesign ugt i64 %i.abm, %.sroa.047.0.i
  br i1 %.not129.not.i, label %.lr.ph112.i, label %bb.gs, !prof !33

.lr.ph112.i:                                      ; preds = %bb.gr
  %i.abv = add i64 %i.aba, -1
  %i.abw = add i64 %i.abj, -1
  %i.abx = add i64 %.sroa.025.0.i, %.sroa.0.0     ; 2 uses
  %i.aby = add i64 %.sroa.037.0.i, %.sroa.0368.0  ; 2 uses
  br label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #28, !noalias !4247
  unreachable

bb.gt:                                            ; preds = %._crit_edge108.i, %.lr.ph112.i
  %.sroa.048.0111.i = phi i64 [ 0, %.lr.ph112.i ], [ %i.abz, %._crit_edge108.i ] ; 11 uses
  %i.abz = add nuw nsw i64 %.sroa.048.0111.i, 1
  %i.aca = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !4247
  br i1 %i.aca, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph94.preheader.i

.lr.ph94.preheader.i:                             ; preds = %bb.gt
  %11 = sub nsw i64 0, %.sroa.048.0111.i          ; 6 uses
  %.pre168.i = sub i64 %i.abb, %.sroa.048.0111.i
  br label %.lr.ph94.i

.lr.ph94.i:                                       ; preds = %bb.iu, %.lr.ph94.preheader.i
  %.sroa.7.093.i = phi i64 [ %.sroa.7.1.i, %bb.iu ], [ %.sroa.048.0111.i, %.lr.ph94.preheader.i ] ; 2 uses
  %not..sroa.1418.092.i = phi i64 [ 1, %bb.iu ], [ 0, %.lr.ph94.preheader.i ]
  %i.acb = sub i64 %.sroa.7.093.i, %not..sroa.1418.092.i ; 11 uses
  %.not.i.not.i.i = icmp sgt i64 %i.acb, %.sroa.7.093.i
  br i1 %.not.i.not.i.i, label %.lr.ph107.preheader.i, label %bb.gu

bb.gu:                                            ; preds = %.lr.ph94.i
  %i.acc = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.acb, i64 %11)
  switch i8 %i.acc, label %bb.gv [
    i8 -1, label %.lr.ph107.preheader.i
    i8 0, label %bb.gx
    i8 1, label %bb.gw
  ]

bb.gv:                                            ; preds = %bb.gu
  unreachable

bb.gw:                                            ; preds = %bb.gu
  %i.acd = add i64 %i.acb, -1
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gu
  %.sroa.11.1.i = phi i1 [ true, %bb.gu ], [ false, %bb.gw ]
  %.sroa.7.1.i = phi i64 [ %i.acb, %bb.gu ], [ %i.acd, %bb.gw ] ; 2 uses
  %i.ace = icmp eq i64 %i.acb, %11
  br i1 %i.ace, label %._crit_edge163.i, label %bb.ib

.lr.ph107.preheader.i:                            ; preds = %bb.iu, %bb.gu, %.lr.ph94.i
  %.pre.i297 = sub i64 %i.abk, %.sroa.048.0111.i
  br label %.lr.ph107.i

.lr.ph107.i:                                      ; preds = %bb.hw, %.lr.ph107.preheader.i
  %not..sroa.1727.0105.i = phi i64 [ 1, %bb.hw ], [ 0, %.lr.ph107.preheader.i ]
  %.sroa.726.0104.i = phi i64 [ %.sroa.726.1.i, %bb.hw ], [ %.sroa.048.0111.i, %.lr.ph107.preheader.i ] ; 2 uses
  %i.acf = sub i64 %.sroa.726.0104.i, %not..sroa.1727.0105.i ; 11 uses
  %.not.i.not.i145.i = icmp sgt i64 %i.acf, %.sroa.726.0104.i
  br i1 %.not.i.not.i145.i, label %._crit_edge108.i, label %bb.gy

bb.gy:                                            ; preds = %.lr.ph107.i
  %i.acg = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.acf, i64 %11)
  switch i8 %i.acg, label %bb.gz [
    i8 -1, label %._crit_edge108.i
    i8 0, label %bb.hb
    i8 1, label %bb.ha
  ]

bb.gz:                                            ; preds = %bb.gy
  unreachable

bb.ha:                                            ; preds = %bb.gy
  %i.ach = add i64 %i.acf, -1
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gy
  %.sroa.726.1.i = phi i64 [ %i.acf, %bb.gy ], [ %i.ach, %bb.ha ] ; 2 uses
  %.sroa.12.1.i293 = phi i1 [ true, %bb.gy ], [ false, %bb.ha ]
  %i.aci = icmp eq i64 %i.acf, %11
  br i1 %i.aci, label %._crit_edge165.i, label %bb.hc

._crit_edge108.i:                                 ; preds = %bb.hw, %bb.gy, %.lr.ph107.i
  %exitcond161.not.i = icmp eq i64 %.sroa.048.0111.i, %.sroa.047.0.i
  br i1 %exitcond161.not.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.gt

bb.hc:                                            ; preds = %bb.hb
  %.not130.i = icmp eq i64 %i.acf, %.sroa.048.0111.i
  %.pre166.i = add i64 %i.abw, %i.acf             ; 6 uses
  br i1 %.not130.i, label %._crit_edge164.i, label %bb.hd

._crit_edge165.i:                                 ; preds = %bb.hb, %bb.hg
  %.pre-phi.i = phi i64 [ %i.acm, %bb.hg ], [ %.pre.i297, %bb.hb ] ; 3 uses
  %i.acj = icmp ult i64 %.pre-phi.i, %i.abm
  br i1 %i.acj, label %bb.hl, label %bb.hm

._crit_edge164.i:                                 ; preds = %bb.hg, %bb.hc
  %i.ack = icmp ult i64 %.pre166.i, %i.abm
  br i1 %i.ack, label %bb.hi, label %bb.hj

bb.hd:                                            ; preds = %bb.hc
  %i.acl = icmp ult i64 %.pre166.i, %i.abm
  br i1 %i.acl, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.acm = add i64 %i.acf, %i.abk                 ; 4 uses
  %i.acn = icmp ult i64 %i.acm, %i.abm
  br i1 %i.acn, label %bb.hg, label %bb.hh

bb.hf:                                            ; preds = %bb.hd
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre166.i, i64 noundef %i.abm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #28, !noalias !4247
  unreachable

bb.hg:                                            ; preds = %bb.he
  %i.aco = getelementptr inbounds nuw [8 x i8], ptr %i.abp, i64 %.pre166.i
  %i.acp = load i64, ptr %i.aco, align 8, !noalias !4247, !noundef !4
  %i.acq = getelementptr inbounds nuw [8 x i8], ptr %i.abp, i64 %i.acm
  %i.acr = load i64, ptr %i.acq, align 8, !noalias !4247, !noundef !4
  %i.acs = icmp ult i64 %i.acp, %i.acr
  br i1 %i.acs, label %._crit_edge165.i, label %._crit_edge164.i

bb.hh:                                            ; preds = %bb.he
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.acm, i64 noundef %i.abm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #28, !noalias !4247
  unreachable

bb.hi:                                            ; preds = %._crit_edge164.i
  %i.act = getelementptr inbounds nuw [8 x i8], ptr %i.abp, i64 %.pre166.i
  %i.acu = load i64, ptr %i.act, align 8, !noalias !4247, !noundef !4
  %i.acv = add i64 %i.acu, 1
  br label %bb.hk

bb.hj:                                            ; preds = %._crit_edge164.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre166.i, i64 noundef %i.abm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #28, !noalias !4247
  unreachable

bb.hk:                                            ; preds = %bb.hl, %bb.hi
  %.sroa.014.0.i = phi i64 [ %i.ada, %bb.hl ], [ %i.acv, %bb.hi ] ; 5 uses
  %i.acw = sub i64 %.sroa.014.0.i, %i.acf         ; 4 uses
  %i.acx = icmp ult i64 %.sroa.014.0.i, %.sroa.025.0.i
  %i.acy = icmp ult i64 %i.acw, %.sroa.037.0.i
  %or.cond.i294 = and i1 %i.acx, %i.acy
  br i1 %or.cond.i294, label %bb.ho, label %bb.hn

bb.hl:                                            ; preds = %._crit_edge165.i
  %i.acz = getelementptr inbounds nuw [8 x i8], ptr %i.abp, i64 %.pre-phi.i
  %i.ada = load i64, ptr %i.acz, align 8, !noalias !4247, !noundef !4
  br label %bb.hk

bb.hm:                                            ; preds = %._crit_edge165.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi.i, i64 noundef %i.abm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28, !noalias !4247
  unreachable

bb.hn:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.hk
  %.sroa.020.0.i = phi i64 [ %i.aee, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i ], [ %i.acw, %bb.hk ]
  %.sroa.014.1.i = phi i64 [ %i.aed, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i ], [ %.sroa.014.0.i, %bb.hk ] ; 3 uses
  %i.adb = add i64 %i.acf, %i.abj                 ; 3 uses
  %i.adc = icmp ult i64 %i.adb, %i.abm
  br i1 %i.adc, label %bb.ht, label %bb.hu

bb.ho:                                            ; preds = %bb.hk
  %i.add = sub i64 %i.abx, %.sroa.014.0.i         ; 2 uses
  %i.ade = sub i64 %i.aby, %i.acw                 ; 2 uses
  %i.adf = sub i64 %i.add, %.sroa.0.0
  %i.adg = sub i64 %i.ade, %.sroa.0368.0
  %.sroa.0.0.i149.i = call noundef i64 @llvm.umin.i64(i64 %i.adg, i64 %i.adf) ; 3 uses
  %.not116.i = icmp eq i64 %.sroa.0.0.i149.i, 0
  br i1 %.not116.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph99.i

.lr.ph99.i:                                       ; preds = %bb.ho
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  br label %bb.hp

bb.hp:                                            ; preds = %bb.hs, %.lr.ph99.i
  %.sroa.0.0.i13697.i = phi i64 [ 0, %.lr.ph99.i ], [ %i.aec, %bb.hs ] ; 4 uses
  %i.adh = xor i64 %.sroa.0.0.i13697.i, -1        ; 2 uses
  %i.adi = add i64 %i.ade, %i.adh                 ; 3 uses
  %i.adj = icmp ult i64 %i.adi, %.val71
  br i1 %i.adj, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.adi, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #28, !noalias !4249
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.hp
  %i.adk = add i64 %i.add, %i.adh                 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %i.adl = icmp ult i64 %i.adk, %.val69
  br i1 %i.adl, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit150.i, label %bb.hr

bb.hr:                                            ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.adk, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #28, !noalias !4252
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit150.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i
  %i.adm = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.adi ; 2 uses
  %i.adn = getelementptr inbounds nuw [16 x i8], ptr %.val68, i64 %i.adk ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4255)
  call void @llvm.experimental.noalias.scope.decl(metadata !4258)
  %i.ado = load ptr, ptr %i.adm, align 8, !alias.scope !4255, !noalias !4260, !nonnull !4, !align !10, !noundef !4
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adm, i64 8
  %i.adq = load i64, ptr %i.adp, align 8, !alias.scope !4255, !noalias !4260, !noundef !4
  %i.adr = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ado, i64 noundef %i.adq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181), !noalias !4261 ; 2 uses
  %i.ads = extractvalue { ptr, i64 } %i.adr, 1    ; 2 uses
  %i.adt = load ptr, ptr %i.adn, align 8, !alias.scope !4258, !noalias !4262, !nonnull !4, !align !10, !noundef !4
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adn, i64 8
  %i.adv = load i64, ptr %i.adu, align 8, !alias.scope !4258, !noalias !4262, !noundef !4
  %i.adw = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.adt, i64 noundef %i.adv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181), !noalias !4261 ; 2 uses
  %i.adx = extractvalue { ptr, i64 } %i.adw, 1
  %i.ady = icmp eq i64 %i.ads, %i.adx
  br i1 %i.ady, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit150.i
  %i.adz = extractvalue { ptr, i64 } %i.adw, 0
  %i.aea = extractvalue { ptr, i64 } %i.adr, 0
  %bcmp.i.i296 = call i32 @bcmp(ptr nonnull readonly %i.aea, ptr nonnull readonly %i.adz, i64 %i.ads), !alias.scope !4263, !noalias !4261
  %i.aeb = icmp eq i32 %bcmp.i.i296, 0
  br i1 %i.aeb, label %bb.hs, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i

bb.hs:                                            ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i
  %i.aec = add nuw i64 %.sroa.0.0.i13697.i, 1     ; 2 uses
  %exitcond160.not.i = icmp eq i64 %i.aec, %.sroa.0.0.i149.i
  br i1 %exitcond160.not.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.hp

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.hs, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit150.i, %bb.ho
  %.sroa.0.0.i136.lcssa.i = phi i64 [ 0, %bb.ho ], [ %.sroa.0.0.i13697.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i ], [ %.sroa.0.0.i149.i, %bb.hs ], [ %.sroa.0.0.i13697.i, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit150.i ] ; 2 uses
  %i.aed = add i64 %.sroa.0.0.i136.lcssa.i, %.sroa.014.0.i
  %i.aee = add i64 %.sroa.0.0.i136.lcssa.i, %i.acw
  br label %bb.hn

bb.ht:                                            ; preds = %bb.hn
  %i.aef = getelementptr inbounds nuw [8 x i8], ptr %i.abp, i64 %i.adb
  store i64 %.sroa.014.1.i, ptr %i.aef, align 8, !noalias !4247
  br i1 %.not.i291, label %bb.hv, label %bb.hw

bb.hu:                                            ; preds = %bb.hn
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.adb, i64 noundef %i.abm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #28, !noalias !4247
  unreachable

bb.hv:                                            ; preds = %bb.ht
  %i.aeg = sub i64 %i.acf, %i.aax                 ; 2 uses
  %.sroa.024.0.i = call i64 @llvm.abs.i64(i64 %i.aeg, i1 false)
  %.not131.i = icmp sgt i64 %.sroa.024.0.i, %.sroa.048.0111.i
  br i1 %.not131.i, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hy, %bb.hv, %bb.ht
  %.not.i144.i = icmp slt i64 %.sroa.726.1.i, %11
  %or.cond45.i = select i1 %.sroa.12.1.i293, i1 true, i1 %.not.i144.i
  br i1 %or.cond45.i, label %._crit_edge108.i, label %.lr.ph107.i

bb.hx:                                            ; preds = %bb.hv
  %i.aeh = sub i64 %i.aba, %i.aeg                 ; 3 uses
  %i.aei = icmp ult i64 %i.aeh, %i.abd
  br i1 %i.aei, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  %i.aej = getelementptr inbounds nuw [8 x i8], ptr %i.abg, i64 %i.aeh
  %i.aek = load i64, ptr %i.aej, align 8, !noalias !4247, !noundef !4
  %i.ael = add i64 %i.aek, %.sroa.014.1.i
  %.not132.i = icmp ult i64 %i.ael, %.sroa.025.0.i
  br i1 %.not132.i, label %bb.hw, label %bb.ia

bb.hz:                                            ; preds = %bb.hx
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aeh, i64 noundef %i.abd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #28, !noalias !4247
  unreachable

bb.ia:                                            ; preds = %bb.hy
  %i.aem = sub i64 %i.abx, %.sroa.014.1.i
  %i.aen = sub i64 %i.aby, %.sroa.020.0.i
  br label %bb.ja

bb.ib:                                            ; preds = %bb.gx
  %.not133.i = icmp eq i64 %i.acb, %.sroa.048.0111.i
  %.pre170.i = add i64 %i.abv, %i.acb             ; 6 uses
  br i1 %.not133.i, label %._crit_edge162.i, label %bb.ic

._crit_edge163.i:                                 ; preds = %bb.gx, %bb.if
  %.pre-phi169.i = phi i64 [ %i.aer, %bb.if ], [ %.pre168.i, %bb.gx ] ; 3 uses
  %i.aeo = icmp ult i64 %.pre-phi169.i, %i.abd
  br i1 %i.aeo, label %bb.ik, label %bb.il

._crit_edge162.i:                                 ; preds = %bb.if, %bb.ib
  %i.aep = icmp ult i64 %.pre170.i, %i.abd
  br i1 %i.aep, label %bb.ih, label %bb.ii

bb.ic:                                            ; preds = %bb.ib
  %i.aeq = icmp ult i64 %.pre170.i, %i.abd
  br i1 %i.aeq, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.aer = add i64 %i.acb, %i.abb                 ; 4 uses
  %i.aes = icmp ult i64 %i.aer, %i.abd
  br i1 %i.aes, label %bb.if, label %bb.ig

bb.ie:                                            ; preds = %bb.ic
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre170.i, i64 noundef %i.abd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #28, !noalias !4247
  unreachable

bb.if:                                            ; preds = %bb.id
  %i.aet = getelementptr inbounds nuw [8 x i8], ptr %i.abg, i64 %.pre170.i
  %i.aeu = load i64, ptr %i.aet, align 8, !noalias !4247, !noundef !4
  %i.aev = getelementptr inbounds nuw [8 x i8], ptr %i.abg, i64 %i.aer
  %i.aew = load i64, ptr %i.aev, align 8, !noalias !4247, !noundef !4
  %i.aex = icmp ult i64 %i.aeu, %i.aew
  br i1 %i.aex, label %._crit_edge163.i, label %._crit_edge162.i

bb.ig:                                            ; preds = %bb.id
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aer, i64 noundef %i.abd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #28, !noalias !4247
  unreachable

bb.ih:                                            ; preds = %._crit_edge162.i
  %i.aey = getelementptr inbounds nuw [8 x i8], ptr %i.abg, i64 %.pre170.i
  %i.aez = load i64, ptr %i.aey, align 8, !noalias !4247, !noundef !4
  %i.afa = add i64 %i.aez, 1
  br label %bb.ij

bb.ii:                                            ; preds = %._crit_edge162.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre170.i, i64 noundef %i.abd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28, !noalias !4247
  unreachable

bb.ij:                                            ; preds = %bb.ik, %bb.ih
  %.sroa.04.0.i292 = phi i64 [ %i.aff, %bb.ik ], [ %i.afa, %bb.ih ] ; 6 uses
  %i.afb = sub i64 %.sroa.04.0.i292, %i.acb       ; 3 uses
  %i.afc = icmp ult i64 %.sroa.04.0.i292, %.pre
  %i.afd = icmp ult i64 %i.afb, %.pre1094
  %or.cond43.i = select i1 %i.afc, i1 %i.afd, i1 false
  br i1 %or.cond43.i, label %bb.in, label %bb.im

bb.ik:                                            ; preds = %._crit_edge163.i
  %i.afe = getelementptr inbounds nuw [8 x i8], ptr %i.abg, i64 %.pre-phi169.i
  %i.aff = load i64, ptr %i.afe, align 8, !noalias !4247, !noundef !4
  br label %bb.ij

bb.il:                                            ; preds = %._crit_edge163.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi169.i, i64 noundef %i.abd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #28, !noalias !4247
  unreachable

bb.im:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.ij
  %.sroa.04.1.i = phi i64 [ %i.agh, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i ], [ %.sroa.04.0.i292, %bb.ij ] ; 2 uses
  %i.afg = add i64 %i.acb, %i.aba                 ; 3 uses
  %i.afh = icmp ult i64 %i.afg, %i.abd
  br i1 %i.afh, label %bb.is, label %bb.it

bb.in:                                            ; preds = %bb.ij
  %i.afi = add i64 %.sroa.04.0.i292, %.sroa.0.0   ; 3 uses
  %i.afj = add i64 %i.afb, %.sroa.0368.0          ; 2 uses
  %i.afk = sub i64 %i.bt, %i.afi
  %i.afl = sub i64 %i.bu, %i.afj
  %.sroa.0.0.i152.i = call noundef i64 @llvm.umin.i64(i64 %i.afl, i64 %i.afk) ; 3 uses
  %.not115.i = icmp eq i64 %.sroa.0.0.i152.i, 0
  br i1 %.not115.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph.i297

.lr.ph.i297:                                      ; preds = %bb.in
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  %i.afm = call i64 @llvm.usub.sat.i64(i64 %.val69, i64 %i.afi)
  br label %bb.io

bb.io:                                            ; preds = %bb.ir, %.lr.ph.i297
  %.sroa.0.0.i88.i = phi i64 [ 0, %.lr.ph.i297 ], [ %i.agg, %bb.ir ] ; 6 uses
  %i.afn = add nuw i64 %.sroa.0.0.i88.i, %i.afj   ; 3 uses
  %i.afo = icmp ult i64 %i.afn, %.val71
  br i1 %i.afo, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit153.i, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.afn, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #28, !noalias !4267
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit153.i: ; preds = %bb.io
  %i.afp = add nuw i64 %.sroa.0.0.i88.i, %i.afi   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %exitcond.not.i298 = icmp eq i64 %.sroa.0.0.i88.i, %i.afm
  br i1 %exitcond.not.i298, label %bb.iq, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit154.i

bb.iq:                                            ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit153.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.afp, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #28, !noalias !4270
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit154.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit153.i
  %i.afq = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.afn ; 2 uses
  %i.afr = getelementptr inbounds nuw [16 x i8], ptr %.val68, i64 %i.afp ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4273)
  call void @llvm.experimental.noalias.scope.decl(metadata !4276)
  %i.afs = load ptr, ptr %i.afq, align 8, !alias.scope !4273, !noalias !4278, !nonnull !4, !align !10, !noundef !4
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afq, i64 8
  %i.afu = load i64, ptr %i.aft, align 8, !alias.scope !4273, !noalias !4278, !noundef !4
  %i.afv = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.afs, i64 noundef %i.afu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181), !noalias !4279 ; 2 uses
  %i.afw = extractvalue { ptr, i64 } %i.afv, 1    ; 2 uses
  %i.afx = load ptr, ptr %i.afr, align 8, !alias.scope !4276, !noalias !4280, !nonnull !4, !align !10, !noundef !4
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afr, i64 8
  %i.afz = load i64, ptr %i.afy, align 8, !alias.scope !4276, !noalias !4280, !noundef !4
  %i.aga = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.afx, i64 noundef %i.afz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181), !noalias !4279 ; 2 uses
  %i.agb = extractvalue { ptr, i64 } %i.aga, 1
  %i.agc = icmp eq i64 %i.afw, %i.agb
  br i1 %i.agc, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit157.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit157.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit154.i
  %i.agd = extractvalue { ptr, i64 } %i.aga, 0
  %i.age = extractvalue { ptr, i64 } %i.afv, 0
  %bcmp.i156.i = call i32 @bcmp(ptr nonnull readonly %i.age, ptr nonnull readonly %i.agd, i64 %i.afw), !alias.scope !4281, !noalias !4279
  %i.agf = icmp eq i32 %bcmp.i156.i, 0
  br i1 %i.agf, label %bb.ir, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i

bb.ir:                                            ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit157.i
  %i.agg = add nuw i64 %.sroa.0.0.i88.i, 1        ; 2 uses
  %exitcond159.not.i = icmp eq i64 %i.agg, %.sroa.0.0.i152.i
  br i1 %exitcond159.not.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.io

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.ir, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit157.i, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit154.i, %bb.in
  %.sroa.0.0.i.lcssa.i = phi i64 [ 0, %bb.in ], [ %.sroa.0.0.i88.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit157.i ], [ %.sroa.0.0.i152.i, %bb.ir ], [ %.sroa.0.0.i88.i, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit154.i ]
  %i.agh = add i64 %.sroa.0.0.i.lcssa.i, %.sroa.04.0.i292
  br label %bb.im

bb.is:                                            ; preds = %bb.im
  %i.agi = getelementptr inbounds nuw [8 x i8], ptr %i.abg, i64 %i.afg
  store i64 %.sroa.04.1.i, ptr %i.agi, align 8, !noalias !4247
  br i1 %.not.i291, label %bb.iu, label %bb.iv

bb.it:                                            ; preds = %bb.im
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.afg, i64 noundef %i.abd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #28, !noalias !4247
  unreachable

bb.iu:                                            ; preds = %bb.ix, %bb.iv, %bb.is
  %.not.i.i = icmp slt i64 %.sroa.7.1.i, %11
  %or.cond44.i = select i1 %.sroa.11.1.i, i1 true, i1 %.not.i.i
  br i1 %or.cond44.i, label %.lr.ph107.preheader.i, label %.lr.ph94.i

bb.iv:                                            ; preds = %bb.is
  %i.agj = sub i64 %i.acb, %i.aax                 ; 2 uses
  %.sroa.010.0.i = call i64 @llvm.abs.i64(i64 %i.agj, i1 false)
  %.not134.not.i = icmp slt i64 %.sroa.010.0.i, %.sroa.048.0111.i
  br i1 %.not134.not.i, label %bb.iw, label %bb.iu

bb.iw:                                            ; preds = %bb.iv
  %i.agk = sub i64 %i.abj, %i.agj                 ; 3 uses
  %i.agl = icmp ult i64 %i.agk, %i.abm
  br i1 %i.agl, label %bb.ix, label %bb.iy

bb.ix:                                            ; preds = %bb.iw
  %i.agm = getelementptr inbounds nuw [8 x i8], ptr %i.abp, i64 %i.agk
  %i.agn = load i64, ptr %i.agm, align 8, !noalias !4247, !noundef !4
  %i.ago = add i64 %i.agn, %.sroa.04.1.i
  %.not135.i = icmp ult i64 %i.ago, %.sroa.025.0.i
  br i1 %.not135.i, label %bb.iu, label %bb.iz

bb.iy:                                            ; preds = %bb.iw
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.agk, i64 noundef %i.abm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #28, !noalias !4247
  unreachable

bb.iz:                                            ; preds = %bb.ix
  %i.agp = add i64 %.sroa.04.0.i292, %.sroa.0.0
  %i.agq = add i64 %i.afb, %.sroa.0368.0
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iz, %bb.ia
  %.sroa.7.0.ph = phi i64 [ %i.agq, %bb.iz ], [ %i.aen, %bb.ia ] ; 2 uses
  %.sroa.5.0.ph = phi i64 [ %i.agp, %bb.iz ], [ %i.aem, %bb.ia ] ; 2 uses
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2n_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.0.0, i64 noundef %.sroa.5.0.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.0368.0, i64 noundef %.sroa.7.0.ph, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2n_NtNtB4_7capture7CaptureEEEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.5.0.ph, i64 noundef %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.7.0.ph, i64 noundef %i.bu, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.av

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %._crit_edge108.i, %bb.gt
  call fastcc void @_RNvMNtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB2_7ReplaceINtNtB4_8patience8PatienceINtNtB6_4text12TextDiffSideeEB1q_INtNtB4_7compact7CompactB1q_B1q_IBN_NtNtB4_7capture7CaptureEEEE8flush_eqCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(208) %0)
  %.sroa.0.0.copyload.i299 = load i64, ptr %0, align 8, !alias.scope !4285
  %i.agr = trunc nuw i64 %.sroa.0.0.copyload.i299 to i1
  br i1 %i.agr, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.6.0.copyload.i304 = load i64, ptr %.sroa.6.0..sroa_idx.i125, align 8, !alias.scope !4285
  %i.ags = add i64 %.sroa.6.0.copyload.i304, %.pre
  br label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit305

bb.jc:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECsEhZmuQNqkz_11ruff_linter.exit
  store i64 %.sroa.0.0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !4285
  store i64 %.sroa.0368.0, ptr %.sroa.7.0..sroa_idx.i126, align 8, !alias.scope !4285
  br label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit305

_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit305: ; preds = %bb.jb, %bb.jc
  %.sink.i303 = phi i64 [ %i.ags, %bb.jb ], [ %.pre, %bb.jc ]
  store i64 1, ptr %0, align 8, !alias.scope !4285
  store i64 %.sink.i303, ptr %.sroa.6.0..sroa_idx.i125, align 8, !alias.scope !4285
  call fastcc void @_RNvMNtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB2_7ReplaceINtNtB4_8patience8PatienceINtNtB6_4text12TextDiffSideeEB1q_INtNtB4_7compact7CompactB1q_B1q_IBN_NtNtB4_7capture7CaptureEEEE8flush_eqCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(208) %0)
  %.sroa.01.0.copyload.i306 = load i64, ptr %i.cf, align 8, !alias.scope !4288
  %.sroa.52.0.copyload.i308 = load i64, ptr %.sroa.52.0..sroa_idx.i116, align 8, !alias.scope !4288
  %.sroa.6.0.copyload.i310 = load i64, ptr %.sroa.6.0..sroa_idx.i118, align 8, !alias.scope !4288
  %.sroa.7.0.copyload.i312 = load i64, ptr %.sroa.7.0..sroa_idx.i120, align 8, !alias.scope !4288
  %i.agt = trunc nuw i64 %.sroa.01.0.copyload.i306 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i313 = select i1 %i.agt, i64 %.sroa.52.0.copyload.i308, i64 %.sroa.0.0
  %.sroa.5.sroa.5.0.i314 = select i1 %i.agt, i64 %.sroa.6.0.copyload.i310, i64 %.sroa.0368.0
  %i.agu = select i1 %i.agt, i64 %.sroa.7.0.copyload.i312, i64 0
  %.sroa.5.sroa.6.0.i315 = add i64 %i.agu, %.pre1094
  store i64 1, ptr %i.cf, align 8, !alias.scope !4288
  store i64 %.sroa.5.sroa.0.0.i313, ptr %.sroa.52.0..sroa_idx.i116, align 8, !alias.scope !4288
  store i64 %.sroa.5.sroa.5.0.i314, ptr %.sroa.6.0..sroa_idx.i118, align 8, !alias.scope !4288
  store i64 %.sroa.5.sroa.6.0.i315, ptr %.sroa.7.0..sroa_idx.i120, align 8, !alias.scope !4288
  br label %bb.av

.thread:                                          ; preds = %bb.au
  %i.agv = sub nuw i64 %i.bu, %.sroa.0368.0
  call fastcc void @_RNvMNtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB2_7ReplaceINtNtB4_8patience8PatienceINtNtB6_4text12TextDiffSideeEB1q_INtNtB4_7compact7CompactB1q_B1q_IBN_NtNtB4_7capture7CaptureEEEE8flush_eqCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(208) %0)
  %.sroa.01.0.copyload.i316 = load i64, ptr %i.cf, align 8, !alias.scope !4291
  %.sroa.52.0.copyload.i318 = load i64, ptr %.sroa.52.0..sroa_idx.i116, align 8, !alias.scope !4291
  %.sroa.6.0.copyload.i320 = load i64, ptr %.sroa.6.0..sroa_idx.i118, align 8, !alias.scope !4291
  %.sroa.7.0.copyload.i322 = load i64, ptr %.sroa.7.0..sroa_idx.i120, align 8, !alias.scope !4291
  %i.agw = trunc nuw i64 %.sroa.01.0.copyload.i316 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i323 = select i1 %i.agw, i64 %.sroa.52.0.copyload.i318, i64 %.sroa.0.0
  %.sroa.5.sroa.5.0.i324 = select i1 %i.agw, i64 %.sroa.6.0.copyload.i320, i64 %.sroa.0368.0
  %i.agx = select i1 %i.agw, i64 %.sroa.7.0.copyload.i322, i64 0
  %.sroa.5.sroa.6.0.i325 = add i64 %i.agv, %i.agx
  store i64 1, ptr %i.cf, align 8, !alias.scope !4291
  store i64 %.sroa.5.sroa.0.0.i323, ptr %.sroa.52.0..sroa_idx.i116, align 8, !alias.scope !4291
  store i64 %.sroa.5.sroa.5.0.i324, ptr %.sroa.6.0..sroa_idx.i118, align 8, !alias.scope !4291
  store i64 %.sroa.5.sroa.6.0.i325, ptr %.sroa.7.0..sroa_idx.i120, align 8, !alias.scope !4291
  br label %bb.av

bb.jd:                                            ; preds = %bb.av
  store i64 0, ptr %0, align 8, !alias.scope !4294
  store i64 0, ptr %i.cf, align 8, !alias.scope !4294
  %.sroa.01.0.copyload.i326 = load i64, ptr %i.cg, align 8, !alias.scope !4299
  %.sroa.52.0.copyload.i328 = load i64, ptr %.sroa.52.0..sroa_idx.i106, align 8, !alias.scope !4299
  %.sroa.6.0.copyload.i330 = load i64, ptr %.sroa.6.0..sroa_idx.i108, align 8, !alias.scope !4299
  %.sroa.7.0.copyload.i332 = load i64, ptr %.sroa.7.0..sroa_idx.i110, align 8, !alias.scope !4299
  %i.agy = trunc nuw i64 %.sroa.01.0.copyload.i326 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i333 = select i1 %i.agy, i64 %.sroa.52.0.copyload.i328, i64 %i.bt
  %.sroa.5.sroa.5.0.i334 = select i1 %i.agy, i64 %.sroa.6.0.copyload.i330, i64 %i.bu
  %i.agz = select i1 %i.agy, i64 %.sroa.7.0.copyload.i332, i64 0
  %.sroa.5.sroa.6.0.i335 = add i64 %i.agz, %.sroa.0.0.i83
  store i64 1, ptr %i.cg, align 8, !alias.scope !4299
  store i64 %.sroa.5.sroa.0.0.i333, ptr %.sroa.52.0..sroa_idx.i106, align 8, !alias.scope !4299
  store i64 %.sroa.5.sroa.5.0.i334, ptr %.sroa.6.0..sroa_idx.i108, align 8, !alias.scope !4299
  store i64 %.sroa.5.sroa.6.0.i335, ptr %.sroa.7.0..sroa_idx.i110, align 8, !alias.scope !4299
  br label %bb.je

bb.je:                                            ; preds = %bb.av, %bb.jd
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = icmp uge i64 %1, %2
  %i.c = icmp uge i64 %4, %5
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB23_12OffsetLookupjEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3y_5count0ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEBW_EINtB5_7ZipImplBW_BW_E3newCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, i64 noundef %4, i64 noundef %5, i64 noundef %1, i64 noundef %2)
  %.sroa.6.16.copyload = load i64, ptr %i.a, align 8
  %.sroa.82.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.82.16.copyload = load i64, ptr %.sroa.82.16..sroa_idx, align 8
  %.sroa.93.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.93.16.copyload = load i64, ptr %.sroa.93.16..sroa_idx, align 8 ; 3 uses
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.10.16.copyload = load i64, ptr %.sroa.10.16..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = icmp ult i64 %.sroa.93.16.copyload, %.sroa.10.16.copyload
  br i1 %i.d, label %.lr.ph.i.i.i, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB23_12OffsetLookupjEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3y_5count0ECsEhZmuQNqkz_11ruff_linter.exit

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !4300, !noalias !4303, !noundef !4
  %invariant.op.i.i.i = sub i64 %.sroa.6.16.copyload, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !4300, !noalias !4303, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = sub nuw i64 %.sroa.10.16.copyload, %.sroa.93.16.copyload ; 2 uses
  %i.n = load ptr, ptr %i.i, align 8, !nonnull !4
  %i.o = load i64, ptr %i.j, align 8
  %invariant.op = sub i64 %.sroa.82.16.copyload, %i.o
  %i.p = load i64, ptr %i.k, align 8              ; 2 uses
  %i.q = load ptr, ptr %i.l, align 8, !nonnull !4
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.sroa.01.036.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.y, %bb.f ] ; 2 uses
  %i.r = phi i64 [ %.sroa.93.16.copyload, %.lr.ph.i.i.i ], [ %i.s, %bb.f ] ; 3 uses
  %i.s = add nuw i64 %i.r, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4300)
  %.reass.i.i.i = add i64 %i.r, %invariant.op.i.i.i ; 3 uses
  %i.t = icmp ult i64 %.reass.i.i.i, %i.h
  br i1 %i.t, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.reass.i.i.i, i64 noundef %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #28, !noalias !4316
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i: ; preds = %bb.c
  %.reass = add i64 %i.r, %invariant.op           ; 3 uses
  %i.u = icmp ult i64 %.reass, %i.p
  br i1 %i.u, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.reass, i64 noundef %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #28, !noalias !4317
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.reass.i.i.i
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.reass
  %.val.i.i.i.i = load i64, ptr %i.v, align 8, !noalias !4320, !noundef !4
  %.val10.i.i.i.i = load i64, ptr %i.w, align 8, !noalias !4320, !noundef !4
  %i.x = icmp eq i64 %.val.i.i.i.i, %.val10.i.i.i.i
  br i1 %i.x, label %bb.f, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB23_12OffsetLookupjEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3y_5count0ECsEhZmuQNqkz_11ruff_linter.exit

bb.f:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i
  %i.y = add nuw i64 %.sroa.01.036.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.y, %i.m
  br i1 %exitcond.not.i.i.i, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB23_12OffsetLookupjEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3y_5count0ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.c

_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB23_12OffsetLookupjEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3y_5count0ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.f, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i, %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %.sroa.01.036.i.i.i, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i ], [ %i.m, %bb.f ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = icmp uge i64 %1, %2
  %i.c = icmp uge i64 %4, %5
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB23_12OffsetLookupmEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3y_5count0ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.b
end_hunk_2
