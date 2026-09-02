Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_db-92c62a723a4254ca.ruff_db.3b660a75166acdec-cgu.07?download=true
inline.NumInlined: 698
inline.NumDeleted: 210
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB6_4text12TextDiffSideeEB1j_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECs56aZGHL6Dc6_7ruff_db:bb.a
  %i.af = load i64, ptr %i.ac, align 8, !range !7, !alias.scope !1423, !noalias !1424, !noundef !4
  %i.ag = icmp eq i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac), !noalias !1424
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit: ; preds = %bb.d, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !1423, !noalias !1424, !nonnull !4, !noundef !4
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %i.ai, i64 %i.ae ; 4 uses
  store i64 1, ptr %i.aj, align 8, !noalias !1425
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !1425
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %.sroa.04.0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !1425
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i64 %5, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !1425
  %i.ak = add i64 %i.ae, 1
  store i64 %i.ak, ptr %i.ad, align 8, !alias.scope !1423, !noalias !1424
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  %i.al = load ptr, ptr %i.aa, align 8, !alias.scope !1426, !noalias !1427, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 120 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 136 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !1428, !noalias !1429, !noundef !4 ; 3 uses
  %i.ap = load i64, ptr %i.am, align 8, !range !7, !alias.scope !1428, !noalias !1429, !noundef !4
  %i.aq = icmp eq i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.f, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit30

bb.f:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am), !noalias !1429
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit30

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit30: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit, %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !1428, !noalias !1429, !nonnull !4, !noundef !4
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %i.as, i64 %i.ao ; 4 uses
  store i64 2, ptr %i.at, align 8, !noalias !1430
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %2, ptr %.sroa.435.0..sroa_idx, align 8, !noalias !1430
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %5, ptr %.sroa.536.0..sroa_idx, align 8, !noalias !1430
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 %.sroa.011.0, ptr %.sroa.637.0..sroa_idx, align 8, !noalias !1430
  %i.au = add i64 %i.ao, 1
  store i64 %i.au, ptr %i.an, align 8, !alias.scope !1428, !noalias !1429
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29, %bb.b, %bb.a, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit30
  %.sroa.0.0 = phi i1 [ true, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit30 ], [ false, %bb.a ], [ false, %bb.b ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread ], [ false, %bb.c ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB6_4text12TextDiffSideeEB1j_INtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef %8)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.04.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 3 uses
  %.sroa.011.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 3 uses
  %i.b = icmp ult i64 %.sroa.04.0, 512
  %i.c = icmp ult i64 %.sroa.011.0, 512
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.04.0, i64 %.sroa.011.0) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 0
  %i.f = extractvalue { i64, i1 } %i.d, 1
  %i.g = icmp ugt i64 %i.e, 131071
  %or.cond42.not = or i1 %i.f, %i.g
  br i1 %or.cond42.not, label %.thread, label %bb.g, !prof !16

.thread:                                          ; preds = %bb.c
  %i.h = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 1        ; 2 uses
  %i.j = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 1
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %.thread
  %i.m = extractvalue { ptr, i64 } %i.j, 0
  %i.n = extractvalue { ptr, i64 } %i.h, 0
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %i.n, ptr nonnull readonly %i.m, i64 %i.i), !alias.scope !1443
  %i.o = icmp eq i32 %bcmp.i, 0
  br i1 %i.o, label %bb.g, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread: ; preds = %.thread, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit
  %i.p = add i64 %6, -1
  %i.q = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 1        ; 2 uses
  %i.s = add i64 %3, -1
  %i.t = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.t, 1
  %i.v = icmp eq i64 %i.r, %i.u
  br i1 %i.v, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread
  %i.w = extractvalue { ptr, i64 } %i.t, 0
  %i.x = extractvalue { ptr, i64 } %i.q, 0
  %bcmp.i28 = tail call i32 @bcmp(ptr nonnull readonly %i.x, ptr nonnull readonly %i.w, i64 %i.r), !alias.scope !1444
  %i.y = icmp eq i32 %bcmp.i28, 0
  br i1 %i.y, label %bb.g, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29
  %i.z = tail call fastcc noundef i8 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtB6_4text12TextDiffSideeEB15_ECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  %cond = icmp eq i8 %i.z, 0
  br i1 %cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !1445, !noalias !1446, !noundef !4 ; 4 uses
  %i.ad = load i64, ptr %i.aa, align 8, !range !7, !alias.scope !1445, !noalias !1446, !noundef !4
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.e, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa), !noalias !1446
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit: ; preds = %bb.d, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !1445, !noalias !1446, !nonnull !4, !noundef !4
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %i.ac ; 4 uses
  store i64 1, ptr %i.ah, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %.sroa.04.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 %5, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ai = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.ai, ptr %i.ab, align 8, !alias.scope !1445, !noalias !1446
  %i.aj = load i64, ptr %i.aa, align 8, !range !7, !alias.scope !1447, !noalias !1448, !noundef !4
  %i.ak = icmp eq i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.f, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit30

bb.f:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa), !noalias !1448
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit30

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit30: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit, %bb.f
  %i.al = load ptr, ptr %i.af, align 8, !alias.scope !1447, !noalias !1448, !nonnull !4, !noundef !4
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.al, i64 %i.ai ; 4 uses
  store i64 2, ptr %i.am, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %2, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %5, ptr %.sroa.536.0..sroa_idx, align 8
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i64 %.sroa.011.0, ptr %.sroa.637.0..sroa_idx, align 8
  %i.an = add i64 %i.ac, 2
  store i64 %i.an, ptr %i.ab, align 8, !alias.scope !1447, !noalias !1448
  tail call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(160) %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29, %bb.b, %bb.a, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit30
  %.sroa.0.0 = phi i1 [ true, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit30 ], [ false, %bb.a ], [ false, %bb.b ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread ], [ false, %bb.c ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1S_12OffsetLookupmEEEB1j_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2f_B2f_INtNtB4_7compact7CompactB2f_B2f_IB2J_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 13 uses
  %i.e = tail call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef %8)
  br i1 %i.e, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i64 %2, %3
  %i.g = sub nuw i64 %3, %2
  %.sroa.04.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 3 uses
  %i.h = icmp ult i64 %5, %6
  %i.i = sub nuw i64 %6, %5
  %.sroa.011.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 3 uses
  %i.j = icmp ult i64 %.sroa.04.0, 512
  %i.k = icmp ult i64 %.sroa.011.0, 512
  %or.cond = or i1 %i.j, %i.k
  br i1 %or.cond, label %bb.al, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.04.0, i64 %.sroa.011.0) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 0
  %i.n = extractvalue { i64, i1 } %i.l, 1
  %i.o = icmp ugt i64 %i.m, 131071
  %or.cond54.not = or i1 %i.n, %i.o
  br i1 %or.cond54.not, label %.thread, label %bb.al, !prof !16

.thread:                                          ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val40 = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val41 = load i64, ptr %i.q, align 8, !noundef !4 ; 6 uses
  %i.r = icmp ult i64 %5, %.val41
  br i1 %i.r, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit, label %bb.d

bb.d:                                             ; preds = %.thread
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %5, i64 noundef range(i64 0, 576460752303423488) %.val41, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #22, !noalias !1515
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit: ; preds = %.thread
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val38 = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val39 = load i64, ptr %i.t, align 8, !noundef !4 ; 8 uses
  %i.u = icmp ult i64 %2, %.val39
  br i1 %i.u, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit46, label %bb.e

bb.e:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef range(i64 0, 576460752303423488) %.val39, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #22, !noalias !1516
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit46: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.val40, i64 %5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !1517, !noalias !1518, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !1517, !noalias !1518, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1519)
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !1519, !noalias !1520, !noundef !4
  %i.ab = sub i64 %i.y, %i.aa                     ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !1519, !noalias !1520, !noundef !4 ; 2 uses
  %i.ae = icmp ult i64 %i.ab, %i.ad
  br i1 %i.ae, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit24, label %bb.f

bb.f:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit46
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #22, !noalias !1521
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit24: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit46
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.val38, i64 %2 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !1519, !noalias !1520, !nonnull !4, !noundef !4
  %i.ai = load ptr, ptr %i.af, align 8, !alias.scope !1518, !noalias !1517, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !1518, !noalias !1517, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1522)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !1522, !noalias !1523, !noundef !4
  %i.an = sub i64 %i.ak, %i.am                    ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !1522, !noalias !1523, !noundef !4 ; 2 uses
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit, label %bb.g

bb.g:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit24
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.an, i64 noundef %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #22, !noalias !1524
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit24
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ab
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !1522, !noalias !1523, !nonnull !4, !noundef !4
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.an
  %.val30 = load i32, ptr %i.ar, align 4, !noundef !4
  %.val31 = load i32, ptr %i.au, align 4, !noundef !4
  %i.av = icmp eq i32 %.val30, %.val31
  br i1 %i.av, label %bb.al, label %bb.h

bb.h:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit
  %i.aw = add i64 %6, -1                          ; 3 uses
  %i.ax = icmp ult i64 %i.aw, %.val41
  br i1 %i.ax, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit47, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aw, i64 noundef range(i64 0, 576460752303423488) %.val41, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #22, !noalias !1525
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit47: ; preds = %bb.h
  %i.ay = add i64 %3, -1                          ; 3 uses
  %i.az = icmp ult i64 %i.ay, %.val39
  br i1 %i.az, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit48, label %bb.j

bb.j:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit47
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ay, i64 noundef range(i64 0, 576460752303423488) %.val39, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #22, !noalias !1526
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit48: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit47
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.val40, i64 %i.aw ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1528)
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !1527, !noalias !1528, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !1527, !noalias !1528, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1529)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !1529, !noalias !1530, !noundef !4
  %i.bg = sub i64 %i.bd, %i.bf                    ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !1529, !noalias !1530, !noundef !4 ; 2 uses
  %i.bj = icmp ult i64 %i.bg, %i.bi
  br i1 %i.bj, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit26, label %bb.k

bb.k:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit48
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bg, i64 noundef %i.bi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #22, !noalias !1531
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit26: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit48
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %.val38, i64 %i.ay ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !1529, !noalias !1530, !nonnull !4, !noundef !4
  %i.bn = load ptr, ptr %i.bk, align 8, !alias.scope !1528, !noalias !1527, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !1528, !noalias !1527, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1532)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !1532, !noalias !1533, !noundef !4
  %i.bs = sub i64 %i.bp, %i.br                    ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !1532, !noalias !1533, !noundef !4 ; 2 uses
  %i.bv = icmp ult i64 %i.bs, %i.bu
  br i1 %i.bv, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit25, label %bb.l

bb.l:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit26
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bs, i64 noundef %i.bu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #22, !noalias !1534
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit25: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit26
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bg
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !1532, !noalias !1533, !nonnull !4, !noundef !4
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bs
  %.val32 = load i32, ptr %i.bw, align 4, !noundef !4
  %.val33 = load i32, ptr %i.bz, align 4, !noundef !4
  %i.ca = icmp eq i32 %.val32, %.val33
  br i1 %i.ca, label %bb.al, label %bb.m

bb.m:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cb = tail call { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @13) ; 2 uses
  %i.cc = extractvalue { i64, i64 } %i.cb, 0
  %i.cd = extractvalue { i64, i64 } %i.cb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @15, i64 32, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store i64 %i.cc, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.cd, ptr %.sroa.5.0..sroa_idx.i, align 8
  br i1 %i.f, label %.lr.ph.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.preheader.i

.lr.ph.i:                                         ; preds = %bb.m
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %9 = tail call i64 @llvm.usub.sat.i64(i64 %.val39, i64 %2)
  br label %bb.n

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.preheader.i: ; preds = %bb.aj, %bb.m
  br i1 %i.h, label %.lr.ph106.i, label %.loopexit

.lr.ph106.i:                                      ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.preheader.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %10 = call i64 @llvm.usub.sat.i64(i64 %.val41, i64 %5)
  br label %bb.o

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.t, %bb.p
  %lpad.loopexit54.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.ai, %bb.af, %bb.ad, %bb.aa
  %lpad.loopexit58.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit54.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit58.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjEEECs56aZGHL6Dc6_7ruff_db.exit.i unwind label %bb.ak

bb.n:                                             ; preds = %bb.aj, %.lr.ph.i
  %.sroa.0.030103.i = phi i64 [ %2, %.lr.ph.i ], [ %i.ch, %bb.aj ] ; 4 uses
  %.sroa.8.0102.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ci, %bb.aj ] ; 3 uses
  %i.ch = add nuw i64 %.sroa.0.030103.i, 1
  %i.ci = add nuw i64 %.sroa.8.0102.i, 1          ; 2 uses
  %i.cj = and i64 %.sroa.8.0102.i, 1023
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.aa, label %bb.ab

bb.o:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i, %.lr.ph106.i
  %.sroa.011.0105.i = phi i64 [ %5, %.lr.ph106.i ], [ %i.cl, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i ] ; 3 uses
  %.sroa.813.0104.i = phi i64 [ 0, %.lr.ph106.i ], [ %i.cm, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i ] ; 3 uses
  %i.cl = add nuw i64 %.sroa.011.0105.i, 1
  %i.cm = add nuw i64 %.sroa.813.0104.i, 1        ; 2 uses
  %i.cn = and i64 %.sroa.813.0104.i, 1023
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cp = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %11 unwind label %.loopexit.split-lp.loopexit.i

11:                                               ; preds = %bb.p
  br i1 %i.cp, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1E_12OffsetLookupmEEEB15_ECs56aZGHL6Dc6_7ruff_db.exit.thread, label %bb.q

bb.q:                                             ; preds = %11, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %exitcond155.not.i = icmp eq i64 %.sroa.813.0104.i, %10
  br i1 %exitcond155.not.i, label %.invoke.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %.val40, i64 %.sroa.011.0105.i ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !1535, !noalias !1536, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !1535, !noalias !1536, !noundef !4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !1537, !noalias !1538, !noundef !4
  %i.cw = sub i64 %i.ct, %i.cv                    ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !1537, !noalias !1538, !noundef !4 ; 2 uses
  %i.cz = icmp ult i64 %i.cw, %i.cy
  br i1 %i.cz, label %bb.s, label %.invoke.i

.invoke.i:                                        ; preds = %bb.ac, %bb.ab, %bb.r, %bb.q, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit1.i.i.i, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i.i.i, %.lr.ph
  %12 = phi i64 [ %i.fo, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit1.i.i.i ], [ %i.cw, %bb.r ], [ %i.fe, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i.i.i ], [ %.val4.i.i, %.lr.ph ], [ %.sroa.011.0105.i, %bb.q ], [ %i.gg, %bb.ac ], [ %.sroa.0.030103.i, %bb.ab ]
  %13 = phi i64 [ %i.fq, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit1.i.i.i ], [ %i.cy, %bb.r ], [ %i.fg, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i.i.i ], [ %.val39, %.lr.ph ], [ %.val41, %bb.q ], [ %i.gi, %bb.ac ], [ %.val39, %bb.ab ]
  %14 = phi ptr [ @35, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit1.i.i.i ], [ @35, %bb.r ], [ @35, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i.i.i ], [ @40, %.lr.ph ], [ @27, %bb.q ], [ @35, %bb.ac ], [ @29, %bb.ab ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %12, i64 noundef %13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %14) #22
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.da = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !alias.scope !1537, !noalias !1538, !nonnull !4, !noundef !4
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.cw
  %.val.i = load i32, ptr %i.dc, align 4, !noundef !4 ; 4 uses
  %.sroa.4.0.extract.shift.i.i.i = lshr i32 %.val.i, 8
  %.sroa.5.0.extract.shift.i.i.i = lshr i32 %.val.i, 16
  %.sroa.6.0.extract.shift.i.i.i = lshr i32 %.val.i, 24
  %.sroa.6.0.extract.trunc.i.i.i = zext nneg i32 %.sroa.6.0.extract.shift.i.i.i to i64
  %i.dd = and i32 %.val.i, 255
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = xor i64 %i.de, -3750763034362895579
  %i.dg = mul i64 %i.df, 1099511628211
  %i.dh = and i32 %.sroa.4.0.extract.shift.i.i.i, 255
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = xor i64 %i.dg, %i.di
  %i.dk = mul i64 %i.dj, 1099511628211
  %i.dl = and i32 %.sroa.5.0.extract.shift.i.i.i, 255
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = xor i64 %i.dk, %i.dm
  %i.do = mul i64 %i.dn, 1099511628211
  %i.dp = xor i64 %i.do, %.sroa.6.0.extract.trunc.i.i.i
  %i.dq = mul i64 %i.dp, 1099511628211
  store i64 %i.dq, ptr %i.c, align 8
  %i.dr = load i64, ptr %i.cf, align 8, !alias.scope !1539, !noalias !1540, !noundef !4
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dt = invoke noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRyECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc29.i unwind label %.loopexit.split-lp.loopexit.i ; 2 uses

