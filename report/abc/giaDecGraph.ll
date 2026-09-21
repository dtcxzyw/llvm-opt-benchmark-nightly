Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaDecGraph?download=true
inline.NumInlined: 3483
inline.NumDeleted: 1207
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN8DecGraph15DecisionDiagram15buildOneClusterERSt6vectorIiSaIiEE:bb.a
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.are, ptr noundef nonnull %i.arf, ptr noundef nonnull %.sroa.4.0.i.ph.i.i434, ptr noundef nonnull align 8 dereferenceable(32) %i.ax) #36
  br label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit.sink.split

bb.em:                                            ; preds = %bb.eg
  %i.arh = and i32 %i.aqo, 1
  %.not35.i = icmp eq i32 %i.arh, 0
  br i1 %.not35.i, label %bb.en, label %.thread645

bb.en:                                            ; preds = %bb.em
  %i.ari = load i32, ptr %i.bf, align 8, !tbaa !125
  %.not36.i = icmp eq i32 %i.aqo, %i.ari
  br i1 %.not36.i, label %.thread645, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.arj = ashr exact i32 %i.aqo, 1               ; 4 uses
  %.02022.i.i.i394 = load ptr, ptr %i.ay, align 8, !tbaa !100 ; 2 uses
  %.not23.i.i.i395 = icmp eq ptr %.02022.i.i.i394, null
  br i1 %.not23.i.i.i395, label %._crit_edge.thread.i.i.i412, label %.lr.ph.i.i.i396

.lr.ph.i.i.i396:                                  ; preds = %bb.eo, %.lr.ph.i.i.i396
  %.02024.i.i.i397 = phi ptr [ %.020.i.i.i400, %.lr.ph.i.i.i396 ], [ %.02022.i.i.i394, %bb.eo ] ; 4 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %.02024.i.i.i397, i64 32
  %i.arl = load i32, ptr %i.ark, align 4, !tbaa !46 ; 2 uses
  %i.arm = icmp slt i32 %i.arj, %i.arl            ; 2 uses
  %.in.v.i.i.i398 = select i1 %i.arm, i64 16, i64 24
  %.in.i.i.i399 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i397, i64 %.in.v.i.i.i398
  %.020.i.i.i400 = load ptr, ptr %.in.i.i.i399, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i401 = icmp eq ptr %.020.i.i.i400, null
  br i1 %.not.i.i.i401, label %._crit_edge.i.i.i402, label %.lr.ph.i.i.i396, !llvm.loop !7

._crit_edge.i.i.i402:                             ; preds = %.lr.ph.i.i.i396
  br i1 %i.arm, label %._crit_edge.thread.i.i.i412, label %bb.eq

._crit_edge.thread.i.i.i412:                      ; preds = %._crit_edge.i.i.i402, %bb.eo
  %.019.lcssa29.i.i.i413 = phi ptr [ %.02024.i.i.i397, %._crit_edge.i.i.i402 ], [ %i.ax, %bb.eo ] ; 4 uses
  %i.arn = load ptr, ptr %i.az, align 8, !tbaa !104
  %i.aro = icmp eq ptr %.019.lcssa29.i.i.i413, %i.arn
  br i1 %i.aro, label %select.unfold.i.i409, label %bb.ep

bb.ep:                                            ; preds = %._crit_edge.thread.i.i.i412
  %i.arp = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i413) #41
  %.phi.trans.insert.i.i414 = getelementptr inbounds nuw i8, ptr %i.arp, i64 32
  %.pre.i.i415 = load i32, ptr %.phi.trans.insert.i.i414, align 4, !tbaa !46
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %._crit_edge.i.i.i402
  %i.arq = phi i32 [ %.pre.i.i415, %bb.ep ], [ %i.arl, %._crit_edge.i.i.i402 ]
  %.019.lcssa28.i.i.i403 = phi ptr [ %.019.lcssa29.i.i.i413, %bb.ep ], [ %.02024.i.i.i397, %._crit_edge.i.i.i402 ]
  %i.arr = icmp slt i32 %i.arq, %i.arj
  br i1 %i.arr, label %select.unfold.i.i409, label %.thread645

