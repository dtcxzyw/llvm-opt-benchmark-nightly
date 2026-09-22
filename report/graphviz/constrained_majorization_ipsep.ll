Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/constrained_majorization_ipsep?download=true
inline.NumInlined: 9
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@stress_majorization_cola:bb.a

bb.ak:                                            ; preds = %.lr.ph592.split.split.split.us
  %i.gr = add nsw i32 %.1409589.us610, 1
  %i.gs = sext i32 %.1409589.us610 to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.gs
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !55
  br label %.lr.ph592.split.split.split.us.1

.lr.ph592.split.split.split.us.1:                 ; preds = %.lr.ph592.split.split.split.us, %bb.ak
  %.2.us611 = phi i32 [ %i.gr, %bb.ak ], [ %.1409589.us610, %.lr.ph592.split.split.split.us ] ; 3 uses
  %.0406.us612 = phi float [ %i.gu, %bb.ak ], [ 0.000000e+00, %.lr.ph592.split.split.split.us ]
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %indvars.iv778
  store float %.0406.us612, ptr %i.gv, align 4, !tbaa !55
  %i.gw = or disjoint i32 %.0405591.us608, 1
  %i.gx = icmp slt i32 %i.gw, %i.ej
  br i1 %i.gx, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph592.split.split.split.us.1
  %i.gy = add nsw i32 %.2.us611, 1
  %i.gz = sext i32 %.2.us611 to i64
  %i.ha = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.gz
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !55
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph592.split.split.split.us.1
  %.2.us611.1 = phi i32 [ %i.gy, %bb.al ], [ %.2.us611, %.lr.ph592.split.split.split.us.1 ] ; 3 uses
  %.0406.us612.1 = phi float [ %i.hb, %bb.al ], [ 0.000000e+00, %.lr.ph592.split.split.split.us.1 ]
  %indvars.iv.next779.1 = add nsw i64 %indvars.iv778, 2 ; 3 uses
  %i.hc = getelementptr [4 x i8], ptr %i.dx, i64 %indvars.iv778
  %i.hd = getelementptr i8, ptr %i.hc, i64 4
  store float %.0406.us612.1, ptr %i.hd, align 4, !tbaa !55
  %i.he = add nuw nsw i32 %.0405591.us608, 2      ; 2 uses
  %niter1086.next.1 = add i32 %niter1086, 2       ; 2 uses
  %niter1086.ncmp.1 = icmp eq i32 %niter1086.next.1, %unroll_iter1085
  br i1 %niter1086.ncmp.1, label %._crit_edge593.loopexit706.loopexit.unr-lcssa, label %.lr.ph592.split.split.split.us, !llvm.loop !23

._crit_edge593.loopexit.unr-lcssa:                ; preds = %bb.ab
  %lcmp.mod1097.not = icmp eq i32 %xtraiter1095, 0
  br i1 %lcmp.mod1097.not, label %._crit_edge593.loopexit, label %.lr.ph592.split.split.us.epil.preheader

.lr.ph592.split.split.us.epil.preheader:          ; preds = %._crit_edge593.loopexit.unr-lcssa, %.lr.ph592.split.split.us.preheader
  %indvars.iv802.epil.init = phi i64 [ %i.el, %.lr.ph592.split.split.us.preheader ], [ %indvars.iv.next803.1, %._crit_edge593.loopexit.unr-lcssa ] ; 2 uses
  %.0405591.us598.epil.init = phi i32 [ 0, %.lr.ph592.split.split.us.preheader ], [ %i.fq, %._crit_edge593.loopexit.unr-lcssa ]
  %.1409589.us600.epil.init = phi i32 [ %.0408622, %.lr.ph592.split.split.us.preheader ], [ %.2.us602.1, %._crit_edge593.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1100 = trunc i32 %indvars.iv761 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1100)
  %i.hf = icmp slt i32 %.0405591.us598.epil.init, %i.ej
  br i1 %i.hf, label %bb.an, label %._crit_edge593.loopexit.epilog-lcssa

bb.an:                                            ; preds = %.lr.ph592.split.split.us.epil.preheader
  %i.hg = add nsw i32 %.1409589.us600.epil.init, 1
  %i.hh = sext i32 %.1409589.us600.epil.init to i64
  %i.hi = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.hh
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !55
  br label %._crit_edge593.loopexit.epilog-lcssa

