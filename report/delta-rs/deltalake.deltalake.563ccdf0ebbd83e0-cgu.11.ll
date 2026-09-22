Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake.deltalake.563ccdf0ebbd83e0-cgu.11?download=true
inline.NumInlined: 4953
inline.NumDeleted: 1088
begin_hunk_0_@_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake:bb.a
  %i.ay = load i32, ptr %i.ax, align 8, !range !87, !alias.scope !16802, !noalias !16801, !noundef !34
  %.sroa.0.0.shrunk.i.not = icmp eq i32 %i.ay, %i.aw
  br i1 %.sroa.0.0.shrunk.i.not, label %_RNvXs49_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread8, label %_RNvXs49_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXs49_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread: ; preds = %_RNvXs49_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread8, %_RNvXs49_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %.lr.ph15, %.split, %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.f, %bb.j, %bb.i, %bb.d, %bb.c, %.lr.ph, %bb.a
  %i.az = phi i1 [ false, %.lr.ph ], [ true, %bb.a ], [ true, %_RNvXs49_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread8 ], [ false, %_RNvXs49_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %.lr.ph15 ], [ false, %.split ], [ false, %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.f ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.d ], [ false, %bb.c ]
  ret i1 %i.az

_RNvXs49_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread8: ; preds = %bb.h, %bb.g, %_RNvXs49_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %i.ba = add nuw i64 %.sroa.01.014, 1            ; 2 uses
  %exitcond33.not = icmp eq i64 %i.ba, %2
  br i1 %exitcond33.not, label %_RNvXs49_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %.lr.ph15
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit
  %i.b = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.01.06 ; 4 uses
  %i.d = getelementptr inbounds nuw [72 x i8], ptr %1, i64 %.sroa.01.06 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16821)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !16822, !noalias !16823, !noundef !34 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !16823, !noalias !16822, !noundef !34
  %i.i = icmp eq i64 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !16823, !noalias !16822, !nonnull !34, !noundef !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !16822, !noalias !16823, !nonnull !34, !noundef !34
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.m, ptr nonnull %i.k, i64 %i.f), !noalias !16824, !inline_history !16814
  %i.n = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.n, label %bb.d, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.p = load i32, ptr %i.o, align 8, !range !87, !alias.scope !16822, !noalias !16823, !noundef !34 ; 2 uses
  %.not.i.i = icmp eq i32 %i.p, 1114112
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.r = load i32, ptr %i.q, align 8, !range !87, !alias.scope !16823, !noalias !16822, !noundef !34 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.d
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.d
  %i.t = icmp eq i32 %i.r, 1114112
  br i1 %i.t, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit: ; preds = %.split.i, %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !16825, !noalias !16826, !nonnull !34, !noundef !34
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !16826, !noalias !16825, !nonnull !34, !noundef !34
  %i.y = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.x) #43, !noalias !16827, !inline_history !16815
  br i1 %i.y, label %bb.b, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.b, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %.split.i, %bb.c, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %bb.c ], [ false, %.split.i ], [ false, %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ false, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast15RaisErrorOptionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #17 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.06 = phi i64 [ %i.d, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.06
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.06
  %.val = load i8, ptr %i.b, align 1, !range !84, !noundef !34
  %.val5 = load i8, ptr %i.c, align 1, !range !84, !noundef !34
  %.not = icmp eq i8 %.val, %.val5                ; 2 uses
  %i.d = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp ne i64 %i.d, %2
  %or.cond.not = select i1 %.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.not, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast15SequenceOptionsINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef captures(address, read_provenance) %0, ptr noundef captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.e, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [336 x i8], ptr %0, i64 %.sroa.01.05
  %i.c = getelementptr inbounds nuw [336 x i8], ptr %1, i64 %.sroa.01.05
  %i.d = tail call fastcc noundef zeroext i1 @_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast15SequenceOptionsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(336) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(336) %i.c) #43 ; 2 uses
  %i.e = add nuw i64 %.sroa.01.05, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.e, %2
  %or.cond = select i1 %i.d, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.lcssa.ph = xor i1 %i.d, true
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.lcssa.ph, %._crit_edge.loopexit ]
  ret i1 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast15TransactionModeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #17 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.08 = phi i64 [ %i.h, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.08 ; 2 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.08 ; 2 uses
  %.val = load i8, ptr %i.b, align 1, !range !89, !noundef !34
  %i.d = getelementptr i8, ptr %i.b, i64 1
  %.val5 = load i8, ptr %i.d, align 1
  %.val6 = load i8, ptr %i.c, align 1, !range !89, !noundef !34
  %i.e = getelementptr i8, ptr %i.c, i64 1
  %.val7 = load i8, ptr %i.e, align 1
  %i.f = icmp eq i8 %.val, %.val6
  %i.g = icmp eq i8 %.val5, %.val7
  %spec.select.i.not.i.not = select i1 %i.f, i1 %i.g, i1 false ; 2 uses
  %i.h = add nuw i64 %.sroa.01.08, 1              ; 2 uses
  %exitcond.not = icmp ne i64 %i.h, %2
  %or.cond.not = select i1 %spec.select.i.not.i.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %spec.select.i.not.i.not, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #15 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9
  %.sroa.01.017 = phi i64 [ %i.iz, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9 ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.01.017 ; 35 uses
  %i.c = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %.sroa.01.017 ; 35 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16861)
  %i.d = load i8, ptr %i.b, align 8, !range !115, !alias.scope !16862, !noalias !16863, !noundef !34 ; 2 uses
  %i.e = load i8, ptr %i.c, align 8, !range !115, !alias.scope !16863, !noalias !16862, !noundef !34
  %i.f = icmp eq i8 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.b:                                             ; preds = %.lr.ph
  switch i8 %i.d, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9 [
    i8 1, label %bb.c
    i8 8, label %bb.d
    i8 9, label %bb.e
    i8 10, label %bb.f
    i8 12, label %bb.g
    i8 14, label %bb.h
    i8 15, label %bb.i
    i8 18, label %bb.j
    i8 19, label %bb.k
    i8 21, label %bb.l
    i8 22, label %bb.m
    i8 23, label %bb.n
    i8 24, label %bb.o
    i8 26, label %bb.p
    i8 27, label %bb.q
    i8 28, label %bb.r
    i8 29, label %bb.s
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !38, !alias.scope !16862, !noalias !16863, !noundef !34
  %.not36.i.i = icmp eq i64 %i.h, -9223372036854775808 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !38, !alias.scope !16863, !noalias !16862, !noundef !34
  %i.k = icmp eq i64 %i.j, -9223372036854775808   ; 2 uses
  %brmerge.i.i = or i1 %.not36.i.i, %i.k
  %.mux.i.i = and i1 %.not36.i.i, %i.k
  br i1 %brmerge.i.i, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !16862, !noalias !16863, !noundef !34 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !16863, !noalias !16862, !noundef !34
  %i.p = icmp eq i64 %i.m, %i.o
  br i1 %i.p, label %bb.v, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !38, !alias.scope !16862, !noalias !16863, !noundef !34
  %.not33.i.i = icmp eq i64 %i.r, -9223372036854775808 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !38, !alias.scope !16863, !noalias !16862, !noundef !34
  %i.u = icmp eq i64 %i.t, -9223372036854775808   ; 2 uses
  %brmerge54.i.i = or i1 %.not33.i.i, %i.u
  %.mux55.i.i = and i1 %.not33.i.i, %i.u
  br i1 %brmerge54.i.i, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, label %bb.af

bb.f:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.w = load i32, ptr %i.v, align 4, !range !117, !alias.scope !16862, !noalias !16863, !noundef !34
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.y = load i32, ptr %i.x, align 4, !range !117, !alias.scope !16863, !noalias !16862, !noundef !34
  %i.z = icmp eq i32 %i.w, %i.y
  br i1 %i.z, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.g:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !range !89, !alias.scope !16862, !noalias !16863, !noundef !34
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !range !89, !alias.scope !16863, !noalias !16862, !noundef !34
  %i.ae = icmp eq i8 %i.ab, %i.ad
  br i1 %i.ae, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.h:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !16862, !noalias !16863, !noundef !34 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !16863, !noalias !16862, !noundef !34
  %i.aj = icmp eq i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.ah, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.i:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !16862, !noalias !16863, !noundef !34 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !16863, !noalias !16862, !noundef !34
  %i.ao = icmp eq i64 %i.al, %i.an
  br i1 %i.ao, label %bb.ai, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.j:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !range !38, !alias.scope !16862, !noalias !16863, !noundef !34
  %i.ar = icmp ne i64 %i.aq, -9223372036854775808 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.at = load i64, ptr %i.as, align 8, !range !38, !alias.scope !16863, !noalias !16862, !noundef !34
  %i.au = icmp ne i64 %i.at, -9223372036854775808 ; 2 uses
  %i.av = xor i1 %i.ar, %i.au
  br i1 %i.av, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread, label %bb.aj

bb.k:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !16862, !noalias !16863, !noundef !34
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !16863, !noalias !16862, !noundef !34
  %i.ba = icmp eq i64 %i.ax, %i.az
  br i1 %i.ba, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.l:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !range !89, !alias.scope !16862, !noalias !16863, !noundef !34
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !range !89, !alias.scope !16863, !noalias !16862, !noundef !34
  %i.bf = icmp eq i8 %i.bc, %i.be
  br i1 %i.bf, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.m:                                             ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bi = tail call fastcc noundef zeroext i1 @_RNvXsn_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bh) #43
  br i1 %i.bi, label %bb.am, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.n:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !16862, !noalias !16863, !noundef !34 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !16863, !noalias !16862, !noundef !34
  %i.bn = icmp eq i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.ap, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.o:                                             ; preds = %bb.b
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !range !84, !alias.scope !16862, !noalias !16863, !noundef !34 ; 2 uses
  %.not25.i.i = icmp eq i8 %i.bp, 2
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !range !84, !alias.scope !16863, !noalias !16862, !noundef !34 ; 2 uses
  br i1 %.not25.i.i, label %bb.ar, label %bb.aq

