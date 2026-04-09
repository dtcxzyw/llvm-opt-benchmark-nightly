inline.NumInlined: 239
inline.NumDeleted: 57
begin_hunk_0_@deque_index:bb.a
  %spec.store.select1.i = call i64 @llvm.smax.i64(i64 %i.z, i64 0)
  %.052.i = select i1 %i.y, i64 %spec.store.select1.i, i64 %i.p
  %spec.select68.i = call i64 @llvm.smin.i64(i64 %.052.i, i64 %.val66.i.pre) ; 3 uses
  %spec.select.i = call i64 @llvm.smin.i64(i64 %.045.i, i64 %spec.select68.i) ; 9 uses
  %i.aa = add i64 %spec.select.i, -64
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i.preheader, label %.preheader.i
end_hunk_0
begin_hunk_1_@deque_index:bb.a

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.04873.i.epil.init = phi ptr [ %i.r, %.lr.ph.i.preheader ], [ %i.bg, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod49 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod49)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.04873.i.epil = phi ptr [ %i.ah, %.lr.ph.i.epil ], [ %.04873.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ag = getelementptr i8, ptr %.04873.i.epil, i64 520
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !58 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.loopexit.i, label %.lr.ph.i.epil, !llvm.loop !93

.preheader.loopexit.i:                            ; preds = %.lr.ph.i.epil, %.preheader.i.loopexit.unr-lcssa
  %.lcssa = phi ptr [ %i.bg, %.preheader.i.loopexit.unr-lcssa ], [ %i.ah, %.lr.ph.i.epil ]
  %3 = add i64 %spec.select.i, -65
  %4 = and i64 %3, -64
  %5 = add nuw i64 %4, 64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %._crit_edge93.i
  %.055.lcssa.i = phi i64 [ 0, %._crit_edge93.i ], [ %5, %.preheader.loopexit.i ] ; 6 uses
  %.048.lcssa.i = phi ptr [ %i.r, %._crit_edge93.i ], [ %.lcssa, %.preheader.loopexit.i ] ; 3 uses
  %i.ai = icmp slt i64 %.055.lcssa.i, %spec.select.i
  br i1 %i.ai, label %.lr.ph78.i.preheader, label %._crit_edge.i

end_hunk_1
begin_hunk_2_@deque_index:bb.a
bb.h:                                             ; preds = %bb.g, %.lr.ph78.i.prol
  %.250.i.prol = phi ptr [ %i.an, %bb.g ], [ %.14976.i.prol, %.lr.ph78.i.prol ] ; 3 uses
  %.147.i.prol = phi i64 [ 0, %bb.g ], [ %i.ak, %.lr.ph78.i.prol ] ; 3 uses
  %i.ao = add nsw i64 %.15675.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter50
  br i1 %prol.iter.cmp.not, label %.lr.ph78.i.prol.loopexit, label %.lr.ph78.i.prol, !llvm.loop !94
end_hunk_2
begin_hunk_3_@deque_index:bb.a

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.04873.i = phi ptr [ %i.r, %.lr.ph.i.preheader.new ], [ %i.bg, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ar = getelementptr i8, ptr %.04873.i, i64 520
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !58
end_hunk_3
begin_hunk_4_@deque_index:bb.a
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !58
  %i.bf = getelementptr i8, ptr %i.be, i64 520
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !58 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7.not = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !95
end_hunk_4
begin_hunk_5_@deque_index:bb.a
bb.m:                                             ; preds = %bb.l, %.lr.ph78.i.3
  %.250.i.3 = phi ptr [ %i.bw, %bb.l ], [ %.250.i.2, %.lr.ph78.i.3 ] ; 2 uses
  %.147.i.3 = phi i64 [ 0, %bb.l ], [ %i.bt, %.lr.ph78.i.3 ] ; 2 uses
  %i.bx = add nsw i64 %.15675.i, 4                ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bx, %spec.select.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph78.i, !llvm.loop !96

end_hunk_5
