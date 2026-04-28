inline.NumInlined: 3419
inline.NumDeleted: 948
begin_hunk_0_@_ZN11OpenImageIO4v3_18DDSInput13seek_subimageEii:bb.a
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %spec.store.select127134.epil.init = phi i32 [ %i.ah, %.lr.ph.preheader ], [ %spec.store.select.1, %._crit_edge.loopexit.unr-lcssa ]
  %spec.store.select5129133.epil.init = phi i32 [ %i.aj, %.lr.ph.preheader ], [ %spec.store.select.1.a, %._crit_edge.loopexit.unr-lcssa ]
  %spec.store.select2131132.epil.init = phi i32 [ %i.al, %.lr.ph.preheader ], [ %spec.store.select2.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod183 = trunc i32 %i.an to i1
  tail call void @llvm.assume(i1 %lcmp.mod183)
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_18DDSInput13seek_subimageEii:bb.a

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.i
  %i.as = phi i32 [ %i.al, %bb.i ], [ %spec.store.select2.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.store.select2.epil, %.lr.ph.epil.preheader ] ; 4 uses
  %spec.store.select5129.lcssa = phi i32 [ %i.aj, %bb.i ], [ %spec.store.select.1.a, %._crit_edge.loopexit.unr-lcssa ], [ %spec.store.select5.epil, %.lr.ph.epil.preheader ] ; 4 uses
  %spec.store.select127.lcssa = phi i32 [ %i.ah, %bb.i ], [ %spec.store.select.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.store.select.epil, %.lr.ph.epil.preheader ] ; 4 uses
  store i32 %spec.store.select127.lcssa, ptr %i.b, align 4
  store i32 %spec.store.select5129.lcssa, ptr %i.c, align 4
  store i32 %i.as, ptr %i.d, align 4
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_18DDSInput13seek_subimageEii:bb.a
  br label %bb.q

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %spec.store.select127134 = phi i32 [ %i.ah, %.lr.ph.preheader.new ], [ %spec.store.select.1, %.lr.ph ]
  %spec.store.select5129133 = phi i32 [ %i.aj, %.lr.ph.preheader.new ], [ %spec.store.select.1.a, %.lr.ph ]
  %spec.store.select2131132 = phi i32 [ %i.al, %.lr.ph.preheader.new ], [ %spec.store.select2.1, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.co = lshr i32 %spec.store.select127134, 2
  %spec.store.select.1 = tail call i32 @llvm.umax.i32(i32 %i.co, i32 1) ; 3 uses
  %i.cp = lshr i32 %spec.store.select5129133, 2
  %spec.store.select.1.a = tail call i32 @llvm.umax.i32(i32 %i.cp, i32 1) ; 3 uses
  %19 = lshr i32 %spec.store.select2131132, 2
  %spec.store.select2.1 = tail call i32 @llvm.umax.i32(i32 %19, i32 1) ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !137
end_hunk_2
