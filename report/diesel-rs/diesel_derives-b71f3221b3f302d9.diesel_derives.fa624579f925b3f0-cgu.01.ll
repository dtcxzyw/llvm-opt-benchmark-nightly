Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel_derives-b71f3221b3f302d9.diesel_derives.fa624579f925b3f0-cgu.01?download=true
inline.NumInlined: 2716
inline.NumDeleted: 1431
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvYINtNtCshMFl0SviwmK_3syn10punctuated11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backBS_:bb.a
  br i1 %.not.i.i, label %bb.g, label %_RNvXsx_NtCshMFl0SviwmK_3syn10punctuatedINtB5_11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backBY_.exit

bb.g:                                             ; preds = %.thread, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !6494, !noalias !6495, !nonnull !16, !noundef !16 ; 2 uses
  %i.ag = load ptr, ptr %0, align 8, !alias.scope !6494, !noalias !6495, !nonnull !16, !noundef !16
  %i.ah = icmp eq ptr %i.ag, %i.af
  br i1 %i.ah, label %_RNvXsx_NtCshMFl0SviwmK_3syn10punctuatedINtB5_11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backBY_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 -264 ; 2 uses
  store ptr %i.ai, ptr %i.ae, align 8, !alias.scope !6494, !noalias !6495
  br label %_RNvXsx_NtCshMFl0SviwmK_3syn10punctuatedINtB5_11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backBY_.exit

_RNvXsx_NtCshMFl0SviwmK_3syn10punctuatedINtB5_11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backBY_.exit: ; preds = %bb.h, %bb.g, %bb.f, %_RNvYINtNtCshMFl0SviwmK_3syn10punctuated11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byBS_.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvYINtNtCshMFl0SviwmK_3syn10punctuated11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byBS_.exit ], [ %.pre, %bb.f ], [ %i.ai, %bb.h ], [ null, %bb.g ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtCshMFl0SviwmK_3syn10punctuated11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byBS_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCshMFl0SviwmK_3syn10punctuated11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byB23_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !6511, !nonnull !16, !noundef !16
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !6511
  %.promoted11.i.i = load ptr, ptr %i.a, align 8, !alias.scope !6512
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted11.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.promoted.i.i, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsw_NtCshMFl0SviwmK_3syn10punctuatedINtB5_11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextBY_.exit.i.i, label %_RNvXsw_NtCshMFl0SviwmK_3syn10punctuatedINtB5_11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextBY_.exit.thread.i.i

_RNvXsw_NtCshMFl0SviwmK_3syn10punctuatedINtB5_11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextBY_.exit.thread.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 264 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !6511
  br label %bb.d

_RNvXsw_NtCshMFl0SviwmK_3syn10punctuatedINtB5_11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextBY_.exit.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !6513, !noalias !6514
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCshMFl0SviwmK_3syn10punctuated11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byB23_.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsw_NtCshMFl0SviwmK_3syn10punctuatedINtB5_11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextBY_.exit.i.i, %_RNvXsw_NtCshMFl0SviwmK_3syn10punctuatedINtB5_11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextBY_.exit.thread.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsw_NtCshMFl0SviwmK_3syn10punctuatedINtB5_11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextBY_.exit.thread.i.i ], [ null, %_RNvXsw_NtCshMFl0SviwmK_3syn10punctuatedINtB5_11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextBY_.exit.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsw_NtCshMFl0SviwmK_3syn10punctuatedINtB5_11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextBY_.exit.thread.i.i ], [ %i.e, %_RNvXsw_NtCshMFl0SviwmK_3syn10punctuatedINtB5_11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextBY_.exit.i.i ]
  %i.j = add i64 %.sroa.01.0.i.i, -1              ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCshMFl0SviwmK_3syn10punctuated11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byB23_.exit, label %bb.c

_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCshMFl0SviwmK_3syn10punctuated11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byB23_.exit: ; preds = %_RNvXsw_NtCshMFl0SviwmK_3syn10punctuatedINtB5_11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextBY_.exit.i.i, %bb.d, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i, %_RNvXsw_NtCshMFl0SviwmK_3syn10punctuatedINtB5_11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextBY_.exit.i.i ], [ 0, %bb.d ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCshMFl0SviwmK_3syn10punctuated11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3nthBS_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %1, 0
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !6543
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !6544, !nonnull !16, !noundef !16 ; 2 uses
  %.promoted11.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !6545
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted11.i.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ]
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsw_NtCshMFl0SviwmK_3syn10punctuatedINtB5_11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextBY_.exit.i.i.i, label %_RNvXsw_NtCshMFl0SviwmK_3syn10punctuatedINtB5_11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextBY_.exit.thread.i.i.i

