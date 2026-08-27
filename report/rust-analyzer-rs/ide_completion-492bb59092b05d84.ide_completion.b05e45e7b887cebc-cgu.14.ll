Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_completion-492bb59092b05d84.ide_completion.b05e45e7b887cebc-cgu.14?download=true
inline.NumInlined: 930
inline.NumDeleted: 472
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECsf8NQSppxkmK_14ide_completion:bb.a
  %i.g = phi i8 [ %i.f, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %bb.m ] ; 4 uses
  %.sroa.58.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.58.0..sroa_idx.i.i.i.i.i.i, align 1, !noalias !735 ; 2 uses
  %.sroa.710.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.710.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !735 ; 10 uses
  %.sroa.811.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.811.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !735 ; 10 uses
  %.sroa.912.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.912.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !735 ; 4 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !735 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !756
  call void @_RNvXsj_NtCscAsMj0W7j8b_3std4pathNtB5_10ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d), !noalias !761
  %i.h = load i8, ptr %i.a, align 8, !range !755, !noalias !756, !noundef !18 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.h, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsf8NQSppxkmK_14ide_completion.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.45.0.copyload.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !noalias !756 ; 2 uses
  %.sroa.67.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !756 ; 10 uses
  %.sroa.78.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.78.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !756 ; 5 uses
  %.sroa.89.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.89.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !756 ; 4 uses
  %.sroa.910.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.910.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !756 ; 2 uses
  %i.i = icmp samesign ugt i8 %i.g, 5
  %i.j = zext nneg i8 %i.g to i64
  %i.k = add nsw i64 %i.j, -5
  %i.l = select i1 %i.i, i64 %i.k, i64 0          ; 2 uses
  %i.m = icmp samesign ult i8 %i.h, 6             ; 2 uses
  %i.n = zext nneg i8 %i.h to i64
  %i.o = add nsw i64 %i.n, -5
  %i.p = select i1 %i.m, i64 0, i64 %i.o
  %i.q = icmp eq i64 %i.l, %i.p
  br i1 %i.q, label %bb.d, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsf8NQSppxkmK_14ide_completion.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  switch i64 %i.l, label %bb.m [
    i64 0, label %bb.e
    i64 4, label %bb.l
  ]

bb.e:                                             ; preds = %bb.d
  br i1 %i.m, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.r = icmp eq i8 %i.g, %i.h
  br i1 %i.r, label %bb.g, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsf8NQSppxkmK_14ide_completion.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  switch i8 %i.g, label %default.unreachable [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %.split31.i.i.i.i.i.i.i.i
    i8 3, label %bb.j
    i8 4, label %bb.k
    i8 5, label %.split29.i.i.i.i.i.i.i.i
  ]

default.unreachable:                              ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.s = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.s, label %.split27.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsf8NQSppxkmK_14ide_completion.exit.i.i.i

.split27.i.i.i.i.i.i.i.i:                         ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i), !alias.scope !762, !noalias !766
  %bcmp.i.i.i.i.i.i.fr.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.t = icmp eq i32 %bcmp.i.i.i.i.i.i.fr.i.i.i.i.i.i.i.i, 0
  br i1 %i.t, label %bb.m, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsf8NQSppxkmK_14ide_completion.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.u = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.u, label %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsRNtNtNtCscAsMj0W7j8b_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsf8NQSppxkmK_14ide_completion.exit27.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsf8NQSppxkmK_14ide_completion.exit.i.i.i

_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsRNtNtNtCscAsMj0W7j8b_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsf8NQSppxkmK_14ide_completion.exit27.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i26.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i), !alias.scope !779, !noalias !766
  %i.v = icmp eq i32 %bcmp.i.i26.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.w = icmp eq i64 %.sroa.10.0.copyload.i.i.i.i.i.i, %.sroa.910.0.copyload.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCscAsMj0W7j8b_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB20_E0E0Csf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsf8NQSppxkmK_14ide_completion.exit.i.i.i

