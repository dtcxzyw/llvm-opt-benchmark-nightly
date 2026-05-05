inline.NumInlined: 32
inline.NumDeleted: 8
begin_hunk_0_@prefixmatch:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.020 = phi i32 [ %i.p, %bb.d ], [ %i.i, %.lr.ph.preheader ] ; 2 uses
  %.01519 = phi i32 [ %i.o, %bb.d ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.k = zext nneg i32 %.020 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
end_hunk_0
begin_hunk_1_@prefixmatch:bb.a
  br i1 %exitcond.not, label %._crit_edge.loopexitsplit, label %.lr.ph, !llvm.loop !14

._crit_edge.loopexitsplit:                        ; preds = %bb.d
  br label %._crit_edge.loopexit

.lr.ph.._crit_edge.loopexit_crit_edge:            ; preds = %.lr.ph
  %.01519.lcssa.a = phi i32 [ %.01519, %.lr.ph ]
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexitsplit, %.lr.ph.._crit_edge.loopexit_crit_edge
  %.015.lcssa.ph = phi i32 [ %.01519.lcssa.a, %.lr.ph.._crit_edge.loopexit_crit_edge ], [ %i.j, %._crit_edge.loopexitsplit ]
  %i.q = and i32 %.015.lcssa.ph, 1
  %i.r = xor i32 %i.q, 1
  br label %._crit_edge
end_hunk_1
begin_hunk_2_@stringmatchlen_impl:bb.a
  br i1 %i.cp, label %.preheader, label %bb.b, !llvm.loop !21

.preheader:                                       ; preds = %bb.ae
  %.lcssa = phi i32 [ %i.co, %bb.ae ]
  %.not220277 = icmp eq i32 %.lcssa, 0
  br i1 %.not220277, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.cq = zext i32 %.7177 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.af
  %lsr.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %lsr.iv.next, %bb.af ] ; 2 uses
  %scevgep431 = getelementptr i8, ptr %.7, i64 %lsr.iv
  %i.cr = load i8, ptr %scevgep431, align 1, !tbaa !13
  %i.cs = icmp eq i8 %i.cr, 42
  br i1 %i.cs, label %bb.af, label %.loopexit.loopexit
end_hunk_2
begin_hunk_3_@fgets_async_signal_safe:bb.a
  br i1 %or.cond, label %..thread21.loopexit_crit_edge, label %.lr.ph, !llvm.loop !68

.thread21.loopexitsplit:                          ; preds = %.lr.ph
  br label %.thread21.loopexit

..thread21.loopexit_crit_edge:                    ; preds = %bb.b
  br label %.thread21.loopexit, !llvm.loop !68

.thread21.loopexit:                               ; preds = %.thread21.loopexitsplit, %..thread21.loopexit_crit_edge
  %.ph = phi ptr [ %0, %..thread21.loopexit_crit_edge ], [ null, %.thread21.loopexitsplit ]
  br label %.thread21

.thread21:                                        ; preds = %.thread21.loopexit, %bb.a
end_hunk_3