bb.p:                                             ; preds = %bb.b
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bt = load i8, ptr %i.bs, align 8, !range !89, !alias.scope !16862, !noalias !16863, !noundef !34
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bv = load i8, ptr %i.bu, align 8, !range !89, !alias.scope !16863, !noalias !16862, !noundef !34
  %i.bw = icmp eq i8 %i.bt, %i.bv
  br i1 %i.bw, label %bb.as, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.q:                                             ; preds = %bb.b
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !16862, !noalias !16863, !noundef !34 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !16863, !noalias !16862, !noundef !34
  %i.cb = icmp eq i64 %i.by, %i.ca
  br i1 %i.cb, label %bb.aw, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.r:                                             ; preds = %bb.b
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ce = tail call fastcc noundef zeroext i1 @_RNvXsn_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cd) #43
  br i1 %i.ce, label %bb.ax, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.s:                                             ; preds = %bb.b
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !range !38, !alias.scope !16862, !noalias !16863, !noundef !34
  %.not.i.i = icmp eq i64 %i.cg, -9223372036854775808 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !range !38, !alias.scope !16863, !noalias !16862, !noundef !34
  %i.cj = icmp eq i64 %i.ci, -9223372036854775808 ; 2 uses
  %brmerge56.i.i = or i1 %.not.i.i, %i.cj
  %.mux57.i.i = and i1 %.not.i.i, %i.cj
  br i1 %brmerge56.i.i, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, label %bb.ba

