Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/mdtest-6d13eae5d4aac296.mdtest.f417265bba566f7e-cgu.07?download=true
inline.NumInlined: 210
inline.NumDeleted: 83
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB6_4text12TextDiffSideeEB1j_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest:bb.a
  %i.af = load i64, ptr %i.ac, align 8, !range !6, !alias.scope !416, !noalias !417, !noundef !3
  %i.ag = icmp eq i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac), !noalias !417
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit: ; preds = %bb.d, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !416, !noalias !417, !nonnull !3, !noundef !3
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %i.ai, i64 %i.ae ; 4 uses
  store i64 1, ptr %i.aj, align 8, !noalias !418
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !418
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %.sroa.04.0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !418
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i64 %5, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !418
  %i.ak = add i64 %i.ae, 1
  store i64 %i.ak, ptr %i.ad, align 8, !alias.scope !416, !noalias !417
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %i.al = load ptr, ptr %i.aa, align 8, !alias.scope !419, !noalias !420, !nonnull !3, !align !9, !noundef !3 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 120 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 136 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !421, !noalias !422, !noundef !3 ; 3 uses
  %i.ap = load i64, ptr %i.am, align 8, !range !6, !alias.scope !421, !noalias !422, !noundef !3
  %i.aq = icmp eq i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.f, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit30

bb.f:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am), !noalias !422
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit30

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit30: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit, %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !421, !noalias !422, !nonnull !3, !noundef !3
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %i.as, i64 %i.ao ; 4 uses
  store i64 2, ptr %i.at, align 8, !noalias !423
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %2, ptr %.sroa.435.0..sroa_idx, align 8, !noalias !423
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %5, ptr %.sroa.536.0..sroa_idx, align 8, !noalias !423
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 %.sroa.011.0, ptr %.sroa.637.0..sroa_idx, align 8, !noalias !423
  %i.au = add i64 %i.ao, 1
  store i64 %i.au, ptr %i.an, align 8, !alias.scope !421, !noalias !422
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29, %bb.b, %bb.a, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit30
  %.sroa.0.0 = phi i1 [ true, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit30 ], [ false, %bb.a ], [ false, %bb.b ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread ], [ false, %bb.c ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB6_4text12TextDiffSideeEB1j_INtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.h = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 1        ; 2 uses
  %i.j = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 1
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %.thread
  %i.m = extractvalue { ptr, i64 } %i.j, 0
  %i.n = extractvalue { ptr, i64 } %i.h, 0
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %i.n, ptr nonnull readonly %i.m, i64 %i.i), !alias.scope !436
  %i.o = icmp eq i32 %bcmp.i, 0
  br i1 %i.o, label %bb.g, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread: ; preds = %.thread, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit
  %i.p = add i64 %6, -1
  %i.q = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 1        ; 2 uses
  %i.s = add i64 %3, -1
  %i.t = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.t, 1
  %i.v = icmp eq i64 %i.r, %i.u
  br i1 %i.v, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread
  %i.w = extractvalue { ptr, i64 } %i.t, 0
  %i.x = extractvalue { ptr, i64 } %i.q, 0
  %bcmp.i28 = tail call i32 @bcmp(ptr nonnull readonly %i.x, ptr nonnull readonly %i.w, i64 %i.r), !alias.scope !437
  %i.y = icmp eq i32 %bcmp.i28, 0
  br i1 %i.y, label %bb.g, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29
  %i.z = tail call fastcc noundef i8 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtB6_4text12TextDiffSideeEB15_ECskXhPDodhyTq_6mdtest(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  %cond = icmp eq i8 %i.z, 0
  br i1 %cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !438, !noalias !439, !noundef !3 ; 4 uses
  %i.ad = load i64, ptr %i.aa, align 8, !range !6, !alias.scope !438, !noalias !439, !noundef !3
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.e, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa), !noalias !439
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit: ; preds = %bb.d, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !438, !noalias !439, !nonnull !3, !noundef !3
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %i.ac ; 4 uses
  store i64 1, ptr %i.ah, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %.sroa.04.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 %5, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ai = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.ai, ptr %i.ab, align 8, !alias.scope !438, !noalias !439
  %i.aj = load i64, ptr %i.aa, align 8, !range !6, !alias.scope !440, !noalias !441, !noundef !3
  %i.ak = icmp eq i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.f, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit30

