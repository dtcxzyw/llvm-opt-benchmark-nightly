Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/similar-dab4460042c78509.similar.d6993f1c40b105e6-cgu.03?download=true
inline.NumInlined: 176
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB6_4text12TextDiffSideeEB1j_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_:bb.a
  %i.af = load i64, ptr %i.ac, align 8, !range !6, !alias.scope !407, !noalias !408, !noundef !3
  %i.ag = icmp eq i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac), !noalias !408
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit: ; preds = %bb.d, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !407, !noalias !408, !nonnull !3, !noundef !3
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %i.ai, i64 %i.ae ; 4 uses
  store i64 1, ptr %i.aj, align 8, !noalias !409
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !409
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %.sroa.04.0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !409
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i64 %5, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !409
  %i.ak = add i64 %i.ae, 1
  store i64 %i.ak, ptr %i.ad, align 8, !alias.scope !407, !noalias !408
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  %i.al = load ptr, ptr %i.aa, align 8, !alias.scope !410, !noalias !411, !nonnull !3, !align !9, !noundef !3 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 120 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 136 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !412, !noalias !413, !noundef !3 ; 3 uses
  %i.ap = load i64, ptr %i.am, align 8, !range !6, !alias.scope !412, !noalias !413, !noundef !3
  %i.aq = icmp eq i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.f, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit30

bb.f:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am), !noalias !413
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit30

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit30: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit, %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !412, !noalias !413, !nonnull !3, !noundef !3
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %i.as, i64 %i.ao ; 4 uses
  store i64 2, ptr %i.at, align 8, !noalias !414
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %2, ptr %.sroa.435.0..sroa_idx, align 8, !noalias !414
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %5, ptr %.sroa.536.0..sroa_idx, align 8, !noalias !414
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 %.sroa.011.0, ptr %.sroa.637.0..sroa_idx, align 8, !noalias !414
  %i.au = add i64 %i.ao, 1
  store i64 %i.au, ptr %i.an, align 8, !alias.scope !412, !noalias !413
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29, %bb.b, %bb.a, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit30
  %.sroa.0.0 = phi i1 [ true, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit30 ], [ false, %bb.a ], [ false, %bb.b ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread ], [ false, %bb.c ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB6_4text12TextDiffSideeEB1j_INtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  br i1 %or.cond42.not, label %.thread, label %bb.g, !prof !8

.thread:                                          ; preds = %bb.c
  %i.h = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 1        ; 2 uses
  %i.j = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 1
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %.thread
  %i.m = extractvalue { ptr, i64 } %i.j, 0
  %i.n = extractvalue { ptr, i64 } %i.h, 0
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %i.n, ptr nonnull readonly %i.m, i64 %i.i), !alias.scope !427
  %i.o = icmp eq i32 %bcmp.i, 0
  br i1 %i.o, label %bb.g, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread: ; preds = %.thread, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit
  %i.p = add i64 %6, -1
  %i.q = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 1        ; 2 uses
  %i.s = add i64 %3, -1
  %i.t = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.t, 1
  %i.v = icmp eq i64 %i.r, %i.u
  br i1 %i.v, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread
  %i.w = extractvalue { ptr, i64 } %i.t, 0
  %i.x = extractvalue { ptr, i64 } %i.q, 0
  %bcmp.i28 = tail call i32 @bcmp(ptr nonnull readonly %i.x, ptr nonnull readonly %i.w, i64 %i.r), !alias.scope !428
  %i.y = icmp eq i32 %bcmp.i28, 0
  br i1 %i.y, label %bb.g, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29
  %i.z = tail call fastcc noundef i8 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtB6_4text12TextDiffSideeEB15_EB6_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  %cond = icmp eq i8 %i.z, 0
  br i1 %cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !429, !noalias !430, !noundef !3 ; 4 uses
  %i.ad = load i64, ptr %i.aa, align 8, !range !6, !alias.scope !429, !noalias !430, !noundef !3
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.e, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa), !noalias !430
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit: ; preds = %bb.d, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !429, !noalias !430, !nonnull !3, !noundef !3
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %i.ac ; 4 uses
  store i64 1, ptr %i.ah, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %.sroa.04.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 %5, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ai = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.ai, ptr %i.ab, align 8, !alias.scope !429, !noalias !430
  %i.aj = load i64, ptr %i.aa, align 8, !range !6, !alias.scope !431, !noalias !432, !noundef !3
  %i.ak = icmp eq i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.f, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit30