.split31.i.i.i.i.i.i.i.i:                         ; preds = %bb.g
  %i.x = icmp eq i8 %.sroa.58.0.copyload.i.i.i.i.i.i, %.sroa.45.0.copyload.i.i.i.i.i.i.i.i
  %cond.fr32.i.i.i.i.i.i.i.i = freeze i1 %i.x
  br i1 %cond.fr32.i.i.i.i.i.i.i.i, label %bb.m, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsf8NQSppxkmK_14ide_completion.exit.i.i.i

bb.j:                                             ; preds = %bb.g
  %i.y = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.y, label %.split33.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsf8NQSppxkmK_14ide_completion.exit.i.i.i

.split33.i.i.i.i.i.i.i.i:                         ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i29.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i), !alias.scope !783, !noalias !766
  %bcmp.i.i29.i.i.i.i.fr.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i29.i.i.i.i.i.i.i.i.i.i.i.i
  %i.z = icmp eq i32 %bcmp.i.i29.i.i.i.i.fr.i.i.i.i.i.i.i.i, 0
  br i1 %i.z, label %bb.m, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsf8NQSppxkmK_14ide_completion.exit.i.i.i

bb.k:                                             ; preds = %bb.g
  %i.aa = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.aa, label %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsRNtNtNtCscAsMj0W7j8b_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsf8NQSppxkmK_14ide_completion.exit33.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsf8NQSppxkmK_14ide_completion.exit.i.i.i

_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsRNtNtNtCscAsMj0W7j8b_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsf8NQSppxkmK_14ide_completion.exit33.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i32.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i), !alias.scope !787, !noalias !766
  %i.ab = icmp eq i32 %bcmp.i.i32.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.ac = icmp eq i64 %.sroa.10.0.copyload.i.i.i.i.i.i, %.sroa.910.0.copyload.i.i.i.i.i.i.i.i
  %or.cond6.i.i.i.i.i.i.i.i.i = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond6.i.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsf8NQSppxkmK_14ide_completion.exit.i.i.i

.split29.i.i.i.i.i.i.i.i:                         ; preds = %bb.g
  %i.ad = icmp eq i8 %.sroa.58.0.copyload.i.i.i.i.i.i, %.sroa.45.0.copyload.i.i.i.i.i.i.i.i
  %cond.fr30.i.i.i.i.i.i.i.i = freeze i1 %i.ad
  br i1 %cond.fr30.i.i.i.i.i.i.i.i, label %bb.m, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsf8NQSppxkmK_14ide_completion.exit.i.i.i

.split.i.i.i.i.i.i.i.i:                           ; preds = %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsRNtNtNtCscAsMj0W7j8b_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsf8NQSppxkmK_14ide_completion.exit33.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.89.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.912.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i38.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.912.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.89.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.10.0.copyload.i.i.i.i.i.i), !alias.scope !791, !noalias !766
  %bcmp.i.i38.i.i.i.i.fr.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i38.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ae = icmp eq i32 %bcmp.i.i38.i.i.i.i.fr.i.i.i.i.i.i.i.i, 0
  br i1 %i.ae, label %bb.m, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsf8NQSppxkmK_14ide_completion.exit.i.i.i

bb.l:                                             ; preds = %bb.d
  %i.af = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.af, label %.split35.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsf8NQSppxkmK_14ide_completion.exit.i.i.i

.split35.i.i.i.i.i.i.i.i:                         ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i), !alias.scope !795, !noalias !799
  %bcmp.i.i.i.i.i.fr.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ag = icmp eq i32 %bcmp.i.i.i.i.i.fr.i.i.i.i.i.i.i.i, 0
  br i1 %i.ag, label %bb.m, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsf8NQSppxkmK_14ide_completion.exit.i.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCscAsMj0W7j8b_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB20_E0E0Csf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsRNtNtNtCscAsMj0W7j8b_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsf8NQSppxkmK_14ide_completion.exit27.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.89.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.912.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i35.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.912.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.89.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.10.0.copyload.i.i.i.i.i.i), !alias.scope !800, !noalias !766
  %bcmp.i.i35.i.i.i.i.fr.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i35.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ah = icmp eq i32 %bcmp.i.i35.i.i.i.i.fr.i.i.i.i.i.i.i.i, 0
  br i1 %i.ah, label %bb.m, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsf8NQSppxkmK_14ide_completion.exit.i.i.i