bb.f:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa), !noalias !441
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit30

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit30: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit, %bb.f
  %i.al = load ptr, ptr %i.af, align 8, !alias.scope !440, !noalias !441, !nonnull !3, !noundef !3
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.al, i64 %i.ai ; 4 uses
  store i64 2, ptr %i.am, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %2, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %5, ptr %.sroa.536.0..sroa_idx, align 8
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i64 %.sroa.011.0, ptr %.sroa.637.0..sroa_idx, align 8
  %i.an = add i64 %i.ac, 2
  store i64 %i.an, ptr %i.ab, align 8, !alias.scope !440, !noalias !441
  tail call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(160) %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29, %bb.b, %bb.a, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit30
  %.sroa.0.0 = phi i1 [ true, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit30 ], [ false, %bb.a ], [ false, %bb.b ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29.thread ], [ false, %bb.c ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit29 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1S_12OffsetLookupmEEEB1j_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2f_B2f_INtNtB4_7compact7CompactB2f_B2f_IB2J_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
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
  br i1 %i.r, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit, label %bb.d

bb.d:                                             ; preds = %.thread
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %5, i64 noundef range(i64 0, 576460752303423488) %.val41, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #14, !noalias !509
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit: ; preds = %.thread
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val38 = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val39 = load i64, ptr %i.t, align 8, !noundef !3 ; 6 uses
  %i.u = icmp ult i64 %2, %.val39
  br i1 %i.u, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit46, label %bb.e

bb.e:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef range(i64 0, 576460752303423488) %.val39, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #14, !noalias !510
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit46: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.val40, i64 %5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !511, !noalias !512, !nonnull !3, !align !9, !noundef !3 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !511, !noalias !512, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !513, !noalias !514, !noundef !3
  %i.ab = sub i64 %i.y, %i.aa                     ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !513, !noalias !514, !noundef !3 ; 2 uses
  %i.ae = icmp ult i64 %i.ab, %i.ad
  br i1 %i.ae, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit24, label %bb.f

bb.f:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit46
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #14, !noalias !515
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit24: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit46
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.val38, i64 %2 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !513, !noalias !514, !nonnull !3, !noundef !3
  %i.ai = load ptr, ptr %i.af, align 8, !alias.scope !512, !noalias !511, !nonnull !3, !align !9, !noundef !3 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !512, !noalias !511, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !516, !noalias !517, !noundef !3
  %i.an = sub i64 %i.ak, %i.am                    ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !516, !noalias !517, !noundef !3 ; 2 uses
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit, label %bb.g

bb.g:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit24
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.an, i64 noundef %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #14, !noalias !518
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit24
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ab
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !516, !noalias !517, !nonnull !3, !noundef !3
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.an
  %.val30 = load i32, ptr %i.ar, align 4, !noundef !3
  %.val31 = load i32, ptr %i.au, align 4, !noundef !3
  %i.av = icmp eq i32 %.val30, %.val31
  br i1 %i.av, label %bb.al, label %bb.h

bb.h:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit
  %i.aw = add i64 %6, -1                          ; 3 uses
  %i.ax = icmp ult i64 %i.aw, %.val41
  br i1 %i.ax, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit47, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aw, i64 noundef range(i64 0, 576460752303423488) %.val41, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #14, !noalias !519
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit47: ; preds = %bb.h
  %i.ay = add i64 %3, -1                          ; 3 uses
  %i.az = icmp ult i64 %i.ay, %.val39
  br i1 %i.az, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit48, label %bb.j

bb.j:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit47
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ay, i64 noundef range(i64 0, 576460752303423488) %.val39, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #14, !noalias !520
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit48: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit47
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.val40, i64 %i.aw ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !521, !noalias !522, !nonnull !3, !align !9, !noundef !3 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !521, !noalias !522, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !523, !noalias !524, !noundef !3
  %i.bg = sub i64 %i.bd, %i.bf                    ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !523, !noalias !524, !noundef !3 ; 2 uses
  %i.bj = icmp ult i64 %i.bg, %i.bi
  br i1 %i.bj, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit26, label %bb.k

bb.k:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit48
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bg, i64 noundef %i.bi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #14, !noalias !525
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit26: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit48
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %.val38, i64 %i.ay ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !523, !noalias !524, !nonnull !3, !noundef !3
  %i.bn = load ptr, ptr %i.bk, align 8, !alias.scope !522, !noalias !521, !nonnull !3, !align !9, !noundef !3 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !522, !noalias !521, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !526, !noalias !527, !noundef !3
  %i.bs = sub i64 %i.bp, %i.br                    ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !526, !noalias !527, !noundef !3 ; 2 uses
  %i.bv = icmp ult i64 %i.bs, %i.bu
  br i1 %i.bv, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit25, label %bb.l

bb.l:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit26
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bs, i64 noundef %i.bu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #14, !noalias !528
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit25: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit26
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bg
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !526, !noalias !527, !nonnull !3, !noundef !3
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bs
  %.val32 = load i32, ptr %i.bw, align 4, !noundef !3
  %.val33 = load i32, ptr %i.bz, align 4, !noundef !3
  %i.ca = icmp eq i32 %.val32, %.val33
  br i1 %i.ca, label %bb.al, label %bb.m

bb.m:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cb = tail call { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXhPDodhyTq_6mdtest(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @0) ; 2 uses
  %i.cc = extractvalue { i64, i64 } %i.cb, 0
  %i.cd = extractvalue { i64, i64 } %i.cb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @2, i64 32, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store i64 %i.cc, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.cd, ptr %.sroa.5.0..sroa_idx.i, align 8
  br i1 %i.f, label %.lr.ph.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit.preheader.i

.lr.ph.i:                                         ; preds = %bb.m
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.n

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit.preheader.i: ; preds = %bb.aj, %bb.m
  br i1 %i.h, label %.lr.ph101.i, label %.loopexit

.lr.ph101.i:                                      ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit.preheader.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.o

.loopexit.i:                                      ; preds = %bb.t, %bb.p
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.ai, %bb.af, %bb.ad, %bb.aa
  %lpad.loopexit55.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.invoke.i
  %lpad.loopexit.split-lp56.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit55.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp56.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjEEECskXhPDodhyTq_6mdtest.exit.i unwind label %bb.ak

bb.n:                                             ; preds = %bb.aj, %.lr.ph.i
  %.sroa.0.03098.i = phi i64 [ %2, %.lr.ph.i ], [ %i.ch, %bb.aj ] ; 3 uses
  %.sroa.8.097.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ci, %bb.aj ] ; 2 uses
  %i.ch = add nuw i64 %.sroa.0.03098.i, 1
  %i.ci = add nuw i64 %.sroa.8.097.i, 1           ; 2 uses
  %i.cj = and i64 %.sroa.8.097.i, 1023
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.aa, label %bb.ac

bb.o:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit.i, %.lr.ph101.i
  %.sroa.011.0100.i = phi i64 [ %5, %.lr.ph101.i ], [ %i.cl, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit.i ] ; 2 uses
  %.sroa.813.099.i = phi i64 [ 0, %.lr.ph101.i ], [ %i.cm, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit.i ] ; 2 uses
  %i.cl = add nuw i64 %.sroa.011.0100.i, 1
  %i.cm = add nuw i64 %.sroa.813.099.i, 1         ; 2 uses
  %i.cn = and i64 %.sroa.813.099.i, 1023
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cp = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %bb.q unwind label %.loopexit.i

bb.q:                                             ; preds = %bb.p
  br i1 %i.cp, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1E_12OffsetLookupmEEEB15_ECskXhPDodhyTq_6mdtest.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %.val40, i64 %.sroa.011.0100.i ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !529, !noalias !530, !nonnull !3, !align !9, !noundef !3 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !529, !noalias !530, !noundef !3
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !531, !noalias !532, !noundef !3
  %i.cw = sub i64 %i.ct, %i.cv                    ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !531, !noalias !532, !noundef !3 ; 2 uses
  %i.cz = icmp ult i64 %i.cw, %i.cy
  br i1 %i.cz, label %bb.s, label %.invoke.i

bb.s:                                             ; preds = %bb.r
  %i.da = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !alias.scope !531, !noalias !532, !nonnull !3, !noundef !3
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
  %i.dq = mul i64 %i.dp, 1099511628211            ; 2 uses
  store i64 %i.dq, ptr %i.c, align 8
  %i.dr = load i64, ptr %i.cf, align 8, !alias.scope !533, !noalias !534, !noundef !3
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dt = invoke noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRyECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc29.i unwind label %.loopexit.i ; 2 uses

.noexc29.i:                                       ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !535)
  call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %i.du = lshr i64 %i.dt, 57
  %i.dv = trunc nuw nsw i64 %i.du to i8
  %i.dw = load i64, ptr %i.cg, align 8, !alias.scope !537, !noalias !538, !noundef !3 ; 2 uses
  %i.dx = load ptr, ptr %i.d, align 8, !alias.scope !537, !noalias !538, !nonnull !3, !noundef !3 ; 2 uses
  %i.dy = insertelement <16 x i8> poison, i8 %i.dv, i64 0
  %i.dz = shufflevector <16 x i8> %i.dy, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %.noexc29.i
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.noexc29.i ], [ %i.eq, %bb.w ]
  %.pn.i.i.i.i = phi i64 [ %i.dt, %.noexc29.i ], [ %i.er, %bb.w ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.dw ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.ea, align 1, !noalias !539 ; 2 uses
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
  %.val2.i.i.i.i = load i64, ptr %i.ej, align 8, !noalias !540, !noundef !3
  %i.ek = icmp eq i64 %i.dq, %.val2.i.i.i.i
  br i1 %i.ek, label %bb.x, label %bb.v, !prof !4

._crit_edge.i.i.i:                                ; preds = %bb.v, %bb.u
  %i.el = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.em = bitcast <16 x i1> %i.el to i16
  %i.en = icmp eq i16 %i.em, 0
  br i1 %i.en, label %bb.w, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit.i, !prof !5

bb.v:                                             ; preds = %.lr.ph.i.i.i
  %i.eo = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.ep = and i16 %i.eo, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.ep, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.w:                                             ; preds = %._crit_edge.i.i.i
  %i.eq = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.er = add i64 %.sroa.01.0.i.i.i.i, %i.eq
  br label %bb.u

bb.x:                                             ; preds = %.lr.ph.i.i.i
  %i.es = getelementptr inbounds i8, ptr %i.ei, i64 -16
  %i.et = load ptr, ptr %i.es, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %i.ei, i64 -8
  %i.ev = load i64, ptr %i.eu, align 8, !noundef !3 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ev, 3
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 %.idx
  %.not.not.not.i.not.i143 = icmp eq i64 %i.ev, 0
  br i1 %.not.not.not.i.not.i143, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit.i, label %.lr.ph

bb.y:                                             ; preds = %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_E0CskXhPDodhyTq_6mdtest.exit.i.i
  %.not.not.not.i.not.i = icmp eq ptr %i.ey, %i.ew
  br i1 %.not.not.not.i.not.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x, %bb.y
  %i.ex = phi ptr [ %i.ey, %bb.y ], [ %i.et, %bb.x ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 2 uses
  %.val4.i.i = load i64, ptr %i.ex, align 8, !noalias !541, !noundef !3 ; 3 uses
  %i.ez = icmp ult i64 %.val4.i.i, %.val39
  br i1 %i.ez, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit.i.i.i, label %.invoke.i

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit.i.i.i: ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !542)
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  %i.fa = load ptr, ptr %i.cq, align 8, !alias.scope !542, !noalias !544, !nonnull !3, !align !9, !noundef !3 ; 3 uses
  %i.fb = load i64, ptr %i.cs, align 8, !alias.scope !542, !noalias !544, !noundef !3
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fd = load i64, ptr %i.fc, align 8, !alias.scope !545, !noalias !546, !noundef !3
  %i.fe = sub i64 %i.fb, %i.fd                    ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !545, !noalias !546, !noundef !3 ; 2 uses
  %i.fh = icmp ult i64 %i.fe, %i.fg
  br i1 %i.fh, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit1.i.i.i, label %.invoke.i

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit1.i.i.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit.i.i.i
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %.val38, i64 %.val4.i.i ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !alias.scope !543, !noalias !547, !nonnull !3, !align !9, !noundef !3 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !alias.scope !543, !noalias !547, !noundef !3
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fn = load i64, ptr %i.fm, align 8, !alias.scope !548, !noalias !549, !noundef !3
  %i.fo = sub i64 %i.fl, %i.fn                    ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !548, !noalias !549, !noundef !3 ; 2 uses
  %i.fr = icmp ult i64 %i.fo, %i.fq
  br i1 %i.fr, label %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_E0CskXhPDodhyTq_6mdtest.exit.i.i, label %.invoke.i

_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_E0CskXhPDodhyTq_6mdtest.exit.i.i: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit1.i.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !alias.scope !545, !noalias !546, !nonnull !3, !noundef !3
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.fe
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !alias.scope !548, !noalias !549, !nonnull !3, !noundef !3
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.fo
  %.val.i.i.i = load i32, ptr %i.fu, align 4, !noalias !541, !noundef !3
  %.val2.i.i.i = load i32, ptr %i.fx, align 4, !noalias !541, !noundef !3
  %i.fy = icmp eq i32 %.val.i.i.i, %.val2.i.i.i
  br i1 %i.fy, label %bb.z, label %bb.y

bb.z:                                             ; preds = %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_E0CskXhPDodhyTq_6mdtest.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1E_12OffsetLookupmEEEB15_ECskXhPDodhyTq_6mdtest.exit.thread

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit.i: ; preds = %._crit_edge.i.i.i, %bb.y, %bb.x, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %exitcond148.not.i = icmp eq i64 %i.cm, %i.i
  br i1 %exitcond148.not.i, label %.loopexit, label %bb.o

bb.aa:                                            ; preds = %bb.n
  %i.fz = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.i

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.fz, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1E_12OffsetLookupmEEEB15_ECskXhPDodhyTq_6mdtest.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.n
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %.val38, i64 %.sroa.0.03098.i ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !alias.scope !550, !noalias !551, !nonnull !3, !align !9, !noundef !3 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !alias.scope !550, !noalias !551, !noundef !3
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gf = load i64, ptr %i.ge, align 8, !alias.scope !552, !noalias !553, !noundef !3
  %i.gg = sub i64 %i.gd, %i.gf                    ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !552, !noalias !553, !noundef !3 ; 2 uses
  %i.gj = icmp ult i64 %i.gg, %i.gi
  br i1 %i.gj, label %bb.ad, label %.invoke.i

.invoke.i:                                        ; preds = %bb.ac, %bb.r, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit1.i.i.i, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit.i.i.i, %.lr.ph
  %9 = phi i64 [ %i.cw, %bb.r ], [ %i.fo, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit1.i.i.i ], [ %.val4.i.i, %.lr.ph ], [ %i.fe, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit.i.i.i ], [ %i.gg, %bb.ac ]
  %10 = phi i64 [ %i.cy, %bb.r ], [ %i.fq, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit1.i.i.i ], [ %.val39, %.lr.ph ], [ %i.fg, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit.i.i.i ], [ %i.gi, %bb.ac ]
  %11 = phi ptr [ @12, %bb.r ], [ @12, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit1.i.i.i ], [ @13, %.lr.ph ], [ @12, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit.i.i.i ], [ @12, %bb.ac ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %9, i64 noundef %10, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %11) #14
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !alias.scope !552, !noalias !553, !nonnull !3, !noundef !3
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.gg
  %.val18.i = load i32, ptr %i.gm, align 4, !noundef !3 ; 4 uses
  %.sroa.4.0.extract.shift.i.i37.i = lshr i32 %.val18.i, 8
  %.sroa.5.0.extract.shift.i.i38.i = lshr i32 %.val18.i, 16
  %.sroa.6.0.extract.shift.i.i39.i = lshr i32 %.val18.i, 24
  %.sroa.6.0.extract.trunc.i.i40.i = zext nneg i32 %.sroa.6.0.extract.shift.i.i39.i to i64
  %i.gn = and i32 %.val18.i, 255
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = xor i64 %i.go, -3750763034362895579
  %i.gq = mul i64 %i.gp, 1099511628211
  %i.gr = and i32 %.sroa.4.0.extract.shift.i.i37.i, 255
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = xor i64 %i.gq, %i.gs
  %i.gu = mul i64 %i.gt, 1099511628211
  %i.gv = and i32 %.sroa.5.0.extract.shift.i.i38.i, 255
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = xor i64 %i.gu, %i.gw
  %i.gy = mul i64 %i.gx, 1099511628211
  %i.gz = xor i64 %i.gy, %.sroa.6.0.extract.trunc.i.i40.i
  %i.ha = mul i64 %i.gz, 1099511628211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE11rustc_entryCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d, i64 noundef %i.ha)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.i