select.unfold.i.i409:                             ; preds = %bb.eq, %._crit_edge.thread.i.i.i412
  %.sroa.4.0.i.ph.i.i410 = phi ptr [ %.019.lcssa29.i.i.i413, %._crit_edge.thread.i.i.i412 ], [ %.019.lcssa28.i.i.i403, %bb.eq ] ; 3 uses
  %i.ars = icmp eq ptr %.sroa.4.0.i.ph.i.i410, %i.ax
  br i1 %i.ars, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i411, label %bb.er

bb.er:                                            ; preds = %select.unfold.i.i409
  %i.art = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i410, i64 32
  %i.aru = load i32, ptr %i.art, align 4, !tbaa !46
  %i.arv = icmp slt i32 %i.arj, %i.aru
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i411

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i411: ; preds = %bb.er, %select.unfold.i.i409
  %i.arw = phi i1 [ %i.arv, %bb.er ], [ true, %select.unfold.i.i409 ]
  %i.arx = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #37 ; 2 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arx, i64 32
  store i32 %i.arj, ptr %i.ary, align 4, !tbaa !46
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.arw, ptr noundef nonnull %i.arx, ptr noundef nonnull %.sroa.4.0.i.ph.i.i410, ptr noundef nonnull align 8 dereferenceable(32) %i.ax) #36
  %i.arz = load i64, ptr %i.bb, align 8, !tbaa !105
  %i.asa = add i64 %i.arz, 1
  store i64 %i.asa, ptr %i.bb, align 8, !tbaa !105
  br label %.thread645

.thread645:                                       ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i411, %bb.eq, %bb.eh, %bb.en, %bb.em
  %i.asb = load i32, ptr %i.aqm, align 4, !tbaa !128 ; 3 uses
  %i.asc = and i32 %i.asb, 1
  %.not37.i = icmp eq i32 %i.asc, 0
  br i1 %.not37.i, label %bb.es, label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit

bb.es:                                            ; preds = %.thread645
  %i.asd = load i32, ptr %i.bf, align 8, !tbaa !125
  %.not38.i = icmp eq i32 %i.asb, %i.asd
  br i1 %.not38.i, label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.ase = ashr exact i32 %i.asb, 1               ; 4 uses
  %.02022.i.i.i372 = load ptr, ptr %i.ay, align 8, !tbaa !100 ; 2 uses
  %.not23.i.i.i373 = icmp eq ptr %.02022.i.i.i372, null
  br i1 %.not23.i.i.i373, label %._crit_edge.thread.i.i.i389, label %.lr.ph.i.i.i374

.lr.ph.i.i.i374:                                  ; preds = %bb.et, %.lr.ph.i.i.i374
  %.02024.i.i.i375 = phi ptr [ %.020.i.i.i378, %.lr.ph.i.i.i374 ], [ %.02022.i.i.i372, %bb.et ] ; 4 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %.02024.i.i.i375, i64 32
  %i.asg = load i32, ptr %i.asf, align 4, !tbaa !46 ; 2 uses
  %i.ash = icmp slt i32 %i.ase, %i.asg            ; 2 uses
  %.in.v.i.i.i376 = select i1 %i.ash, i64 16, i64 24
  %.in.i.i.i377 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i375, i64 %.in.v.i.i.i376
  %.020.i.i.i378 = load ptr, ptr %.in.i.i.i377, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i379 = icmp eq ptr %.020.i.i.i378, null
  br i1 %.not.i.i.i379, label %._crit_edge.i.i.i380, label %.lr.ph.i.i.i374, !llvm.loop !7

._crit_edge.i.i.i380:                             ; preds = %.lr.ph.i.i.i374
  br i1 %i.ash, label %._crit_edge.thread.i.i.i389, label %bb.ev

._crit_edge.thread.i.i.i389:                      ; preds = %._crit_edge.i.i.i380, %bb.et
  %.019.lcssa29.i.i.i390 = phi ptr [ %.02024.i.i.i375, %._crit_edge.i.i.i380 ], [ %i.ax, %bb.et ] ; 4 uses
  %i.asi = load ptr, ptr %i.az, align 8, !tbaa !104
  %i.asj = icmp eq ptr %.019.lcssa29.i.i.i390, %i.asi
  br i1 %i.asj, label %select.unfold.i.i387, label %bb.eu

