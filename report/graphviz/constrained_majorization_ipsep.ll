Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/constrained_majorization_ipsep?download=true
inline.NumInlined: 9
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@stress_majorization_cola:bb.a

bb.ak:                                            ; preds = %.lr.ph592.split.split.split.us
  %i.gs = add nsw i32 %.1409589.us610, 1
  %i.gt = sext i32 %.1409589.us610 to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.gt
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !55
  br label %.lr.ph592.split.split.split.us.1

.lr.ph592.split.split.split.us.1:                 ; preds = %.lr.ph592.split.split.split.us, %bb.ak
  %.2.us611 = phi i32 [ %i.gs, %bb.ak ], [ %.1409589.us610, %.lr.ph592.split.split.split.us ] ; 3 uses
  %.0406.us612 = phi float [ %i.gv, %bb.ak ], [ 0.000000e+00, %.lr.ph592.split.split.split.us ]
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %indvars.iv778
  store float %.0406.us612, ptr %i.gw, align 4, !tbaa !55
  %i.gx = or disjoint i32 %.0405591.us608, 1
  %i.gy = icmp slt i32 %i.gx, %i.ek
  br i1 %i.gy, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph592.split.split.split.us.1
  %i.gz = add nsw i32 %.2.us611, 1
  %i.ha = sext i32 %.2.us611 to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.ha
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !55
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph592.split.split.split.us.1
  %.2.us611.1 = phi i32 [ %i.gz, %bb.al ], [ %.2.us611, %.lr.ph592.split.split.split.us.1 ] ; 3 uses
  %.0406.us612.1 = phi float [ %i.hc, %bb.al ], [ 0.000000e+00, %.lr.ph592.split.split.split.us.1 ]
  %indvars.iv.next779.1 = add nsw i64 %indvars.iv778, 2 ; 3 uses
  %i.hd = getelementptr [4 x i8], ptr %i.dy, i64 %indvars.iv778
  %i.he = getelementptr i8, ptr %i.hd, i64 4
  store float %.0406.us612.1, ptr %i.he, align 4, !tbaa !55
  %i.hf = add nuw nsw i32 %.0405591.us608, 2      ; 2 uses
  %niter1086.next.1 = add i32 %niter1086, 2       ; 2 uses
  %niter1086.ncmp.1 = icmp eq i32 %niter1086.next.1, %unroll_iter1085
  br i1 %niter1086.ncmp.1, label %._crit_edge593.loopexit706.loopexit.unr-lcssa, label %.lr.ph592.split.split.split.us, !llvm.loop !23

._crit_edge593.loopexit.unr-lcssa:                ; preds = %bb.ab
  %lcmp.mod1097.not = icmp eq i32 %xtraiter1095, 0
  br i1 %lcmp.mod1097.not, label %._crit_edge593.loopexit, label %.lr.ph592.split.split.us.epil.preheader

.lr.ph592.split.split.us.epil.preheader:          ; preds = %._crit_edge593.loopexit.unr-lcssa, %.lr.ph592.split.split.us.preheader
  %indvars.iv802.epil.init = phi i64 [ %i.em, %.lr.ph592.split.split.us.preheader ], [ %indvars.iv.next803.1, %._crit_edge593.loopexit.unr-lcssa ] ; 2 uses
  %.0405591.us598.epil.init = phi i32 [ 0, %.lr.ph592.split.split.us.preheader ], [ %i.fr, %._crit_edge593.loopexit.unr-lcssa ]
  %.1409589.us600.epil.init = phi i32 [ %.0408622, %.lr.ph592.split.split.us.preheader ], [ %.2.us602.1, %._crit_edge593.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1100 = trunc i32 %indvars.iv761 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1100)
  %i.hg = icmp slt i32 %.0405591.us598.epil.init, %i.ek
  br i1 %i.hg, label %bb.an, label %._crit_edge593.loopexit.epilog-lcssa

bb.an:                                            ; preds = %.lr.ph592.split.split.us.epil.preheader
  %i.hh = add nsw i32 %.1409589.us600.epil.init, 1
  %i.hi = sext i32 %.1409589.us600.epil.init to i64
  %i.hj = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.hi
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !55
  br label %._crit_edge593.loopexit.epilog-lcssa