bb.ae:                                            ; preds = %bb.ad
  %i.hb = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not10.i = icmp eq ptr %i.hb, null
  br i1 %.not10.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.426.0.copyload.i = load i64, ptr %.sroa.426.0..sroa_idx.i, align 8
  %.sroa.527.0.copyload.i = load i64, ptr %.sroa.527.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !554
  store i64 %.sroa.527.0.copyload.i, ptr %i.a, align 8, !noalias !554
  store i64 0, ptr %i.ce, align 8, !noalias !554
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !554
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !554
  %i.hc = invoke noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEE14insert_no_growCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.hb, i64 noundef %.sroa.426.0.copyload.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.noexc44.i unwind label %.loopexit.split-lp.loopexit.i

.noexc44.i:                                       ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !554
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.hd = load ptr, ptr %.sroa.426.0..sroa_idx.i, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.noexc44.i
  %.pn.i.i = phi ptr [ %i.hc, %.noexc44.i ], [ %i.hd, %bb.ag ] ; 3 uses
  %.sroa.0.0.i43.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -24 ; 2 uses
  %i.he = getelementptr inbounds i8, ptr %.pn.i.i, i64 -8 ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8, !alias.scope !555, !noundef !3 ; 3 uses
  %i.hg = load i64, ptr %.sroa.0.0.i43.i, align 8, !range !6, !alias.scope !555, !noundef !3
  %i.hh = icmp eq i64 %i.hf, %i.hg
  br i1 %i.hh, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs2isvxI5XMib_9quick_xml(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i43.i)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.i

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.hi = getelementptr inbounds i8, ptr %.pn.i.i, i64 -16
  %i.hj = load ptr, ptr %i.hi, align 8, !alias.scope !555, !nonnull !3, !noundef !3
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.hf
  store i64 %.sroa.0.03098.i, ptr %i.hk, align 8
  %i.hl = add i64 %i.hf, 1
  store i64 %i.hl, ptr %i.he, align 8, !alias.scope !555
  %exitcond145.not.i = icmp eq i64 %i.ci, %i.g
  br i1 %exitcond145.not.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit.preheader.i, label %bb.n