bb.m:                                             ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCscAsMj0W7j8b_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB20_E0E0Csf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i.i.i.i, %.split35.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i, %.split29.i.i.i.i.i.i.i.i, %.split33.i.i.i.i.i.i.i.i, %.split31.i.i.i.i.i.i.i.i, %.split27.i.i.i.i.i.i.i.i, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !735
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !735
  call void @_RNvXsj_NtCscAsMj0W7j8b_3std4pathNtB5_10ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e)
  %i.ai = load i8, ptr %i.b, align 8, !range !755, !noalias !735, !noundef !18 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ai, -1
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.b

_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsf8NQSppxkmK_14ide_completion.exit.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCscAsMj0W7j8b_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB20_E0E0Csf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i.i.i.i, %.split35.i.i.i.i.i.i.i.i, %bb.l, %.split.i.i.i.i.i.i.i.i, %.split29.i.i.i.i.i.i.i.i, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsRNtNtNtCscAsMj0W7j8b_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsf8NQSppxkmK_14ide_completion.exit33.i.i.i.i.i.i.i.i.i.i.i.i, %bb.k, %.split33.i.i.i.i.i.i.i.i, %bb.j, %.split31.i.i.i.i.i.i.i.i, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsRNtNtNtCscAsMj0W7j8b_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsf8NQSppxkmK_14ide_completion.exit27.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i, %.split27.i.i.i.i.i.i.i.i, %bb.h, %bb.f, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !735
  br label %_RINvXNtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorINtNtNtB7_8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsEINtB3_10SpecIterEqBN_E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareNtB1g_9ComponentB31_NCINvYBN_B2z_2eqBN_E0E0ECsf8NQSppxkmK_14ide_completion.exit

.loopexit.i.i.i:                                  ; preds = %bb.m, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !735
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !804
  call void @_RNvXsj_NtCscAsMj0W7j8b_3std4pathNtB5_10ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
  %i.aj = load i8, ptr %i.c, align 8, !range !755, !noalias !804, !noundef !18
  %.not4.i.not.i.i = icmp eq i8 %i.aj, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !804
  br label %_RINvXNtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorINtNtNtB7_8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsEINtB3_10SpecIterEqBN_E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareNtB1g_9ComponentB31_NCINvYBN_B2z_2eqBN_E0E0ECsf8NQSppxkmK_14ide_completion.exit

_RINvXNtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorINtNtNtB7_8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsEINtB3_10SpecIterEqBN_E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareNtB1g_9ComponentB31_NCINvYBN_B2z_2eqBN_E0E0ECsf8NQSppxkmK_14ide_completion.exit: ; preds = %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsf8NQSppxkmK_14ide_completion.exit.i.i.i, %.loopexit.i.i.i
  %.sroa.0.0.i.i.i = phi i1 [ %.not4.i.not.i.i, %.loopexit.i.i.i ], [ false, %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsf8NQSppxkmK_14ide_completion.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret i1 %.sroa.0.0.i.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_(ptr nofree readonly captures(none) %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val = load ptr, ptr %.0.val, align 8, !nonnull !18, !align !477, !noundef !18 ; 2 uses
  %i.a = getelementptr i8, ptr %.0.val, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !18, !align !477, !noundef !18 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !808)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noalias !810, !nonnull !18, !noundef !18
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !810, !noundef !18
  %i.f = tail call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1), !noalias !808 ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !noalias !810, !nonnull !18, !noundef !18
  %i.h = load i64, ptr %i.d, align 8, !noalias !810, !noundef !18
  %i.i = tail call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1) ; 2 uses
  %i.j = tail call i8 @llvm.ucmp.i8.i64(i64 %i.f, i64 %i.i)
  %i.k = icmp eq i64 %i.f, %i.i
  br i1 %i.k, label %bb.b, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0B7_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !814)
  %i.n = load i8, ptr %i.l, align 8, !range !816, !alias.scope !817, !noalias !818, !noundef !18 ; 3 uses
  %2 = zext nneg i8 %i.n to i64
  %i.o = load i8, ptr %i.m, align 8, !range !816, !alias.scope !818, !noalias !817, !noundef !18 ; 2 uses
  %3 = zext nneg i8 %i.o to i64
  %i.p = tail call i8 @llvm.scmp.i8.i64(i64 %2, i64 %3)
  %i.q = icmp eq i8 %i.n, %i.o
  br i1 %i.q, label %bb.c, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.c:                                             ; preds = %bb.b
  switch i8 %i.n, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i [
    i8 1, label %bb.d
    i8 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !817, !noalias !818, !noundef !18
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !818, !noalias !817, !noundef !18
  %i.v = tail call i8 @llvm.ucmp.i8.i8(i8 %i.s, i8 %i.u)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.x = load i32, ptr %i.w, align 4, !range !819, !alias.scope !817, !noalias !818, !noundef !18 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.z = load i32, ptr %i.y, align 4, !range !819, !alias.scope !818, !noalias !817, !noundef !18 ; 2 uses
  %i.aa = tail call i8 @llvm.ucmp.i8.i32(i32 %i.x, i32 %i.z)
  %i.ab = icmp eq i32 %i.x, %i.z
  br i1 %i.ab, label %bb.f, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !alias.scope !817, !noalias !818, !noundef !18
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !alias.scope !818, !noalias !817, !noundef !18
  %i.ag = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ad, i32 %i.af)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i8 [ %i.p, %bb.b ], [ %i.v, %bb.d ], [ %i.ag, %bb.f ], [ %i.aa, %bb.e ] ; 2 uses
  %i.ah = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.ah, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0B7_.exit

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !823)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !825, !noalias !828, !noundef !18 ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, 1                   ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !alias.scope !825, !noalias !828, !nonnull !18
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !825, !noalias !828
  %.sink11.i.i.i = select i1 %i.ak, ptr %i.al, ptr %0
  %.sink10.i.i.i = select i1 %i.ak, i64 %i.an, i64 %i.aj ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !830, !noalias !833, !noundef !18 ; 2 uses
  %i.aq = icmp ugt i64 %i.ap, 1                   ; 2 uses
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !830, !noalias !833, !nonnull !18
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !830, !noalias !833
  %.sink11.i1.i.i = select i1 %i.aq, ptr %i.ar, ptr %1
  %.sink10.i2.i.i = select i1 %i.aq, i64 %i.at, i64 %i.ap ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !838)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843)
  %..i.i.i.i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i) ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %..i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.au = add nuw nsw i64 %.sroa.01.019.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.au, %..i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.g, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i
  %i.av = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i)
  br label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0B7_.exit

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.aw = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i, i64 0)
  br label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0B7_.exit

