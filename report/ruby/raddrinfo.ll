inline.NumInlined: 312
inline.NumDeleted: 57
begin_hunk_0_@rsock_inspect_sockaddr:bb.a
  %lsr.iv260 = phi i64 [ %i.ay, %.lr.ph242.preheader ], [ %lsr.iv.next261, %bb.aa ] ; 3 uses
  %indvar = phi i64 [ %indvar.next, %bb.aa ], [ 0, %.lr.ph242.preheader ] ; 2 uses
  %.0.idx.i240 = phi i64 [ %.0.add.i, %bb.aa ], [ %i.e, %.lr.ph242.preheader ] ; 4 uses
  %lsr.iv260267 = inttoptr i64 %lsr.iv260 to ptr
  %scevgep259 = getelementptr i8, ptr %scevgep258, i64 %.0.idx.i240
  %i.ba = load i8, ptr %scevgep259, align 1, !tbaa !46
  %i.bb = icmp eq i8 %i.ba, 0
end_hunk_0
begin_hunk_1_@rsock_inspect_sockaddr:bb.a
  br label %.loopexit

.thread232:                                       ; preds = %.lr.ph242
  %indvar.lcssa = phi i64 [ %indvar, %.lr.ph242 ] ; 2 uses
  %.0.idx.i240.lcssa = phi i64 [ %.0.idx.i240, %.lr.ph242 ]
  %i.bd = getelementptr i8, ptr %0, i64 %.0.idx.i240.lcssa ; 2 uses
  %i.be = icmp ult ptr %i.f, %i.bd
  br i1 %i.be, label %.lr.ph211.preheader, label %._crit_edge.thread
end_hunk_1
begin_hunk_2_@rsock_inspect_sockaddr:bb.a
  br i1 %i.bi, label %.lr.ph211.epil.preheader, label %.lr.ph211.preheader.new

.lr.ph211.preheader.new:                          ; preds = %.lr.ph211.preheader
  %i.bj = lshr i64 %lsr.iv260, 1
  %i.bk = shl nuw i64 %i.bj, 1
  br label %.lr.ph211

end_hunk_2
begin_hunk_3_@rsock_inspect_sockaddr:bb.a
  %i.cl = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.29, i32 noundef %i.ck) #17 ; 0 uses
  %lsr.iv.next265 = add i64 %lsr.iv264, 1         ; 2 uses
  %tmp = inttoptr i64 %lsr.iv.next265 to ptr
  %exitcond220.not = icmp eq ptr %lsr.iv260267, %tmp
  br i1 %exitcond220.not, label %.loopexit.loopexit, label %.lr.ph215, !llvm.loop !102

bb.af:                                            ; preds = %bb.e
end_hunk_3