bb.f:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa), !noalias !432
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit30

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit30: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit, %bb.f
  %i.al = load ptr, ptr %i.af, align 8, !alias.scope !431, !noalias !432, !nonnull !3, !noundef !3
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.al, i64 %i.ai ; 4 uses
  store i64 2, ptr %i.am, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %2, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %5, ptr %.sroa.536.0..sroa_idx, align 8
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i64 %.sroa.011.0, ptr %.sroa.637.0..sroa_idx, align 8
  %i.an = add i64 %i.ac, 2
  store i64 %i.an, ptr %i.ab, align 8, !alias.scope !431, !noalias !432
  tail call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishB9_(ptr noalias noundef nonnull align 8 dereferenceable(160) %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29, %bb.b, %bb.a, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit30
  %.sroa.0.0 = phi i1 [ true, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit30 ], [ false, %bb.a ], [ false, %bb.b ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread ], [ false, %bb.c ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1S_12OffsetLookupmEEEB1j_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2f_B2f_INtNtB4_7compact7CompactB2f_B2f_IB2J_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  br i1 %or.cond54.not, label %.thread, label %bb.al, !prof !8

.thread:                                          ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val40 = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val41 = load i64, ptr %i.q, align 8, !noundef !3 ; 4 uses
  %i.r = icmp ult i64 %5, %.val41
  br i1 %i.r, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit, label %bb.d

bb.d:                                             ; preds = %.thread
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %5, i64 noundef range(i64 0, 576460752303423488) %.val41, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #13, !noalias !498
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit: ; preds = %.thread
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val38 = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val39 = load i64, ptr %i.t, align 8, !noundef !3 ; 6 uses
  %i.u = icmp ult i64 %2, %.val39
  br i1 %i.u, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit46, label %bb.e

bb.e:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef range(i64 0, 576460752303423488) %.val39, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #13, !noalias !499
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit46: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.val40, i64 %5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !500, !noalias !501, !nonnull !3, !align !9, !noundef !3 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !500, !noalias !501, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !502, !noalias !503, !noundef !3
  %i.ab = sub i64 %i.y, %i.aa                     ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !502, !noalias !503, !noundef !3 ; 2 uses
  %i.ae = icmp ult i64 %i.ab, %i.ad
  br i1 %i.ae, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit24, label %bb.f

bb.f:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit46
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #13, !noalias !504
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit24: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit46
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.val38, i64 %2 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !502, !noalias !503, !nonnull !3, !noundef !3
  %i.ai = load ptr, ptr %i.af, align 8, !alias.scope !501, !noalias !500, !nonnull !3, !align !9, !noundef !3 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !501, !noalias !500, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !505, !noalias !506, !noundef !3
  %i.an = sub i64 %i.ak, %i.am                    ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !505, !noalias !506, !noundef !3 ; 2 uses
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit, label %bb.g

bb.g:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit24
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.an, i64 noundef %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #13, !noalias !507
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit24
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ab
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !505, !noalias !506, !nonnull !3, !noundef !3
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.an
  %.val30 = load i32, ptr %i.ar, align 4, !noundef !3
  %.val31 = load i32, ptr %i.au, align 4, !noundef !3
  %i.av = icmp eq i32 %.val30, %.val31
  br i1 %i.av, label %bb.al, label %bb.h

bb.h:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit
  %i.aw = add i64 %6, -1                          ; 3 uses
  %i.ax = icmp ult i64 %i.aw, %.val41
  br i1 %i.ax, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit47, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aw, i64 noundef range(i64 0, 576460752303423488) %.val41, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #13, !noalias !508
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit47: ; preds = %bb.h
  %i.ay = add i64 %3, -1                          ; 3 uses
  %i.az = icmp ult i64 %i.ay, %.val39
  br i1 %i.az, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit48, label %bb.j

bb.j:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit47
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ay, i64 noundef range(i64 0, 576460752303423488) %.val39, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13, !noalias !509
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit48: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit47
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.val40, i64 %i.aw ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !510, !noalias !511, !nonnull !3, !align !9, !noundef !3 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !510, !noalias !511, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !512, !noalias !513, !noundef !3
  %i.bg = sub i64 %i.bd, %i.bf                    ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !512, !noalias !513, !noundef !3 ; 2 uses
  %i.bj = icmp ult i64 %i.bg, %i.bi
  br i1 %i.bj, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit26, label %bb.k

bb.k:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit48
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bg, i64 noundef %i.bi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #13, !noalias !514
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit26: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit48
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %.val38, i64 %i.ay ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !512, !noalias !513, !nonnull !3, !noundef !3
  %i.bn = load ptr, ptr %i.bk, align 8, !alias.scope !511, !noalias !510, !nonnull !3, !align !9, !noundef !3 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !511, !noalias !510, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !515, !noalias !516, !noundef !3
  %i.bs = sub i64 %i.bp, %i.br                    ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !515, !noalias !516, !noundef !3 ; 2 uses
  %i.bv = icmp ult i64 %i.bs, %i.bu
  br i1 %i.bv, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit25, label %bb.l

bb.l:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit26
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bs, i64 noundef %i.bu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #13, !noalias !517
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit25: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit26
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bg
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !515, !noalias !516, !nonnull !3, !noundef !3
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bs
  %.val32 = load i32, ptr %i.bw, align 4, !noundef !3
  %.val33 = load i32, ptr %i.bz, align 4, !noundef !3
  %i.ca = icmp eq i32 %.val32, %.val33
  br i1 %i.ca, label %bb.al, label %bb.m

bb.m:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cb = tail call { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsiqiOkcJdymw_7similar(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @0) ; 2 uses
  %i.cc = extractvalue { i64, i64 } %i.cb, 0
  %i.cd = extractvalue { i64, i64 } %i.cb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @2, i64 32, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store i64 %i.cc, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.cd, ptr %.sroa.5.0..sroa_idx.i, align 8
  br i1 %i.f, label %.lr.ph.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit.preheader.i

.lr.ph.i:                                         ; preds = %bb.m
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.n

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit.preheader.i: ; preds = %bb.aj, %bb.m
  br i1 %i.h, label %.lr.ph106.i, label %.loopexit

.lr.ph106.i:                                      ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit.preheader.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
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
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjEEECsiqiOkcJdymw_7similar.exit.i unwind label %bb.ak

bb.n:                                             ; preds = %bb.aj, %.lr.ph.i
  %.sroa.0.030103.i = phi i64 [ %2, %.lr.ph.i ], [ %i.ch, %bb.aj ] ; 3 uses
  %.sroa.8.0102.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ci, %bb.aj ] ; 2 uses
  %i.ch = add nuw i64 %.sroa.0.030103.i, 1
  %i.ci = add nuw i64 %.sroa.8.0102.i, 1          ; 2 uses
  %i.cj = and i64 %.sroa.8.0102.i, 1023
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.aa, label %bb.ac

bb.o:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit.i, %.lr.ph106.i
  %.sroa.011.0105.i = phi i64 [ %5, %.lr.ph106.i ], [ %i.cl, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit.i ] ; 2 uses
  %.sroa.813.0104.i = phi i64 [ 0, %.lr.ph106.i ], [ %i.cm, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit.i ] ; 2 uses
  %i.cl = add nuw i64 %.sroa.011.0105.i, 1
  %i.cm = add nuw i64 %.sroa.813.0104.i, 1        ; 2 uses
  %i.cn = and i64 %.sroa.813.0104.i, 1023
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cp = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.i

bb.q:                                             ; preds = %bb.p
  br i1 %i.cp, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1E_12OffsetLookupmEEEB15_EB6_.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %.val40, i64 %.sroa.011.0105.i ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !518, !noalias !519, !nonnull !3, !align !9, !noundef !3 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !518, !noalias !519, !noundef !3
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !520, !noalias !521, !noundef !3
  %i.cw = sub i64 %i.ct, %i.cv                    ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !520, !noalias !521, !noundef !3 ; 2 uses
  %i.cz = icmp ult i64 %i.cw, %i.cy
  br i1 %i.cz, label %bb.s, label %.invoke.i

.invoke.i:                                        ; preds = %bb.ac, %bb.r, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit1.i.i.i, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit.i.i.i, %.lr.ph
  %9 = phi i64 [ %i.cw, %bb.r ], [ %i.fo, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit1.i.i.i ], [ %i.fe, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit.i.i.i ], [ %.val4.i.i, %.lr.ph ], [ %i.gg, %bb.ac ]
  %10 = phi i64 [ %i.cy, %bb.r ], [ %i.fq, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit1.i.i.i ], [ %i.fg, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit.i.i.i ], [ %.val39, %.lr.ph ], [ %i.gi, %bb.ac ]
  %11 = phi ptr [ @12, %bb.r ], [ @12, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit1.i.i.i ], [ @12, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit.i.i.i ], [ @13, %.lr.ph ], [ @12, %bb.ac ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %9, i64 noundef %10, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %11) #13
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.da = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !alias.scope !520, !noalias !521, !nonnull !3, !noundef !3
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.cw
  %.val.i = load i32, ptr %i.dc, align 4, !noundef !3 ; 4 uses
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
  %i.dr = load i64, ptr %i.cf, align 8, !alias.scope !522, !noalias !523, !noundef !3
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dt = invoke noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRyECsiqiOkcJdymw_7similar(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc29.i unwind label %.loopexit.split-lp.loopexit.i ; 2 uses

.noexc29.i:                                       ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.du = lshr i64 %i.dt, 57
  %i.dv = trunc nuw nsw i64 %i.du to i8
  %i.dw = load i64, ptr %i.cg, align 8, !alias.scope !526, !noalias !527, !noundef !3 ; 2 uses
  %i.dx = load ptr, ptr %i.d, align 8, !alias.scope !526, !noalias !527, !nonnull !3, !noundef !3 ; 2 uses
  %i.dy = insertelement <16 x i8> poison, i8 %i.dv, i64 0
  %i.dz = shufflevector <16 x i8> %i.dy, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %.noexc29.i
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.noexc29.i ], [ %i.eq, %bb.w ]
  %.pn.i.i.i.i = phi i64 [ %i.dt, %.noexc29.i ], [ %i.er, %bb.w ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.dw ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.ea, align 1, !noalias !528 ; 2 uses
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
  %i.ek = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownyINtB2_10EquivalentyE10equivalentCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ej)
          to label %.noexc30.i unwind label %.loopexit.i

.noexc30.i:                                       ; preds = %.lr.ph.i.i.i
  br i1 %i.ek, label %bb.x, label %bb.v, !prof !4

._crit_edge.i.i.i:                                ; preds = %bb.v, %bb.u
  %i.el = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.em = bitcast <16 x i1> %i.el to i16
  %i.en = icmp eq i16 %i.em, 0
  br i1 %i.en, label %bb.w, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit.i, !prof !5

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
  %i.et = load ptr, ptr %i.es, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %i.ei, i64 -8
  %i.ev = load i64, ptr %i.eu, align 8, !noundef !3 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ev, 3
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 %.idx
  %.not.not.not.i.not.i147 = icmp eq i64 %i.ev, 0
  br i1 %.not.not.not.i.not.i147, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit.i, label %.lr.ph

bb.y:                                             ; preds = %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_E0B8_.exit.i.i
  %.not.not.not.i.not.i = icmp eq ptr %i.ey, %i.ew
  br i1 %.not.not.not.i.not.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x, %bb.y
  %i.ex = phi ptr [ %i.ey, %bb.y ], [ %i.et, %bb.x ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 2 uses
  %.val4.i.i = load i64, ptr %i.ex, align 8, !noalias !529, !noundef !3 ; 3 uses
  %i.ez = icmp ult i64 %.val4.i.i, %.val39
  br i1 %i.ez, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit.i.i.i, label %.invoke.i

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit.i.i.i: ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !530)
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %i.fa = load ptr, ptr %i.cq, align 8, !alias.scope !530, !noalias !532, !nonnull !3, !align !9, !noundef !3 ; 3 uses
  %i.fb = load i64, ptr %i.cs, align 8, !alias.scope !530, !noalias !532, !noundef !3
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fd = load i64, ptr %i.fc, align 8, !alias.scope !533, !noalias !534, !noundef !3
  %i.fe = sub i64 %i.fb, %i.fd                    ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !533, !noalias !534, !noundef !3 ; 2 uses
  %i.fh = icmp ult i64 %i.fe, %i.fg
  br i1 %i.fh, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit1.i.i.i, label %.invoke.i

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit1.i.i.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit.i.i.i
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %.val38, i64 %.val4.i.i ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !alias.scope !531, !noalias !535, !nonnull !3, !align !9, !noundef !3 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !alias.scope !531, !noalias !535, !noundef !3
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fn = load i64, ptr %i.fm, align 8, !alias.scope !536, !noalias !537, !noundef !3
  %i.fo = sub i64 %i.fl, %i.fn                    ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !536, !noalias !537, !noundef !3 ; 2 uses
  %i.fr = icmp ult i64 %i.fo, %i.fq
  br i1 %i.fr, label %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_E0B8_.exit.i.i, label %.invoke.i

_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_E0B8_.exit.i.i: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit1.i.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !alias.scope !533, !noalias !534, !nonnull !3, !noundef !3
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.fe
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !alias.scope !536, !noalias !537, !nonnull !3, !noundef !3
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.fo
  %.val.i.i.i = load i32, ptr %i.fu, align 4, !noalias !529, !noundef !3
  %.val2.i.i.i = load i32, ptr %i.fx, align 4, !noalias !529, !noundef !3
  %i.fy = icmp eq i32 %.val.i.i.i, %.val2.i.i.i
  br i1 %i.fy, label %bb.z, label %bb.y

bb.z:                                             ; preds = %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_E0B8_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1E_12OffsetLookupmEEEB15_EB6_.exit.thread

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit.i: ; preds = %._crit_edge.i.i.i, %bb.y, %bb.x, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %exitcond156.not.i = icmp eq i64 %i.cm, %i.i
  br i1 %exitcond156.not.i, label %.loopexit, label %bb.o

bb.aa:                                            ; preds = %bb.n
  %i.fz = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.fz, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1E_12OffsetLookupmEEEB15_EB6_.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.n
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %.val38, i64 %.sroa.0.030103.i ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !alias.scope !538, !noalias !539, !nonnull !3, !align !9, !noundef !3 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !alias.scope !538, !noalias !539, !noundef !3
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gf = load i64, ptr %i.ge, align 8, !alias.scope !540, !noalias !541, !noundef !3
  %i.gg = sub i64 %i.gd, %i.gf                    ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !540, !noalias !541, !noundef !3 ; 2 uses
  %i.gj = icmp ult i64 %i.gg, %i.gi
  br i1 %i.gj, label %bb.ad, label %.invoke.i

bb.ad:                                            ; preds = %bb.ac
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !alias.scope !540, !noalias !541, !nonnull !3, !noundef !3
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.gg
  %.val18.i = load i32, ptr %i.gm, align 4, !noundef !3 ; 4 uses
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
  invoke void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE11rustc_entryCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d, i64 noundef %i.ha)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.ae:                                            ; preds = %bb.ad
  %i.hb = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not10.i = icmp eq ptr %i.hb, null
  br i1 %.not10.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.426.0.copyload.i = load i64, ptr %.sroa.426.0..sroa_idx.i, align 8
  %.sroa.527.0.copyload.i = load i64, ptr %.sroa.527.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !542
  store i64 %.sroa.527.0.copyload.i, ptr %i.a, align 8, !noalias !542
  store i64 0, ptr %i.ce, align 8, !noalias !542
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !542
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !542
  %i.hc = invoke noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEE14insert_no_growCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.hb, i64 noundef %.sroa.426.0.copyload.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.noexc45.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc45.i:                                       ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !542
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.hd = load ptr, ptr %.sroa.426.0..sroa_idx.i, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.noexc45.i
  %.pn.i.i = phi ptr [ %i.hc, %.noexc45.i ], [ %i.hd, %bb.ag ] ; 3 uses
  %.sroa.0.0.i44.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -24 ; 2 uses
  %i.he = getelementptr inbounds i8, ptr %.pn.i.i, i64 -8 ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8, !alias.scope !543, !noundef !3 ; 3 uses
  %i.hg = load i64, ptr %.sroa.0.0.i44.i, align 8, !range !6, !alias.scope !543, !noundef !3
  %i.hh = icmp eq i64 %i.hf, %i.hg
  br i1 %i.hh, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i44.i)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.hi = getelementptr inbounds i8, ptr %.pn.i.i, i64 -16
  %i.hj = load ptr, ptr %i.hi, align 8, !alias.scope !543, !nonnull !3, !noundef !3
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.hf
  store i64 %.sroa.0.030103.i, ptr %i.hk, align 8
  %i.hl = add i64 %i.hf, 1
  store i64 %i.hl, ptr %i.he, align 8, !alias.scope !543
  %exitcond153.not.i = icmp eq i64 %i.ci, %i.g
  br i1 %exitcond153.not.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit.preheader.i, label %bb.n

