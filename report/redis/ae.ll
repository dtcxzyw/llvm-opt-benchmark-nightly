inline.NumInlined: 9
inline.NumDeleted: 9
begin_hunk_0_@aeDeleteFileEvent:bb.a
  br i1 %i.y, label %.lr.ph, label %.split.loop.exit30

.lr.ph:                                           ; preds = %.preheader.preheader
  %i.z = zext nneg i32 %1 to i64
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.ab = add nsw i64 %i.z, -1
  br label %bb.e

.preheader:                                       ; preds = %bb.e
  %lsr.iv.next = add nsw i32 %lsr.iv, -1          ; 2 uses
  %lsr.iv.next34 = add nsw i64 %lsr.iv33, -1
  %i.ac = icmp sgt i32 %lsr.iv.next, 0
  br i1 %i.ac, label %bb.e, label %.split.loop.exit30.loopexitsplit, !llvm.loop !54

bb.e:                                             ; preds = %.lr.ph, %.preheader
  %lsr.iv33 = phi i64 [ %i.ab, %.lr.ph ], [ %lsr.iv.next34, %.preheader ] ; 2 uses
  %lsr.iv = phi i32 [ %1, %.lr.ph ], [ %lsr.iv.next, %.preheader ] ; 2 uses
  %i.ad = and i64 %lsr.iv33, 4294967295
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !32
  %.not26 = icmp eq i32 %i.af, 0
  br i1 %.not26, label %.preheader, label %..split.loop.exit30.loopexit_crit_edge, !llvm.loop !54

.split.loop.exit30.loopexitsplit:                 ; preds = %.preheader
  br label %.split.loop.exit30.loopexit

..split.loop.exit30.loopexit_crit_edge:           ; preds = %bb.e
  %i.ag = add i32 %lsr.iv, -1
  br label %.split.loop.exit30.loopexit, !llvm.loop !54

.split.loop.exit30.loopexit:                      ; preds = %.split.loop.exit30.loopexitsplit, %..split.loop.exit30.loopexit_crit_edge
  %.0.lcssa.ph = phi i32 [ %i.ag, %..split.loop.exit30.loopexit_crit_edge ], [ %i.x, %.split.loop.exit30.loopexitsplit ]
  br label %.split.loop.exit30

.split.loop.exit30:                               ; preds = %.split.loop.exit30.loopexit, %.preheader.preheader
end_hunk_0
