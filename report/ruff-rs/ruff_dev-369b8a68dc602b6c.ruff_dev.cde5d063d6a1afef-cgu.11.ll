Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_dev-369b8a68dc602b6c.ruff_dev.cde5d063d6a1afef-cgu.11?download=true
inline.NumInlined: 1068
inline.NumDeleted: 461
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB6_4text12TextDiffSideeEB1j_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECshFZivb7RUAJ_8ruff_dev:bb.a
  %i.af = load i64, ptr %i.ac, align 8, !range !16, !alias.scope !1336, !noalias !1337, !noundef !6
  %i.ag = icmp eq i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCshFZivb7RUAJ_8ruff_dev.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac), !noalias !1337
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCshFZivb7RUAJ_8ruff_dev.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCshFZivb7RUAJ_8ruff_dev.exit: ; preds = %bb.d, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !1336, !noalias !1337, !nonnull !6, !noundef !6
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %i.ai, i64 %i.ae ; 4 uses
  store i64 1, ptr %i.aj, align 8, !noalias !1338
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !1338
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %.sroa.04.0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !1338
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i64 %5, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !1338
  %i.ak = add i64 %i.ae, 1
  store i64 %i.ak, ptr %i.ad, align 8, !alias.scope !1336, !noalias !1337
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  %i.al = load ptr, ptr %i.aa, align 8, !alias.scope !1339, !noalias !1340, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 120 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 136 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !1341, !noalias !1342, !noundef !6 ; 3 uses
  %i.ap = load i64, ptr %i.am, align 8, !range !16, !alias.scope !1341, !noalias !1342, !noundef !6
  %i.aq = icmp eq i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.f, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCshFZivb7RUAJ_8ruff_dev.exit30

bb.f:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCshFZivb7RUAJ_8ruff_dev.exit
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am), !noalias !1342
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCshFZivb7RUAJ_8ruff_dev.exit30

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCshFZivb7RUAJ_8ruff_dev.exit30: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCshFZivb7RUAJ_8ruff_dev.exit, %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !1341, !noalias !1342, !nonnull !6, !noundef !6
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %i.as, i64 %i.ao ; 4 uses
  store i64 2, ptr %i.at, align 8, !noalias !1343
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %2, ptr %.sroa.435.0..sroa_idx, align 8, !noalias !1343
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %5, ptr %.sroa.536.0..sroa_idx, align 8, !noalias !1343
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 %.sroa.011.0, ptr %.sroa.637.0..sroa_idx, align 8, !noalias !1343
  %i.au = add i64 %i.ao, 1
  store i64 %i.au, ptr %i.an, align 8, !alias.scope !1341, !noalias !1342
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29, %bb.b, %bb.a, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCshFZivb7RUAJ_8ruff_dev.exit30
  %.sroa.0.0 = phi i1 [ true, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCshFZivb7RUAJ_8ruff_dev.exit30 ], [ false, %bb.a ], [ false, %bb.b ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread ], [ false, %bb.c ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB6_4text12TextDiffSideeEB1j_INtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  br i1 %or.cond42.not, label %.thread, label %bb.g, !prof !27

.thread:                                          ; preds = %bb.c
  %i.h = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 1        ; 2 uses
  %i.j = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 1
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %.thread
  %i.m = extractvalue { ptr, i64 } %i.j, 0
  %i.n = extractvalue { ptr, i64 } %i.h, 0
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %i.n, ptr nonnull readonly %i.m, i64 %i.i), !alias.scope !1356
  %i.o = icmp eq i32 %bcmp.i, 0
  br i1 %i.o, label %bb.g, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread: ; preds = %.thread, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit
  %i.p = add i64 %6, -1
  %i.q = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 1        ; 2 uses
  %i.s = add i64 %3, -1
  %i.t = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.t, 1
  %i.v = icmp eq i64 %i.r, %i.u
  br i1 %i.v, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread
  %i.w = extractvalue { ptr, i64 } %i.t, 0
  %i.x = extractvalue { ptr, i64 } %i.q, 0
  %bcmp.i28 = tail call i32 @bcmp(ptr nonnull readonly %i.x, ptr nonnull readonly %i.w, i64 %i.r), !alias.scope !1357
  %i.y = icmp eq i32 %bcmp.i28, 0
  br i1 %i.y, label %bb.g, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29
  %i.z = tail call fastcc noundef i8 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtB6_4text12TextDiffSideeEB15_ECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  %cond = icmp eq i8 %i.z, 0
  br i1 %cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !1358, !noalias !1359, !noundef !6 ; 4 uses
  %i.ad = load i64, ptr %i.aa, align 8, !range !16, !alias.scope !1358, !noalias !1359, !noundef !6
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.e, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCshFZivb7RUAJ_8ruff_dev.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa), !noalias !1359
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCshFZivb7RUAJ_8ruff_dev.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCshFZivb7RUAJ_8ruff_dev.exit: ; preds = %bb.d, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !1358, !noalias !1359, !nonnull !6, !noundef !6
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %i.ac ; 4 uses
  store i64 1, ptr %i.ah, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %.sroa.04.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 %5, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ai = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.ai, ptr %i.ab, align 8, !alias.scope !1358, !noalias !1359
  %i.aj = load i64, ptr %i.aa, align 8, !range !16, !alias.scope !1360, !noalias !1361, !noundef !6
  %i.ak = icmp eq i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.f, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCshFZivb7RUAJ_8ruff_dev.exit30

bb.f:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCshFZivb7RUAJ_8ruff_dev.exit
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa), !noalias !1361
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCshFZivb7RUAJ_8ruff_dev.exit30

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCshFZivb7RUAJ_8ruff_dev.exit30: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCshFZivb7RUAJ_8ruff_dev.exit, %bb.f
  %i.al = load ptr, ptr %i.af, align 8, !alias.scope !1360, !noalias !1361, !nonnull !6, !noundef !6
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.al, i64 %i.ai ; 4 uses
  store i64 2, ptr %i.am, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %2, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %5, ptr %.sroa.536.0..sroa_idx, align 8
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i64 %.sroa.011.0, ptr %.sroa.637.0..sroa_idx, align 8
  %i.an = add i64 %i.ac, 2
  store i64 %i.an, ptr %i.ab, align 8, !alias.scope !1360, !noalias !1361
  tail call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(160) %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29, %bb.b, %bb.a, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCshFZivb7RUAJ_8ruff_dev.exit30
  %.sroa.0.0 = phi i1 [ true, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCshFZivb7RUAJ_8ruff_dev.exit30 ], [ false, %bb.a ], [ false, %bb.b ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread ], [ false, %bb.c ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1S_12OffsetLookupmEEEB1j_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2f_B2f_INtNtB4_7compact7CompactB2f_B2f_IB2J_NtNtB4_7capture7CaptureEEEEECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 16 uses
  %i.e = tail call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef %8)
  br i1 %i.e, label %bb.ao, label %bb.b

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
  br i1 %or.cond, label %bb.ao, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.04.0, i64 %.sroa.011.0) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 0
  %i.n = extractvalue { i64, i1 } %i.l, 1
  %i.o = icmp ugt i64 %i.m, 131071
  %or.cond54.not = or i1 %i.n, %i.o
  br i1 %or.cond54.not, label %.thread, label %bb.ao, !prof !27

.thread:                                          ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val40 = load ptr, ptr %i.p, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val41 = load i64, ptr %i.q, align 8, !noundef !6 ; 4 uses
  %i.r = icmp ult i64 %5, %.val41
  br i1 %i.r, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit, label %bb.d

bb.d:                                             ; preds = %.thread
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %5, i64 noundef range(i64 0, 576460752303423488) %.val41, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #27, !noalias !1443
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit: ; preds = %.thread
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val38 = load ptr, ptr %i.s, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val39 = load i64, ptr %i.t, align 8, !noundef !6 ; 6 uses
  %i.u = icmp ult i64 %2, %.val39
  br i1 %i.u, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit46, label %bb.e

bb.e:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef range(i64 0, 576460752303423488) %.val39, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #27, !noalias !1444
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit46: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.val40, i64 %5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1446)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !1445, !noalias !1446, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !1445, !noalias !1446, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !1447, !noalias !1448, !noundef !6
  %i.ab = sub i64 %i.y, %i.aa                     ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !1447, !noalias !1448, !noundef !6 ; 2 uses
  %i.ae = icmp ult i64 %i.ab, %i.ad
  br i1 %i.ae, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit24, label %bb.f

bb.f:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit46
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #27, !noalias !1449
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit24: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit46
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.val38, i64 %2 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !1447, !noalias !1448, !nonnull !6, !noundef !6
  %i.ai = load ptr, ptr %i.af, align 8, !alias.scope !1446, !noalias !1445, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !1446, !noalias !1445, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !1450, !noalias !1451, !noundef !6
  %i.an = sub i64 %i.ak, %i.am                    ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !1450, !noalias !1451, !noundef !6 ; 2 uses
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit, label %bb.g

bb.g:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit24
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.an, i64 noundef %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #27, !noalias !1452
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit24
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ab
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !1450, !noalias !1451, !nonnull !6, !noundef !6
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.an
  %.val30 = load i32, ptr %i.ar, align 4, !noundef !6
  %.val31 = load i32, ptr %i.au, align 4, !noundef !6
  %i.av = icmp eq i32 %.val30, %.val31
  br i1 %i.av, label %bb.ao, label %bb.h

bb.h:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit
  %i.aw = add i64 %6, -1                          ; 3 uses
  %i.ax = icmp ult i64 %i.aw, %.val41
  br i1 %i.ax, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit47, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aw, i64 noundef range(i64 0, 576460752303423488) %.val41, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #27, !noalias !1453
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit47: ; preds = %bb.h
  %i.ay = add i64 %3, -1                          ; 3 uses
  %i.az = icmp ult i64 %i.ay, %.val39
  br i1 %i.az, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit48, label %bb.j

