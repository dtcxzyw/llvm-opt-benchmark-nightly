inline.NumInlined: 123
inline.NumDeleted: 45
begin_hunk_0_@load_data:bb.a
bb.ab:                                            ; preds = %bb.ac
  %i.cq = load i64, ptr %i.ad, align 8, !tbaa !71
  %lsr.iv.next = add i64 %lsr.iv, 32
  %i.cr = icmp ult i64 %3, %i.cq
  br i1 %i.cr, label %.lr.ph343, label %._crit_edge344.loopexit, !llvm.loop !123

.lr.ph343:                                        ; preds = %.lr.ph343.preheader, %bb.ab
  %lsr.iv = phi i64 [ 0, %.lr.ph343.preheader ], [ %lsr.iv.next, %bb.ab ] ; 2 uses
  %.0227342 = phi i64 [ %3, %bb.ab ], [ 0, %.lr.ph343.preheader ] ; 6 uses
  %i.cs = tail call ptr @PyTuple_GetItem(ptr noundef nonnull %i.u, i64 noundef %.0227342) #9 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %.lr.ph343..loopexit328.loopexit_crit_edge, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph343
  %3 = add nuw i64 %.0227342, 1                   ; 3 uses
  %i.cu = add i64 %.0227342, 1
  %i.cv = shl i64 %.0227342, 3                    ; 2 uses
  %scevgep466 = getelementptr i8, ptr %i.bh, i64 %i.cv
  %i.cw = load i64, ptr %scevgep466, align 8, !tbaa !110
end_hunk_0
begin_hunk_1_@load_data:bb.a
  br i1 %.not268, label %bb.ab, label %.loopexit328.loopexitsplit

._crit_edge344.loopexit:                          ; preds = %bb.ab
  %.lcssa455 = phi i64 [ %3, %bb.ab ]
  br label %._crit_edge344

._crit_edge344:                                   ; preds = %._crit_edge344.loopexit, %.preheader327
end_hunk_1
begin_hunk_2_@load_data:bb.a
  br label %bb.bo

.loopexit328.loopexitsplit:                       ; preds = %bb.ac
  %.0227342.lcssa469 = phi i64 [ %i.cu, %bb.ac ]
  br label %.loopexit328.loopexit

.lr.ph343..loopexit328.loopexit_crit_edge:        ; preds = %.lr.ph343
  %.0227342.lcssa = phi i64 [ %.0227342, %.lr.ph343 ]
  %.0227342.lcssa.a = phi i64 [ %.0227342, %.lr.ph343 ] ; 0 uses
  br label %.loopexit328.loopexit

.loopexit328.loopexit:                            ; preds = %.loopexit328.loopexitsplit, %.lr.ph343..loopexit328.loopexit_crit_edge
  %.3.ph.ph = phi i64 [ %.0227342.lcssa, %.lr.ph343..loopexit328.loopexit_crit_edge ], [ %.0227342.lcssa469, %.loopexit328.loopexitsplit ]
  br label %.loopexit328

.loopexit328.loopexit452:                         ; preds = %bb.w, %.lr.ph339, %bb.v, %bb.x
end_hunk_2