bb.ak:                                            ; preds = %.loopexit.split-lp.i
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjEEECskXhPDodhyTq_6mdtest.exit.i: ; preds = %.loopexit.split-lp.i
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1E_12OffsetLookupmEEEB15_ECskXhPDodhyTq_6mdtest.exit.thread: ; preds = %bb.ab, %bb.q, %bb.z
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.al

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit.preheader.i
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %2, i64 noundef %.sroa.04.0, i64 noundef %5)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %2, i64 noundef %5, i64 noundef %.sroa.011.0)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6finishCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(208) %0)
  br label %bb.al

bb.al:                                            ; preds = %bb.c, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1E_12OffsetLookupmEEEB15_ECskXhPDodhyTq_6mdtest.exit.thread, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit25, %bb.b, %bb.a, %.loopexit
  %.sroa.0.0 = phi i1 [ true, %.loopexit ], [ false, %bb.a ], [ false, %bb.b ], [ false, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit ], [ false, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1E_12OffsetLookupmEEEB15_ECskXhPDodhyTq_6mdtest.exit.thread ], [ false, %bb.c ], [ false, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit25 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1j_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2f_B2f_INtNtB4_7compact7CompactB2f_B2f_IB2P_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
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
  br i1 %i.r, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit, label %bb.d

bb.d:                                             ; preds = %.thread
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %5, i64 noundef range(i64 0, 576460752303423488) %.val34, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #14, !noalias !628
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit: ; preds = %.thread
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val31 = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val32 = load i64, ptr %i.t, align 8, !noundef !3 ; 6 uses
  %i.u = icmp ult i64 %2, %.val32
  br i1 %i.u, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit39, label %bb.e

bb.e:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef range(i64 0, 576460752303423488) %.val32, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #14, !noalias !629
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit39: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.val33, i64 %5 ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.val31, i64 %2 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631)
  %i.x = load ptr, ptr %i.v, align 8, !alias.scope !630, !noalias !631, !nonnull !3, !align !9, !noundef !3
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !630, !noalias !631, !noundef !3
  %i.aa = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x, i64 noundef %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12), !noalias !632 ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 1      ; 2 uses
  %i.ac = load ptr, ptr %i.w, align 8, !alias.scope !631, !noalias !630, !nonnull !3, !align !9, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !631, !noalias !630, !noundef !3
  %i.af = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ac, i64 noundef %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12), !noalias !632 ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 1
  %i.ah = icmp eq i64 %i.ab, %i.ag
  br i1 %i.ah, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit39
  %i.ai = extractvalue { ptr, i64 } %i.af, 0
  %i.aj = extractvalue { ptr, i64 } %i.aa, 0
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %i.aj, ptr nonnull readonly %i.ai, i64 %i.ab), !alias.scope !633, !noalias !632
  %i.ak = icmp eq i32 %bcmp.i, 0
  br i1 %i.ak, label %bb.ab, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit39, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit
  %i.al = add i64 %6, -1                          ; 3 uses
  %i.am = icmp ult i64 %i.al, %.val34
  br i1 %i.am, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit40, label %bb.f

bb.f:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef range(i64 0, 576460752303423488) %.val34, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #14, !noalias !634
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit40: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread
  %i.an = add i64 %3, -1                          ; 3 uses
  %i.ao = icmp ult i64 %i.an, %.val32
  br i1 %i.ao, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit41, label %bb.g

bb.g:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit40
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.an, i64 noundef range(i64 0, 576460752303423488) %.val32, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #14, !noalias !635
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit41: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit40
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.val33, i64 %i.al ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val31, i64 %i.an ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637)
  %i.ar = load ptr, ptr %i.ap, align 8, !alias.scope !636, !noalias !637, !nonnull !3, !align !9, !noundef !3
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !636, !noalias !637, !noundef !3
  %i.au = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ar, i64 noundef %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12), !noalias !638 ; 2 uses
  %i.av = extractvalue { ptr, i64 } %i.au, 1      ; 2 uses
  %i.aw = load ptr, ptr %i.aq, align 8, !alias.scope !637, !noalias !636, !nonnull !3, !align !9, !noundef !3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !637, !noalias !636, !noundef !3
  %i.az = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aw, i64 noundef %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12), !noalias !638 ; 2 uses
  %i.ba = extractvalue { ptr, i64 } %i.az, 1
  %i.bb = icmp eq i64 %i.av, %i.ba
  br i1 %i.bb, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit41
  %i.bc = extractvalue { ptr, i64 } %i.az, 0
  %i.bd = extractvalue { ptr, i64 } %i.au, 0
  %bcmp.i43 = tail call i32 @bcmp(ptr nonnull readonly %i.bd, ptr nonnull readonly %i.bc, i64 %i.av), !alias.scope !639, !noalias !638
  %i.be = icmp eq i32 %bcmp.i43, 0
  br i1 %i.be, label %bb.ab, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44.thread: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit41, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bf = tail call { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXhPDodhyTq_6mdtest(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @0) ; 2 uses
  %i.bg = extractvalue { i64, i64 } %i.bf, 0
  %i.bh = extractvalue { i64, i64 } %i.bf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @2, i64 32, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store i64 %i.bg, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.bh, ptr %.sroa.5.0..sroa_idx.i, align 8
  br i1 %i.f, label %.lr.ph.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit.preheader.i

.lr.ph.i:                                         ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44.thread
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.h

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit.preheader.i: ; preds = %bb.z, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44.thread
  br i1 %i.h, label %.lr.ph84.i, label %.loopexit

.lr.ph84.i:                                       ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit.preheader.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.i

.loopexit.i:                                      ; preds = %.noexc30.i, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.m, %bb.l, %bb.j
  %lpad.loopexit57.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.y, %bb.v, %.loopexit61.i, %bb.t, %bb.r
  %lpad.loopexit62.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit57.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit62.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjEEECskXhPDodhyTq_6mdtest.exit.i unwind label %bb.aa

bb.h:                                             ; preds = %bb.z, %.lr.ph.i
  %.sroa.0.03081.i = phi i64 [ %2, %.lr.ph.i ], [ %i.bl, %bb.z ] ; 3 uses
  %.sroa.8.080.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bm, %bb.z ] ; 2 uses
  %i.bl = add nuw i64 %.sroa.0.03081.i, 1
  %i.bm = add nuw i64 %.sroa.8.080.i, 1           ; 2 uses
  %i.bn = and i64 %.sroa.8.080.i, 1023
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.r, label %bb.t