bb.t:                                             ; preds = %bb.c
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !16862, !noalias !16863, !noundef !34 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !16863, !noalias !16862, !noundef !34
  %i.co = icmp eq i64 %i.cl, %i.cn
  br i1 %i.co, label %bb.u, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !16863, !noalias !16862, !nonnull !34, !noundef !34
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !16862, !noalias !16863, !nonnull !34, !noundef !34
  %bcmp38.i.i = tail call i32 @bcmp(ptr nonnull %i.cs, ptr nonnull %i.cq, i64 %i.cl), !noalias !16864
  %i.ct = icmp eq i32 %bcmp38.i.i, 0
  br i1 %i.ct, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.v:                                             ; preds = %bb.d
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !alias.scope !16863, !noalias !16862, !nonnull !34, !noundef !34
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !16862, !noalias !16863, !nonnull !34, !noundef !34
  %i.cy = icmp eq i64 %i.m, 0
  br i1 %i.cy, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %bb.v, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread7.i
  %.sroa.01.015.i = phi i64 [ %i.fq, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread7.i ], [ 0, %bb.v ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.cx, i64 %.sroa.01.015.i ; 7 uses
  %i.da = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %.sroa.01.015.i ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16865), !noalias !16864
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16866), !noalias !16864
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16867), !noalias !16864
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16868), !noalias !16864
  %i.db = load i32, ptr %i.cz, align 8, !range !116, !alias.scope !16869, !noalias !16870, !noundef !34 ; 2 uses
  %i.dc = load i32, ptr %i.da, align 8, !range !116, !alias.scope !16871, !noalias !16872, !noundef !34
  %i.dd = icmp eq i32 %i.db, %i.dc
  br i1 %i.dd, label %bb.w, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.w:                                             ; preds = %.lr.ph.i5
  switch i32 %i.db, label %default.unreachable [
    i32 1, label %.split.i
    i32 2, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i
    i32 3, label %bb.x
    i32 4, label %bb.ab
    i32 0, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread7.i
  ]

default.unreachable:                              ; preds = %bb.w
  unreachable