.noexc29.i:                                       ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !1541)
  call void @llvm.experimental.noalias.scope.decl(metadata !1542)
  %i.du = lshr i64 %i.dt, 57
  %i.dv = trunc nuw nsw i64 %i.du to i8
  %i.dw = load i64, ptr %i.cg, align 8, !alias.scope !1543, !noalias !1544, !noundef !4 ; 2 uses
  %i.dx = load ptr, ptr %i.d, align 8, !alias.scope !1543, !noalias !1544, !nonnull !4, !noundef !4 ; 2 uses
  %i.dy = insertelement <16 x i8> poison, i8 %i.dv, i64 0
  %i.dz = shufflevector <16 x i8> %i.dy, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %.noexc29.i
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.noexc29.i ], [ %i.eq, %bb.w ]
  %.pn.i.i.i.i = phi i64 [ %i.dt, %.noexc29.i ], [ %i.er, %bb.w ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.dw ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.ea, align 1, !noalias !1545 ; 2 uses
  %i.eb = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %i.dz
  %i.ec = bitcast <16 x i1> %i.eb to i16          ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.ec, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.u, %bb.v
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.ep, %bb.v ], [ %i.ec, %bb.u ] ; 3 uses
  %i.ed = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.ee = zext nneg i16 %i.ed to i64
  %i.ef = add i64 %.sroa.01.0.i.i.i.i, %i.ee
  %i.eg = and i64 %i.ef, %i.dw
  %i.eh = sub nsw i64 0, %i.eg
  %i.ei = getelementptr inbounds [32 x i8], ptr %i.dx, i64 %i.eh ; 3 uses
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 -32
  %i.ek = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownyINtB2_10EquivalentyE10equivalentCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ej)
          to label %.noexc30.i unwind label %.loopexit.i

.noexc30.i:                                       ; preds = %.lr.ph.i.i.i
  br i1 %i.ek, label %bb.x, label %bb.v, !prof !10

._crit_edge.i.i.i:                                ; preds = %bb.v, %bb.u
  %i.el = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.em = bitcast <16 x i1> %i.el to i16
  %i.en = icmp eq i16 %i.em, 0
  br i1 %i.en, label %bb.w, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i, !prof !6

bb.v:                                             ; preds = %.noexc30.i
  %i.eo = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.ep = and i16 %i.eo, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.ep, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.w:                                             ; preds = %._crit_edge.i.i.i
  %i.eq = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.er = add i64 %.sroa.01.0.i.i.i.i, %i.eq
  br label %bb.u

bb.x:                                             ; preds = %.noexc30.i
  %i.es = getelementptr inbounds i8, ptr %i.ei, i64 -16
  %i.et = load ptr, ptr %i.es, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %i.ei, i64 -8
  %i.ev = load i64, ptr %i.eu, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ev, 3
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 %.idx
  %.not.not.not.i.not.i147 = icmp eq i64 %i.ev, 0
  br i1 %.not.not.not.i.not.i147, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i, label %.lr.ph

bb.y:                                             ; preds = %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_E0Cs56aZGHL6Dc6_7ruff_db.exit.i.i
  %.not.not.not.i.not.i = icmp eq ptr %i.ey, %i.ew
  br i1 %.not.not.not.i.not.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x, %bb.y
  %i.ex = phi ptr [ %i.ey, %bb.y ], [ %i.et, %bb.x ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 2 uses
  %.val4.i.i = load i64, ptr %i.ex, align 8, !noalias !1546, !noundef !4 ; 3 uses
  %i.ez = icmp ult i64 %.val4.i.i, %.val39
  br i1 %i.ez, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i.i.i, label %.invoke.i

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i.i.i: ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !1547)
  call void @llvm.experimental.noalias.scope.decl(metadata !1548)
  %i.fa = load ptr, ptr %i.cq, align 8, !alias.scope !1547, !noalias !1549, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.fb = load i64, ptr %i.cs, align 8, !alias.scope !1547, !noalias !1549, !noundef !4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fd = load i64, ptr %i.fc, align 8, !alias.scope !1550, !noalias !1551, !noundef !4
  %i.fe = sub i64 %i.fb, %i.fd                    ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !1550, !noalias !1551, !noundef !4 ; 2 uses
  %i.fh = icmp ult i64 %i.fe, %i.fg
  br i1 %i.fh, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit1.i.i.i, label %.invoke.i

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit1.i.i.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i.i.i
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %.val38, i64 %.val4.i.i ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !alias.scope !1548, !noalias !1552, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !alias.scope !1548, !noalias !1552, !noundef !4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fn = load i64, ptr %i.fm, align 8, !alias.scope !1553, !noalias !1554, !noundef !4
  %i.fo = sub i64 %i.fl, %i.fn                    ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !1553, !noalias !1554, !noundef !4 ; 2 uses
  %i.fr = icmp ult i64 %i.fo, %i.fq
  br i1 %i.fr, label %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_E0Cs56aZGHL6Dc6_7ruff_db.exit.i.i, label %.invoke.i

_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_E0Cs56aZGHL6Dc6_7ruff_db.exit.i.i: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit1.i.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !alias.scope !1550, !noalias !1551, !nonnull !4, !noundef !4
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.fe
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !alias.scope !1553, !noalias !1554, !nonnull !4, !noundef !4
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.fo
  %.val.i.i.i = load i32, ptr %i.fu, align 4, !noalias !1546, !noundef !4
  %.val2.i.i.i = load i32, ptr %i.fx, align 4, !noalias !1546, !noundef !4
  %i.fy = icmp eq i32 %.val.i.i.i, %.val2.i.i.i
  br i1 %i.fy, label %bb.z, label %bb.y

bb.z:                                             ; preds = %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_E0Cs56aZGHL6Dc6_7ruff_db.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1E_12OffsetLookupmEEEB15_ECs56aZGHL6Dc6_7ruff_db.exit.thread

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i: ; preds = %._crit_edge.i.i.i, %bb.y, %bb.x, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %exitcond156.not.i = icmp eq i64 %i.cm, %i.i
  br i1 %exitcond156.not.i, label %.loopexit, label %bb.o

bb.aa:                                            ; preds = %bb.n
  %i.fz = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

15:                                               ; preds = %bb.aa
  br i1 %i.fz, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1E_12OffsetLookupmEEEB15_ECs56aZGHL6Dc6_7ruff_db.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %15, %bb.n
  %exitcond.not.i = icmp eq i64 %.sroa.8.0102.i, %9
  br i1 %exitcond.not.i, label %.invoke.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %.val38, i64 %.sroa.0.030103.i ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !alias.scope !1555, !noalias !1556, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !alias.scope !1555, !noalias !1556, !noundef !4
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gf = load i64, ptr %i.ge, align 8, !alias.scope !1557, !noalias !1558, !noundef !4
  %i.gg = sub i64 %i.gd, %i.gf                    ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !1557, !noalias !1558, !noundef !4 ; 2 uses
  %i.gj = icmp ult i64 %i.gg, %i.gi
  br i1 %i.gj, label %bb.ad, label %.invoke.i

bb.ad:                                            ; preds = %bb.ac
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !alias.scope !1557, !noalias !1558, !nonnull !4, !noundef !4
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.gg
  %.val18.i = load i32, ptr %i.gm, align 4, !noundef !4 ; 4 uses
  %.sroa.4.0.extract.shift.i.i38.i = lshr i32 %.val18.i, 8
  %.sroa.5.0.extract.shift.i.i39.i = lshr i32 %.val18.i, 16
  %.sroa.6.0.extract.shift.i.i40.i = lshr i32 %.val18.i, 24
  %.sroa.6.0.extract.trunc.i.i41.i = zext nneg i32 %.sroa.6.0.extract.shift.i.i40.i to i64
  %i.gn = and i32 %.val18.i, 255
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = xor i64 %i.go, -3750763034362895579
  %i.gq = mul i64 %i.gp, 1099511628211
  %i.gr = and i32 %.sroa.4.0.extract.shift.i.i38.i, 255
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = xor i64 %i.gq, %i.gs
  %i.gu = mul i64 %i.gt, 1099511628211
  %i.gv = and i32 %.sroa.5.0.extract.shift.i.i39.i, 255
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = xor i64 %i.gu, %i.gw
  %i.gy = mul i64 %i.gx, 1099511628211
  %i.gz = xor i64 %i.gy, %.sroa.6.0.extract.trunc.i.i41.i
  %i.ha = mul i64 %i.gz, 1099511628211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE11rustc_entryCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d, i64 noundef %i.ha)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.ae:                                            ; preds = %bb.ad
  %i.hb = load ptr, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %.not10.i = icmp eq ptr %i.hb, null
  br i1 %.not10.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.426.0.copyload.i = load i64, ptr %.sroa.426.0..sroa_idx.i, align 8
  %.sroa.527.0.copyload.i = load i64, ptr %.sroa.527.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1559
  store i64 %.sroa.527.0.copyload.i, ptr %i.a, align 8, !noalias !1559
  store i64 0, ptr %i.ce, align 8, !noalias !1559
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1559
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1559
  %i.hc = invoke noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEE14insert_no_growCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.hb, i64 noundef %.sroa.426.0.copyload.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.noexc45.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc45.i:                                       ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1559
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.hd = load ptr, ptr %.sroa.426.0..sroa_idx.i, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.noexc45.i
  %.pn.i.i = phi ptr [ %i.hc, %.noexc45.i ], [ %i.hd, %bb.ag ] ; 3 uses
  %.sroa.0.0.i44.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -24 ; 2 uses
  %i.he = getelementptr inbounds i8, ptr %.pn.i.i, i64 -8 ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8, !alias.scope !1560, !noundef !4 ; 3 uses
  %i.hg = load i64, ptr %.sroa.0.0.i44.i, align 8, !range !7, !alias.scope !1560, !noundef !4
  %i.hh = icmp eq i64 %i.hf, %i.hg
  br i1 %i.hh, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs2isvxI5XMib_9quick_xml(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i44.i)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.hi = getelementptr inbounds i8, ptr %.pn.i.i, i64 -16
  %i.hj = load ptr, ptr %i.hi, align 8, !alias.scope !1560, !nonnull !4, !noundef !4
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.hf
  store i64 %.sroa.0.030103.i, ptr %i.hk, align 8
  %i.hl = add i64 %i.hf, 1
  store i64 %i.hl, ptr %i.he, align 8, !alias.scope !1560
  %exitcond153.not.i = icmp eq i64 %i.ci, %i.g
  br i1 %exitcond153.not.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.preheader.i, label %bb.n

bb.ak:                                            ; preds = %.loopexit.split-lp.i
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjEEECs56aZGHL6Dc6_7ruff_db.exit.i: ; preds = %.loopexit.split-lp.i
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1E_12OffsetLookupmEEEB15_ECs56aZGHL6Dc6_7ruff_db.exit.thread: ; preds = %15, %11, %bb.z
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.al

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.preheader.i
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %2, i64 noundef %.sroa.04.0, i64 noundef %5)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %2, i64 noundef %5, i64 noundef %.sroa.011.0)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6finishCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(208) %0)
  br label %bb.al

bb.al:                                            ; preds = %bb.c, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1E_12OffsetLookupmEEEB15_ECs56aZGHL6Dc6_7ruff_db.exit.thread, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit25, %bb.b, %bb.a, %.loopexit
  %.sroa.0.0 = phi i1 [ true, %.loopexit ], [ false, %bb.a ], [ false, %bb.b ], [ false, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit ], [ false, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1E_12OffsetLookupmEEEB15_ECs56aZGHL6Dc6_7ruff_db.exit.thread ], [ false, %bb.c ], [ false, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit25 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1j_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2f_B2f_INtNtB4_7compact7CompactB2f_B2f_IB2P_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 13 uses
  %i.e = tail call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef %8)
  br i1 %i.e, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i64 %2, %3
  %i.g = sub nuw i64 %3, %2
  %.sroa.04.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 3 uses
  %i.h = icmp ult i64 %5, %6
  %i.i = sub nuw i64 %6, %5
  %.sroa.011.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 3 uses
  %i.j = icmp ult i64 %.sroa.04.0, 512
  %i.k = icmp ult i64 %.sroa.011.0, 512
  %or.cond = or i1 %i.j, %i.k
  br i1 %or.cond, label %bb.ab, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.04.0, i64 %.sroa.011.0) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 0
  %i.n = extractvalue { i64, i1 } %i.l, 1
  %i.o = icmp ugt i64 %i.m, 131071
  %or.cond53.not = or i1 %i.n, %i.o
  br i1 %or.cond53.not, label %.thread, label %bb.ab, !prof !16

.thread:                                          ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val33 = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val34 = load i64, ptr %i.q, align 8, !noundef !4 ; 6 uses
  %i.r = icmp ult i64 %5, %.val34
  br i1 %i.r, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit, label %bb.d

bb.d:                                             ; preds = %.thread
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %5, i64 noundef range(i64 0, 576460752303423488) %.val34, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #22, !noalias !1632
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit: ; preds = %.thread
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val31 = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val32 = load i64, ptr %i.t, align 8, !noundef !4 ; 8 uses
  %i.u = icmp ult i64 %2, %.val32
  br i1 %i.u, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit39, label %bb.e

bb.e:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef range(i64 0, 576460752303423488) %.val32, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #22, !noalias !1633
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit39: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.val33, i64 %5 ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.val31, i64 %2 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1635)
  %i.x = load ptr, ptr %i.v, align 8, !alias.scope !1634, !noalias !1635, !nonnull !4, !align !5, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !1634, !noalias !1635, !noundef !4
  %i.aa = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x, i64 noundef %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35), !noalias !1636 ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 1      ; 2 uses
  %i.ac = load ptr, ptr %i.w, align 8, !alias.scope !1635, !noalias !1634, !nonnull !4, !align !5, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !1635, !noalias !1634, !noundef !4
  %i.af = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ac, i64 noundef %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35), !noalias !1636 ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 1
  %i.ah = icmp eq i64 %i.ab, %i.ag
  br i1 %i.ah, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit39
  %i.ai = extractvalue { ptr, i64 } %i.af, 0
  %i.aj = extractvalue { ptr, i64 } %i.aa, 0
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %i.aj, ptr nonnull readonly %i.ai, i64 %i.ab), !alias.scope !1637, !noalias !1636
  %i.ak = icmp eq i32 %bcmp.i, 0
  br i1 %i.ak, label %bb.ab, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit39, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit
  %i.al = add i64 %6, -1                          ; 3 uses
  %i.am = icmp ult i64 %i.al, %.val34
  br i1 %i.am, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit40, label %bb.f

