inline.NumInlined: 3789
inline.NumDeleted: 2145
begin_hunk_0_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.086 = phi i64 [ %i.e, %bb.d ], [ %.086.be, %.backedge ] ; 9 uses
  %.082 = phi i64 [ %i.g, %bb.d ], [ %.082.be, %.backedge ] ; 18 uses
  %.058 = phi ptr [ %0, %bb.d ], [ %.058.be, %.backedge ] ; 24 uses
  %i.aq = sub nsw i64 %.086, %.082                ; 12 uses
  %i.ar = icmp slt i64 %.082, %i.aq
end_hunk_0
begin_hunk_1_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  br i1 %cmp.n, label %._crit_edge110, label %.lr.ph109.preheader229

.lr.ph109.preheader229:                           ; preds = %vector.memcheck, %.lr.ph109.preheader, %middle.block
  %.054107.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph109.preheader ], [ %n.vec, %middle.block ]
  %.055106.ph = phi ptr [ %i.ay, %vector.memcheck ], [ %i.ay, %.lr.ph109.preheader ], [ %i.az, %middle.block ]
  %.159105.ph = phi ptr [ %.058, %vector.memcheck ], [ %.058, %.lr.ph109.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph109

._crit_edge110:                                   ; preds = %.lr.ph109, %middle.block, %bb.g
  %.159.lcssa = phi ptr [ %.058, %bb.g ], [ %i.ba, %middle.block ], [ %i.bh, %.lr.ph109 ]
  %i.be = srem i64 %.086, %.082                   ; 2 uses
  %.not67 = icmp eq i64 %i.be, 0
  br i1 %.not67, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %bb.h

.lr.ph109:                                        ; preds = %.lr.ph109.preheader229, %.lr.ph109
  %.054107 = phi i64 [ %i.bj, %.lr.ph109 ], [ %.054107.ph, %.lr.ph109.preheader229 ]
  %.055106 = phi ptr [ %i.bi, %.lr.ph109 ], [ %.055106.ph, %.lr.ph109.preheader229 ] ; 3 uses
  %.159105 = phi ptr [ %i.bh, %.lr.ph109 ], [ %.159105.ph, %.lr.ph109.preheader229 ] ; 3 uses
  %i.bf = load i8, ptr %.159105, align 1, !tbaa !19
  %i.bg = load i8, ptr %.055106, align 1, !tbaa !19
  store i8 %i.bg, ptr %.159105, align 1, !tbaa !19
  store i8 %i.bf, ptr %.055106, align 1, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %.159105, i64 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.055106, i64 1
  %i.bj = add nuw nsw i64 %.054107, 1             ; 2 uses
  %exitcond118.not = icmp eq i64 %i.bj, %i.aq
  br i1 %exitcond118.not, label %._crit_edge110, label %.lr.ph109, !llvm.loop !1273

bb.h:                                             ; preds = %._crit_edge110
  %i.bk = sub nsw i64 %.082, %i.be
end_hunk_1
begin_hunk_2_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %offset.idx156 = sub i64 0, %index154
  %next.gep157 = getelementptr i8, ptr %i.bv, i64 %offset.idx156
  %i.cb = getelementptr inbounds i8, ptr %next.gep157, i64 -16 ; 2 uses
  %wide.load158 = load <16 x i8>, ptr %i.cb, align 1, !tbaa !19, !alias.scope !1274, !noalias !1277
  %i.cc = getelementptr inbounds i8, ptr %next.gep155, i64 -16 ; 2 uses
  %wide.load159 = load <16 x i8>, ptr %i.cc, align 1, !tbaa !19, !alias.scope !1277
  store <16 x i8> %wide.load159, ptr %i.cb, align 1, !tbaa !19, !alias.scope !1274, !noalias !1277
  store <16 x i8> %wide.load158, ptr %i.cc, align 1, !tbaa !19, !alias.scope !1277
  %index.next163 = add nuw i64 %index154, 16      ; 2 uses
  %i.cd = icmp eq i64 %index.next163, %n.vec152
  br i1 %i.cd, label %middle.block164, label %vector.body153, !llvm.loop !1279

middle.block164:                                  ; preds = %vector.body153
  %cmp.n165 = icmp eq i64 %.082, %n.vec152
end_hunk_2
begin_hunk_3_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a

vec.epilog.iter.check:                            ; preds = %middle.block164
  %min.epilog.iters.check.not.not = icmp eq i64 %n.mod.vf151, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !1280

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec152, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
end_hunk_3
begin_hunk_4_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %i.cj = sub i64 0, %index170
  %next.gep172 = getelementptr i8, ptr %i.bv, i64 %i.cj
  %i.ck = getelementptr inbounds i8, ptr %next.gep172, i64 -8 ; 2 uses
  %wide.load173 = load <8 x i8>, ptr %i.ck, align 1, !tbaa !19, !alias.scope !1274, !noalias !1277
  %i.cl = getelementptr inbounds i8, ptr %next.gep171, i64 -8 ; 2 uses
  %wide.load175 = load <8 x i8>, ptr %i.cl, align 1, !tbaa !19, !alias.scope !1277
  store <8 x i8> %wide.load175, ptr %i.ck, align 1, !tbaa !19, !alias.scope !1274, !noalias !1277
  store <8 x i8> %wide.load173, ptr %i.cl, align 1, !tbaa !19, !alias.scope !1277
  %index.next179 = add nuw i64 %index170, 8       ; 2 uses
  %i.cm = icmp eq i64 %index.next179, %n.vec169
  br i1 %i.cm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1281

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n180 = icmp eq i64 %.082, %n.vec169
end_hunk_4
begin_hunk_5_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %i.cr = add nuw nsw i64 %.0104.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1282

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0104.unr = phi i64 [ %.0104.ph, %.lr.ph.preheader ], [ %i.cr, %.lr.ph.prol ]
end_hunk_5
begin_hunk_6_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %.086.be = phi i64 [ %.082, %bb.h ], [ %i.aq, %._crit_edge ]
  %.082.be = phi i64 [ %i.bk, %bb.h ], [ %i.cu, %._crit_edge ]
  %.058.be = phi ptr [ %.159.lcssa, %bb.h ], [ %.260.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !1283

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0104 = phi i64 [ %i.dl, %.lr.ph ], [ %.0104.unr, %.lr.ph.prol.loopexit ]
end_hunk_6
begin_hunk_7_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  store i8 %i.dj, ptr %i.di, align 1, !tbaa !19
  %i.dl = add nuw nsw i64 %.0104, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dl, %.082
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !1284

_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit:         ; preds = %._crit_edge, %._crit_edge110, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block206, %vec.epilog.middle.block225, %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit, %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.ap, %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit ], [ %i.ap, %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit ], [ %1, %middle.block206 ], [ %1, %.lr.ph.i.prol.loopexit ], [ %1, %vec.epilog.middle.block225 ], [ %1, %.lr.ph.i ], [ %i.ap, %._crit_edge110 ], [ %i.ap, %._crit_edge ]
end_hunk_7
begin_hunk_8_@llvm.fshl.i64
!1270 = !{!1271}
!1271 = distinct !{!1271, !1269}
!1272 = distinct !{!1272, !457, !458, !459}
!1273 = distinct !{!1273, !457, !458}
!1274 = !{!1275}
!1275 = distinct !{!1275, !1276}
!1276 = distinct !{!1276, !"LVerDomain"}
!1277 = !{!1278}
!1278 = distinct !{!1278, !1276}
!1279 = distinct !{!1279, !457, !458, !459}
!1280 = !{!"branch_weights", i32 8, i32 8}
!1281 = distinct !{!1281, !457, !458, !459}
!1282 = distinct !{!1282, !1265}
!1283 = distinct !{!1283, !457}
!1284 = distinct !{!1284, !457, !458}
end_hunk_8