bb.i:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit.i, %.lr.ph84.i
  %.sroa.011.083.i = phi i64 [ %5, %.lr.ph84.i ], [ %i.bp, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit.i ] ; 2 uses
  %.sroa.813.082.i = phi i64 [ 0, %.lr.ph84.i ], [ %i.bq, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit.i ] ; 2 uses
  %i.bp = add nuw i64 %.sroa.011.083.i, 1
  %i.bq = add nuw i64 %.sroa.813.082.i, 1         ; 2 uses
  %i.br = and i64 %.sroa.813.082.i, 1023
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bt = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.i

bb.k:                                             ; preds = %bb.j
  br i1 %i.bt, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_ECskXhPDodhyTq_6mdtest.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %.val33, i64 %.sroa.011.083.i ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !640, !noalias !641, !nonnull !3, !align !9, !noundef !3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !640, !noalias !641, !noundef !3
  %i.by = invoke { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bv, i64 noundef %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12)
          to label %.noexc12.i unwind label %.loopexit.split-lp.loopexit.i ; 2 uses

.invoke.i:                                        ; preds = %.lr.ph.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.val4.i.i, i64 noundef range(i64 0, 576460752303423488) %.val32, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #14
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.noexc12.i:                                       ; preds = %bb.l
  %i.bz = extractvalue { ptr, i64 } %i.by, 0      ; 2 uses
  %i.ca = extractvalue { ptr, i64 } %i.by, 1      ; 4 uses
  %i.cb = icmp samesign eq i64 %i.ca, 0
  br i1 %i.cb, label %.loopexit56.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.noexc12.i
  %xtraiter166 = and i64 %i.ca, 7                 ; 3 uses
  %i.cc = icmp ult i64 %i.ca, 8
  br i1 %i.cc, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter173 = and i64 %i.ca, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.0.i1.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.preheader.new ], [ %i.dn, %.lr.ph.i.i.i ] ; 9 uses
  %i.cd = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.preheader.new ], [ %i.dr, %.lr.ph.i.i.i ]
  %niter174 = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter174.next.7, %.lr.ph.i.i.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 1
  %i.cf = load i8, ptr %.sroa.0.0.i1.i.i.i, align 1, !alias.scope !642, !noalias !643, !noundef !3
  %i.cg = zext i8 %i.cf to i64
  %i.ch = xor i64 %i.cd, %i.cg
  %i.ci = mul i64 %i.ch, 1099511628211
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 2
  %i.ck = load i8, ptr %i.ce, align 1, !alias.scope !642, !noalias !643, !noundef !3
  %i.cl = zext i8 %i.ck to i64
  %i.cm = xor i64 %i.ci, %i.cl
  %i.cn = mul i64 %i.cm, 1099511628211
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 3
  %i.cp = load i8, ptr %i.cj, align 1, !alias.scope !642, !noalias !643, !noundef !3
  %i.cq = zext i8 %i.cp to i64
  %i.cr = xor i64 %i.cn, %i.cq
  %i.cs = mul i64 %i.cr, 1099511628211
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 4
  %i.cu = load i8, ptr %i.co, align 1, !alias.scope !642, !noalias !643, !noundef !3
  %i.cv = zext i8 %i.cu to i64
  %i.cw = xor i64 %i.cs, %i.cv
  %i.cx = mul i64 %i.cw, 1099511628211
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 5
  %i.cz = load i8, ptr %i.ct, align 1, !alias.scope !642, !noalias !643, !noundef !3
  %i.da = zext i8 %i.cz to i64
  %i.db = xor i64 %i.cx, %i.da
  %i.dc = mul i64 %i.db, 1099511628211
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 6
  %i.de = load i8, ptr %i.cy, align 1, !alias.scope !642, !noalias !643, !noundef !3
  %i.df = zext i8 %i.de to i64
  %i.dg = xor i64 %i.dc, %i.df
  %i.dh = mul i64 %i.dg, 1099511628211
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 7
  %i.dj = load i8, ptr %i.dd, align 1, !alias.scope !642, !noalias !643, !noundef !3
  %i.dk = zext i8 %i.dj to i64
  %i.dl = xor i64 %i.dh, %i.dk
  %i.dm = mul i64 %i.dl, 1099511628211
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i, i64 8 ; 2 uses
  %i.do = load i8, ptr %i.di, align 1, !alias.scope !642, !noalias !643, !noundef !3
  %i.dp = zext i8 %i.do to i64
  %i.dq = xor i64 %i.dm, %i.dp
  %i.dr = mul i64 %i.dq, 1099511628211            ; 3 uses
  %niter174.next.7 = add nuw i64 %niter174, 8     ; 2 uses
  %niter174.ncmp.7 = icmp eq i64 %niter174.next.7, %unroll_iter173
  br i1 %niter174.ncmp.7, label %.loopexit56.loopexit.i.unr-lcssa, label %.lr.ph.i.i.i

