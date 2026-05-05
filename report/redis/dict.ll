inline.NumInlined: 146
inline.NumDeleted: 25
begin_hunk_0_@dictRehashMicroseconds:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.f, %bb.d ]     ; 3 uses
  %i.e = tail call i32 @dictRehash(ptr noundef %0, i32 noundef 100)
  %.not6 = icmp eq i32 %i.e, 0
  br i1 %.not6, label %..loopexit.loopexit_crit_edge, label %bb.d
end_hunk_0
begin_hunk_1_@dictRehashMicroseconds:bb.a
  br label %.loopexit.loopexit

..loopexit.loopexit_crit_edge:                    ; preds = %bb.c
  %.0.lcssa = phi i32 [ %.0, %bb.c ]
  %.0.lcssa.a = phi i32 [ %.0, %bb.c ]            ; 0 uses
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexitsplit, %..loopexit.loopexit_crit_edge
  %.05.ph = phi i32 [ %.0.lcssa, %..loopexit.loopexit_crit_edge ], [ %.lcssa, %.loopexit.loopexitsplit ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
end_hunk_1
begin_hunk_2_@dictCombineStats:vector.memcheck
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !114

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %scalar.ph.prol ]
  br i1 %found.conflict.not, label %.unr-lcssa, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.prol.loopexit
end_hunk_2
begin_hunk_3_@dictCombineStats:vector.memcheck
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %lsr.iv30 = phi i64 [ %lsr.iv.lcssa, %scalar.ph.preheader ], [ %lsr.iv.next31, %scalar.ph ] ; 13 uses
  %i.cw = shl i64 %lsr.iv30, 3
  %scevgep49 = getelementptr i8, ptr %i.u, i64 %i.cw
  %scevgep50 = getelementptr i8, ptr %scevgep49, i64 -24
end_hunk_3
begin_hunk_4_@dictGetStatsHt:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %dictGetNext.exit
  %lsr.iv = phi i64 [ 1, %bb.d ], [ %lsr.iv.next, %dictGetNext.exit ] ; 2 uses
  %lsr.iv.a = phi i64 [ 0, %bb.d ], [ %3, %dictGetNext.exit ]
  %.04147 = phi ptr [ %i.x, %bb.d ], [ %i.af, %dictGetNext.exit ] ; 2 uses
  %3 = add i64 %lsr.iv.a, 1                       ; 3 uses
  %i.ad = ptrtoint ptr %.04147 to i64
  %i.ae = and i64 %i.ad, 3
  %.not.i = icmp eq i64 %i.ae, 0
end_hunk_4
begin_hunk_5_@dictGetStatsHt:bb.a
dictGetNext.exit:                                 ; preds = %bb.e
  %i.af = load ptr, ptr %.04147, align 8, !tbaa !42 ; 2 uses
  %.not46 = icmp eq ptr %i.af, null
  %lsr.iv.next = add i64 %lsr.iv, 1
  br i1 %.not46, label %dictGetNext.exit.threadsplit, label %bb.e, !llvm.loop !124

dictGetNext.exit.threadsplit:                     ; preds = %dictGetNext.exit
  %lsr.iv.lcssa54 = phi i64 [ %3, %dictGetNext.exit ]
  br label %dictGetNext.exit.thread

.dictGetNext.exit.thread_crit_edge:               ; preds = %bb.e
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %bb.e ]
  %lsr.iv.lcssa.a = phi i64 [ %3, %bb.e ]         ; 0 uses
  br label %dictGetNext.exit.thread

dictGetNext.exit.thread:                          ; preds = %dictGetNext.exit.threadsplit, %.dictGetNext.exit.thread_crit_edge
  %.lcssa = phi i64 [ %lsr.iv.lcssa, %.dictGetNext.exit.thread_crit_edge ], [ %lsr.iv.lcssa54, %dictGetNext.exit.threadsplit ] ; 3 uses
  %i.ag = tail call i64 @llvm.umin.i64(i64 %.lcssa, i64 49)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ag ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !20
end_hunk_5
begin_hunk_6_@dictGetStats:bb.a
  br label %bb.e

bb.e:                                             ; preds = %dictGetNext.exit.i, %bb.d
  %lsr.iv = phi i64 [ %lsr.iv.next, %dictGetNext.exit.i ], [ 1, %bb.d ] ; 2 uses
  %lsr.iv.a = phi i64 [ 0, %bb.d ], [ %4, %dictGetNext.exit.i ]
  %.04147.i = phi ptr [ %i.t, %bb.d ], [ %i.ab, %dictGetNext.exit.i ] ; 2 uses
  %4 = add i64 %lsr.iv.a, 1                       ; 3 uses
  %i.z = ptrtoint ptr %.04147.i to i64
  %i.aa = and i64 %i.z, 3
  %.not.i.i = icmp eq i64 %i.aa, 0
