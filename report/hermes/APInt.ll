inline.NumInlined: 1495
inline.NumDeleted: 233
begin_hunk_0_@_ZN4llvh5APInt6divideEPKmjS2_jPmS3_:bb.a

.lr.ph187:                                        ; preds = %.lr.ph187.preheader, %bb.j
  %indvars.iv219 = phi i64 [ %i.ep, %.lr.ph187.preheader ], [ %i.es, %bb.j ] ; 2 uses
  %.1142186 = phi i32 [ %.0141.lcssa, %.lr.ph187.preheader ], [ %i.ex, %bb.j ] ; 3 uses
  %i.es = add nsw i64 %indvars.iv219, -1          ; 2 uses
  %i.et = shl nsw i64 %indvars.iv219, 2
  %scevgep476 = getelementptr i8, ptr %scevgep475, i64 %i.et
end_hunk_0
begin_hunk_1_@_ZN4llvh5APInt6divideEPKmjS2_jPmS3_:bb.a
  br i1 %i.ev, label %bb.j, label %.lr.ph187..critedge2.loopexit_crit_edge

.critedge2.loopexitsplit:                         ; preds = %bb.j
  %.1142.lcssa.ph.ph = phi i32 [ %i.eq, %bb.j ]
  br label %.critedge2.loopexit

.lr.ph187..critedge2.loopexit_crit_edge:          ; preds = %.lr.ph187
  %.1142186.lcssa = phi i32 [ %.1142186, %.lr.ph187 ]
  %.1142186.lcssa.a = phi i32 [ %.1142186, %.lr.ph187 ] ; 0 uses
  br label %.critedge2.loopexit

.critedge2.loopexit:                              ; preds = %.critedge2.loopexitsplit, %.lr.ph187..critedge2.loopexit_crit_edge
  %.1142.lcssa.ph = phi i32 [ %.1142186.lcssa, %.lr.ph187..critedge2.loopexit_crit_edge ], [ %.1142.lcssa.ph.ph, %.critedge2.loopexitsplit ]
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.critedge
end_hunk_1
begin_hunk_2_@_ZN4llvh5APInt14tcFullMultiplyEPmPKmS3_jj:bb.a
  br i1 %i.a, label %tailrecurse, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %.tr21.lcssa28 = phi ptr [ %.tr21, %tailrecurse ]
  %.tr22.lcssa = phi ptr [ %.tr22, %tailrecurse ]
  %.tr23.lcssa = phi i32 [ %.tr23, %tailrecurse ] ; 2 uses
  %.tr24.lcssa = phi i32 [ %.tr24, %tailrecurse ] ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN4llvh5APInt14tcFullMultiplyEPmPKmS3_jj:bb.a
bb.c:                                             ; preds = %.lr.ph, %bb.c
  %lsr.iv = phi i64 [ 0, %.lr.ph ], [ %lsr.iv.next, %bb.c ] ; 3 uses
  %scevgep = getelementptr i8, ptr %0, i64 %lsr.iv
  %scevgep28 = getelementptr i8, ptr %.tr21.lcssa28, i64 %lsr.iv
  %i.h = load i64, ptr %scevgep28, align 8, !tbaa !10
  %i.i = tail call noundef i32 @_ZN4llvh5APInt14tcMultiplyPartEPmPKmmmjjb(ptr noundef nonnull %scevgep, ptr noundef %.tr22.lcssa, i64 noundef %i.h, i64 noundef 0, i32 noundef %.tr24.lcssa, i32 noundef %i.f, i1 noundef zeroext true) ; 0 uses
  %lsr.iv.next = add nuw nsw i64 %lsr.iv, 8       ; 2 uses
end_hunk_3