bb.j:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit47
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ay, i64 noundef range(i64 0, 576460752303423488) %.val39, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #27, !noalias !1454
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit48: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit47
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.val40, i64 %i.aw ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !1455, !noalias !1456, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !1455, !noalias !1456, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !1457, !noalias !1458, !noundef !6
  %i.bg = sub i64 %i.bd, %i.bf                    ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !1457, !noalias !1458, !noundef !6 ; 2 uses
  %i.bj = icmp ult i64 %i.bg, %i.bi
  br i1 %i.bj, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit26, label %bb.k

bb.k:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit48
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bg, i64 noundef %i.bi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #27, !noalias !1459
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit26: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit48
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %.val38, i64 %i.ay ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !1457, !noalias !1458, !nonnull !6, !noundef !6
  %i.bn = load ptr, ptr %i.bk, align 8, !alias.scope !1456, !noalias !1455, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !1456, !noalias !1455, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1460)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !1460, !noalias !1461, !noundef !6
  %i.bs = sub i64 %i.bp, %i.br                    ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !1460, !noalias !1461, !noundef !6 ; 2 uses
  %i.bv = icmp ult i64 %i.bs, %i.bu
  br i1 %i.bv, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit25, label %bb.l

bb.l:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit26
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bs, i64 noundef %i.bu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #27, !noalias !1462
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit25: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit26
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bg
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !1460, !noalias !1461, !nonnull !6, !noundef !6
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bs
  %.val32 = load i32, ptr %i.bw, align 4, !noundef !6
  %.val33 = load i32, ptr %i.bz, align 4, !noundef !6
  %i.ca = icmp eq i32 %.val32, %.val33
  br i1 %i.ca, label %bb.ao, label %bb.m

bb.m:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cb = tail call { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16) ; 2 uses
  %i.cc = extractvalue { i64, i64 } %i.cb, 0
  %i.cd = extractvalue { i64, i64 } %i.cb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 4 uses
  store i64 %i.cc, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.cd, ptr %.sroa.5.0..sroa_idx.i, align 8
  br i1 %i.f, label %.lr.ph.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.preheader.i

.lr.ph.i:                                         ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx.i55.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0..sroa_idx.i56.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.n

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.preheader.i: ; preds = %bb.am, %bb.m
  br i1 %i.h, label %.lr.ph114.i, label %.loopexit

.lr.ph114.i:                                      ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.preheader.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.o

.loopexit.i:                                      ; preds = %bb.t, %bb.p
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.al, %bb.ai, %bb.ah, %bb.ad, %bb.aa
  %lpad.loopexit66.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.invoke.i
  %lpad.loopexit.split-lp67.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit66.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp67.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjEEECshFZivb7RUAJ_8ruff_dev.exit.i unwind label %bb.an

bb.n:                                             ; preds = %bb.am, %.lr.ph.i
  %.sroa.0.032111.i = phi i64 [ %2, %.lr.ph.i ], [ %i.ci, %bb.am ] ; 3 uses
  %.sroa.8.0110.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cj, %bb.am ] ; 2 uses
  %i.ci = add nuw i64 %.sroa.0.032111.i, 1
  %i.cj = add nuw i64 %.sroa.8.0110.i, 1          ; 2 uses
  %i.ck = and i64 %.sroa.8.0110.i, 1023
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %bb.aa, label %bb.ac

bb.o:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.i, %.lr.ph114.i
  %.sroa.011.0113.i = phi i64 [ %5, %.lr.ph114.i ], [ %i.cm, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.i ] ; 2 uses
  %.sroa.813.0112.i = phi i64 [ 0, %.lr.ph114.i ], [ %i.cn, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.i ] ; 2 uses
  %i.cm = add nuw i64 %.sroa.011.0113.i, 1
  %i.cn = add nuw i64 %.sroa.813.0112.i, 1        ; 2 uses
  %i.co = and i64 %.sroa.813.0112.i, 1023
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cq = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %bb.q unwind label %.loopexit.i

bb.q:                                             ; preds = %bb.p
  br i1 %i.cq, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1E_12OffsetLookupmEEEB15_ECshFZivb7RUAJ_8ruff_dev.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %.val40, i64 %.sroa.011.0113.i ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !1463, !noalias !1464, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !1463, !noalias !1464, !noundef !6
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cw = load i64, ptr %i.cv, align 8, !alias.scope !1465, !noalias !1466, !noundef !6
  %i.cx = sub i64 %i.cu, %i.cw                    ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !1465, !noalias !1466, !noundef !6 ; 2 uses
  %i.da = icmp ult i64 %i.cx, %i.cz
  br i1 %i.da, label %bb.s, label %.invoke.i

bb.s:                                             ; preds = %bb.r
  %i.db = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !alias.scope !1465, !noalias !1466, !nonnull !6, !noundef !6
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.cx
  %.val.i = load i32, ptr %i.dd, align 4, !noundef !6 ; 4 uses
  %.sroa.4.0.extract.shift.i.i.i = lshr i32 %.val.i, 8
  %.sroa.5.0.extract.shift.i.i.i = lshr i32 %.val.i, 16
  %.sroa.6.0.extract.shift.i.i.i = lshr i32 %.val.i, 24
  %.sroa.6.0.extract.trunc.i.i.i = zext nneg i32 %.sroa.6.0.extract.shift.i.i.i to i64
  %i.de = and i32 %.val.i, 255
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = xor i64 %i.df, -3750763034362895579
  %i.dh = mul i64 %i.dg, 1099511628211
  %i.di = and i32 %.sroa.4.0.extract.shift.i.i.i, 255
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = xor i64 %i.dh, %i.dj
  %i.dl = mul i64 %i.dk, 1099511628211
  %i.dm = and i32 %.sroa.5.0.extract.shift.i.i.i, 255
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = xor i64 %i.dl, %i.dn
  %i.dp = mul i64 %i.do, 1099511628211
  %i.dq = xor i64 %i.dp, %.sroa.6.0.extract.trunc.i.i.i
  %i.dr = mul i64 %i.dq, 1099511628211            ; 2 uses
  store i64 %i.dr, ptr %i.c, align 8
  %i.ds = load i64, ptr %i.cg, align 8, !alias.scope !1467, !noalias !1468, !noundef !6
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.du = invoke noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRyECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc29.i unwind label %.loopexit.i ; 2 uses

.noexc29.i:                                       ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  call void @llvm.experimental.noalias.scope.decl(metadata !1470)
  %i.dv = lshr i64 %i.du, 57
  %i.dw = trunc nuw nsw i64 %i.dv to i8
  %i.dx = load i64, ptr %i.ch, align 8, !alias.scope !1471, !noalias !1472, !noundef !6 ; 2 uses
  %i.dy = load ptr, ptr %i.d, align 8, !alias.scope !1471, !noalias !1472, !nonnull !6, !noundef !6 ; 2 uses
  %i.dz = insertelement <16 x i8> poison, i8 %i.dw, i64 0
  %i.ea = shufflevector <16 x i8> %i.dz, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %.noexc29.i
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.noexc29.i ], [ %i.er, %bb.w ]
  %.pn.i.i.i.i = phi i64 [ %i.du, %.noexc29.i ], [ %i.es, %bb.w ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.dx ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.eb, align 1, !noalias !1473 ; 2 uses
  %i.ec = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %i.ea
  %i.ed = bitcast <16 x i1> %i.ec to i16          ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.ed, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.u, %bb.v
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.eq, %bb.v ], [ %i.ed, %bb.u ] ; 3 uses
  %i.ee = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.ef = zext nneg i16 %i.ee to i64
  %i.eg = add i64 %.sroa.01.0.i.i.i.i, %i.ef
  %i.eh = and i64 %i.eg, %i.dx
  %i.ei = sub nsw i64 0, %i.eh
  %i.ej = getelementptr inbounds [32 x i8], ptr %i.dy, i64 %i.ei ; 3 uses
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -32
  %.val2.i.i.i.i = load i64, ptr %i.ek, align 8, !noalias !1474, !noundef !6
  %i.el = icmp eq i64 %i.dr, %.val2.i.i.i.i
  br i1 %i.el, label %bb.x, label %bb.v, !prof !13

._crit_edge.i.i.i:                                ; preds = %bb.v, %bb.u
  %i.em = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.en = bitcast <16 x i1> %i.em to i16
  %i.eo = icmp eq i16 %i.en, 0
  br i1 %i.eo, label %bb.w, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.i, !prof !15

bb.v:                                             ; preds = %.lr.ph.i.i.i
  %i.ep = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.eq = and i16 %i.ep, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.eq, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.w:                                             ; preds = %._crit_edge.i.i.i
  %i.er = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.es = add i64 %.sroa.01.0.i.i.i.i, %i.er
  br label %bb.u

bb.x:                                             ; preds = %.lr.ph.i.i.i
  %i.et = getelementptr inbounds i8, ptr %i.ej, i64 -16
  %i.eu = load ptr, ptr %i.et, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %i.ej, i64 -8
  %i.ew = load i64, ptr %i.ev, align 8, !noundef !6 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ew, 3
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.idx
  %.not.not.not.i.not.i152 = icmp eq i64 %i.ew, 0
  br i1 %.not.not.not.i.not.i152, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.i, label %.lr.ph

