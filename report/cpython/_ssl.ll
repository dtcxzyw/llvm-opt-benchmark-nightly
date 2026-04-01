begin_hunk_0
  br label %bb.o

.split63.us:                                      ; preds = %bb.n, %bb.l, %bb.i, %.lr.ph72
  %.us-phi = phi i32 [ %.040.us71, %bb.i ], [ %.040.us71, %.lr.ph72 ], [ %.04065, %bb.l ], [ %i.aj, %bb.n ]
  %i.ar = tail call i64 @ERR_peek_last_error() #11 ; 2 uses
  %i.as = icmp eq i32 %.us-phi, 0
  br i1 %i.as, label %bb.o, label %bb.p

end_hunk_0
begin_hunk_1

bb.p:                                             ; preds = %.split63.us
  %i.ba = icmp eq i32 %3, 1
  %i.bb = and i64 %i.ar, 4294967295
  %i.bc = icmp eq i64 %i.bb, 75497580
  %or.cond103 = select i1 %i.ba, i1 %i.bc, i1 false
  br i1 %or.cond103, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %4 = and i64 %i.ar, 4294967295
  %.not47 = icmp eq i64 %4, 0
  br i1 %.not47, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
end_hunk_1