bb.ak:                                            ; preds = %.loopexit.split-lp.i
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjEEECsiqiOkcJdymw_7similar.exit.i: ; preds = %.loopexit.split-lp.i
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1E_12OffsetLookupmEEEB15_EB6_.exit.thread: ; preds = %bb.ab, %bb.q, %bb.z
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.al

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit.preheader.i
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %2, i64 noundef %.sroa.04.0, i64 noundef %5)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %2, i64 noundef %5, i64 noundef %.sroa.011.0)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6finishB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0)
  br label %bb.al

bb.al:                                            ; preds = %bb.c, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1E_12OffsetLookupmEEEB15_EB6_.exit.thread, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit25, %bb.b, %bb.a, %.loopexit
  %.sroa.0.0 = phi i1 [ true, %.loopexit ], [ false, %bb.a ], [ false, %bb.b ], [ false, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit ], [ false, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1E_12OffsetLookupmEEEB15_EB6_.exit.thread ], [ false, %bb.c ], [ false, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit25 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1j_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2f_B2f_INtNtB4_7compact7CompactB2f_B2f_IB2P_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  br i1 %or.cond53.not, label %.thread, label %bb.ab, !prof !8

.thread:                                          ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val33 = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val34 = load i64, ptr %i.q, align 8, !noundef !3 ; 4 uses
  %i.r = icmp ult i64 %5, %.val34
  br i1 %i.r, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit, label %bb.d

bb.d:                                             ; preds = %.thread
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %5, i64 noundef range(i64 0, 576460752303423488) %.val34, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #13, !noalias !614
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit: ; preds = %.thread
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val31 = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val32 = load i64, ptr %i.t, align 8, !noundef !3 ; 6 uses
  %i.u = icmp ult i64 %2, %.val32
  br i1 %i.u, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit39, label %bb.e

bb.e:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef range(i64 0, 576460752303423488) %.val32, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #13, !noalias !615
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit39: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.val33, i64 %5 ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.val31, i64 %2 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !617)
  %i.x = load ptr, ptr %i.v, align 8, !alias.scope !616, !noalias !617, !nonnull !3, !align !9, !noundef !3
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !616, !noalias !617, !noundef !3
  %i.aa = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x, i64 noundef %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12), !noalias !618 ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 1      ; 2 uses
  %i.ac = load ptr, ptr %i.w, align 8, !alias.scope !617, !noalias !616, !nonnull !3, !align !9, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !617, !noalias !616, !noundef !3
  %i.af = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ac, i64 noundef %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12), !noalias !618 ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 1
  %i.ah = icmp eq i64 %i.ab, %i.ag
  br i1 %i.ah, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit39
  %i.ai = extractvalue { ptr, i64 } %i.af, 0
  %i.aj = extractvalue { ptr, i64 } %i.aa, 0
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %i.aj, ptr nonnull readonly %i.ai, i64 %i.ab), !alias.scope !619, !noalias !618
  %i.ak = icmp eq i32 %bcmp.i, 0
  br i1 %i.ak, label %bb.ab, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit39, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit
  %i.al = add i64 %6, -1                          ; 3 uses
  %i.am = icmp ult i64 %i.al, %.val34
  br i1 %i.am, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit40, label %bb.f