._crit_edge593.loopexit.epilog-lcssa:             ; preds = %bb.an, %.lr.ph592.split.split.us.epil.preheader
  %.2.us602.epil = phi i32 [ %i.hg, %bb.an ], [ %.1409589.us600.epil.init, %.lr.ph592.split.split.us.epil.preheader ]
  %.0406.us603.epil = phi float [ %i.hj, %bb.an ], [ 0.000000e+00, %.lr.ph592.split.split.us.epil.preheader ]
  %indvars.iv.next803.epil = add nsw i64 %indvars.iv802.epil.init, 1
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %indvars.iv802.epil.init
  store float %.0406.us603.epil, ptr %i.hk, align 4, !tbaa !55
  br label %._crit_edge593.loopexit

._crit_edge593.loopexit:                          ; preds = %._crit_edge593.loopexit.unr-lcssa, %._crit_edge593.loopexit.epilog-lcssa
  %.2.us602.lcssa = phi i32 [ %.2.us602.1, %._crit_edge593.loopexit.unr-lcssa ], [ %.2.us602.epil, %._crit_edge593.loopexit.epilog-lcssa ]
  %indvars.iv.next803.lcssa = phi i64 [ %indvars.iv.next803.1, %._crit_edge593.loopexit.unr-lcssa ], [ %indvars.iv.next803.epil, %._crit_edge593.loopexit.epilog-lcssa ]
  %i.hl = trunc nsw i64 %indvars.iv.next803.lcssa to i32
  br label %._crit_edge593

._crit_edge593.loopexit705.loopexit.unr-lcssa:    ; preds = %bb.as
  %lcmp.mod1089.not = icmp eq i32 %xtraiter1087, 0
  br i1 %lcmp.mod1089.not, label %._crit_edge593.loopexit705, label %.lr.ph592.split.split.split.epil.preheader

