inline.NumInlined: 62
inline.NumDeleted: 14
begin_hunk_0_@lookup_translation:bb.a
  %lsr.iv107 = phi ptr [ %1, %bb.a ], [ %scevgep, %.thread ] ; 13 uses
  %lsr.iv = phi i64 [ %2, %bb.a ], [ %lsr.iv.next, %.thread ]
  %.04884 = phi i64 [ 0, %bb.a ], [ %i.am, %.thread ] ; 2 uses
  %i.h = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %.04884 ; 3 uses
  %scevgep114.a = getelementptr i8, ptr %lsr.iv107, i64 4
  %i.i = load i32, ptr %scevgep114.a, align 4, !tbaa !25 ; 2 uses
  %i.j = icmp eq i32 %i.i, -1                     ; 2 uses
end_hunk_0
begin_hunk_1_@lookup_translation:bb.a

..loopexit.loopexit_crit_edge:                    ; preds = %bb.v
  %lsr.iv107.lcssa117 = phi ptr [ %lsr.iv107, %bb.v ]
  %split = phi ptr [ %i.h, %bb.v ]                ; 0 uses
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexitsplit, %..loopexit.loopexit_crit_edge
end_hunk_1
