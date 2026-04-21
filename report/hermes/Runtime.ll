inline.NumInlined: 3789
inline.NumDeleted: 2145
begin_hunk_0_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
bb.e:                                             ; preds = %.backedge, %bb.d
  %.086 = phi i64 [ %i.e, %bb.d ], [ %.086.be, %.backedge ] ; 11 uses
  %.082 = phi i64 [ %i.g, %bb.d ], [ %.082.be, %.backedge ] ; 20 uses
  %.058 = phi ptr [ %0, %bb.d ], [ %.058.be, %.backedge ] ; 26 uses
  %i.aq = sub nsw i64 %.086, %.082                ; 16 uses
  %i.ar = icmp slt i64 %.082, %i.aq
  br i1 %i.ar, label %bb.f, label %bb.i

end_hunk_0
begin_hunk_1_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  br i1 %i.ax, label %.lr.ph109.preheader.a, label %._crit_edge110

.lr.ph109.preheader.a:                            ; preds = %bb.g
  %i.ay = getelementptr i8, ptr %.058, i64 %.082  ; 7 uses
  %min.iters.check = icmp ult i64 %i.aq, 4
  br i1 %min.iters.check, label %.lr.ph109.preheader229, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph109.preheader.a
end_hunk_1
begin_hunk_2_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %bound0 = icmp ult ptr %.058, %scevgep135
  %bound1 = icmp ult ptr %i.ay, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph109.preheader229, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check136 = icmp ult i64 %i.aq, 32
  br i1 %min.iters.check136, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aq, 28
  %n.vec = and i64 %i.aq, 9223372036854775776     ; 6 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 %n.vec
  %i.ba = getelementptr i8, ptr %.058, i64 %n.vec ; 2 uses
  br label %vector.body
end_hunk_2
begin_hunk_3_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  store <16 x i8> %wide.load137, ptr %i.bc, align 1, !tbaa !19, !alias.scope !1270
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !1272

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %._crit_edge110, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph109.preheader229, label %vec.epilog.ph, !prof !1262

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec143 = and i64 %i.aq, 9223372036854775804  ; 5 uses
  %3 = getelementptr i8, ptr %i.ay, i64 %n.vec143
  %4 = getelementptr i8, ptr %.058, i64 %n.vec143 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index144 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next149, %vec.epilog.vector.body ] ; 3 uses
  %next.gep145 = getelementptr i8, ptr %i.ay, i64 %index144 ; 2 uses
  %next.gep146 = getelementptr i8, ptr %.058, i64 %index144 ; 2 uses
  %wide.load147 = load <4 x i8>, ptr %next.gep146, align 1, !tbaa !19, !alias.scope !1267, !noalias !1270
  %wide.load148 = load <4 x i8>, ptr %next.gep145, align 1, !tbaa !19, !alias.scope !1270
  store <4 x i8> %wide.load148, ptr %next.gep146, align 1, !tbaa !19, !alias.scope !1267, !noalias !1270
  store <4 x i8> %wide.load147, ptr %next.gep145, align 1, !tbaa !19, !alias.scope !1270
  %index.next149 = add nuw i64 %index144, 4       ; 2 uses
  %5 = icmp eq i64 %index.next149, %n.vec143
  br i1 %5, label %middle.block.a, label %vec.epilog.vector.body, !llvm.loop !1273

middle.block.a:                                   ; preds = %vec.epilog.vector.body
  %cmp.n.a = icmp eq i64 %i.aq, %n.vec143
  br i1 %cmp.n.a, label %._crit_edge110, label %.lr.ph109.preheader229