.lr.ph.i.i.i.i:                                   ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i, %bb.g
  %.sroa.01.019.i.i.i.i = phi i64 [ %i.au, %bb.g ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i, i64 %.sroa.01.019.i.i.i.i
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i, i64 %.sroa.01.019.i.i.i.i
  %.val15.i.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !845, !noalias !846, !nonnull !18, !noundef !18 ; 2 uses
  %.val16.i.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !847, !noalias !848, !nonnull !18, !noundef !18 ; 2 uses
  %i.az = ptrtoint ptr %.val15.i.i.i.i to i64
  %i.ba = and i64 %i.az, 1
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr i8, ptr %.val15.i.i.i.i, i64 %i.bb ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !849, !nonnull !18, !noundef !18
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !noalias !849, !noundef !18 ; 2 uses
  %i.bg = ptrtoint ptr %.val16.i.i.i.i to i64
  %i.bh = and i64 %i.bg, 1
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = getelementptr i8, ptr %.val16.i.i.i.i, i64 %i.bi ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !849, !nonnull !18, !noundef !18
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !849, !noundef !18 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.bm)
  %i.bn = tail call i32 @memcmp(ptr nonnull %i.bd, ptr nonnull %i.bk, i64 %spec.store.select.i.i.i.i.i.i), !noalias !849 ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp eq i32 %i.bn, 0
  %i.bq = sub i64 %i.bf, %i.bm
  %spec.select.i.i.i.i.i.i = select i1 %i.bp, i64 %i.bq, i64 %i.bo ; 2 uses
  %i.br = icmp eq i64 %spec.select.i.i.i.i.i.i, 0
  br i1 %i.br, label %bb.g, label %.loopexit.i.i.i.i

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0B7_.exit: ; preds = %bb.a, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i, %._crit_edge.i.i.i.i, %.loopexit.i.i.i.i
  %.sroa.0.0.i = phi i8 [ %i.j, %bb.a ], [ %.sroa.0.0.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i ], [ %i.av, %._crit_edge.i.i.i.i ], [ %i.aw, %.loopexit.i.i.i.i ]
  %i.bs = icmp eq i8 %.sroa.0.0.i, -1
  ret i1 %i.bs
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_(ptr nofree readonly captures(none) %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val = load ptr, ptr %.0.val, align 8, !nonnull !18, !align !477, !noundef !18 ; 2 uses
  %i.a = getelementptr i8, ptr %.0.val, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !18, !align !477, !noundef !18 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noalias !855, !nonnull !18, !noundef !18
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !855, !noundef !18
  %i.f = tail call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1), !noalias !853 ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !noalias !855, !nonnull !18, !noundef !18
  %i.h = load i64, ptr %i.d, align 8, !noalias !855, !noundef !18
  %i.i = tail call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1) ; 2 uses
  %i.j = tail call i8 @llvm.ucmp.i8.i64(i64 %i.f, i64 %i.i)
  %i.k = icmp eq i64 %i.f, %i.i
  br i1 %i.k, label %bb.b, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0B7_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !859)
  %i.n = load i8, ptr %i.l, align 8, !range !816, !alias.scope !861, !noalias !862, !noundef !18 ; 3 uses
  %2 = zext nneg i8 %i.n to i64
  %i.o = load i8, ptr %i.m, align 8, !range !816, !alias.scope !862, !noalias !861, !noundef !18 ; 2 uses
  %3 = zext nneg i8 %i.o to i64
  %i.p = tail call i8 @llvm.scmp.i8.i64(i64 %2, i64 %3)
  %i.q = icmp eq i8 %i.n, %i.o
  br i1 %i.q, label %bb.c, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.c:                                             ; preds = %bb.b
  switch i8 %i.n, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i [
    i8 1, label %bb.d
    i8 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !861, !noalias !862, !noundef !18
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !862, !noalias !861, !noundef !18
  %i.v = tail call i8 @llvm.ucmp.i8.i8(i8 %i.s, i8 %i.u)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.x = load i32, ptr %i.w, align 4, !range !819, !alias.scope !861, !noalias !862, !noundef !18 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.z = load i32, ptr %i.y, align 4, !range !819, !alias.scope !862, !noalias !861, !noundef !18 ; 2 uses
  %i.aa = tail call i8 @llvm.ucmp.i8.i32(i32 %i.x, i32 %i.z)
  %i.ab = icmp eq i32 %i.x, %i.z
  br i1 %i.ab, label %bb.f, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !alias.scope !861, !noalias !862, !noundef !18
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !alias.scope !862, !noalias !861, !noundef !18
  %i.ag = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ad, i32 %i.af)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i8 [ %i.p, %bb.b ], [ %i.v, %bb.d ], [ %i.ag, %bb.f ], [ %i.aa, %bb.e ] ; 2 uses
  %i.ah = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.ah, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0B7_.exit

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !866)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !868, !noalias !871, !noundef !18 ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, 1                   ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !alias.scope !868, !noalias !871, !nonnull !18
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !868, !noalias !871
  %.sink11.i.i.i = select i1 %i.ak, ptr %i.al, ptr %0
  %.sink10.i.i.i = select i1 %i.ak, i64 %i.an, i64 %i.aj ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !873, !noalias !876, !noundef !18 ; 2 uses
  %i.aq = icmp ugt i64 %i.ap, 1                   ; 2 uses
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !873, !noalias !876, !nonnull !18
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !873, !noalias !876
  %.sink11.i1.i.i = select i1 %i.aq, ptr %i.ar, ptr %1
  %.sink10.i2.i.i = select i1 %i.aq, i64 %i.at, i64 %i.ap ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !883)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !886)
  %..i.i.i.i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i) ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %..i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.au = add nuw nsw i64 %.sroa.01.019.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.au, %..i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.g, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i
  %i.av = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i)
  br label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0B7_.exit

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.aw = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i, i64 0)
  br label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0B7_.exit

