inline.NumInlined: 9
inline.NumDeleted: 9
begin_hunk_0_@aeDeleteFileEvent:bb.a
  br i1 %i.y, label %.lr.ph, label %.split.loop.exit30

.lr.ph:                                           ; preds = %.preheader.preheader
  %i.z = zext nneg i32 %1 to i64                  ; 2 uses
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.ab = add nsw i64 %i.z, -1
  br label %bb.e

.preheader:                                       ; preds = %bb.e
  %lsr.iv.next34 = add nsw i64 %lsr.iv33, -1
  %i.ac = icmp sgt i32 %lsr, 0
  br i1 %i.ac, label %bb.e, label %.split.loop.exit30.loopexitsplit, !llvm.loop !54

bb.e:                                             ; preds = %.lr.ph, %.preheader
  %lsr.iv33 = phi i64 [ %i.ab, %.lr.ph ], [ %lsr.iv.next34, %.preheader ] ; 2 uses
  %indvars.iv32 = phi i64 [ %i.z, %.lr.ph ], [ %indvars.iv.next, %.preheader ] ; 2 uses
  %lsr36 = trunc i64 %indvars.iv32 to i32
  %indvars.iv.next = add nsw i64 %indvars.iv32, -1 ; 3 uses
  %lsr = trunc i64 %indvars.iv.next to i32
  %i.ad = and i64 %lsr.iv33, 4294967295
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !32
  %.not26 = icmp eq i32 %i.af, 0
  %4 = trunc i64 %indvars.iv.next to i32
  br i1 %.not26, label %.preheader, label %..split.loop.exit30.loopexit_crit_edge, !llvm.loop !54

.split.loop.exit30.loopexitsplit:                 ; preds = %.preheader
  %.0.lcssa.ph.ph = phi i32 [ %i.x, %.preheader ]
  br label %.split.loop.exit30.loopexit

..split.loop.exit30.loopexit_crit_edge:           ; preds = %bb.e
  %lsr.iv.lcssa = phi i32 [ %lsr36, %bb.e ]
  %split = phi i32 [ %4, %bb.e ]                  ; 0 uses
  %i.ag = add i32 %lsr.iv.lcssa, -1
  br label %.split.loop.exit30.loopexit, !llvm.loop !54

.split.loop.exit30.loopexit:                      ; preds = %.split.loop.exit30.loopexitsplit, %..split.loop.exit30.loopexit_crit_edge
  %.0.lcssa.ph = phi i32 [ %i.ag, %..split.loop.exit30.loopexit_crit_edge ], [ %.0.lcssa.ph.ph, %.split.loop.exit30.loopexitsplit ]
  br label %.split.loop.exit30

.split.loop.exit30:                               ; preds = %.split.loop.exit30.loopexit, %.preheader.preheader
end_hunk_0