.lr.ph592.split.split.split.epil.preheader:       ; preds = %._crit_edge593.loopexit705.loopexit.unr-lcssa, %.lr.ph592.split.split.split.preheader1066
  %indvars.iv790.epil.init = phi i64 [ %indvars.iv.next791.peel799, %.lr.ph592.split.split.split.preheader1066 ], [ %indvars.iv.next791.1, %._crit_edge593.loopexit705.loopexit.unr-lcssa ] ; 2 uses
  %.0405591.epil.init = phi i32 [ 2, %.lr.ph592.split.split.split.preheader1066 ], [ %i.iq, %._crit_edge593.loopexit705.loopexit.unr-lcssa ]
  %.1409589.epil.init = phi i32 [ %.2.peel797, %.lr.ph592.split.split.split.preheader1066 ], [ %.2.1, %._crit_edge593.loopexit705.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1092 = trunc i32 %i.ee to i1
  tail call void @llvm.assume(i1 %lcmp.mod1092)
  %i.hm = icmp slt i32 %.0405591.epil.init, %i.ej
  br i1 %i.hm, label %bb.ao, label %._crit_edge593.loopexit705.loopexit.epilog-lcssa

bb.ao:                                            ; preds = %.lr.ph592.split.split.split.epil.preheader
  %i.hn = add nsw i32 %.1409589.epil.init, 1
  %i.ho = sext i32 %.1409589.epil.init to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.ho
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !55
  br label %._crit_edge593.loopexit705.loopexit.epilog-lcssa

._crit_edge593.loopexit705.loopexit.epilog-lcssa: ; preds = %bb.ao, %.lr.ph592.split.split.split.epil.preheader
  %.2.epil = phi i32 [ %i.hn, %bb.ao ], [ %.1409589.epil.init, %.lr.ph592.split.split.split.epil.preheader ]
  %.0406.epil = phi float [ %i.hq, %bb.ao ], [ 0.000000e+00, %.lr.ph592.split.split.split.epil.preheader ]
  %indvars.iv.next791.epil = add nsw i64 %indvars.iv790.epil.init, 1
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %indvars.iv790.epil.init
  store float %.0406.epil, ptr %i.hr, align 4, !tbaa !55
  br label %._crit_edge593.loopexit705

._crit_edge593.loopexit705:                       ; preds = %._crit_edge593.loopexit705.loopexit.epilog-lcssa, %._crit_edge593.loopexit705.loopexit.unr-lcssa, %bb.aj, %bb.ah
  %.2.lcssa = phi i32 [ %.2.peel797, %bb.aj ], [ %.2.peel, %bb.ah ], [ %.2.1, %._crit_edge593.loopexit705.loopexit.unr-lcssa ], [ %.2.epil, %._crit_edge593.loopexit705.loopexit.epilog-lcssa ]
  %.lcssa720.wide = phi i64 [ %indvars.iv.next791.peel799, %bb.aj ], [ %indvars.iv.next791.peel, %bb.ah ], [ %indvars.iv.next791.1, %._crit_edge593.loopexit705.loopexit.unr-lcssa ], [ %indvars.iv.next791.epil, %._crit_edge593.loopexit705.loopexit.epilog-lcssa ]
  %i.hs = trunc nsw i64 %.lcssa720.wide to i32
  br label %._crit_edge593

._crit_edge593.loopexit706.loopexit.unr-lcssa:    ; preds = %bb.am
  %lcmp.mod1081.not = icmp eq i32 %xtraiter1079, 0
  br i1 %lcmp.mod1081.not, label %._crit_edge593.loopexit706, label %.lr.ph592.split.split.split.us.epil.preheader

.lr.ph592.split.split.split.us.epil.preheader:    ; preds = %._crit_edge593.loopexit706.loopexit.unr-lcssa, %.lr.ph592.split.split.split.us.preheader1067
  %indvars.iv778.epil.init = phi i64 [ %indvars.iv.next779.peel787, %.lr.ph592.split.split.split.us.preheader1067 ], [ %indvars.iv.next779.1, %._crit_edge593.loopexit706.loopexit.unr-lcssa ] ; 2 uses
  %.0405591.us608.epil.init = phi i32 [ 2, %.lr.ph592.split.split.split.us.preheader1067 ], [ %i.he, %._crit_edge593.loopexit706.loopexit.unr-lcssa ]
  %.1409589.us610.epil.init = phi i32 [ %.2.us611.peel785, %.lr.ph592.split.split.split.us.preheader1067 ], [ %.2.us611.1, %._crit_edge593.loopexit706.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1084 = trunc i32 %i.ee to i1
  tail call void @llvm.assume(i1 %lcmp.mod1084)
  %i.ht = icmp slt i32 %.0405591.us608.epil.init, %i.ej
  br i1 %i.ht, label %bb.ap, label %._crit_edge593.loopexit706.loopexit.epilog-lcssa

bb.ap:                                            ; preds = %.lr.ph592.split.split.split.us.epil.preheader
  %i.hu = add nsw i32 %.1409589.us610.epil.init, 1
  %i.hv = sext i32 %.1409589.us610.epil.init to i64
  %i.hw = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.hv
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !55
  br label %._crit_edge593.loopexit706.loopexit.epilog-lcssa

._crit_edge593.loopexit706.loopexit.epilog-lcssa: ; preds = %bb.ap, %.lr.ph592.split.split.split.us.epil.preheader
  %.2.us611.epil = phi i32 [ %i.hu, %bb.ap ], [ %.1409589.us610.epil.init, %.lr.ph592.split.split.split.us.epil.preheader ]
  %.0406.us612.epil = phi float [ %i.hx, %bb.ap ], [ 0.000000e+00, %.lr.ph592.split.split.split.us.epil.preheader ]
  %indvars.iv.next779.epil = add nsw i64 %indvars.iv778.epil.init, 1
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %indvars.iv778.epil.init
  store float %.0406.us612.epil, ptr %i.hy, align 4, !tbaa !55
  br label %._crit_edge593.loopexit706

._crit_edge593.loopexit706:                       ; preds = %._crit_edge593.loopexit706.loopexit.epilog-lcssa, %._crit_edge593.loopexit706.loopexit.unr-lcssa, %bb.af, %bb.ad
  %.2.us611.lcssa = phi i32 [ %.2.us611.peel785, %bb.af ], [ %.2.us611.peel, %bb.ad ], [ %.2.us611.1, %._crit_edge593.loopexit706.loopexit.unr-lcssa ], [ %.2.us611.epil, %._crit_edge593.loopexit706.loopexit.epilog-lcssa ]
  %.lcssa719.wide = phi i64 [ %indvars.iv.next779.peel787, %bb.af ], [ %indvars.iv.next779.peel, %bb.ad ], [ %indvars.iv.next779.1, %._crit_edge593.loopexit706.loopexit.unr-lcssa ], [ %indvars.iv.next779.epil, %._crit_edge593.loopexit706.loopexit.epilog-lcssa ]
  %i.hz = trunc nsw i64 %.lcssa719.wide to i32
  br label %._crit_edge593

._crit_edge593.loopexit708:                       ; preds = %.lr.ph592.split.us.split, %middle.block1017, %.lr.ph592.split.us.split.peel.next, %.lr.ph592.split.us.split.preheader
  %.lcssa717.wide = phi i64 [ %indvars.iv.next759.peel769, %.lr.ph592.split.us.split.peel.next ], [ %indvars.iv.next759.peel, %.lr.ph592.split.us.split.preheader ], [ %i.ep, %middle.block1017 ], [ %indvars.iv.next759, %.lr.ph592.split.us.split ]
  %i.ia = trunc nsw i64 %.lcssa717.wide to i32
  br label %._crit_edge593

._crit_edge593:                                   ; preds = %._crit_edge593.loopexit708, %.lr.ph592.split.us.split.us.preheader, %._crit_edge593.loopexit706, %._crit_edge593.loopexit705, %._crit_edge593.loopexit, %.preheader550
  %.1409.lcssa = phi i32 [ %.0408622, %.preheader550 ], [ %.2.us611.lcssa, %._crit_edge593.loopexit706 ], [ %.0408622, %.lr.ph592.split.us.split.us.preheader ], [ %.2.us602.lcssa, %._crit_edge593.loopexit ], [ %.2.lcssa, %._crit_edge593.loopexit705 ], [ %.0408622, %._crit_edge593.loopexit708 ]
  %.1.lcssa = phi i32 [ %.0407623, %.preheader550 ], [ %i.hz, %._crit_edge593.loopexit706 ], [ %i.ey, %.lr.ph592.split.us.split.us.preheader ], [ %i.hl, %._crit_edge593.loopexit ], [ %i.hs, %._crit_edge593.loopexit705 ], [ %i.ia, %._crit_edge593.loopexit708 ]
  %i.ib = add nuw nsw i32 %.6621, 1               ; 2 uses
  %indvars.iv.next762 = add i32 %indvars.iv761, -1
  %indvars.iv.next775 = add i32 %indvars.iv774, -1
  %exitcond806.not = icmp eq i32 %i.ib, %i.dj
  br i1 %exitcond806.not, label %._crit_edge624, label %.preheader550, !llvm.loop !24

.lr.ph592.split.split.split:                      ; preds = %bb.as, %.lr.ph592.split.split.split.preheader1066.new
  %indvars.iv790 = phi i64 [ %indvars.iv.next791.peel799, %.lr.ph592.split.split.split.preheader1066.new ], [ %indvars.iv.next791.1, %bb.as ] ; 3 uses
  %.0405591 = phi i32 [ 2, %.lr.ph592.split.split.split.preheader1066.new ], [ %i.iq, %bb.as ] ; 3 uses
  %.1409589 = phi i32 [ %.2.peel797, %.lr.ph592.split.split.split.preheader1066.new ], [ %.2.1, %bb.as ] ; 3 uses
  %niter1094 = phi i32 [ 0, %.lr.ph592.split.split.split.preheader1066.new ], [ %niter1094.next.1, %bb.as ]
  %i.ic = icmp slt i32 %.0405591, %i.ej
  br i1 %i.ic, label %bb.aq, label %.lr.ph592.split.split.split.1

bb.aq:                                            ; preds = %.lr.ph592.split.split.split
  %i.id = add nsw i32 %.1409589, 1
  %i.ie = sext i32 %.1409589 to i64
  %i.if = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.ie
  %i.ig = load float, ptr %i.if, align 4, !tbaa !55
  br label %.lr.ph592.split.split.split.1

.lr.ph592.split.split.split.1:                    ; preds = %.lr.ph592.split.split.split, %bb.aq
  %.2 = phi i32 [ %i.id, %bb.aq ], [ %.1409589, %.lr.ph592.split.split.split ] ; 3 uses
  %.0406 = phi float [ %i.ig, %bb.aq ], [ 0.000000e+00, %.lr.ph592.split.split.split ]
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %indvars.iv790
  store float %.0406, ptr %i.ih, align 4, !tbaa !55
  %i.ii = or disjoint i32 %.0405591, 1
  %i.ij = icmp slt i32 %i.ii, %i.ej
  br i1 %i.ij, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph592.split.split.split.1
  %i.ik = add nsw i32 %.2, 1
  %i.il = sext i32 %.2 to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.il
  %i.in = load float, ptr %i.im, align 4, !tbaa !55
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph592.split.split.split.1
  %.2.1 = phi i32 [ %i.ik, %bb.ar ], [ %.2, %.lr.ph592.split.split.split.1 ] ; 3 uses
  %.0406.1 = phi float [ %i.in, %bb.ar ], [ 0.000000e+00, %.lr.ph592.split.split.split.1 ]
  %indvars.iv.next791.1 = add nsw i64 %indvars.iv790, 2 ; 3 uses
  %i.io = getelementptr [4 x i8], ptr %i.dx, i64 %indvars.iv790
  %i.ip = getelementptr i8, ptr %i.io, i64 4
  store float %.0406.1, ptr %i.ip, align 4, !tbaa !55
  %i.iq = add nuw nsw i32 %.0405591, 2            ; 2 uses
  %niter1094.next.1 = add i32 %niter1094, 2       ; 2 uses
  %niter1094.ncmp.1 = icmp eq i32 %niter1094.next.1, %unroll_iter1093
  br i1 %niter1094.ncmp.1, label %._crit_edge593.loopexit705.loopexit.unr-lcssa, label %.lr.ph592.split.split.split, !llvm.loop !25

._crit_edge624:                                   ; preds = %._crit_edge593, %gv_calloc.exit
  tail call void @free(ptr noundef %.1433) #11
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge624, %bb.t
  %.0454 = phi i32 [ %i.dj, %._crit_edge624 ], [ %1, %bb.t ] ; 35 uses
  %.0437 = phi ptr [ %i.dx, %._crit_edge624 ], [ %.1433, %bb.t ] ; 13 uses
  %.0436 = phi i32 [ %i.dn, %._crit_edge624 ], [ %i.bg, %bb.t ] ; 4 uses
  %i.ir = sext i32 %.0454 to i64                  ; 16 uses
  %.not.i497.not = icmp eq i32 %.0454, 0          ; 4 uses
  br i1 %.not.i497.not, label %.preheader548.thread945, label %bb.au

.preheader548.thread945:                          ; preds = %bb.at
  %i.is = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #14 ; 2 uses
  tail call void @set_vector_val(i32 noundef %.0454, double noundef 0.000000e+00, ptr noundef %i.is) #11
  br label %._crit_edge640

bb.au:                                            ; preds = %bb.at
  %mul.ov.i499 = icmp slt i32 %.0454, 0
  br i1 %mul.ov.i499, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.it = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.iu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.it, ptr noundef nonnull @.str.12, i64 noundef range(i64 -2147483648, 2147483648) %i.ir, i64 noundef 8) #13 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.iv = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.ir, i64 noundef 8) #14 ; 9 uses
  %i.iw = icmp eq ptr %i.iv, null
  br i1 %i.iw, label %bb.ax, label %gv_calloc.exit501

bb.ax:                                            ; preds = %bb.aw
  %i.ix = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.iy = shl nuw nsw i64 %i.ir, 3
  %i.iz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ix, ptr noundef nonnull @.str.13, i64 noundef %i.iy) #13 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