._crit_edge593.loopexit.epilog-lcssa:             ; preds = %bb.an, %.lr.ph592.split.split.us.epil.preheader
  %.2.us602.epil = phi i32 [ %i.hh, %bb.an ], [ %.1409589.us600.epil.init, %.lr.ph592.split.split.us.epil.preheader ]
  %.0406.us603.epil = phi float [ %i.hk, %bb.an ], [ 0.000000e+00, %.lr.ph592.split.split.us.epil.preheader ]
  %indvars.iv.next803.epil = add nsw i64 %indvars.iv802.epil.init, 1
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %indvars.iv802.epil.init
  store float %.0406.us603.epil, ptr %i.hl, align 4, !tbaa !55
  br label %._crit_edge593.loopexit

._crit_edge593.loopexit:                          ; preds = %._crit_edge593.loopexit.unr-lcssa, %._crit_edge593.loopexit.epilog-lcssa
  %.2.us602.lcssa = phi i32 [ %.2.us602.1, %._crit_edge593.loopexit.unr-lcssa ], [ %.2.us602.epil, %._crit_edge593.loopexit.epilog-lcssa ]
  %indvars.iv.next803.lcssa = phi i64 [ %indvars.iv.next803.1, %._crit_edge593.loopexit.unr-lcssa ], [ %indvars.iv.next803.epil, %._crit_edge593.loopexit.epilog-lcssa ]
  %i.hm = trunc nsw i64 %indvars.iv.next803.lcssa to i32
  br label %._crit_edge593

._crit_edge593.loopexit705.loopexit.unr-lcssa:    ; preds = %bb.as
  %lcmp.mod1089.not = icmp eq i32 %xtraiter1087, 0
  br i1 %lcmp.mod1089.not, label %._crit_edge593.loopexit705, label %.lr.ph592.split.split.split.epil.preheader