.split.i:                                         ; preds = %bb.w
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.df = load i32, ptr %i.de, align 4, !range !117, !alias.scope !16869, !noalias !16870, !noundef !34
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !range !117, !alias.scope !16871, !noalias !16872, !noundef !34
  %i.di = icmp eq i32 %i.df, %i.dh
  br i1 %i.di, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread7.i, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !16869, !noalias !16870, !noundef !34 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !16871, !noalias !16872, !noundef !34
  %i.dn = icmp eq i64 %i.dk, %i.dm
  br i1 %i.dn, label %bb.y, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.do = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !alias.scope !16871, !noalias !16872, !nonnull !34, !noundef !34
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !alias.scope !16869, !noalias !16870, !nonnull !34, !noundef !34
  %i.ds = icmp eq i64 %i.dk, 0
  br i1 %i.ds, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread7.i, label %.lr.ph.i.i.i.i

bb.z:                                             ; preds = %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  %i.dt = add nuw i64 %.sroa.01.06.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.dt, %i.dk
  br i1 %exitcond.not.i.i.i.i, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread7.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.y, %bb.z
  %.sroa.01.06.i.i.i.i = phi i64 [ %i.dt, %bb.z ], [ 0, %bb.y ] ; 3 uses
  %i.du = getelementptr inbounds nuw [64 x i8], ptr %i.dr, i64 %.sroa.01.06.i.i.i.i ; 3 uses
  %i.dv = getelementptr inbounds nuw [64 x i8], ptr %i.dp, i64 %.sroa.01.06.i.i.i.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16873), !noalias !16864
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16874), !noalias !16864
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16875), !noalias !16864
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16876), !noalias !16864
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !16877, !noalias !16878, !noundef !34 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !16879, !noalias !16880, !noundef !34
  %i.ea = icmp eq i64 %i.dx, %i.dz
  br i1 %i.ea, label %bb.aa, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !alias.scope !16879, !noalias !16880, !nonnull !34, !noundef !34
  %i.ed = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !alias.scope !16877, !noalias !16878, !nonnull !34, !noundef !34
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ee, ptr nonnull %i.ec, i64 %i.dx), !noalias !16881
  %i.ef = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ef, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i.i, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %bb.aa
  %i.eg = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  %i.eh = load i32, ptr %i.eg, align 8, !range !87, !alias.scope !16877, !noalias !16878, !noundef !34
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dv, i64 56
  %i.ej = load i32, ptr %i.ei, align 8, !range !87, !alias.scope !16879, !noalias !16880, !noundef !34
  %.sroa.0.0.shrunk.i.i.not.i.i.i.i = icmp eq i32 %i.ej, %i.eh
  br i1 %.sroa.0.0.shrunk.i.i.not.i.i.i.i, label %bb.z, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.ab:                                            ; preds = %bb.w
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !16869, !noalias !16870, !noundef !34 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.en = load i64, ptr %i.em, align 8, !alias.scope !16871, !noalias !16872, !noundef !34
  %i.eo = icmp eq i64 %i.el, %i.en
  br i1 %i.eo, label %bb.ac, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.ep = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !16871, !noalias !16872, !nonnull !34, !noundef !34
  %i.er = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !16869, !noalias !16870, !nonnull !34, !noundef !34
  %i.et = icmp eq i64 %i.el, 0
  br i1 %i.et, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread7.i, label %.lr.ph.i4.i.i.i

bb.ad:                                            ; preds = %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i8.i.i.i
  %i.eu = add nuw i64 %.sroa.01.06.i5.i.i.i, 1    ; 2 uses
  %exitcond.not.i10.i.i.i = icmp eq i64 %i.eu, %i.el
  br i1 %exitcond.not.i10.i.i.i, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread7.i, label %.lr.ph.i4.i.i.i

.lr.ph.i4.i.i.i:                                  ; preds = %bb.ac, %bb.ad
  %.sroa.01.06.i5.i.i.i = phi i64 [ %i.eu, %bb.ad ], [ 0, %bb.ac ] ; 3 uses
  %i.ev = getelementptr inbounds nuw [64 x i8], ptr %i.es, i64 %.sroa.01.06.i5.i.i.i ; 3 uses
  %i.ew = getelementptr inbounds nuw [64 x i8], ptr %i.eq, i64 %.sroa.01.06.i5.i.i.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16882), !noalias !16864
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16883), !noalias !16864
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16884), !noalias !16864
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16885), !noalias !16864
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !alias.scope !16886, !noalias !16887, !noundef !34 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !16888, !noalias !16889, !noundef !34
  %i.fb = icmp eq i64 %i.ey, %i.fa
  br i1 %i.fb, label %bb.ae, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.ae:                                            ; preds = %.lr.ph.i4.i.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !alias.scope !16888, !noalias !16889, !nonnull !34, !noundef !34
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !alias.scope !16886, !noalias !16887, !nonnull !34, !noundef !34
  %bcmp.i.i.i7.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ff, ptr nonnull %i.fd, i64 %i.ey), !noalias !16890
  %i.fg = icmp eq i32 %bcmp.i.i.i7.i.i.i, 0
  br i1 %i.fg, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i8.i.i.i, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i8.i.i.i: ; preds = %bb.ae
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ev, i64 56
  %i.fi = load i32, ptr %i.fh, align 8, !range !87, !alias.scope !16886, !noalias !16887, !noundef !34
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ew, i64 56
  %i.fk = load i32, ptr %i.fj, align 8, !range !87, !alias.scope !16888, !noalias !16889, !noundef !34
  %.sroa.0.0.shrunk.i.i.not.i9.i.i.i = icmp eq i32 %i.fk, %i.fi
  br i1 %.sroa.0.0.shrunk.i.i.not.i9.i.i.i, label %bb.ad, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.w
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !range !117, !alias.scope !16869, !noalias !16870, !noundef !34
  %i.fn = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.fo = load i32, ptr %i.fn, align 4, !range !117, !alias.scope !16871, !noalias !16872, !noundef !34
  %i.fp = icmp eq i32 %i.fm, %i.fo
  br i1 %i.fp, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread7.i, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread7.i: ; preds = %bb.ad, %bb.z, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i, %bb.ac, %bb.y, %.split.i, %bb.w
  %i.fq = add nuw i64 %.sroa.01.015.i, 1          ; 2 uses
  %exitcond.not.i6 = icmp eq i64 %i.fq, %i.m
  br i1 %exitcond.not.i6, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9, label %.lr.ph.i5