_RNvXsw_NtCshMFl0SviwmK_3syn10punctuatedINtB5_11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextBY_.exit.thread.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 264 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !6544
  br label %bb.d

_RNvXsw_NtCshMFl0SviwmK_3syn10punctuatedINtB5_11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextBY_.exit.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !6546, !noalias !6547
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_RNvYINtNtCshMFl0SviwmK_3syn10punctuated11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byBS_.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsw_NtCshMFl0SviwmK_3syn10punctuatedINtB5_11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextBY_.exit.i.i.i, %_RNvXsw_NtCshMFl0SviwmK_3syn10punctuatedINtB5_11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextBY_.exit.thread.i.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsw_NtCshMFl0SviwmK_3syn10punctuatedINtB5_11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextBY_.exit.thread.i.i.i ], [ null, %_RNvXsw_NtCshMFl0SviwmK_3syn10punctuatedINtB5_11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextBY_.exit.i.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsw_NtCshMFl0SviwmK_3syn10punctuatedINtB5_11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextBY_.exit.thread.i.i.i ], [ %i.e, %_RNvXsw_NtCshMFl0SviwmK_3syn10punctuatedINtB5_11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextBY_.exit.i.i.i ] ; 2 uses
  %i.j = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.d, %..loopexit_crit_edge
  %i.l = phi ptr [ %.pre4, %..loopexit_crit_edge ], [ %i.c, %bb.d ]
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.i, %bb.d ] ; 3 uses
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %bb.e, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtCshMFl0SviwmK_3syn5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBU_.exit.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtCshMFl0SviwmK_3syn5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBU_.exit.i: ; preds = %.loopexit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 264
  store ptr %i.o, ptr %0, align 8, !alias.scope !6543
  br label %_RNvYINtNtCshMFl0SviwmK_3syn10punctuated11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byBS_.exit

bb.e:                                             ; preds = %.loopexit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !6548, !noalias !6549, !align !17, !noundef !16
  store ptr null, ptr %i.p, align 8, !alias.scope !6548, !noalias !6549
  br label %_RNvYINtNtCshMFl0SviwmK_3syn10punctuated11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byBS_.exit