gv_calloc.exit501:                                ; preds = %bb.aw
  tail call void @set_vector_val(i32 noundef %.0454, double noundef 0.000000e+00, ptr noundef nonnull %i.iv) #11
  %i.ja = add nsw i32 %.0454, -1                  ; 2 uses
  %.not967 = icmp ne i32 %.0454, 1                ; 3 uses
  br i1 %.not967, label %.preheader549.preheader, label %.lr.ph639.preheader

.preheader549.preheader:                          ; preds = %gv_calloc.exit501
  %wide.trip.count821 = zext nneg i32 %i.ja to i64
  br label %.preheader549

.preheader549:                                    ; preds = %.preheader549.preheader, %._crit_edge630
  %indvars.iv818 = phi i64 [ 0, %.preheader549.preheader ], [ %indvars.iv.next819, %._crit_edge630 ] ; 4 uses
  %indvars.iv814 = phi i32 [ %.0454, %.preheader549.preheader ], [ %indvars.iv.next815, %._crit_edge630 ] ; 3 uses
  %.0429634 = phi i32 [ 0, %.preheader549.preheader ], [ %.1430.lcssa, %._crit_edge630 ]
  %i.jb = zext i32 %indvars.iv814 to i64
  %i.jc = add nsw i64 %i.jb, -1                   ; 3 uses
  %.1430625 = add i32 %.0429634, 1                ; 2 uses
  %8 = trunc i64 %indvars.iv818 to i32
  %9 = sub i32 %.0454, %8
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %.lr.ph629.preheader, label %._crit_edge630

