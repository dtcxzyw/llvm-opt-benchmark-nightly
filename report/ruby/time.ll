begin_hunk_0

bb.j:                                             ; preds = %bb.i
  %i.aj = sub nsw i64 1900, %i.af                 ; 2 uses
  %4 = icmp sgt i64 %i.af, -4611686018427386004
  br i1 %4, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = shl nuw nsw i64 %i.aj, 1
end_hunk_0
begin_hunk_1
bb.ap:                                            ; preds = %bb.ao
  %i.hg = lshr exact i64 %i.fz, 1
  %i.hh = ashr i64 %.0.i149.i, 1
  %i.hi = add nsw i64 %i.hh, %i.hg                ; 3 uses
  %3 = icmp slt i64 %i.hi, 4611686018427387904
  br i1 %3, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hj = shl nsw i64 %i.hi, 1
  %i.hk = or disjoint i64 %i.hj, 1
  br label %.sink.split.i

bb.ar:                                            ; preds = %bb.ap
  %i.hl = call i64 @rb_int2big(i64 noundef %i.hi) #19
  br label %.sink.split.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i170.i:     ; preds = %bb.ao
end_hunk_1
begin_hunk_2

bb.aj:                                            ; preds = %cmp.exit98.thread
  %i.dm = ashr i64 %i.dk, 1                       ; 2 uses
  %i.dn = add nsw i64 %i.dm, 1000000000           ; 2 uses
  %3 = icmp slt i64 %i.dm, 4611686017427387904
  br i1 %3, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.do = shl nsw i64 %i.dn, 1
  %i.dp = or disjoint i64 %i.do, 1
  br label %addv.exit104

bb.al:                                            ; preds = %bb.aj
  %i.dq = tail call i64 @rb_int2big(i64 noundef %i.dn) #19
  br label %addv.exit104

bb.am:                                            ; preds = %cmp.exit98.thread
end_hunk_2
