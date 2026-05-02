inline.NumInlined: 2539
inline.NumDeleted: 512
begin_hunk_0_@_ZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextE:bb.a

.split.us:                                        ; preds = %.split.us.preheader, %.critedge.us
  %.sink346 = phi ptr [ %i.q, %.split.us.preheader ], [ %i.x, %.critedge.us ] ; 4 uses
  %.090.us = phi i8 [ 0, %.split.us.preheader ], [ %18, %.critedge.us ] ; 2 uses
  store ptr %.sink346, ptr %i.b, align 8, !tbaa !19
  %i.r = load i8, ptr %.sink346, align 1, !tbaa !66 ; 4 uses
  %i.s = sext i8 %i.r to i32                      ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextE:bb.a

.critedge.us:                                     ; preds = %bb.i, %.split.us
  %i.w = icmp eq i8 %i.r, 95
  %16 = trunc nuw i8 %.090.us to i1
  %17 = or i1 %i.w, %16
  %18 = zext i1 %17 to i8
  %i.x = getelementptr inbounds nuw i8, ptr %.sink346, i64 1
  br label %.split.us, !llvm.loop !224

.critedge:                                        ; preds = %.split.preheader, %.critedge
  %.old370 = phi i1 [ %.old, %.critedge ], [ %.old367, %.split.preheader ]
  %.090369 = phi i1 [ %19, %.critedge ], [ false, %.split.preheader ]
  %i.y = phi ptr [ %i.z, %.critedge ], [ %.promoted.ph, %.split.preheader ]
  %19 = or i1 %.old370, %.090369                  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 4 uses
  store ptr %i.z, ptr %i.b, align 8, !tbaa !19
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !66   ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextE:bb.a
  %isdigit = icmp ult i32 %isdigittmp, 10
  %.old = icmp eq i8 %i.aa, 95                    ; 2 uses
  %or.cond265 = or i1 %isdigit, %.old
  br i1 %or.cond265, label %.critedge, label %.split..split244.us.loopexit_crit_edge, !llvm.loop !224

.split..split244.us.loopexit_crit_edge:           ; preds = %.critedge
  %20 = zext i1 %19 to i8
  br label %.split244.us

.split244.us:                                     ; preds = %bb.i, %.split.preheader, %.split..split244.us.loopexit_crit_edge
  %.087311 = phi ptr [ %.087.ph, %.split.preheader ], [ %.087.ph, %.split..split244.us.loopexit_crit_edge ], [ %i.q, %bb.i ] ; 4 uses
  %.0207309 = phi i8 [ %.0207.ph, %.split.preheader ], [ %.0207.ph, %.split..split244.us.loopexit_crit_edge ], [ 0, %bb.i ] ; 4 uses
  %.0211307 = phi i32 [ %.0211.ph, %.split.preheader ], [ %.0211.ph, %.split..split244.us.loopexit_crit_edge ], [ 16, %bb.i ] ; 4 uses
  %.us-phi = phi i8 [ 0, %.split.preheader ], [ %20, %.split..split244.us.loopexit_crit_edge ], [ %.090.us, %bb.i ] ; 4 uses
  %.us-phi245 = phi ptr [ %.promoted.ph, %.split.preheader ], [ %i.z, %.split..split244.us.loopexit_crit_edge ], [ %.sink346, %bb.i ] ; 2 uses
  %.us-phi246 = phi i8 [ %i.o, %.split.preheader ], [ %i.aa, %.split..split244.us.loopexit_crit_edge ], [ %i.r, %bb.i ] ; 2 uses
  %i.ac = trunc nuw i8 %.0207309 to i1
  %or.cond = select i1 %i.e, i1 true, i1 %i.ac
  br i1 %or.cond, label %bb.j, label %.loopexit239
end_hunk_2
begin_hunk_3_@_ZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextE:bb.a
  %isdigit112250 = icmp ult i32 %isdigittmp111249, 10
  %i.ak = icmp eq i8 %i.ai, 95                    ; 2 uses
  %or.cond129251 = or i1 %i.ak, %isdigit112250
  br i1 %or.cond129251, label %.critedge4.preheader, label %._crit_edge

