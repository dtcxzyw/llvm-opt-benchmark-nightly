Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/louds-trie?download=true
inline.NumInlined: 1936
inline.NumDeleted: 713
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZSt17__rotate_adaptiveIPN6marisa8grimoire4trie13WeightedRangeES4_lET_S5_S5_S5_T1_S6_T0_S6_:bb.a
  %i.ad = icmp eq i64 %i.s, 16
  br i1 %i.ad, label %bb.x, label %_ZSt13move_backwardIPN6marisa8grimoire4trie13WeightedRangeES4_ET0_T_S6_S5_.exit39

bb.x:                                             ; preds = %bb.w
  %i.ae = getelementptr inbounds i8, ptr %2, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ae, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !202
  br label %_ZSt13move_backwardIPN6marisa8grimoire4trie13WeightedRangeES4_ET0_T_S6_S5_.exit39

_ZSt13move_backwardIPN6marisa8grimoire4trie13WeightedRangeES4_ET0_T_S6_S5_.exit39: ; preds = %bb.v, %bb.w, %bb.x
  %i.af = sub nsw i64 0, %i.z
  %i.ag = getelementptr inbounds [16 x i8], ptr %2, i64 %i.af
  br label %_ZNSt3_V26rotateIPN6marisa8grimoire4trie13WeightedRangeEEET_S6_S6_S6_.exit

bb.y:                                             ; preds = %bb.m
  %i.ah = icmp eq ptr %0, %1
  br i1 %i.ah, label %_ZNSt3_V26rotateIPN6marisa8grimoire4trie13WeightedRangeEEET_S6_S6_S6_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ai = icmp eq ptr %2, %1
  br i1 %i.ai, label %_ZNSt3_V26rotateIPN6marisa8grimoire4trie13WeightedRangeEEET_S6_S6_S6_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aj = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ak = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 4                 ; 2 uses
  %i.an = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ao = sub i64 %i.an, %i.ak
  %i.ap = ashr exact i64 %i.ao, 4                 ; 3 uses
  %i.aq = sub nsw i64 %i.am, %i.ap
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i.i, label %bb.ab

.lr.ph.i.i.i:                                     ; preds = %bb.aa, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %1, %bb.aa ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %0, %bb.aa ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %.079.i.i.i, i64 16, i1 false), !tbaa.struct !202
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.079.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.010.i.i.i, i64 16, i1 false), !tbaa.struct !202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.010.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !202
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.as = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 16
  %.not.i.i.i = icmp eq ptr %i.as, %1
  br i1 %.not.i.i.i, label %_ZNSt3_V26rotateIPN6marisa8grimoire4trie13WeightedRangeEEET_S6_S6_S6_.exit, label %.lr.ph.i.i.i, !llvm.loop !13

bb.ab:                                            ; preds = %bb.aa
  %i.au = sub i64 %i.aj, %i.an
  %i.av = getelementptr inbounds i8, ptr %0, i64 %i.au ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.backedge, %bb.ab
  %.070.i.i = phi i64 [ %i.am, %bb.ab ], [ %.070.i.i.be, %.backedge ] ; 5 uses
  %.066.i.i = phi i64 [ %i.ap, %bb.ab ], [ %.066.i.i.be, %.backedge ] ; 12 uses
  %.041.i.i = phi ptr [ %0, %bb.ab ], [ %.041.i.i.be, %.backedge ] ; 7 uses
  %i.aw = sub nsw i64 %.070.i.i, %.066.i.i        ; 8 uses
  %i.ax = icmp slt i64 %.066.i.i, %i.aw
  br i1 %i.ax, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ay = icmp sgt i64 %i.aw, 0
  br i1 %i.ay, label %.lr.ph89.preheader.i.i, label %._crit_edge90.i.i

.lr.ph89.preheader.i.i:                           ; preds = %bb.ad
  %i.az = getelementptr inbounds [16 x i8], ptr %.041.i.i, i64 %.066.i.i ; 2 uses
  %.neg = add i64 %.066.i.i, 1
  %xtraiter63 = and i64 %i.aw, 1
  %i.ba = icmp eq i64 %.070.i.i, %.neg
  br i1 %i.ba, label %.lr.ph89.i.i.epil.preheader, label %.lr.ph89.preheader.i.i.new

