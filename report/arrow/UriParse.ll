inline.NumInlined: 232
inline.NumDeleted: 40
begin_hunk_0_@uriParsePartHelperTwoA:bb.a
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %tailrecurse.i.i.i
  %.tr3.i.i.i = phi ptr [ %i.q, %tailrecurse.i.i.i ], [ %i.o, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.p = load i8, ptr %.tr3.i.i.i, align 1, !tbaa !12
  %.off.i.i.i = add i8 %i.p, -48
  %switch.i.i.i = icmp ult i8 %.off.i.i.i, 10
end_hunk_0
begin_hunk_1_@uriParsePartHelperTwoA:bb.a
  br i1 %exitcond.not.i.i.i, label %uriParsePortA.exit.i.i.loopexitsplit, label %.lr.ph.i.i.i

uriParsePortA.exit.i.i.loopexitsplit:             ; preds = %tailrecurse.i.i.i
  br label %uriParsePortA.exit.i.i.loopexit

.lr.ph.i.i.i.uriParsePortA.exit.i.i.loopexit_crit_edge: ; preds = %.lr.ph.i.i.i
  %.tr3.i.i.i.lcssa.a = phi ptr [ %.tr3.i.i.i, %.lr.ph.i.i.i ]
  br label %uriParsePortA.exit.i.i.loopexit

uriParsePortA.exit.i.i.loopexit:                  ; preds = %uriParsePortA.exit.i.i.loopexitsplit, %.lr.ph.i.i.i.uriParsePortA.exit.i.i.loopexit_crit_edge
  %.0.i.i.i.ph = phi ptr [ %.tr3.i.i.i.lcssa.a, %.lr.ph.i.i.i.uriParsePortA.exit.i.i.loopexit_crit_edge ], [ %2, %uriParsePortA.exit.i.i.loopexitsplit ]
  br label %uriParsePortA.exit.i.i

uriParsePortA.exit.i.i:                           ; preds = %uriParsePortA.exit.i.i.loopexit, %bb.j
end_hunk_1
begin_hunk_2_@uriParseIpFutureA:bb.a
  br i1 %exitcond.not.i, label %uriParseHexZeroA.exit.thread.loopexit, label %.lr.ph.i

uriParseHexZeroA.exit:                            ; preds = %.lr.ph.i
  %.tr3.i.lcssa = phi ptr [ %.tr3.i, %.lr.ph.i ]  ; 3 uses
  %.lcssa = phi i8 [ %i.l, %.lr.ph.i ]
  %.not49 = icmp ult ptr %.tr3.i.lcssa, %2
end_hunk_2
begin_hunk_3_@uriParseIpFutureA:bb.a
  store ptr %1, ptr %i.v, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store ptr %1, ptr %i.w, align 8, !tbaa !38
  %i.x = getelementptr inbounds nuw i8, ptr %.tr3.i.lcssa, i64 1 ; 2 uses
  %.not21.i = icmp ult ptr %i.x, %2
  br i1 %.not21.i, label %.lr.ph.preheader.i, label %uriParseIpFutLoopA.exit

end_hunk_3
begin_hunk_4_@uriParseIpFutureA:bb.a
  br label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.lr.ph.i52.backedge, %.lr.ph.preheader.i
  %lsr.iv84 = phi ptr [ %scevgep85, %.lr.ph.i52.backedge ], [ %lsr.iv, %.lr.ph.preheader.i ] ; 4 uses
  %i.z = phi i8 [ %.pre.i, %.lr.ph.preheader.i ], [ %i.aa, %.lr.ph.i52.backedge ]
  %scevgep86.a = getelementptr i8, ptr %lsr.iv84, i64 -1 ; 2 uses
  switch i8 %i.z, label %uriParseIpFutLoopA.exit.loopexit [
    i8 33, label %bb.j
end_hunk_4
begin_hunk_5_@uriParseIpFutureA:bb.a
  ]

bb.j:                                             ; preds = %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52
  %exitcond.not.i53 = icmp eq ptr %scevgep86.a, %scevgep.i
  br i1 %exitcond.not.i53, label %split.a, label %bb.k

end_hunk_5
begin_hunk_6_@uriParseIpFutureA:bb.a
  br label %bb.n

split.a:                                          ; preds = %bb.j
  br label %bb.l

._crit_edge:                                      ; preds = %bb.k
  %lsr.iv84.lcssa88 = phi ptr [ %lsr.iv84, %bb.k ]
  br label %bb.l

bb.l:                                             ; preds = %split.a, %._crit_edge
  %.0.i51.ph = phi ptr [ %lsr.iv84.lcssa88, %._crit_edge ], [ %2, %split.a ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr %.0.i51.ph, ptr %i.ae, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 72
end_hunk_6
begin_hunk_7_@uriParseOwnHostA:bb.a
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %tailrecurse.i.i
  %.tr3.i.i = phi ptr [ %i.l, %tailrecurse.i.i ], [ %i.j, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.k = load i8, ptr %.tr3.i.i, align 1, !tbaa !12
  %.off.i.i = add i8 %i.k, -48
  %switch.i.i = icmp ult i8 %.off.i.i, 10
end_hunk_7
begin_hunk_8_@uriParseOwnHostA:bb.a
  br i1 %exitcond.not.i.i, label %uriParsePortA.exit.i.loopexitsplit, label %.lr.ph.i.i

uriParsePortA.exit.i.loopexitsplit:               ; preds = %tailrecurse.i.i
  br label %uriParsePortA.exit.i.loopexit

.lr.ph.i.i.uriParsePortA.exit.i.loopexit_crit_edge: ; preds = %.lr.ph.i.i
  %.tr3.i.i.lcssa.a = phi ptr [ %.tr3.i.i, %.lr.ph.i.i ]
  br label %uriParsePortA.exit.i.loopexit

uriParsePortA.exit.i.loopexit:                    ; preds = %uriParsePortA.exit.i.loopexitsplit, %.lr.ph.i.i.uriParsePortA.exit.i.loopexit_crit_edge
  %.0.i.i.ph = phi ptr [ %.tr3.i.i.lcssa.a, %.lr.ph.i.i.uriParsePortA.exit.i.loopexit_crit_edge ], [ %2, %uriParsePortA.exit.i.loopexitsplit ]
  br label %uriParsePortA.exit.i

uriParsePortA.exit.i:                             ; preds = %uriParsePortA.exit.i.loopexit, %bb.g
end_hunk_8
begin_hunk_9_@uriParseOwnHostA:bb.a
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %tailrecurse.i.i.i
  %.tr3.i.i.i = phi ptr [ %i.av, %tailrecurse.i.i.i ], [ %i.at, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.au = load i8, ptr %.tr3.i.i.i, align 1, !tbaa !12
  %.off.i.i.i = add i8 %i.au, -48
  %switch.i.i.i = icmp ult i8 %.off.i.i.i, 10
end_hunk_9
begin_hunk_10_@uriParseOwnHostA:bb.a
  br i1 %exitcond.not.i.i.i, label %uriParsePortA.exit.i.i.loopexitsplit, label %.lr.ph.i.i.i

uriParsePortA.exit.i.i.loopexitsplit:             ; preds = %tailrecurse.i.i.i
  br label %uriParsePortA.exit.i.i.loopexit

.lr.ph.i.i.i.uriParsePortA.exit.i.i.loopexit_crit_edge: ; preds = %.lr.ph.i.i.i
  %.tr3.i.i.i.lcssa.a = phi ptr [ %.tr3.i.i.i, %.lr.ph.i.i.i ]
  br label %uriParsePortA.exit.i.i.loopexit

uriParsePortA.exit.i.i.loopexit:                  ; preds = %uriParsePortA.exit.i.i.loopexitsplit, %.lr.ph.i.i.i.uriParsePortA.exit.i.i.loopexit_crit_edge
  %.0.i.i.i.ph = phi ptr [ %.tr3.i.i.i.lcssa.a, %.lr.ph.i.i.i.uriParsePortA.exit.i.i.loopexit_crit_edge ], [ %2, %uriParsePortA.exit.i.i.loopexitsplit ]
  br label %uriParsePortA.exit.i.i

uriParsePortA.exit.i.i:                           ; preds = %uriParsePortA.exit.i.i.loopexit, %bb.p
end_hunk_10
begin_hunk_11_@uriParsePartHelperTwoW:bb.a
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %tailrecurse.i.i.i
  %.tr3.i.i.i = phi ptr [ %i.q, %tailrecurse.i.i.i ], [ %i.o, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.p = load i32, ptr %.tr3.i.i.i, align 4, !tbaa !3
  %.off.i.i.i = add i32 %i.p, -48
  %switch.i.i.i = icmp ult i32 %.off.i.i.i, 10
end_hunk_11
begin_hunk_12_@uriParsePartHelperTwoW:bb.a
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %uriParsePortW.exit.i.i.loopexitsplit

uriParsePortW.exit.i.i.loopexitsplit:             ; preds = %tailrecurse.i.i.i
  br label %uriParsePortW.exit.i.i.loopexit

.lr.ph.i.i.i.uriParsePortW.exit.i.i.loopexit_crit_edge: ; preds = %.lr.ph.i.i.i
  %.tr3.i.i.i.lcssa.a = phi ptr [ %.tr3.i.i.i, %.lr.ph.i.i.i ]
  br label %uriParsePortW.exit.i.i.loopexit

uriParsePortW.exit.i.i.loopexit:                  ; preds = %uriParsePortW.exit.i.i.loopexitsplit, %.lr.ph.i.i.i.uriParsePortW.exit.i.i.loopexit_crit_edge
  %.0.i.i.i.ph = phi ptr [ %.tr3.i.i.i.lcssa.a, %.lr.ph.i.i.i.uriParsePortW.exit.i.i.loopexit_crit_edge ], [ %2, %uriParsePortW.exit.i.i.loopexitsplit ]
  br label %uriParsePortW.exit.i.i

uriParsePortW.exit.i.i:                           ; preds = %uriParsePortW.exit.i.i.loopexit, %bb.j
end_hunk_12
begin_hunk_13_@uriParseIpFutureW:bb.a
  br i1 %.not.i, label %.lr.ph.i, label %uriParseHexZeroW.exit.thread.loopexit

uriParseHexZeroW.exit:                            ; preds = %.lr.ph.i
  %.tr3.i.lcssa = phi ptr [ %.tr3.i, %.lr.ph.i ]  ; 3 uses
  %.lcssa = phi i32 [ %i.l, %.lr.ph.i ]
  %.not49 = icmp ult ptr %.tr3.i.lcssa, %2
end_hunk_13
begin_hunk_14_@uriParseIpFutureW:bb.a
  store ptr %1, ptr %i.v, align 8, !tbaa !80
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store ptr %1, ptr %i.w, align 8, !tbaa !78
  %i.x = getelementptr inbounds nuw i8, ptr %.tr3.i.lcssa, i64 4 ; 2 uses
  %.not21.i = icmp ult ptr %i.x, %2
  br i1 %.not21.i, label %.lr.ph.preheader.i, label %uriParseIpFutLoopW.exit

end_hunk_14
begin_hunk_15_@uriParseIpFutureW:bb.a
  br label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.lr.ph.i52.backedge, %.lr.ph.preheader.i
  %lsr.iv84 = phi ptr [ %scevgep85, %.lr.ph.i52.backedge ], [ %lsr.iv, %.lr.ph.preheader.i ] ; 5 uses
  %i.y = phi i32 [ %.pre.i, %.lr.ph.preheader.i ], [ %i.z, %.lr.ph.i52.backedge ]
  %scevgep86.a = getelementptr i8, ptr %lsr.iv84, i64 -4
  switch i32 %i.y, label %uriParseIpFutLoopW.exit.loopexit [
    i32 33, label %bb.j
end_hunk_15
begin_hunk_16_@uriParseIpFutureW:bb.a
  ]

bb.j:                                             ; preds = %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52
  %.not.i.i = icmp ult ptr %lsr.iv84, %2
  br i1 %.not.i.i, label %bb.k, label %split.a

end_hunk_16
begin_hunk_17_@uriParseIpFutureW:bb.a
  br label %bb.n

split.a:                                          ; preds = %bb.j
  br label %bb.l

._crit_edge:                                      ; preds = %bb.k
  %lsr.iv84.lcssa88 = phi ptr [ %lsr.iv84, %bb.k ]
  br label %bb.l

bb.l:                                             ; preds = %split.a, %._crit_edge
  %.0.i51.ph = phi ptr [ %lsr.iv84.lcssa88, %._crit_edge ], [ %2, %split.a ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr %.0.i51.ph, ptr %i.ad, align 8, !tbaa !83
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 72
end_hunk_17
begin_hunk_18_@uriParseOwnHostW:bb.a
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %tailrecurse.i.i
  %.tr3.i.i = phi ptr [ %i.l, %tailrecurse.i.i ], [ %i.j, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.k = load i32, ptr %.tr3.i.i, align 4, !tbaa !3
  %.off.i.i = add i32 %i.k, -48
  %switch.i.i = icmp ult i32 %.off.i.i, 10
end_hunk_18
begin_hunk_19_@uriParseOwnHostW:bb.a
  br i1 %.not.i.i, label %.lr.ph.i.i, label %uriParsePortW.exit.i.loopexitsplit

uriParsePortW.exit.i.loopexitsplit:               ; preds = %tailrecurse.i.i
  br label %uriParsePortW.exit.i.loopexit

.lr.ph.i.i.uriParsePortW.exit.i.loopexit_crit_edge: ; preds = %.lr.ph.i.i
  %.tr3.i.i.lcssa.a = phi ptr [ %.tr3.i.i, %.lr.ph.i.i ]
  br label %uriParsePortW.exit.i.loopexit

uriParsePortW.exit.i.loopexit:                    ; preds = %uriParsePortW.exit.i.loopexitsplit, %.lr.ph.i.i.uriParsePortW.exit.i.loopexit_crit_edge
  %.0.i.i.ph = phi ptr [ %.tr3.i.i.lcssa.a, %.lr.ph.i.i.uriParsePortW.exit.i.loopexit_crit_edge ], [ %2, %uriParsePortW.exit.i.loopexitsplit ]
  br label %uriParsePortW.exit.i

uriParsePortW.exit.i:                             ; preds = %uriParsePortW.exit.i.loopexit, %bb.g
end_hunk_19
begin_hunk_20_@uriParseOwnHostW:bb.a
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %tailrecurse.i.i.i
  %.tr3.i.i.i = phi ptr [ %i.av, %tailrecurse.i.i.i ], [ %i.at, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.au = load i32, ptr %.tr3.i.i.i, align 4, !tbaa !3
  %.off.i.i.i = add i32 %i.au, -48
  %switch.i.i.i = icmp ult i32 %.off.i.i.i, 10
end_hunk_20
begin_hunk_21_@uriParseOwnHostW:bb.a
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %uriParsePortW.exit.i.i.loopexitsplit

uriParsePortW.exit.i.i.loopexitsplit:             ; preds = %tailrecurse.i.i.i
  br label %uriParsePortW.exit.i.i.loopexit

.lr.ph.i.i.i.uriParsePortW.exit.i.i.loopexit_crit_edge: ; preds = %.lr.ph.i.i.i
  %.tr3.i.i.i.lcssa.a = phi ptr [ %.tr3.i.i.i, %.lr.ph.i.i.i ]
  br label %uriParsePortW.exit.i.i.loopexit

uriParsePortW.exit.i.i.loopexit:                  ; preds = %uriParsePortW.exit.i.i.loopexitsplit, %.lr.ph.i.i.i.uriParsePortW.exit.i.i.loopexit_crit_edge
  %.0.i.i.i.ph = phi ptr [ %.tr3.i.i.i.lcssa.a, %.lr.ph.i.i.i.uriParsePortW.exit.i.i.loopexit_crit_edge ], [ %2, %uriParsePortW.exit.i.i.loopexitsplit ]
  br label %uriParsePortW.exit.i.i

uriParsePortW.exit.i.i:                           ; preds = %uriParsePortW.exit.i.i.loopexit, %bb.p
end_hunk_21
