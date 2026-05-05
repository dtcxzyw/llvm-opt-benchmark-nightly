inline.NumInlined: 5209
inline.NumDeleted: 1661
begin_hunk_0_@_ZNK5arrow9ListArray7FlattenEPNS_10MemoryPoolE:bb.a

bb.x:                                             ; preds = %.critedge2.us.i, %.preheader.split.us.i
  %lsr.iv = phi i64 [ %lsr.iv.next, %.critedge2.us.i ], [ %i.by, %.preheader.split.us.i ] ; 3 uses
  %.077.us.i = phi i64 [ %.03178.i, %.preheader.split.us.i ], [ %i.cj, %.critedge2.us.i ] ; 3 uses
  %i.bz = lshr i64 %lsr.iv, 3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !97
end_hunk_0
begin_hunk_1_@_ZNK5arrow9ListArray7FlattenEPNS_10MemoryPoolE:bb.a
  br i1 %i.dm, label %.critedge2.i, label %..critedge.i.loopexit_crit_edge

.critedge2.i:                                     ; preds = %bb.af, %_ZNK5arrow5Array7IsValidEl.exit.i, %bb.ae, %.noexc51.i, %.noexc50.i, %bb.z
  %i.dn = add i64 %.077.i, 1
  %i.do = icmp slt i64 %i.dn, %i.d
  br i1 %i.do, label %.preheader.splitthread-pre-split.i, label %.critedge.i.loopexitsplit, !llvm.loop !148

end_hunk_1
begin_hunk_2_@_ZNK5arrow9ListArray7FlattenEPNS_10MemoryPoolE:bb.a
  br label %bb.bt

.critedge.i.loopexitsplit:                        ; preds = %.critedge2.i
  %.077.i.lcssa43 = phi i64 [ %.077.i, %.critedge2.i ]
  %9 = add i64 %.077.i.lcssa43, 1
  br label %.critedge.i.loopexit

..critedge.i.loopexit_crit_edge:                  ; preds = %bb.af
  %.077.i.lcssa42 = phi i64 [ %.077.i, %bb.af ]
  br label %.critedge.i.loopexit

.critedge.i.loopexit:                             ; preds = %.critedge.i.loopexitsplit, %..critedge.i.loopexit_crit_edge
  %.us-phi.i.ph = phi i64 [ %.077.i.lcssa42, %..critedge.i.loopexit_crit_edge ], [ %9, %.critedge.i.loopexitsplit ]
  br label %.critedge.i

.critedge.i.loopexit33split:                      ; preds = %.critedge2.us.i
  br label %.critedge.i.loopexit33

..critedge.i.loopexit33_crit_edge:                ; preds = %bb.y
  %.077.us.i.lcssa.a = phi i64 [ %.077.us.i, %bb.y ]
  br label %.critedge.i.loopexit33

.critedge.i.loopexit33:                           ; preds = %.critedge.i.loopexit33split, %..critedge.i.loopexit33_crit_edge
  %.us-phi.i.ph34 = phi i64 [ %.077.us.i.lcssa.a, %..critedge.i.loopexit33_crit_edge ], [ %smax.i, %.critedge.i.loopexit33split ]
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit33, %.critedge.i.loopexit
end_hunk_2
begin_hunk_3_@_ZNK5arrow14LargeListArray7FlattenEPNS_10MemoryPoolE:bb.a

bb.x:                                             ; preds = %.critedge2.us.i, %.preheader.split.us.i
  %lsr.iv = phi i64 [ %lsr.iv.next, %.critedge2.us.i ], [ %i.bw, %.preheader.split.us.i ] ; 3 uses
  %.077.us.i = phi i64 [ %.03178.i, %.preheader.split.us.i ], [ %i.ch, %.critedge2.us.i ] ; 3 uses
  %i.bx = lshr i64 %lsr.iv, 3
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !97
end_hunk_3
begin_hunk_4_@_ZNK5arrow14LargeListArray7FlattenEPNS_10MemoryPoolE:bb.a
  br i1 %i.dk, label %.critedge2.i, label %..critedge.i.loopexit_crit_edge

.critedge2.i:                                     ; preds = %bb.af, %_ZNK5arrow5Array7IsValidEl.exit.i, %bb.ae, %.noexc51.i, %.noexc50.i, %bb.z
  %i.dl = add i64 %.077.i, 1
  %i.dm = icmp slt i64 %i.dl, %i.d
  br i1 %i.dm, label %.preheader.splitthread-pre-split.i, label %.critedge.i.loopexitsplit, !llvm.loop !170

end_hunk_4
begin_hunk_5_@_ZNK5arrow14LargeListArray7FlattenEPNS_10MemoryPoolE:bb.a
  br label %bb.bt