.lr.ph.i.i.i.i:                                   ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i, %bb.g
  %.sroa.01.019.i.i.i.i = phi i64 [ %i.au, %bb.g ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i, i64 %.sroa.01.019.i.i.i.i
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i, i64 %.sroa.01.019.i.i.i.i
  %.val15.i.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !888, !noalias !889, !nonnull !18, !noundef !18 ; 2 uses
  %.val16.i.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !890, !noalias !891, !nonnull !18, !noundef !18 ; 2 uses
  %i.az = ptrtoint ptr %.val15.i.i.i.i to i64
  %i.ba = and i64 %i.az, 1
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr i8, ptr %.val15.i.i.i.i, i64 %i.bb ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !892, !nonnull !18, !noundef !18
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !noalias !892, !noundef !18 ; 2 uses
  %i.bg = ptrtoint ptr %.val16.i.i.i.i to i64
  %i.bh = and i64 %i.bg, 1
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = getelementptr i8, ptr %.val16.i.i.i.i, i64 %i.bi ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !892, !nonnull !18, !noundef !18
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !892, !noundef !18 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.bm)
  %i.bn = tail call i32 @memcmp(ptr nonnull %i.bd, ptr nonnull %i.bk, i64 %spec.store.select.i.i.i.i.i.i), !noalias !892 ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp eq i32 %i.bn, 0
  %i.bq = sub i64 %i.bf, %i.bm
  %spec.select.i.i.i.i.i.i = select i1 %i.bp, i64 %i.bq, i64 %i.bo ; 2 uses
  %i.br = icmp eq i64 %spec.select.i.i.i.i.i.i, 0
  br i1 %i.br, label %bb.g, label %.loopexit.i.i.i.i

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0B7_.exit: ; preds = %bb.a, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i, %._crit_edge.i.i.i.i, %.loopexit.i.i.i.i
  %.sroa.0.0.i = phi i8 [ %i.j, %bb.a ], [ %.sroa.0.0.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i ], [ %i.av, %._crit_edge.i.i.i.i ], [ %i.aw, %.loopexit.i.i.i.i ]
  %i.bs = icmp eq i8 %.sroa.0.0.i, -1
  ret i1 %i.bs
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_(ptr nofree readonly captures(none) %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val = load ptr, ptr %.0.val, align 8, !nonnull !18, !align !477, !noundef !18 ; 2 uses
  %i.a = getelementptr i8, ptr %.0.val, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !18, !align !477, !noundef !18 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !896)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noalias !898, !nonnull !18, !noundef !18
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !898, !noundef !18
  %i.f = tail call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1), !noalias !896 ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !noalias !898, !nonnull !18, !noundef !18
  %i.h = load i64, ptr %i.d, align 8, !noalias !898, !noundef !18
  %i.i = tail call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1) ; 2 uses
  %i.j = tail call i8 @llvm.ucmp.i8.i64(i64 %i.f, i64 %i.i)
  %i.k = icmp eq i64 %i.f, %i.i
  br i1 %i.k, label %bb.b, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0B7_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  %i.n = load i8, ptr %i.l, align 8, !range !816, !alias.scope !904, !noalias !905, !noundef !18 ; 3 uses
  %2 = zext nneg i8 %i.n to i64
  %i.o = load i8, ptr %i.m, align 8, !range !816, !alias.scope !905, !noalias !904, !noundef !18 ; 2 uses
  %3 = zext nneg i8 %i.o to i64
  %i.p = tail call i8 @llvm.scmp.i8.i64(i64 %2, i64 %3)
  %i.q = icmp eq i8 %i.n, %i.o
  br i1 %i.q, label %bb.c, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.c:                                             ; preds = %bb.b
  switch i8 %i.n, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i [
    i8 1, label %bb.d
    i8 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !904, !noalias !905, !noundef !18
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !905, !noalias !904, !noundef !18
  %i.v = tail call i8 @llvm.ucmp.i8.i8(i8 %i.s, i8 %i.u)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.x = load i32, ptr %i.w, align 4, !range !819, !alias.scope !904, !noalias !905, !noundef !18 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.z = load i32, ptr %i.y, align 4, !range !819, !alias.scope !905, !noalias !904, !noundef !18 ; 2 uses
  %i.aa = tail call i8 @llvm.ucmp.i8.i32(i32 %i.x, i32 %i.z)
  %i.ab = icmp eq i32 %i.x, %i.z
  br i1 %i.ab, label %bb.f, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !alias.scope !904, !noalias !905, !noundef !18
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !alias.scope !905, !noalias !904, !noundef !18
  %i.ag = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ad, i32 %i.af)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i8 [ %i.p, %bb.b ], [ %i.v, %bb.d ], [ %i.ag, %bb.f ], [ %i.aa, %bb.e ] ; 2 uses
  %i.ah = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.ah, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0B7_.exit

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !909)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !911, !noalias !914, !noundef !18 ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, 1                   ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !alias.scope !911, !noalias !914, !nonnull !18
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !911, !noalias !914
  %.sink11.i.i.i = select i1 %i.ak, ptr %i.al, ptr %0
  %.sink10.i.i.i = select i1 %i.ak, i64 %i.an, i64 %i.aj ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !916, !noalias !919, !noundef !18 ; 2 uses
  %i.aq = icmp ugt i64 %i.ap, 1                   ; 2 uses
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !916, !noalias !919, !nonnull !18
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !916, !noalias !919
  %.sink11.i1.i.i = select i1 %i.aq, ptr %i.ar, ptr %1
  %.sink10.i2.i.i = select i1 %i.aq, i64 %i.at, i64 %i.ap ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !929)
  %..i.i.i.i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i) ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %..i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.au = add nuw nsw i64 %.sroa.01.019.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.au, %..i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.g, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i
  %i.av = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i)
  br label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0B7_.exit

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.aw = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i, i64 0)
  br label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0B7_.exit