bb.f:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef range(i64 0, 576460752303423488) %.val34, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #22, !noalias !1638
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit40: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread
  %i.an = add i64 %3, -1                          ; 3 uses
  %i.ao = icmp ult i64 %i.an, %.val32
  br i1 %i.ao, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit41, label %bb.g

bb.g:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit40
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.an, i64 noundef range(i64 0, 576460752303423488) %.val32, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #22, !noalias !1639
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit41: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit40
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.val33, i64 %i.al ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val31, i64 %i.an ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1640)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  %i.ar = load ptr, ptr %i.ap, align 8, !alias.scope !1640, !noalias !1641, !nonnull !4, !align !5, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !1640, !noalias !1641, !noundef !4
  %i.au = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ar, i64 noundef %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35), !noalias !1642 ; 2 uses
  %i.av = extractvalue { ptr, i64 } %i.au, 1      ; 2 uses
  %i.aw = load ptr, ptr %i.aq, align 8, !alias.scope !1641, !noalias !1640, !nonnull !4, !align !5, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !1641, !noalias !1640, !noundef !4
  %i.az = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aw, i64 noundef %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35), !noalias !1642 ; 2 uses
  %i.ba = extractvalue { ptr, i64 } %i.az, 1
  %i.bb = icmp eq i64 %i.av, %i.ba
  br i1 %i.bb, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit41
  %i.bc = extractvalue { ptr, i64 } %i.az, 0
  %i.bd = extractvalue { ptr, i64 } %i.au, 0
  %bcmp.i43 = tail call i32 @bcmp(ptr nonnull readonly %i.bd, ptr nonnull readonly %i.bc, i64 %i.av), !alias.scope !1643, !noalias !1642
  %i.be = icmp eq i32 %bcmp.i43, 0
  br i1 %i.be, label %bb.ab, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44.thread: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit41, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bf = tail call { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @13) ; 2 uses
  %i.bg = extractvalue { i64, i64 } %i.bf, 0
  %i.bh = extractvalue { i64, i64 } %i.bf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @15, i64 32, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store i64 %i.bg, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.bh, ptr %.sroa.5.0..sroa_idx.i, align 8
  br i1 %i.f, label %.lr.ph.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.preheader.i

.lr.ph.i:                                         ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44.thread
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %9 = tail call i64 @llvm.usub.sat.i64(i64 %.val32, i64 %2)
  br label %bb.h

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.preheader.i: ; preds = %bb.z, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44.thread
  br i1 %i.h, label %.lr.ph89.i, label %.loopexit

.lr.ph89.i:                                       ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.preheader.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %10 = call i64 @llvm.usub.sat.i64(i64 %.val34, i64 %5)
  br label %bb.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i24.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.noexc31.i, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i.i.i
  %lpad.loopexit55.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.m, %bb.l, %bb.j
  %lpad.loopexit60.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.y, %bb.v, %.loopexit63.i, %bb.t, %bb.r
  %lpad.loopexit64.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.invoke.i
  %lpad.loopexit.split-lp65.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit55.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit60.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit64.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp65.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjEEECs56aZGHL6Dc6_7ruff_db.exit.i unwind label %bb.aa

bb.h:                                             ; preds = %bb.z, %.lr.ph.i
  %.sroa.0.03086.i = phi i64 [ %2, %.lr.ph.i ], [ %i.bl, %bb.z ] ; 4 uses
  %.sroa.8.085.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bm, %bb.z ] ; 3 uses
  %i.bl = add nuw i64 %.sroa.0.03086.i, 1
  %i.bm = add nuw i64 %.sroa.8.085.i, 1           ; 2 uses
  %i.bn = and i64 %.sroa.8.085.i, 1023
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.r, label %bb.s

bb.i:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i, %.lr.ph89.i
  %.sroa.011.088.i = phi i64 [ %5, %.lr.ph89.i ], [ %i.bp, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i ] ; 3 uses
  %.sroa.813.087.i = phi i64 [ 0, %.lr.ph89.i ], [ %i.bq, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i ] ; 3 uses
  %i.bp = add nuw i64 %.sroa.011.088.i, 1
  %i.bq = add nuw i64 %.sroa.813.087.i, 1         ; 2 uses
  %i.br = and i64 %.sroa.813.087.i, 1023
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bt = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

11:                                               ; preds = %bb.j
  br i1 %i.bt, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_ECs56aZGHL6Dc6_7ruff_db.exit.thread, label %bb.k

bb.k:                                             ; preds = %11, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %exitcond110.not.i = icmp eq i64 %.sroa.813.087.i, %10
  br i1 %exitcond110.not.i, label %.invoke.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %.val33, i64 %.sroa.011.088.i ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !1644, !noalias !1645, !nonnull !4, !align !5, !noundef !4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !1644, !noalias !1645, !noundef !4
  %i.by = invoke { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bv, i64 noundef %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35)
          to label %.noexc12.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 2 uses

.noexc12.i:                                       ; preds = %bb.l
  %i.bz = extractvalue { ptr, i64 } %i.by, 0      ; 2 uses
  %i.ca = extractvalue { ptr, i64 } %i.by, 1      ; 4 uses
  %i.cb = icmp samesign eq i64 %i.ca, 0
  br i1 %i.cb, label %.loopexit59.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.noexc12.i
  %xtraiter176 = and i64 %i.ca, 7                 ; 3 uses
  %i.cc = icmp ult i64 %i.ca, 8
  br i1 %i.cc, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter183 = and i64 %i.ca, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.0.i1.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.preheader.new ], [ %i.dn, %.lr.ph.i.i.i ] ; 9 uses
  %i.cd = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.preheader.new ], [ %i.dr, %.lr.ph.i.i.i ]
  %niter184 = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter184.next.7, %.lr.ph.i.i.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 1
  %i.cf = load i8, ptr %.sroa.0.0.i1.i.i.i, align 1, !alias.scope !1646, !noalias !1647, !noundef !4
  %i.cg = zext i8 %i.cf to i64
  %i.ch = xor i64 %i.cd, %i.cg
  %i.ci = mul i64 %i.ch, 1099511628211
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 2
  %i.ck = load i8, ptr %i.ce, align 1, !alias.scope !1646, !noalias !1647, !noundef !4
  %i.cl = zext i8 %i.ck to i64
  %i.cm = xor i64 %i.ci, %i.cl
  %i.cn = mul i64 %i.cm, 1099511628211
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 3
  %i.cp = load i8, ptr %i.cj, align 1, !alias.scope !1646, !noalias !1647, !noundef !4
  %i.cq = zext i8 %i.cp to i64
  %i.cr = xor i64 %i.cn, %i.cq
  %i.cs = mul i64 %i.cr, 1099511628211
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 4
  %i.cu = load i8, ptr %i.co, align 1, !alias.scope !1646, !noalias !1647, !noundef !4
  %i.cv = zext i8 %i.cu to i64
  %i.cw = xor i64 %i.cs, %i.cv
  %i.cx = mul i64 %i.cw, 1099511628211
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 5
  %i.cz = load i8, ptr %i.ct, align 1, !alias.scope !1646, !noalias !1647, !noundef !4
  %i.da = zext i8 %i.cz to i64
  %i.db = xor i64 %i.cx, %i.da
  %i.dc = mul i64 %i.db, 1099511628211
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 6
  %i.de = load i8, ptr %i.cy, align 1, !alias.scope !1646, !noalias !1647, !noundef !4
  %i.df = zext i8 %i.de to i64
  %i.dg = xor i64 %i.dc, %i.df
  %i.dh = mul i64 %i.dg, 1099511628211
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 7
  %i.dj = load i8, ptr %i.dd, align 1, !alias.scope !1646, !noalias !1647, !noundef !4
  %i.dk = zext i8 %i.dj to i64
  %i.dl = xor i64 %i.dh, %i.dk
  %i.dm = mul i64 %i.dl, 1099511628211
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 8 ; 2 uses
  %i.do = load i8, ptr %i.di, align 1, !alias.scope !1646, !noalias !1647, !noundef !4
  %i.dp = zext i8 %i.do to i64
  %i.dq = xor i64 %i.dm, %i.dp
  %i.dr = mul i64 %i.dq, 1099511628211            ; 3 uses
  %niter184.next.7 = add nuw i64 %niter184, 8     ; 2 uses
  %niter184.ncmp.7 = icmp eq i64 %niter184.next.7, %unroll_iter183
  br i1 %niter184.ncmp.7, label %.loopexit59.loopexit.i.unr-lcssa, label %.lr.ph.i.i.i

.loopexit59.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i.i.i
  %lcmp.mod180.not = icmp eq i64 %xtraiter176, 0
  br i1 %lcmp.mod180.not, label %.loopexit59.loopexit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit59.loopexit.i.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.sroa.0.0.i1.i.i.i.epil.init = phi ptr [ %i.bz, %.lr.ph.i.i.i.preheader ], [ %i.dn, %.loopexit59.loopexit.i.unr-lcssa ]
  %.epil.init179 = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.preheader ], [ %i.dr, %.loopexit59.loopexit.i.unr-lcssa ]
  %lcmp.mod182 = icmp ne i64 %xtraiter176, 0
  call void @llvm.assume(i1 %lcmp.mod182)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.sroa.0.0.i1.i.i.i.epil = phi ptr [ %i.dt, %.lr.ph.i.i.i.epil ], [ %.sroa.0.0.i1.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %i.ds = phi i64 [ %i.dx, %.lr.ph.i.i.i.epil ], [ %.epil.init179, %.lr.ph.i.i.i.epil.preheader ]
  %epil.iter177 = phi i64 [ %epil.iter177.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i.epil, i64 1
  %i.du = load i8, ptr %.sroa.0.0.i1.i.i.i.epil, align 1, !alias.scope !1646, !noalias !1647, !noundef !4
  %i.dv = zext i8 %i.du to i64
  %i.dw = xor i64 %i.ds, %i.dv
  %i.dx = mul i64 %i.dw, 1099511628211            ; 2 uses
  %epil.iter177.next = add i64 %epil.iter177, 1   ; 2 uses
  %epil.iter177.cmp.not = icmp eq i64 %epil.iter177.next, %xtraiter176
  br i1 %epil.iter177.cmp.not, label %.loopexit59.loopexit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !1593

.loopexit59.loopexit.i:                           ; preds = %.lr.ph.i.i.i.epil, %.loopexit59.loopexit.i.unr-lcssa
  %.lcssa = phi i64 [ %i.dr, %.loopexit59.loopexit.i.unr-lcssa ], [ %i.dx, %.lr.ph.i.i.i.epil ]
  %i.dy = xor i64 %.lcssa, 255
  %i.dz = mul i64 %i.dy, 1099511628211
  br label %.loopexit59.i

.loopexit59.i:                                    ; preds = %.loopexit59.loopexit.i, %.noexc12.i
  %.promoted.i.i.i.i = phi i64 [ -5808391946409677970, %.noexc12.i ], [ %i.dz, %.loopexit59.loopexit.i ]
  store i64 %.promoted.i.i.i.i, ptr %i.c, align 8
  %i.ea = load i64, ptr %i.bj, align 8, !alias.scope !1648, !noalias !1649, !noundef !4
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i, label %bb.m

bb.m:                                             ; preds = %.loopexit59.i
  %i.ec = invoke noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRyECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc25.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 2 uses

.noexc25.i:                                       ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !1650)
  call void @llvm.experimental.noalias.scope.decl(metadata !1651)
  %i.ed = lshr i64 %i.ec, 57
  %i.ee = trunc nuw nsw i64 %i.ed to i8
  %i.ef = load i64, ptr %i.bk, align 8, !alias.scope !1652, !noalias !1653, !noundef !4 ; 2 uses
  %i.eg = load ptr, ptr %i.d, align 8, !alias.scope !1652, !noalias !1653, !nonnull !4, !noundef !4 ; 2 uses
  %i.eh = insertelement <16 x i8> poison, i8 %i.ee, i64 0
  %i.ei = shufflevector <16 x i8> %i.eh, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.noexc25.i
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.noexc25.i ], [ %i.ez, %bb.p ]
  %.pn.i.i.i.i = phi i64 [ %i.ec, %.noexc25.i ], [ %i.fa, %bb.p ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.ef ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.ej, align 1, !noalias !1654 ; 2 uses
  %i.ek = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %i.ei
  %i.el = bitcast <16 x i1> %i.ek to i16          ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.el, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i24.i

.lr.ph.i.i24.i:                                   ; preds = %bb.n, %bb.o
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.ey, %bb.o ], [ %i.el, %bb.n ] ; 3 uses
  %i.em = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.en = zext nneg i16 %i.em to i64
  %i.eo = add i64 %.sroa.01.0.i.i.i.i, %i.en
  %i.ep = and i64 %i.eo, %i.ef
  %i.eq = sub nsw i64 0, %i.ep
  %i.er = getelementptr inbounds [32 x i8], ptr %i.eg, i64 %i.eq ; 3 uses
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -32
  %i.et = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownyINtB2_10EquivalentyE10equivalentCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.es)
          to label %.noexc26.i unwind label %.loopexit.i

.noexc26.i:                                       ; preds = %.lr.ph.i.i24.i
  br i1 %i.et, label %bb.q, label %bb.o, !prof !10

._crit_edge.i.i.i:                                ; preds = %bb.o, %bb.n
  %i.eu = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.ev = bitcast <16 x i1> %i.eu to i16
  %i.ew = icmp eq i16 %i.ev, 0
  br i1 %i.ew, label %bb.p, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i, !prof !6

bb.o:                                             ; preds = %.noexc26.i
  %i.ex = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.ey = and i16 %i.ex, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.ey, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i24.i

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %i.ez = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.fa = add i64 %.sroa.01.0.i.i.i.i, %i.ez
  br label %bb.n

bb.q:                                             ; preds = %.noexc26.i
  %i.fb = getelementptr inbounds i8, ptr %i.er, i64 -16
  %i.fc = load ptr, ptr %i.fb, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %i.er, i64 -8
  %i.fe = load i64, ptr %i.fd, align 8, !noundef !4 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.fe, 3
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.idx.i
  %.not.i29.i = icmp eq i64 %i.fe, 0
  br i1 %.not.i29.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0Cs56aZGHL6Dc6_7ruff_db.exit.backedge.i.i
  %i.fg = phi ptr [ %i.fh, %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0Cs56aZGHL6Dc6_7ruff_db.exit.backedge.i.i ], [ %i.fc, %bb.q ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 2 uses
  %.val4.i.i = load i64, ptr %i.fg, align 8, !noalias !1655, !noundef !4 ; 3 uses
  %i.fi = icmp ult i64 %.val4.i.i, %.val32
  br i1 %i.fi, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i.i.i, label %.invoke.i

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i.i.i: ; preds = %.lr.ph.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1656)
  call void @llvm.experimental.noalias.scope.decl(metadata !1657)
  %i.fj = load ptr, ptr %i.bu, align 8, !alias.scope !1656, !noalias !1658, !nonnull !4, !align !5, !noundef !4
  %i.fk = load i64, ptr %i.bw, align 8, !alias.scope !1656, !noalias !1658, !noundef !4
  %i.fl = invoke { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fj, i64 noundef %i.fk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35)
          to label %.noexc31.i unwind label %.loopexit.split-lp.loopexit.i ; 2 uses

.noexc31.i:                                       ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i.i.i
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %.val31, i64 %.val4.i.i ; 2 uses
  %i.fn = extractvalue { ptr, i64 } %i.fl, 1      ; 2 uses
  %i.fo = load ptr, ptr %i.fm, align 8, !alias.scope !1657, !noalias !1659, !nonnull !4, !align !5, !noundef !4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !1657, !noalias !1659, !noundef !4
  %i.fr = invoke { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fo, i64 noundef %i.fq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35)
          to label %.noexc32.i unwind label %.loopexit.split-lp.loopexit.i ; 2 uses