.lr.ph592.split.split.split.epil.preheader:       ; preds = %._crit_edge593.loopexit705.loopexit.unr-lcssa, %.lr.ph592.split.split.split.preheader1066
  %indvars.iv790.epil.init = phi i64 [ %indvars.iv.next791.peel799, %.lr.ph592.split.split.split.preheader1066 ], [ %indvars.iv.next791.1, %._crit_edge593.loopexit705.loopexit.unr-lcssa ] ; 2 uses
  %.0405591.epil.init = phi i32 [ 2, %.lr.ph592.split.split.split.preheader1066 ], [ %i.ir, %._crit_edge593.loopexit705.loopexit.unr-lcssa ]
  %.1409589.epil.init = phi i32 [ %.2.peel797, %.lr.ph592.split.split.split.preheader1066 ], [ %.2.1, %._crit_edge593.loopexit705.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1092 = trunc i32 %i.ef to i1
  tail call void @llvm.assume(i1 %lcmp.mod1092)
  %i.hn = icmp slt i32 %.0405591.epil.init, %i.ek
  br i1 %i.hn, label %bb.ao, label %._crit_edge593.loopexit705.loopexit.epilog-lcssa

bb.ao:                                            ; preds = %.lr.ph592.split.split.split.epil.preheader
  %i.ho = add nsw i32 %.1409589.epil.init, 1
  %i.hp = sext i32 %.1409589.epil.init to i64
  %i.hq = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.hp
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !55
  br label %._crit_edge593.loopexit705.loopexit.epilog-lcssa

._crit_edge593.loopexit705.loopexit.epilog-lcssa: ; preds = %bb.ao, %.lr.ph592.split.split.split.epil.preheader
  %.2.epil = phi i32 [ %i.ho, %bb.ao ], [ %.1409589.epil.init, %.lr.ph592.split.split.split.epil.preheader ]
  %.0406.epil = phi float [ %i.hr, %bb.ao ], [ 0.000000e+00, %.lr.ph592.split.split.split.epil.preheader ]
  %indvars.iv.next791.epil = add nsw i64 %indvars.iv790.epil.init, 1
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %indvars.iv790.epil.init
  store float %.0406.epil, ptr %i.hs, align 4, !tbaa !55
  br label %._crit_edge593.loopexit705

._crit_edge593.loopexit705:                       ; preds = %._crit_edge593.loopexit705.loopexit.epilog-lcssa, %._crit_edge593.loopexit705.loopexit.unr-lcssa, %bb.aj, %bb.ah
  %.2.lcssa = phi i32 [ %.2.peel797, %bb.aj ], [ %.2.peel, %bb.ah ], [ %.2.1, %._crit_edge593.loopexit705.loopexit.unr-lcssa ], [ %.2.epil, %._crit_edge593.loopexit705.loopexit.epilog-lcssa ]
  %.lcssa720.wide = phi i64 [ %indvars.iv.next791.peel799, %bb.aj ], [ %indvars.iv.next791.peel, %bb.ah ], [ %indvars.iv.next791.1, %._crit_edge593.loopexit705.loopexit.unr-lcssa ], [ %indvars.iv.next791.epil, %._crit_edge593.loopexit705.loopexit.epilog-lcssa ]
  %i.ht = trunc nsw i64 %.lcssa720.wide to i32
  br label %._crit_edge593

._crit_edge593.loopexit706.loopexit.unr-lcssa:    ; preds = %bb.am
  %lcmp.mod1081.not = icmp eq i32 %xtraiter1079, 0
  br i1 %lcmp.mod1081.not, label %._crit_edge593.loopexit706, label %.lr.ph592.split.split.split.us.epil.preheader

.lr.ph592.split.split.split.us.epil.preheader:    ; preds = %._crit_edge593.loopexit706.loopexit.unr-lcssa, %.lr.ph592.split.split.split.us.preheader1067
  %indvars.iv778.epil.init = phi i64 [ %indvars.iv.next779.peel787, %.lr.ph592.split.split.split.us.preheader1067 ], [ %indvars.iv.next779.1, %._crit_edge593.loopexit706.loopexit.unr-lcssa ] ; 2 uses
  %.0405591.us608.epil.init = phi i32 [ 2, %.lr.ph592.split.split.split.us.preheader1067 ], [ %i.hf, %._crit_edge593.loopexit706.loopexit.unr-lcssa ]
  %.1409589.us610.epil.init = phi i32 [ %.2.us611.peel785, %.lr.ph592.split.split.split.us.preheader1067 ], [ %.2.us611.1, %._crit_edge593.loopexit706.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1084 = trunc i32 %i.ef to i1
  tail call void @llvm.assume(i1 %lcmp.mod1084)
  %i.hu = icmp slt i32 %.0405591.us608.epil.init, %i.ek
  br i1 %i.hu, label %bb.ap, label %._crit_edge593.loopexit706.loopexit.epilog-lcssa

bb.ap:                                            ; preds = %.lr.ph592.split.split.split.us.epil.preheader
  %i.hv = add nsw i32 %.1409589.us610.epil.init, 1
  %i.hw = sext i32 %.1409589.us610.epil.init to i64
  %i.hx = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.hw
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !55
  br label %._crit_edge593.loopexit706.loopexit.epilog-lcssa

._crit_edge593.loopexit706.loopexit.epilog-lcssa: ; preds = %bb.ap, %.lr.ph592.split.split.split.us.epil.preheader
  %.2.us611.epil = phi i32 [ %i.hv, %bb.ap ], [ %.1409589.us610.epil.init, %.lr.ph592.split.split.split.us.epil.preheader ]
  %.0406.us612.epil = phi float [ %i.hy, %bb.ap ], [ 0.000000e+00, %.lr.ph592.split.split.split.us.epil.preheader ]
  %indvars.iv.next779.epil = add nsw i64 %indvars.iv778.epil.init, 1
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %indvars.iv778.epil.init
  store float %.0406.us612.epil, ptr %i.hz, align 4, !tbaa !55
  br label %._crit_edge593.loopexit706

._crit_edge593.loopexit706:                       ; preds = %._crit_edge593.loopexit706.loopexit.epilog-lcssa, %._crit_edge593.loopexit706.loopexit.unr-lcssa, %bb.af, %bb.ad
  %.2.us611.lcssa = phi i32 [ %.2.us611.peel785, %bb.af ], [ %.2.us611.peel, %bb.ad ], [ %.2.us611.1, %._crit_edge593.loopexit706.loopexit.unr-lcssa ], [ %.2.us611.epil, %._crit_edge593.loopexit706.loopexit.epilog-lcssa ]
  %.lcssa719.wide = phi i64 [ %indvars.iv.next779.peel787, %bb.af ], [ %indvars.iv.next779.peel, %bb.ad ], [ %indvars.iv.next779.1, %._crit_edge593.loopexit706.loopexit.unr-lcssa ], [ %indvars.iv.next779.epil, %._crit_edge593.loopexit706.loopexit.epilog-lcssa ]
  %i.ia = trunc nsw i64 %.lcssa719.wide to i32
  br label %._crit_edge593

._crit_edge593.loopexit708:                       ; preds = %.lr.ph592.split.us.split, %middle.block1017, %.lr.ph592.split.us.split.peel.next, %.lr.ph592.split.us.split.preheader
  %.lcssa717.wide = phi i64 [ %indvars.iv.next759.peel769, %.lr.ph592.split.us.split.peel.next ], [ %indvars.iv.next759.peel, %.lr.ph592.split.us.split.preheader ], [ %i.eq, %middle.block1017 ], [ %indvars.iv.next759, %.lr.ph592.split.us.split ]
  %i.ib = trunc nsw i64 %.lcssa717.wide to i32
  br label %._crit_edge593

._crit_edge593:                                   ; preds = %._crit_edge593.loopexit708, %.lr.ph592.split.us.split.us.preheader, %._crit_edge593.loopexit706, %._crit_edge593.loopexit705, %._crit_edge593.loopexit, %.preheader550
  %.1409.lcssa = phi i32 [ %.0408622, %.preheader550 ], [ %.2.us611.lcssa, %._crit_edge593.loopexit706 ], [ %.0408622, %.lr.ph592.split.us.split.us.preheader ], [ %.2.us602.lcssa, %._crit_edge593.loopexit ], [ %.2.lcssa, %._crit_edge593.loopexit705 ], [ %.0408622, %._crit_edge593.loopexit708 ]
  %.1.lcssa = phi i32 [ %.0407623, %.preheader550 ], [ %i.ia, %._crit_edge593.loopexit706 ], [ %i.ez, %.lr.ph592.split.us.split.us.preheader ], [ %i.hm, %._crit_edge593.loopexit ], [ %i.ht, %._crit_edge593.loopexit705 ], [ %i.ib, %._crit_edge593.loopexit708 ]
  %i.ic = add nuw nsw i32 %.6621, 1               ; 2 uses
  %indvars.iv.next762 = add i32 %indvars.iv761, -1
  %indvars.iv.next775 = add i32 %indvars.iv774, -1
  %exitcond806.not = icmp eq i32 %i.ic, %i.dk
  br i1 %exitcond806.not, label %._crit_edge624, label %.preheader550, !llvm.loop !24

.lr.ph592.split.split.split:                      ; preds = %bb.as, %.lr.ph592.split.split.split.preheader1066.new
  %indvars.iv790 = phi i64 [ %indvars.iv.next791.peel799, %.lr.ph592.split.split.split.preheader1066.new ], [ %indvars.iv.next791.1, %bb.as ] ; 3 uses
  %.0405591 = phi i32 [ 2, %.lr.ph592.split.split.split.preheader1066.new ], [ %i.ir, %bb.as ] ; 3 uses
  %.1409589 = phi i32 [ %.2.peel797, %.lr.ph592.split.split.split.preheader1066.new ], [ %.2.1, %bb.as ] ; 3 uses
  %niter1094 = phi i32 [ 0, %.lr.ph592.split.split.split.preheader1066.new ], [ %niter1094.next.1, %bb.as ]
  %i.id = icmp slt i32 %.0405591, %i.ek
  br i1 %i.id, label %bb.aq, label %.lr.ph592.split.split.split.1

bb.aq:                                            ; preds = %.lr.ph592.split.split.split
  %i.ie = add nsw i32 %.1409589, 1
  %i.if = sext i32 %.1409589 to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.if
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !55
  br label %.lr.ph592.split.split.split.1

.lr.ph592.split.split.split.1:                    ; preds = %.lr.ph592.split.split.split, %bb.aq
  %.2 = phi i32 [ %i.ie, %bb.aq ], [ %.1409589, %.lr.ph592.split.split.split ] ; 3 uses
  %.0406 = phi float [ %i.ih, %bb.aq ], [ 0.000000e+00, %.lr.ph592.split.split.split ]
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %indvars.iv790
  store float %.0406, ptr %i.ii, align 4, !tbaa !55
  %i.ij = or disjoint i32 %.0405591, 1
  %i.ik = icmp slt i32 %i.ij, %i.ek
  br i1 %i.ik, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph592.split.split.split.1
  %i.il = add nsw i32 %.2, 1
  %i.im = sext i32 %.2 to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.im
  %i.io = load float, ptr %i.in, align 4, !tbaa !55
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph592.split.split.split.1
  %.2.1 = phi i32 [ %i.il, %bb.ar ], [ %.2, %.lr.ph592.split.split.split.1 ] ; 3 uses
  %.0406.1 = phi float [ %i.io, %bb.ar ], [ 0.000000e+00, %.lr.ph592.split.split.split.1 ]
  %indvars.iv.next791.1 = add nsw i64 %indvars.iv790, 2 ; 3 uses
  %i.ip = getelementptr [4 x i8], ptr %i.dy, i64 %indvars.iv790
  %i.iq = getelementptr i8, ptr %i.ip, i64 4
  store float %.0406.1, ptr %i.iq, align 4, !tbaa !55
  %i.ir = add nuw nsw i32 %.0405591, 2            ; 2 uses
  %niter1094.next.1 = add i32 %niter1094, 2       ; 2 uses
  %niter1094.ncmp.1 = icmp eq i32 %niter1094.next.1, %unroll_iter1093
  br i1 %niter1094.ncmp.1, label %._crit_edge593.loopexit705.loopexit.unr-lcssa, label %.lr.ph592.split.split.split, !llvm.loop !25

._crit_edge624:                                   ; preds = %._crit_edge593, %gv_calloc.exit
  tail call void @free(ptr noundef %.1433) #11
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge624, %bb.t
  %.0454 = phi i32 [ %i.dk, %._crit_edge624 ], [ %1, %bb.t ] ; 34 uses
  %.0437 = phi ptr [ %i.dy, %._crit_edge624 ], [ %.1433, %bb.t ] ; 13 uses
  %.0436 = phi i32 [ %i.do, %._crit_edge624 ], [ %i.bg, %bb.t ] ; 4 uses
  %i.is = sext i32 %.0454 to i64                  ; 17 uses
  %.not.i497.not = icmp eq i32 %.0454, 0          ; 4 uses
  br i1 %.not.i497.not, label %.preheader548.thread945, label %bb.au

.preheader548.thread945:                          ; preds = %bb.at
  %i.it = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #14 ; 2 uses
  tail call void @set_vector_val(i32 noundef %.0454, double noundef 0.000000e+00, ptr noundef %i.it) #11
  br label %._crit_edge640

bb.au:                                            ; preds = %bb.at
  %mul.ov.i499 = icmp slt i32 %.0454, 0
  br i1 %mul.ov.i499, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.iu = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.iv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iu, ptr noundef nonnull @.str.12, i64 noundef range(i64 -2147483648, 2147483648) %i.is, i64 noundef 8) #13 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.iw = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.is, i64 noundef 8) #14 ; 9 uses
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %bb.ax, label %gv_calloc.exit501

bb.ax:                                            ; preds = %bb.aw
  %i.iy = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.iz = shl nuw nsw i64 %i.is, 3
  %i.ja = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iy, ptr noundef nonnull @.str.13, i64 noundef %i.iz) #13 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