bb.y:                                             ; preds = %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_E0CshFZivb7RUAJ_8ruff_dev.exit.i.i
  %.not.not.not.i.not.i = icmp eq ptr %i.ez, %i.ex
  br i1 %.not.not.not.i.not.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x, %bb.y
  %i.ey = phi ptr [ %i.ez, %bb.y ], [ %i.eu, %bb.x ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %.val4.i.i = load i64, ptr %i.ey, align 8, !noalias !1475, !noundef !6 ; 3 uses
  %i.fa = icmp ult i64 %.val4.i.i, %.val39
  br i1 %i.fa, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit.i.i.i, label %.invoke.i

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit.i.i.i: ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !1476)
  call void @llvm.experimental.noalias.scope.decl(metadata !1477)
  %i.fb = load ptr, ptr %i.cr, align 8, !alias.scope !1476, !noalias !1478, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.fc = load i64, ptr %i.ct, align 8, !alias.scope !1476, !noalias !1478, !noundef !6
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fe = load i64, ptr %i.fd, align 8, !alias.scope !1479, !noalias !1480, !noundef !6
  %i.ff = sub i64 %i.fc, %i.fe                    ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fh = load i64, ptr %i.fg, align 8, !alias.scope !1479, !noalias !1480, !noundef !6 ; 2 uses
  %i.fi = icmp ult i64 %i.ff, %i.fh
  br i1 %i.fi, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit1.i.i.i, label %.invoke.i

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit1.i.i.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit.i.i.i
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %.val38, i64 %.val4.i.i ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !alias.scope !1477, !noalias !1481, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fm = load i64, ptr %i.fl, align 8, !alias.scope !1477, !noalias !1481, !noundef !6
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fo = load i64, ptr %i.fn, align 8, !alias.scope !1482, !noalias !1483, !noundef !6
  %i.fp = sub i64 %i.fm, %i.fo                    ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !alias.scope !1482, !noalias !1483, !noundef !6 ; 2 uses
  %i.fs = icmp ult i64 %i.fp, %i.fr
  br i1 %i.fs, label %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_E0CshFZivb7RUAJ_8ruff_dev.exit.i.i, label %.invoke.i

_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_E0CshFZivb7RUAJ_8ruff_dev.exit.i.i: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit1.i.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !alias.scope !1479, !noalias !1480, !nonnull !6, !noundef !6
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.ff
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !alias.scope !1482, !noalias !1483, !nonnull !6, !noundef !6
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.fp
  %.val.i.i.i = load i32, ptr %i.fv, align 4, !noalias !1475, !noundef !6
  %.val2.i.i.i = load i32, ptr %i.fy, align 4, !noalias !1475, !noundef !6
  %i.fz = icmp eq i32 %.val.i.i.i, %.val2.i.i.i
  br i1 %i.fz, label %bb.z, label %bb.y

bb.z:                                             ; preds = %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_E0CshFZivb7RUAJ_8ruff_dev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1E_12OffsetLookupmEEEB15_ECshFZivb7RUAJ_8ruff_dev.exit.thread

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.i: ; preds = %._crit_edge.i.i.i, %bb.y, %bb.x, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %exitcond163.not.i = icmp eq i64 %i.cn, %i.i
  br i1 %exitcond163.not.i, label %.loopexit, label %bb.o

bb.aa:                                            ; preds = %bb.n
  %i.ga = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.i

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.ga, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1E_12OffsetLookupmEEEB15_ECshFZivb7RUAJ_8ruff_dev.exit.thread, label %bb.ac

.invoke.i:                                        ; preds = %bb.ac, %bb.r, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit1.i.i.i, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit.i.i.i, %.lr.ph
  %9 = phi i64 [ %i.cx, %bb.r ], [ %i.fp, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit1.i.i.i ], [ %.val4.i.i, %.lr.ph ], [ %i.ff, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit.i.i.i ], [ %i.gh, %bb.ac ]
  %10 = phi i64 [ %i.cz, %bb.r ], [ %i.fr, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit1.i.i.i ], [ %.val39, %.lr.ph ], [ %i.fh, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit.i.i.i ], [ %i.gj, %bb.ac ]
  %11 = phi ptr [ @38, %bb.r ], [ @38, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit1.i.i.i ], [ @48, %.lr.ph ], [ @38, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit.i.i.i ], [ @38, %bb.ac ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %9, i64 noundef %10, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %11) #27
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ac:                                            ; preds = %bb.n, %bb.ab
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %.val38, i64 %.sroa.0.032111.i ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !alias.scope !1484, !noalias !1485, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !alias.scope !1484, !noalias !1485, !noundef !6
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.gg = load i64, ptr %i.gf, align 8, !alias.scope !1486, !noalias !1487, !noundef !6
  %i.gh = sub i64 %i.ge, %i.gg                    ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.gj = load i64, ptr %i.gi, align 8, !alias.scope !1486, !noalias !1487, !noundef !6 ; 2 uses
  %i.gk = icmp ult i64 %i.gh, %i.gj
  br i1 %i.gk, label %bb.ad, label %.invoke.i

bb.ad:                                            ; preds = %bb.ac
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !alias.scope !1486, !noalias !1487, !nonnull !6, !noundef !6
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.gh
  %.val18.i = load i32, ptr %i.gn, align 4, !noundef !6 ; 4 uses
  %.sroa.4.0.extract.shift.i.i37.i = lshr i32 %.val18.i, 8
  %.sroa.5.0.extract.shift.i.i38.i = lshr i32 %.val18.i, 16
  %.sroa.6.0.extract.shift.i.i39.i = lshr i32 %.val18.i, 24
  %.sroa.6.0.extract.trunc.i.i40.i = zext nneg i32 %.sroa.6.0.extract.shift.i.i39.i to i64
  %i.go = and i32 %.val18.i, 255
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = xor i64 %i.gp, -3750763034362895579
  %i.gr = mul i64 %i.gq, 1099511628211
  %i.gs = and i32 %.sroa.4.0.extract.shift.i.i37.i, 255
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = xor i64 %i.gr, %i.gt
  %i.gv = mul i64 %i.gu, 1099511628211
  %i.gw = and i32 %.sroa.5.0.extract.shift.i.i38.i, 255
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = xor i64 %i.gv, %i.gx
  %i.gz = mul i64 %i.gy, 1099511628211
  %i.ha = xor i64 %i.gz, %.sroa.6.0.extract.trunc.i.i40.i
  %i.hb = mul i64 %i.ha, 1099511628211            ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1488)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.hb, ptr %i.b, align 8, !noalias !1489
  %i.hc = invoke noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRyECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc52.i unwind label %.loopexit.split-lp.loopexit.i ; 3 uses

.noexc52.i:                                       ; preds = %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  %i.hd = lshr i64 %i.hc, 57
  %i.he = trunc nuw nsw i64 %i.hd to i8
  %i.hf = load i64, ptr %i.ce, align 8, !alias.scope !1492, !noalias !1493, !noundef !6 ; 2 uses
  %i.hg = load ptr, ptr %i.d, align 8, !alias.scope !1492, !noalias !1493, !nonnull !6, !noundef !6 ; 2 uses
  %i.hh = insertelement <16 x i8> poison, i8 %i.he, i64 0
  %i.hi = shufflevector <16 x i8> %i.hh, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ag, %.noexc52.i
  %.sroa.9.0.i.i.i42.i = phi i64 [ 0, %.noexc52.i ], [ %i.hz, %bb.ag ]
  %.pn.i.i.i43.i = phi i64 [ %i.hc, %.noexc52.i ], [ %i.ia, %bb.ag ]
  %.sroa.01.0.i.i.i44.i = and i64 %.pn.i.i.i43.i, %i.hf ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.sroa.01.0.i.i.i44.i
  %.sroa.0.0.copyload.i26.i.i45.i = load <16 x i8>, ptr %i.hj, align 1, !noalias !1494 ; 2 uses
  %i.hk = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i45.i, %i.hi
  %i.hl = bitcast <16 x i1> %i.hk to i16          ; 2 uses
  %.not.i.not32.i.i46.i = icmp eq i16 %i.hl, 0
  br i1 %.not.i.not32.i.i46.i, label %._crit_edge.i.i51.i, label %.lr.ph.i.i47.i

.lr.ph.i.i47.i:                                   ; preds = %bb.ae, %bb.af
  %.sroa.06.0.i33.i.i48.i = phi i16 [ %i.hy, %bb.af ], [ %i.hl, %bb.ae ] ; 3 uses
  %i.hm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i48.i, i1 true)
  %i.hn = zext nneg i16 %i.hm to i64
  %i.ho = add i64 %.sroa.01.0.i.i.i44.i, %i.hn
  %i.hp = and i64 %i.ho, %i.hf
  %i.hq = sub nsw i64 0, %i.hp
  %i.hr = getelementptr inbounds [32 x i8], ptr %i.hg, i64 %i.hq ; 2 uses
  %i.hs = getelementptr inbounds i8, ptr %i.hr, i64 -32
  %.val2.i.i.i49.i = load i64, ptr %i.hs, align 8, !noalias !1495, !noundef !6
  %i.ht = icmp eq i64 %.val2.i.i.i49.i, %i.hb
  br i1 %i.ht, label %bb.aj, label %bb.af, !prof !13

._crit_edge.i.i51.i:                              ; preds = %bb.af, %bb.ae
  %i.hu = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i45.i, splat (i8 -1)
  %i.hv = bitcast <16 x i1> %i.hu to i16
  %i.hw = icmp eq i16 %i.hv, 0
  br i1 %i.hw, label %bb.ag, label %bb.ah, !prof !15

bb.af:                                            ; preds = %.lr.ph.i.i47.i
  %i.hx = add i16 %.sroa.06.0.i33.i.i48.i, -1
  %i.hy = and i16 %i.hx, %.sroa.06.0.i33.i.i48.i  ; 2 uses
  %.not.i.not.i.i50.i = icmp eq i16 %i.hy, 0
  br i1 %.not.i.not.i.i50.i, label %._crit_edge.i.i51.i, label %.lr.ph.i.i47.i