.lr.ph629.preheader:                              ; preds = %.preheader549
  %i.jd = sext i32 %.1430625 to i64               ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv818 ; 3 uses
  %xtraiter1103 = and i64 %i.jc, 1
  %i.je = icmp eq i32 %indvars.iv814, 2
  br i1 %i.je, label %.lr.ph629.epil.preheader, label %.lr.ph629.preheader.new

.lr.ph629.preheader.new:                          ; preds = %.lr.ph629.preheader
  %unroll_iter1109 = and i64 %i.jc, -2
  br label %.lr.ph629

.lr.ph639.preheader:                              ; preds = %._crit_edge630, %gv_calloc.exit501
  %i.jf = phi i32 [ 0, %gv_calloc.exit501 ], [ %i.ja, %._crit_edge630 ] ; 2 uses
  %wide.trip.count830 = zext nneg i32 %.0454 to i64 ; 2 uses
  %xtraiter1111 = and i64 %wide.trip.count830, 1
  %i.jg = icmp eq i32 %.0454, 1
  br i1 %i.jg, label %.lr.ph639.epil.preheader, label %.lr.ph639.preheader.new

.lr.ph639.preheader.new:                          ; preds = %.lr.ph639.preheader
  %unroll_iter1115 = and i64 %wide.trip.count830, 2147483646
  br label %.lr.ph639