.noexc32.i:                                       ; preds = %.noexc31.i
  %i.fs = extractvalue { ptr, i64 } %i.fr, 1
  %i.ft = icmp eq i64 %i.fn, %i.fs
  br i1 %i.ft, label %.split.i.i, label %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0Cs56aZGHL6Dc6_7ruff_db.exit.backedge.i.i

.split.i.i:                                       ; preds = %.noexc32.i
  %i.fu = extractvalue { ptr, i64 } %i.fr, 0
  %i.fv = extractvalue { ptr, i64 } %i.fl, 0
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %i.fv, ptr nonnull readonly %i.fu, i64 %i.fn), !alias.scope !1660, !noalias !1661
  %i.fw = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.fw, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1I_5utils10UniqueItemINtNtB1K_4text12TextDiffSideeEEEB2J_E0ECs56aZGHL6Dc6_7ruff_db.exit.i, label %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0Cs56aZGHL6Dc6_7ruff_db.exit.backedge.i.i

_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0Cs56aZGHL6Dc6_7ruff_db.exit.backedge.i.i: ; preds = %.split.i.i, %.noexc32.i
  %.not7.i.i = icmp eq ptr %i.fh, %i.ff
  br i1 %.not7.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i, label %.lr.ph.i.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1I_5utils10UniqueItemINtNtB1K_4text12TextDiffSideeEEEB2J_E0ECs56aZGHL6Dc6_7ruff_db.exit.i: ; preds = %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_ECs56aZGHL6Dc6_7ruff_db.exit.thread

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i: ; preds = %._crit_edge.i.i.i, %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0Cs56aZGHL6Dc6_7ruff_db.exit.backedge.i.i, %bb.q, %.loopexit59.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %exitcond111.not.i = icmp eq i64 %i.bq, %i.i
  br i1 %exitcond111.not.i, label %.loopexit, label %bb.i

bb.r:                                             ; preds = %bb.h
  %i.fx = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

12:                                               ; preds = %bb.r
  br i1 %i.fx, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_ECs56aZGHL6Dc6_7ruff_db.exit.thread, label %bb.s

bb.s:                                             ; preds = %12, %bb.h
  %exitcond.not.i = icmp eq i64 %.sroa.8.085.i, %9
  br i1 %exitcond.not.i, label %.invoke.i, label %bb.t

.invoke.i:                                        ; preds = %bb.s, %bb.k, %.lr.ph.i.i
  %13 = phi i64 [ %.val4.i.i, %.lr.ph.i.i ], [ %.sroa.011.088.i, %bb.k ], [ %.sroa.0.03086.i, %bb.s ]
  %14 = phi i64 [ %.val32, %.lr.ph.i.i ], [ %.val34, %bb.k ], [ %.val32, %bb.s ]
  %15 = phi ptr [ @40, %.lr.ph.i.i ], [ @27, %bb.k ], [ @29, %bb.s ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %13, i64 noundef range(i64 0, 576460752303423488) %14, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %15) #22
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %.val31, i64 %.sroa.0.03086.i ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !alias.scope !1662, !noalias !1663, !nonnull !4, !align !5, !noundef !4
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !alias.scope !1662, !noalias !1663, !noundef !4
  %i.gc = invoke { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fz, i64 noundef %i.gb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 2 uses

.noexc.i:                                         ; preds = %bb.t
  %i.gd = extractvalue { ptr, i64 } %i.gc, 0      ; 2 uses
  %i.ge = extractvalue { ptr, i64 } %i.gc, 1      ; 4 uses
  %i.gf = icmp samesign eq i64 %i.ge, 0
  br i1 %i.gf, label %.loopexit63.i, label %.lr.ph.i.i36.i.preheader

.lr.ph.i.i36.i.preheader:                         ; preds = %.noexc.i
  %xtraiter = and i64 %i.ge, 7                    ; 3 uses
  %i.gg = icmp ult i64 %i.ge, 8
  br i1 %i.gg, label %.lr.ph.i.i36.i.epil.preheader, label %.lr.ph.i.i36.i.preheader.new

.lr.ph.i.i36.i.preheader.new:                     ; preds = %.lr.ph.i.i36.i.preheader
  %unroll_iter = and i64 %i.ge, -8
  br label %.lr.ph.i.i36.i

.lr.ph.i.i36.i:                                   ; preds = %.lr.ph.i.i36.i, %.lr.ph.i.i36.i.preheader.new
  %.sroa.0.0.i1.i.i37.i = phi ptr [ %i.gd, %.lr.ph.i.i36.i.preheader.new ], [ %i.hr, %.lr.ph.i.i36.i ] ; 9 uses
  %i.gh = phi i64 [ -3750763034362895579, %.lr.ph.i.i36.i.preheader.new ], [ %i.hv, %.lr.ph.i.i36.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i36.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i36.i ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i37.i, i64 1
  %i.gj = load i8, ptr %.sroa.0.0.i1.i.i37.i, align 1, !alias.scope !1664, !noalias !1665, !noundef !4
  %i.gk = zext i8 %i.gj to i64
  %i.gl = xor i64 %i.gh, %i.gk
  %i.gm = mul i64 %i.gl, 1099511628211
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i37.i, i64 2
  %i.go = load i8, ptr %i.gi, align 1, !alias.scope !1664, !noalias !1665, !noundef !4
  %i.gp = zext i8 %i.go to i64
  %i.gq = xor i64 %i.gm, %i.gp
  %i.gr = mul i64 %i.gq, 1099511628211
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i37.i, i64 3
  %i.gt = load i8, ptr %i.gn, align 1, !alias.scope !1664, !noalias !1665, !noundef !4
  %i.gu = zext i8 %i.gt to i64
  %i.gv = xor i64 %i.gr, %i.gu
  %i.gw = mul i64 %i.gv, 1099511628211
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i37.i, i64 4
  %i.gy = load i8, ptr %i.gs, align 1, !alias.scope !1664, !noalias !1665, !noundef !4
  %i.gz = zext i8 %i.gy to i64
  %i.ha = xor i64 %i.gw, %i.gz
  %i.hb = mul i64 %i.ha, 1099511628211
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i37.i, i64 5
  %i.hd = load i8, ptr %i.gx, align 1, !alias.scope !1664, !noalias !1665, !noundef !4
  %i.he = zext i8 %i.hd to i64
  %i.hf = xor i64 %i.hb, %i.he
  %i.hg = mul i64 %i.hf, 1099511628211
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i37.i, i64 6
  %i.hi = load i8, ptr %i.hc, align 1, !alias.scope !1664, !noalias !1665, !noundef !4
  %i.hj = zext i8 %i.hi to i64
  %i.hk = xor i64 %i.hg, %i.hj
  %i.hl = mul i64 %i.hk, 1099511628211
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i37.i, i64 7
  %i.hn = load i8, ptr %i.hh, align 1, !alias.scope !1664, !noalias !1665, !noundef !4
  %i.ho = zext i8 %i.hn to i64
  %i.hp = xor i64 %i.hl, %i.ho
  %i.hq = mul i64 %i.hp, 1099511628211
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i37.i, i64 8 ; 2 uses
  %i.hs = load i8, ptr %i.hm, align 1, !alias.scope !1664, !noalias !1665, !noundef !4
  %i.ht = zext i8 %i.hs to i64
  %i.hu = xor i64 %i.hq, %i.ht
  %i.hv = mul i64 %i.hu, 1099511628211            ; 3 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit63.loopexit.i.unr-lcssa, label %.lr.ph.i.i36.i

.loopexit63.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i.i36.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit63.loopexit.i, label %.lr.ph.i.i36.i.epil.preheader

.lr.ph.i.i36.i.epil.preheader:                    ; preds = %.loopexit63.loopexit.i.unr-lcssa, %.lr.ph.i.i36.i.preheader
  %.sroa.0.0.i1.i.i37.i.epil.init = phi ptr [ %i.gd, %.lr.ph.i.i36.i.preheader ], [ %i.hr, %.loopexit63.loopexit.i.unr-lcssa ]
  %.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.i.i36.i.preheader ], [ %i.hv, %.loopexit63.loopexit.i.unr-lcssa ]
  %lcmp.mod175 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod175)
  br label %.lr.ph.i.i36.i.epil

.lr.ph.i.i36.i.epil:                              ; preds = %.lr.ph.i.i36.i.epil, %.lr.ph.i.i36.i.epil.preheader
  %.sroa.0.0.i1.i.i37.i.epil = phi ptr [ %i.hx, %.lr.ph.i.i36.i.epil ], [ %.sroa.0.0.i1.i.i37.i.epil.init, %.lr.ph.i.i36.i.epil.preheader ] ; 2 uses
  %i.hw = phi i64 [ %i.ib, %.lr.ph.i.i36.i.epil ], [ %.epil.init, %.lr.ph.i.i36.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i36.i.epil ], [ 0, %.lr.ph.i.i36.i.epil.preheader ]
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i37.i.epil, i64 1
  %i.hy = load i8, ptr %.sroa.0.0.i1.i.i37.i.epil, align 1, !alias.scope !1664, !noalias !1665, !noundef !4
  %i.hz = zext i8 %i.hy to i64
  %i.ia = xor i64 %i.hw, %i.hz
  %i.ib = mul i64 %i.ia, 1099511628211            ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit63.loopexit.i, label %.lr.ph.i.i36.i.epil, !llvm.loop !1627

.loopexit63.loopexit.i:                           ; preds = %.lr.ph.i.i36.i.epil, %.loopexit63.loopexit.i.unr-lcssa
  %.lcssa170 = phi i64 [ %i.hv, %.loopexit63.loopexit.i.unr-lcssa ], [ %i.ib, %.lr.ph.i.i36.i.epil ]
  %i.ic = xor i64 %.lcssa170, 255
  %i.id = mul i64 %i.ic, 1099511628211
  br label %.loopexit63.i

.loopexit63.i:                                    ; preds = %.loopexit63.loopexit.i, %.noexc.i
  %.promoted.i.i.i38.i = phi i64 [ -5808391946409677970, %.noexc.i ], [ %i.id, %.loopexit63.loopexit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE11rustc_entryCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d, i64 noundef %.promoted.i.i.i38.i)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.u:                                             ; preds = %.loopexit63.i
  %i.ie = load ptr, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %.not10.i = icmp eq ptr %i.ie, null
  br i1 %.not10.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.426.0.copyload.i = load i64, ptr %.sroa.426.0..sroa_idx.i, align 8
  %.sroa.527.0.copyload.i = load i64, ptr %.sroa.527.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1666
  store i64 %.sroa.527.0.copyload.i, ptr %i.a, align 8, !noalias !1666
  store i64 0, ptr %i.bi, align 8, !noalias !1666
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1666
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1666
  %i.if = invoke noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEE14insert_no_growCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ie, i64 noundef %.sroa.426.0.copyload.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.noexc42.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc42.i:                                       ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1666
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ig = load ptr, ptr %.sroa.426.0..sroa_idx.i, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.noexc42.i
  %.pn.i.i = phi ptr [ %i.if, %.noexc42.i ], [ %i.ig, %bb.w ] ; 3 uses
  %.sroa.0.0.i41.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -24 ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %.pn.i.i, i64 -8 ; 2 uses
  %i.ii = load i64, ptr %i.ih, align 8, !alias.scope !1667, !noundef !4 ; 3 uses
  %i.ij = load i64, ptr %.sroa.0.0.i41.i, align 8, !range !7, !alias.scope !1667, !noundef !4
  %i.ik = icmp eq i64 %i.ii, %i.ij
  br i1 %i.ik, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs2isvxI5XMib_9quick_xml(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i41.i)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.il = getelementptr inbounds i8, ptr %.pn.i.i, i64 -16
  %i.im = load ptr, ptr %i.il, align 8, !alias.scope !1667, !nonnull !4, !noundef !4
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.ii
  store i64 %.sroa.0.03086.i, ptr %i.in, align 8
  %i.io = add i64 %i.ii, 1
  store i64 %i.io, ptr %i.ih, align 8, !alias.scope !1667
  %exitcond108.not.i = icmp eq i64 %i.bm, %i.g
  br i1 %exitcond108.not.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.preheader.i, label %bb.h

bb.aa:                                            ; preds = %.loopexit.split-lp.i
  %i.ip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjEEECs56aZGHL6Dc6_7ruff_db.exit.i: ; preds = %.loopexit.split-lp.i
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_ECs56aZGHL6Dc6_7ruff_db.exit.thread: ; preds = %12, %11, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1I_5utils10UniqueItemINtNtB1K_4text12TextDiffSideeEEEB2J_E0ECs56aZGHL6Dc6_7ruff_db.exit.i
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ab

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.preheader.i
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %2, i64 noundef %.sroa.04.0, i64 noundef %5)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %2, i64 noundef %5, i64 noundef %.sroa.011.0)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6finishCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(208) %0)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.c, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_ECs56aZGHL6Dc6_7ruff_db.exit.thread, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44, %bb.b, %bb.a, %.loopexit
  %.sroa.0.0 = phi i1 [ true, %.loopexit ], [ false, %bb.a ], [ false, %bb.b ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit ], [ false, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_ECs56aZGHL6Dc6_7ruff_db.exit.thread ], [ false, %bb.c ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB1j_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2f_B2f_INtNtB4_7compact7CompactB2f_B2f_IB2X_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 13 uses
  %i.e = tail call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef %8)
  br i1 %i.e, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i64 %2, %3
  %i.g = sub nuw i64 %3, %2
  %.sroa.04.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 3 uses
  %i.h = icmp ult i64 %5, %6
  %i.i = sub nuw i64 %6, %5
  %.sroa.011.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 3 uses
  %i.j = icmp ult i64 %.sroa.04.0, 512
  %i.k = icmp ult i64 %.sroa.011.0, 512
  %or.cond = or i1 %i.j, %i.k
  br i1 %or.cond, label %bb.af, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.04.0, i64 %.sroa.011.0) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 0
  %i.n = extractvalue { i64, i1 } %i.l, 1
  %i.o = icmp ugt i64 %i.m, 131071
  %or.cond64.not = or i1 %i.n, %i.o
  br i1 %or.cond64.not, label %.thread, label %bb.af, !prof !16

.thread:                                          ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val41 = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val42 = load i64, ptr %i.q, align 8, !noundef !4 ; 6 uses
  %i.r = icmp ult i64 %5, %.val42
  br i1 %i.r, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit, label %bb.d

bb.d:                                             ; preds = %.thread
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %5, i64 noundef range(i64 0, 576460752303423488) %.val42, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #22, !noalias !1755
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit: ; preds = %.thread
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val39 = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val40 = load i64, ptr %i.t, align 8, !noundef !4 ; 8 uses
  %i.u = icmp ult i64 %2, %.val40
  br i1 %i.u, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit47, label %bb.e

bb.e:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef range(i64 0, 576460752303423488) %.val40, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #22, !noalias !1756
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit47: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.val41, i64 %5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1758)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !1757, !noalias !1758, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !1757, !noalias !1758, !noundef !4 ; 3 uses
  %i.z = getelementptr i8, ptr %i.w, i64 16
  %.val30 = load i64, ptr %i.z, align 8, !noundef !4 ; 2 uses
  %i.aa = icmp ult i64 %i.y, %.val30
  br i1 %i.aa, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit, label %bb.f

bb.f:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit47
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.y, i64 noundef %.val30, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #22
  unreachable

