inline.NumInlined: 480
inline.NumDeleted: 251
begin_hunk_0_@_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context11findChannelEiPKc:bb.a

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  %sext = shl i64 %i.b, 32
  %i.g = ashr exact i64 %sext, 32
  %wide.trip.count = zext nneg i32 %i.d to i64
end_hunk_0
begin_hunk_1_@_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context11findChannelEiPKc:bb.a
bb.b:                                             ; preds = %.lr.ph, %bb.d
  %lsr.iv30 = phi i64 [ %wide.trip.count, %.lr.ph ], [ %lsr.iv.next, %bb.d ]
  %lsr.iv = phi ptr [ %i.f, %.lr.ph ], [ %scevgep, %bb.d ] ; 4 uses
  %i.h = load i32, ptr %lsr.iv, align 8, !tbaa !35
  %i.i = icmp eq i32 %i.h, %i.c
  br i1 %i.i, label %bb.c, label %bb.d
end_hunk_1
begin_hunk_2_@_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context11findChannelEiPKc:bb.a
  br i1 %i.k, label %.._crit_edge.loopexit_crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %scevgep = getelementptr i8, ptr %lsr.iv, i64 32
  %lsr.iv.next = add nsw i64 %lsr.iv30, -1        ; 2 uses
  %exitcond.not = icmp eq i64 %lsr.iv.next, 0
  br i1 %exitcond.not, label %._crit_edge.loopexitsplit, label %bb.b, !llvm.loop !40

._crit_edge.loopexitsplit:                        ; preds = %bb.d
  br label %._crit_edge.loopexit

.._crit_edge.loopexit_crit_edge:                  ; preds = %bb.c
  %lsr.iv.lcssa = phi ptr [ %lsr.iv, %bb.c ]
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexitsplit, %.._crit_edge.loopexit_crit_edge
  %spec.select.ph = phi ptr [ %lsr.iv.lcssa, %.._crit_edge.loopexit_crit_edge ], [ null, %._crit_edge.loopexitsplit ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
end_hunk_2