gv_calloc.exit501:                                ; preds = %bb.aw
  tail call void @set_vector_val(i32 noundef %.0454, double noundef 0.000000e+00, ptr noundef nonnull %i.iw) #11
  %i.jb = add nsw i32 %.0454, -1                  ; 2 uses
  %.not967 = icmp ne i32 %.0454, 1                ; 3 uses
  br i1 %.not967, label %.preheader549.preheader, label %.lr.ph639.preheader

.preheader549.preheader:                          ; preds = %gv_calloc.exit501
  %wide.trip.count821 = zext nneg i32 %i.jb to i64
  %invariant.op = add nsw i64 %i.is, -1
  br label %.preheader549

.preheader549:                                    ; preds = %.preheader549.preheader, %._crit_edge630
  %indvars.iv818 = phi i64 [ 0, %.preheader549.preheader ], [ %indvars.iv.next819, %._crit_edge630 ] ; 4 uses
  %indvars.iv814 = phi i32 [ %.0454, %.preheader549.preheader ], [ %indvars.iv.next815, %._crit_edge630 ] ; 3 uses
  %.0429634 = phi i32 [ 0, %.preheader549.preheader ], [ %.1430.lcssa, %._crit_edge630 ]
  %i.jc = zext i32 %indvars.iv814 to i64
  %i.jd = add nsw i64 %i.jc, -1                   ; 3 uses
  %.1430625 = add i32 %.0429634, 1                ; 2 uses
  %8 = icmp slt i64 %indvars.iv818, %invariant.op
  br i1 %8, label %.lr.ph629.preheader, label %._crit_edge630