._crit_edge630.loopexit.unr-lcssa:                ; preds = %.lr.ph629
  %lcmp.mod1105.not = icmp eq i64 %xtraiter1103, 0
  br i1 %lcmp.mod1105.not, label %._crit_edge630.loopexit, label %.lr.ph629.epil.preheader

.lr.ph629.epil.preheader:                         ; preds = %._crit_edge630.loopexit.unr-lcssa, %.lr.ph629.preheader
  %indvars.iv809.epil.init = phi i64 [ 1, %.lr.ph629.preheader ], [ %indvars.iv.next810.1, %._crit_edge630.loopexit.unr-lcssa ]
  %indvars.iv807.epil.init = phi i64 [ %i.jd, %.lr.ph629.preheader ], [ %indvars.iv.next808.1, %._crit_edge630.loopexit.unr-lcssa ] ; 2 uses
  %.0427626.epil.init = phi double [ 0.000000e+00, %.lr.ph629.preheader ], [ %i.kb, %._crit_edge630.loopexit.unr-lcssa ]
  %lcmp.mod1108 = trunc i64 %i.jc to i1
  tail call void @llvm.assume(i1 %lcmp.mod1108)
  %i.jh = getelementptr inbounds [4 x i8], ptr %.0437, i64 %indvars.iv807.epil.init
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !55
  %i.jj = fpext float %i.ji to double             ; 2 uses
  %i.jk = fadd double %.0427626.epil.init, %i.jj
  %gep.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv809.epil.init ; 2 uses
  %i.jl = load double, ptr %gep.epil, align 8, !tbaa !64
  %i.jm = fsub double %i.jl, %i.jj
  store double %i.jm, ptr %gep.epil, align 8, !tbaa !64
  %indvars.iv.next808.epil = add nsw i64 %indvars.iv807.epil.init, 1
  br label %._crit_edge630.loopexit

._crit_edge630.loopexit:                          ; preds = %._crit_edge630.loopexit.unr-lcssa, %.lr.ph629.epil.preheader
  %.lcssa1065 = phi double [ %i.kb, %._crit_edge630.loopexit.unr-lcssa ], [ %i.jk, %.lr.ph629.epil.preheader ]
  %indvars.iv.next808.lcssa = phi i64 [ %indvars.iv.next808.1, %._crit_edge630.loopexit.unr-lcssa ], [ %indvars.iv.next808.epil, %.lr.ph629.epil.preheader ]
  %i.jn = trunc nsw i64 %indvars.iv.next808.lcssa to i32
  br label %._crit_edge630

._crit_edge630:                                   ; preds = %._crit_edge630.loopexit, %.preheader549
  %.0427.lcssa = phi double [ 0.000000e+00, %.preheader549 ], [ %.lcssa1065, %._crit_edge630.loopexit ]
  %.1430.lcssa = phi i32 [ %.1430625, %.preheader549 ], [ %i.jn, %._crit_edge630.loopexit ]
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv818 ; 2 uses
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !64
  %i.jq = fsub double %i.jp, %.0427.lcssa
  store double %i.jq, ptr %i.jo, align 8, !tbaa !64
  %indvars.iv.next819 = add nuw nsw i64 %indvars.iv818, 1 ; 2 uses
  %indvars.iv.next815 = add i32 %indvars.iv814, -1
  %exitcond822.not = icmp eq i64 %indvars.iv.next819, %wide.trip.count821
  br i1 %exitcond822.not, label %.lr.ph639.preheader, label %.preheader549, !llvm.loop !26