bb.ag:                                            ; preds = %._crit_edge.i.i51.i
  %i.hz = add i64 %.sroa.9.0.i.i.i42.i, 16        ; 2 uses
  %i.ia = add i64 %.sroa.01.0.i.i.i44.i, %i.hz
  br label %bb.ae

bb.ah:                                            ; preds = %._crit_edge.i.i51.i
  invoke void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEE7reserveNCINvNtB8_3map11make_hasheryBR_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0ECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.i

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1496
  store i64 %i.hb, ptr %i.a, align 8, !noalias !1496
  store i64 0, ptr %i.cf, align 8, !noalias !1496
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i55.i, align 8, !noalias !1496
  store i64 0, ptr %.sroa.5.0..sroa_idx.i56.i, align 8, !noalias !1496
  %i.ib = invoke noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEE14insert_no_growCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.hc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.noexc58.i unwind label %.loopexit.split-lp.loopexit.i

.noexc58.i:                                       ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1496
  br label %bb.ak

bb.aj:                                            ; preds = %.lr.ph.i.i47.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.noexc58.i
  %.pn.i.i = phi ptr [ %i.ib, %.noexc58.i ], [ %i.hr, %bb.aj ] ; 3 uses
  %.sroa.0.0.i57.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -24 ; 2 uses
  %i.ic = getelementptr inbounds i8, ptr %.pn.i.i, i64 -8 ; 2 uses
  %i.id = load i64, ptr %i.ic, align 8, !alias.scope !1497, !noundef !6 ; 3 uses
  %i.ie = load i64, ptr %.sroa.0.0.i57.i, align 8, !range !16, !alias.scope !1497, !noundef !6
  %i.if = icmp eq i64 %i.id, %i.ie
  br i1 %i.if, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i57.i)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.i

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ig = getelementptr inbounds i8, ptr %.pn.i.i, i64 -16
  %i.ih = load ptr, ptr %i.ig, align 8, !alias.scope !1497, !nonnull !6, !noundef !6
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.id
  store i64 %.sroa.0.032111.i, ptr %i.ii, align 8
  %i.ij = add i64 %i.id, 1
  store i64 %i.ij, ptr %i.ic, align 8, !alias.scope !1497
  %exitcond160.not.i = icmp eq i64 %i.cj, %i.g
  br i1 %exitcond160.not.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.preheader.i, label %bb.n

bb.an:                                            ; preds = %.loopexit.split-lp.i
  %i.ik = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjEEECshFZivb7RUAJ_8ruff_dev.exit.i: ; preds = %.loopexit.split-lp.i
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1E_12OffsetLookupmEEEB15_ECshFZivb7RUAJ_8ruff_dev.exit.thread: ; preds = %bb.ab, %bb.q, %bb.z
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ao

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.preheader.i
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %2, i64 noundef %.sroa.04.0, i64 noundef %5)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %2, i64 noundef %5, i64 noundef %.sroa.011.0)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6finishCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(208) %0)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.c, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1E_12OffsetLookupmEEEB15_ECshFZivb7RUAJ_8ruff_dev.exit.thread, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit25, %bb.b, %bb.a, %.loopexit
  %.sroa.0.0 = phi i1 [ true, %.loopexit ], [ false, %bb.a ], [ false, %bb.b ], [ false, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit ], [ false, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1E_12OffsetLookupmEEEB15_ECshFZivb7RUAJ_8ruff_dev.exit.thread ], [ false, %bb.c ], [ false, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit25 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1j_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2f_B2f_INtNtB4_7compact7CompactB2f_B2f_IB2P_NtNtB4_7capture7CaptureEEEEECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 16 uses
  %i.e = tail call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef %8)
  br i1 %i.e, label %bb.ae, label %bb.b

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
  br i1 %or.cond, label %bb.ae, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.04.0, i64 %.sroa.011.0) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 0
  %i.n = extractvalue { i64, i1 } %i.l, 1
  %i.o = icmp ugt i64 %i.m, 131071
  %or.cond53.not = or i1 %i.n, %i.o
  br i1 %or.cond53.not, label %.thread, label %bb.ae, !prof !27

.thread:                                          ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val33 = load ptr, ptr %i.p, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val34 = load i64, ptr %i.q, align 8, !noundef !6 ; 4 uses
  %i.r = icmp ult i64 %5, %.val34
  br i1 %i.r, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit, label %bb.d

bb.d:                                             ; preds = %.thread
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %5, i64 noundef range(i64 0, 576460752303423488) %.val34, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #27, !noalias !1584
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit: ; preds = %.thread
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val31 = load ptr, ptr %i.s, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val32 = load i64, ptr %i.t, align 8, !noundef !6 ; 6 uses
  %i.u = icmp ult i64 %2, %.val32
  br i1 %i.u, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit39, label %bb.e

bb.e:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef range(i64 0, 576460752303423488) %.val32, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #27, !noalias !1585
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit39: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.val33, i64 %5 ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.val31, i64 %2 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1587)
  %i.x = load ptr, ptr %i.v, align 8, !alias.scope !1586, !noalias !1587, !nonnull !6, !align !8, !noundef !6
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !1586, !noalias !1587, !noundef !6
  %i.aa = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x, i64 noundef %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38), !noalias !1588 ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 1      ; 2 uses
  %i.ac = load ptr, ptr %i.w, align 8, !alias.scope !1587, !noalias !1586, !nonnull !6, !align !8, !noundef !6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !1587, !noalias !1586, !noundef !6
  %i.af = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ac, i64 noundef %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38), !noalias !1588 ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 1
  %i.ah = icmp eq i64 %i.ab, %i.ag
  br i1 %i.ah, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit39
  %i.ai = extractvalue { ptr, i64 } %i.af, 0
  %i.aj = extractvalue { ptr, i64 } %i.aa, 0
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %i.aj, ptr nonnull readonly %i.ai, i64 %i.ab), !alias.scope !1589, !noalias !1588
  %i.ak = icmp eq i32 %bcmp.i, 0
  br i1 %i.ak, label %bb.ae, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit39, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit
  %i.al = add i64 %6, -1                          ; 3 uses
  %i.am = icmp ult i64 %i.al, %.val34
  br i1 %i.am, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit40, label %bb.f

bb.f:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef range(i64 0, 576460752303423488) %.val34, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #27, !noalias !1590
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit40: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread
  %i.an = add i64 %3, -1                          ; 3 uses
  %i.ao = icmp ult i64 %i.an, %.val32
  br i1 %i.ao, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit41, label %bb.g

bb.g:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit40
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.an, i64 noundef range(i64 0, 576460752303423488) %.val32, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #27, !noalias !1591
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit41: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit40
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.val33, i64 %i.al ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val31, i64 %i.an ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1593)
  %i.ar = load ptr, ptr %i.ap, align 8, !alias.scope !1592, !noalias !1593, !nonnull !6, !align !8, !noundef !6
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !1592, !noalias !1593, !noundef !6
  %i.au = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ar, i64 noundef %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38), !noalias !1594 ; 2 uses
  %i.av = extractvalue { ptr, i64 } %i.au, 1      ; 2 uses
  %i.aw = load ptr, ptr %i.aq, align 8, !alias.scope !1593, !noalias !1592, !nonnull !6, !align !8, !noundef !6
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !1593, !noalias !1592, !noundef !6
  %i.az = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aw, i64 noundef %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38), !noalias !1594 ; 2 uses
  %i.ba = extractvalue { ptr, i64 } %i.az, 1
  %i.bb = icmp eq i64 %i.av, %i.ba
  br i1 %i.bb, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit41
  %i.bc = extractvalue { ptr, i64 } %i.az, 0
  %i.bd = extractvalue { ptr, i64 } %i.au, 0
  %bcmp.i43 = tail call i32 @bcmp(ptr nonnull readonly %i.bd, ptr nonnull readonly %i.bc, i64 %i.av), !alias.scope !1595, !noalias !1594
  %i.be = icmp eq i32 %bcmp.i43, 0
  br i1 %i.be, label %bb.ae, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44.thread: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit41, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bf = tail call { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16) ; 2 uses
  %i.bg = extractvalue { i64, i64 } %i.bf, 0
  %i.bh = extractvalue { i64, i64 } %i.bf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 4 uses
  store i64 %i.bg, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.bh, ptr %.sroa.5.0..sroa_idx.i, align 8
  br i1 %i.f, label %.lr.ph.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.preheader.i

.lr.ph.i:                                         ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44.thread
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx.i52.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0..sroa_idx.i53.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.h

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.preheader.i: ; preds = %bb.ac, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44.thread
  br i1 %i.h, label %.lr.ph97.i, label %.loopexit

.lr.ph97.i:                                       ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.preheader.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.i

.loopexit.i:                                      ; preds = %.noexc30.i, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.m, %bb.l, %bb.j
  %lpad.loopexit68.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.ab, %bb.y, %bb.x, %.loopexit72.i, %bb.t, %bb.r
  %lpad.loopexit73.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit68.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit73.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjEEECshFZivb7RUAJ_8ruff_dev.exit.i unwind label %bb.ad

bb.h:                                             ; preds = %bb.ac, %.lr.ph.i
  %.sroa.0.03294.i = phi i64 [ %2, %.lr.ph.i ], [ %i.bm, %bb.ac ] ; 3 uses
  %.sroa.8.093.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bn, %bb.ac ] ; 2 uses
  %i.bm = add nuw i64 %.sroa.0.03294.i, 1
  %i.bn = add nuw i64 %.sroa.8.093.i, 1           ; 2 uses
  %i.bo = and i64 %.sroa.8.093.i, 1023
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.r, label %bb.t