.lr.ph.i.i.i.i:                                   ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i, %bb.g
  %.sroa.01.019.i.i.i.i = phi i64 [ %i.au, %bb.g ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i, i64 %.sroa.01.019.i.i.i.i
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i, i64 %.sroa.01.019.i.i.i.i
  %.val15.i.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !931, !noalias !932, !nonnull !18, !noundef !18 ; 2 uses
  %.val16.i.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !933, !noalias !934, !nonnull !18, !noundef !18 ; 2 uses
  %i.az = ptrtoint ptr %.val15.i.i.i.i to i64
  %i.ba = and i64 %i.az, 1
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr i8, ptr %.val15.i.i.i.i, i64 %i.bb ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !935, !nonnull !18, !noundef !18
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !noalias !935, !noundef !18 ; 2 uses
  %i.bg = ptrtoint ptr %.val16.i.i.i.i to i64
  %i.bh = and i64 %i.bg, 1
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = getelementptr i8, ptr %.val16.i.i.i.i, i64 %i.bi ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !935, !nonnull !18, !noundef !18
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !935, !noundef !18 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.bm)
  %i.bn = tail call i32 @memcmp(ptr nonnull %i.bd, ptr nonnull %i.bk, i64 %spec.store.select.i.i.i.i.i.i), !noalias !935 ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp eq i32 %i.bn, 0
  %i.bq = sub i64 %i.bf, %i.bm
  %spec.select.i.i.i.i.i.i = select i1 %i.bp, i64 %i.bq, i64 %i.bo ; 2 uses
  %i.br = icmp eq i64 %spec.select.i.i.i.i.i.i, 0
  br i1 %i.br, label %bb.g, label %.loopexit.i.i.i.i

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0B7_.exit: ; preds = %bb.a, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i, %._crit_edge.i.i.i.i, %.loopexit.i.i.i.i
  %.sroa.0.0.i = phi i8 [ %i.j, %bb.a ], [ %.sroa.0.0.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i ], [ %i.av, %._crit_edge.i.i.i.i ], [ %i.aw, %.loopexit.i.i.i.i ]
  %i.bs = icmp eq i8 %.sroa.0.0.i, -1
  ret i1 %i.bs
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0B24_(ptr nonnull captures(address, read_provenance) %.0.val, ptr captures(address, read_provenance) %.0.val1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = tail call noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val) ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %i.f = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val1)
          to label %bb.c unwind label %bb.b       ; 3 uses