.loopexit56.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i.i.i
  %lcmp.mod170.not = icmp eq i64 %xtraiter166, 0
  br i1 %lcmp.mod170.not, label %.loopexit56.loopexit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit56.loopexit.i.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.sroa.0.0.i1.i.i.i.epil.init = phi ptr [ %i.bz, %.lr.ph.i.i.i.preheader ], [ %i.dn, %.loopexit56.loopexit.i.unr-lcssa ]
  %.epil.init169 = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.preheader ], [ %i.dr, %.loopexit56.loopexit.i.unr-lcssa ]
  %lcmp.mod172 = icmp ne i64 %xtraiter166, 0
  call void @llvm.assume(i1 %lcmp.mod172)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.sroa.0.0.i1.i.i.i.epil = phi ptr [ %i.dt, %.lr.ph.i.i.i.epil ], [ %.sroa.0.0.i1.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %i.ds = phi i64 [ %i.dx, %.lr.ph.i.i.i.epil ], [ %.epil.init169, %.lr.ph.i.i.i.epil.preheader ]
  %epil.iter167 = phi i64 [ %epil.iter167.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i.i.epil, i64 1
  %i.du = load i8, ptr %.sroa.0.0.i1.i.i.i.epil, align 1, !alias.scope !642, !noalias !643, !noundef !3
  %i.dv = zext i8 %i.du to i64
  %i.dw = xor i64 %i.ds, %i.dv
  %i.dx = mul i64 %i.dw, 1099511628211            ; 2 uses
  %epil.iter167.next = add i64 %epil.iter167, 1   ; 2 uses
  %epil.iter167.cmp.not = icmp eq i64 %epil.iter167.next, %xtraiter166
  br i1 %epil.iter167.cmp.not, label %.loopexit56.loopexit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !588

.loopexit56.loopexit.i:                           ; preds = %.lr.ph.i.i.i.epil, %.loopexit56.loopexit.i.unr-lcssa
  %.lcssa = phi i64 [ %i.dr, %.loopexit56.loopexit.i.unr-lcssa ], [ %i.dx, %.lr.ph.i.i.i.epil ]
  %i.dy = xor i64 %.lcssa, 255
  %i.dz = mul i64 %i.dy, 1099511628211
  br label %.loopexit56.i

.loopexit56.i:                                    ; preds = %.loopexit56.loopexit.i, %.noexc12.i
  %.promoted.i.i.i.i = phi i64 [ -5808391946409677970, %.noexc12.i ], [ %i.dz, %.loopexit56.loopexit.i ] ; 2 uses
  store i64 %.promoted.i.i.i.i, ptr %i.c, align 8
  %i.ea = load i64, ptr %i.bj, align 8, !alias.scope !644, !noalias !645, !noundef !3
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit.i, label %bb.m

bb.m:                                             ; preds = %.loopexit56.i
  %i.ec = invoke noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRyECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc25.i unwind label %.loopexit.split-lp.loopexit.i ; 2 uses

.noexc25.i:                                       ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !646)
  call void @llvm.experimental.noalias.scope.decl(metadata !647)
  %i.ed = lshr i64 %i.ec, 57
  %i.ee = trunc nuw nsw i64 %i.ed to i8
  %i.ef = load i64, ptr %i.bk, align 8, !alias.scope !648, !noalias !649, !noundef !3 ; 2 uses
  %i.eg = load ptr, ptr %i.d, align 8, !alias.scope !648, !noalias !649, !nonnull !3, !noundef !3 ; 2 uses
  %i.eh = insertelement <16 x i8> poison, i8 %i.ee, i64 0
  %i.ei = shufflevector <16 x i8> %i.eh, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.noexc25.i
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.noexc25.i ], [ %i.ez, %bb.p ]
  %.pn.i.i.i.i = phi i64 [ %i.ec, %.noexc25.i ], [ %i.fa, %bb.p ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.ef ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.ej, align 1, !noalias !650 ; 2 uses
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
  %.val2.i.i.i.i = load i64, ptr %i.es, align 8, !noalias !651, !noundef !3
  %i.et = icmp eq i64 %.promoted.i.i.i.i, %.val2.i.i.i.i
  br i1 %i.et, label %bb.q, label %bb.o, !prof !4

._crit_edge.i.i.i:                                ; preds = %bb.o, %bb.n
  %i.eu = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.ev = bitcast <16 x i1> %i.eu to i16
  %i.ew = icmp eq i16 %i.ev, 0
  br i1 %i.ew, label %bb.p, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit.i, !prof !5

bb.o:                                             ; preds = %.lr.ph.i.i24.i
  %i.ex = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.ey = and i16 %i.ex, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.ey, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i24.i

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %i.ez = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.fa = add i64 %.sroa.01.0.i.i.i.i, %i.ez
  br label %bb.n

bb.q:                                             ; preds = %.lr.ph.i.i24.i
  %i.fb = getelementptr inbounds i8, ptr %i.er, i64 -16
  %i.fc = load ptr, ptr %i.fb, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %i.er, i64 -8
  %i.fe = load i64, ptr %i.fd, align 8, !noundef !3 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.fe, 3
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.idx.i
  %.not.i28.i = icmp eq i64 %i.fe, 0
  br i1 %.not.i28.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0CskXhPDodhyTq_6mdtest.exit.backedge.i.i
  %i.fg = phi ptr [ %i.fh, %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0CskXhPDodhyTq_6mdtest.exit.backedge.i.i ], [ %i.fc, %bb.q ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 2 uses
  %.val4.i.i = load i64, ptr %i.fg, align 8, !noalias !652, !noundef !3 ; 3 uses
  %i.fi = icmp ult i64 %.val4.i.i, %.val32
  br i1 %i.fi, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit.i.i.i, label %.invoke.i

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit.i.i.i: ; preds = %.lr.ph.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !653)
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %i.fj = load ptr, ptr %i.bu, align 8, !alias.scope !653, !noalias !655, !nonnull !3, !align !9, !noundef !3
  %i.fk = load i64, ptr %i.bw, align 8, !alias.scope !653, !noalias !655, !noundef !3
  %i.fl = invoke { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fj, i64 noundef %i.fk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12)
          to label %.noexc30.i unwind label %.loopexit.i ; 2 uses

.noexc30.i:                                       ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit.i.i.i
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %.val31, i64 %.val4.i.i ; 2 uses
  %i.fn = extractvalue { ptr, i64 } %i.fl, 1      ; 2 uses
  %i.fo = load ptr, ptr %i.fm, align 8, !alias.scope !654, !noalias !656, !nonnull !3, !align !9, !noundef !3
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !654, !noalias !656, !noundef !3
  %i.fr = invoke { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fo, i64 noundef %i.fq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12)
          to label %.noexc31.i unwind label %.loopexit.i ; 2 uses

.noexc31.i:                                       ; preds = %.noexc30.i
  %i.fs = extractvalue { ptr, i64 } %i.fr, 1
  %i.ft = icmp eq i64 %i.fn, %i.fs
  br i1 %i.ft, label %.split.i.i, label %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0CskXhPDodhyTq_6mdtest.exit.backedge.i.i

.split.i.i:                                       ; preds = %.noexc31.i
  %i.fu = extractvalue { ptr, i64 } %i.fr, 0
  %i.fv = extractvalue { ptr, i64 } %i.fl, 0
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %i.fv, ptr nonnull readonly %i.fu, i64 %i.fn), !alias.scope !657, !noalias !658
  %i.fw = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.fw, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1I_5utils10UniqueItemINtNtB1K_4text12TextDiffSideeEEEB2J_E0ECskXhPDodhyTq_6mdtest.exit.i, label %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0CskXhPDodhyTq_6mdtest.exit.backedge.i.i

_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0CskXhPDodhyTq_6mdtest.exit.backedge.i.i: ; preds = %.split.i.i, %.noexc31.i
  %.not7.i.i = icmp eq ptr %i.fh, %i.ff
  br i1 %.not7.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit.i, label %.lr.ph.i.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1I_5utils10UniqueItemINtNtB1K_4text12TextDiffSideeEEEB2J_E0ECskXhPDodhyTq_6mdtest.exit.i: ; preds = %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_ECskXhPDodhyTq_6mdtest.exit.thread

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit.i: ; preds = %._crit_edge.i.i.i, %_RNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB6_5utils10UniqueItemINtNtB8_4text12TextDiffSideeEEEB17_E0CskXhPDodhyTq_6mdtest.exit.backedge.i.i, %bb.q, %.loopexit56.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %exitcond104.not.i = icmp eq i64 %i.bq, %i.i
  br i1 %exitcond104.not.i, label %.loopexit, label %bb.i