bb.eu:                                            ; preds = %._crit_edge.thread.i.i.i389
  %i.ask = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i390) #41
  %.phi.trans.insert.i.i391 = getelementptr inbounds nuw i8, ptr %i.ask, i64 32
  %.pre.i.i392 = load i32, ptr %.phi.trans.insert.i.i391, align 4, !tbaa !46
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %._crit_edge.i.i.i380
  %i.asl = phi i32 [ %.pre.i.i392, %bb.eu ], [ %i.asg, %._crit_edge.i.i.i380 ]
  %.019.lcssa28.i.i.i381 = phi ptr [ %.019.lcssa29.i.i.i390, %bb.eu ], [ %.02024.i.i.i375, %._crit_edge.i.i.i380 ]
  %i.asm = icmp slt i32 %i.asl, %i.ase
  br i1 %i.asm, label %select.unfold.i.i387, label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit

select.unfold.i.i387:                             ; preds = %bb.ev, %._crit_edge.thread.i.i.i389
  %.sroa.4.0.i.ph.i.i388 = phi ptr [ %.019.lcssa29.i.i.i390, %._crit_edge.thread.i.i.i389 ], [ %.019.lcssa28.i.i.i381, %bb.ev ] ; 3 uses
  %i.asn = icmp eq ptr %.sroa.4.0.i.ph.i.i388, %i.ax
  br i1 %i.asn, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i, label %bb.ew

bb.ew:                                            ; preds = %select.unfold.i.i387
  %i.aso = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i388, i64 32
  %i.asp = load i32, ptr %i.aso, align 4, !tbaa !46
  %i.asq = icmp slt i32 %i.ase, %i.asp
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i: ; preds = %bb.ew, %select.unfold.i.i387
  %i.asr = phi i1 [ %i.asq, %bb.ew ], [ true, %select.unfold.i.i387 ]
  %i.ass = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #37 ; 2 uses
  %i.ast = getelementptr inbounds nuw i8, ptr %i.ass, i64 32
  store i32 %i.ase, ptr %i.ast, align 4, !tbaa !46
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.asr, ptr noundef nonnull %i.ass, ptr noundef nonnull %.sroa.4.0.i.ph.i.i388, ptr noundef nonnull align 8 dereferenceable(32) %i.ax) #36
  br label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit.sink.split

_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit.sink.split: ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i435, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i
  %i.asu = load i64, ptr %i.bb, align 8, !tbaa !105
  %i.asv = add i64 %i.asu, 1
  store i64 %i.asv, ptr %i.bb, align 8, !tbaa !105
  br label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit

_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit: ; preds = %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit.sink.split, %bb.ev, %bb.ek, %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i, %bb.ef, %.thread645, %bb.es
  %i.asw = getelementptr inbounds nuw i8, ptr %.sroa.0455.0780, i64 4 ; 2 uses
  %.not655 = icmp eq ptr %i.asw, %i.akg
  br i1 %.not655, label %._crit_edge783, label %.lr.ph782

_ZNSt6vectorIfSaIfEED2Ev.exit365:                 ; preds = %bb.dp, %_ZNSt6vectorIiSaIiEED2Ev.exit363, %_ZNSt6vectorIiSaIiEED2Ev.exit196
  %i.asx = load ptr, ptr %i.ar, align 8, !tbaa !135
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.asx)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.asy = load ptr, ptr %3, align 8, !tbaa !67   ; 3 uses
  %.not.i.i.i368 = icmp eq ptr %i.asy, null
  br i1 %.not.i.i.i368, label %_ZNSt6vectorIiSaIiEED2Ev.exit369, label %bb.ex

bb.ex:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit365
  %i.asz = load ptr, ptr %i.am, align 8, !tbaa !75
  %i.ata = ptrtoint ptr %i.asz to i64
  %i.atb = ptrtoint ptr %i.asy to i64
  %i.atc = sub i64 %i.ata, %i.atb
  call void @_ZdlPvm(ptr noundef nonnull %i.asy, i64 noundef %i.atc) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit369

_ZNSt6vectorIiSaIiEED2Ev.exit369:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit365, %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.atd = load ptr, ptr %2, align 16, !tbaa !93  ; 3 uses
  %i.ate = load ptr, ptr %i.k, align 8, !tbaa !93 ; 2 uses
  %i.atf = icmp eq ptr %i.atd, %i.ate
  br i1 %i.atf, label %._crit_edge785, label %bb.g