.lr.ph629:                                        ; preds = %.lr.ph629, %.lr.ph629.preheader.new
  %indvars.iv809 = phi i64 [ 1, %.lr.ph629.preheader.new ], [ %indvars.iv.next810.1, %.lr.ph629 ] ; 3 uses
  %indvars.iv807 = phi i64 [ %i.jd, %.lr.ph629.preheader.new ], [ %indvars.iv.next808.1, %.lr.ph629 ] ; 3 uses
  %.0427626 = phi double [ 0.000000e+00, %.lr.ph629.preheader.new ], [ %i.kb, %.lr.ph629 ]
  %niter1110 = phi i64 [ 0, %.lr.ph629.preheader.new ], [ %niter1110.next.1, %.lr.ph629 ]
  %i.jr = getelementptr inbounds [4 x i8], ptr %.0437, i64 %indvars.iv807
  %i.js = load float, ptr %i.jr, align 4, !tbaa !55
  %i.jt = fpext float %i.js to double             ; 2 uses
  %i.ju = fadd double %.0427626, %i.jt
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv809 ; 2 uses
  %i.jv = load double, ptr %gep, align 8, !tbaa !64
  %i.jw = fsub double %i.jv, %i.jt
  store double %i.jw, ptr %gep, align 8, !tbaa !64
  %i.jx = getelementptr [4 x i8], ptr %.0437, i64 %indvars.iv807
  %i.jy = getelementptr i8, ptr %i.jx, i64 4
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !55
  %i.ka = fpext float %i.jz to double             ; 2 uses
  %i.kb = fadd double %i.ju, %i.ka                ; 3 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv809
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.kc, i64 8 ; 2 uses
  %i.kd = load double, ptr %gep.1, align 8, !tbaa !64
  %i.ke = fsub double %i.kd, %i.ka
  store double %i.ke, ptr %gep.1, align 8, !tbaa !64
  %indvars.iv.next810.1 = add nuw nsw i64 %indvars.iv809, 2 ; 2 uses
  %indvars.iv.next808.1 = add nsw i64 %indvars.iv807, 2 ; 3 uses
  %niter1110.next.1 = add nuw i64 %niter1110, 2   ; 2 uses
  %niter1110.ncmp.1 = icmp eq i64 %niter1110.next.1, %unroll_iter1109
  br i1 %niter1110.ncmp.1, label %._crit_edge630.loopexit.unr-lcssa, label %.lr.ph629, !llvm.loop !27

.lr.ph639:                                        ; preds = %.lr.ph639, %.lr.ph639.preheader.new
  %indvars.iv825 = phi i64 [ 0, %.lr.ph639.preheader.new ], [ %indvars.iv.next826.1, %.lr.ph639 ] ; 3 uses
  %indvars.iv823 = phi i64 [ %i.ir, %.lr.ph639.preheader.new ], [ %indvars.iv.next824.1, %.lr.ph639 ] ; 3 uses
  %.2431637 = phi i32 [ 0, %.lr.ph639.preheader.new ], [ %i.ku, %.lr.ph639 ] ; 2 uses
  %niter1116 = phi i64 [ 0, %.lr.ph639.preheader.new ], [ %niter1116.next.1, %.lr.ph639 ]
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv825
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !64
  %i.kh = fptrunc double %i.kg to float
  %i.ki = sext i32 %.2431637 to i64
  %i.kj = getelementptr inbounds [4 x i8], ptr %.0437, i64 %i.ki
  store float %i.kh, ptr %i.kj, align 4, !tbaa !55
  %i.kk = trunc nsw i64 %indvars.iv823 to i32
  %i.kl = add nsw i32 %.2431637, %i.kk            ; 2 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv825
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !64
  %i.kp = fptrunc double %i.ko to float
  %i.kq = sext i32 %i.kl to i64
  %i.kr = getelementptr inbounds [4 x i8], ptr %.0437, i64 %i.kq
  store float %i.kp, ptr %i.kr, align 4, !tbaa !55
  %indvars.iv.next826.1 = add nuw nsw i64 %indvars.iv825, 2 ; 2 uses
  %i.ks = trunc i64 %indvars.iv823 to i32
  %i.kt = add i32 %i.ks, -1
  %i.ku = add nsw i32 %i.kl, %i.kt                ; 2 uses
  %indvars.iv.next824.1 = add nsw i64 %indvars.iv823, -2
  %niter1116.next.1 = add i64 %niter1116, 2       ; 2 uses
  %niter1116.ncmp.1 = icmp eq i64 %niter1116.next.1, %unroll_iter1115
  br i1 %niter1116.ncmp.1, label %._crit_edge640.loopexit.unr-lcssa, label %.lr.ph639, !llvm.loop !28