_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit47
  %i.ab = getelementptr i8, ptr %i.w, i64 8
  %.val29 = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.val39, i64 %2 ; 2 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %.val29, i64 %i.y ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !1759, !nonnull !4, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !1759, !noundef !4 ; 2 uses
  %i.ah = load ptr, ptr %i.ac, align 8, !alias.scope !1758, !noalias !1757, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !1758, !noalias !1757, !noundef !4 ; 3 uses
  %i.ak = getelementptr i8, ptr %i.ah, i64 16
  %.val28 = load i64, ptr %i.ak, align 8, !noundef !4 ; 2 uses
  %i.al = icmp ult i64 %i.aj, %.val28
  br i1 %i.al, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit48, label %bb.g

bb.g:                                             ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aj, i64 noundef %.val28, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #22
  unreachable

_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit48: ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit
  %i.am = getelementptr i8, ptr %i.ah, i64 8
  %.val27 = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %.val27, i64 %i.aj ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !1760, !noundef !4
  %i.aq = icmp eq i64 %i.ag, %i.ap
  br i1 %i.aq, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit48
  %i.ar = load ptr, ptr %i.an, align 8, !noalias !1760, !nonnull !4, !noundef !4
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %i.ae, ptr nonnull readonly %i.ar, i64 %i.ag), !alias.scope !1761, !noalias !1762
  %i.as = icmp eq i32 %bcmp.i, 0
  br i1 %i.as, label %bb.af, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread: ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit48, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit
  %i.at = add i64 %6, -1                          ; 3 uses
  %i.au = icmp ult i64 %i.at, %.val42
  br i1 %i.au, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit49, label %bb.h

bb.h:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.at, i64 noundef range(i64 0, 576460752303423488) %.val42, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #22, !noalias !1763
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit49: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread
  %i.av = add i64 %3, -1                          ; 3 uses
  %i.aw = icmp ult i64 %i.av, %.val40
  br i1 %i.aw, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit50, label %bb.i

bb.i:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit49
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef range(i64 0, 576460752303423488) %.val40, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #22, !noalias !1764
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit50: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit49
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %.val41, i64 %i.at ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1765)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1766)
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !1765, !noalias !1766, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !1765, !noalias !1766, !noundef !4 ; 3 uses
  %i.bb = getelementptr i8, ptr %i.ay, i64 16
  %.val34 = load i64, ptr %i.bb, align 8, !noundef !4 ; 2 uses
  %i.bc = icmp ult i64 %i.ba, %.val34
  br i1 %i.bc, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit51, label %bb.j

bb.j:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit50
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ba, i64 noundef %.val34, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #22
  unreachable

_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit51: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit50
  %i.bd = getelementptr i8, ptr %i.ay, i64 8
  %.val33 = load ptr, ptr %i.bd, align 8, !nonnull !4, !noundef !4
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %.val39, i64 %i.av ; 2 uses
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %.val33, i64 %i.ba ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !1767, !nonnull !4, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !1767, !noundef !4 ; 2 uses
  %i.bj = load ptr, ptr %i.be, align 8, !alias.scope !1766, !noalias !1765, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !1766, !noalias !1765, !noundef !4 ; 3 uses
  %i.bm = getelementptr i8, ptr %i.bj, i64 16
  %.val32 = load i64, ptr %i.bm, align 8, !noundef !4 ; 2 uses
  %i.bn = icmp ult i64 %i.bl, %.val32
  br i1 %i.bn, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit52, label %bb.k

bb.k:                                             ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit51
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bl, i64 noundef %.val32, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #22
  unreachable

_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit52: ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit51
  %i.bo = getelementptr i8, ptr %i.bj, i64 8
  %.val31 = load ptr, ptr %i.bo, align 8, !nonnull !4, !noundef !4
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %.val31, i64 %i.bl ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !noalias !1768, !noundef !4
  %i.bs = icmp eq i64 %i.bi, %i.br
  br i1 %i.bs, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit55, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit55.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit55: ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit52
  %i.bt = load ptr, ptr %i.bp, align 8, !noalias !1768, !nonnull !4, !noundef !4
  %bcmp.i54 = tail call i32 @bcmp(ptr nonnull readonly %i.bg, ptr nonnull readonly %i.bt, i64 %i.bi), !alias.scope !1769, !noalias !1770
  %i.bu = icmp eq i32 %bcmp.i54, 0
  br i1 %i.bu, label %bb.af, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit55.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit55.thread: ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit52, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bv = tail call { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @13) ; 2 uses
  %i.bw = extractvalue { i64, i64 } %i.bv, 0
  %i.bx = extractvalue { i64, i64 } %i.bv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @15, i64 32, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store i64 %i.bw, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.bx, ptr %.sroa.5.0..sroa_idx.i, align 8
  br i1 %i.f, label %.lr.ph.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.preheader.i

.lr.ph.i:                                         ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit55.thread
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %9 = tail call i64 @llvm.usub.sat.i64(i64 %.val40, i64 %2)
  br label %bb.l

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.preheader.i: ; preds = %bb.ad, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit55.thread
  br i1 %i.h, label %.lr.ph113.i, label %.loopexit

.lr.ph113.i:                                      ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.preheader.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %10 = call i64 @llvm.usub.sat.i64(i64 %.val42, i64 %5)
  br label %bb.m

.loopexit.i:                                      ; preds = %.lr.ph.i.i29.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.q, %bb.n
  %lpad.loopexit56.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.ac, %bb.z, %.loopexit60.i, %bb.v
  %lpad.loopexit61.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit56.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit61.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjEEECs56aZGHL6Dc6_7ruff_db.exit.i unwind label %bb.ae

bb.l:                                             ; preds = %bb.ad, %.lr.ph.i
  %.sroa.0.029110.i = phi i64 [ %2, %.lr.ph.i ], [ %i.cb, %bb.ad ] ; 4 uses
  %.sroa.8.0109.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cc, %bb.ad ] ; 3 uses
  %i.cb = add nuw i64 %.sroa.0.029110.i, 1
  %i.cc = add nuw i64 %.sroa.8.0109.i, 1          ; 2 uses
  %i.cd = and i64 %.sroa.8.0109.i, 1023
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %bb.v, label %bb.w

bb.m:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i, %.lr.ph113.i
  %.sroa.011.0112.i = phi i64 [ %5, %.lr.ph113.i ], [ %i.cf, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i ] ; 3 uses
  %.sroa.813.0111.i = phi i64 [ 0, %.lr.ph113.i ], [ %i.cg, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i ] ; 3 uses
  %i.cf = add nuw i64 %.sroa.011.0112.i, 1
  %i.cg = add nuw i64 %.sroa.813.0111.i, 1        ; 2 uses
  %i.ch = and i64 %.sroa.813.0111.i, 1023
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cj = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %11 unwind label %.loopexit.split-lp.loopexit.i

11:                                               ; preds = %bb.n
  br i1 %i.cj, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB15_ECs56aZGHL6Dc6_7ruff_db.exit.thread, label %bb.o

bb.o:                                             ; preds = %11, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %exitcond166.not.i = icmp eq i64 %.sroa.813.0111.i, %10
  br i1 %exitcond166.not.i, label %.invoke.i, label %bb.p

.invoke.i:                                        ; preds = %bb.x, %bb.w, %bb.p, %bb.o, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i.i.i, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i.i.i, %.lr.ph.i.i
  %12 = phi i64 [ %.val4.i.i, %.lr.ph.i.i ], [ %i.cn, %bb.p ], [ %i.gp, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i.i.i ], [ %i.ge, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i.i.i ], [ %.sroa.011.0112.i, %bb.o ], [ %i.hd, %bb.x ], [ %.sroa.0.029110.i, %bb.w ]
  %13 = phi i64 [ %.val40, %.lr.ph.i.i ], [ %.val15.i, %bb.p ], [ %.val1.i.i.i, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i.i.i ], [ %.val3.i.i.i, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i.i.i ], [ %.val42, %bb.o ], [ %.val17.i, %bb.x ], [ %.val40, %bb.w ]
  %14 = phi ptr [ @40, %.lr.ph.i.i ], [ @35, %bb.p ], [ @35, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i.i.i ], [ @35, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i.i.i ], [ @27, %bb.o ], [ @35, %bb.x ], [ @29, %bb.w ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %12, i64 noundef %13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %14) #22
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %.val41, i64 %.sroa.011.0112.i ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !1771, !noalias !1772, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !1771, !noalias !1772, !noundef !4 ; 3 uses
  %i.co = getelementptr i8, ptr %i.cl, i64 16
  %.val15.i = load i64, ptr %i.co, align 8, !noundef !4 ; 2 uses
  %i.cp = icmp ult i64 %i.cn, %.val15.i
  br i1 %i.cp, label %.noexc12.i, label %.invoke.i

.noexc12.i:                                       ; preds = %bb.p
  %i.cq = getelementptr i8, ptr %i.cl, i64 8
  %.val.i = load ptr, ptr %i.cq, align 8, !nonnull !4, !noundef !4
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %i.cn ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !1773, !nonnull !4, !noundef !4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !noalias !1773, !noundef !4 ; 4 uses
  %i.cv = icmp samesign eq i64 %i.cu, 0
  br i1 %i.cv, label %.loopexit55.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.noexc12.i
  %xtraiter178 = and i64 %i.cu, 7                 ; 3 uses
  %i.cw = icmp ult i64 %i.cu, 8
  br i1 %i.cw, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter185 = and i64 %i.cu, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.0.i1.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.preheader.new ], [ %i.eh, %.lr.ph.i.i.i ] ; 9 uses
  %i.cx = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.preheader.new ], [ %i.el, %.lr.ph.i.i.i ]
  %niter186 = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter186.next.7, %.lr.ph.i.i.i ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 1
  %i.cz = load i8, ptr %.sroa.0.0.i1.i.i.i, align 1, !alias.scope !1774, !noalias !1775, !noundef !4
  %i.da = zext i8 %i.cz to i64
  %i.db = xor i64 %i.cx, %i.da
  %i.dc = mul i64 %i.db, 1099511628211
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 2
  %i.de = load i8, ptr %i.cy, align 1, !alias.scope !1774, !noalias !1775, !noundef !4
  %i.df = zext i8 %i.de to i64
  %i.dg = xor i64 %i.dc, %i.df
  %i.dh = mul i64 %i.dg, 1099511628211
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 3
  %i.dj = load i8, ptr %i.dd, align 1, !alias.scope !1774, !noalias !1775, !noundef !4
  %i.dk = zext i8 %i.dj to i64
  %i.dl = xor i64 %i.dh, %i.dk
  %i.dm = mul i64 %i.dl, 1099511628211
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 4
  %i.do = load i8, ptr %i.di, align 1, !alias.scope !1774, !noalias !1775, !noundef !4
  %i.dp = zext i8 %i.do to i64
  %i.dq = xor i64 %i.dm, %i.dp
  %i.dr = mul i64 %i.dq, 1099511628211
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 5
  %i.dt = load i8, ptr %i.dn, align 1, !alias.scope !1774, !noalias !1775, !noundef !4
  %i.du = zext i8 %i.dt to i64
  %i.dv = xor i64 %i.dr, %i.du
  %i.dw = mul i64 %i.dv, 1099511628211
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 6
  %i.dy = load i8, ptr %i.ds, align 1, !alias.scope !1774, !noalias !1775, !noundef !4
  %i.dz = zext i8 %i.dy to i64
  %i.ea = xor i64 %i.dw, %i.dz
  %i.eb = mul i64 %i.ea, 1099511628211
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 7
  %i.ed = load i8, ptr %i.dx, align 1, !alias.scope !1774, !noalias !1775, !noundef !4
  %i.ee = zext i8 %i.ed to i64
  %i.ef = xor i64 %i.eb, %i.ee
  %i.eg = mul i64 %i.ef, 1099511628211
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 8 ; 2 uses
  %i.ei = load i8, ptr %i.ec, align 1, !alias.scope !1774, !noalias !1775, !noundef !4
  %i.ej = zext i8 %i.ei to i64
  %i.ek = xor i64 %i.eg, %i.ej
  %i.el = mul i64 %i.ek, 1099511628211            ; 3 uses
  %niter186.next.7 = add nuw i64 %niter186, 8     ; 2 uses
  %niter186.ncmp.7 = icmp eq i64 %niter186.next.7, %unroll_iter185
  br i1 %niter186.ncmp.7, label %.loopexit55.loopexit.i.unr-lcssa, label %.lr.ph.i.i.i

.loopexit55.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i.i.i
  %lcmp.mod182.not = icmp eq i64 %xtraiter178, 0
  br i1 %lcmp.mod182.not, label %.loopexit55.loopexit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit55.loopexit.i.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.sroa.0.0.i1.i.i.i.epil.init = phi ptr [ %i.cs, %.lr.ph.i.i.i.preheader ], [ %i.eh, %.loopexit55.loopexit.i.unr-lcssa ]
  %.epil.init181 = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.preheader ], [ %i.el, %.loopexit55.loopexit.i.unr-lcssa ]
  %lcmp.mod184 = icmp ne i64 %xtraiter178, 0
  call void @llvm.assume(i1 %lcmp.mod184)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.sroa.0.0.i1.i.i.i.epil = phi ptr [ %i.en, %.lr.ph.i.i.i.epil ], [ %.sroa.0.0.i1.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %i.em = phi i64 [ %i.er, %.lr.ph.i.i.i.epil ], [ %.epil.init181, %.lr.ph.i.i.i.epil.preheader ]
  %epil.iter179 = phi i64 [ %epil.iter179.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i.epil, i64 1
  %i.eo = load i8, ptr %.sroa.0.0.i1.i.i.i.epil, align 1, !alias.scope !1774, !noalias !1775, !noundef !4
  %i.ep = zext i8 %i.eo to i64
  %i.eq = xor i64 %i.em, %i.ep
  %i.er = mul i64 %i.eq, 1099511628211            ; 2 uses
  %epil.iter179.next = add i64 %epil.iter179, 1   ; 2 uses
  %epil.iter179.cmp.not = icmp eq i64 %epil.iter179.next, %xtraiter178
  br i1 %epil.iter179.cmp.not, label %.loopexit55.loopexit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !1710

.loopexit55.loopexit.i:                           ; preds = %.lr.ph.i.i.i.epil, %.loopexit55.loopexit.i.unr-lcssa
  %.lcssa = phi i64 [ %i.el, %.loopexit55.loopexit.i.unr-lcssa ], [ %i.er, %.lr.ph.i.i.i.epil ]
  %i.es = xor i64 %.lcssa, 255
  %i.et = mul i64 %i.es, 1099511628211
  br label %.loopexit55.i

.loopexit55.i:                                    ; preds = %.loopexit55.loopexit.i, %.noexc12.i
  %.promoted.i.i.i.i = phi i64 [ -5808391946409677970, %.noexc12.i ], [ %i.et, %.loopexit55.loopexit.i ]
  store i64 %.promoted.i.i.i.i, ptr %i.c, align 8
  %i.eu = load i64, ptr %i.bz, align 8, !alias.scope !1776, !noalias !1777, !noundef !4
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i, label %bb.q

bb.q:                                             ; preds = %.loopexit55.i
  %i.ew = invoke noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRyECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc30.i unwind label %.loopexit.split-lp.loopexit.i ; 2 uses

.noexc30.i:                                       ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1778)
  call void @llvm.experimental.noalias.scope.decl(metadata !1779)
  %i.ex = lshr i64 %i.ew, 57
  %i.ey = trunc nuw nsw i64 %i.ex to i8
  %i.ez = load i64, ptr %i.ca, align 8, !alias.scope !1780, !noalias !1781, !noundef !4 ; 2 uses
  %i.fa = load ptr, ptr %i.d, align 8, !alias.scope !1780, !noalias !1781, !nonnull !4, !noundef !4 ; 2 uses
  %i.fb = insertelement <16 x i8> poison, i8 %i.ey, i64 0
  %i.fc = shufflevector <16 x i8> %i.fb, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.noexc30.i
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.noexc30.i ], [ %i.ft, %bb.t ]
  %.pn.i.i.i.i = phi i64 [ %i.ew, %.noexc30.i ], [ %i.fu, %bb.t ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.ez ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.fd, align 1, !noalias !1782 ; 2 uses
  %i.fe = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %i.fc
  %i.ff = bitcast <16 x i1> %i.fe to i16          ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.ff, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i29.i

.lr.ph.i.i29.i:                                   ; preds = %bb.r, %bb.s
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.fs, %bb.s ], [ %i.ff, %bb.r ] ; 3 uses
  %i.fg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.fh = zext nneg i16 %i.fg to i64
  %i.fi = add i64 %.sroa.01.0.i.i.i.i, %i.fh
  %i.fj = and i64 %i.fi, %i.ez
  %i.fk = sub nsw i64 0, %i.fj
  %i.fl = getelementptr inbounds [32 x i8], ptr %i.fa, i64 %i.fk ; 3 uses
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 -32
  %i.fn = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownyINtB2_10EquivalentyE10equivalentCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fm)
          to label %.noexc31.i unwind label %.loopexit.i