bb.af:                                            ; preds = %bb.e
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.fs = load i64, ptr %i.fr, align 8, !alias.scope !16862, !noalias !16863, !noundef !34 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.fu = load i64, ptr %i.ft, align 8, !alias.scope !16863, !noalias !16862, !noundef !34
  %i.fv = icmp eq i64 %i.fs, %i.fu
  br i1 %i.fv, label %bb.ag, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.fw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8, !alias.scope !16863, !noalias !16862, !nonnull !34, !noundef !34
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !alias.scope !16862, !noalias !16863, !nonnull !34, !noundef !34
  %bcmp35.i.i = tail call i32 @bcmp(ptr nonnull %i.fz, ptr nonnull %i.fx, i64 %i.fs), !noalias !16864
  %i.ga = icmp eq i32 %bcmp35.i.i, 0
  br i1 %i.ga, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.ah:                                            ; preds = %bb.h
  %i.gb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !alias.scope !16863, !noalias !16862, !nonnull !34, !noundef !34
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !alias.scope !16862, !noalias !16863, !nonnull !34, !noundef !34
  %bcmp32.i.i = tail call i32 @bcmp(ptr nonnull %i.ge, ptr nonnull %i.gc, i64 %i.ag), !noalias !16864
  %i.gf = icmp eq i32 %bcmp32.i.i, 0
  br i1 %i.gf, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.ai:                                            ; preds = %bb.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !alias.scope !16863, !noalias !16862, !nonnull !34, !noundef !34
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !alias.scope !16862, !noalias !16863, !nonnull !34, !noundef !34
  %bcmp31.i.i = tail call i32 @bcmp(ptr nonnull %i.gj, ptr nonnull %i.gh, i64 %i.al), !noalias !16864
  %i.gk = icmp eq i32 %bcmp31.i.i, 0
  br i1 %i.gk, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.aj:                                            ; preds = %bb.j
  %or.cond.i.i = and i1 %i.ar, %i.au
  br i1 %or.cond.i.i, label %bb.ak, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9