.lr.ph89.preheader.i.i.new:                       ; preds = %.lr.ph89.preheader.i.i
  %unroll_iter67 = and i64 %i.aw, 9223372036854775806
  br label %.lr.ph89.i.i

._crit_edge90.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph89.i.i
  %lcmp.mod64.not = icmp eq i64 %xtraiter63, 0
  br i1 %lcmp.mod64.not, label %._crit_edge90.i.i, label %.lr.ph89.i.i.epil.preheader

.lr.ph89.i.i.epil.preheader:                      ; preds = %._crit_edge90.i.i.loopexit.unr-lcssa, %.lr.ph89.preheader.i.i
  %.04086.i.i.epil.init = phi ptr [ %i.az, %.lr.ph89.preheader.i.i ], [ %i.bg, %._crit_edge90.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.185.i.i.epil.init = phi ptr [ %.041.i.i, %.lr.ph89.preheader.i.i ], [ %i.bf, %._crit_edge90.i.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod66 = trunc i64 %i.aw to i1
  tail call void @llvm.assume(i1 %lcmp.mod66)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %.185.i.i.epil.init, i64 16, i1 false), !tbaa.struct !202
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.185.i.i.epil.init, ptr noundef nonnull align 4 dereferenceable(16) %.04086.i.i.epil.init, i64 16, i1 false), !tbaa.struct !202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.04086.i.i.epil.init, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !202
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bb = getelementptr inbounds nuw i8, ptr %.185.i.i.epil.init, i64 16
  br label %._crit_edge90.i.i

._crit_edge90.i.i:                                ; preds = %.lr.ph89.i.i.epil.preheader, %._crit_edge90.i.i.loopexit.unr-lcssa, %bb.ad
  %.1.lcssa.i.i = phi ptr [ %.041.i.i, %bb.ad ], [ %i.bf, %._crit_edge90.i.i.loopexit.unr-lcssa ], [ %i.bb, %.lr.ph89.i.i.epil.preheader ]
  %i.bc = srem i64 %.070.i.i, %.066.i.i           ; 2 uses
  %.not53.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not53.i.i, label %_ZNSt3_V26rotateIPN6marisa8grimoire4trie13WeightedRangeEEET_S6_S6_S6_.exit, label %bb.ae

.lr.ph89.i.i:                                     ; preds = %.lr.ph89.i.i, %.lr.ph89.preheader.i.i.new
  %.04086.i.i = phi ptr [ %i.az, %.lr.ph89.preheader.i.i.new ], [ %i.bg, %.lr.ph89.i.i ] ; 4 uses
  %.185.i.i = phi ptr [ %.041.i.i, %.lr.ph89.preheader.i.i.new ], [ %i.bf, %.lr.ph89.i.i ] ; 4 uses
  %niter68 = phi i64 [ 0, %.lr.ph89.preheader.i.i.new ], [ %niter68.next.1, %.lr.ph89.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %.185.i.i, i64 16, i1 false), !tbaa.struct !202
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.185.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.04086.i.i, i64 16, i1 false), !tbaa.struct !202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.04086.i.i, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !202
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bd = getelementptr inbounds nuw i8, ptr %.185.i.i, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.04086.i.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %i.bd, i64 16, i1 false), !tbaa.struct !202
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bd, ptr noundef nonnull align 4 dereferenceable(16) %i.be, i64 16, i1 false), !tbaa.struct !202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.be, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !202
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bf = getelementptr inbounds nuw i8, ptr %.185.i.i, i64 32 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.04086.i.i, i64 32 ; 2 uses
  %niter68.next.1 = add i64 %niter68, 2           ; 2 uses
  %niter68.ncmp.1 = icmp eq i64 %niter68.next.1, %unroll_iter67
  br i1 %niter68.ncmp.1, label %._crit_edge90.i.i.loopexit.unr-lcssa, label %.lr.ph89.i.i, !llvm.loop !14