.lr.ph629.preheader:                              ; preds = %.preheader549
  %i.je = sext i32 %.1430625 to i64               ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %indvars.iv818 ; 3 uses
  %xtraiter1103 = and i64 %i.jd, 1
  %i.jf = icmp eq i32 %indvars.iv814, 2
  br i1 %i.jf, label %.lr.ph629.epil.preheader, label %.lr.ph629.preheader.new

.lr.ph629.preheader.new:                          ; preds = %.lr.ph629.preheader
  %unroll_iter1109 = and i64 %i.jd, -2
  br label %.lr.ph629

.lr.ph639.preheader:                              ; preds = %._crit_edge630, %gv_calloc.exit501
  %i.jg = phi i32 [ 0, %gv_calloc.exit501 ], [ %i.jb, %._crit_edge630 ] ; 2 uses
  %wide.trip.count830 = zext nneg i32 %.0454 to i64 ; 2 uses
  %xtraiter1111 = and i64 %wide.trip.count830, 1
  %i.jh = icmp eq i32 %.0454, 1
  br i1 %i.jh, label %.lr.ph639.epil.preheader, label %.lr.ph639.preheader.new

.lr.ph639.preheader.new:                          ; preds = %.lr.ph639.preheader
  %unroll_iter1115 = and i64 %wide.trip.count830, 2147483646
  br label %.lr.ph639

