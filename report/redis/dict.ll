inline.NumInlined: 146
inline.NumDeleted: 25
begin_hunk_0_@dictGetSomeKeys:bb.a
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20
  %i.e = add i64 %i.d, %i.b
  %i.f = zext i32 %2 to i64
  %spec.select122 = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.f) ; 9 uses
  %i.g = mul nuw nsw i64 %spec.select122, 10
  %i.h = and i64 %i.g, 4294967294                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
end_hunk_0
begin_hunk_1_@dictGetSomeKeys:bb.a
bb.g:                                             ; preds = %bb.p
  %i.ah = add i64 %.5, 1
  %.not109 = icmp eq i64 %i.ai, 0
  br i1 %.not109, label %.critedge, label %.preheader124.preheader, !llvm.loop !97

.preheader124.preheader:                          ; preds = %.lr.ph143, %bb.g
  %.in = phi i64 [ %i.ai, %bb.g ], [ %i.h, %.lr.ph143 ]
end_hunk_1
begin_hunk_2_@dictGetSomeKeys:bb.a
  br i1 %.not112, label %.loopexit, label %.preheader, !llvm.loop !98

.loopexit:                                        ; preds = %dictGetNext.exit, %dictGetNext.exit.thread
  %i.bp = phi i64 [ %i.bm, %dictGetNext.exit.thread ], [ %i.bo, %dictGetNext.exit ] ; 3 uses
  %.not113 = icmp ult i64 %i.bp, %spec.select122
  br i1 %.not113, label %.thread, label %.critedge

.thread:                                          ; preds = %.loopexit, %bb.m, %bb.l, %bb.j, %bb.i
  %.591 = phi i64 [ %.187135, %bb.j ], [ %.187135, %bb.i ], [ %.187135, %bb.m ], [ %.187135, %bb.l ], [ %i.bp, %.loopexit ] ; 5 uses
  %.5 = phi i64 [ %.281, %bb.j ], [ %.180136, %bb.i ], [ %i.bd, %bb.m ], [ %.281, %bb.l ], [ %.281, %.loopexit ] ; 2 uses
  %.4 = phi i64 [ %.1137, %bb.j ], [ %.1137, %bb.i ], [ 0, %bb.m ], [ %i.bb, %bb.l ], [ 0, %.loopexit ] ; 2 uses
  br i1 %or.cond, label %.preheader124, label %bb.p, !llvm.loop !99
end_hunk_2
begin_hunk_3_@dictGetSomeKeys:bb.a
  %i.bq = icmp ult i64 %.591, %spec.select122
  br i1 %i.bq, label %bb.g, label %..critedge.loopexit148_crit_edge163, !llvm.loop !97

..critedge.loopexit148_crit_edge163:              ; preds = %bb.p
  br label %.critedge, !llvm.loop !97

.critedge:                                        ; preds = %bb.g, %.loopexit, %.lr.ph143, %..critedge.loopexit148_crit_edge163, %bb.f
  %.6 = phi i64 [ %i.bp, %.loopexit ], [ 0, %bb.f ], [ %.591, %..critedge.loopexit148_crit_edge163 ], [ 0, %.lr.ph143 ], [ %.591, %bb.g ]
  %3 = tail call i64 @llvm.umin.i64(i64 %.6, i64 %spec.select122)
  %i.br = trunc nuw i64 %3 to i32
  ret i32 %i.br
}

end_hunk_3