bb.ak:                                            ; preds = %bb.aj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.gm = load i64, ptr %i.gl, align 8, !alias.scope !16862, !noalias !16863, !noundef !34 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !16863, !noalias !16862, !noundef !34
  %i.gp = icmp eq i64 %i.gm, %i.go
  br i1 %i.gp, label %bb.al, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.gq = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !alias.scope !16863, !noalias !16862, !nonnull !34, !noundef !34
  %i.gs = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8, !alias.scope !16862, !noalias !16863, !nonnull !34, !noundef !34
  %bcmp30.i.i = tail call i32 @bcmp(ptr nonnull %i.gt, ptr nonnull %i.gr, i64 %i.gm), !noalias !16864
  %i.gu = icmp eq i32 %bcmp30.i.i, 0
  br i1 %i.gu, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.am:                                            ; preds = %bb.m
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.gw = load i8, ptr %i.gv, align 8, !range !84, !alias.scope !16862, !noalias !16863, !noundef !34 ; 2 uses
  %.not28.i.i = icmp eq i8 %i.gw, 2
  %i.gx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.gy = load i8, ptr %i.gx, align 8, !range !84, !alias.scope !16863, !noalias !16862, !noundef !34 ; 2 uses
  br i1 %.not28.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %3 = icmp eq i8 %i.gw, %i.gy
  br i1 %3, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.ao:                                            ; preds = %bb.am
  %4 = icmp eq i8 %i.gy, 2
  br i1 %4, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.ap:                                            ; preds = %bb.n
  %i.gz = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !alias.scope !16863, !noalias !16862, !nonnull !34, !noundef !34
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !alias.scope !16862, !noalias !16863, !nonnull !34, !noundef !34
  %bcmp27.i.i = tail call i32 @bcmp(ptr nonnull %i.hc, ptr nonnull %i.ha, i64 %i.bk), !noalias !16864
  %i.hd = icmp eq i32 %bcmp27.i.i, 0
  br i1 %i.hd, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.aq:                                            ; preds = %bb.o
  %5 = icmp eq i8 %i.bp, %i.br
  br i1 %5, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.ar:                                            ; preds = %bb.o
  %i.he = icmp eq i8 %i.br, 2
  br i1 %i.he, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.as:                                            ; preds = %bb.p
  %i.hf = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !16862, !noalias !16863, !noundef !34 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.hi = load i64, ptr %i.hh, align 8, !alias.scope !16863, !noalias !16862, !noundef !34
  %i.hj = icmp eq i64 %i.hg, %i.hi
  br i1 %i.hj, label %bb.at, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.at:                                            ; preds = %bb.as
  %i.hk = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8, !alias.scope !16863, !noalias !16862, !nonnull !34, !noundef !34
  %i.hm = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !alias.scope !16862, !noalias !16863, !nonnull !34, !noundef !34
  %i.ho = icmp eq i64 %i.hg, 0
  br i1 %i.ho, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9, label %.lr.ph.i