.noexc31.i:                                       ; preds = %.lr.ph.i.i29.i
  br i1 %i.fn, label %bb.u, label %bb.s, !prof !10

._crit_edge.i.i.i:                                ; preds = %bb.s, %bb.r
  %i.fo = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.fp = bitcast <16 x i1> %i.fo to i16
  %i.fq = icmp eq i16 %i.fp, 0
  br i1 %i.fq, label %bb.t, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i, !prof !6

bb.s:                                             ; preds = %.noexc31.i
  %i.fr = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.fs = and i16 %i.fr, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.fs, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i29.i

bb.t:                                             ; preds = %._crit_edge.i.i.i
  %i.ft = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.fu = add i64 %.sroa.01.0.i.i.i.i, %i.ft
  br label %bb.r

bb.u:                                             ; preds = %.noexc31.i
  %i.fv = getelementptr inbounds i8, ptr %i.fl, i64 -16
  %i.fw = load ptr, ptr %i.fv, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %i.fl, i64 -8
  %i.fy = load i64, ptr %i.fx, align 8, !noundef !4 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.fy, 3
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.idx.i
  %.not.i34.i = icmp eq i64 %i.fy, 0
  br i1 %.not.i34.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.u, %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtNtB8_4text6inline11MultiLookupeEEEB17_E0Cs56aZGHL6Dc6_7ruff_db.exit.backedge.i.i
  %i.ga = phi ptr [ %i.gb, %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtNtB8_4text6inline11MultiLookupeEEEB17_E0Cs56aZGHL6Dc6_7ruff_db.exit.backedge.i.i ], [ %i.fw, %bb.u ] ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 2 uses
  %.val4.i.i = load i64, ptr %i.ga, align 8, !noalias !1783, !noundef !4 ; 3 uses
  %i.gc = icmp ult i64 %.val4.i.i, %.val40
  br i1 %i.gc, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i.i.i, label %.invoke.i

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i.i.i: ; preds = %.lr.ph.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1784)
  call void @llvm.experimental.noalias.scope.decl(metadata !1785)
  %i.gd = load ptr, ptr %i.ck, align 8, !alias.scope !1784, !noalias !1786, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.ge = load i64, ptr %i.cm, align 8, !alias.scope !1784, !noalias !1786, !noundef !4 ; 3 uses
  %i.gf = getelementptr i8, ptr %i.gd, i64 16
  %.val3.i.i.i = load i64, ptr %i.gf, align 8, !noalias !1783, !noundef !4 ; 2 uses
  %i.gg = icmp ult i64 %i.ge, %.val3.i.i.i
  br i1 %i.gg, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i.i.i, label %.invoke.i

_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i.i.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i.i.i
  %i.gh = getelementptr i8, ptr %i.gd, i64 8
  %.val2.i.i.i = load ptr, ptr %i.gh, align 8, !noalias !1783, !nonnull !4, !noundef !4
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %.val39, i64 %.val4.i.i ; 2 uses
  %i.gj = getelementptr inbounds nuw [32 x i8], ptr %.val2.i.i.i, i64 %i.ge ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !noalias !1787, !nonnull !4, !noundef !4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !noalias !1787, !noundef !4 ; 2 uses
  %i.gn = load ptr, ptr %i.gi, align 8, !alias.scope !1785, !noalias !1788, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !1785, !noalias !1788, !noundef !4 ; 3 uses
  %i.gq = getelementptr i8, ptr %i.gn, i64 16
  %.val1.i.i.i = load i64, ptr %i.gq, align 8, !noalias !1783, !noundef !4 ; 2 uses
  %i.gr = icmp ult i64 %i.gp, %.val1.i.i.i
  br i1 %i.gr, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit6.i.i.i, label %.invoke.i

_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit6.i.i.i: ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i.i.i
  %i.gs = getelementptr i8, ptr %i.gn, i64 8
  %.val.i.i.i = load ptr, ptr %i.gs, align 8, !noalias !1783, !nonnull !4, !noundef !4
  %i.gt = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i, i64 %i.gp ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load i64, ptr %i.gu, align 8, !noalias !1789, !noundef !4
  %i.gw = icmp eq i64 %i.gm, %i.gv
  br i1 %i.gw, label %.split.i.i, label %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtNtB8_4text6inline11MultiLookupeEEEB17_E0Cs56aZGHL6Dc6_7ruff_db.exit.backedge.i.i

.split.i.i:                                       ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit6.i.i.i
  %i.gx = load ptr, ptr %i.gt, align 8, !noalias !1789, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %i.gk, ptr nonnull readonly %i.gx, i64 %i.gm), !alias.scope !1790, !noalias !1791
  %i.gy = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.gy, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1I_5utils10UniqueItemINtNtNtB1K_4text6inline11MultiLookupeEEEB2J_E0ECs56aZGHL6Dc6_7ruff_db.exit.i, label %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtNtB8_4text6inline11MultiLookupeEEEB17_E0Cs56aZGHL6Dc6_7ruff_db.exit.backedge.i.i

_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtNtB8_4text6inline11MultiLookupeEEEB17_E0Cs56aZGHL6Dc6_7ruff_db.exit.backedge.i.i: ; preds = %.split.i.i, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit6.i.i.i
  %.not22.i.i = icmp eq ptr %i.gb, %i.fz
  br i1 %.not22.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i, label %.lr.ph.i.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1I_5utils10UniqueItemINtNtNtB1K_4text6inline11MultiLookupeEEEB2J_E0ECs56aZGHL6Dc6_7ruff_db.exit.i: ; preds = %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB15_ECs56aZGHL6Dc6_7ruff_db.exit.thread

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i: ; preds = %._crit_edge.i.i.i, %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtNtB8_4text6inline11MultiLookupeEEEB17_E0Cs56aZGHL6Dc6_7ruff_db.exit.backedge.i.i, %bb.u, %.loopexit55.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %exitcond167.not.i = icmp eq i64 %i.cg, %i.i
  br i1 %exitcond167.not.i, label %.loopexit, label %bb.m

bb.v:                                             ; preds = %bb.l
  %i.gz = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

15:                                               ; preds = %bb.v
  br i1 %i.gz, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB15_ECs56aZGHL6Dc6_7ruff_db.exit.thread, label %bb.w

bb.w:                                             ; preds = %15, %bb.l
  %exitcond.not.i = icmp eq i64 %.sroa.8.0109.i, %9
  br i1 %exitcond.not.i, label %.invoke.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %.val39, i64 %.sroa.0.029110.i ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !alias.scope !1792, !noalias !1793, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !alias.scope !1792, !noalias !1793, !noundef !4 ; 3 uses
  %i.he = getelementptr i8, ptr %i.hb, i64 16
  %.val17.i = load i64, ptr %i.he, align 8, !noundef !4 ; 2 uses
  %i.hf = icmp ult i64 %i.hd, %.val17.i
  br i1 %i.hf, label %.noexc.i, label %.invoke.i

.noexc.i:                                         ; preds = %bb.x
  %i.hg = getelementptr i8, ptr %i.hb, i64 8
  %.val16.i = load ptr, ptr %i.hg, align 8, !nonnull !4, !noundef !4
  %i.hh = getelementptr inbounds nuw [32 x i8], ptr %.val16.i, i64 %i.hd ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !noalias !1794, !nonnull !4, !noundef !4 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !noalias !1794, !noundef !4 ; 4 uses
  %i.hl = icmp samesign eq i64 %i.hk, 0
  br i1 %i.hl, label %.loopexit60.i, label %.lr.ph.i.i43.i.preheader

.lr.ph.i.i43.i.preheader:                         ; preds = %.noexc.i
  %xtraiter = and i64 %i.hk, 7                    ; 3 uses
  %i.hm = icmp ult i64 %i.hk, 8
  br i1 %i.hm, label %.lr.ph.i.i43.i.epil.preheader, label %.lr.ph.i.i43.i.preheader.new

.lr.ph.i.i43.i.preheader.new:                     ; preds = %.lr.ph.i.i43.i.preheader
  %unroll_iter = and i64 %i.hk, -8
  br label %.lr.ph.i.i43.i

.lr.ph.i.i43.i:                                   ; preds = %.lr.ph.i.i43.i, %.lr.ph.i.i43.i.preheader.new
  %.sroa.0.0.i1.i.i44.i = phi ptr [ %i.hi, %.lr.ph.i.i43.i.preheader.new ], [ %i.ix, %.lr.ph.i.i43.i ] ; 9 uses
  %i.hn = phi i64 [ -3750763034362895579, %.lr.ph.i.i43.i.preheader.new ], [ %i.jb, %.lr.ph.i.i43.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i43.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i43.i ]
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i44.i, i64 1
  %i.hp = load i8, ptr %.sroa.0.0.i1.i.i44.i, align 1, !alias.scope !1795, !noalias !1796, !noundef !4
  %i.hq = zext i8 %i.hp to i64
  %i.hr = xor i64 %i.hn, %i.hq
  %i.hs = mul i64 %i.hr, 1099511628211
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i44.i, i64 2
  %i.hu = load i8, ptr %i.ho, align 1, !alias.scope !1795, !noalias !1796, !noundef !4
  %i.hv = zext i8 %i.hu to i64
  %i.hw = xor i64 %i.hs, %i.hv
  %i.hx = mul i64 %i.hw, 1099511628211
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i44.i, i64 3
  %i.hz = load i8, ptr %i.ht, align 1, !alias.scope !1795, !noalias !1796, !noundef !4
  %i.ia = zext i8 %i.hz to i64
  %i.ib = xor i64 %i.hx, %i.ia
  %i.ic = mul i64 %i.ib, 1099511628211
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i44.i, i64 4
  %i.ie = load i8, ptr %i.hy, align 1, !alias.scope !1795, !noalias !1796, !noundef !4
  %i.if = zext i8 %i.ie to i64
  %i.ig = xor i64 %i.ic, %i.if
  %i.ih = mul i64 %i.ig, 1099511628211
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i44.i, i64 5
  %i.ij = load i8, ptr %i.id, align 1, !alias.scope !1795, !noalias !1796, !noundef !4
  %i.ik = zext i8 %i.ij to i64
  %i.il = xor i64 %i.ih, %i.ik
  %i.im = mul i64 %i.il, 1099511628211
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i44.i, i64 6
  %i.io = load i8, ptr %i.ii, align 1, !alias.scope !1795, !noalias !1796, !noundef !4
  %i.ip = zext i8 %i.io to i64
  %i.iq = xor i64 %i.im, %i.ip
  %i.ir = mul i64 %i.iq, 1099511628211
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i44.i, i64 7
  %i.it = load i8, ptr %i.in, align 1, !alias.scope !1795, !noalias !1796, !noundef !4
  %i.iu = zext i8 %i.it to i64
  %i.iv = xor i64 %i.ir, %i.iu
  %i.iw = mul i64 %i.iv, 1099511628211
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i44.i, i64 8 ; 2 uses
  %i.iy = load i8, ptr %i.is, align 1, !alias.scope !1795, !noalias !1796, !noundef !4
  %i.iz = zext i8 %i.iy to i64
  %i.ja = xor i64 %i.iw, %i.iz
  %i.jb = mul i64 %i.ja, 1099511628211            ; 3 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit60.loopexit.i.unr-lcssa, label %.lr.ph.i.i43.i

.loopexit60.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i.i43.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit60.loopexit.i, label %.lr.ph.i.i43.i.epil.preheader

.lr.ph.i.i43.i.epil.preheader:                    ; preds = %.loopexit60.loopexit.i.unr-lcssa, %.lr.ph.i.i43.i.preheader
  %.sroa.0.0.i1.i.i44.i.epil.init = phi ptr [ %i.hi, %.lr.ph.i.i43.i.preheader ], [ %i.ix, %.loopexit60.loopexit.i.unr-lcssa ]
  %.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.i.i43.i.preheader ], [ %i.jb, %.loopexit60.loopexit.i.unr-lcssa ]
  %lcmp.mod177 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod177)
  br label %.lr.ph.i.i43.i.epil

.lr.ph.i.i43.i.epil:                              ; preds = %.lr.ph.i.i43.i.epil, %.lr.ph.i.i43.i.epil.preheader
  %.sroa.0.0.i1.i.i44.i.epil = phi ptr [ %i.jd, %.lr.ph.i.i43.i.epil ], [ %.sroa.0.0.i1.i.i44.i.epil.init, %.lr.ph.i.i43.i.epil.preheader ] ; 2 uses
  %i.jc = phi i64 [ %i.jh, %.lr.ph.i.i43.i.epil ], [ %.epil.init, %.lr.ph.i.i43.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i43.i.epil ], [ 0, %.lr.ph.i.i43.i.epil.preheader ]
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i44.i.epil, i64 1
  %i.je = load i8, ptr %.sroa.0.0.i1.i.i44.i.epil, align 1, !alias.scope !1795, !noalias !1796, !noundef !4
  %i.jf = zext i8 %i.je to i64
  %i.jg = xor i64 %i.jc, %i.jf
  %i.jh = mul i64 %i.jg, 1099511628211            ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit60.loopexit.i, label %.lr.ph.i.i43.i.epil, !llvm.loop !1750

.loopexit60.loopexit.i:                           ; preds = %.lr.ph.i.i43.i.epil, %.loopexit60.loopexit.i.unr-lcssa
  %.lcssa175 = phi i64 [ %i.jb, %.loopexit60.loopexit.i.unr-lcssa ], [ %i.jh, %.lr.ph.i.i43.i.epil ]
  %i.ji = xor i64 %.lcssa175, 255
  %i.jj = mul i64 %i.ji, 1099511628211
  br label %.loopexit60.i