._crit_edge630.loopexit.unr-lcssa:                ; preds = %.lr.ph629
  %lcmp.mod1105.not = icmp eq i64 %xtraiter1103, 0
  br i1 %lcmp.mod1105.not, label %._crit_edge630.loopexit, label %.lr.ph629.epil.preheader

.lr.ph629.epil.preheader:                         ; preds = %._crit_edge630.loopexit.unr-lcssa, %.lr.ph629.preheader
  %indvars.iv809.epil.init = phi i64 [ 1, %.lr.ph629.preheader ], [ %indvars.iv.next810.1, %._crit_edge630.loopexit.unr-lcssa ]
  %indvars.iv807.epil.init = phi i64 [ %i.je, %.lr.ph629.preheader ], [ %indvars.iv.next808.1, %._crit_edge630.loopexit.unr-lcssa ] ; 2 uses
  %.0427626.epil.init = phi double [ 0.000000e+00, %.lr.ph629.preheader ], [ %i.kc, %._crit_edge630.loopexit.unr-lcssa ]
  %lcmp.mod1108 = trunc i64 %i.jd to i1
  tail call void @llvm.assume(i1 %lcmp.mod1108)
  %i.ji = getelementptr inbounds [4 x i8], ptr %.0437, i64 %indvars.iv807.epil.init
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !55
  %i.jk = fpext float %i.jj to double             ; 2 uses
  %i.jl = fadd double %.0427626.epil.init, %i.jk
  %gep.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv809.epil.init ; 2 uses
  %i.jm = load double, ptr %gep.epil, align 8, !tbaa !64
  %i.jn = fsub double %i.jm, %i.jk
  store double %i.jn, ptr %gep.epil, align 8, !tbaa !64
  %indvars.iv.next808.epil = add nsw i64 %indvars.iv807.epil.init, 1
  br label %._crit_edge630.loopexit

._crit_edge630.loopexit:                          ; preds = %._crit_edge630.loopexit.unr-lcssa, %.lr.ph629.epil.preheader
  %.lcssa1065 = phi double [ %i.kc, %._crit_edge630.loopexit.unr-lcssa ], [ %i.jl, %.lr.ph629.epil.preheader ]
  %indvars.iv.next808.lcssa = phi i64 [ %indvars.iv.next808.1, %._crit_edge630.loopexit.unr-lcssa ], [ %indvars.iv.next808.epil, %.lr.ph629.epil.preheader ]
  %i.jo = trunc nsw i64 %indvars.iv.next808.lcssa to i32
  br label %._crit_edge630

._crit_edge630:                                   ; preds = %._crit_edge630.loopexit, %.preheader549
  %.0427.lcssa = phi double [ 0.000000e+00, %.preheader549 ], [ %.lcssa1065, %._crit_edge630.loopexit ]
  %.1430.lcssa = phi i32 [ %.1430625, %.preheader549 ], [ %i.jo, %._crit_edge630.loopexit ]
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %indvars.iv818 ; 2 uses
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !64
  %i.jr = fsub double %i.jq, %.0427.lcssa
  store double %i.jr, ptr %i.jp, align 8, !tbaa !64
  %indvars.iv.next819 = add nuw nsw i64 %indvars.iv818, 1 ; 2 uses
  %indvars.iv.next815 = add i32 %indvars.iv814, -1
  %exitcond822.not = icmp eq i64 %indvars.iv.next819, %wide.trip.count821
  br i1 %exitcond822.not, label %.lr.ph639.preheader, label %.preheader549, !llvm.loop !26