bb.f:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef range(i64 0, 576460752303423488) %.val34, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #13, !noalias !620
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit40: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread
  %i.an = add i64 %3, -1                          ; 3 uses
  %i.ao = icmp ult i64 %i.an, %.val32
  br i1 %i.ao, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit41, label %bb.g

bb.g:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit40
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.an, i64 noundef range(i64 0, 576460752303423488) %.val32, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13, !noalias !621
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit41: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit40
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.val33, i64 %i.al ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val31, i64 %i.an ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !623)
  %i.ar = load ptr, ptr %i.ap, align 8, !alias.scope !622, !noalias !623, !nonnull !3, !align !9, !noundef !3
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !622, !noalias !623, !noundef !3
  %i.au = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ar, i64 noundef %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12), !noalias !624 ; 2 uses
  %i.av = extractvalue { ptr, i64 } %i.au, 1      ; 2 uses
  %i.aw = load ptr, ptr %i.aq, align 8, !alias.scope !623, !noalias !622, !nonnull !3, !align !9, !noundef !3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !623, !noalias !622, !noundef !3
  %i.az = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aw, i64 noundef %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12), !noalias !624 ; 2 uses
  %i.ba = extractvalue { ptr, i64 } %i.az, 1
  %i.bb = icmp eq i64 %i.av, %i.ba
  br i1 %i.bb, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit41
  %i.bc = extractvalue { ptr, i64 } %i.az, 0
  %i.bd = extractvalue { ptr, i64 } %i.au, 0
  %bcmp.i43 = tail call i32 @bcmp(ptr nonnull readonly %i.bd, ptr nonnull readonly %i.bc, i64 %i.av), !alias.scope !625, !noalias !624
  %i.be = icmp eq i32 %bcmp.i43, 0
  br i1 %i.be, label %bb.ab, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44.thread: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit41, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bf = tail call { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsiqiOkcJdymw_7similar(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @0) ; 2 uses
  %i.bg = extractvalue { i64, i64 } %i.bf, 0
  %i.bh = extractvalue { i64, i64 } %i.bf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @2, i64 32, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store i64 %i.bg, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.bh, ptr %.sroa.5.0..sroa_idx.i, align 8
  br i1 %i.f, label %.lr.ph.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit.preheader.i

.lr.ph.i:                                         ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44.thread
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.h

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit.preheader.i: ; preds = %bb.z, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44.thread
  br i1 %i.h, label %.lr.ph89.i, label %.loopexit

.lr.ph89.i:                                       ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit.preheader.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i24.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.noexc31.i, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit.i.i.i
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
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjEEECsiqiOkcJdymw_7similar.exit.i unwind label %bb.aa

bb.h:                                             ; preds = %bb.z, %.lr.ph.i
  %.sroa.0.03086.i = phi i64 [ %2, %.lr.ph.i ], [ %i.bl, %bb.z ] ; 3 uses
  %.sroa.8.085.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bm, %bb.z ] ; 2 uses
  %i.bl = add nuw i64 %.sroa.0.03086.i, 1
  %i.bm = add nuw i64 %.sroa.8.085.i, 1           ; 2 uses
  %i.bn = and i64 %.sroa.8.085.i, 1023
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.r, label %bb.t

