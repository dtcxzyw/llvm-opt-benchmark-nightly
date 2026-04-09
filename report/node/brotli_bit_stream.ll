inline.NumInlined: 36
inline.NumDeleted: 20
begin_hunk_0_@StoreTrivialContextMap:bb.a
  br i1 %i.am, label %bb.b, label %bb.d

bb.b:                                             ; preds = %StoreVarLenUint8.exit
  %i.an = add nsw i64 %2, -1                      ; 7 uses
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %notmask = shl nsw i32 -1, %i.ao
  %i.ap = xor i32 %notmask, -1
end_hunk_0
begin_hunk_1_@StoreTrivialContextMap:bb.a
  store i64 %i.de, ptr %i.cz, align 1, !noalias !425
  %i.df = add i64 %i.cx, %i.an                    ; 2 uses
  store i64 %i.df, ptr %4, align 8, !tbaa !9, !alias.scope !425, !noalias !428
  %invariant.op = add nsw i64 %2, -1
  br label %bb.c

bb.c:                                             ; preds = %.peel.next, %bb.c
  %i.dg = phi i64 [ %i.df, %.peel.next ], [ %i.ep, %bb.c ] ; 3 uses
  %.163 = phi i64 [ 1, %.peel.next ], [ %i.eq, %bb.c ] ; 2 uses
  %i.dh = add i64 %.163, %invariant.op            ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !11
  %i.dk = zext i8 %i.dj to i64
end_hunk_1
