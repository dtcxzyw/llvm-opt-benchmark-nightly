begin_hunk_0
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8956)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8959)
  switch i64 %2, label %thread-pre-split.i [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ]
end_hunk_0
begin_hunk_1
  br label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !alias.scope !8959, !noalias !8956, !noundef !9 ; 2 uses
  switch i8 %i.b, label %bb.e [
    i8 43, label %bb.d
    i8 45, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %3, align 1, !alias.scope !8956, !noalias !8959
  br label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !8959, !noalias !8956
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split.i, %bb.c
  %4 = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.b, %bb.c ]
  %cond.i = icmp eq i8 %4, 43                     ; 2 uses
  %i.c = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %2, %i.c            ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.d = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.d, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.e
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %.loopexit.i, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.h
  %.not52.i = icmp eq i64 %i.g, 0
  br i1 %.not52.i, label %.loopexit.i, label %.preheader56.i.preheader

.loopexit.i:                                      ; preds = %.preheader56.i, %bb.k, %.preheader.i
  %.sroa.042.1.i = phi i64 [ %i.ae, %bb.k ], [ 0, %.preheader.i ], [ %i.r, %.preheader56.i ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.042.1.i, ptr %i.e, align 8, !alias.scope !8956, !noalias !8959
  br label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit
end_hunk_1
begin_hunk_2
  store i8 2, ptr %i.v, align 1, !alias.scope !8956, !noalias !8959
  br label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.k
  %.sroa.0.269.i = phi ptr [ %i.ac, %bb.k ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.ab, %bb.k ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.ae, %bb.k ], [ 0, %.preheader.i ]
  %i.w = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !8959, !noalias !8956, !noundef !9
  %i.x = zext i8 %i.w to i32
  %i.y = add nsw i32 %i.x, -48                    ; 2 uses
end_hunk_2
begin_hunk_3
  store i8 1, ptr %i.af, align 1, !alias.scope !8956, !noalias !8959
  br label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit

_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit: ; preds = %bb.b, %bb.d, %.loopexit.i, %.loopexit58.i, %bb.i, %bb.j, %bb.l
  %.sink.i = phi i8 [ 1, %.loopexit58.i ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.l ], [ 0, %.loopexit.i ], [ 1, %bb.d ], [ 1, %bb.b ]
  store i8 %.sink.i, ptr %0, align 8, !alias.scope !8956, !noalias !8959
  ret void
}
end_hunk_3