bb.b:                                             ; preds = %.noexc9, %bb.e, %bb.d, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion(ptr nonnull %i.e) #37
          to label %bb.j unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = and i64 %i.h, 1                          ; 2 uses
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr i8, ptr %i.e, i64 %i.j     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !18, !noundef !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !18 ; 2 uses
  %i.o = ptrtoint ptr %i.f to i64
  %i.p = and i64 %i.o, 1                          ; 2 uses
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr i8, ptr %i.f, i64 %i.q     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !18, !noundef !18
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noundef !18 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.u)
  %i.v = tail call i32 @memcmp(ptr nonnull %i.l, ptr nonnull %i.s, i64 %spec.store.select.i.i.i) ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.f, i64 -1       ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.x = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCsf8NQSppxkmK_14ide_completion(ptr noundef nonnull %i.w)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.d
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 %i.y ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.z, ptr %i.d, align 8
  %i.aa = load atomic i64, ptr %i.z acquire, align 8
  %i.ab = icmp eq i64 %i.aa, 2
  br i1 %i.ab, label %bb.e, label %.noexc9, !prof !128

bb.e:                                             ; preds = %.noexc
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %.noexc9 unwind label %bb.b

.noexc9:                                          ; preds = %bb.e, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.z, ptr %i.c, align 8
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc10 unwind label %bb.b

.noexc10:                                         ; preds = %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion.exit: ; preds = %.noexc10, %bb.c
  %.not.i.i.i.i11 = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.i11, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion.exit12, label %bb.f

bb.f:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion.exit
  %i.ac = getelementptr i8, ptr %i.e, i64 -1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  %i.ad = call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCsf8NQSppxkmK_14ide_completion(ptr noundef nonnull %i.ac)
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 %i.ae ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.af, ptr %i.b, align 8
  %i.ag = load atomic i64, ptr %i.af acquire, align 8
  %i.ah = icmp eq i64 %i.ag, 2
end_hunk_0