bb.i:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit.i, %.lr.ph89.i
  %.sroa.011.088.i = phi i64 [ %5, %.lr.ph89.i ], [ %i.bp, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit.i ] ; 2 uses
  %.sroa.813.087.i = phi i64 [ 0, %.lr.ph89.i ], [ %i.bq, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit.i ] ; 2 uses
  %i.bp = add nuw i64 %.sroa.011.088.i, 1
  %i.bq = add nuw i64 %.sroa.813.087.i, 1         ; 2 uses
  %i.br = and i64 %.sroa.813.087.i, 1023
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bt = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.k:                                             ; preds = %bb.j
  br i1 %i.bt, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_EB6_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %.val33, i64 %.sroa.011.088.i ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !626, !noalias !627, !nonnull !3, !align !9, !noundef !3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !626, !noalias !627, !noundef !3
  %i.by = invoke { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bv, i64 noundef %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12)
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
  %i.cf = load i8, ptr %.sroa.0.0.i1.i.i.i, align 1, !alias.scope !628, !noalias !629, !noundef !3
  %i.cg = zext i8 %i.cf to i64
  %i.ch = xor i64 %i.cd, %i.cg
  %i.ci = mul i64 %i.ch, 1099511628211
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 2
  %i.ck = load i8, ptr %i.ce, align 1, !alias.scope !628, !noalias !629, !noundef !3
  %i.cl = zext i8 %i.ck to i64
  %i.cm = xor i64 %i.ci, %i.cl
  %i.cn = mul i64 %i.cm, 1099511628211
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 3
  %i.cp = load i8, ptr %i.cj, align 1, !alias.scope !628, !noalias !629, !noundef !3
  %i.cq = zext i8 %i.cp to i64
  %i.cr = xor i64 %i.cn, %i.cq
  %i.cs = mul i64 %i.cr, 1099511628211
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 4
  %i.cu = load i8, ptr %i.co, align 1, !alias.scope !628, !noalias !629, !noundef !3
  %i.cv = zext i8 %i.cu to i64
  %i.cw = xor i64 %i.cs, %i.cv
  %i.cx = mul i64 %i.cw, 1099511628211
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 5
  %i.cz = load i8, ptr %i.ct, align 1, !alias.scope !628, !noalias !629, !noundef !3
  %i.da = zext i8 %i.cz to i64
  %i.db = xor i64 %i.cx, %i.da
  %i.dc = mul i64 %i.db, 1099511628211
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 6
  %i.de = load i8, ptr %i.cy, align 1, !alias.scope !628, !noalias !629, !noundef !3
  %i.df = zext i8 %i.de to i64
  %i.dg = xor i64 %i.dc, %i.df
  %i.dh = mul i64 %i.dg, 1099511628211
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 7
  %i.dj = load i8, ptr %i.dd, align 1, !alias.scope !628, !noalias !629, !noundef !3
  %i.dk = zext i8 %i.dj to i64
  %i.dl = xor i64 %i.dh, %i.dk
  %i.dm = mul i64 %i.dl, 1099511628211
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 8 ; 2 uses
  %i.do = load i8, ptr %i.di, align 1, !alias.scope !628, !noalias !629, !noundef !3
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
  %i.du = load i8, ptr %.sroa.0.0.i1.i.i.i.epil, align 1, !alias.scope !628, !noalias !629, !noundef !3
  %i.dv = zext i8 %i.du to i64
  %i.dw = xor i64 %i.ds, %i.dv
  %i.dx = mul i64 %i.dw, 1099511628211            ; 2 uses
  %epil.iter177.next = add i64 %epil.iter177, 1   ; 2 uses
  %epil.iter177.cmp.not = icmp eq i64 %epil.iter177.next, %xtraiter176
  br i1 %epil.iter177.cmp.not, label %.loopexit59.loopexit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !576