bb.i:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.i, %.lr.ph97.i
  %.sroa.011.096.i = phi i64 [ %5, %.lr.ph97.i ], [ %i.bq, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.i ] ; 2 uses
  %.sroa.813.095.i = phi i64 [ 0, %.lr.ph97.i ], [ %i.br, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.i ] ; 2 uses
  %i.bq = add nuw i64 %.sroa.011.096.i, 1
  %i.br = add nuw i64 %.sroa.813.095.i, 1         ; 2 uses
  %i.bs = and i64 %.sroa.813.095.i, 1023
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bu = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.i

bb.k:                                             ; preds = %bb.j
  br i1 %i.bu, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_ECshFZivb7RUAJ_8ruff_dev.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %.val33, i64 %.sroa.011.096.i ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !1596, !noalias !1597, !nonnull !6, !align !8, !noundef !6
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !1596, !noalias !1597, !noundef !6
  %i.bz = invoke { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bw, i64 noundef %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38)
          to label %.noexc12.i unwind label %.loopexit.split-lp.loopexit.i ; 2 uses

.invoke.i:                                        ; preds = %.lr.ph.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.val4.i.i, i64 noundef range(i64 0, 576460752303423488) %.val32, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #27
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.noexc12.i:                                       ; preds = %bb.l
  %i.ca = extractvalue { ptr, i64 } %i.bz, 0      ; 2 uses
  %i.cb = extractvalue { ptr, i64 } %i.bz, 1      ; 4 uses
  %i.cc = icmp samesign eq i64 %i.cb, 0
  br i1 %i.cc, label %.loopexit67.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.noexc12.i
  %xtraiter177 = and i64 %i.cb, 7                 ; 3 uses
  %i.cd = icmp ult i64 %i.cb, 8
  br i1 %i.cd, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter184 = and i64 %i.cb, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.0.i1.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.preheader.new ], [ %i.do, %.lr.ph.i.i.i ] ; 9 uses
  %i.ce = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.preheader.new ], [ %i.ds, %.lr.ph.i.i.i ]
  %niter185 = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter185.next.7, %.lr.ph.i.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 1
  %i.cg = load i8, ptr %.sroa.0.0.i1.i.i.i, align 1, !alias.scope !1598, !noalias !1599, !noundef !6
  %i.ch = zext i8 %i.cg to i64
  %i.ci = xor i64 %i.ce, %i.ch
  %i.cj = mul i64 %i.ci, 1099511628211
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 2
  %i.cl = load i8, ptr %i.cf, align 1, !alias.scope !1598, !noalias !1599, !noundef !6
  %i.cm = zext i8 %i.cl to i64
  %i.cn = xor i64 %i.cj, %i.cm
  %i.co = mul i64 %i.cn, 1099511628211
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 3
  %i.cq = load i8, ptr %i.ck, align 1, !alias.scope !1598, !noalias !1599, !noundef !6
  %i.cr = zext i8 %i.cq to i64
  %i.cs = xor i64 %i.co, %i.cr
  %i.ct = mul i64 %i.cs, 1099511628211
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 4
  %i.cv = load i8, ptr %i.cp, align 1, !alias.scope !1598, !noalias !1599, !noundef !6
  %i.cw = zext i8 %i.cv to i64
  %i.cx = xor i64 %i.ct, %i.cw
  %i.cy = mul i64 %i.cx, 1099511628211
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 5
  %i.da = load i8, ptr %i.cu, align 1, !alias.scope !1598, !noalias !1599, !noundef !6
  %i.db = zext i8 %i.da to i64
  %i.dc = xor i64 %i.cy, %i.db
  %i.dd = mul i64 %i.dc, 1099511628211
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 6
  %i.df = load i8, ptr %i.cz, align 1, !alias.scope !1598, !noalias !1599, !noundef !6
  %i.dg = zext i8 %i.df to i64
  %i.dh = xor i64 %i.dd, %i.dg
  %i.di = mul i64 %i.dh, 1099511628211
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 7
  %i.dk = load i8, ptr %i.de, align 1, !alias.scope !1598, !noalias !1599, !noundef !6
  %i.dl = zext i8 %i.dk to i64
  %i.dm = xor i64 %i.di, %i.dl
  %i.dn = mul i64 %i.dm, 1099511628211
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 8 ; 2 uses
  %i.dp = load i8, ptr %i.dj, align 1, !alias.scope !1598, !noalias !1599, !noundef !6
  %i.dq = zext i8 %i.dp to i64
  %i.dr = xor i64 %i.dn, %i.dq
  %i.ds = mul i64 %i.dr, 1099511628211            ; 3 uses
  %niter185.next.7 = add nuw i64 %niter185, 8     ; 2 uses
  %niter185.ncmp.7 = icmp eq i64 %niter185.next.7, %unroll_iter184
  br i1 %niter185.ncmp.7, label %.loopexit67.loopexit.i.unr-lcssa, label %.lr.ph.i.i.i

.loopexit67.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i.i.i
  %lcmp.mod181.not = icmp eq i64 %xtraiter177, 0
  br i1 %lcmp.mod181.not, label %.loopexit67.loopexit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit67.loopexit.i.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.sroa.0.0.i1.i.i.i.epil.init = phi ptr [ %i.ca, %.lr.ph.i.i.i.preheader ], [ %i.do, %.loopexit67.loopexit.i.unr-lcssa ]
  %.epil.init180 = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.preheader ], [ %i.ds, %.loopexit67.loopexit.i.unr-lcssa ]
  %lcmp.mod183 = icmp ne i64 %xtraiter177, 0
  call void @llvm.assume(i1 %lcmp.mod183)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.sroa.0.0.i1.i.i.i.epil = phi ptr [ %i.du, %.lr.ph.i.i.i.epil ], [ %.sroa.0.0.i1.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %i.dt = phi i64 [ %i.dy, %.lr.ph.i.i.i.epil ], [ %.epil.init180, %.lr.ph.i.i.i.epil.preheader ]
  %epil.iter178 = phi i64 [ %epil.iter178.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i.epil, i64 1
  %i.dv = load i8, ptr %.sroa.0.0.i1.i.i.i.epil, align 1, !alias.scope !1598, !noalias !1599, !noundef !6
  %i.dw = zext i8 %i.dv to i64
  %i.dx = xor i64 %i.dt, %i.dw
  %i.dy = mul i64 %i.dx, 1099511628211            ; 2 uses
  %epil.iter178.next = add i64 %epil.iter178, 1   ; 2 uses
  %epil.iter178.cmp.not = icmp eq i64 %epil.iter178.next, %xtraiter177
  br i1 %epil.iter178.cmp.not, label %.loopexit67.loopexit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !1530

.loopexit67.loopexit.i:                           ; preds = %.lr.ph.i.i.i.epil, %.loopexit67.loopexit.i.unr-lcssa
  %.lcssa = phi i64 [ %i.ds, %.loopexit67.loopexit.i.unr-lcssa ], [ %i.dy, %.lr.ph.i.i.i.epil ]
  %i.dz = xor i64 %.lcssa, 255
  %i.ea = mul i64 %i.dz, 1099511628211
  br label %.loopexit67.i

.loopexit67.i:                                    ; preds = %.loopexit67.loopexit.i, %.noexc12.i
  %.promoted.i.i.i.i = phi i64 [ -5808391946409677970, %.noexc12.i ], [ %i.ea, %.loopexit67.loopexit.i ] ; 2 uses
  store i64 %.promoted.i.i.i.i, ptr %i.c, align 8
  %i.eb = load i64, ptr %i.bk, align 8, !alias.scope !1600, !noalias !1601, !noundef !6
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.i, label %bb.m

bb.m:                                             ; preds = %.loopexit67.i
  %i.ed = invoke noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRyECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc25.i unwind label %.loopexit.split-lp.loopexit.i ; 2 uses

.noexc25.i:                                       ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !1602)
  call void @llvm.experimental.noalias.scope.decl(metadata !1603)
  %i.ee = lshr i64 %i.ed, 57
  %i.ef = trunc nuw nsw i64 %i.ee to i8
  %i.eg = load i64, ptr %i.bl, align 8, !alias.scope !1604, !noalias !1605, !noundef !6 ; 2 uses
  %i.eh = load ptr, ptr %i.d, align 8, !alias.scope !1604, !noalias !1605, !nonnull !6, !noundef !6 ; 2 uses
  %i.ei = insertelement <16 x i8> poison, i8 %i.ef, i64 0
  %i.ej = shufflevector <16 x i8> %i.ei, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.noexc25.i
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.noexc25.i ], [ %i.fa, %bb.p ]
  %.pn.i.i.i.i = phi i64 [ %i.ed, %.noexc25.i ], [ %i.fb, %bb.p ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.eg ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.ek, align 1, !noalias !1606 ; 2 uses
  %i.el = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %i.ej
  %i.em = bitcast <16 x i1> %i.el to i16          ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.em, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i24.i

.lr.ph.i.i24.i:                                   ; preds = %bb.n, %bb.o
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.ez, %bb.o ], [ %i.em, %bb.n ] ; 3 uses
  %i.en = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.eo = zext nneg i16 %i.en to i64
  %i.ep = add i64 %.sroa.01.0.i.i.i.i, %i.eo
  %i.eq = and i64 %i.ep, %i.eg
  %i.er = sub nsw i64 0, %i.eq
  %i.es = getelementptr inbounds [32 x i8], ptr %i.eh, i64 %i.er ; 3 uses
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 -32
  %.val2.i.i.i.i = load i64, ptr %i.et, align 8, !noalias !1607, !noundef !6
  %i.eu = icmp eq i64 %.promoted.i.i.i.i, %.val2.i.i.i.i
  br i1 %i.eu, label %bb.q, label %bb.o, !prof !13