bb.ae:                                            ; preds = %._crit_edge90.i.i
  %i.bh = sub nsw i64 %.066.i.i, %i.bc
  br label %.backedge

bb.af:                                            ; preds = %bb.ac
  %i.bi = getelementptr inbounds [16 x i8], ptr %.041.i.i, i64 %.070.i.i ; 3 uses
  %i.bj = sub i64 0, %i.aw
  %i.bk = getelementptr inbounds [16 x i8], ptr %i.bi, i64 %i.bj ; 3 uses
  %i.bl = icmp sgt i64 %.066.i.i, 0
  br i1 %i.bl, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.af
  %xtraiter = and i64 %.066.i.i, 1
  %i.bm = icmp eq i64 %.066.i.i, 1
  br i1 %i.bm, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %.066.i.i, 9223372036854775806
  br label %.lr.ph.i.i

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.03883.i.i.epil.init = phi ptr [ %i.bi, %.lr.ph.i.i.preheader ], [ %i.bt, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.282.i.i.epil.init = phi ptr [ %i.bk, %.lr.ph.i.i.preheader ], [ %i.bs, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod62 = trunc i64 %.066.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.bn = getelementptr inbounds i8, ptr %.282.i.i.epil.init, i64 -16 ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %.03883.i.i.epil.init, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !202
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bn, ptr noundef nonnull align 4 dereferenceable(16) %i.bo, i64 16, i1 false), !tbaa.struct !202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bo, ptr noundef nonnull align 4 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !202
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.epil.preheader, %._crit_edge.i.i.loopexit.unr-lcssa, %bb.af
  %.2.lcssa.i.i = phi ptr [ %i.bk, %bb.af ], [ %.041.i.i, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %.041.i.i, %.lr.ph.i.i.epil.preheader ]
  %i.bp = srem i64 %.070.i.i, %i.aw               ; 2 uses
  %.not.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i, label %_ZNSt3_V26rotateIPN6marisa8grimoire4trie13WeightedRangeEEET_S6_S6_S6_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge.i.i, %bb.ae
  %.070.i.i.be = phi i64 [ %.066.i.i, %bb.ae ], [ %i.aw, %._crit_edge.i.i ]
  %.066.i.i.be = phi i64 [ %i.bh, %bb.ae ], [ %i.bp, %._crit_edge.i.i ]
  %.041.i.i.be = phi ptr [ %.1.lcssa.i.i, %bb.ae ], [ %.2.lcssa.i.i, %._crit_edge.i.i ]
  br label %bb.ac, !llvm.loop !15

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.03883.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.preheader.new ], [ %i.bt, %.lr.ph.i.i ] ; 2 uses
  %.282.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.preheader.new ], [ %i.bs, %.lr.ph.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.bq = getelementptr inbounds i8, ptr %.282.i.i, i64 -16 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %.03883.i.i, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %i.bq, i64 16, i1 false), !tbaa.struct !202
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bq, ptr noundef nonnull align 4 dereferenceable(16) %i.br, i64 16, i1 false), !tbaa.struct !202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.br, ptr noundef nonnull align 4 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !202
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.bs = getelementptr inbounds i8, ptr %.282.i.i, i64 -32 ; 4 uses
  %i.bt = getelementptr inbounds i8, ptr %.03883.i.i, i64 -32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %i.bs, i64 16, i1 false), !tbaa.struct !202
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bs, ptr noundef nonnull align 4 dereferenceable(16) %i.bt, i64 16, i1 false), !tbaa.struct !202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bt, ptr noundef nonnull align 4 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !202
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !16