.loopexit59.loopexit.i:                           ; preds = %.lr.ph.i.i.i.epil, %.loopexit59.loopexit.i.unr-lcssa
  %.lcssa = phi i64 [ %i.dr, %.loopexit59.loopexit.i.unr-lcssa ], [ %i.dx, %.lr.ph.i.i.i.epil ]
  %i.dy = xor i64 %.lcssa, 255
  %i.dz = mul i64 %i.dy, 1099511628211
  br label %.loopexit59.i

.loopexit59.i:                                    ; preds = %.loopexit59.loopexit.i, %.noexc12.i
  %.promoted.i.i.i.i = phi i64 [ -5808391946409677970, %.noexc12.i ], [ %i.dz, %.loopexit59.loopexit.i ]
  store i64 %.promoted.i.i.i.i, ptr %i.c, align 8
  %i.ea = load i64, ptr %i.bj, align 8, !alias.scope !630, !noalias !631, !noundef !3
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit.i, label %bb.m

bb.m:                                             ; preds = %.loopexit59.i
  %i.ec = invoke noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRyECsiqiOkcJdymw_7similar(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc25.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 2 uses

.noexc25.i:                                       ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %i.ed = lshr i64 %i.ec, 57
  %i.ee = trunc nuw nsw i64 %i.ed to i8
  %i.ef = load i64, ptr %i.bk, align 8, !alias.scope !634, !noalias !635, !noundef !3 ; 2 uses
  %i.eg = load ptr, ptr %i.d, align 8, !alias.scope !634, !noalias !635, !nonnull !3, !noundef !3 ; 2 uses
  %i.eh = insertelement <16 x i8> poison, i8 %i.ee, i64 0
  %i.ei = shufflevector <16 x i8> %i.eh, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.noexc25.i
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.noexc25.i ], [ %i.ez, %bb.p ]
  %.pn.i.i.i.i = phi i64 [ %i.ec, %.noexc25.i ], [ %i.fa, %bb.p ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.ef ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.ej, align 1, !noalias !636 ; 2 uses
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
  %i.et = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownyINtB2_10EquivalentyE10equivalentCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.es)
          to label %.noexc26.i unwind label %.loopexit.i

.noexc26.i:                                       ; preds = %.lr.ph.i.i24.i
  br i1 %i.et, label %bb.q, label %bb.o, !prof !4

._crit_edge.i.i.i:                                ; preds = %bb.o, %bb.n
  %i.eu = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.ev = bitcast <16 x i1> %i.eu to i16
  %i.ew = icmp eq i16 %i.ev, 0
  br i1 %i.ew, label %bb.p, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit.i, !prof !5

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
  %i.fc = load ptr, ptr %i.fb, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %i.er, i64 -8
  %i.fe = load i64, ptr %i.fd, align 8, !noundef !3 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.fe, 3
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.idx.i
  %.not.i29.i = icmp eq i64 %i.fe, 0
  br i1 %.not.i29.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0B8_.exit.backedge.i.i
  %i.fg = phi ptr [ %i.fh, %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0B8_.exit.backedge.i.i ], [ %i.fc, %bb.q ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 2 uses
  %.val4.i.i = load i64, ptr %i.fg, align 8, !noalias !637, !noundef !3 ; 3 uses
  %i.fi = icmp ult i64 %.val4.i.i, %.val32
  br i1 %i.fi, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit.i.i.i, label %.invoke.i

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit.i.i.i: ; preds = %.lr.ph.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !638)
  call void @llvm.experimental.noalias.scope.decl(metadata !639)
  %i.fj = load ptr, ptr %i.bu, align 8, !alias.scope !638, !noalias !640, !nonnull !3, !align !9, !noundef !3
  %i.fk = load i64, ptr %i.bw, align 8, !alias.scope !638, !noalias !640, !noundef !3
  %i.fl = invoke { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fj, i64 noundef %i.fk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12)
          to label %.noexc31.i unwind label %.loopexit.split-lp.loopexit.i ; 2 uses

.noexc31.i:                                       ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit.i.i.i
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %.val31, i64 %.val4.i.i ; 2 uses
  %i.fn = extractvalue { ptr, i64 } %i.fl, 1      ; 2 uses
  %i.fo = load ptr, ptr %i.fm, align 8, !alias.scope !639, !noalias !641, !nonnull !3, !align !9, !noundef !3
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !639, !noalias !641, !noundef !3
  %i.fr = invoke { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fo, i64 noundef %i.fq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12)
          to label %.noexc32.i unwind label %.loopexit.split-lp.loopexit.i ; 2 uses

.noexc32.i:                                       ; preds = %.noexc31.i
  %i.fs = extractvalue { ptr, i64 } %i.fr, 1
  %i.ft = icmp eq i64 %i.fn, %i.fs
  br i1 %i.ft, label %.split.i.i, label %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0B8_.exit.backedge.i.i

.split.i.i:                                       ; preds = %.noexc32.i
  %i.fu = extractvalue { ptr, i64 } %i.fr, 0
  %i.fv = extractvalue { ptr, i64 } %i.fl, 0
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %i.fv, ptr nonnull readonly %i.fu, i64 %i.fn), !alias.scope !642, !noalias !643
  %i.fw = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.fw, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1I_5utils10UniqueItemINtNtB1K_4text12TextDiffSideeEEEB2J_E0EB1K_.exit.i, label %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0B8_.exit.backedge.i.i

_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0B8_.exit.backedge.i.i: ; preds = %.split.i.i, %.noexc32.i
  %.not7.i.i = icmp eq ptr %i.fh, %i.ff
  br i1 %.not7.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit.i, label %.lr.ph.i.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1I_5utils10UniqueItemINtNtB1K_4text12TextDiffSideeEEEB2J_E0EB1K_.exit.i: ; preds = %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_EB6_.exit.thread

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit.i: ; preds = %._crit_edge.i.i.i, %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0B8_.exit.backedge.i.i, %bb.q, %.loopexit59.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %exitcond111.not.i = icmp eq i64 %i.bq, %i.i
  br i1 %exitcond111.not.i, label %.loopexit, label %bb.i