._crit_edge.i.i.i:                                ; preds = %bb.o, %bb.n
  %i.ev = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.ew = bitcast <16 x i1> %i.ev to i16
  %i.ex = icmp eq i16 %i.ew, 0
  br i1 %i.ex, label %bb.p, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.i, !prof !15

bb.o:                                             ; preds = %.lr.ph.i.i24.i
  %i.ey = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.ez = and i16 %i.ey, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.ez, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i24.i

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %i.fa = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.fb = add i64 %.sroa.01.0.i.i.i.i, %i.fa
  br label %bb.n

bb.q:                                             ; preds = %.lr.ph.i.i24.i
  %i.fc = getelementptr inbounds i8, ptr %i.es, i64 -16
  %i.fd = load ptr, ptr %i.fc, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %i.es, i64 -8
  %i.ff = load i64, ptr %i.fe, align 8, !noundef !6 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ff, 3
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.idx.i
  %.not.i28.i = icmp eq i64 %i.ff, 0
  br i1 %.not.i28.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0CshFZivb7RUAJ_8ruff_dev.exit.backedge.i.i
  %i.fh = phi ptr [ %i.fi, %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0CshFZivb7RUAJ_8ruff_dev.exit.backedge.i.i ], [ %i.fd, %bb.q ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %.val4.i.i = load i64, ptr %i.fh, align 8, !noalias !1608, !noundef !6 ; 3 uses
  %i.fj = icmp ult i64 %.val4.i.i, %.val32
  br i1 %i.fj, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit.i.i.i, label %.invoke.i

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit.i.i.i: ; preds = %.lr.ph.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1609)
  call void @llvm.experimental.noalias.scope.decl(metadata !1610)
  %i.fk = load ptr, ptr %i.bv, align 8, !alias.scope !1609, !noalias !1611, !nonnull !6, !align !8, !noundef !6
  %i.fl = load i64, ptr %i.bx, align 8, !alias.scope !1609, !noalias !1611, !noundef !6
  %i.fm = invoke { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fk, i64 noundef %i.fl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38)
          to label %.noexc30.i unwind label %.loopexit.i ; 2 uses

.noexc30.i:                                       ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev.exit.i.i.i
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %.val31, i64 %.val4.i.i ; 2 uses
  %i.fo = extractvalue { ptr, i64 } %i.fm, 1      ; 2 uses
  %i.fp = load ptr, ptr %i.fn, align 8, !alias.scope !1610, !noalias !1612, !nonnull !6, !align !8, !noundef !6
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fr = load i64, ptr %i.fq, align 8, !alias.scope !1610, !noalias !1612, !noundef !6
  %i.fs = invoke { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fp, i64 noundef %i.fr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38)
          to label %.noexc31.i unwind label %.loopexit.i ; 2 uses

.noexc31.i:                                       ; preds = %.noexc30.i
  %i.ft = extractvalue { ptr, i64 } %i.fs, 1
  %i.fu = icmp eq i64 %i.fo, %i.ft
  br i1 %i.fu, label %.split.i.i, label %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0CshFZivb7RUAJ_8ruff_dev.exit.backedge.i.i

.split.i.i:                                       ; preds = %.noexc31.i
  %i.fv = extractvalue { ptr, i64 } %i.fs, 0
  %i.fw = extractvalue { ptr, i64 } %i.fm, 0
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %i.fw, ptr nonnull readonly %i.fv, i64 %i.fo), !alias.scope !1613, !noalias !1614
  %i.fx = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.fx, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1I_5utils10UniqueItemINtNtB1K_4text12TextDiffSideeEEEB2J_E0ECshFZivb7RUAJ_8ruff_dev.exit.i, label %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0CshFZivb7RUAJ_8ruff_dev.exit.backedge.i.i

_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0CshFZivb7RUAJ_8ruff_dev.exit.backedge.i.i: ; preds = %.split.i.i, %.noexc31.i
  %.not7.i.i = icmp eq ptr %i.fi, %i.fg
  br i1 %.not7.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.i, label %.lr.ph.i.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1I_5utils10UniqueItemINtNtB1K_4text12TextDiffSideeEEEB2J_E0ECshFZivb7RUAJ_8ruff_dev.exit.i: ; preds = %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_ECshFZivb7RUAJ_8ruff_dev.exit.thread

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.i: ; preds = %._crit_edge.i.i.i, %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0CshFZivb7RUAJ_8ruff_dev.exit.backedge.i.i, %bb.q, %.loopexit67.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %exitcond119.not.i = icmp eq i64 %i.br, %i.i
  br i1 %exitcond119.not.i, label %.loopexit, label %bb.i

bb.r:                                             ; preds = %bb.h
  %i.fy = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.s:                                             ; preds = %bb.r
  br i1 %i.fy, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_ECshFZivb7RUAJ_8ruff_dev.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.h, %bb.s
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %.val31, i64 %.sroa.0.03294.i ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !alias.scope !1615, !noalias !1616, !nonnull !6, !align !8, !noundef !6
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gc = load i64, ptr %i.gb, align 8, !alias.scope !1615, !noalias !1616, !noundef !6
  %i.gd = invoke { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ga, i64 noundef %i.gc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 2 uses

.noexc.i:                                         ; preds = %bb.t
  %i.ge = extractvalue { ptr, i64 } %i.gd, 0      ; 2 uses
  %i.gf = extractvalue { ptr, i64 } %i.gd, 1      ; 4 uses
  %i.gg = icmp samesign eq i64 %i.gf, 0
  br i1 %i.gg, label %.loopexit72.i, label %.lr.ph.i.i35.i.preheader

.lr.ph.i.i35.i.preheader:                         ; preds = %.noexc.i
  %xtraiter = and i64 %i.gf, 7                    ; 3 uses
  %i.gh = icmp ult i64 %i.gf, 8
  br i1 %i.gh, label %.lr.ph.i.i35.i.epil.preheader, label %.lr.ph.i.i35.i.preheader.new

.lr.ph.i.i35.i.preheader.new:                     ; preds = %.lr.ph.i.i35.i.preheader
  %unroll_iter = and i64 %i.gf, -8
  br label %.lr.ph.i.i35.i

.lr.ph.i.i35.i:                                   ; preds = %.lr.ph.i.i35.i, %.lr.ph.i.i35.i.preheader.new
  %.sroa.0.0.i1.i.i36.i = phi ptr [ %i.ge, %.lr.ph.i.i35.i.preheader.new ], [ %i.hs, %.lr.ph.i.i35.i ] ; 9 uses
  %i.gi = phi i64 [ -3750763034362895579, %.lr.ph.i.i35.i.preheader.new ], [ %i.hw, %.lr.ph.i.i35.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i35.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i35.i ]
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i36.i, i64 1
  %i.gk = load i8, ptr %.sroa.0.0.i1.i.i36.i, align 1, !alias.scope !1617, !noalias !1618, !noundef !6
  %i.gl = zext i8 %i.gk to i64
  %i.gm = xor i64 %i.gi, %i.gl
  %i.gn = mul i64 %i.gm, 1099511628211
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i36.i, i64 2
  %i.gp = load i8, ptr %i.gj, align 1, !alias.scope !1617, !noalias !1618, !noundef !6
  %i.gq = zext i8 %i.gp to i64
  %i.gr = xor i64 %i.gn, %i.gq
  %i.gs = mul i64 %i.gr, 1099511628211
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i36.i, i64 3
  %i.gu = load i8, ptr %i.go, align 1, !alias.scope !1617, !noalias !1618, !noundef !6
  %i.gv = zext i8 %i.gu to i64
  %i.gw = xor i64 %i.gs, %i.gv
  %i.gx = mul i64 %i.gw, 1099511628211
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i36.i, i64 4
  %i.gz = load i8, ptr %i.gt, align 1, !alias.scope !1617, !noalias !1618, !noundef !6
  %i.ha = zext i8 %i.gz to i64
  %i.hb = xor i64 %i.gx, %i.ha
  %i.hc = mul i64 %i.hb, 1099511628211
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i36.i, i64 5
  %i.he = load i8, ptr %i.gy, align 1, !alias.scope !1617, !noalias !1618, !noundef !6
  %i.hf = zext i8 %i.he to i64
  %i.hg = xor i64 %i.hc, %i.hf
  %i.hh = mul i64 %i.hg, 1099511628211
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i36.i, i64 6
  %i.hj = load i8, ptr %i.hd, align 1, !alias.scope !1617, !noalias !1618, !noundef !6
  %i.hk = zext i8 %i.hj to i64
  %i.hl = xor i64 %i.hh, %i.hk
  %i.hm = mul i64 %i.hl, 1099511628211
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i36.i, i64 7
  %i.ho = load i8, ptr %i.hi, align 1, !alias.scope !1617, !noalias !1618, !noundef !6
  %i.hp = zext i8 %i.ho to i64
  %i.hq = xor i64 %i.hm, %i.hp
  %i.hr = mul i64 %i.hq, 1099511628211
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i36.i, i64 8 ; 2 uses
  %i.ht = load i8, ptr %i.hn, align 1, !alias.scope !1617, !noalias !1618, !noundef !6
  %i.hu = zext i8 %i.ht to i64
  %i.hv = xor i64 %i.hr, %i.hu
  %i.hw = mul i64 %i.hv, 1099511628211            ; 3 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit72.loopexit.i.unr-lcssa, label %.lr.ph.i.i35.i

.loopexit72.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i.i35.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit72.loopexit.i, label %.lr.ph.i.i35.i.epil.preheader

.lr.ph.i.i35.i.epil.preheader:                    ; preds = %.loopexit72.loopexit.i.unr-lcssa, %.lr.ph.i.i35.i.preheader
  %.sroa.0.0.i1.i.i36.i.epil.init = phi ptr [ %i.ge, %.lr.ph.i.i35.i.preheader ], [ %i.hs, %.loopexit72.loopexit.i.unr-lcssa ]
  %.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.i.i35.i.preheader ], [ %i.hw, %.loopexit72.loopexit.i.unr-lcssa ]
  %lcmp.mod176 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod176)
  br label %.lr.ph.i.i35.i.epil