.loopexit60.i:                                    ; preds = %.loopexit60.loopexit.i, %.noexc.i
  %.promoted.i.i.i45.i = phi i64 [ -5808391946409677970, %.noexc.i ], [ %i.jj, %.loopexit60.loopexit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE11rustc_entryCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d, i64 noundef %.promoted.i.i.i45.i)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.y:                                             ; preds = %.loopexit60.i
  %i.jk = load ptr, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %.not10.i = icmp eq ptr %i.jk, null
  br i1 %.not10.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.425.0.copyload.i = load i64, ptr %.sroa.425.0..sroa_idx.i, align 8
  %.sroa.526.0.copyload.i = load i64, ptr %.sroa.526.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1797
  store i64 %.sroa.526.0.copyload.i, ptr %i.a, align 8, !noalias !1797
  store i64 0, ptr %i.by, align 8, !noalias !1797
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1797
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1797
  %i.jl = invoke noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEE14insert_no_growCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.jk, i64 noundef %.sroa.425.0.copyload.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.noexc49.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc49.i:                                       ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1797
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.jm = load ptr, ptr %.sroa.425.0..sroa_idx.i, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.noexc49.i
  %.pn.i.i = phi ptr [ %i.jl, %.noexc49.i ], [ %i.jm, %bb.aa ] ; 3 uses
  %.sroa.0.0.i48.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -24 ; 2 uses
  %i.jn = getelementptr inbounds i8, ptr %.pn.i.i, i64 -8 ; 2 uses
  %i.jo = load i64, ptr %i.jn, align 8, !alias.scope !1798, !noundef !4 ; 3 uses
  %i.jp = load i64, ptr %.sroa.0.0.i48.i, align 8, !range !7, !alias.scope !1798, !noundef !4
  %i.jq = icmp eq i64 %i.jo, %i.jp
  br i1 %i.jq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs2isvxI5XMib_9quick_xml(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i48.i)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.jr = getelementptr inbounds i8, ptr %.pn.i.i, i64 -16
  %i.js = load ptr, ptr %i.jr, align 8, !alias.scope !1798, !nonnull !4, !noundef !4
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %i.jo
  store i64 %.sroa.0.029110.i, ptr %i.jt, align 8
  %i.ju = add i64 %i.jo, 1
  store i64 %i.ju, ptr %i.jn, align 8, !alias.scope !1798
  %exitcond164.not.i = icmp eq i64 %i.cc, %i.g
  br i1 %exitcond164.not.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.preheader.i, label %bb.l

bb.ae:                                            ; preds = %.loopexit.split-lp.i
  %i.jv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjEEECs56aZGHL6Dc6_7ruff_db.exit.i: ; preds = %.loopexit.split-lp.i
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB15_ECs56aZGHL6Dc6_7ruff_db.exit.thread: ; preds = %15, %11, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1I_5utils10UniqueItemINtNtNtB1K_4text6inline11MultiLookupeEEEB2J_E0ECs56aZGHL6Dc6_7ruff_db.exit.i
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.af

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.preheader.i
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtNtB9_4text6inline11MultiLookupeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %2, i64 noundef %.sroa.04.0, i64 noundef %5)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtNtB9_4text6inline11MultiLookupeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %2, i64 noundef %5, i64 noundef %.sroa.011.0)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtNtB9_4text6inline11MultiLookupeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6finishCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(208) %0)
  br label %bb.af

bb.af:                                            ; preds = %bb.c, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB15_ECs56aZGHL6Dc6_7ruff_db.exit.thread, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit55, %bb.b, %bb.a, %.loopexit
  %.sroa.0.0 = phi i1 [ true, %.loopexit ], [ false, %bb.a ], [ false, %bb.b ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit ], [ false, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB15_ECs56aZGHL6Dc6_7ruff_db.exit.thread ], [ false, %bb.c ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit55 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtNtB6_4text6inline11MultiLookupeEB1j_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef %8)
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.04.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 3 uses
  %.sroa.011.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 3 uses
  %i.b = icmp ult i64 %.sroa.04.0, 512
  %i.c = icmp ult i64 %.sroa.011.0, 512
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.04.0, i64 %.sroa.011.0) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 0
  %i.f = extractvalue { i64, i1 } %i.d, 1
  %i.g = icmp ugt i64 %i.e, 131071
  %or.cond57.not = or i1 %i.f, %i.g
  br i1 %or.cond57.not, label %.thread, label %bb.k, !prof !16

.thread:                                          ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val33 = load ptr, ptr %i.h, align 8           ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val34 = load i64, ptr %i.i, align 8, !noundef !4 ; 5 uses
  %i.j = icmp ult i64 %5, %.val34
  br i1 %i.j, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit, label %bb.d

bb.d:                                             ; preds = %.thread
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %5, i64 noundef %.val34, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #22
  unreachable

_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit: ; preds = %.thread
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val33) ]
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %.val33, i64 %5 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !noalias !1831, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noalias !1831, !noundef !4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val31 = load ptr, ptr %i.o, align 8           ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val32 = load i64, ptr %i.p, align 8, !noundef !4 ; 5 uses
  %i.q = icmp ult i64 %2, %.val32
  br i1 %i.q, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit39, label %bb.e

bb.e:                                             ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef %.val32, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #22
  unreachable

_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit39: ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val31) ]
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %.val31, i64 %2 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noalias !1832, !noundef !4
  %i.u = icmp eq i64 %i.n, %i.t
  br i1 %i.u, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit39
  %i.v = load ptr, ptr %i.r, align 8, !noalias !1832, !nonnull !4, !noundef !4
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %i.l, ptr nonnull readonly %i.v, i64 %i.n), !alias.scope !1833
  %i.w = icmp eq i32 %bcmp.i, 0
  br i1 %i.w, label %bb.k, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread: ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit39, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit
  %i.x = add i64 %6, -1                           ; 3 uses
  %i.y = icmp ult i64 %i.x, %.val34
  br i1 %i.y, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit40, label %bb.f

bb.f:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.x, i64 noundef %.val34, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #22
  unreachable

_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit40: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %.val33, i64 %i.x ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !1834, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !1834, !noundef !4 ; 2 uses
  %i.ad = add i64 %3, -1                          ; 3 uses
  %i.ae = icmp ult i64 %i.ad, %.val32
  br i1 %i.ae, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit41, label %bb.g

bb.g:                                             ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit40
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef %.val32, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #22
  unreachable

_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit41: ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit40
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %.val31, i64 %i.ad ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !1835, !noundef !4
  %i.ai = icmp eq i64 %i.ac, %i.ah
  br i1 %i.ai, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44: ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit41
  %i.aj = load ptr, ptr %i.af, align 8, !noalias !1835, !nonnull !4, !noundef !4
  %bcmp.i43 = tail call i32 @bcmp(ptr nonnull readonly %i.aa, ptr nonnull readonly %i.aj, i64 %i.ac), !alias.scope !1836
  %i.ak = icmp eq i32 %bcmp.i43, 0
  br i1 %i.ak, label %bb.k, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44.thread: ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit41, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44
  %i.al = tail call fastcc noundef i8 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtNtB6_4text6inline11MultiLookupeEB15_ECs56aZGHL6Dc6_7ruff_db(ptr nonnull %.val31, i64 %.val32, i64 noundef %2, i64 noundef %3, ptr nonnull %.val33, i64 %.val34, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  %cond = icmp eq i8 %i.al, 0
  br i1 %cond, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1838)
  %i.am = load ptr, ptr %0, align 8, !alias.scope !1839, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1840)
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !1840, !noalias !1839, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 120 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 136 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !1841, !noalias !1842, !noundef !4 ; 3 uses
  %i.ar = load i64, ptr %i.ao, align 8, !range !7, !alias.scope !1841, !noalias !1842, !noundef !4
  %i.as = icmp eq i64 %i.aq, %i.ar
  br i1 %i.as, label %bb.i, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao), !noalias !1842
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit: ; preds = %bb.h, %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !1841, !noalias !1842, !nonnull !4, !noundef !4
  %i.av = getelementptr inbounds nuw [40 x i8], ptr %i.au, i64 %i.aq ; 4 uses
  store i64 1, ptr %i.av, align 8, !noalias !1843
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !1843
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %.sroa.04.0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !1843
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store i64 %5, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !1843
  %i.aw = add i64 %i.aq, 1
  store i64 %i.aw, ptr %i.ap, align 8, !alias.scope !1841, !noalias !1842
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1844)
  %i.ax = load ptr, ptr %i.am, align 8, !alias.scope !1844, !noalias !1845, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 120 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 136 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !1846, !noalias !1847, !noundef !4 ; 3 uses
  %i.bb = load i64, ptr %i.ay, align 8, !range !7, !alias.scope !1846, !noalias !1847, !noundef !4
  %i.bc = icmp eq i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.j, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit45

bb.j:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay), !noalias !1847
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit45

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit45: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit, %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !1846, !noalias !1847, !nonnull !4, !noundef !4
  %i.bf = getelementptr inbounds nuw [40 x i8], ptr %i.be, i64 %i.ba ; 4 uses
  store i64 2, ptr %i.bf, align 8, !noalias !1848
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %2, ptr %.sroa.450.0..sroa_idx, align 8, !noalias !1848
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 %5, ptr %.sroa.551.0..sroa_idx, align 8, !noalias !1848
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store i64 %.sroa.011.0, ptr %.sroa.652.0..sroa_idx, align 8, !noalias !1848
  %i.bg = add i64 %i.ba, 1
  store i64 %i.bg, ptr %i.az, align 8, !alias.scope !1846, !noalias !1847
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44.thread, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44, %bb.b, %bb.a, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit45
  %.sroa.0.0 = phi i1 [ true, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit45 ], [ false, %bb.a ], [ false, %bb.b ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44.thread ], [ false, %bb.c ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtNtB6_4text6inline11MultiLookupeEB1j_INtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef %8)
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.04.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 3 uses
  %.sroa.011.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 3 uses
  %i.b = icmp ult i64 %.sroa.04.0, 512
  %i.c = icmp ult i64 %.sroa.011.0, 512
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_RNvMs0_NtCsb9zoKkpXuBA_3zip9zipcryptoINtB5_15ZipCryptoReaderINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeQINtNtB11_6cursor6CursorNtNtCs56aZGHL6Dc6_7ruff_db8vendored11ArchiveDataEEE8validateB21_:bb.a
  %i.r = load i8, ptr %.sroa.05.0.ptr.7, align 1, !noundef !4
  %i.s = call noundef i8 @_RNvMs_NtCsb9zoKkpXuBA_3zip9zipcryptoNtB4_13ZipCryptoKeys12decrypt_byte(ptr noalias noundef nonnull align 4 dereferenceable(12) %i.c, i8 noundef %i.r)
  store i8 %i.s, ptr %.sroa.05.0.ptr.7, align 1
  %.sroa.05.0.ptr.8 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.t = load i8, ptr %.sroa.05.0.ptr.8, align 1, !noundef !4
  %i.u = call noundef i8 @_RNvMs_NtCsb9zoKkpXuBA_3zip9zipcryptoNtB4_13ZipCryptoKeys12decrypt_byte(ptr noalias noundef nonnull align 4 dereferenceable(12) %i.c, i8 noundef %i.t)
  store i8 %i.u, ptr %.sroa.05.0.ptr.8, align 1
  %.sroa.05.0.ptr.9 = getelementptr inbounds nuw i8, ptr %i.a, i64 9 ; 2 uses
  %i.v = load i8, ptr %.sroa.05.0.ptr.9, align 1, !noundef !4
  %i.w = call noundef i8 @_RNvMs_NtCsb9zoKkpXuBA_3zip9zipcryptoNtB4_13ZipCryptoKeys12decrypt_byte(ptr noalias noundef nonnull align 4 dereferenceable(12) %i.c, i8 noundef %i.v)
  store i8 %i.w, ptr %.sroa.05.0.ptr.9, align 1
  %.sroa.05.0.ptr.10 = getelementptr inbounds nuw i8, ptr %i.a, i64 10 ; 2 uses
  %i.x = load i8, ptr %.sroa.05.0.ptr.10, align 1, !noundef !4
  %i.y = call noundef i8 @_RNvMs_NtCsb9zoKkpXuBA_3zip9zipcryptoNtB4_13ZipCryptoKeys12decrypt_byte(ptr noalias noundef nonnull align 4 dereferenceable(12) %i.c, i8 noundef %i.x)
  store i8 %i.y, ptr %.sroa.05.0.ptr.10, align 1
  %.sroa.05.0.ptr.11 = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.z = load i8, ptr %.sroa.05.0.ptr.11, align 1, !noundef !4
  %i.aa = call noundef i8 @_RNvMs_NtCsb9zoKkpXuBA_3zip9zipcryptoNtB4_13ZipCryptoKeys12decrypt_byte(ptr noalias noundef nonnull align 4 dereferenceable(12) %i.c, i8 noundef %i.z) ; 2 uses
  %i.ab = trunc i64 %2 to i1
  br i1 %i.ab, label %bb.c, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.ac, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %.sroa.413.0..sroa_idx, align 8
  br label %bb.g

bb.c:                                             ; preds = %.preheader
  %sum.shift18 = lshr i64 %2, 24
  %i.ad = trunc i64 %sum.shift18 to i8
  %.not19 = icmp eq i8 %i.aa, %i.ad
  br i1 %.not19, label %bb.f, label %bb.h

bb.d:                                             ; preds = %.preheader
  %sum.shift = lshr i64 %2, 56
  %i.ae = trunc nuw i64 %sum.shift to i8
  %.not17 = icmp eq i8 %i.aa, %i.ae
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775804, ptr %i.af, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %bb.h, %bb.e, %bb.b
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775804, ptr %i.ag, align 8
  br label %bb.g