bb.r:                                             ; preds = %bb.h
  %i.fx = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.s:                                             ; preds = %bb.r
  br i1 %i.fx, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_EB6_.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.h
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %.val31, i64 %.sroa.0.03086.i ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !alias.scope !644, !noalias !645, !nonnull !3, !align !9, !noundef !3
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !alias.scope !644, !noalias !645, !noundef !3
  %i.gc = invoke { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fz, i64 noundef %i.gb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 2 uses

.invoke.i:                                        ; preds = %.lr.ph.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.val4.i.i, i64 noundef range(i64 0, 576460752303423488) %.val32, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #13
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.cont.i:                                          ; preds = %.invoke.i
  unreachable

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
  %i.gj = load i8, ptr %.sroa.0.0.i1.i.i37.i, align 1, !alias.scope !646, !noalias !647, !noundef !3
  %i.gk = zext i8 %i.gj to i64
  %i.gl = xor i64 %i.gh, %i.gk
  %i.gm = mul i64 %i.gl, 1099511628211
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i37.i, i64 2
  %i.go = load i8, ptr %i.gi, align 1, !alias.scope !646, !noalias !647, !noundef !3
  %i.gp = zext i8 %i.go to i64
  %i.gq = xor i64 %i.gm, %i.gp
  %i.gr = mul i64 %i.gq, 1099511628211
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i37.i, i64 3
  %i.gt = load i8, ptr %i.gn, align 1, !alias.scope !646, !noalias !647, !noundef !3
  %i.gu = zext i8 %i.gt to i64
  %i.gv = xor i64 %i.gr, %i.gu
  %i.gw = mul i64 %i.gv, 1099511628211
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i37.i, i64 4
  %i.gy = load i8, ptr %i.gs, align 1, !alias.scope !646, !noalias !647, !noundef !3
  %i.gz = zext i8 %i.gy to i64
  %i.ha = xor i64 %i.gw, %i.gz
  %i.hb = mul i64 %i.ha, 1099511628211
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i37.i, i64 5
  %i.hd = load i8, ptr %i.gx, align 1, !alias.scope !646, !noalias !647, !noundef !3
  %i.he = zext i8 %i.hd to i64
  %i.hf = xor i64 %i.hb, %i.he
  %i.hg = mul i64 %i.hf, 1099511628211
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i37.i, i64 6
  %i.hi = load i8, ptr %i.hc, align 1, !alias.scope !646, !noalias !647, !noundef !3
  %i.hj = zext i8 %i.hi to i64
  %i.hk = xor i64 %i.hg, %i.hj
  %i.hl = mul i64 %i.hk, 1099511628211
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i37.i, i64 7
  %i.hn = load i8, ptr %i.hh, align 1, !alias.scope !646, !noalias !647, !noundef !3
  %i.ho = zext i8 %i.hn to i64
  %i.hp = xor i64 %i.hl, %i.ho
  %i.hq = mul i64 %i.hp, 1099511628211
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i37.i, i64 8 ; 2 uses
  %i.hs = load i8, ptr %i.hm, align 1, !alias.scope !646, !noalias !647, !noundef !3
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
  %i.hy = load i8, ptr %.sroa.0.0.i1.i.i37.i.epil, align 1, !alias.scope !646, !noalias !647, !noundef !3
  %i.hz = zext i8 %i.hy to i64
  %i.ia = xor i64 %i.hw, %i.hz
  %i.ib = mul i64 %i.ia, 1099511628211            ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit63.loopexit.i, label %.lr.ph.i.i36.i.epil, !llvm.loop !609

.loopexit63.loopexit.i:                           ; preds = %.lr.ph.i.i36.i.epil, %.loopexit63.loopexit.i.unr-lcssa
  %.lcssa170 = phi i64 [ %i.hv, %.loopexit63.loopexit.i.unr-lcssa ], [ %i.ib, %.lr.ph.i.i36.i.epil ]
  %i.ic = xor i64 %.lcssa170, 255
  %i.id = mul i64 %i.ic, 1099511628211
  br label %.loopexit63.i

.loopexit63.i:                                    ; preds = %.loopexit63.loopexit.i, %.noexc.i
  %.promoted.i.i.i38.i = phi i64 [ -5808391946409677970, %.noexc.i ], [ %i.id, %.loopexit63.loopexit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE11rustc_entryCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d, i64 noundef %.promoted.i.i.i38.i)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.u:                                             ; preds = %.loopexit63.i
  %i.ie = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not10.i = icmp eq ptr %i.ie, null
  br i1 %.not10.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.426.0.copyload.i = load i64, ptr %.sroa.426.0..sroa_idx.i, align 8
  %.sroa.527.0.copyload.i = load i64, ptr %.sroa.527.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !648
  store i64 %.sroa.527.0.copyload.i, ptr %i.a, align 8, !noalias !648
  store i64 0, ptr %i.bi, align 8, !noalias !648
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !648
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !648
  %i.if = invoke noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEE14insert_no_growCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ie, i64 noundef %.sroa.426.0.copyload.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.noexc42.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc42.i:                                       ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !648
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ig = load ptr, ptr %.sroa.426.0..sroa_idx.i, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.noexc42.i
  %.pn.i.i = phi ptr [ %i.if, %.noexc42.i ], [ %i.ig, %bb.w ] ; 3 uses
  %.sroa.0.0.i41.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -24 ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %.pn.i.i, i64 -8 ; 2 uses
  %i.ii = load i64, ptr %i.ih, align 8, !alias.scope !649, !noundef !3 ; 3 uses
  %i.ij = load i64, ptr %.sroa.0.0.i41.i, align 8, !range !6, !alias.scope !649, !noundef !3
  %i.ik = icmp eq i64 %i.ii, %i.ij
  br i1 %i.ik, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i41.i)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.il = getelementptr inbounds i8, ptr %.pn.i.i, i64 -16
  %i.im = load ptr, ptr %i.il, align 8, !alias.scope !649, !nonnull !3, !noundef !3
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.ii
  store i64 %.sroa.0.03086.i, ptr %i.in, align 8
  %i.io = add i64 %i.ii, 1
  store i64 %i.io, ptr %i.ih, align 8, !alias.scope !649
  %exitcond108.not.i = icmp eq i64 %i.bm, %i.g
  br i1 %exitcond108.not.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit.preheader.i, label %bb.h