._crit_edge785:                                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit369, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %.lcssa710 = phi ptr [ %i.j, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ], [ %i.atd, %_ZNSt6vectorIiSaIiEED2Ev.exit369 ] ; 3 uses
  %.not.i.i.i370 = icmp eq ptr %.lcssa710, null
  br i1 %.not.i.i.i370, label %_ZNSt6vectorIiSaIiEED2Ev.exit371, label %bb.ey

bb.ey:                                            ; preds = %._crit_edge785
  %i.atg = load ptr, ptr %i.m, align 16, !tbaa !75
  %i.ath = ptrtoint ptr %i.atg to i64
  %i.ati = ptrtoint ptr %.lcssa710 to i64
  %i.atj = sub i64 %i.ath, %i.ati
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa710, i64 noundef %i.atj) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit371

_ZNSt6vectorIiSaIiEED2Ev.exit371:                 ; preds = %._crit_edge785, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN8DecGraph15DecisionDiagram7topoRecEiRSt3setIiSt4lessIiESaIiEERSt6vectorIiS4_E(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread.thread.a, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load i32, ptr %i.d, align 4, !tbaa !46
  %i.f = icmp slt i32 %i.e, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !16

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %.thread, label %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread.a

_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread.a: ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i
  %4 = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = icmp sge i32 %1, %5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp eq i32 %1, %i.i
  %or.cond = select i1 %6, i1 true, i1 %i.j
  br i1 %or.cond, label %.critedge, label %.lr.ph.i.i.i10.preheader

_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread.thread.a: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !125
  %i.m = icmp eq i32 %1, %i.l
  br i1 %i.m, label %.critedge, label %._crit_edge.thread.i.i.i

.thread:                                          ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !125
  %i.p = icmp eq i32 %1, %i.o
  br i1 %i.p, label %.critedge, label %.lr.ph.i.i.i10.preheader

.lr.ph.i.i.i10.preheader:                         ; preds = %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread.a, %.thread
  br label %.lr.ph.i.i.i10

.lr.ph.i.i.i10:                                   ; preds = %.lr.ph.i.i.i10.preheader, %.lr.ph.i.i.i10
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i10 ], [ %i.b, %.lr.ph.i.i.i10.preheader ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.r = load i32, ptr %i.q, align 4, !tbaa !46   ; 2 uses
  %i.s = icmp slt i32 %1, %i.r                    ; 2 uses
  %.in.v.i.i.i = select i1 %i.s, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i11 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i11, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i10, !llvm.loop !7

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i10
  br i1 %i.s, label %._crit_edge.thread.i.i.i, label %bb.c

._crit_edge.thread.i.i.i:                         ; preds = %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread.thread.a, %._crit_edge.i.i.i
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.c, %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread.thread.a ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !104
  %i.v = icmp eq ptr %.019.lcssa29.i.i.i, %i.u
  br i1 %i.v, label %select.unfold.i.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.w = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #41
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i.i
  %i.x = phi i32 [ %.pre.i.i, %bb.b ], [ %i.r, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.b ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.y = icmp slt i32 %i.x, %1
  br i1 %i.y, label %select.unfold.i.i, label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit

select.unfold.i.i:                                ; preds = %bb.c, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.c ] ; 3 uses
  %i.z = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.c
  br i1 %i.z, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %select.unfold.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !46
  %i.ac = icmp slt i32 %1, %i.ab
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.d, %select.unfold.i.i
  %i.ad = phi i1 [ %i.ac, %bb.d ], [ true, %select.unfold.i.i ]
  %i.ae = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #37 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store i32 %1, ptr %i.af, align 4, !tbaa !46
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ad, ptr noundef nonnull %i.ae, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #36
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !105
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !105
  br label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit

_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit:      ; preds = %bb.c, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = sext i32 %1 to i64                      ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !124 ; 2 uses
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %i.al, i64 %i.ak
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !129 ; 2 uses
  %.not = icmp eq i32 %i.ao, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit
  %i.ap = ashr i32 %i.ao, 1
  tail call void @_ZN8DecGraph15DecisionDiagram7topoRecEiRSt3setIiSt4lessIiESaIiEERSt6vectorIiS4_E(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !124
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit
  %i.aq = phi ptr [ %.pre, %bb.e ], [ %i.al, %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit ]
  %i.ar = getelementptr inbounds nuw [48 x i8], ptr %i.aq, i64 %i.ak
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 44
  %i.at = load i32, ptr %i.as, align 4, !tbaa !128 ; 2 uses
  %.not9 = icmp eq i32 %i.at, -1
  br i1 %.not9, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = ashr i32 %i.at, 1
  tail call void @_ZN8DecGraph15DecisionDiagram7topoRecEiRSt3setIiSt4lessIiESaIiEERSt6vectorIiS4_E(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %i.au, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !66 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !75
  %.not.i = icmp eq ptr %i.aw, %i.ay
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %1, ptr %i.aw, align 4, !tbaa !46
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store ptr %i.az, ptr %i.av, align 8, !tbaa !66
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %3, align 8, !tbaa !67    ; 4 uses
  %i.bb = ptrtoint ptr %i.aw to i64
  %i.bc = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bd = sub i64 %i.bb, %i.bc                    ; 5 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775804
  br i1 %i.be, label %bb.k, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #40
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bf = ashr exact i64 %i.bd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 2305843009213693951)
  %i.bj = select i1 %i.bh, i64 2305843009213693951, i64 %i.bi ; 3 uses
  %.not.i.i.i12 = icmp ne i64 %i.bj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i12)
  %i.bk = shl nuw nsw i64 %i.bj, 2
  %i.bl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #37 ; 4 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.bd ; 2 uses
  store i32 %1, ptr %i.bm, align 4, !tbaa !46
  %i.bn = icmp sgt i64 %i.bd, 0
  br i1 %i.bn, label %bb.l, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bl, ptr align 4 %i.ba, i64 %i.bd, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.l, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.bp = load ptr, ptr %i.ax, align 8, !tbaa !75
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.br) #35
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.bl, ptr %3, align 8, !tbaa !67
  store ptr %i.bo, ptr %i.av, align 8, !tbaa !66
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bj
  store ptr %i.bs, ptr %i.ax, align 8, !tbaa !75
  br label %.critedge