.lr.ph.i.i35.i.epil:                              ; preds = %.lr.ph.i.i35.i.epil, %.lr.ph.i.i35.i.epil.preheader
  %.sroa.0.0.i1.i.i36.i.epil = phi ptr [ %i.hy, %.lr.ph.i.i35.i.epil ], [ %.sroa.0.0.i1.i.i36.i.epil.init, %.lr.ph.i.i35.i.epil.preheader ] ; 2 uses
  %i.hx = phi i64 [ %i.ic, %.lr.ph.i.i35.i.epil ], [ %.epil.init, %.lr.ph.i.i35.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i35.i.epil ], [ 0, %.lr.ph.i.i35.i.epil.preheader ]
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i36.i.epil, i64 1
  %i.hz = load i8, ptr %.sroa.0.0.i1.i.i36.i.epil, align 1, !alias.scope !1617, !noalias !1618, !noundef !6
  %i.ia = zext i8 %i.hz to i64
  %i.ib = xor i64 %i.hx, %i.ia
  %i.ic = mul i64 %i.ib, 1099511628211            ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit72.loopexit.i, label %.lr.ph.i.i35.i.epil, !llvm.loop !1566

.loopexit72.loopexit.i:                           ; preds = %.lr.ph.i.i35.i.epil, %.loopexit72.loopexit.i.unr-lcssa
  %.lcssa169 = phi i64 [ %i.hw, %.loopexit72.loopexit.i.unr-lcssa ], [ %i.ic, %.lr.ph.i.i35.i.epil ]
  %i.id = xor i64 %.lcssa169, 255
  %i.ie = mul i64 %i.id, 1099511628211
  br label %.loopexit72.i

.loopexit72.i:                                    ; preds = %.loopexit72.loopexit.i, %.noexc.i
  %.promoted.i.i.i37.i = phi i64 [ -5808391946409677970, %.noexc.i ], [ %i.ie, %.loopexit72.loopexit.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1619)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.promoted.i.i.i37.i, ptr %i.b, align 8, !noalias !1620
  %i.if = invoke noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRyECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc49.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 3 uses

.noexc49.i:                                       ; preds = %.loopexit72.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1621)
  call void @llvm.experimental.noalias.scope.decl(metadata !1622)
  %i.ig = lshr i64 %i.if, 57
  %i.ih = trunc nuw nsw i64 %i.ig to i8
  %i.ii = load i64, ptr %i.bi, align 8, !alias.scope !1623, !noalias !1624, !noundef !6 ; 2 uses
  %i.ij = load ptr, ptr %i.d, align 8, !alias.scope !1623, !noalias !1624, !nonnull !6, !noundef !6 ; 2 uses
  %i.ik = insertelement <16 x i8> poison, i8 %i.ih, i64 0
  %i.il = shufflevector <16 x i8> %i.ik, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %.noexc49.i
  %.sroa.9.0.i.i.i39.i = phi i64 [ 0, %.noexc49.i ], [ %i.jc, %bb.w ]
  %.pn.i.i.i40.i = phi i64 [ %i.if, %.noexc49.i ], [ %i.jd, %bb.w ]
  %.sroa.01.0.i.i.i41.i = and i64 %.pn.i.i.i40.i, %i.ii ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 %.sroa.01.0.i.i.i41.i
  %.sroa.0.0.copyload.i26.i.i42.i = load <16 x i8>, ptr %i.im, align 1, !noalias !1625 ; 2 uses
  %i.in = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i42.i, %i.il
  %i.io = bitcast <16 x i1> %i.in to i16          ; 2 uses
  %.not.i.not32.i.i43.i = icmp eq i16 %i.io, 0
  br i1 %.not.i.not32.i.i43.i, label %._crit_edge.i.i48.i, label %.lr.ph.i.i44.i

.lr.ph.i.i44.i:                                   ; preds = %bb.u, %bb.v
  %.sroa.06.0.i33.i.i45.i = phi i16 [ %i.jb, %bb.v ], [ %i.io, %bb.u ] ; 3 uses
  %i.ip = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i45.i, i1 true)
  %i.iq = zext nneg i16 %i.ip to i64
  %i.ir = add i64 %.sroa.01.0.i.i.i41.i, %i.iq
  %i.is = and i64 %i.ir, %i.ii
  %i.it = sub nsw i64 0, %i.is
  %i.iu = getelementptr inbounds [32 x i8], ptr %i.ij, i64 %i.it ; 2 uses
  %i.iv = getelementptr inbounds i8, ptr %i.iu, i64 -32
  %.val2.i.i.i46.i = load i64, ptr %i.iv, align 8, !noalias !1626, !noundef !6
  %i.iw = icmp eq i64 %.val2.i.i.i46.i, %.promoted.i.i.i37.i
  br i1 %i.iw, label %bb.z, label %bb.v, !prof !13

._crit_edge.i.i48.i:                              ; preds = %bb.v, %bb.u
  %i.ix = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i42.i, splat (i8 -1)
  %i.iy = bitcast <16 x i1> %i.ix to i16
  %i.iz = icmp eq i16 %i.iy, 0
  br i1 %i.iz, label %bb.w, label %bb.x, !prof !15

bb.v:                                             ; preds = %.lr.ph.i.i44.i
  %i.ja = add i16 %.sroa.06.0.i33.i.i45.i, -1
  %i.jb = and i16 %i.ja, %.sroa.06.0.i33.i.i45.i  ; 2 uses
  %.not.i.not.i.i47.i = icmp eq i16 %i.jb, 0
  br i1 %.not.i.not.i.i47.i, label %._crit_edge.i.i48.i, label %.lr.ph.i.i44.i

bb.w:                                             ; preds = %._crit_edge.i.i48.i
  %i.jc = add i64 %.sroa.9.0.i.i.i39.i, 16        ; 2 uses
  %i.jd = add i64 %.sroa.01.0.i.i.i41.i, %i.jc
  br label %bb.u

bb.x:                                             ; preds = %._crit_edge.i.i48.i
  invoke void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEE7reserveNCINvNtB8_3map11make_hasheryBR_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0ECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1627
  store i64 %.promoted.i.i.i37.i, ptr %i.a, align 8, !noalias !1627
  store i64 0, ptr %i.bj, align 8, !noalias !1627
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i52.i, align 8, !noalias !1627
  store i64 0, ptr %.sroa.5.0..sroa_idx.i53.i, align 8, !noalias !1627
  %i.je = invoke noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEE14insert_no_growCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.if, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.noexc55.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc55.i:                                       ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1627
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i.i44.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.noexc55.i
  %.pn.i.i = phi ptr [ %i.je, %.noexc55.i ], [ %i.iu, %bb.z ] ; 3 uses
  %.sroa.0.0.i54.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -24 ; 2 uses
  %i.jf = getelementptr inbounds i8, ptr %.pn.i.i, i64 -8 ; 2 uses
  %i.jg = load i64, ptr %i.jf, align 8, !alias.scope !1628, !noundef !6 ; 3 uses
  %i.jh = load i64, ptr %.sroa.0.0.i54.i, align 8, !range !16, !alias.scope !1628, !noundef !6
  %i.ji = icmp eq i64 %i.jg, %i.jh
  br i1 %i.ji, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i54.i)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.jj = getelementptr inbounds i8, ptr %.pn.i.i, i64 -16
  %i.jk = load ptr, ptr %i.jj, align 8, !alias.scope !1628, !nonnull !6, !noundef !6
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.jg
  store i64 %.sroa.0.03294.i, ptr %i.jl, align 8
  %i.jm = add i64 %i.jg, 1
  store i64 %i.jm, ptr %i.jf, align 8, !alias.scope !1628
  %exitcond116.not.i = icmp eq i64 %i.bn, %i.g
  br i1 %exitcond116.not.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.preheader.i, label %bb.h