.lr.ph629:                                        ; preds = %.lr.ph629, %.lr.ph629.preheader.new
  %indvars.iv809 = phi i64 [ 1, %.lr.ph629.preheader.new ], [ %indvars.iv.next810.1, %.lr.ph629 ] ; 3 uses
  %indvars.iv807 = phi i64 [ %i.je, %.lr.ph629.preheader.new ], [ %indvars.iv.next808.1, %.lr.ph629 ] ; 3 uses
  %.0427626 = phi double [ 0.000000e+00, %.lr.ph629.preheader.new ], [ %i.kc, %.lr.ph629 ]
  %niter1110 = phi i64 [ 0, %.lr.ph629.preheader.new ], [ %niter1110.next.1, %.lr.ph629 ]
  %i.js = getelementptr inbounds [4 x i8], ptr %.0437, i64 %indvars.iv807
  %i.jt = load float, ptr %i.js, align 4, !tbaa !55
  %i.ju = fpext float %i.jt to double             ; 2 uses
  %i.jv = fadd double %.0427626, %i.ju
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv809 ; 2 uses
  %i.jw = load double, ptr %gep, align 8, !tbaa !64
  %i.jx = fsub double %i.jw, %i.ju
  store double %i.jx, ptr %gep, align 8, !tbaa !64
  %i.jy = getelementptr [4 x i8], ptr %.0437, i64 %indvars.iv807
  %i.jz = getelementptr i8, ptr %i.jy, i64 4
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !55
  %i.kb = fpext float %i.ka to double             ; 2 uses
  %i.kc = fadd double %i.jv, %i.kb                ; 3 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv809
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.kd, i64 8 ; 2 uses
  %i.ke = load double, ptr %gep.1, align 8, !tbaa !64
  %i.kf = fsub double %i.ke, %i.kb
  store double %i.kf, ptr %gep.1, align 8, !tbaa !64
  %indvars.iv.next810.1 = add nuw nsw i64 %indvars.iv809, 2 ; 2 uses
  %indvars.iv.next808.1 = add nsw i64 %indvars.iv807, 2 ; 3 uses
  %niter1110.next.1 = add nuw i64 %niter1110, 2   ; 2 uses
  %niter1110.ncmp.1 = icmp eq i64 %niter1110.next.1, %unroll_iter1109
  br i1 %niter1110.ncmp.1, label %._crit_edge630.loopexit.unr-lcssa, label %.lr.ph629, !llvm.loop !27

.lr.ph639:                                        ; preds = %.lr.ph639, %.lr.ph639.preheader.new
  %indvars.iv825 = phi i64 [ 0, %.lr.ph639.preheader.new ], [ %indvars.iv.next826.1, %.lr.ph639 ] ; 3 uses
  %indvars.iv823 = phi i64 [ %i.is, %.lr.ph639.preheader.new ], [ %indvars.iv.next824.1, %.lr.ph639 ] ; 3 uses
  %.2431637 = phi i32 [ 0, %.lr.ph639.preheader.new ], [ %i.kv, %.lr.ph639 ] ; 2 uses
  %niter1116 = phi i64 [ 0, %.lr.ph639.preheader.new ], [ %niter1116.next.1, %.lr.ph639 ]
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %indvars.iv825
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !64
  %i.ki = fptrunc double %i.kh to float
  %i.kj = sext i32 %.2431637 to i64
  %i.kk = getelementptr inbounds [4 x i8], ptr %.0437, i64 %i.kj
  store float %i.ki, ptr %i.kk, align 4, !tbaa !55
  %i.kl = trunc nsw i64 %indvars.iv823 to i32
  %i.km = add nsw i32 %.2431637, %i.kl            ; 2 uses
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %indvars.iv825
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !64
  %i.kq = fptrunc double %i.kp to float
  %i.kr = sext i32 %i.km to i64
  %i.ks = getelementptr inbounds [4 x i8], ptr %.0437, i64 %i.kr
  store float %i.kq, ptr %i.ks, align 4, !tbaa !55
  %indvars.iv.next826.1 = add nuw nsw i64 %indvars.iv825, 2 ; 2 uses
  %i.kt = trunc i64 %indvars.iv823 to i32
  %i.ku = add i32 %i.kt, -1
  %i.kv = add nsw i32 %i.km, %i.ku                ; 2 uses
  %indvars.iv.next824.1 = add nsw i64 %indvars.iv823, -2
  %niter1116.next.1 = add i64 %niter1116, 2       ; 2 uses
  %niter1116.ncmp.1 = icmp eq i64 %niter1116.next.1, %unroll_iter1115
  br i1 %niter1116.ncmp.1, label %._crit_edge640.loopexit.unr-lcssa, label %.lr.ph639, !llvm.loop !28