bb.au:                                            ; preds = %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i
  %i.hp = add nuw i64 %.sroa.01.06.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hp, %i.hg
  br i1 %exitcond.not.i, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.at, %bb.au
  %.sroa.01.06.i = phi i64 [ %i.hp, %bb.au ], [ 0, %bb.at ] ; 3 uses
  %i.hq = getelementptr inbounds nuw [64 x i8], ptr %i.hn, i64 %.sroa.01.06.i ; 3 uses
  %i.hr = getelementptr inbounds nuw [64 x i8], ptr %i.hl, i64 %.sroa.01.06.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16891), !noalias !16864
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16892), !noalias !16864
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16893), !noalias !16864
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16894), !noalias !16864
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.ht = load i64, ptr %i.hs, align 8, !alias.scope !16895, !noalias !16896, !noundef !34 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.hv = load i64, ptr %i.hu, align 8, !alias.scope !16897, !noalias !16898, !noundef !34
  %i.hw = icmp eq i64 %i.ht, %i.hv
  br i1 %i.hw, label %bb.av, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.av:                                            ; preds = %.lr.ph.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !alias.scope !16897, !noalias !16898, !nonnull !34, !noundef !34
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !alias.scope !16895, !noalias !16896, !nonnull !34, !noundef !34
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ia, ptr nonnull %i.hy, i64 %i.ht), !noalias !16899
  %i.ib = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ib, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.av
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hq, i64 56
  %i.id = load i32, ptr %i.ic, align 8, !range !87, !alias.scope !16895, !noalias !16896, !noundef !34
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hr, i64 56
  %i.if = load i32, ptr %i.ie, align 8, !range !87, !alias.scope !16897, !noalias !16898, !noundef !34
  %.sroa.0.0.shrunk.i.i.not.i = icmp eq i32 %i.if, %i.id
  br i1 %.sroa.0.0.shrunk.i.i.not.i, label %bb.au, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.aw:                                            ; preds = %bb.q
  %i.ig = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !alias.scope !16863, !noalias !16862, !nonnull !34, !noundef !34
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8, !alias.scope !16862, !noalias !16863, !nonnull !34, !noundef !34
  %bcmp24.i.i = tail call i32 @bcmp(ptr nonnull %i.ij, ptr nonnull %i.ih, i64 %i.by), !noalias !16864
  %i.ik = icmp eq i32 %bcmp24.i.i, 0
  br i1 %i.ik, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.ax:                                            ; preds = %bb.r
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.im = load i8, ptr %i.il, align 8, !range !84, !alias.scope !16862, !noalias !16863, !noundef !34 ; 2 uses
  %.not22.i.i = icmp eq i8 %i.im, 2
  %i.in = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.io = load i8, ptr %i.in, align 8, !range !84, !alias.scope !16863, !noalias !16862, !noundef !34 ; 2 uses
  br i1 %.not22.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %6 = icmp eq i8 %i.im, %i.io
  br i1 %6, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.az:                                            ; preds = %bb.ax
  %7 = icmp eq i8 %i.io, 2
  br i1 %7, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.ba:                                            ; preds = %bb.s
  %i.ip = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.iq = load i64, ptr %i.ip, align 8, !alias.scope !16862, !noalias !16863, !noundef !34 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.is = load i64, ptr %i.ir, align 8, !alias.scope !16863, !noalias !16862, !noundef !34
  %i.it = icmp eq i64 %i.iq, %i.is
  br i1 %i.it, label %bb.bb, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.bb:                                            ; preds = %bb.ba
  %i.iu = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8, !alias.scope !16863, !noalias !16862, !nonnull !34, !noundef !34
  %i.iw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !alias.scope !16862, !noalias !16863, !nonnull !34, !noundef !34
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.ix, ptr nonnull %i.iv, i64 %i.iq), !noalias !16864
  %i.iy = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.iy, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %bb.e, %bb.s
  %.sroa.0.0.shrunk.i.i = phi i1 [ %.mux55.i.i, %bb.e ], [ %.mux.i.i, %bb.c ], [ %.mux57.i.i, %bb.s ]
  br i1 %.sroa.0.0.shrunk.i.i, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, %.lr.ph, %bb.q, %bb.t, %bb.d, %bb.af, %bb.h, %bb.j, %bb.i, %bb.ba, %bb.m, %bb.ak, %bb.n, %bb.p, %bb.as, %bb.r, %bb.ap, %bb.u, %bb.ao, %bb.aq, %bb.al, %bb.aw, %bb.ai, %bb.ar, %bb.ah, %bb.g, %bb.f, %bb.k, %bb.l, %bb.bb, %bb.ag, %bb.an, %bb.az, %bb.ay, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i, %bb.av, %.lr.ph.i, %bb.x, %.split.i, %bb.ab, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i, %.lr.ph.i5, %bb.ae, %.lr.ph.i4.i.i.i, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i8.i.i.i, %bb.aa, %.lr.ph.i.i.i.i, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %bb.a
  %8 = phi i1 [ true, %bb.a ], [ false, %bb.aa ], [ false, %bb.x ], [ false, %bb.ae ], [ false, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i ], [ false, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ false, %.lr.ph.i.i.i.i ], [ false, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i8.i.i.i ], [ false, %.lr.ph.i4.i.i.i ], [ false, %.lr.ph.i5 ], [ false, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i ], [ false, %bb.ab ], [ false, %.split.i ], [ false, %.lr.ph.i ], [ false, %bb.av ], [ false, %bb.ai ], [ false, %bb.aw ], [ false, %bb.al ], [ false, %bb.aq ], [ false, %bb.ao ], [ false, %bb.u ], [ false, %bb.ap ], [ false, %bb.af ], [ false, %bb.j ], [ false, %bb.ak ], [ false, %bb.p ], [ false, %bb.as ], [ false, %bb.r ], [ false, %bb.n ], [ false, %bb.i ], [ false, %bb.ba ], [ false, %bb.m ], [ false, %bb.h ], [ true, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9 ], [ false, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit ], [ false, %.lr.ph ], [ false, %bb.q ], [ false, %bb.t ], [ false, %bb.d ], [ false, %bb.ay ], [ false, %bb.an ], [ false, %bb.bb ], [ false, %bb.f ], [ false, %bb.ah ], [ false, %bb.g ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.ar ], [ false, %bb.ag ], [ false, %bb.az ]
  ret i1 %8