bb.i:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs1_NtCsb9zoKkpXuBA_3zip9zipcryptoINtB5_15ZipCryptoWriterINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEEE6finishCs56aZGHL6Dc6_7ruff_db(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(4144) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i64, ptr } @_RNvMs1_NtCsb9zoKkpXuBA_3zip9zipcryptoINtB5_15ZipCryptoWriterQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorQINtNtCscdodAO9FK5_5alloc3vec3VechEEE6finishCs56aZGHL6Dc6_7ruff_db(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(4120) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4
  %i.b = insertvalue { i64, ptr } { i64 0, ptr undef }, ptr %i.a, 1
  ret { i64, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodeNtNtNtCs56aZGHL6Dc6_7ruff_db5files9file_root8FileRootE12insert_routeBP_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(144) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [144 x i8], align 8               ; 20 uses
  %i.c = alloca [144 x i8], align 8               ; 22 uses
  %i.d = alloca [144 x i8], align 8               ; 11 uses
  %i.e = alloca [144 x i8], align 8               ; 22 uses
  %i.f = alloca [144 x i8], align 8               ; 11 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 9 uses
  %i.k = alloca [40 x i8], align 8                ; 7 uses
  %i.l = alloca [40 x i8], align 8                ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 4 uses
  %i.n = alloca [48 x i8], align 8                ; 5 uses
  %i.o = alloca [144 x i8], align 8               ; 22 uses
  %i.p = alloca [144 x i8], align 8               ; 13 uses
  %i.q = alloca [40 x i8], align 8                ; 4 uses
  %i.r = alloca [40 x i8], align 8                ; 4 uses
  %i.s = alloca [48 x i8], align 8                ; 5 uses
  %i.t = alloca [40 x i8], align 8                ; 8 uses
  %i.u = alloca [32 x i8], align 8                ; 13 uses
  %i.v = alloca [48 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @_RNvNtCskYQKiYedT9l_7matchit4tree13find_wildcard(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.w = load i64, ptr %i.u, align 8, !range !12, !noundef !4
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6.sroa.4162.0..sroa.6.0..sroa_idx153.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.6.sroa.5165.0..sroa.6.0..sroa_idx153.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 132
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.5121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 137
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.5128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 120 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %.sroa.5108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 132
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 137
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %.sroa.4143.0..sroa_idx144 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5148.0..sroa_idx149 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.sroa.4162.0..sroa.6.0..sroa_idx154.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.6.sroa.5165.0..sroa.6.0..sroa_idx154.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.4116.0..sroa_idx117 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.5121.0..sroa_idx122 = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 137
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %.sroa.4169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.sroa.5170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %.sroa.4103.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %.sroa.5108.0..sroa_idx109 = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 132
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 137
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %.sroa.4143.0..sroa_idx146 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5148.0..sroa_idx151 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.sroa.4162.0..sroa.6.0..sroa_idx155.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.6.sroa.5165.0..sroa.6.0..sroa_idx155.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.4116.0..sroa_idx119 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.5121.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 137
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.2172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.3173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %.sroa.4103.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.sroa.5108.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  br label %bb.b

._crit_edge:                                      ; preds = %bb.av, %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.569.0.copyload = load i64, ptr %.sroa.569.0..sroa_idx, align 8
  %i.bm = load <2 x i64>, ptr %i.bl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store <2 x i64> %i.bm, ptr %0, align 8
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.569.0.copyload, ptr %.sroa.572.0..sroa_idx, align 8
  br label %bb.bc

bb.b:                                             ; preds = %.lr.ph, %bb.av
  %.sroa.0.0287 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.2, %bb.av ] ; 19 uses
  %.sroa.061.0.copyload = load i64, ptr %i.y, align 8
  %.sroa.462.0.copyload = load i64, ptr %.sroa.462.0..sroa_idx, align 8 ; 11 uses
  %.sroa.563.0.copyload = load i64, ptr %.sroa.563.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.bn = trunc nuw i64 %.sroa.061.0.copyload to i1
  br i1 %i.bn, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bo = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bp = load i64, ptr %i.z, align 8, !noundef !4 ; 4 uses
  %i.bq = icmp ult i64 %.sroa.563.0.copyload, %.sroa.462.0.copyload
  %.not190 = icmp ugt i64 %.sroa.563.0.copyload, %i.bp
  %or.cond470 = or i1 %i.bq, %.not190
  br i1 %or.cond470, label %bb.f, label %bb.e, !prof !1991

bb.d:                                             ; preds = %bb.b
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.0287, i64 120
  store i32 1, ptr %i.br, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0287, i64 124
  store i32 %3, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0287, i64 128
  store i32 %4, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskYQKiYedT9l_7matchit6escape14UnescapedRouteECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(48) %.sroa.0.0287)
          to label %bb.bb unwind label %bb.ba

bb.e:                                             ; preds = %bb.c
  %i.bs = sub nuw i64 %.sroa.563.0.copyload, %.sroa.462.0.copyload ; 2 uses
  %i.bt = icmp ugt i64 %i.bs, 1
  br i1 %i.bt, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.462.0.copyload, i64 noundef %.sroa.563.0.copyload, i64 noundef %i.bp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #22
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.sroa.462.0.copyload
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !noundef !4
  %i.bx = icmp eq i8 %i.bw, 42
  br i1 %i.bx, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.e
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #22
  unreachable

bb.i:                                             ; preds = %bb.g
  %.not193 = icmp eq i64 %.sroa.563.0.copyload, %i.bp
  br i1 %.not193, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.g
  %.not191 = icmp eq i64 %.sroa.462.0.copyload, 0
  br i1 %.not191, label %bb.v, label %bb.x

bb.k:                                             ; preds = %bb.i
  %.not194 = icmp eq i64 %.sroa.462.0.copyload, 0
  br i1 %.not194, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.i
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.bc

bb.m:                                             ; preds = %bb.p, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.p, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 0, ptr %i.o, align 8
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.488.0..sroa_idx, align 8
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.589.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.by = getelementptr inbounds nuw i8, ptr %i.o, i64 132
  store i32 0, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  store i8 0, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.477.0..sroa_idx, align 8
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store i64 0, ptr %.sroa.578.0..sroa_idx, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.o, i64 137
  store i8 5, ptr %i.cb, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.o, i64 72 ; 2 uses
  store i64 0, ptr %i.cc, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.480.0..sroa_idx, align 8
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  store i32 0, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.581.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.474.0..sroa_idx, align 8
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  store i64 0, ptr %.sroa.575.0..sroa_idx, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.p, i64 132
  store i32 1, ptr %i.cf, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  store i8 0, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i64 24, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.p, i64 137
  store i8 4, ptr %i.ci, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  store i32 1, ptr %i.ck, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 124
  store i32 %3, ptr %.sroa.445.0..sroa_idx, align 4
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  store i32 %4, ptr %.sroa.546.0..sroa_idx, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false)
  %i.cm = invoke fastcc noundef i64 @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodeNtNtNtCs56aZGHL6Dc6_7ruff_db5files9file_root8FileRootE9add_childBP_(ptr noalias noundef align 8 dereferenceable(144) %.sroa.0.0287, ptr noalias noundef align 8 captures(address) dereferenceable(144) %i.p)
          to label %bb.r unwind label %bb.q       ; 3 uses

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef11slice_until(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.462.0.copyload)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.s, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskYQKiYedT9l_7matchit6escape14UnescapedRouteECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(48) %.sroa.0.0287)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0287, ptr noundef nonnull align 8 dereferenceable(48) %i.s, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef9slice_off(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.462.0.copyload)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.m

bb.q:                                             ; preds = %bb.m
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskYQKiYedT9l_7matchit6escape14UnescapedRouteECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(48) %i.o) #23
          to label %common.resume unwind label %bb.u

bb.r:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskYQKiYedT9l_7matchit6escape14UnescapedRouteECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(48) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0287, i64 136
  store i8 1, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0287, i64 88
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !4 ; 2 uses
  %i.cs = icmp ult i64 %i.cm, %i.cr
  br i1 %i.cs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0287, i64 80
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !4, !noundef !4
  %i.cv = getelementptr inbounds nuw [144 x i8], ptr %i.cu, i64 %i.cm
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cv, ptr %i.cw, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bc

bb.t:                                             ; preds = %bb.r
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cm, i64 noundef %i.cr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #22
  unreachable

bb.u:                                             ; preds = %bb.ao, %bb.ai, %bb.q
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.v:                                             ; preds = %bb.z, %bb.j
  %i.cy = phi i64 [ %.pre370, %bb.z ], [ %i.bp, %bb.j ] ; 4 uses
  %i.cz = phi ptr [ %.pre, %bb.z ], [ %i.bo, %bb.j ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cy
  %i.db = icmp samesign eq i64 %i.cy, 0
  br i1 %i.db, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %bb.w
  %.sroa.02.08.i = phi i64 [ %i.df, %bb.w ], [ 0, %bb.v ] ; 3 uses
  %i.dc = phi ptr [ %i.de, %bb.w ], [ %i.cz, %bb.v ] ; 2 uses
  %.val.i = load i8, ptr %i.dc, align 1, !noalias !1992, !noundef !4
  %i.dd = icmp eq i8 %.val.i, 47
  br i1 %i.dd, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 1 ; 2 uses
  %i.df = add nuw i64 %.sroa.02.08.i, 1
  %i.dg = icmp eq ptr %i.de, %i.da
  br i1 %i.dg, label %.loopexit, label %.lr.ph.i

bb.x:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef11slice_until(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.462.0.copyload)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskYQKiYedT9l_7matchit6escape14UnescapedRouteECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(48) %.sroa.0.0287)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0287, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef9slice_off(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.462.0.copyload)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.pre = load ptr, ptr %2, align 8
  %.pre370 = load i64, ptr %i.z, align 8
  br label %bb.v

bb.aa:                                            ; preds = %.lr.ph.i
  %i.di = icmp ult i64 %.sroa.02.08.i, %i.cy
  call void @llvm.assume(i1 %i.di)
  %i.dj = add nuw i64 %.sroa.02.08.i, 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.w, %bb.v, %bb.aa
  %.sroa.052.0 = phi i64 [ %i.dj, %bb.aa ], [ 0, %bb.v ], [ %i.cy, %bb.w ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.sroa.399.0 = call i64 @llvm.usub.sat.i64(i64 %.sroa.563.0.copyload, i64 %.sroa.462.0.copyload)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef11slice_until(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.399.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef11slice_until(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.052.0)
  %i.dk = load i64, ptr %i.aa, align 8, !noundef !4
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef9slice_off(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i, i64 noundef %i.dk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef9slice_off(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.052.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false)
  call void @_RNvNtCskYQKiYedT9l_7matchit4tree13find_wildcard(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dl = load i64, ptr %i.g, align 8, !range !12, !noundef !4 ; 2 uses
  %i.dm = trunc nuw i64 %i.dl to i1
  %i.dn = load i64, ptr %i.ab, align 8, !range !13 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 0
  %or.cond.not = select i1 %i.dm, i1 true, i1 %i.do
  br i1 %or.cond.not, label %bb.ab, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangejEENtNtCskYQKiYedT9l_7matchit5error11InsertErrorEECs56aZGHL6Dc6_7ruff_db.exit199

bb.ab:                                            ; preds = %.loopexit
  %i.dp = icmp ne i64 %i.dl, 0
  %i.dq = icmp sgt i64 %i.dn, -1
  %or.cond = select i1 %i.dp, i1 %i.dq, i1 false
  br i1 %or.cond, label %bb.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangejEENtNtCskYQKiYedT9l_7matchit5error11InsertErrorEECs56aZGHL6Dc6_7ruff_db.exit

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db.exit.i.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %common.resume unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume.sink.split:                         ; preds = %bb.o, %bb.y, %bb.ba
  %.sink = phi ptr [ %i.v, %bb.ba ], [ %i.n, %bb.y ], [ %i.s, %bb.o ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.fr, %bb.ba ], [ %i.dh, %bb.y ], [ %i.cn, %bb.o ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0287, ptr noundef nonnull align 8 dereferenceable(48) %.sink, i64 48, i1 false)
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.q, %bb.ao, %bb.ai, %bb.ad
  %common.resume.op = phi { ptr, i32 } [ %i.dr, %bb.ad ], [ %i.ea, %bb.ai ], [ %i.el, %bb.ao ], [ %i.co, %bb.q ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db.exit.i.i: ; preds = %bb.ac
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangejEENtNtCskYQKiYedT9l_7matchit5error11InsertErrorEECs56aZGHL6Dc6_7ruff_db.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangejEENtNtCskYQKiYedT9l_7matchit5error11InsertErrorEECs56aZGHL6Dc6_7ruff_db.exit: ; preds = %bb.ab, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.dt = load i64, ptr %i.ac, align 8, !noundef !4 ; 2 uses
  %i.du = icmp eq i64 %i.dt, 0
  switch i64 %i.dt, label %bb.ah [
    i64 0, label %bb.af
    i64 1, label %bb.ag
  ]

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangejEENtNtCskYQKiYedT9l_7matchit5error11InsertErrorEECs56aZGHL6Dc6_7ruff_db.exit199: ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.bc

bb.af:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangejEENtNtCskYQKiYedT9l_7matchit5error11InsertErrorEECs56aZGHL6Dc6_7ruff_db.exit, %bb.ah, %bb.ag
  %.sroa.056.0 = phi i8 [ 1, %bb.ah ], [ %i.dz, %bb.ag ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangejEENtNtCskYQKiYedT9l_7matchit5error11InsertErrorEECs56aZGHL6Dc6_7ruff_db.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4143.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5148.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.4162.0..sroa.6.0..sroa_idx153.sroa_idx, align 8
  store i32 0, ptr %i.ad, align 4
  store i8 0, ptr %i.ae, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.5165.0..sroa.6.0..sroa_idx153.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4116.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5121.0..sroa_idx, align 8
  store i8 5, ptr %i.ag, align 1
  store i64 0, ptr %i.ah, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4127.0..sroa_idx, align 8
  store i32 0, ptr %i.ai, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5128.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4103.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5108.0..sroa_idx, align 8
  store i32 1, ptr %i.ak, align 4
  store i8 0, ptr %i.al, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  store i8 %.sroa.056.0, ptr %i.an, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ap, ptr noundef nonnull align 8 dereferenceable(12) %i.ai, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  %i.dv = invoke fastcc noundef i64 @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodeNtNtNtCs56aZGHL6Dc6_7ruff_db5files9file_root8FileRootE9add_childBP_(ptr noalias noundef align 8 dereferenceable(144) %.sroa.0.0287, ptr noalias noundef align 8 captures(address) dereferenceable(144) %i.f)
          to label %bb.aj unwind label %bb.ai     ; 3 uses

bb.ag:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangejEENtNtCskYQKiYedT9l_7matchit5error11InsertErrorEECs56aZGHL6Dc6_7ruff_db.exit
  %i.dw = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.dx = load i8, ptr %i.dw, align 1, !noundef !4
  %i.dy = icmp ne i8 %i.dx, 47
  %i.dz = zext i1 %i.dy to i8
  br label %bb.af

bb.ah:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangejEENtNtCskYQKiYedT9l_7matchit5error11InsertErrorEECs56aZGHL6Dc6_7ruff_db.exit
  br label %bb.af

bb.ai:                                            ; preds = %bb.af
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskYQKiYedT9l_7matchit6escape14UnescapedRouteECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(48) %i.e) #23
          to label %common.resume unwind label %bb.u

bb.aj:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskYQKiYedT9l_7matchit6escape14UnescapedRouteECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0.0287, i64 136
  store i8 1, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.0287, i64 88
  %i.ed = load i64, ptr %i.ec, align 8, !noundef !4 ; 2 uses
  %i.ee = icmp ult i64 %i.dv, %i.ed
  br i1 %i.ee, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.0287, i64 80
  %i.eg = load ptr, ptr %i.ef, align 8, !nonnull !4, !noundef !4
  %i.eh = getelementptr inbounds nuw [144 x i8], ptr %i.eg, i64 %i.dv ; 4 uses
  br i1 %i.du, label %bb.an, label %bb.am

bb.al:                                            ; preds = %bb.aj
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.dv, i64 noundef %i.ed, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #22
  unreachable

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4143.0..sroa_idx144, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5148.0..sroa_idx149, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.4162.0..sroa.6.0..sroa_idx154.sroa_idx, align 8
  store i32 0, ptr %i.ar, align 4
  store i8 0, ptr %i.as, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.5165.0..sroa.6.0..sroa_idx154.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4116.0..sroa_idx117, align 8
  store i64 0, ptr %.sroa.5121.0..sroa_idx122, align 8
  store i8 5, ptr %i.au, align 1
  store i64 0, ptr %i.av, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4169.0..sroa_idx, align 8
  store i32 0, ptr %i.aw, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5170.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4103.0..sroa_idx104, align 8
  store i64 0, ptr %.sroa.5108.0..sroa_idx109, align 8
  store i32 1, ptr %i.ay, align 4
  store i8 0, ptr %i.az, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false)
  store i8 5, ptr %i.bb, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bd, ptr noundef nonnull align 8 dereferenceable(12) %i.aw, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false)
  %i.ei = invoke fastcc noundef i64 @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodeNtNtNtCs56aZGHL6Dc6_7ruff_db5files9file_root8FileRootE16add_suffix_childBP_(ptr noalias noundef align 8 dereferenceable(144) %i.eh, ptr noalias noundef align 8 captures(address) dereferenceable(144) %i.d)
          to label %bb.ap unwind label %bb.ao     ; 3 uses

bb.an:                                            ; preds = %bb.aq, %bb.ak
  %.sroa.0.1 = phi ptr [ %i.eh, %bb.ak ], [ %i.er, %bb.aq ] ; 11 uses
  %i.ej = load i64, ptr %i.z, align 8, !noundef !4
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %bb.as, label %bb.at

bb.ao:                                            ; preds = %bb.am
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskYQKiYedT9l_7matchit6escape14UnescapedRouteECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(48) %i.c) #23
          to label %common.resume unwind label %bb.u

bb.ap:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskYQKiYedT9l_7matchit6escape14UnescapedRouteECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 88
  %i.en = load i64, ptr %i.em, align 8, !noundef !4 ; 2 uses
  %i.eo = icmp ult i64 %i.ei, %i.en
  br i1 %i.eo, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eh, i64 80
  %i.eq = load ptr, ptr %i.ep, align 8, !nonnull !4, !noundef !4
  %i.er = getelementptr inbounds nuw [144 x i8], ptr %i.eq, i64 %i.ei
  br label %bb.an

bb.ar:                                            ; preds = %bb.ap
end_hunk_1