.lr.ph109.preheader229:                           ; preds = %vector.memcheck, %.lr.ph109.preheader.a, %vec.epilog.iter.check, %middle.block.a
  %.054107.ph = phi i64 [ 0, %.lr.ph109.preheader.a ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec143, %middle.block.a ] ; 3 uses
  %.055106.ph = phi ptr [ %i.ay, %.lr.ph109.preheader.a ], [ %i.ay, %vector.memcheck ], [ %i.az, %vec.epilog.iter.check ], [ %3, %middle.block.a ] ; 2 uses
  %.159105.ph = phi ptr [ %.058, %.lr.ph109.preheader.a ], [ %.058, %vector.memcheck ], [ %i.ba, %vec.epilog.iter.check ], [ %4, %middle.block.a ] ; 2 uses
  %i.be = sub i64 %.086, %.082
  %xtraiter236 = and i64 %i.be, 3                 ; 2 uses
  %lcmp.mod237.not = icmp eq i64 %xtraiter236, 0
end_hunk_3
begin_hunk_4_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %i.bj = add nuw nsw i64 %.054107.prol, 1        ; 2 uses
  %prol.iter238.next = add i64 %prol.iter238, 1   ; 2 uses
  %prol.iter238.cmp.not = icmp eq i64 %prol.iter238.next, %xtraiter236
  br i1 %prol.iter238.cmp.not, label %.lr.ph109.prol.loopexit, label %.lr.ph109.prol, !llvm.loop !1274

.lr.ph109.prol.loopexit:                          ; preds = %.lr.ph109.prol, %.lr.ph109.preheader229
  %.lcssa.unr = phi ptr [ poison, %.lr.ph109.preheader229 ], [ %i.bh, %.lr.ph109.prol ]
end_hunk_4
begin_hunk_5_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %._crit_edge110, label %.lr.ph109

._crit_edge110:                                   ; preds = %.lr.ph109.prol.loopexit, %.lr.ph109, %middle.block, %middle.block.a, %bb.g
  %.159.lcssa = phi ptr [ %.058, %bb.g ], [ %4, %middle.block.a ], [ %i.ba, %middle.block ], [ %.lcssa.unr, %.lr.ph109.prol.loopexit ], [ %i.cc, %.lr.ph109 ]
  %i.bn = srem i64 %.086, %.082                   ; 2 uses
  %.not67 = icmp eq i64 %i.bn, 0
  br i1 %.not67, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %bb.h
end_hunk_5
begin_hunk_6_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %.055106, i64 4
  %i.ce = add nuw nsw i64 %.054107, 4             ; 2 uses
  %exitcond118.not.3 = icmp eq i64 %i.ce, %i.aq
  br i1 %exitcond118.not.3, label %._crit_edge110, label %.lr.ph109, !llvm.loop !1275

bb.h:                                             ; preds = %._crit_edge110
  %i.cf = sub nsw i64 %.082, %i.bn
end_hunk_6
begin_hunk_7_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %offset.idx156 = sub i64 0, %index154
  %next.gep157 = getelementptr i8, ptr %i.cq, i64 %offset.idx156
  %i.cw = getelementptr inbounds i8, ptr %next.gep157, i64 -16 ; 2 uses
  %wide.load158 = load <16 x i8>, ptr %i.cw, align 1, !tbaa !19, !alias.scope !1276, !noalias !1279
  %i.cx = getelementptr inbounds i8, ptr %next.gep155, i64 -16 ; 2 uses
  %wide.load159 = load <16 x i8>, ptr %i.cx, align 1, !tbaa !19, !alias.scope !1279
  store <16 x i8> %wide.load159, ptr %i.cw, align 1, !tbaa !19, !alias.scope !1276, !noalias !1279
  store <16 x i8> %wide.load158, ptr %i.cx, align 1, !tbaa !19, !alias.scope !1279
  %index.next163 = add nuw i64 %index154, 16      ; 2 uses
  %i.cy = icmp eq i64 %index.next163, %n.vec152
  br i1 %i.cy, label %middle.block164, label %vector.body153, !llvm.loop !1281

middle.block164:                                  ; preds = %vector.body153
  %cmp.n165 = icmp eq i64 %.082, %n.vec152
end_hunk_7
begin_hunk_8_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a

vec.epilog.iter.check.a:                          ; preds = %middle.block164
  %min.epilog.iters.check.not.not = icmp eq i64 %n.mod.vf151, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.preheader, label %vec.epilog.ph.a, !prof !1282