bb.ad:                                            ; preds = %.loopexit.split-lp.i
  %i.jn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjEEECshFZivb7RUAJ_8ruff_dev.exit.i: ; preds = %.loopexit.split-lp.i
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_ECshFZivb7RUAJ_8ruff_dev.exit.thread: ; preds = %bb.s, %bb.k, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1I_5utils10UniqueItemINtNtB1K_4text12TextDiffSideeEEEB2J_E0ECshFZivb7RUAJ_8ruff_dev.exit.i
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ae

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.preheader.i
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %2, i64 noundef %.sroa.04.0, i64 noundef %5)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %2, i64 noundef %5, i64 noundef %.sroa.011.0)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6finishCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(208) %0)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.c, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_ECshFZivb7RUAJ_8ruff_dev.exit.thread, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44, %bb.b, %bb.a, %.loopexit
  %.sroa.0.0 = phi i1 [ true, %.loopexit ], [ false, %bb.a ], [ false, %bb.b ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit ], [ false, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_ECshFZivb7RUAJ_8ruff_dev.exit.thread ], [ false, %bb.c ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNvMs_NtCs3MGJH6NE8G5_15crossbeam_epoch8deferredNtB7_8Deferred3new4callNCINvMNtB9_5guardNtB1g_5Guard15defer_uncheckedNCNvMs4_NtCsjulH565TUV7_15crossbeam_deque5dequeINtB22_6WorkerNtNtCsfRVkQhu4QG3_10rayon_core3job6JobRefE6resize0uE0ECshFZivb7RUAJ_8ruff_dev(ptr nofree noundef readonly captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !6
  %i.b = and i64 %i.a, -8                         ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = icmp ne i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNCINvMNtCs3MGJH6NE8G5_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCNvMs4_NtCsjulH565TUV7_15crossbeam_deque5dequeINtB1i_6WorkerNtNtCsfRVkQhu4QG3_10rayon_core3job6JobRefE6resize0uE0CshFZivb7RUAJ_8ruff_dev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.i = shl nuw nsw i64 %i.f, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef 8) #26
  br label %_RNCINvMNtCs3MGJH6NE8G5_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCNvMs4_NtCsjulH565TUV7_15crossbeam_deque5dequeINtB1i_6WorkerNtNtCsfRVkQhu4QG3_10rayon_core3job6JobRefE6resize0uE0CshFZivb7RUAJ_8ruff_dev.exit

_RNCINvMNtCs3MGJH6NE8G5_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCNvMs4_NtCsjulH565TUV7_15crossbeam_deque5dequeINtB1i_6WorkerNtNtCsfRVkQhu4QG3_10rayon_core3job6JobRefE6resize0uE0CshFZivb7RUAJ_8ruff_dev.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 16, i64 noundef 8) #26
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2_NtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5arrayNtB6_14ArraySeqAccessNtNtCs6nZeqdiIoCH_10serde_core2de9SeqAccess17next_element_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtB2i_6option6OptionNtNtCshFZivb7RUAJ_8ruff_dev10format_dev12BlackOptionsEEEB3m_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 8), (11, 12)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  %i.b = alloca [88 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1632)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1632, !noalias !1633, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1632, !noalias !1633, !nonnull !6, !noundef !6 ; 5 uses
  %i.g = icmp eq ptr %i.f, %i.d
  br i1 %i.g, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9VIZOfz6gNk_13serde_spanned7spanned7SpannedNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeValueEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.thread, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9VIZOfz6gNk_13serde_spanned7spanned7SpannedNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeValueEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9VIZOfz6gNk_13serde_spanned7spanned7SpannedNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeValueEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr %i.h, ptr %i.e, align 8, !alias.scope !1632, !noalias !1633
  %.sroa.0.0.copyload13 = load i8, ptr %i.f, align 8, !noalias !1632 ; 2 uses
  %.not = icmp eq i8 %.sroa.0.0.copyload13, -1
  br i1 %.not, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9VIZOfz6gNk_13serde_spanned7spanned7SpannedNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeValueEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.thread, label %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCshFZivb7RUAJ_8ruff_dev10format_dev12BlackOptionsEENtB6_15DeserializeSeed11deserializeNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerEB1J_.exit

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9VIZOfz6gNk_13serde_spanned7spanned7SpannedNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeValueEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.thread: ; preds = %bb.a, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9VIZOfz6gNk_13serde_spanned7spanned7SpannedNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeValueEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 -1, ptr %.sroa.3.0..sroa_idx, align 1
  store i64 2, ptr %0, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9VIZOfz6gNk_13serde_spanned7spanned7SpannedNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeValueEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.thread
  ret void

_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCshFZivb7RUAJ_8ruff_dev10format_dev12BlackOptionsEENtB6_15DeserializeSeed11deserializeNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerEB1J_.exit: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9VIZOfz6gNk_13serde_spanned7spanned7SpannedNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeValueEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit
  %.sroa.7.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx14.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.7.0..sroa_idx14, i64 39, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load <2 x i64>, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx14.sroa_idx, align 8, !noalias !1632
  store <2 x i64> %i.j, ptr %i.i, align 8
  store i8 %.sroa.0.0.copyload13, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 0, ptr %i.k, align 8
  call void @_RINvXse_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCshFZivb7RUAJ_8ruff_dev10format_dev12BlackOptionsENtB8_11Deserialize11deserializeNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerEB1p_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = load i64, ptr %i.b, align 8, !range !14, !noundef !6
  %.not10 = icmp eq i64 %i.l, 2
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCshFZivb7RUAJ_8ruff_dev10format_dev12BlackOptionsEENtB6_15DeserializeSeed11deserializeNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerEB1J_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCshFZivb7RUAJ_8ruff_dev10format_dev12BlackOptionsEENtB6_15DeserializeSeed11deserializeNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerEB1J_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.03.0.copyload = load i32, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.03.0.copyload, ptr %i.n, align 8
  store i64 2, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2_NtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5arrayNtB6_14ArraySeqAccessNtNtCs6nZeqdiIoCH_10serde_core2de9SeqAccess17next_element_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtB2i_6option6OptionNtNtCshFZivb7RUAJ_8ruff_dev10format_dev17PyprojectTomlToolEEEB3m_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 8), (11, 12)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  %i.b = alloca [88 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1637)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1637, !noalias !1638, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1637, !noalias !1638, !nonnull !6, !noundef !6 ; 5 uses
  %i.g = icmp eq ptr %i.f, %i.d
  br i1 %i.g, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9VIZOfz6gNk_13serde_spanned7spanned7SpannedNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeValueEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.thread, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9VIZOfz6gNk_13serde_spanned7spanned7SpannedNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeValueEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9VIZOfz6gNk_13serde_spanned7spanned7SpannedNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeValueEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr %i.h, ptr %i.e, align 8, !alias.scope !1637, !noalias !1638
  %.sroa.0.0.copyload13 = load i8, ptr %i.f, align 8, !noalias !1637 ; 2 uses
  %.not = icmp eq i8 %.sroa.0.0.copyload13, -1
  br i1 %.not, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9VIZOfz6gNk_13serde_spanned7spanned7SpannedNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeValueEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.thread, label %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCshFZivb7RUAJ_8ruff_dev10format_dev17PyprojectTomlToolEENtB6_15DeserializeSeed11deserializeNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerEB1J_.exit

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9VIZOfz6gNk_13serde_spanned7spanned7SpannedNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeValueEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.thread: ; preds = %bb.a, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9VIZOfz6gNk_13serde_spanned7spanned7SpannedNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeValueEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 -2, ptr %.sroa.3.0..sroa_idx, align 1
  store i64 2, ptr %0, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9VIZOfz6gNk_13serde_spanned7spanned7SpannedNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeValueEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.thread
  ret void

_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCshFZivb7RUAJ_8ruff_dev10format_dev17PyprojectTomlToolEENtB6_15DeserializeSeed11deserializeNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerEB1J_.exit: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9VIZOfz6gNk_13serde_spanned7spanned7SpannedNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeValueEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit
  %.sroa.7.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx14.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.7.0..sroa_idx14, i64 39, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load <2 x i64>, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx14.sroa_idx, align 8, !noalias !1637
  store <2 x i64> %i.j, ptr %i.i, align 8
  store i8 %.sroa.0.0.copyload13, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 0, ptr %i.k, align 8
  call void @_RINvXse_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCshFZivb7RUAJ_8ruff_dev10format_dev17PyprojectTomlToolENtB8_11Deserialize11deserializeNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerEB1p_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = load i64, ptr %i.b, align 8, !range !14, !noundef !6
  %.not10 = icmp eq i64 %i.l, 2
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCshFZivb7RUAJ_8ruff_dev10format_dev17PyprojectTomlToolEENtB6_15DeserializeSeed11deserializeNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerEB1J_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCshFZivb7RUAJ_8ruff_dev10format_dev17PyprojectTomlToolEENtB6_15DeserializeSeed11deserializeNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerEB1J_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.03.0.copyload = load i32, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.03.0.copyload, ptr %i.n, align 8
  store i64 2, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2_NtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5arrayNtB6_14ArraySeqAccessNtNtCs6nZeqdiIoCH_10serde_core2de9SeqAccess17next_element_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtNtB2i_3num7nonzero7NonZerotEEECshFZivb7RUAJ_8ruff_dev(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 10)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  %i.b = alloca [88 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1642)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1642, !noalias !1643, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1642, !noalias !1643, !nonnull !6, !noundef !6 ; 5 uses
  %i.g = icmp eq ptr %i.f, %i.d
  br i1 %i.g, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9VIZOfz6gNk_13serde_spanned7spanned7SpannedNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeValueEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.thread, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9VIZOfz6gNk_13serde_spanned7spanned7SpannedNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeValueEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9VIZOfz6gNk_13serde_spanned7spanned7SpannedNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeValueEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr %i.h, ptr %i.e, align 8, !alias.scope !1642, !noalias !1643
  %.sroa.0.0.copyload6 = load i8, ptr %i.f, align 8, !noalias !1642 ; 2 uses
  %.not = icmp eq i8 %.sroa.0.0.copyload6, -1
  br i1 %.not, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9VIZOfz6gNk_13serde_spanned7spanned7SpannedNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeValueEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.thread, label %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtNtBG_3num7nonzero7NonZerotEENtB6_15DeserializeSeed11deserializeNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerECshFZivb7RUAJ_8ruff_dev.exit

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9VIZOfz6gNk_13serde_spanned7spanned7SpannedNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeValueEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.thread: ; preds = %bb.a, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9VIZOfz6gNk_13serde_spanned7spanned7SpannedNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeValueEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 0, ptr %i.i, align 8
  store i64 2, ptr %0, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9VIZOfz6gNk_13serde_spanned7spanned7SpannedNtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeValueEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCshFZivb7RUAJ_8ruff_dev.exit.thread
  ret void

end_hunk_0