.critedge4.preheader:                             ; preds = %bb.n
  %21 = trunc nuw i8 %.191 to i1
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.preheader, %.critedge4
  %i.al = phi i1 [ %i.ap, %.critedge4 ], [ %i.ak, %.critedge4.preheader ]
  %.292253 = phi i1 [ %22, %.critedge4 ], [ %21, %.critedge4.preheader ]
  %storemerge110252 = phi ptr [ %i.am, %.critedge4 ], [ %storemerge, %.critedge4.preheader ]
  %22 = or i1 %i.al, %.292253                     ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %storemerge110252, i64 1 ; 4 uses
  store ptr %i.am, ptr %i.b, align 8, !tbaa !19
  %i.an = load i8, ptr %i.am, align 1, !tbaa !66  ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextE:bb.a
  %isdigit112 = icmp ult i32 %isdigittmp111, 10
  %i.ap = icmp eq i8 %i.an, 95                    ; 2 uses
  %or.cond129 = or i1 %i.ap, %isdigit112
  br i1 %or.cond129, label %.critedge4, label %._crit_edge.loopexit, !llvm.loop !225

._crit_edge.loopexit:                             ; preds = %.critedge4
  %23 = zext i1 %22 to i8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.n
  %storemerge110.lcssa = phi ptr [ %storemerge, %bb.n ], [ %i.am, %._crit_edge.loopexit ]
  %.292.lcssa = phi i8 [ %.191, %bb.n ], [ %23, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa240 = phi i8 [ %i.ai, %bb.n ], [ %i.an, %._crit_edge.loopexit ]
  %i.aq = and i8 %.lcssa240, -33
  %i.ar = icmp eq i8 %i.aq, 69
  br i1 %i.ar, label %bb.o, label %.loopexit239
end_hunk_4
begin_hunk_5_@_ZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextE:bb.a
  %i.aw = sext i8 %i.av to i32
  %isdigittmp113 = add nsw i32 %i.aw, -48
  %isdigit114 = icmp ult i32 %isdigittmp113, 10
  br i1 %isdigit114, label %.critedge6.preheader, label %.loopexit239.thread

.critedge6.preheader:                             ; preds = %bb.r
  %24 = trunc nuw i8 %.393 to i1
  br label %.critedge6

.critedge6:                                       ; preds = %.critedge6.preheader, %.critedge6
  %i.ax = phi i8 [ %i.bb, %.critedge6 ], [ %i.av, %.critedge6.preheader ]
  %i.ay = phi ptr [ %i.ba, %.critedge6 ], [ %.promoted256, %.critedge6.preheader ]
  %.494 = phi i1 [ %25, %.critedge6 ], [ %24, %.critedge6.preheader ]
  %i.az = icmp eq i8 %i.ax, 95
  %25 = or i1 %.494, %i.az                        ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 3 uses
  store ptr %i.ba, ptr %i.b, align 8, !tbaa !19
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !66  ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextE:bb.a
  %isdigit116 = icmp ult i32 %isdigittmp115, 10
  %i.bd = icmp eq i8 %i.bb, 95
  %or.cond130 = or i1 %i.bd, %isdigit116
  br i1 %or.cond130, label %.critedge6, label %.loopexit239.loopexit, !llvm.loop !226

.loopexit239.loopexit:                            ; preds = %.critedge6
  %26 = zext i1 %25 to i8
  br label %.loopexit239

.loopexit239:                                     ; preds = %.loopexit239.loopexit, %._crit_edge, %.split244.us, %bb.l
  %.3214 = phi i32 [ %.0211307, %.split244.us ], [ %.2213, %.loopexit239.loopexit ], [ %.1212, %._crit_edge ], [ %.0211307, %bb.l ] ; 11 uses
  %.3210 = phi i8 [ 0, %.split244.us ], [ %.2209, %.loopexit239.loopexit ], [ %.1208, %._crit_edge ], [ %.0207309, %bb.l ] ; 3 uses
  %.5 = phi i8 [ %.us-phi, %.split244.us ], [ %26, %.loopexit239.loopexit ], [ %.292.lcssa, %._crit_edge ], [ %.us-phi, %bb.l ] ; 3 uses
  %.3 = phi ptr [ %.087311, %.split244.us ], [ %.289, %.loopexit239.loopexit ], [ %.188, %._crit_edge ], [ %.087311, %bb.l ] ; 18 uses
  %.0 = phi i1 [ false, %.split244.us ], [ true, %.loopexit239.loopexit ], [ true, %._crit_edge ], [ false, %bb.l ] ; 3 uses
  %i.be = tail call noundef zeroext i1 @_ZN6hermes6parser7JSLexer22consumeIdentifierStartEv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  br i1 %i.be, label %bb.s, label %bb.ag

end_hunk_6