_RNvYINtNtCshMFl0SviwmK_3syn10punctuated11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byBS_.exit: ; preds = %_RNvXsw_NtCshMFl0SviwmK_3syn10punctuatedINtB5_11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextBY_.exit.i.i.i, %bb.e, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtCshMFl0SviwmK_3syn5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBU_.exit.i
  %.sroa.0.0 = phi ptr [ %i.m, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtCshMFl0SviwmK_3syn5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBU_.exit.i ], [ %i.q, %bb.e ], [ null, %_RNvXsw_NtCshMFl0SviwmK_3syn10punctuatedINtB5_11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextBY_.exit.i.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCshMFl0SviwmK_3syn10punctuated11PrivateIterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hintBS_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvYNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherNtNtCscI6d9CVNmLh_4core4hash6Hasher11write_usizeCsluMP4ekZjHw_14diesel_derives(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6567)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !6568, !noalias !6569, !noundef !16
  %i.d = add i64 %i.c, 8
  store i64 %i.d, ptr %i.b, align 8, !alias.scope !6568, !noalias !6569
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !6568, !noalias !6569, !noundef !16 ; 5 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sub i64 8, %i.f                          ; 3 uses
  %.sroa.0.0.i.i.i = tail call noundef range(i64 0, 9) i64 @llvm.umin.i64(i64 range(i64 9, 8) %i.h, i64 8) ; 2 uses
  %i.i = icmp ugt i64 %i.h, 3                     ; 3 uses
  %i.j = and i64 %1, 4294967295
  %.sroa.03.0.i.i.i = select i1 %i.i, i64 4, i64 0 ; 4 uses
  %.sroa.0.0.i10.i.i = select i1 %i.i, i64 %i.j, i64 0 ; 2 uses
  %i.k = or disjoint i64 %.sroa.03.0.i.i.i, 1
  %i.l = icmp samesign ult i64 %i.k, %.sroa.0.0.i.i.i
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.03.0.i.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.i, i64 4, i64 0
  %.sroa.03.0.i.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.03.0.i.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel.idx
  %.sroa.015.0.copyload.i.i.i = load i16, ptr %.sroa.03.0.i.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel, align 4, !alias.scope !6570, !noalias !6568
  %i.m = zext i16 %.sroa.015.0.copyload.i.i.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i.i.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i10.i.i
  %i.q = or disjoint i64 %.sroa.03.0.i.i.i, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.1.i.i.i = phi i64 [ %i.q, %bb.c ], [ %.sroa.03.0.i.i.i, %bb.b ] ; 3 uses
  %.sroa.0.1.i.i.i = phi i64 [ %i.p, %bb.c ], [ %.sroa.0.0.i10.i.i, %bb.b ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.03.1.i.i.i, %.sroa.0.0.i.i.i
  br i1 %i.r, label %bb.e, label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.03.1.i.i.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !6570, !noalias !6568, !noundef !16
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i.i.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i.i.i
  br label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i.i

_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.2.i.i.i = phi i64 [ %i.x, %bb.e ], [ %.sroa.0.1.i.i.i, %bb.d ]
  %i.y = shl i64 %i.f, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i.i.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !6568, !noalias !6569, !noundef !16
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8, !alias.scope !6568, !noalias !6569
  %i.ae = icmp ugt i64 %i.f, 8
  br i1 %i.ae, label %22, label %._crit_edge.i.i

bb.f:                                             ; preds = %._crit_edge.i.i, %bb.a
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.a ], [ %i.h, %._crit_edge.i.i ] ; 5 uses
  %i.af = sub nuw nsw i64 8, %.sroa.0.0.i.i       ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, 8
  %i.ai = icmp ult i64 %.sroa.0.0.i.i, %i.ah
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.promoted.i.i = load i64, ptr %0, align 8, !alias.scope !6568, !noalias !6569
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !6568, !noalias !6569
  %.promoted21.i.i = load i64, ptr %2, align 8, !alias.scope !6571, !noalias !6569 ; 3 uses
  %i.al = load i64, ptr %3, align 8, !alias.scope !6571, !noalias !6569
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.0.i.i
  %.sroa.07.0.copyload.i.i = load i64, ptr %4, align 1, !alias.scope !6569, !noalias !6568 ; 2 uses
  %5 = xor i64 %.sroa.07.0.copyload.i.i, %i.ak    ; 3 uses
  %6 = add i64 %.promoted21.i.i, %.promoted.i.i   ; 3 uses
  %i.am = add i64 %5, %i.al                       ; 2 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %.promoted21.i.i, i64 %.promoted21.i.i, i64 13)
  %i.ao = xor i64 %i.an, %6                       ; 3 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 16)
  %i.aq = xor i64 %i.am, %i.ap                    ; 3 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 32)
  %i.as = add i64 %i.am, %i.ao                    ; 3 uses
  %i.at = add i64 %i.aq, %i.ar                    ; 2 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 17)
  %i.av = xor i64 %i.as, %i.au
  %7 = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 21)
  %8 = xor i64 %7, %i.at
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.ax = xor i64 %i.at, %.sroa.07.0.copyload.i.i
  %9 = add nuw nsw i64 %.sroa.0.0.i.i, 8
  store i64 %8, ptr %i.aj, align 8, !alias.scope !6568, !noalias !6569
  store i64 %i.av, ptr %2, align 8, !alias.scope !6571, !noalias !6569
  store i64 %i.aw, ptr %3, align 8, !alias.scope !6571, !noalias !6569
  store i64 %i.ax, ptr %0, align 8, !alias.scope !6568, !noalias !6569
  br label %bb.h

._crit_edge.i.i:                                  ; preds = %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %10 = load i64, ptr %i.ay, align 8, !alias.scope !6568, !noalias !6569, !noundef !16
  %11 = xor i64 %10, %i.ad                        ; 3 uses
  %12 = load i64, ptr %0, align 8, !alias.scope !6572, !noalias !6569, !noundef !16
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted20.i.i = load i64, ptr %13, align 8, !alias.scope !6572, !noalias !6569, !noundef !16 ; 3 uses
  %14 = add i64 %.promoted20.i.i, %12             ; 3 uses
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %16 = load i64, ptr %15, align 8, !alias.scope !6572, !noalias !6569, !noundef !16
  %i.az = add i64 %16, %11                        ; 2 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %.promoted20.i.i, i64 %.promoted20.i.i, i64 13)
  %i.bb = xor i64 %i.ba, %14                      ; 3 uses
  %17 = tail call noundef i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 16)
  %18 = xor i64 %i.az, %17                        ; 3 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 32)
  %i.bd = add i64 %i.az, %i.bb                    ; 3 uses
  %19 = add i64 %18, %i.bc                        ; 2 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 17)
  %i.bf = xor i64 %i.bd, %i.be
  store i64 %i.bf, ptr %13, align 8, !alias.scope !6572, !noalias !6569
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 21)
  %i.bh = xor i64 %i.bg, %19
  store i64 %i.bh, ptr %i.ay, align 8, !alias.scope !6572, !noalias !6569
  %20 = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 32)
  store i64 %20, ptr %15, align 8, !alias.scope !6572, !noalias !6569
  %21 = xor i64 %19, %i.ad
  store i64 %21, ptr %0, align 8, !alias.scope !6568, !noalias !6569
  br label %bb.f

