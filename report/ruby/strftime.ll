inline.NumInlined: 250
inline.NumDeleted: 33
begin_hunk_0_@rb_strftime_with_timespec:bb.a
  br label %.preheader2986

.preheader2986:                                   ; preds = %.preheader2986.preheader, %bb.iv
  %lsr.iv8154 = phi i64 [ 3, %.preheader2986.preheader ], [ %lsr.iv.next8155, %bb.iv ] ; 9 uses
  %lsr.iv8154.a = phi i64 [ %lsr.iv.next8155.a, %bb.iv ], [ 0, %.preheader2986.preheader ] ; 4 uses
  %scevgep8161 = getelementptr i8, ptr %i.bkn, i64 %lsr.iv8154
  %scevgep8162 = getelementptr i8, ptr %scevgep8161, i64 -3
  %i.bko = load i8, ptr %scevgep8162, align 1, !tbaa !16 ; 2 uses
  %.not2202 = icmp eq i8 %i.bko, 0
end_hunk_0
begin_hunk_1_@rb_strftime_with_timespec:bb.a
  br label %.critedge

.preheader2986.1:                                 ; preds = %bb.ip
  %12 = add i64 %lsr.iv8154, -2
  %scevgep8159 = getelementptr i8, ptr %i.bkn, i64 %lsr.iv8154
  %scevgep8160 = getelementptr i8, ptr %scevgep8159, i64 -2
  %i.bla = load i8, ptr %scevgep8160, align 1, !tbaa !16 ; 2 uses
  %.not2202.1 = icmp eq i8 %i.bla, 0
end_hunk_1
begin_hunk_2_@rb_strftime_with_timespec:bb.a
  br i1 %i.blb, label %bb.iq, label %.preheader2986.2

.preheader2986.2:                                 ; preds = %bb.is
  %13 = or disjoint i64 %lsr.iv8154.a, 2
  %scevgep8157 = getelementptr i8, ptr %i.bkn, i64 %lsr.iv8154
  %scevgep8158 = getelementptr i8, ptr %scevgep8157, i64 -1
  %i.blc = load i8, ptr %scevgep8158, align 1, !tbaa !16 ; 2 uses
  %.not2202.2 = icmp eq i8 %i.blc, 0
end_hunk_2
begin_hunk_3_@rb_strftime_with_timespec:bb.a
  br i1 %i.bld, label %bb.iq, label %.preheader2986.3

.preheader2986.3:                                 ; preds = %bb.it
  %14 = or disjoint i64 %lsr.iv8154.a, 3
  %scevgep8156 = getelementptr i8, ptr %i.bkn, i64 %lsr.iv8154
  %i.ble = load i8, ptr %scevgep8156, align 1, !tbaa !16 ; 2 uses
  %.not2202.3 = icmp eq i8 %i.ble, 0
  br i1 %.not2202.3, label %.preheader2986.3..critedge.loopexitsplit_crit_edge, label %bb.iu
end_hunk_3
begin_hunk_4_@rb_strftime_with_timespec:bb.a
  br i1 %i.blf, label %bb.iq, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %lsr.iv.next8155.a = add nuw nsw i64 %lsr.iv8154.a, 4
  %lsr.iv.next8155 = add nuw nsw i64 %lsr.iv8154, 4 ; 2 uses
  %exitcond3680.not.3 = icmp eq i64 %lsr.iv.next8155, 103
  br i1 %exitcond3680.not.3, label %.critedge.thread.loopexit, label %.preheader2986, !llvm.loop !51

bb.iw:                                            ; preds = %RSTRING_PTR.exit2564
end_hunk_4
begin_hunk_5_@rb_strftime_with_timespec:bb.a
  br label %.critedge

.critedge.loopexitsplitsplitsplit:                ; preds = %.preheader2986.1
  %lsr.iv8154.lcssa8164 = phi i64 [ %12, %.preheader2986.1 ]
  br label %.critedge.loopexitsplitsplit

.preheader2986.2..critedge.loopexitsplitsplit_crit_edge: ; preds = %.preheader2986.2
  %lsr.iv8154.lcssa8176 = phi i64 [ %lsr.iv8154, %.preheader2986.2 ]
  %lsr.iv8154.lcssa8165 = phi i64 [ %13, %.preheader2986.2 ] ; 0 uses
  %i.ekc = add i64 %lsr.iv8154.lcssa8176, -1
  br label %.critedge.loopexitsplitsplit

.critedge.loopexitsplitsplit:                     ; preds = %.critedge.loopexitsplitsplitsplit, %.preheader2986.2..critedge.loopexitsplitsplit_crit_edge
  %.31917.ph.ph.ph = phi i64 [ %i.ekc, %.preheader2986.2..critedge.loopexitsplitsplit_crit_edge ], [ %lsr.iv8154.lcssa8164, %.critedge.loopexitsplitsplitsplit ]
  br label %.critedge.loopexitsplit

.preheader2986.3..critedge.loopexitsplit_crit_edge: ; preds = %.preheader2986.3
  %lsr.iv8154.lcssa8163 = phi i64 [ %lsr.iv8154, %.preheader2986.3 ]
  %lsr.iv8154.lcssa8166 = phi i64 [ %14, %.preheader2986.3 ] ; 0 uses
  br label %.critedge.loopexitsplit

.critedge.loopexitsplit:                          ; preds = %.critedge.loopexitsplitsplit, %.preheader2986.3..critedge.loopexitsplit_crit_edge
  %.31917.ph.ph = phi i64 [ %lsr.iv8154.lcssa8163, %.preheader2986.3..critedge.loopexitsplit_crit_edge ], [ %.31917.ph.ph.ph, %.critedge.loopexitsplitsplit ]
  br label %.critedge.loopexit

.preheader2986..critedge.loopexit_crit_edge:      ; preds = %.preheader2986
  %lsr.iv8154.lcssa = phi i64 [ %lsr.iv8154, %.preheader2986 ]
  %lsr.iv8154.lcssa.a = phi i64 [ %lsr.iv8154.a, %.preheader2986 ] ; 0 uses
  %i.ekd = add i64 %lsr.iv8154.lcssa, -3
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.critedge.loopexitsplit, %.preheader2986..critedge.loopexit_crit_edge
end_hunk_5
