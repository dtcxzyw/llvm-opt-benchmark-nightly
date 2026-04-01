begin_hunk_0
bb.l:                                             ; preds = %bb.k
  %i.bc = icmp ugt i32 %i.au, 127
  %i.bd = lshr i32 %i.au, 4
  %i.be = shl nuw nsw i32 256, %i.bd
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = icmp ult i64 %i.o, %i.bf
  %narrow1701 = select i1 %i.bc, i1 true, i1 %i.bg
end_hunk_0