.critedge:                                        ; preds = %.thread, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.i, %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread.a, %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread.thread.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN8DecGraph15DecisionDiagram42buildWithTheseSupportWithEntropyAndFourierERSt6vectorIiSaIiEERSt3setIiSt4lessIiES2_E(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.9") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::set.70", align 8       ; 9 uses
  %5 = alloca %"class.std::vector.24", align 8    ; 5 uses
  %i.a = alloca i32, align 4                      ; 11 uses
  %6 = alloca %"class.DecGraph::TruthTable", align 8 ; 10 uses
  %7 = alloca %"class.DecGraph::TruthTable", align 8 ; 10 uses
  %8 = alloca %"class.std::set.70", align 8       ; 8 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !67     ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.e = sext i32 %i.c to i64
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !124
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i8, ptr %i.h, align 8, !tbaa !49    ; 5 uses
  %i.j = zext i8 %i.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 13 uses
  store i32 0, ptr %i.k, align 8, !tbaa !134
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr null, ptr %i.l, align 8, !tbaa !135
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store ptr %i.k, ptr %i.m, align 8, !tbaa !104
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.k, ptr %i.n, align 8, !tbaa !136
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 5 uses
  store i64 0, ptr %i.o, align 8, !tbaa !105
  %.not435496 = icmp eq i8 %i.i, 0                ; 4 uses
  br i1 %.not435496, label %.preheader447, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.b

.preheader447.loopexit:                           ; preds = %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit
  %.pre = load ptr, ptr %2, align 8, !tbaa !93
  br label %.preheader447

.preheader447:                                    ; preds = %.preheader447.loopexit, %bb.a
  %i.r = phi ptr [ %.pre, %.preheader447.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !93   ; 2 uses
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %.critedge.thread, label %.lr.ph526

.lr.ph526:                                        ; preds = %.preheader447
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.w = zext i8 %i.i to i64                      ; 6 uses
  %i.x = shl nuw nsw i64 %i.w, 2                  ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 15 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ao = zext i8 %i.i to i64                     ; 2 uses
  %i.ap = add nsw i64 %i.x, -4                    ; 2 uses
  %i.aq = lshr exact i64 %i.ap, 2
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check847 = icmp ult i64 %i.ap, 28
  %n.vec849 = and i64 %i.ar, 9223372036854775800  ; 3 uses
  %i.as = shl i64 %n.vec849, 2
  %cmp.n855 = icmp eq i64 %i.ar, %n.vec849
  %min.iters.check833 = icmp ult i8 %i.i, 8
  %n.vec835 = and i64 %i.w, 248                   ; 3 uses
  %cmp.n844 = icmp eq i64 %n.vec835, %i.w
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.at = add nsw i64 %i.w, -1
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph, %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit
  %.sroa.0405.0497 = phi i32 [ 0, %.lr.ph ], [ %i.bt, %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit ] ; 7 uses
  %i.au = load ptr, ptr %i.p, align 8, !tbaa !135 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not10.i.i.i, label %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.au, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.q, %bb.b ]
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !46
  %i.ax = icmp slt i32 %i.aw, %.sroa.0405.0497    ; 2 uses
  %.19.i.i.i = select i1 %i.ax, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.ax, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !16

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.ay = icmp eq ptr %.19.i.i.i, %i.q
  br i1 %i.ay, label %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread, label %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit

_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit:        ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !46
  %i.bb = icmp slt i32 %.sroa.0405.0497, %i.ba
  br i1 %i.bb, label %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread, label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit

_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread: ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i, %bb.b, %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit
  %.02022.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !100 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i79

.lr.ph.i.i.i79:                                   ; preds = %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread, %.lr.ph.i.i.i79
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i79 ], [ %.02022.i.i.i, %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !46 ; 2 uses
  %i.be = icmp slt i32 %.sroa.0405.0497, %i.bd    ; 2 uses
  %.in.v.i.i.i = select i1 %i.be, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i80 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i80, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i79, !llvm.loop !7

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i79
  br i1 %i.be, label %._crit_edge.thread.i.i.i, label %bb.d

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.k, %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread ] ; 4 uses
  %i.bf = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.bg = icmp eq ptr %.019.lcssa29.i.i.i, %i.bf
  br i1 %i.bg, label %select.unfold.i.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.bh = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #41
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i
  %i.bi = phi i32 [ %.pre.i.i, %bb.c ], [ %i.bd, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.c ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.bj = icmp slt i32 %i.bi, %.sroa.0405.0497
  br i1 %i.bj, label %select.unfold.i.i, label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit

select.unfold.i.i:                                ; preds = %bb.d, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.d ] ; 3 uses
  %i.bk = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.k
  br i1 %i.bk, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %select.unfold.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !46
  %i.bn = icmp slt i32 %.sroa.0405.0497, %i.bm
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.e, %select.unfold.i.i
  %i.bo = phi i1 [ %i.bn, %bb.e ], [ true, %select.unfold.i.i ]
  %i.bp = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #37 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  store i32 %.sroa.0405.0497, ptr %i.bq, align 4, !tbaa !46
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bo, ptr noundef nonnull %i.bp, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.k) #36
  %i.br = load i64, ptr %i.o, align 8, !tbaa !105
  %i.bs = add i64 %i.br, 1
  store i64 %i.bs, ptr %i.o, align 8, !tbaa !105
  br label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit

_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit:      ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, %bb.d, %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit
  %i.bt = add nuw nsw i32 %.sroa.0405.0497, 1     ; 2 uses
  %.not435 = icmp eq i32 %i.bt, %i.j
  br i1 %.not435, label %.preheader447.loopexit, label %bb.b

.critedge.thread:                                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit235, %.preheader447
  %i.bu = phi ptr [ %i.r, %.preheader447 ], [ %i.xi, %_ZNSt6vectorIfSaIfEED2Ev.exit235 ] ; 2 uses
  %i.bv = ptrtoint ptr %i.bu to i64               ; 2 uses
  br label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i

bb.f:                                             ; preds = %.lr.ph526, %_ZNSt6vectorIfSaIfEED2Ev.exit235
  %i.bw = phi ptr [ %i.t, %.lr.ph526 ], [ %i.xj, %_ZNSt6vectorIfSaIfEED2Ev.exit235 ] ; 2 uses
  %i.bx = phi ptr [ %i.r, %.lr.ph526 ], [ %i.xi, %_ZNSt6vectorIfSaIfEED2Ev.exit235 ] ; 2 uses
  %i.by = load i64, ptr %i.v, align 8, !tbaa !105
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.cq, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not435496, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ca = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #37 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.x ; 2 uses
  br i1 %min.iters.check847, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph848

end_hunk_0