._crit_edge640.loopexit.unr-lcssa:                ; preds = %.lr.ph639
  %lcmp.mod1113.not = icmp eq i64 %xtraiter1111, 0
  br i1 %lcmp.mod1113.not, label %._crit_edge640, label %.lr.ph639.epil.preheader

.lr.ph639.epil.preheader:                         ; preds = %._crit_edge640.loopexit.unr-lcssa, %.lr.ph639.preheader
  %indvars.iv825.epil.init = phi i64 [ 0, %.lr.ph639.preheader ], [ %indvars.iv.next826.1, %._crit_edge640.loopexit.unr-lcssa ]
  %.2431637.epil.init = phi i32 [ 0, %.lr.ph639.preheader ], [ %i.kv, %._crit_edge640.loopexit.unr-lcssa ]
  %lcmp.mod1114 = trunc i32 %.0454 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1114)
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %indvars.iv825.epil.init
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !64
  %i.ky = fptrunc double %i.kx to float
  %i.kz = sext i32 %.2431637.epil.init to i64
  %i.la = getelementptr inbounds [4 x i8], ptr %.0437, i64 %i.kz
  store float %i.ky, ptr %i.la, align 4, !tbaa !55
  br label %._crit_edge640

._crit_edge640:                                   ; preds = %.lr.ph639.epil.preheader, %._crit_edge640.loopexit.unr-lcssa, %.preheader548.thread945
  %i.lb = phi ptr [ %i.it, %.preheader548.thread945 ], [ %i.iw, %._crit_edge640.loopexit.unr-lcssa ], [ %i.iw, %.lr.ph639.epil.preheader ] ; 7 uses
  %i.lc = phi i32 [ -1, %.preheader548.thread945 ], [ %i.jg, %._crit_edge640.loopexit.unr-lcssa ], [ %i.jg, %.lr.ph639.epil.preheader ] ; 4 uses
  %i.ld = phi i1 [ false, %.preheader548.thread945 ], [ %.not967, %._crit_edge640.loopexit.unr-lcssa ], [ %.not967, %.lr.ph639.epil.preheader ]
  %i.le = sext i32 %4 to i64                      ; 5 uses
  %.not.i502 = icmp eq i32 %4, 0                  ; 2 uses
  br i1 %.not.i502, label %.thread.i505, label %bb.ay

.thread.i505:                                     ; preds = %._crit_edge640
  %i.lf = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #14
  br label %gv_calloc.exit506

bb.ay:                                            ; preds = %._crit_edge640
  %mul.ov.i504 = icmp slt i32 %4, 0
  br i1 %mul.ov.i504, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.lg = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.lh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lg, ptr noundef nonnull @.str.12, i64 noundef range(i64 -2147483648, 2147483648) %i.le, i64 noundef 8) #13 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.li = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.le, i64 noundef 8) #14 ; 2 uses
  %i.lj = icmp eq ptr %i.li, null
  br i1 %i.lj, label %bb.bb, label %gv_calloc.exit506

bb.bb:                                            ; preds = %bb.ba
  %i.lk = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.ll = shl nuw nsw i64 %i.le, 3
  %i.lm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lk, ptr noundef nonnull @.str.13, i64 noundef %i.ll) #13 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

gv_calloc.exit506:                                ; preds = %.thread.i505, %bb.ba
  %i.ln = phi ptr [ %i.lf, %.thread.i505 ], [ %i.li, %bb.ba ] ; 15 uses
  %i.lo = mul nsw i32 %.0454, %4                  ; 4 uses
  %i.lp = sext i32 %i.lo to i64                   ; 6 uses
  %.not.i507 = icmp eq i32 %i.lo, 0               ; 2 uses
  br i1 %.not.i507, label %.thread.i510, label %bb.bc

.thread.i510:                                     ; preds = %gv_calloc.exit506
  %i.lq = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #14
  br label %gv_calloc.exit511

bb.bc:                                            ; preds = %gv_calloc.exit506
  %mul.ov.i509 = icmp slt i32 %i.lo, 0
  br i1 %mul.ov.i509, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.lr = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.ls = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lr, ptr noundef nonnull @.str.12, i64 noundef range(i64 -2147483648, 2147483648) %i.lp, i64 noundef 4) #13 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.lt = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.lp, i64 noundef 4) #14 ; 2 uses
  %i.lu = icmp eq ptr %i.lt, null
  br i1 %i.lu, label %bb.bf, label %gv_calloc.exit511

bb.bf:                                            ; preds = %bb.be
  %i.lv = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.lw = shl nuw nsw i64 %i.lp, 2
end_hunk_0