bb.r:                                             ; preds = %bb.h
  %i.fx = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.s:                                             ; preds = %bb.r
  br i1 %i.fx, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_ECskXhPDodhyTq_6mdtest.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.h
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %.val31, i64 %.sroa.0.03081.i ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !alias.scope !659, !noalias !660, !nonnull !3, !align !9, !noundef !3
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !alias.scope !659, !noalias !660, !noundef !3
  %i.gc = invoke { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fz, i64 noundef %i.gb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 2 uses

.noexc.i:                                         ; preds = %bb.t
  %i.gd = extractvalue { ptr, i64 } %i.gc, 0      ; 2 uses
  %i.ge = extractvalue { ptr, i64 } %i.gc, 1      ; 4 uses
  %i.gf = icmp samesign eq i64 %i.ge, 0
  br i1 %i.gf, label %.loopexit61.i, label %.lr.ph.i.i35.i.preheader

.lr.ph.i.i35.i.preheader:                         ; preds = %.noexc.i
  %xtraiter = and i64 %i.ge, 7                    ; 3 uses
  %i.gg = icmp ult i64 %i.ge, 8
  br i1 %i.gg, label %.lr.ph.i.i35.i.epil.preheader, label %.lr.ph.i.i35.i.preheader.new

.lr.ph.i.i35.i.preheader.new:                     ; preds = %.lr.ph.i.i35.i.preheader
  %unroll_iter = and i64 %i.ge, -8
  br label %.lr.ph.i.i35.i

.lr.ph.i.i35.i:                                   ; preds = %.lr.ph.i.i35.i, %.lr.ph.i.i35.i.preheader.new
  %.sroa.0.0.i1.i.i36.i = phi ptr [ %i.gd, %.lr.ph.i.i35.i.preheader.new ], [ %i.hr, %.lr.ph.i.i35.i ] ; 9 uses
  %i.gh = phi i64 [ -3750763034362895579, %.lr.ph.i.i35.i.preheader.new ], [ %i.hv, %.lr.ph.i.i35.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i35.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i35.i ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i36.i, i64 1
  %i.gj = load i8, ptr %.sroa.0.0.i1.i.i36.i, align 1, !alias.scope !661, !noalias !662, !noundef !3
  %i.gk = zext i8 %i.gj to i64
  %i.gl = xor i64 %i.gh, %i.gk
  %i.gm = mul i64 %i.gl, 1099511628211
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i36.i, i64 2
  %i.go = load i8, ptr %i.gi, align 1, !alias.scope !661, !noalias !662, !noundef !3
  %i.gp = zext i8 %i.go to i64
  %i.gq = xor i64 %i.gm, %i.gp
  %i.gr = mul i64 %i.gq, 1099511628211
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i36.i, i64 3
  %i.gt = load i8, ptr %i.gn, align 1, !alias.scope !661, !noalias !662, !noundef !3
  %i.gu = zext i8 %i.gt to i64
  %i.gv = xor i64 %i.gr, %i.gu
  %i.gw = mul i64 %i.gv, 1099511628211
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i36.i, i64 4
  %i.gy = load i8, ptr %i.gs, align 1, !alias.scope !661, !noalias !662, !noundef !3
  %i.gz = zext i8 %i.gy to i64
  %i.ha = xor i64 %i.gw, %i.gz
  %i.hb = mul i64 %i.ha, 1099511628211
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i36.i, i64 5
  %i.hd = load i8, ptr %i.gx, align 1, !alias.scope !661, !noalias !662, !noundef !3
  %i.he = zext i8 %i.hd to i64
  %i.hf = xor i64 %i.hb, %i.he
  %i.hg = mul i64 %i.hf, 1099511628211
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i36.i, i64 6
  %i.hi = load i8, ptr %i.hc, align 1, !alias.scope !661, !noalias !662, !noundef !3
  %i.hj = zext i8 %i.hi to i64
  %i.hk = xor i64 %i.hg, %i.hj
  %i.hl = mul i64 %i.hk, 1099511628211
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i36.i, i64 7
  %i.hn = load i8, ptr %i.hh, align 1, !alias.scope !661, !noalias !662, !noundef !3
  %i.ho = zext i8 %i.hn to i64
  %i.hp = xor i64 %i.hl, %i.ho
  %i.hq = mul i64 %i.hp, 1099511628211
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i36.i, i64 8 ; 2 uses
  %i.hs = load i8, ptr %i.hm, align 1, !alias.scope !661, !noalias !662, !noundef !3
  %i.ht = zext i8 %i.hs to i64
  %i.hu = xor i64 %i.hq, %i.ht
  %i.hv = mul i64 %i.hu, 1099511628211            ; 3 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit61.loopexit.i.unr-lcssa, label %.lr.ph.i.i35.i

.loopexit61.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i.i35.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit61.loopexit.i, label %.lr.ph.i.i35.i.epil.preheader

.lr.ph.i.i35.i.epil.preheader:                    ; preds = %.loopexit61.loopexit.i.unr-lcssa, %.lr.ph.i.i35.i.preheader
  %.sroa.0.0.i1.i.i36.i.epil.init = phi ptr [ %i.gd, %.lr.ph.i.i35.i.preheader ], [ %i.hr, %.loopexit61.loopexit.i.unr-lcssa ]
  %.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.i.i35.i.preheader ], [ %i.hv, %.loopexit61.loopexit.i.unr-lcssa ]
  %lcmp.mod165 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod165)
  br label %.lr.ph.i.i35.i.epil

.lr.ph.i.i35.i.epil:                              ; preds = %.lr.ph.i.i35.i.epil, %.lr.ph.i.i35.i.epil.preheader
  %.sroa.0.0.i1.i.i36.i.epil = phi ptr [ %i.hx, %.lr.ph.i.i35.i.epil ], [ %.sroa.0.0.i1.i.i36.i.epil.init, %.lr.ph.i.i35.i.epil.preheader ] ; 2 uses
  %i.hw = phi i64 [ %i.ib, %.lr.ph.i.i35.i.epil ], [ %.epil.init, %.lr.ph.i.i35.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i35.i.epil ], [ 0, %.lr.ph.i.i35.i.epil.preheader ]
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i36.i.epil, i64 1
  %i.hy = load i8, ptr %.sroa.0.0.i1.i.i36.i.epil, align 1, !alias.scope !661, !noalias !662, !noundef !3
  %i.hz = zext i8 %i.hy to i64
  %i.ia = xor i64 %i.hw, %i.hz
  %i.ib = mul i64 %i.ia, 1099511628211            ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit61.loopexit.i, label %.lr.ph.i.i35.i.epil, !llvm.loop !623

.loopexit61.loopexit.i:                           ; preds = %.lr.ph.i.i35.i.epil, %.loopexit61.loopexit.i.unr-lcssa
  %.lcssa160 = phi i64 [ %i.hv, %.loopexit61.loopexit.i.unr-lcssa ], [ %i.ib, %.lr.ph.i.i35.i.epil ]
  %i.ic = xor i64 %.lcssa160, 255
  %i.id = mul i64 %i.ic, 1099511628211
  br label %.loopexit61.i

.loopexit61.i:                                    ; preds = %.loopexit61.loopexit.i, %.noexc.i
  %.promoted.i.i.i37.i = phi i64 [ -5808391946409677970, %.noexc.i ], [ %i.id, %.loopexit61.loopexit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE11rustc_entryCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d, i64 noundef %.promoted.i.i.i37.i)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.u:                                             ; preds = %.loopexit61.i
  %i.ie = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not10.i = icmp eq ptr %i.ie, null
  br i1 %.not10.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.426.0.copyload.i = load i64, ptr %.sroa.426.0..sroa_idx.i, align 8
  %.sroa.527.0.copyload.i = load i64, ptr %.sroa.527.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !663
  store i64 %.sroa.527.0.copyload.i, ptr %i.a, align 8, !noalias !663
  store i64 0, ptr %i.bi, align 8, !noalias !663
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !663
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !663
  %i.if = invoke noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEE14insert_no_growCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ie, i64 noundef %.sroa.426.0.copyload.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.noexc41.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc41.i:                                       ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !663
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ig = load ptr, ptr %.sroa.426.0..sroa_idx.i, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.noexc41.i
  %.pn.i.i = phi ptr [ %i.if, %.noexc41.i ], [ %i.ig, %bb.w ] ; 3 uses
  %.sroa.0.0.i40.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -24 ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %.pn.i.i, i64 -8 ; 2 uses
  %i.ii = load i64, ptr %i.ih, align 8, !alias.scope !664, !noundef !3 ; 3 uses
  %i.ij = load i64, ptr %.sroa.0.0.i40.i, align 8, !range !6, !alias.scope !664, !noundef !3
  %i.ik = icmp eq i64 %i.ii, %i.ij
  br i1 %i.ik, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs2isvxI5XMib_9quick_xml(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i40.i)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.il = getelementptr inbounds i8, ptr %.pn.i.i, i64 -16
  %i.im = load ptr, ptr %i.il, align 8, !alias.scope !664, !nonnull !3, !noundef !3
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.ii
  store i64 %.sroa.0.03081.i, ptr %i.in, align 8
  %i.io = add i64 %i.ii, 1
  store i64 %i.io, ptr %i.ih, align 8, !alias.scope !664
  %exitcond101.not.i = icmp eq i64 %i.bm, %i.g
  br i1 %exitcond101.not.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit.preheader.i, label %bb.h