_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9: ; preds = %bb.au, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread7.i, %bb.ay, %bb.az, %bb.an, %bb.ag, %bb.bb, %bb.l, %bb.k, %bb.f, %bb.g, %bb.ah, %bb.ar, %bb.ai, %bb.aw, %bb.al, %bb.aq, %bb.ao, %bb.u, %bb.ap, %bb.aj, %bb.v, %bb.at, %bb.b, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit
  %i.iz = add nuw i64 %.sroa.01.017, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.iz, %2
  br i1 %exitcond.not, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #16 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit
  %i.b = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.01.06 ; 4 uses
  %i.d = getelementptr inbounds nuw [72 x i8], ptr %1, i64 %.sroa.01.06 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16908)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16909)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.f = load i8, ptr %i.e, align 8, !range !71, !alias.scope !16910, !noalias !16911, !noundef !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.h = load i8, ptr %i.g, align 8, !range !71, !alias.scope !16911, !noalias !16910, !noundef !34
  %i.i = icmp eq i8 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !16910, !noalias !16911, !noundef !34 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !16911, !noalias !16910, !noundef !34
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %bb.d, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !16911, !noalias !16910, !nonnull !34, !noundef !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !16910, !noalias !16911, !nonnull !34, !noundef !34
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.r, ptr nonnull %i.p, i64 %i.k), !noalias !16912
  %i.s = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.s, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.u = load i32, ptr %i.t, align 8, !range !87, !alias.scope !16910, !noalias !16911, !noundef !34
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.w = load i32, ptr %i.v, align 8, !range !87, !alias.scope !16911, !noalias !16910, !noundef !34
  %.sroa.0.0.shrunk.i.i.not = icmp eq i32 %i.w, %i.u
  br i1 %.sroa.0.0.shrunk.i.i.not, label %bb.b, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.b, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, %bb.d, %.lr.ph, %bb.c, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.c ], [ false, %.lr.ph ], [ false, %bb.d ], [ false, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #16 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit
  %i.b = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %.sroa.01.06 ; 6 uses
  %i.d = getelementptr inbounds nuw [128 x i8], ptr %1, i64 %.sroa.01.06 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16922)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !16923, !noalias !16924, !noundef !34 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !16924, !noalias !16923, !noundef !34
  %i.i = icmp eq i64 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !16924, !noalias !16923, !nonnull !34, !noundef !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !16923, !noalias !16924, !nonnull !34, !noundef !34
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.m, ptr nonnull %i.k, i64 %i.f), !noalias !16925
  %i.n = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.n, label %bb.d, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.p = load i32, ptr %i.o, align 8, !range !87, !alias.scope !16923, !noalias !16924, !noundef !34 ; 2 uses
  %.not.i.i = icmp eq i32 %i.p, 1114112
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.r = load i32, ptr %i.q, align 8, !range !87, !alias.scope !16924, !noalias !16923, !noundef !34 ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %bb.g, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i32 %i.r, 1114112
  br i1 %i.t, label %bb.g, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !16923, !noalias !16924, !noundef !34 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !16924, !noalias !16923, !noundef !34
  %i.y = icmp eq i64 %i.v, %i.x
  br i1 %i.y, label %bb.h, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !16924, !noalias !16923, !nonnull !34, !noundef !34
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !16923, !noalias !16924, !nonnull !34, !noundef !34
  %bcmp6.i.i = tail call i32 @bcmp(ptr nonnull %i.ac, ptr nonnull %i.aa, i64 %i.v), !noalias !16925
  %i.ad = icmp eq i32 %bcmp6.i.i, 0
  br i1 %i.ad, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.af = load i32, ptr %i.ae, align 8, !range !87, !alias.scope !16923, !noalias !16924, !noundef !34
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.ah = load i32, ptr %i.ag, align 8, !range !87, !alias.scope !16924, !noalias !16923, !noundef !34
  %.sroa.0.0.shrunk.i.i.not = icmp eq i32 %i.ah, %i.af
  br i1 %.sroa.0.0.shrunk.i.i.not, label %bb.b, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.b, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, %bb.h, %bb.f, %.lr.ph, %bb.c, %bb.e, %bb.g, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.g ], [ false, %bb.e ], [ false, %bb.c ], [ false, %.lr.ph ], [ false, %bb.f ], [ false, %bb.h ], [ false, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast18OperateFunctionArgINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef captures(address, read_provenance) %0, ptr noundef captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvXste_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %.split, %_RNvXste_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %i.b = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvXste_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [456 x i8], ptr %0, i64 %.sroa.01.06 ; 8 uses
  %i.d = getelementptr inbounds nuw [456 x i8], ptr %1, i64 %.sroa.01.06 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16934)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %i.f = load i8, ptr %i.e, align 8, !range !88, !alias.scope !16933, !noalias !16934, !noundef !34 ; 2 uses
  %.not.i = icmp eq i8 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %i.h = load i8, ptr %i.g, align 8, !range !88, !alias.scope !16934, !noalias !16933, !noundef !34 ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.i = icmp eq i8 %i.f, %i.h
  br i1 %i.i, label %bb.e, label %_RNvXste_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.d:                                             ; preds = %.lr.ph
  %i.j = icmp eq i8 %i.h, 3
  br i1 %i.j, label %bb.e, label %_RNvXste_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  %i.l = load i64, ptr %i.k, align 8, !range !38, !alias.scope !16933, !noalias !16934, !noundef !34
  %.not4.i = icmp eq i64 %i.l, -9223372036854775808
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 328
  %i.n = load i64, ptr %i.m, align 8, !range !38, !alias.scope !16934, !noalias !16933, !noundef !34
  %i.o = icmp eq i64 %i.n, -9223372036854775808   ; 2 uses
  br i1 %.not4.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.o, label %_RNvXste_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.o, label %bb.k, label %_RNvXste_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16935)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16936)
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !16937, !noalias !16938, !noundef !34 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 344
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !16938, !noalias !16937, !noundef !34
  %i.t = icmp eq i64 %i.q, %i.s
  br i1 %i.t, label %bb.i, label %_RNvXste_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.i:                                             ; preds = %bb.h
end_hunk_0
