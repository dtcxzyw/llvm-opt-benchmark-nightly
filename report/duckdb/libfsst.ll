inline.NumInlined: 716
inline.NumDeleted: 392
begin_hunk_0_@"_ZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_2clEPNS_11SymbolTableES1_":bb.a

bb.k:                                             ; preds = %bb.i
  %i.bo = and i32 %storemerge4645, 1
  %narrow.i = sub nuw nsw i32 15, %i.bo
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bp = phi i32 [ %i.bn, %bb.j ], [ %narrow.i, %bb.k ] ; 2 uses
  %i.bq = shl nuw nsw i32 %i.bp, 2
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = lshr i64 %i.bk, %i.br
end_hunk_0