bb.aa:                                            ; preds = %.loopexit.split-lp.i
  %i.ip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjEEECsiqiOkcJdymw_7similar.exit.i: ; preds = %.loopexit.split-lp.i
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_EB6_.exit.thread: ; preds = %bb.s, %bb.k, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1I_5utils10UniqueItemINtNtB1K_4text12TextDiffSideeEEEB2J_E0EB1K_.exit.i
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ab

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit.preheader.i
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %2, i64 noundef %.sroa.04.0, i64 noundef %5)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %2, i64 noundef %5, i64 noundef %.sroa.011.0)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6finishB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.c, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_EB6_.exit.thread, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44, %bb.b, %bb.a, %.loopexit
  %.sroa.0.0 = phi i1 [ true, %.loopexit ], [ false, %bb.a ], [ false, %bb.b ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit ], [ false, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_EB6_.exit.thread ], [ false, %bb.c ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsiqiOkcJdymw_7similar(ptr noalias noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !654, !noalias !655, !noundef !3
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsiqiOkcJdymw_7similar.exit, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsiqiOkcJdymw_7similar(ptr noundef nonnull align 8 %i.a, ptr noalias noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsiqiOkcJdymw_7similar.exit

_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsiqiOkcJdymw_7similar.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsiqiOkcJdymw_7similar(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable_or_null(24)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRyECsiqiOkcJdymw_7similar(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiqiOkcJdymw_7similar(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsiqiOkcJdymw_7similar(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE11rustc_entryCsiqiOkcJdymw_7similar(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(48), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishB9_(ptr noalias noundef align 8 dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishB9_(ptr noalias noundef align 8 dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_(ptr noalias noundef align 8 dereferenceable(208), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertB9_(ptr noalias noundef align 8 dereferenceable(208), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6finishB9_(ptr noalias noundef align 8 dereferenceable(208)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_(ptr noalias noundef align 8 dereferenceable(208), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertB9_(ptr noalias noundef align 8 dereferenceable(208), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6finishB9_(ptr noalias noundef align 8 dereferenceable(208)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownyINtB2_10EquivalentyE10equivalentCsiqiOkcJdymw_7similar(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #7

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEE14insert_no_growCsiqiOkcJdymw_7similar(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsiqiOkcJdymw_7similar(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #7

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { noreturn }
attributes #14 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{i64 0, i64 -9223372036854775808}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!"branch_weights", i32 2002, i32 2000}
!9 = !{i64 8}
!10 = distinct !{!10, !"_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3getyECsiqiOkcJdymw_7similar"}
!11 = distinct !{!11, !10, !"_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3getyECsiqiOkcJdymw_7similar: argument 0"}
!12 = distinct !{!12, !10, !"_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3getyECsiqiOkcJdymw_7similar: argument 1"}
!13 = distinct !{!13, !"_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEE4findNCINvNtB8_3map14equivalent_keyyyBR_E0ECsiqiOkcJdymw_7similar"}
!14 = distinct !{!14, !13, !"_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEE4findNCINvNtB8_3map14equivalent_keyyyBR_E0ECsiqiOkcJdymw_7similar: argument 0"}
!15 = distinct !{!15, !"_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!16 = distinct !{!16, !15, !"_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!17 = distinct !{!17, !13, !"_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEE4findNCINvNtB8_3map14equivalent_keyyyBR_E0ECsiqiOkcJdymw_7similar: argument 1"}
!18 = distinct !{!18, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!19 = distinct !{!19, !18, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!20 = distinct !{!20, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtB1I_5utils12OffsetLookupjEB2J_E0EB1K_"}
!21 = distinct !{!21, !20, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtB1I_5utils12OffsetLookupjEB2J_E0EB1K_: argument 2"}
!22 = distinct !{!22, !20, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtB1I_5utils12OffsetLookupjEB2J_E0EB1K_: argument 1"}
!23 = distinct !{!23, !20, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtB1I_5utils12OffsetLookupjEB2J_E0EB1K_: argument 0"}
!24 = distinct !{!24, !"_RNvMs19_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB6_5EntryyINtNtCscdodAO9FK5_5alloc3vec3VecjEE10or_defaultCsiqiOkcJdymw_7similar"}
!25 = distinct !{!25, !24, !"_RNvMs19_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB6_5EntryyINtNtCscdodAO9FK5_5alloc3vec3VecjEE10or_defaultCsiqiOkcJdymw_7similar: argument 0"}
!26 = distinct !{!26, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjE8push_mutCsiqiOkcJdymw_7similar"}
!27 = distinct !{!27, !26, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjE8push_mutCsiqiOkcJdymw_7similar: argument 0"}
!28 = !{!11}
!29 = !{!12}
!30 = !{!14}
!31 = !{!16}
!32 = !{!16, !14, !11}
!33 = !{!17, !12}
!34 = !{!19, !16, !14}
!35 = !{!23, !22, !21}
!36 = !{!25}
!37 = !{!27}
!38 = distinct !{!38, !"_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3getyECsiqiOkcJdymw_7similar"}
!39 = distinct !{!39, !38, !"_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3getyECsiqiOkcJdymw_7similar: argument 0"}
!40 = distinct !{!40, !38, !"_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3getyECsiqiOkcJdymw_7similar: argument 1"}
!41 = distinct !{!41, !"_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEE4findNCINvNtB8_3map14equivalent_keyyyBR_E0ECsiqiOkcJdymw_7similar"}
!42 = distinct !{!42, !41, !"_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEE4findNCINvNtB8_3map14equivalent_keyyyBR_E0ECsiqiOkcJdymw_7similar: argument 0"}
!43 = distinct !{!43, !"_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!44 = distinct !{!44, !43, !"_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!45 = distinct !{!45, !41, !"_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEE4findNCINvNtB8_3map14equivalent_keyyyBR_E0ECsiqiOkcJdymw_7similar: argument 1"}
!46 = distinct !{!46, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!47 = distinct !{!47, !46, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!48 = distinct !{!48, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtB1I_5utils12OffsetLookupmEB2J_E0EB1K_"}
!49 = distinct !{!49, !48, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtB1I_5utils12OffsetLookupmEB2J_E0EB1K_: argument 2"}
end_hunk_0