.critedge.i.loopexitsplit:                        ; preds = %.critedge2.i
  %.077.i.lcssa43 = phi i64 [ %.077.i, %.critedge2.i ]
  %9 = add i64 %.077.i.lcssa43, 1
  br label %.critedge.i.loopexit

..critedge.i.loopexit_crit_edge:                  ; preds = %bb.af
  %.077.i.lcssa42 = phi i64 [ %.077.i, %bb.af ]
  br label %.critedge.i.loopexit

.critedge.i.loopexit:                             ; preds = %.critedge.i.loopexitsplit, %..critedge.i.loopexit_crit_edge
  %.us-phi.i.ph = phi i64 [ %.077.i.lcssa42, %..critedge.i.loopexit_crit_edge ], [ %9, %.critedge.i.loopexitsplit ]
  br label %.critedge.i

.critedge.i.loopexit33split:                      ; preds = %.critedge2.us.i
  br label %.critedge.i.loopexit33

..critedge.i.loopexit33_crit_edge:                ; preds = %bb.y
  %.077.us.i.lcssa.a = phi i64 [ %.077.us.i, %bb.y ]
  br label %.critedge.i.loopexit33

.critedge.i.loopexit33:                           ; preds = %.critedge.i.loopexit33split, %..critedge.i.loopexit33_crit_edge
  %.us-phi.i.ph34 = phi i64 [ %.077.us.i.lcssa.a, %..critedge.i.loopexit33_crit_edge ], [ %smax.i, %.critedge.i.loopexit33split ]
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit33, %.critedge.i.loopexit
end_hunk_5
begin_hunk_6_@_ZNK5arrow18FixedSizeListArray7FlattenEPNS_10MemoryPoolE:bb.a

.preheader.split.us.split.i:                      ; preds = %.preheader.split.us.split.i.preheader, %.critedge2.us.i
  %lsr.iv = phi i64 [ %i.bz, %.preheader.split.us.split.i.preheader ], [ %lsr.iv.next, %.critedge2.us.i ] ; 3 uses
  %.077.us.i = phi i64 [ %i.cg, %.critedge2.us.i ], [ %.03180.i, %.preheader.split.us.split.i.preheader ] ; 2 uses
  %i.ca = lshr i64 %lsr.iv, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !97
end_hunk_6
begin_hunk_7_@_ZNK5arrow18FixedSizeListArray7FlattenEPNS_10MemoryPoolE:bb.a
  br i1 %i.dh, label %.critedge2.i, label %..critedge.i.loopexit_crit_edge

.critedge2.i:                                     ; preds = %bb.ad, %_ZNK5arrow5Array7IsValidEl.exit.i, %bb.ac, %.noexc51.i, %.noexc50.i, %bb.x
  %i.di = add i64 %.077.i, 1
  %i.dj = icmp slt i64 %i.di, %i.d
  br i1 %i.dj, label %.preheader.splitthread-pre-split.i, label %.critedge.i.loopexitsplit, !llvm.loop !224

end_hunk_7
begin_hunk_8_@_ZNK5arrow18FixedSizeListArray7FlattenEPNS_10MemoryPoolE:bb.a
  br label %bb.br

.critedge.i.loopexitsplit:                        ; preds = %.critedge2.i
  %.077.i.lcssa38 = phi i64 [ %.077.i, %.critedge2.i ]
  %9 = add i64 %.077.i.lcssa38, 1
  br label %.critedge.i.loopexit

..critedge.i.loopexit_crit_edge:                  ; preds = %bb.ad
  %.077.i.lcssa37.a = phi i64 [ %.077.i, %bb.ad ]
  br label %.critedge.i.loopexit

.critedge.i.loopexit:                             ; preds = %.critedge.i.loopexitsplit, %..critedge.i.loopexit_crit_edge
  %.us-phi.i.ph = phi i64 [ %.077.i.lcssa37.a, %..critedge.i.loopexit_crit_edge ], [ %9, %.critedge.i.loopexitsplit ]
  br label %.critedge.i

.critedge.i.loopexit33split:                      ; preds = %.critedge2.us.i
  br label %.critedge.i.loopexit33

.preheader.split.us.split.i..critedge.i.loopexit33_crit_edge: ; preds = %.preheader.split.us.split.i
  %.077.us.i.lcssa.a = phi i64 [ %.077.us.i, %.preheader.split.us.split.i ]
  br label %.critedge.i.loopexit33

.critedge.i.loopexit33:                           ; preds = %.critedge.i.loopexit33split, %.preheader.split.us.split.i..critedge.i.loopexit33_crit_edge
  %.us-phi.i.ph34 = phi i64 [ %.077.us.i.lcssa.a, %.preheader.split.us.split.i..critedge.i.loopexit33_crit_edge ], [ %smax86.i, %.critedge.i.loopexit33split ]
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit33, %.critedge.i.loopexit, %.preheader.split.us.i
end_hunk_8