end_hunk_6
begin_hunk_7_@dictGetStats:bb.a
dictGetNext.exit.i:                               ; preds = %bb.e
  %i.ab = load ptr, ptr %.04147.i, align 8, !tbaa !42 ; 2 uses
  %.not46.i = icmp eq ptr %i.ab, null
  %lsr.iv.next = add i64 %lsr.iv, 1
  br i1 %.not46.i, label %dictGetNext.exit.i.dictGetNext.exit.thread.i_crit_edge, label %bb.e, !llvm.loop !124

dictGetNext.exit.thread.isplit:                   ; preds = %bb.e
  %lsr.iv.lcssa = phi i64 [ %4, %bb.e ]
  br label %dictGetNext.exit.thread.i

dictGetNext.exit.i.dictGetNext.exit.thread.i_crit_edge: ; preds = %dictGetNext.exit.i
  %lsr.iv.lcssa50 = phi i64 [ %lsr.iv, %dictGetNext.exit.i ]
  %lsr.iv.lcssa50.a = phi i64 [ %4, %dictGetNext.exit.i ] ; 0 uses
  br label %dictGetNext.exit.thread.i, !llvm.loop !124

dictGetNext.exit.thread.i:                        ; preds = %dictGetNext.exit.thread.isplit, %dictGetNext.exit.i.dictGetNext.exit.thread.i_crit_edge
  %.lcssa49 = phi i64 [ %lsr.iv.lcssa50, %dictGetNext.exit.i.dictGetNext.exit.thread.i_crit_edge ], [ %lsr.iv.lcssa, %dictGetNext.exit.thread.isplit ] ; 3 uses
  %i.ac = tail call i64 @llvm.umin.i64(i64 %.lcssa49, i64 49)
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ac ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !20
end_hunk_7
begin_hunk_8_@dictGetStats:bb.a
  br label %bb.k

bb.k:                                             ; preds = %dictGetNext.exit.i35, %bb.j
  %lsr.iv52 = phi i64 [ %lsr.iv.next52, %dictGetNext.exit.i35 ], [ 1, %bb.j ] ; 2 uses
  %lsr.iv51 = phi i64 [ 0, %bb.j ], [ %5, %dictGetNext.exit.i35 ]
  %.04147.i30 = phi ptr [ %i.bl, %bb.j ], [ %i.bt, %dictGetNext.exit.i35 ] ; 2 uses
  %5 = add i64 %lsr.iv51, 1                       ; 3 uses
  %i.br = ptrtoint ptr %.04147.i30 to i64
  %i.bs = and i64 %i.br, 3
  %.not.i.i31 = icmp eq i64 %i.bs, 0
end_hunk_8
begin_hunk_9_@dictGetStats:bb.a
dictGetNext.exit.i35:                             ; preds = %bb.k
  %i.bt = load ptr, ptr %.04147.i30, align 8, !tbaa !42 ; 2 uses
  %.not46.i36 = icmp eq ptr %i.bt, null
  %lsr.iv.next52 = add i64 %lsr.iv52, 1
  br i1 %.not46.i36, label %dictGetNext.exit.i35.dictGetNext.exit.thread.i32_crit_edge, label %bb.k, !llvm.loop !124

dictGetNext.exit.thread.i32split:                 ; preds = %bb.k
  %lsr.iv51.lcssa = phi i64 [ %5, %bb.k ]
  br label %dictGetNext.exit.thread.i32

dictGetNext.exit.i35.dictGetNext.exit.thread.i32_crit_edge: ; preds = %dictGetNext.exit.i35
  %lsr.iv52.lcssa54 = phi i64 [ %lsr.iv52, %dictGetNext.exit.i35 ]
  %lsr.iv51.lcssa53 = phi i64 [ %5, %dictGetNext.exit.i35 ] ; 0 uses
  br label %dictGetNext.exit.thread.i32, !llvm.loop !124

dictGetNext.exit.thread.i32:                      ; preds = %dictGetNext.exit.thread.i32split, %dictGetNext.exit.i35.dictGetNext.exit.thread.i32_crit_edge
  %.lcssa = phi i64 [ %lsr.iv52.lcssa54, %dictGetNext.exit.i35.dictGetNext.exit.thread.i32_crit_edge ], [ %lsr.iv51.lcssa, %dictGetNext.exit.thread.i32split ] ; 3 uses
  %i.bu = tail call i64 @llvm.umin.i64(i64 %.lcssa, i64 49)
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.bu ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !20
end_hunk_9