22:                                               ; preds = %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i.i
  %23 = add i64 %i.f, 8
  br label %_RNvXs2_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_13DefaultHasherNtNtCscI6d9CVNmLh_4core4hash6Hasher5write.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.1.lcssa.i.i = phi i64 [ %9, %bb.g ], [ %.sroa.0.0.i.i, %bb.f ] ; 3 uses
  %i.bi = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.1.lcssa.i.i
  %.sroa.014.0.copyload.i17.i.i = load i32, ptr %i.bj, align 1, !alias.scope !6573, !noalias !6568
  %i.bk = zext i32 %.sroa.014.0.copyload.i17.i.i to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.03.0.i11.i.i = phi i64 [ 4, %bb.i ], [ 0, %bb.h ] ; 5 uses
  %.sroa.0.0.i12.i.i = phi i64 [ %i.bk, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.bl = or disjoint i64 %.sroa.03.0.i11.i.i, 1
  %i.bm = icmp samesign ult i64 %i.bl, %i.ag
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr i8, ptr %i.a, i64 %.sroa.0.1.lcssa.i.i
  %i.bo = getelementptr i8, ptr %i.bn, i64 %.sroa.03.0.i11.i.i
  %.sroa.015.0.copyload.i16.i.i = load i16, ptr %i.bo, align 1, !alias.scope !6573, !noalias !6568
  %i.bp = zext i16 %.sroa.015.0.copyload.i16.i.i to i64
  %i.bq = shl nuw nsw i64 %.sroa.03.0.i11.i.i, 3
  %i.br = shl nuw nsw i64 %i.bp, %i.bq
  %i.bs = or i64 %i.br, %.sroa.0.0.i12.i.i
  %i.bt = or disjoint i64 %.sroa.03.0.i11.i.i, 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.03.1.i13.i.i = phi i64 [ %i.bt, %bb.k ], [ %.sroa.03.0.i11.i.i, %bb.j ] ; 3 uses
  %.sroa.0.1.i14.i.i = phi i64 [ %i.bs, %bb.k ], [ %.sroa.0.0.i12.i.i, %bb.j ] ; 2 uses
  %i.bu = icmp samesign ult i64 %.sroa.03.1.i13.i.i, %i.ag
  br i1 %i.bu, label %bb.m, label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit18.i.i

bb.m:                                             ; preds = %bb.l
  %i.bv = add nsw i64 %.sroa.03.1.i13.i.i, %.sroa.0.1.lcssa.i.i ; 2 uses
  %i.bw = icmp ult i64 %i.bv, 8
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bv
  %i.by = load i8, ptr %i.bx, align 1, !alias.scope !6573, !noalias !6568, !noundef !16
  %i.bz = zext i8 %i.by to i64
  %i.ca = shl nuw nsw i64 %.sroa.03.1.i13.i.i, 3
  %i.cb = shl nuw nsw i64 %i.bz, %i.ca
  %i.cc = or i64 %i.cb, %.sroa.0.1.i14.i.i
  br label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit18.i.i

_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit18.i.i: ; preds = %bb.m, %bb.l
  %.sroa.0.2.i15.i.i = phi i64 [ %i.cc, %bb.m ], [ %.sroa.0.1.i14.i.i, %bb.l ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i15.i.i, ptr %i.cd, align 8, !alias.scope !6568, !noalias !6569
  br label %_RNvXs2_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_13DefaultHasherNtNtCscI6d9CVNmLh_4core4hash6Hasher5write.exit

_RNvXs2_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_13DefaultHasherNtNtCscI6d9CVNmLh_4core4hash6Hasher5write.exit: ; preds = %22, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit18.i.i
  %storemerge.i.i = phi i64 [ %23, %22 ], [ %i.ag, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit18.i.i ]
  store i64 %storemerge.i.i, ptr %i.e, align 8, !alias.scope !6568, !noalias !6569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #13

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtBK_8generics12GenericParamNtNtBK_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtCs50gxqRnCXtk_10proc_macro9TokenTreeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtCsf5uYjtxkodL_11proc_macro25IdentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCshMFl0SviwmK_3syn4attr9AttributeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCshMFl0SviwmK_3syn4expr3ArmENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCshMFl0SviwmK_3syn4stmt4StmtENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsluMP4ekZjHw_14diesel_derives5attrs10StructAttrENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsluMP4ekZjHw_14diesel_derives5attrs9FieldAttrENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsluMP4ekZjHw_14diesel_derives10deprecated13postgres_type4AttrENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsluMP4ekZjHw_14diesel_derives7parsers10belongs_to4AttrENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsluMP4ekZjHw_14diesel_derives7parsers10mysql_type4AttrENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsluMP4ekZjHw_14diesel_derives7parsers11sqlite_type4AttrENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsluMP4ekZjHw_14diesel_derives7parsers13postgres_type4AttrENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtCsf5uYjtxkodL_11proc_macro25IdentNtNtCshMFl0SviwmK_3syn5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCshMFl0SviwmK_3syn2ty4TypeNtNtBK_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCshMFl0SviwmK_3syn2ty8TypePathNtNtBK_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCshMFl0SviwmK_3syn2ty9BareFnArgNtNtBK_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCshMFl0SviwmK_3syn3pat3PatNtNtBK_5token2OrEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCshMFl0SviwmK_3syn3pat3PatNtNtBK_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCshMFl0SviwmK_3syn3pat8FieldPatNtNtBK_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCshMFl0SviwmK_3syn4attr4MetaNtNtBK_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCshMFl0SviwmK_3syn4data5FieldNtNtBK_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCshMFl0SviwmK_3syn4data7VariantNtNtBK_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCshMFl0SviwmK_3syn4expr10FieldValueNtNtBK_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCshMFl0SviwmK_3syn4expr4ExprNtNtBK_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtBK_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtBK_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtBK_5token7PathSepEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCshMFl0SviwmK_3syn4path15GenericArgumentNtNtBK_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCshMFl0SviwmK_3syn4path4PathNtNtBK_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCshMFl0SviwmK_3syn8generics12GenericParamNtNtBK_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCshMFl0SviwmK_3syn8generics13CapturedParamNtNtBK_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCshMFl0SviwmK_3syn8generics14TypeParamBoundNtNtBK_5token4PlusEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCshMFl0SviwmK_3syn8generics14WherePredicateNtNtBK_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCshMFl0SviwmK_3syn8lifetime8LifetimeNtNtBK_5token4PlusEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtCshMFl0SviwmK_3syn5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCsluMP4ekZjHw_14diesel_derives5attrs10StructAttrNtNtCshMFl0SviwmK_3syn5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCsluMP4ekZjHw_14diesel_derives5attrs9FieldAttrNtNtCshMFl0SviwmK_3syn5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtNtCsluMP4ekZjHw_14diesel_derives10deprecated13postgres_type4AttrNtNtCshMFl0SviwmK_3syn5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBM_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtNtCsluMP4ekZjHw_14diesel_derives7parsers10belongs_to4AttrNtNtCshMFl0SviwmK_3syn5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBM_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtNtCsluMP4ekZjHw_14diesel_derives7parsers10mysql_type4AttrNtNtCshMFl0SviwmK_3syn5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBM_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtNtCsluMP4ekZjHw_14diesel_derives7parsers11sqlite_type4AttrNtNtCshMFl0SviwmK_3syn5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBM_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtNtCsluMP4ekZjHw_14diesel_derives7parsers13postgres_type4AttrNtNtCshMFl0SviwmK_3syn5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBM_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtBR_8generics12GenericParamNtNtBR_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtCs50gxqRnCXtk_10proc_macro9TokenTreeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtCsf5uYjtxkodL_11proc_macro25IdentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCshMFl0SviwmK_3syn4attr9AttributeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCshMFl0SviwmK_3syn4expr3ArmENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCshMFl0SviwmK_3syn4stmt4StmtENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCsluMP4ekZjHw_14diesel_derives5attrs10StructAttrENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCsluMP4ekZjHw_14diesel_derives5attrs9FieldAttrENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCsluMP4ekZjHw_14diesel_derives10deprecated13postgres_type4AttrENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBS_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCsluMP4ekZjHw_14diesel_derives7parsers10belongs_to4AttrENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBS_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCsluMP4ekZjHw_14diesel_derives7parsers10mysql_type4AttrENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBS_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCsluMP4ekZjHw_14diesel_derives7parsers11sqlite_type4AttrENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBS_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCsluMP4ekZjHw_14diesel_derives7parsers13postgres_type4AttrENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBS_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTNtCsf5uYjtxkodL_11proc_macro25IdentNtNtCshMFl0SviwmK_3syn5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

end_hunk_0