vec.epilog.ph.a:                                  ; preds = %vector.main.loop.iter.check.a, %vec.epilog.iter.check.a
  %vec.epilog.resume.val.a = phi i64 [ %n.vec152, %vec.epilog.iter.check.a ], [ 0, %vector.main.loop.iter.check.a ]
end_hunk_8
begin_hunk_9_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %i.de = sub i64 0, %index170
  %next.gep172 = getelementptr i8, ptr %i.cq, i64 %i.de
  %i.df = getelementptr inbounds i8, ptr %next.gep172, i64 -8 ; 2 uses
  %wide.load173 = load <8 x i8>, ptr %i.df, align 1, !tbaa !19, !alias.scope !1276, !noalias !1279
  %i.dg = getelementptr inbounds i8, ptr %next.gep171, i64 -8 ; 2 uses
  %wide.load175 = load <8 x i8>, ptr %i.dg, align 1, !tbaa !19, !alias.scope !1279
  store <8 x i8> %wide.load175, ptr %i.df, align 1, !tbaa !19, !alias.scope !1276, !noalias !1279
  store <8 x i8> %wide.load173, ptr %i.dg, align 1, !tbaa !19, !alias.scope !1279
  %index.next179 = add nuw i64 %index170, 8       ; 2 uses
  %i.dh = icmp eq i64 %index.next179, %n.vec169
  br i1 %i.dh, label %vec.epilog.middle.block, label %vec.epilog.vector.body.a, !llvm.loop !1283

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body.a
  %cmp.n180 = icmp eq i64 %.082, %n.vec169
end_hunk_9
begin_hunk_10_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %i.dm = add nuw nsw i64 %.0104.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1284

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0104.unr = phi i64 [ %.0104.ph, %.lr.ph.preheader ], [ %i.dm, %.lr.ph.prol ]
end_hunk_10
begin_hunk_11_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %.086.be = phi i64 [ %.082, %bb.h ], [ %i.aq, %._crit_edge ]
  %.082.be = phi i64 [ %i.cf, %bb.h ], [ %i.dp, %._crit_edge ]
  %.058.be = phi ptr [ %.159.lcssa, %bb.h ], [ %.260.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !1285

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0104 = phi i64 [ %i.eg, %.lr.ph ], [ %.0104.unr, %.lr.ph.prol.loopexit ]
end_hunk_11
begin_hunk_12_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  store i8 %i.ee, ptr %i.ed, align 1, !tbaa !19
  %i.eg = add nuw nsw i64 %.0104, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.eg, %.082
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !1286

_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit:         ; preds = %._crit_edge, %._crit_edge110, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block206, %vec.epilog.middle.block225, %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit, %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.ap, %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit ], [ %i.ap, %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit ], [ %1, %middle.block206 ], [ %1, %.lr.ph.i.prol.loopexit ], [ %1, %vec.epilog.middle.block225 ], [ %1, %.lr.ph.i ], [ %i.ap, %._crit_edge110 ], [ %i.ap, %._crit_edge ]
end_hunk_12
begin_hunk_13_@llvm.fshl.i64
!1270 = !{!1271}
!1271 = distinct !{!1271, !1269}
!1272 = distinct !{!1272, !457, !458, !459}
!1273 = distinct !{!1273, !457, !458, !459}
!1274 = distinct !{!1274, !1265}
!1275 = distinct !{!1275, !457, !458}
!1276 = !{!1277}
!1277 = distinct !{!1277, !1278}
!1278 = distinct !{!1278, !"LVerDomain"}
!1279 = !{!1280}
!1280 = distinct !{!1280, !1278}
!1281 = distinct !{!1281, !457, !458, !459}
!1282 = !{!"branch_weights", i32 8, i32 8}
!1283 = distinct !{!1283, !457, !458, !459}
!1284 = distinct !{!1284, !1265}
!1285 = distinct !{!1285, !457}
!1286 = distinct !{!1286, !457, !458}
end_hunk_13