_ZNSt3_V26rotateIPN6marisa8grimoire4trie13WeightedRangeEEET_S6_S6_S6_.exit: ; preds = %._crit_edge.i.i, %._crit_edge90.i.i, %.lr.ph.i.i.i, %bb.z, %bb.y, %bb.n, %bb.b, %_ZSt13move_backwardIPN6marisa8grimoire4trie13WeightedRangeES4_ET0_T_S6_S5_.exit39, %_ZSt4moveIPN6marisa8grimoire4trie13WeightedRangeES4_ET0_T_S6_S5_.exit36
  %.0 = phi ptr [ %i.p, %_ZSt4moveIPN6marisa8grimoire4trie13WeightedRangeES4_ET0_T_S6_S5_.exit36 ], [ %2, %bb.n ], [ %i.ag, %_ZSt13move_backwardIPN6marisa8grimoire4trie13WeightedRangeES4_ET0_T_S6_S5_.exit39 ], [ %0, %bb.b ], [ %0, %bb.z ], [ %2, %bb.y ], [ %1, %.lr.ph.i.i.i ], [ %i.av, %._crit_edge90.i.i ], [ %i.av, %._crit_edge.i.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire6vector10FlatVector6build_ERKNS1_6VectorIjEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !72   ; 7 uses
  %.not58 = icmp eq i64 %i.b, 0
  br i1 %.not58, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !169  ; 2 uses
  %min.iters.check = icmp ult i64 %i.b, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.b, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.g, %vector.body ]
  %vec.phi73 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.h, %vector.body ]
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load = load <4 x i32>, ptr %i.e, align 4, !tbaa !73
  %wide.load74 = load <4 x i32>, ptr %i.f, align 4, !tbaa !73
  %i.g = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.h = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load74, <4 x i32> %vec.phi73) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !329

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.g, <4 x i32> %i.h)
  %i.j = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.03047.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.03146.ph = phi i32 [ 0, %.lr.ph ], [ %i.j, %middle.block ]
  br label %scalar.ph

.preheader:                                       ; preds = %scalar.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.j, %middle.block ], [ %spec.select, %scalar.ph ] ; 2 uses
  %.not49 = icmp eq i32 %spec.select.lcssa, 0
  br i1 %.not49, label %._crit_edge.thread, label %._crit_edge

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03047 = phi i64 [ %i.m, %scalar.ph ], [ %.03047.ph, %scalar.ph.preheader ] ; 2 uses
  %.03146 = phi i32 [ %spec.select, %scalar.ph ], [ %.03146.ph, %scalar.ph.preheader ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.03047
  %i.l = load i32, ptr %i.k, align 4, !tbaa !73
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.l, i32 %.03146) ; 2 uses
  %i.m = add nuw i64 %.03047, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %i.b
  br i1 %exitcond.not, label %.preheader, label %scalar.ph, !llvm.loop !330

._crit_edge.thread:                               ; preds = %.preheader, %bb.a
  %2 = icmp ne i64 %i.b, 0                        ; 3 uses
  %i.n = zext i1 %2 to i64                        ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !87
  %.not.i.i33 = icmp ult i64 %i.p, %i.n
  br i1 %.not.i.i33, label %bb.c, label %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i34

._crit_edge:                                      ; preds = %.preheader
  %i.q = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.lcssa, i1 true) ; 2 uses
  %i.r = sub nuw nsw i32 32, %i.q
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = mul i64 %i.b, %i.s
  %i.u = add i64 %i.t, 63                         ; 2 uses
  %i.v = lshr i64 %i.u, 6                         ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !87   ; 3 uses
  %.not.i.i = icmp ugt i64 %i.v, %i.x
  br i1 %.not.i.i, label %bb.b, label %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i

bb.b:                                             ; preds = %._crit_edge
  %i.y = lshr i64 %i.u, 7
  %i.z = icmp samesign ugt i64 %i.x, %i.y
  %i.aa = shl nuw nsw i64 %i.x, 1
  %.0.i.i = select i1 %i.z, i64 %i.aa, i64 %i.v   ; 2 uses
  %i.ab = shl nuw nsw i64 %.0.i.i, 3
  %i.ac = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #22 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !88
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !86
  %i.ah = shl i64 %i.ag, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr align 8 %i.ae, i64 %i.ah, i1 false)
  %i.ai = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.ai) #20
  br label %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i

_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i, %bb.b
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !88
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ac, ptr %i.aj, align 8, !tbaa !89
  store i64 %.0.i.i, ptr %i.w, align 8, !tbaa !87
  br label %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i

_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i: ; preds = %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i, %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !86 ; 3 uses
  %i.am = icmp ugt i64 %i.v, %i.al
  br i1 %i.am, label %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.loopexit, label %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit

_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.loopexit: ; preds = %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i
  %i.an = sub nuw nsw i64 %i.v, %i.al
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !88
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.al
  %.idx.i.i.i = shl nuw nsw i64 %i.an, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aq, i8 0, i64 %.idx.i.i.i, i1 false), !tbaa !54
  br label %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit

_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit: ; preds = %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.loopexit, %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i
  store i64 %i.v, ptr %i.ak, align 8, !tbaa !86
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.s, ptr %i.ar, align 8, !tbaa !40
  %i.as = lshr i32 -1, %i.q
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.as, ptr %i.at, align 8, !tbaa !41
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.thread
  %i.au = select i1 %2, i64 8, i64 0
  %i.av = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.au) #22 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !88
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !86
  %i.ba = shl i64 %i.az, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.ax, i64 %i.ba, i1 false)
  %i.bb = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  store ptr %i.av, ptr %0, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i40 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i.i40, label %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i42, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i41

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i41: ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.bb) #20
  br label %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i42

_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i42: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i41, %bb.c
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !88
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.bc, align 8, !tbaa !89
  store i64 %i.n, ptr %i.o, align 8, !tbaa !87
  br label %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i34

_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i34: ; preds = %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i42, %._crit_edge.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !86
  %i.bf = icmp ult i64 %i.be, %i.n
  br i1 %i.bf, label %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit43.loopexit, label %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit43

_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit43.loopexit: ; preds = %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i34
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !88
  %.idx.i.i.i35 = select i1 %2, i64 8, i64 0
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bh, i8 0, i64 %.idx.i.i.i35, i1 false), !tbaa !54
  br label %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit43

_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit43: ; preds = %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit43.loopexit, %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i34
  store i64 %i.n, ptr %i.bd, align 8, !tbaa !86
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.bi, align 8, !tbaa !40
  br label %bb.d

bb.d:                                             ; preds = %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit43, %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !72  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !42
  %.not59 = icmp eq i64 %i.bj, 0
  br i1 %.not59, label %._crit_edge57, label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !169
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !41 ; 2 uses
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !88
  br label %bb.e

._crit_edge57:                                    ; preds = %_ZN6marisa8grimoire6vector10FlatVector3setEmj.exit, %bb.d
  ret void