._crit_edge640.loopexit.unr-lcssa:                ; preds = %.lr.ph639
  %lcmp.mod1113.not = icmp eq i64 %xtraiter1111, 0
  br i1 %lcmp.mod1113.not, label %._crit_edge640, label %.lr.ph639.epil.preheader

.lr.ph639.epil.preheader:                         ; preds = %._crit_edge640.loopexit.unr-lcssa, %.lr.ph639.preheader
  %indvars.iv825.epil.init = phi i64 [ 0, %.lr.ph639.preheader ], [ %indvars.iv.next826.1, %._crit_edge640.loopexit.unr-lcssa ]
  %.2431637.epil.init = phi i32 [ 0, %.lr.ph639.preheader ], [ %i.ku, %._crit_edge640.loopexit.unr-lcssa ]
  %lcmp.mod1114 = trunc i32 %.0454 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1114)
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv825.epil.init
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !64
  %i.kx = fptrunc double %i.kw to float
  %i.ky = sext i32 %.2431637.epil.init to i64
  %i.kz = getelementptr inbounds [4 x i8], ptr %.0437, i64 %i.ky
  store float %i.kx, ptr %i.kz, align 4, !tbaa !55
  br label %._crit_edge640

._crit_edge640:                                   ; preds = %.lr.ph639.epil.preheader, %._crit_edge640.loopexit.unr-lcssa, %.preheader548.thread945
  %i.la = phi ptr [ %i.is, %.preheader548.thread945 ], [ %i.iv, %._crit_edge640.loopexit.unr-lcssa ], [ %i.iv, %.lr.ph639.epil.preheader ] ; 7 uses
  %i.lb = phi i32 [ -1, %.preheader548.thread945 ], [ %i.jf, %._crit_edge640.loopexit.unr-lcssa ], [ %i.jf, %.lr.ph639.epil.preheader ] ; 4 uses
  %i.lc = phi i1 [ false, %.preheader548.thread945 ], [ %.not967, %._crit_edge640.loopexit.unr-lcssa ], [ %.not967, %.lr.ph639.epil.preheader ]
  %i.ld = sext i32 %4 to i64                      ; 5 uses
  %.not.i502 = icmp eq i32 %4, 0                  ; 2 uses
  br i1 %.not.i502, label %.thread.i505, label %bb.ay

.thread.i505:                                     ; preds = %._crit_edge640
  %i.le = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #14
  br label %gv_calloc.exit506

bb.ay:                                            ; preds = %._crit_edge640
  %mul.ov.i504 = icmp slt i32 %4, 0
  br i1 %mul.ov.i504, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.lf = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.lg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lf, ptr noundef nonnull @.str.12, i64 noundef range(i64 -2147483648, 2147483648) %i.ld, i64 noundef 8) #13 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.lh = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.ld, i64 noundef 8) #14 ; 2 uses
  %i.li = icmp eq ptr %i.lh, null
  br i1 %i.li, label %bb.bb, label %gv_calloc.exit506

bb.bb:                                            ; preds = %bb.ba
  %i.lj = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.lk = shl nuw nsw i64 %i.ld, 3
  %i.ll = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lj, ptr noundef nonnull @.str.13, i64 noundef %i.lk) #13 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

gv_calloc.exit506:                                ; preds = %.thread.i505, %bb.ba
  %i.lm = phi ptr [ %i.le, %.thread.i505 ], [ %i.lh, %bb.ba ] ; 15 uses
  %i.ln = mul nsw i32 %.0454, %4                  ; 4 uses
  %i.lo = sext i32 %i.ln to i64                   ; 6 uses
  %.not.i507 = icmp eq i32 %i.ln, 0               ; 2 uses
  br i1 %.not.i507, label %.thread.i510, label %bb.bc

.thread.i510:                                     ; preds = %gv_calloc.exit506
  %i.lp = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #14
  br label %gv_calloc.exit511

bb.bc:                                            ; preds = %gv_calloc.exit506
  %mul.ov.i509 = icmp slt i32 %i.ln, 0
  br i1 %mul.ov.i509, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.lq = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.lr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lq, ptr noundef nonnull @.str.12, i64 noundef range(i64 -2147483648, 2147483648) %i.lo, i64 noundef 4) #13 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.ls = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.lo, i64 noundef 4) #14 ; 2 uses
  %i.lt = icmp eq ptr %i.ls, null
  br i1 %i.lt, label %bb.bf, label %gv_calloc.exit511

bb.bf:                                            ; preds = %bb.be
  %i.lu = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.lv = shl nuw nsw i64 %i.lo, 2
end_hunk_0