bb.aa:                                            ; preds = %.loopexit.split-lp.i
  %i.ip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapyINtNtCscdodAO9FK5_5alloc3vec3VecjEEECskXhPDodhyTq_6mdtest.exit.i: ; preds = %.loopexit.split-lp.i
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_ECskXhPDodhyTq_6mdtest.exit.thread: ; preds = %bb.s, %bb.k, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1I_5utils10UniqueItemINtNtB1K_4text12TextDiffSideeEEEB2J_E0ECskXhPDodhyTq_6mdtest.exit.i
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ab

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXhPDodhyTq_6mdtest.exit.preheader.i
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %2, i64 noundef %.sroa.04.0, i64 noundef %5)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %2, i64 noundef %5, i64 noundef %.sroa.011.0)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6finishCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(208) %0)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.c, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_ECskXhPDodhyTq_6mdtest.exit.thread, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44, %bb.b, %bb.a, %.loopexit
  %.sroa.0.0 = phi i1 [ true, %.loopexit ], [ false, %bb.a ], [ false, %bb.b ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit ], [ false, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight15has_common_itemINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB15_ECskXhPDodhyTq_6mdtest.exit.thread ], [ false, %bb.c ], [ false, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit44 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3zipINtNtNtB8_5slice4iter4IterNtNtNtCs45bxiIjzMqg_5salsa5table4memo13MemoEntryTypeEINtBQ_7IterMutNtB1f_9MemoEntryEECskXhPDodhyTq_6mdtest(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !667)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !667
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8, !noalias !667
  store ptr %3, ptr %i.a, align 8, !noalias !667
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.d, align 8, !noalias !667
  %i.e = call noundef i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCs45bxiIjzMqg_5salsa5table4memo13MemoEntryTypeENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b), !noalias !667
  %i.f = call noundef i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutNtNtNtCs45bxiIjzMqg_5salsa5table4memo9MemoEntryENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !noalias !667
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.e)
  store ptr %1, ptr %0, align 8, !alias.scope !667
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8, !alias.scope !667
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8, !alias.scope !667
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.i, align 8, !alias.scope !667
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8, !alias.scope !667
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.0.i.i, ptr %i.k, align 8, !alias.scope !667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.a, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %0, i64 range(i64 0, -9223372036854775808) %3)
  %i.a = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.c, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %i.a = sub nuw nsw i64 %1, %3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %i.b, i64 range(i64 0, -9223372036854775808) %3)
  %i.c = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownjINtB2_10EquivalentjE10equivalentCskXhPDodhyTq_6mdtest(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !noundef !3
  %.val1 = load i64, ptr %1, align 8, !noundef !3
  %i.a = icmp eq i64 %.val, %.val1
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCscdodAO9FK5_5alloc3vec6spliceINtB5_6SpliceNtNtNtCs4NRVxsYgnAr_4core3str4iter5BytesENtNtNtBW_3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !672, !nonnull !3, !noundef !3 ; 2 uses
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !672 ; 3 uses
  %.not5.i = icmp eq ptr %.promoted.i, %i.d
  br i1 %.not5.i, label %_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainhENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBT_3ops9try_traitINtB1W_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBL_8for_each4callhINvNtBT_3mem4drophEE0E0B2h_ECskXhPDodhyTq_6mdtest.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %.promoted6.i = ptrtoaddr ptr %.promoted.i to i64
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = sub i64 %i.e, %.promoted6.i
  %scevgep.i = getelementptr i8, ptr %.promoted.i, i64 %i.f
  store ptr %scevgep.i, ptr %0, align 8, !alias.scope !672
  br label %_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainhENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBT_3ops9try_traitINtB1W_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBL_8for_each4callhINvNtBT_3mem4drophEE0E0B2h_ECskXhPDodhyTq_6mdtest.exit

_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainhENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBT_3ops9try_traitINtB1W_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBL_8for_each4callhINvNtBT_3mem4drophEE0E0B2h_ECskXhPDodhyTq_6mdtest.exit: ; preds = %bb.a, %.lr.ph.preheader.i
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !noundef !3
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainhENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBT_3ops9try_traitINtB1W_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBL_8for_each4callhINvNtBT_3mem4drophEE0E0B2h_ECskXhPDodhyTq_6mdtest.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhQNtNtNtCs4NRVxsYgnAr_4core3str4iter5BytesE11spec_extendCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
  br label %bb.d

bb.c:                                             ; preds = %_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainhENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBT_3ops9try_traitINtB1W_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBL_8for_each4callhINvNtBT_3mem4drophEE0E0B2h_ECskXhPDodhyTq_6mdtest.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.n = tail call noundef zeroext i1 @_RINvMs2_NtNtCscdodAO9FK5_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs4NRVxsYgnAr_4core3str4iter5BytesECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m)
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c, %bb.i, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  %.val = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val17 = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %.not = icmp eq ptr %.val17, %.val
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = ptrtoint ptr %.val to i64
  %i.q = ptrtoint ptr %.val17 to i64
  %i.r = sub nuw i64 %i.q, %i.p
  tail call void @_RNvMs2_NtNtCscdodAO9FK5_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.r)
  %i.s = tail call noundef zeroext i1 @_RINvMs2_NtNtCscdodAO9FK5_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs4NRVxsYgnAr_4core3str4iter5BytesECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m)
  br i1 %i.s, label %bb.h, label %bb.d

bb.g:                                             ; preds = %bb.k, %bb.j
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterhENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEECskXhPDodhyTq_6mdtest.exit unwind label %bb.l

bb.h:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VechEINtB2_12SpecFromIterhQNtNtNtCs4NRVxsYgnAr_4core3str4iter5BytesE9from_iterCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m)
  %.sroa.09.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.511.0.copyload = load i64, ptr %.sroa.511.0..sroa_idx, align 8 ; 4 uses
  %i.u = icmp sgt i64 %.sroa.511.0.copyload, -1
  call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.410.0.copyload, i64 %.sroa.511.0.copyload
  store ptr %.sroa.410.0.copyload, ptr %i.b, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.09.0.copyload, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.410.0.copyload, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.v, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not16 = icmp eq i64 %.sroa.511.0.copyload, 0
  br i1 %.not16, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.k, %bb.h
  call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterhENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvMs2_NtNtCscdodAO9FK5_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %.sroa.511.0.copyload)
          to label %bb.k unwind label %bb.g

bb.k:                                             ; preds = %bb.j
  %i.z = invoke noundef zeroext i1 @_RINvMs2_NtNtCscdodAO9FK5_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.i unwind label %bb.g       ; 0 uses

bb.l:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEECskXhPDodhyTq_6mdtest.exit: ; preds = %bb.g
  resume { ptr, i32 } %i.t
end_hunk_0