bb.e:                                             ; preds = %.lr.ph56, %_ZN6marisa8grimoire6vector10FlatVector3setEmj.exit
  %.054 = phi i64 [ 0, %.lr.ph56 ], [ %i.ct, %_ZN6marisa8grimoire6vector10FlatVector3setEmj.exit ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.054
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !73
  %i.bv = load i64, ptr %i.bn, align 8, !tbaa !40
  %i.bw = mul i64 %i.bv, %.054                    ; 2 uses
  %i.bx = lshr i64 %i.bw, 6
  %i.by = and i64 %i.bw, 63                       ; 4 uses
  %i.bz = shl i64 %i.bq, %i.by
  %i.ca = xor i64 %i.bz, -1
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bx ; 3 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !54
  %i.cd = and i64 %i.cc, %i.ca
  %i.ce = and i32 %i.bp, %i.bu
  %i.cf = zext i32 %i.ce to i64                   ; 2 uses
  %i.cg = shl i64 %i.cf, %i.by
  %i.ch = or i64 %i.cd, %i.cg
  store i64 %i.ch, ptr %i.cb, align 8, !tbaa !54
  %i.ci = load i64, ptr %i.bn, align 8, !tbaa !40
  %i.cj = add i64 %i.ci, %i.by
  %i.ck = icmp ugt i64 %i.cj, 64
  br i1 %i.ck, label %bb.f, label %_ZN6marisa8grimoire6vector10FlatVector3setEmj.exit

bb.f:                                             ; preds = %bb.e
  %i.cl = sub nuw nsw i64 64, %i.by               ; 2 uses
  %i.cm = lshr i64 %i.bq, %i.cl
  %i.cn = xor i64 %i.cm, -1
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !54
  %i.cq = and i64 %i.cp, %i.cn
  %i.cr = lshr i64 %i.cf, %i.cl
  %i.cs = or i64 %i.cq, %i.cr
  store i64 %i.cs, ptr %i.co, align 8, !tbaa !54
  br label %_ZN6marisa8grimoire6vector10FlatVector3setEmj.exit

_ZN6marisa8grimoire6vector10FlatVector3setEmj.exit: ; preds = %bb.e, %bb.f
  %i.ct = add nuw i64 %.054, 1                    ; 2 uses
  %i.cu = load i64, ptr %i.a, align 8, !tbaa !72
  %i.cv = icmp ult i64 %i.ct, %i.cu
  br i1 %i.cv, label %bb.e, label %._crit_edge57, !llvm.loop !331
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIPSt4pairIjjElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph21

.lr.ph:                                           ; preds = %.lr.ph21
  %i.f = icmp eq i64 %i.g, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph21, !llvm.loop !332

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.015.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %i.h, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_RT0_(ptr noundef %0, ptr noundef %.015.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_RT0_(ptr noundef %0, ptr noundef %.015.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph21:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0121420 = phi i64 [ %i.g, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %.01519 = phi ptr [ %i.h, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.g = add nsw i64 %.0121420, -1                ; 3 uses
  %i.h = tail call noundef ptr @_ZSt27__unguarded_partition_pivotIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEET_S6_S6_T0_(ptr noundef %0, ptr noundef %.01519) ; 4 uses
  tail call void @_ZSt16__introsort_loopIPSt4pairIjjElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr noundef %i.h, ptr noundef %.01519, i64 noundef %i.g)
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.a
  %i.k = icmp sgt i64 %i.j, 128
  br i1 %i.k, label %.lr.ph, label %.loopexit, !llvm.loop !332

.loopexit:                                        ; preds = %.lr.ph21, %bb.a, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %indvar = phi i64 [ %indvar.next, %bb.g ], [ 0, %bb.b ] ; 2 uses
  %.020.i.idx = phi i64 [ %.020.i.add, %bb.g ], [ 8, %bb.b ] ; 3 uses
  %.pn19.i = phi ptr [ %.020.i.ptr, %bb.g ], [ %0, %bb.b ] ; 2 uses
  %.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.020.i.idx ; 7 uses
  %i.f = load i32, ptr %.020.i.ptr, align 4, !tbaa !78 ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !78     ; 2 uses
  %i.h = icmp ult i32 %i.f, %i.g
  br i1 %i.h, label %.lr.ph.i.i.i.i.i.preheader.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ult i32 %i.g, %i.f
  br i1 %i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i: ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !79
  %i.l = load i32, ptr %i.e, align 4, !tbaa !79
  %i.m = icmp ult i32 %i.k, %i.l
  br i1 %i.m, label %.lr.ph.i.i.i.i.i.preheader.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i
  %i.n = load i64, ptr %.020.i.ptr, align 4
  %i.o = lshr exact i64 %.020.i.idx, 3            ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 16 ; 2 uses
  %xtraiter66 = and i64 %i.o, 3                   ; 2 uses
  %lcmp.mod67.not = icmp eq i64 %xtraiter66, 0
  br i1 %lcmp.mod67.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.prol = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader.i ]
  %.069.i.i.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.078.i.i.i.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.prol ], [ %.020.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %prol.iter68 = phi i64 [ %prol.iter68.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ]
  %i.q = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !73
  store i32 %i.s, ptr %i.r, align 4, !tbaa !78
  %i.t = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !73
  %i.v = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -4
  store i32 %i.u, ptr %i.v, align 4, !tbaa !79
  %i.w = add nsw i64 %.010.i.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter68.next = add i64 %prol.iter68, 1     ; 2 uses
  %prol.iter68.cmp.not = icmp eq i64 %prol.iter68.next, %xtraiter66
  br i1 %prol.iter68.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !333

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.w, %.lr.ph.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %.020.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.x = icmp ult i64 %indvar, 3
  br i1 %i.x, label %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.y = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.z = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !73
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !78
  %i.ab = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !73
  %i.ad = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -4
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !79
  %i.ae = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.af = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !73
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !78
  %i.ah = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -12
end_hunk_0
