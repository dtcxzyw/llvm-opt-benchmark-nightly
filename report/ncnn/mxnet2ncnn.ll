Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/mxnet2ncnn?download=true
inline.NumInlined: 2390
inline.NumDeleted: 693
begin_hunk_0_@main:bb.a

bb.li:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i2578, %.lr.ph.i2573
  %.02933.i2574 = phi ptr [ %.02931.i2571, %.lr.ph.i2573 ], [ %.029.i2582, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i2578 ] ; 6 uses
  %i.bbu = getelementptr inbounds nuw i8, ptr %.02933.i2574, i64 40
  %i.bbv = load i64, ptr %i.bbu, align 8, !tbaa !26 ; 3 uses
  %.sroa.speculated.i.i.i.i2575 = call i64 @llvm.umin.i64(i64 %i.bbv, i64 %i.bbs) ; 3 uses
  %i.bbw = icmp eq i64 %.sroa.speculated.i.i.i.i2575, 0
  br i1 %i.bbw, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i2604, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i2576

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i2576: ; preds = %bb.li
  %i.bbx = getelementptr inbounds nuw i8, ptr %.02933.i2574, i64 32
  %i.bby = load ptr, ptr %i.bbx, align 8, !tbaa !24
  %i.bbz = call i32 @memcmp(ptr noundef %i.bbt, ptr noundef %i.bby, i64 noundef %.sroa.speculated.i.i.i.i2575) #23 ; 2 uses
  %.not.i.i.i.i2577 = icmp eq i32 %i.bbz, 0
  br i1 %.not.i.i.i.i2577, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i2604, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i2578

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i2604: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i2576, %bb.li
  %i.bca = sub i64 %i.bbs, %i.bbv
  %spec.select7.i.i.i.i.i2605 = call i64 @llvm.smax.i64(i64 %i.bca, i64 -2147483648)
  %.08.i.i.i.i.i2606 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i2605, i64 2147483647)
  %.0.i6.i.i.i.i2607 = trunc nsw i64 %.08.i.i.i.i.i2606 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i2578

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i2578: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i2604, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i2576
  %.0.i.i.i.i2579 = phi i32 [ %i.bbz, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i2576 ], [ %.0.i6.i.i.i.i2607, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i2604 ]
  %i.bcb = icmp slt i32 %.0.i.i.i.i2579, 0        ; 2 uses
  %.in.v.i2580 = select i1 %i.bcb, i64 16, i64 24
  %.in.i2581 = getelementptr inbounds nuw i8, ptr %.02933.i2574, i64 %.in.v.i2580
  %.029.i2582 = load ptr, ptr %.in.i2581, align 8, !tbaa !32 ; 2 uses
  %.not.i2583 = icmp eq ptr %.029.i2582, null
  br i1 %.not.i2583, label %._crit_edge.i2584, label %bb.li, !llvm.loop !4

._crit_edge.i2584:                                ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i2578
  br i1 %i.bcb, label %._crit_edge.thread.i2602, label %bb.lk

._crit_edge.thread.i2602:                         ; preds = %._crit_edge.i2584, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit1655
  %.028.lcssa39.i2603 = phi ptr [ %.02933.i2574, %._crit_edge.i2584 ], [ %i.aal, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit1655 ] ; 4 uses
  %i.bcc = load ptr, ptr %i.aan, align 8, !tbaa !71
  %i.bcd = icmp eq ptr %.028.lcssa39.i2603, %i.bcc
  br i1 %i.bcd, label %select.unfold2880, label %bb.lj

bb.lj:                                            ; preds = %._crit_edge.thread.i2602
  %i.bce = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39.i2603) #27 ; 2 uses
  %.phi.trans.insert3638 = getelementptr inbounds nuw i8, ptr %i.bce, i64 40
  %.pre3639 = load i64, ptr %.phi.trans.insert3638, align 8, !tbaa !26 ; 2 uses
  %.pre3640 = load i64, ptr %i.abj, align 8, !tbaa !26 ; 2 uses
  %.pre3677 = call i64 @llvm.umin.i64(i64 %.pre3640, i64 %.pre3639)
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lj, %._crit_edge.i2584
  %.sroa.speculated.i.i.i5.i2587.pre-phi = phi i64 [ %.pre3677, %bb.lj ], [ %.sroa.speculated.i.i.i.i2575, %._crit_edge.i2584 ] ; 2 uses
  %i.bcf = phi i64 [ %.pre3640, %bb.lj ], [ %i.bbs, %._crit_edge.i2584 ]
  %i.bcg = phi i64 [ %.pre3639, %bb.lj ], [ %i.bbv, %._crit_edge.i2584 ]
  %.028.lcssa38.i2585 = phi ptr [ %.028.lcssa39.i2603, %bb.lj ], [ %.02933.i2574, %._crit_edge.i2584 ]
  %.sroa.014.0.i2586 = phi ptr [ %i.bce, %bb.lj ], [ %.02933.i2574, %._crit_edge.i2584 ]
  %i.bch = icmp eq i64 %.sroa.speculated.i.i.i5.i2587.pre-phi, 0
  br i1 %i.bch, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i2598, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i2588

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i2588: ; preds = %bb.lk
  %i.bci = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i2586, i64 32
  %i.bcj = load ptr, ptr %39, align 8, !tbaa !24
  %i.bck = load ptr, ptr %i.bci, align 8, !tbaa !24
  %i.bcl = call i32 @memcmp(ptr noundef %i.bck, ptr noundef %i.bcj, i64 noundef %.sroa.speculated.i.i.i5.i2587.pre-phi) #23 ; 2 uses
  %.not.i.i.i7.i2589 = icmp eq i32 %i.bcl, 0
  br i1 %.not.i.i.i7.i2589, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i2598, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i2590

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i2598: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i2588, %bb.lk
  %i.bcm = sub i64 %i.bcg, %i.bcf
  %spec.select7.i.i.i.i10.i2599 = call i64 @llvm.smax.i64(i64 %i.bcm, i64 -2147483648)
  %.08.i.i.i.i11.i2600 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10.i2599, i64 2147483647)
  %.0.i6.i.i.i12.i2601 = trunc nsw i64 %.08.i.i.i.i11.i2600 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i2590

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i2590: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i2598, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i2588
  %.0.i.i.i8.i2591 = phi i32 [ %i.bcl, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i2588 ], [ %.0.i6.i.i.i12.i2601, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i2598 ]
  %i.bcn = icmp slt i32 %.0.i.i.i8.i2591, 0
  br i1 %i.bcn, label %select.unfold2880, label %.noexc2561

select.unfold2880:                                ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i2590, %._crit_edge.thread.i2602
  %.sroa.4.0.i2595.ph = phi ptr [ %.028.lcssa39.i2603, %._crit_edge.thread.i2602 ], [ %.028.lcssa38.i2585, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i2590 ] ; 4 uses
  %i.bco = icmp eq ptr %.sroa.4.0.i2595.ph, %i.aal
  br i1 %i.bco, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i2552, label %bb.ll

bb.ll:                                            ; preds = %select.unfold2880
  %i.bcp = load i64, ptr %i.abj, align 8, !tbaa !26 ; 2 uses
  %i.bcq = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i2595.ph, i64 40
  %i.bcr = load i64, ptr %i.bcq, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i.i.i.i2547 = call i64 @llvm.umin.i64(i64 %i.bcr, i64 %i.bcp) ; 2 uses
  %i.bcs = icmp eq i64 %.sroa.speculated.i.i.i.i.i2547, 0
  br i1 %i.bcs, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i2557, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i2548

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i2548: ; preds = %bb.ll
  %i.bct = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i2595.ph, i64 32
  %i.bcu = load ptr, ptr %i.bct, align 8, !tbaa !24
  %i.bcv = load ptr, ptr %39, align 8, !tbaa !24
  %i.bcw = call i32 @memcmp(ptr noundef %i.bcv, ptr noundef %i.bcu, i64 noundef %.sroa.speculated.i.i.i.i.i2547) #23 ; 2 uses
  %.not.i.i.i.i.i2549 = icmp eq i32 %i.bcw, 0
  br i1 %.not.i.i.i.i.i2549, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i2557, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i2550

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i2557: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i2548, %bb.ll
  %i.bcx = sub i64 %i.bcp, %i.bcr
  %spec.select7.i.i.i.i.i.i2558 = call i64 @llvm.smax.i64(i64 %i.bcx, i64 -2147483648)
  %.08.i.i.i.i.i.i2559 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i2558, i64 2147483647)
  %.0.i6.i.i.i.i.i2560 = trunc nsw i64 %.08.i.i.i.i.i.i2559 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i2550

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i2550: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i2557, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i2548
  %.0.i.i.i.i.i2551 = phi i32 [ %i.bcw, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i2548 ], [ %.0.i6.i.i.i.i.i2560, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i2557 ]
  %i.bcy = icmp slt i32 %.0.i.i.i.i.i2551, 0
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i2552

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i2552: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i2550, %select.unfold2880
  %i.bcz = phi i1 [ %i.bcy, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i2550 ], [ true, %select.unfold2880 ]
  %i.bda = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26
          to label %.noexc2562 unwind label %bb.lm ; 2 uses

.noexc2562:                                       ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i2552
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %32, ptr noundef nonnull %i.bda, ptr noundef nonnull align 8 dereferenceable(32) %39)
          to label %.noexc2563 unwind label %bb.lm

.noexc2563:                                       ; preds = %.noexc2562
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bcz, ptr noundef nonnull %i.bda, ptr noundef nonnull %.sroa.4.0.i2595.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.aal) #23
  %i.bdb = load i64, ptr %i.aap, align 8, !tbaa !78
  %i.bdc = add i64 %i.bdb, 1
  store i64 %i.bdc, ptr %i.aap, align 8, !tbaa !78
  br label %.noexc2561

.noexc2561:                                       ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i2590, %.noexc2563
  %i.bdd = load ptr, ptr %39, align 8, !tbaa !24  ; 2 uses
  %i.bde = icmp eq ptr %i.bdd, %i.abi
  br i1 %i.bde, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1660, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1658

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1658: ; preds = %.noexc2561
  call void @_ZdlPv(ptr noundef %i.bdd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1660

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1660: ; preds = %.noexc2561, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1658
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #23
  %i.bdf = add nuw nsw i32 %.011753290, 1         ; 2 uses
  %i.bdg = load i32, ptr %i.aly, align 8, !tbaa !79
  %i.bdh = icmp slt i32 %i.bdf, %i.bdg
  br i1 %i.bdh, label %bb.lg, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit1544._crit_edge, !llvm.loop !123

bb.lm:                                            ; preds = %.noexc2562, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i2552
  %i.bdi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bdj = load ptr, ptr %39, align 8, !tbaa !24  ; 2 uses
  %i.bdk = icmp eq ptr %i.bdj, %i.abi
  br i1 %i.bdk, label %.body1653, label %.body1653.sink.split

.body1653.sink.split:                             ; preds = %bb.lm, %.loopexit.split-lp3006.loopexit.split-lp
  %.sink4504 = phi ptr [ %i.bbq, %.loopexit.split-lp3006.loopexit.split-lp ], [ %i.bdj, %bb.lm ]
  %.pn1383.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp4565, %.loopexit.split-lp3006.loopexit.split-lp ], [ %i.bdi, %bb.lm ]
  call void @_ZdlPv(ptr noundef %.sink4504) #25
  br label %.body1653

.body1653:                                        ; preds = %.body1653.sink.split, %bb.lm, %.loopexit.split-lp3006.loopexit.split-lp
  %.pn1383 = phi { ptr, i32 } [ %lpad.loopexit.split-lp4565, %.loopexit.split-lp3006.loopexit.split-lp ], [ %i.bdi, %bb.lm ], [ %.pn1383.ph, %.body1653.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #23
  br label %.loopexit.split-lp3015

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.im, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.ir, %_ZN10MXNetParamD2Ev.exit, %_ZNSt6vectorIiSaIiEED2Ev.exit1644
  %.sroa.18.1 = phi ptr [ %.sroa.18.03292, %_ZNSt6vectorIiSaIiEED2Ev.exit1644 ], [ %.sroa.18.3, %_ZN10MXNetParamD2Ev.exit ], [ %.sroa.18.03292, %bb.ir ], [ %i.ant, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.18.03292, %bb.im ]
  %.sroa.11.1 = phi ptr [ %.sroa.11.03296, %_ZNSt6vectorIiSaIiEED2Ev.exit1644 ], [ %.sroa.11.3, %_ZN10MXNetParamD2Ev.exit ], [ %.sroa.11.03296, %bb.ir ], [ %i.ans, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.ane, %bb.im ] ; 2 uses
  %.sroa.02854.1 = phi ptr [ %.sroa.02854.03299, %_ZNSt6vectorIiSaIiEED2Ev.exit1644 ], [ %.sroa.02854.4, %_ZN10MXNetParamD2Ev.exit ], [ %.sroa.02854.03299, %bb.ir ], [ %i.anp, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.02854.03299, %bb.im ] ; 2 uses
  %i.bdl = add nuw i64 %.011653301, 1             ; 2 uses
  %exitcond3577.not = icmp eq i64 %i.bdl, %i.zt
  br i1 %exitcond3577.not, label %._crit_edge3307.loopexit, label %bb.il, !llvm.loop !124

.loopexit.split-lp3015:                           ; preds = %.loopexit.split-lp3015.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body1653, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1641
  %.pn1392 = phi { ptr, i32 } [ %.pn1383, %.body1653 ], [ %.pn1388.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1641 ], [ %lpad.loopexit.split-lp4581, %.loopexit.split-lp3015.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.bdm = load ptr, ptr %36, align 8, !tbaa !39  ; 2 uses
  %.not.i.i.i1664 = icmp eq ptr %i.bdm, null
  br i1 %.not.i.i.i1664, label %_ZNSt6vectorIiSaIiEED2Ev.exit1665, label %bb.ln

bb.ln:                                            ; preds = %.loopexit.split-lp3015
  call void @_ZdlPv(ptr noundef nonnull %i.bdm) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit1665

_ZNSt6vectorIiSaIiEED2Ev.exit1665:                ; preds = %.loopexit.split-lp3015, %bb.ln
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  %i.bdn = load ptr, ptr %35, align 8, !tbaa !39  ; 2 uses
  %.not.i.i.i1666 = icmp eq ptr %i.bdn, null
  br i1 %.not.i.i.i1666, label %_ZNSt6vectorIiSaIiEED2Ev.exit1667, label %bb.lo

bb.lo:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit1665
  call void @_ZdlPv(ptr noundef nonnull %i.bdn) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit1667

_ZNSt6vectorIiSaIiEED2Ev.exit1667:                ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit1665, %bb.lo
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  br label %.loopexit.split-lp

.loopexit3004:                                    ; preds = %.critedge.i
  %.pre3641 = load ptr, ptr %i.zn, align 8, !tbaa !73 ; 2 uses
  %.pre3642 = load ptr, ptr %26, align 8, !tbaa !66 ; 2 uses
  %.pre3672 = ptrtoint ptr %.pre3641 to i64
  %.pre3673 = ptrtoint ptr %.pre3642 to i64
  %98 = icmp eq ptr %.pre3641, %.pre3642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  %i.bdo = sub i64 %.pre3672, %.pre3673
  %i.bdp = sdiv exact i64 %i.bdo, 208
  br i1 %98, label %_ZL26fuse_hardsigmoid_hardswishRSt6vectorI9MXNetNodeSaIS0_EERS_I10MXNetParamSaIS4_EERSt3mapImiSt4lessImESaISt4pairIKmiEEERSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ISN_ESaISN_EERi.exit, label %.lr.ph.i1668

.lr.ph.i1668:                                     ; preds = %.loopexit3004
  %i.bdq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.bdr = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.bds = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bdt = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.bdv = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bdw = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.bdx = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bdy = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.bdz = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bea = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.beb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bec = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.bed = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.bee = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.bef = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.beg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.beh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bei = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 3 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 3 uses
  %i.bek = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  %i.bel = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bem = insertelement <2 x ptr> %i.aer, ptr %5, i64 1
  %i.ben = getelementptr inbounds nuw i8, <2 x ptr> %i.bem, <2 x i64> <i64 0, i64 32>
  %i.beo = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bep = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.beq = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.ber = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.bes = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bet = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 3 uses
  %i.beu = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.bev = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.bew = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.bex = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.bey = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bez = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.bfa = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.bfb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bfc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bfd = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.bfe = getelementptr inbounds nuw i8, ptr %5, i64 160
  %i.bff = getelementptr inbounds nuw i8, ptr %3, i64 21
  %i.bfg = getelementptr inbounds nuw i8, ptr %4, i64 20
  br label %bb.lp

bb.lp:                                            ; preds = %.critedge84.i, %.lr.ph.i1668
  %.7 = phi i32 [ %.1, %.lr.ph.i1668 ], [ %.8, %.critedge84.i ] ; 14 uses
  %storemerge203.i = phi i64 [ 0, %.lr.ph.i1668 ], [ %i.boq, %.critedge84.i ] ; 21 uses
  %i.bfh = load ptr, ptr %26, align 8, !tbaa !66  ; 4 uses
  %i.bfi = getelementptr inbounds nuw [208 x i8], ptr %i.bfh, i64 %storemerge203.i ; 11 uses
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bfi, i64 8
  %i.bfk = load ptr, ptr %i.bfj, align 8, !tbaa !58 ; 2 uses
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bfk, i64 8
  %i.bfm = load ptr, ptr %i.bfl, align 8, !tbaa !61
  %i.bfn = load ptr, ptr %i.bfk, align 8, !tbaa !62 ; 3 uses
  %i.bfo = ptrtoint ptr %i.bfm to i64
  %i.bfp = ptrtoint ptr %i.bfn to i64
  %i.bfq = sub i64 %i.bfo, %i.bfp
  %i.bfr = sdiv exact i64 %i.bfq, 88              ; 2 uses
  %i.bfs = trunc i64 %i.bfr to i32
  %i.bft = icmp sgt i32 %i.bfs, 0
  br i1 %i.bft, label %.lr.ph.i.i1704, label %_ZNK9MXNetNode9is_weightEv.exit.i1669

.lr.ph.i.i1704:                                   ; preds = %bb.lp
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bfi, i64 48
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfi, i64 56
  %i.bfw = load i64, ptr %i.bfv, align 8, !tbaa !26
  %.fr206.i = freeze i64 %i.bfw                   ; 3 uses
  %i.bfx = load ptr, ptr %i.bfu, align 8
  %wide.trip.count.i.i1705 = and i64 %i.bfr, 2147483647 ; 2 uses
  %i.bfy = icmp eq i64 %.fr206.i, 0
  br i1 %i.bfy, label %.lr.ph.i.split.us.i1713, label %.lr.ph.i.split.i1706

.lr.ph.i.split.us.i1713:                          ; preds = %.lr.ph.i.i1704, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.us.i1715
  %indvars.iv.i.us.i1714 = phi i64 [ %indvars.iv.next.i.us.i1716, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.us.i1715 ], [ 0, %.lr.ph.i.i1704 ] ; 2 uses
  %i.bfz = getelementptr inbounds nuw [88 x i8], ptr %i.bfn, i64 %indvars.iv.i.us.i1714
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfz, i64 8
  %i.bgb = load i64, ptr %i.bga, align 8, !tbaa !26
  %i.bgc = icmp eq i64 %i.bgb, 0
  br i1 %i.bgc, label %.critedge84.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.us.i1715

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.us.i1715: ; preds = %.lr.ph.i.split.us.i1713
  %indvars.iv.next.i.us.i1716 = add nuw nsw i64 %indvars.iv.i.us.i1714, 1 ; 2 uses
  %exitcond.not.i.us.i1717 = icmp eq i64 %indvars.iv.next.i.us.i1716, %wide.trip.count.i.i1705
  br i1 %exitcond.not.i.us.i1717, label %_ZNK9MXNetNode9is_weightEv.exit.i1669, label %.lr.ph.i.split.us.i1713, !llvm.loop !1

.lr.ph.i.split.i1706:                             ; preds = %.lr.ph.i.i1704, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.i1708
  %indvars.iv.i.i1707 = phi i64 [ %indvars.iv.next.i.i1709, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.i1708 ], [ 0, %.lr.ph.i.i1704 ] ; 2 uses
  %i.bgd = getelementptr inbounds nuw [88 x i8], ptr %i.bfn, i64 %indvars.iv.i.i1707 ; 2 uses
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bgd, i64 8
  %i.bgf = load i64, ptr %i.bge, align 8, !tbaa !26
  %i.bgg = icmp eq i64 %i.bgf, %.fr206.i
  br i1 %i.bgg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i1711, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.i1708

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i1711: ; preds = %.lr.ph.i.split.i1706
  %i.bgh = load ptr, ptr %i.bgd, align 8, !tbaa !24
  %bcmp.i.i.i1712 = call i32 @bcmp(ptr %i.bgh, ptr %i.bfx, i64 %.fr206.i)
  %i.bgi = icmp eq i32 %bcmp.i.i.i1712, 0
  br i1 %i.bgi, label %.critedge84.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.i1708

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.i1708: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i1711, %.lr.ph.i.split.i1706
  %indvars.iv.next.i.i1709 = add nuw nsw i64 %indvars.iv.i.i1707, 1 ; 2 uses
  %exitcond.not.i.i1710 = icmp eq i64 %indvars.iv.next.i.i1709, %wide.trip.count.i.i1705
  br i1 %exitcond.not.i.i1710, label %_ZNK9MXNetNode9is_weightEv.exit.i1669, label %.lr.ph.i.split.i1706, !llvm.loop !1

_ZNK9MXNetNode9is_weightEv.exit.i1669:            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.i1708, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.us.i1715, %bb.lp
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bfi, i64 24
  %i.bgk = load i64, ptr %i.bgj, align 8, !tbaa !26
  %i.bgl = icmp eq i64 %i.bgk, 12
  br i1 %i.bgl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1670, label %.critedge84.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1670: ; preds = %_ZNK9MXNetNode9is_weightEv.exit.i1669
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bfi, i64 16
  %i.bgn = load ptr, ptr %i.bgm, align 8, !tbaa !24 ; 2 uses
  %i.bgo = load i64, ptr %i.bgn, align 1
  %i.bgp = xor i64 %i.bgo, 7166176381572509791
  %i.bgq = getelementptr i8, ptr %i.bgn, i64 8
  %i.bgr = load i32, ptr %i.bgq, align 1
  %i.bgs = zext i32 %i.bgr to i64
  %i.bgt = xor i64 %i.bgs, 1918987361
  %i.bgu = or i64 %i.bgp, %i.bgt
  %i.bgv = icmp ne i64 %i.bgu, 0
  %i.bgw = zext i1 %i.bgv to i32
  %i.bgx = icmp eq i32 %i.bgw, 0
  br i1 %i.bgx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1672, label %.critedge84.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1672: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1670
  %i.bgy = add nuw i64 %storemerge203.i, 1        ; 3 uses
  %i.bgz = getelementptr inbounds nuw [208 x i8], ptr %i.bfh, i64 %i.bgy ; 5 uses
  %i.bha = add i64 %storemerge203.i, 2            ; 6 uses
  %i.bhb = getelementptr inbounds nuw [208 x i8], ptr %i.bfh, i64 %i.bha ; 6 uses
  %i.bhc = add i64 %storemerge203.i, 3            ; 3 uses
  %i.bhd = getelementptr inbounds nuw [208 x i8], ptr %i.bfh, i64 %i.bhc ; 5 uses
  %i.bhe = invoke noundef float @_ZNK9MXNetNode6attr_fEPKc(ptr noundef nonnull align 8 dereferenceable(208) %i.bfi, ptr noundef nonnull @.str.203)
          to label %.noexc1718 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1718:                                       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1672
  %i.bhf = fcmp une float %i.bhe, 3.000000e+00
  br i1 %i.bhf, label %.critedge84.i, label %bb.lq

bb.lq:                                            ; preds = %.noexc1718
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bgz, i64 24
  %i.bhh = load i64, ptr %i.bhg, align 8, !tbaa !26
  %i.bhi = icmp eq i64 %i.bhh, 4
  br i1 %i.bhi, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %.critedge84.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.lq
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bgz, i64 16
  %i.bhk = load ptr, ptr %i.bhj, align 8, !tbaa !24
  %i.bhl = load i32, ptr %i.bhk, align 1
  %i.bhm = icmp ne i32 %i.bhl, 1885957219
  %i.bhn = zext i1 %i.bhm to i32
  %.not187.i = icmp eq i32 %i.bhn, 0
  br i1 %.not187.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread184.i, label %.critedge84.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread184.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.bho = invoke noundef float @_ZNK9MXNetNode6attr_fEPKc(ptr noundef nonnull align 8 dereferenceable(208) %i.bgz, ptr noundef nonnull @.str.208)
          to label %.noexc1719 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1719:                                       ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread184.i
  %i.bhp = fcmp une float %i.bho, 0.000000e+00
  br i1 %i.bhp, label %.critedge84.i, label %bb.lr

bb.lr:                                            ; preds = %.noexc1719
  %i.bhq = invoke noundef float @_ZNK9MXNetNode6attr_fEPKc(ptr noundef nonnull align 8 dereferenceable(208) %i.bgz, ptr noundef nonnull @.str.209)
          to label %.noexc1720 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1720:                                       ; preds = %bb.lr
  %i.bhr = fcmp une float %i.bhq, 6.000000e+00
  br i1 %i.bhr, label %.critedge84.i, label %bb.ls

bb.ls:                                            ; preds = %.noexc1720
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhb, i64 24
  %i.bht = load i64, ptr %i.bhs, align 8, !tbaa !26
  %i.bhu = icmp eq i64 %i.bht, 11
  br i1 %i.bhu, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91.i, label %.critedge84.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91.i: ; preds = %bb.ls
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bhb, i64 16
  %i.bhw = load ptr, ptr %i.bhv, align 8, !tbaa !24 ; 2 uses
  %i.bhx = load i64, ptr %i.bhw, align 1
  %i.bhy = xor i64 %i.bhx, 7017579498219070559
  %i.bhz = getelementptr i8, ptr %i.bhw, i64 3
  %i.bia = load i64, ptr %i.bhz, align 1
  %i.bib = xor i64 %i.bia, 8241987958600851318
  %i.bic = or i64 %i.bhy, %i.bib
  %i.bid = icmp ne i64 %i.bic, 0
  %i.bie = zext i1 %i.bid to i32
  %.not188.i = icmp eq i32 %i.bie, 0
  br i1 %.not188.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91.thread185.i, label %.critedge84.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91.thread185.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91.i
  %i.bif = invoke noundef float @_ZNK9MXNetNode6attr_fEPKc(ptr noundef nonnull align 8 dereferenceable(208) %i.bhb, ptr noundef nonnull @.str.203)
          to label %.noexc1721 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1721:                                       ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91.thread185.i
  %i.big = fcmp une float %i.bif, 6.000000e+00
  br i1 %i.big, label %.critedge84.i, label %bb.lt
end_hunk_0
begin_hunk_1_@main:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.i: ; preds = %bb.mp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.246, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.mq unwind label %bb.mz

bb.mq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.i
  %i.bnv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.bfa, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.mr unwind label %bb.na

bb.mr:                                            ; preds = %bb.mq
  %i.bnw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.bnv, ptr noundef nonnull %i.g)
          to label %bb.ms unwind label %bb.na     ; 0 uses

bb.ms:                                            ; preds = %bb.mr
  %i.bnx = load ptr, ptr %8, align 8, !tbaa !24   ; 2 uses
  %i.bny = icmp eq ptr %i.bnx, %i.bfc
  br i1 %i.bny, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150.i: ; preds = %bb.ms
  call void @_ZdlPv(ptr noundef %i.bnx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.i: ; preds = %bb.ms, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.bnz = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bfd, ptr noundef nonnull align 8 dereferenceable(24) %i.bkl)
          to label %bb.mt unwind label %bb.nb     ; 0 uses

bb.mt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.i
  %i.boa = getelementptr inbounds nuw i8, ptr %i.bfi, i64 160
  %i.bob = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bfe, ptr noundef nonnull align 8 dereferenceable(24) %i.boa)
          to label %bb.mu unwind label %bb.nb     ; 0 uses

bb.mu:                                            ; preds = %bb.mt
  %i.boc = load ptr, ptr %26, align 8, !tbaa !66
  %i.bod = getelementptr inbounds nuw [208 x i8], ptr %i.boc, i64 %i.bhc
  %i.boe = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN9MXNetNodeaSERKS_(ptr noundef nonnull align 8 dereferenceable(208) %i.bod, ptr noundef nonnull align 8 dereferenceable(208) %5)
          to label %bb.mv unwind label %bb.nb     ; 0 uses

bb.mv:                                            ; preds = %bb.mu
  %i.bof = add nsw i32 %.7, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @_ZN9MXNetNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %.critedge84.i

bb.mw:                                            ; preds = %bb.mm, %.noexc1731
  %i.bog = landingpad { ptr, i32 }
          cleanup
  br label %bb.nd

bb.mx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit146.i
  %i.boh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.i

bb.my:                                            ; preds = %bb.mo, %bb.mn
  %i.boi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.boj = load ptr, ptr %6, align 8, !tbaa !24   ; 2 uses
  %i.bok = icmp eq ptr %i.boj, %i.bfb
  br i1 %i.bok, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153.i: ; preds = %bb.my
  call void @_ZdlPv(ptr noundef %i.boj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.i: ; preds = %bb.my, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153.i, %bb.mx
  %.pn.i1703 = phi { ptr, i32 } [ %i.boh, %bb.mx ], [ %i.boi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153.i ], [ %i.boi, %bb.my ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.nc

bb.mz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.i
  %i.bol = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.i

bb.na:                                            ; preds = %bb.mr, %bb.mq
  %i.bom = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bon = load ptr, ptr %8, align 8, !tbaa !24   ; 2 uses
  %i.boo = icmp eq ptr %i.bon, %i.bfc
  br i1 %i.boo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156.i: ; preds = %bb.na
  call void @_ZdlPv(ptr noundef %i.bon) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.i: ; preds = %bb.na, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156.i, %bb.mz
  %.pn70.i = phi { ptr, i32 } [ %i.bol, %bb.mz ], [ %i.bom, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156.i ], [ %i.bom, %bb.na ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.nc

bb.nb:                                            ; preds = %bb.mu, %bb.mt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.i
  %i.bop = landingpad { ptr, i32 }
          cleanup
  br label %bb.nc

bb.nc:                                            ; preds = %bb.nb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.i
  %.pn72.i = phi { ptr, i32 } [ %i.bop, %bb.nb ], [ %.pn70.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.i ], [ %.pn.i1703, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  br label %bb.nd

bb.nd:                                            ; preds = %bb.nc, %bb.mw
  %.pn72.pn.i = phi { ptr, i32 } [ %.pn72.i, %bb.nc ], [ %i.bog, %bb.mw ]
  call void @_ZN9MXNetNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %.loopexit.split-lp

.critedge84.i:                                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i1711, %.lr.ph.i.split.us.i1713, %bb.mv, %_ZN9MXNetNodeD2Ev.exit.i1698, %.noexc1721, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91.i, %bb.ls, %.noexc1720, %.noexc1719, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %bb.lq, %.noexc1718, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1670, %_ZNK9MXNetNode9is_weightEv.exit.i1669
  %.8 = phi i32 [ %.7, %.lr.ph.i.split.us.i1713 ], [ %.7, %.noexc1718 ], [ %.7, %.noexc1719 ], [ %.7, %.noexc1720 ], [ %.7, %.noexc1721 ], [ %i.bof, %bb.mv ], [ %i.bma, %_ZN9MXNetNodeD2Ev.exit.i1698 ], [ %.7, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91.i ], [ %.7, %bb.ls ], [ %.7, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ], [ %.7, %bb.lq ], [ %.7, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1670 ], [ %.7, %_ZNK9MXNetNode9is_weightEv.exit.i1669 ], [ %.7, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i1711 ] ; 2 uses
  %.0.i = phi i64 [ %storemerge203.i, %.lr.ph.i.split.us.i1713 ], [ %storemerge203.i, %.noexc1718 ], [ %storemerge203.i, %.noexc1719 ], [ %storemerge203.i, %.noexc1720 ], [ %storemerge203.i, %.noexc1721 ], [ %i.bhc, %bb.mv ], [ %i.bha, %_ZN9MXNetNodeD2Ev.exit.i1698 ], [ %storemerge203.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91.i ], [ %storemerge203.i, %bb.ls ], [ %storemerge203.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ], [ %storemerge203.i, %bb.lq ], [ %storemerge203.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1670 ], [ %storemerge203.i, %_ZNK9MXNetNode9is_weightEv.exit.i1669 ], [ %storemerge203.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i1711 ]
  %i.boq = add i64 %.0.i, 1                       ; 2 uses
  %i.bor = icmp ult i64 %i.boq, %i.bdp
  br i1 %i.bor, label %bb.lp, label %_ZL26fuse_hardsigmoid_hardswishRSt6vectorI9MXNetNodeSaIS0_EERS_I10MXNetParamSaIS4_EERSt3mapImiSt4lessImESaISt4pairIKmiEEERSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ISN_ESaISN_EERi.exit, !llvm.loop !125

_ZL26fuse_hardsigmoid_hardswishRSt6vectorI9MXNetNodeSaIS0_EERS_I10MXNetParamSaIS4_EERSt3mapImiSt4lessImESaISt4pairIKmiEEERSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ISN_ESaISN_EERi.exit: ; preds = %.critedge84.i, %.loopexit3004.thread, %.loopexit3004
  %.9 = phi i32 [ %.1, %.loopexit3004 ], [ 0, %.loopexit3004.thread ], [ %.8, %.critedge84.i ]
  %i.bos = load ptr, ptr %i.zw, align 8, !tbaa !71 ; 2 uses
  %.not29683309 = icmp eq ptr %i.bos, %i.zu
  br i1 %.not29683309, label %._crit_edge3313, label %.lr.ph3312

.lr.ph3312:                                       ; preds = %_ZL26fuse_hardsigmoid_hardswishRSt6vectorI9MXNetNodeSaIS0_EERS_I10MXNetParamSaIS4_EERSt3mapImiSt4lessImESaISt4pairIKmiEEERSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ISN_ESaISN_EERi.exit, %bb.ng
  %.011783311 = phi i32 [ %.11179, %bb.ng ], [ 0, %_ZL26fuse_hardsigmoid_hardswishRSt6vectorI9MXNetNodeSaIS0_EERS_I10MXNetParamSaIS4_EERSt3mapImiSt4lessImESaISt4pairIKmiEEERSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ISN_ESaISN_EERi.exit ] ; 2 uses
  %.sroa.02819.03310 = phi ptr [ %.sroa.02819.1, %bb.ng ], [ %i.bos, %_ZL26fuse_hardsigmoid_hardswishRSt6vectorI9MXNetNodeSaIS0_EERS_I10MXNetParamSaIS4_EERSt3mapImiSt4lessImESaISt4pairIKmiEEERSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ISN_ESaISN_EERi.exit ] ; 4 uses
  %i.bot = getelementptr inbounds nuw i8, ptr %.sroa.02819.03310, i64 40
  %i.bou = load i32, ptr %i.bot, align 8, !tbaa !82 ; 2 uses
  %i.bov = icmp eq i32 %i.bou, 1
  br i1 %i.bov, label %bb.ne, label %bb.nf

bb.ne:                                            ; preds = %.lr.ph3312
  %i.bow = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.02819.03310) #27
  %i.box = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.sroa.02819.03310, ptr noundef nonnull align 8 dereferenceable(32) %i.zu) #23
  call void @_ZdlPv(ptr noundef nonnull %i.box) #25
  %i.boy = load i64, ptr %i.zy, align 8, !tbaa !78
  %i.boz = add i64 %i.boy, -1
  store i64 %i.boz, ptr %i.zy, align 8, !tbaa !78
  br label %bb.ng

bb.nf:                                            ; preds = %.lr.ph3312
  %i.bpa = add nsw i32 %i.bou, %.011783311
  %i.bpb = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.02819.03310) #27
  br label %bb.ng

bb.ng:                                            ; preds = %bb.ne, %bb.nf
  %.sroa.02819.1 = phi ptr [ %i.bow, %bb.ne ], [ %i.bpb, %bb.nf ] ; 2 uses
  %.11179 = phi i32 [ %.011783311, %bb.ne ], [ %i.bpa, %bb.nf ] ; 2 uses
  %.not2968 = icmp eq ptr %.sroa.02819.1, %i.zu
  br i1 %.not2968, label %._crit_edge3313.loopexit, label %.lr.ph3312, !llvm.loop !126

._crit_edge3313.loopexit:                         ; preds = %bb.ng
  %i.bpc = sext i32 %.11179 to i64
  br label %._crit_edge3313

._crit_edge3313:                                  ; preds = %._crit_edge3313.loopexit, %_ZL26fuse_hardsigmoid_hardswishRSt6vectorI9MXNetNodeSaIS0_EERS_I10MXNetParamSaIS4_EERSt3mapImiSt4lessImESaISt4pairIKmiEEERSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ISN_ESaISN_EERi.exit
  %.01178.lcssa = phi i64 [ 0, %_ZL26fuse_hardsigmoid_hardswishRSt6vectorI9MXNetNodeSaIS0_EERS_I10MXNetParamSaIS4_EERSt3mapImiSt4lessImESaISt4pairIKmiEEERSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ISN_ESaISN_EERi.exit ], [ %i.bpc, %._crit_edge3313.loopexit ]
  %i.bpd = sext i32 %.9 to i64
  %i.bpe = load i64, ptr %i.zy, align 8, !tbaa !78
  %i.bpf = ptrtoint ptr %.sroa.02854.0.lcssa to i64
  %i.bpg = sub i64 %.sroa.11.0.lcssa, %i.bpf
  %i.bph = ashr exact i64 %i.bpg, 2
  %i.bpi = add nsw i64 %i.bph, %i.bpd
  %i.bpj = sub nsw i64 %i.zt, %i.bpi
  %i.bpk = add i64 %i.bpj, %i.bpe
  %i.bpl = load i64, ptr %i.aap, align 8, !tbaa !78
  %i.bpm = add i64 %i.bpl, %.01178.lcssa
  %i.bpn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zl, ptr noundef nonnull @.str.28, i64 noundef %i.bpk, i64 noundef %i.bpm) #23 ; 0 uses
  br i1 %.not3395, label %._crit_edge3392, label %.lr.ph3391

.lr.ph3391:                                       ; preds = %._crit_edge3313
  %i.bpo = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.bpp = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.bpq = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.bpr = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.bps = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 9 uses
  %i.bpt = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 9 uses
  %i.bpu = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 8 uses
  %i.bpv = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 8 uses
  %i.bpw = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 8 uses
  %i.bpx = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 8 uses
  %i.bpy = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.bpz = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.bqa = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.bqb = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.bqc = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.bqd = getelementptr inbounds nuw i8, ptr %96, i64 8 ; 2 uses
  %i.bqe = getelementptr inbounds nuw i8, ptr %95, i64 16 ; 2 uses
  %i.bqf = getelementptr inbounds nuw i8, ptr %94, i64 8
  %i.bqg = getelementptr inbounds nuw i8, ptr %93, i64 8
  %i.bqh = getelementptr inbounds nuw i8, ptr %92, i64 16
  %i.bqi = getelementptr inbounds nuw i8, ptr %89, i64 8 ; 2 uses
  %i.bqj = getelementptr inbounds nuw i8, ptr %90, i64 8
  %i.bqk = getelementptr inbounds nuw i8, ptr %91, i64 8
  %i.bql = getelementptr inbounds nuw i8, ptr %88, i64 8
  %i.bqm = getelementptr inbounds nuw i8, ptr %84, i64 8
  %i.bqn = getelementptr inbounds nuw i8, ptr %85, i64 8
  %i.bqo = getelementptr inbounds nuw i8, ptr %86, i64 8
  %i.bqp = getelementptr inbounds nuw i8, ptr %87, i64 16 ; 2 uses
  %i.bqq = getelementptr inbounds nuw i8, ptr %83, i64 16 ; 2 uses
  %i.bqr = getelementptr inbounds nuw i8, ptr %82, i64 8
  %i.bqs = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 2 uses
  %i.bqt = getelementptr inbounds nuw i8, ptr %80, i64 8
  %i.bqu = getelementptr inbounds nuw i8, ptr %78, i64 8
  %i.bqv = getelementptr inbounds nuw i8, ptr %79, i64 8 ; 2 uses
  %i.bqw = getelementptr inbounds nuw i8, ptr %78, i64 16 ; 2 uses
  %i.bqx = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 2 uses
  %i.bqy = getelementptr inbounds nuw i8, ptr %75, i64 8 ; 2 uses
  %i.bqz = getelementptr inbounds nuw i8, ptr %76, i64 8
  %i.bra = getelementptr inbounds nuw i8, ptr %73, i64 8 ; 2 uses
  %i.brb = getelementptr inbounds nuw i8, ptr %74, i64 8
  %i.brc = getelementptr inbounds nuw i8, ptr %72, i64 8 ; 2 uses
  %i.brd = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.bre = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.brf = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.brg = getelementptr inbounds nuw i8, ptr %69, i64 8
  %i.brh = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.bri = getelementptr inbounds nuw i8, ptr %68, i64 8
  %i.brj = getelementptr inbounds nuw i8, ptr %70, i64 8 ; 3 uses
  %i.brk = getelementptr inbounds nuw i8, ptr %71, i64 8
  %i.brl = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.brm = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.brn = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.bro = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.brp = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.brq = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 2 uses
  %i.brr = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.brs = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 2 uses
  %i.brt = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 2 uses
  %i.bru = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.brv = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.brw = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.brx = getelementptr inbounds nuw i8, ptr %97, i64 16 ; 4 uses
  %i.bry = getelementptr inbounds nuw i8, ptr %97, i64 8
  br label %bb.no

._crit_edge3392:                                  ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1741.thread, %._crit_edge3313
  %i.brz = call i32 @fclose(ptr noundef %i.zl)    ; 0 uses
  %i.bsa = call i32 @fclose(ptr noundef %i.zm)    ; 0 uses
  %i.bsb = load ptr, ptr %i.aam, align 8, !tbaa !31
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %32, ptr noundef %i.bsb)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit1734 unwind label %bb.nh

bb.nh:                                            ; preds = %._crit_edge3392
  %i.bsc = landingpad { ptr, i32 }
          catch ptr null
  %i.bsd = extractvalue { ptr, i32 } %i.bsc, 0
  call void @__clang_call_terminate(ptr %i.bsd) #29
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit1734: ; preds = %._crit_edge3392
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  %.not.i.i.i1735 = icmp eq ptr %.sroa.02854.0.lcssa, null
  br i1 %.not.i.i.i1735, label %_ZNSt6vectorIiSaIiEED2Ev.exit1736, label %bb.ni

bb.ni:                                            ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit1734
  call void @_ZdlPv(ptr noundef nonnull %.sroa.02854.0.lcssa) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit1736

_ZNSt6vectorIiSaIiEED2Ev.exit1736:                ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit1734, %bb.ni
  %i.bse = load ptr, ptr %i.zv, align 8, !tbaa !31
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %28, ptr noundef %i.bse)
          to label %_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEED2Ev.exit unwind label %bb.nj

bb.nj:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit1736
  %i.bsf = landingpad { ptr, i32 }
          catch ptr null
  %i.bsg = extractvalue { ptr, i32 } %i.bsf, 0
  call void @__clang_call_terminate(ptr %i.bsg) #29
  unreachable

_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit1736
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  %i.bsh = load ptr, ptr %27, align 8, !tbaa !62  ; 3 uses
  %i.bsi = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.bsj = load ptr, ptr %i.bsi, align 8, !tbaa !61 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bsh, %i.bsj
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIP10MXNetParamS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i1737

.lr.ph.i.i.i1737:                                 ; preds = %_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEED2Ev.exit, %_ZSt8_DestroyI10MXNetParamEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bst, %_ZSt8_DestroyI10MXNetParamEvPT_.exit.i.i.i ], [ %i.bsh, %_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEED2Ev.exit ] ; 6 uses
  %i.bsk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  %i.bsl = load ptr, ptr %i.bsk, align 8, !tbaa !24 ; 2 uses
  %i.bsm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72
  %i.bsn = icmp eq ptr %i.bsl, %i.bsm
  br i1 %i.bsn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i1737
  call void @_ZdlPv(ptr noundef %i.bsl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i1737, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bso = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.bsp = load ptr, ptr %i.bso, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bsp, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i, label %bb.nk

bb.nk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bsp) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i:          ; preds = %bb.nk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.bsq = load ptr, ptr %.05.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.bsr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bss = icmp eq ptr %i.bsq, %i.bsr
  br i1 %i.bss, label %_ZSt8_DestroyI10MXNetParamEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.bsq) #25
  br label %_ZSt8_DestroyI10MXNetParamEvPT_.exit.i.i.i

_ZSt8_DestroyI10MXNetParamEvPT_.exit.i.i.i:       ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.bst = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i1738 = icmp eq ptr %i.bst, %i.bsj
  br i1 %.not.i.i.i1738, label %_ZSt8_DestroyIP10MXNetParamS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i1737, !llvm.loop !5

_ZSt8_DestroyIP10MXNetParamS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyI10MXNetParamEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %27, align 8, !tbaa !62
  br label %_ZSt8_DestroyIP10MXNetParamS0_EvT_S2_RSaIT0_E.exit.i

_ZSt8_DestroyIP10MXNetParamS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIP10MXNetParamS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, %_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEED2Ev.exit
  %i.bsu = phi ptr [ %.pr.i, %_ZSt8_DestroyIP10MXNetParamS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i ], [ %i.bsh, %_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.bsu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorI10MXNetParamSaIS0_EED2Ev.exit, label %bb.nl

bb.nl:                                            ; preds = %_ZSt8_DestroyIP10MXNetParamS0_EvT_S2_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.bsu) #25
  br label %_ZNSt6vectorI10MXNetParamSaIS0_EED2Ev.exit

_ZNSt6vectorI10MXNetParamSaIS0_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIP10MXNetParamS0_EvT_S2_RSaIT0_E.exit.i, %bb.nl
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  %i.bsv = load ptr, ptr %26, align 8, !tbaa !66
  %i.bsw = load ptr, ptr %i.zn, align 8, !tbaa !73
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP9MXNetNodeEEvT_S4_(ptr noundef %i.bsv, ptr noundef %i.bsw)
          to label %_ZSt8_DestroyIP9MXNetNodeS0_EvT_S2_RSaIT0_E.exit.i unwind label %bb.nn

_ZSt8_DestroyIP9MXNetNodeS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %_ZNSt6vectorI10MXNetParamSaIS0_EED2Ev.exit
  %i.bsx = load ptr, ptr %26, align 8, !tbaa !66  ; 2 uses
  %.not.i.i.i1739 = icmp eq ptr %i.bsx, null
  br i1 %.not.i.i.i1739, label %_ZNSt6vectorI9MXNetNodeSaIS0_EED2Ev.exit, label %bb.nm

bb.nm:                                            ; preds = %_ZSt8_DestroyIP9MXNetNodeS0_EvT_S2_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.bsx) #25
  br label %_ZNSt6vectorI9MXNetNodeSaIS0_EED2Ev.exit

bb.nn:                                            ; preds = %_ZNSt6vectorI10MXNetParamSaIS0_EED2Ev.exit
  %i.bsy = landingpad { ptr, i32 }
          catch ptr null
  %i.bsz = extractvalue { ptr, i32 } %i.bsy, 0
  call void @__clang_call_terminate(ptr %i.bsz) #29
  unreachable

_ZNSt6vectorI9MXNetNodeSaIS0_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIP9MXNetNodeS0_EvT_S2_RSaIT0_E.exit.i, %bb.nm
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  br label %bb.aox

bb.no:                                            ; preds = %.lr.ph3391, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1741.thread
  %.011803389 = phi i32 [ 0, %.lr.ph3391 ], [ %.41184, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1741.thread ] ; 5 uses
  %.011853387 = phi i64 [ 0, %.lr.ph3391 ], [ %i.eje, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1741.thread ] ; 3 uses
  %i.bta = load ptr, ptr %26, align 8, !tbaa !66
  %i.btb = getelementptr inbounds nuw [208 x i8], ptr %i.bta, i64 %.011853387 ; 141 uses
  %i.btc = getelementptr inbounds nuw i8, ptr %i.btb, i64 16 ; 196 uses
  %i.btd = getelementptr inbounds nuw i8, ptr %i.btb, i64 24 ; 4 uses
  %i.bte = load i64, ptr %i.btd, align 8, !tbaa !26 ; 10 uses
  switch i64 %i.bte, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1772.thread2899 [
    i64 16, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1741
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1743
    i64 25, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1756
    i64 26, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1758
    i64 22, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1760
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1762
    i64 11, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1764
    i64 15, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1766
    i64 13, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1770
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1741: ; preds = %bb.no
  %i.btf = load ptr, ptr %i.btc, align 8, !tbaa !24
  %i.btg = load i128, ptr %i.btf, align 1
  %i.bth = icmp ne i128 %i.btg, 146788248895499287312706996563455471470
  %i.bti = zext i1 %i.bth to i32
  %i.btj = icmp eq i32 %i.bti, 0
  br i1 %i.btj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1741.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1772.thread2899

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1743: ; preds = %bb.no
  %.pre3643 = load ptr, ptr %i.btc, align 8, !tbaa !24
  %bcmp.i1742 = call i32 @bcmp(ptr %.pre3643, ptr nonnull @.str.21, i64 %i.bte)
  %i.btk = icmp eq i32 %bcmp.i1742, 0
  br i1 %i.btk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1743.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1772.thread2899

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1743.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1743
  %i.btl = getelementptr inbounds nuw i8, ptr %i.btb, i64 8
  %i.btm = load ptr, ptr %i.btl, align 8, !tbaa !58 ; 2 uses
end_hunk_1
begin_hunk_2_@main:bb.a

bb.ajc:                                           ; preds = %bb.ajb
  %i.dux = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zl, ptr noundef nonnull @.str.204, i32 noundef 15) #23 ; 0 uses
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1902.thread

bb.ajd:                                           ; preds = %bb.ajb
  %i.duy = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btc, ptr noundef nonnull @.str.53)
  br i1 %i.duy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1902.thread, label %bb.aje

bb.aje:                                           ; preds = %bb.ajd
  %i.duz = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btc, ptr noundef nonnull @.str.135)
  br i1 %i.duz, label %bb.ajf, label %bb.ajn

bb.ajf:                                           ; preds = %bb.aje
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #23
  invoke void @_ZNK9MXNetNode7attr_aiEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %88, ptr noundef nonnull align 8 dereferenceable(208) %i.btb, ptr noundef nonnull @.str.270)
          to label %_ZNK9MXNetNode9AttrProxycvSt6vectorIiSaIiEEEv.exit2383 unwind label %bb.ajh

_ZNK9MXNetNode9AttrProxycvSt6vectorIiSaIiEEEv.exit2383: ; preds = %bb.ajf
  %i.dva = load ptr, ptr %i.bql, align 8, !tbaa !40
  %i.dvb = load ptr, ptr %88, align 8, !tbaa !39  ; 14 uses
  %i.dvc = ptrtoint ptr %i.dva to i64
  %i.dvd = ptrtoint ptr %i.dvb to i64
  %i.dve = sub i64 %i.dvc, %i.dvd
  %i.dvf = ashr exact i64 %i.dve, 2
  switch i64 %i.dvf, label %bb.ajm [
    i64 1, label %bb.ajg
    i64 2, label %bb.aji
    i64 3, label %bb.ajj
    i64 4, label %bb.ajk
    i64 5, label %bb.ajl
  ]

bb.ajg:                                           ; preds = %_ZNK9MXNetNode9AttrProxycvSt6vectorIiSaIiEEEv.exit2383
  %i.dvg = load i32, ptr %i.dvb, align 4, !tbaa !34
  %i.dvh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zl, ptr noundef nonnull @.str.204, i32 noundef %i.dvg) #23 ; 0 uses
  br label %.thread2925

bb.ajh:                                           ; preds = %bb.ajf
  %i.dvi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #23
  br label %.loopexit.split-lp

bb.aji:                                           ; preds = %_ZNK9MXNetNode9AttrProxycvSt6vectorIiSaIiEEEv.exit2383
  %i.dvj = getelementptr inbounds nuw i8, ptr %i.dvb, i64 4
  %i.dvk = load i32, ptr %i.dvj, align 4, !tbaa !34
  %i.dvl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zl, ptr noundef nonnull @.str.204, i32 noundef %i.dvk) #23 ; 0 uses
  br label %.thread2925

bb.ajj:                                           ; preds = %_ZNK9MXNetNode9AttrProxycvSt6vectorIiSaIiEEEv.exit2383
  %i.dvm = getelementptr inbounds nuw i8, ptr %i.dvb, i64 8
  %i.dvn = load i32, ptr %i.dvm, align 4, !tbaa !34
  %i.dvo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zl, ptr noundef nonnull @.str.204, i32 noundef %i.dvn) #23 ; 0 uses
  %i.dvp = getelementptr inbounds nuw i8, ptr %i.dvb, i64 4
  %i.dvq = load i32, ptr %i.dvp, align 4, !tbaa !34
  %i.dvr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zl, ptr noundef nonnull @.str.205, i32 noundef %i.dvq) #23 ; 0 uses
  br label %.thread2925

bb.ajk:                                           ; preds = %_ZNK9MXNetNode9AttrProxycvSt6vectorIiSaIiEEEv.exit2383
  %i.dvs = getelementptr inbounds nuw i8, ptr %i.dvb, i64 12
  %i.dvt = load i32, ptr %i.dvs, align 4, !tbaa !34
  %i.dvu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zl, ptr noundef nonnull @.str.204, i32 noundef %i.dvt) #23 ; 0 uses
  %i.dvv = getelementptr inbounds nuw i8, ptr %i.dvb, i64 8
  %i.dvw = load i32, ptr %i.dvv, align 4, !tbaa !34
  %i.dvx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zl, ptr noundef nonnull @.str.205, i32 noundef %i.dvw) #23 ; 0 uses
  %i.dvy = getelementptr inbounds nuw i8, ptr %i.dvb, i64 4
  %i.dvz = load i32, ptr %i.dvy, align 4, !tbaa !34
  %i.dwa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zl, ptr noundef nonnull @.str.175, i32 noundef %i.dvz) #23 ; 0 uses
  br label %.thread2925

bb.ajl:                                           ; preds = %_ZNK9MXNetNode9AttrProxycvSt6vectorIiSaIiEEEv.exit2383
  %i.dwb = getelementptr inbounds nuw i8, ptr %i.dvb, i64 16
  %i.dwc = load i32, ptr %i.dwb, align 4, !tbaa !34
  %i.dwd = getelementptr inbounds nuw i8, ptr %i.dvb, i64 12
  %i.dwe = load i32, ptr %i.dwd, align 4, !tbaa !34
  %i.dwf = mul nsw i32 %i.dwe, %i.dwc
  %i.dwg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zl, ptr noundef nonnull @.str.204, i32 noundef %i.dwf) #23 ; 0 uses
  %i.dwh = getelementptr inbounds nuw i8, ptr %i.dvb, i64 8
  %i.dwi = load i32, ptr %i.dwh, align 4, !tbaa !34
  %i.dwj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zl, ptr noundef nonnull @.str.205, i32 noundef %i.dwi) #23 ; 0 uses
  %i.dwk = getelementptr inbounds nuw i8, ptr %i.dvb, i64 4
  %i.dwl = load i32, ptr %i.dwk, align 4, !tbaa !34
  %i.dwm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zl, ptr noundef nonnull @.str.175, i32 noundef %i.dwl) #23 ; 0 uses
  br label %.thread2925

bb.ajm:                                           ; preds = %_ZNK9MXNetNode9AttrProxycvSt6vectorIiSaIiEEEv.exit2383
  %.not.i.i.i2384 = icmp eq ptr %i.dvb, null
  br i1 %.not.i.i.i2384, label %_ZNSt6vectorIiSaIiEED2Ev.exit2385, label %.thread2925

.thread2925:                                      ; preds = %bb.ajg, %bb.ajj, %bb.ajl, %bb.ajk, %bb.aji, %bb.ajm
  call void @_ZdlPv(ptr noundef nonnull %i.dvb) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2385

_ZNSt6vectorIiSaIiEED2Ev.exit2385:                ; preds = %bb.ajm, %.thread2925
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #23
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1902.thread

bb.ajn:                                           ; preds = %bb.aje
  %i.dwn = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btc, ptr noundef nonnull @.str.136)
  br i1 %i.dwn, label %bb.ajo, label %bb.ajp

bb.ajo:                                           ; preds = %bb.ajn
  %i.dwo = invoke noundef i32 @_ZNK9MXNetNode6attr_iEPKc(ptr noundef nonnull align 8 dereferenceable(208) %i.btb, ptr noundef nonnull @.str.271)
          to label %_ZNK9MXNetNode9AttrProxycviEv.exit2389 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK9MXNetNode9AttrProxycviEv.exit2389:           ; preds = %bb.ajo
  %i.dwp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zl, ptr noundef nonnull @.str.204, i32 noundef %i.dwo) #23 ; 0 uses
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1902.thread

bb.ajp:                                           ; preds = %bb.ajn
  %i.dwq = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btc, ptr noundef nonnull @.str.55)
  br i1 %i.dwq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1902.thread, label %bb.ajq

bb.ajq:                                           ; preds = %bb.ajp
  %i.dwr = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btc, ptr noundef nonnull @.str.137)
  br i1 %i.dwr, label %bb.ajr, label %bb.ajs

bb.ajr:                                           ; preds = %bb.ajq
  %i.dws = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zl, ptr noundef nonnull @.str.204, i32 noundef 9) #23 ; 0 uses
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1902.thread

bb.ajs:                                           ; preds = %bb.ajq
  %i.dwt = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btc, ptr noundef nonnull @.str.138)
  br i1 %i.dwt, label %bb.ajt, label %bb.akw

bb.ajt:                                           ; preds = %bb.ajs
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #23
  invoke void @_ZNK9MXNetNode7attr_aiEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %89, ptr noundef nonnull align 8 dereferenceable(208) %i.btb, ptr noundef nonnull @.str.272)
          to label %bb.aju unwind label %bb.akl

bb.aju:                                           ; preds = %bb.ajt
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #23
  invoke void @_ZNK9MXNetNode7attr_aiEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %90, ptr noundef nonnull align 8 dereferenceable(208) %i.btb, ptr noundef nonnull @.str.273)
          to label %bb.ajv unwind label %bb.akm

bb.ajv:                                           ; preds = %bb.aju
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #23
  invoke void @_ZNK9MXNetNode7attr_aiEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %91, ptr noundef nonnull align 8 dereferenceable(208) %i.btb, ptr noundef nonnull @.str.274)
          to label %_ZNK9MXNetNode9AttrProxycvSt6vectorIiSaIiEEEv.exit2401 unwind label %bb.akn

_ZNK9MXNetNode9AttrProxycvSt6vectorIiSaIiEEEv.exit2401: ; preds = %bb.ajv
  %i.dwu = load ptr, ptr %89, align 8, !tbaa !83  ; 8 uses
  %i.dwv = ptrtoint ptr %i.dwu to i64
  %i.dww = getelementptr inbounds nuw i8, ptr %i.dwu, i64 4 ; 4 uses
  %i.dwx = load ptr, ptr %i.bqi, align 8, !tbaa !83 ; 3 uses
  %.not.i.i2402 = icmp eq ptr %i.dww, %i.dwx
  br i1 %.not.i.i2402, label %bb.aka, label %bb.ajw

bb.ajw:                                           ; preds = %_ZNK9MXNetNode9AttrProxycvSt6vectorIiSaIiEEEv.exit2401
  %i.dwy = ptrtoint ptr %i.dwx to i64
  %i.dwz = ptrtoint ptr %i.dww to i64
  %i.dxa = sub i64 %i.dwy, %i.dwz                 ; 3 uses
  %i.dxb = icmp sgt i64 %i.dxa, 4
  br i1 %i.dxb, label %bb.ajx, label %bb.ajy, !prof !69

bb.ajx:                                           ; preds = %bb.ajw
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.dwu, ptr nonnull align 4 %i.dww, i64 %i.dxa, i1 false)
  br label %bb.aka

bb.ajy:                                           ; preds = %bb.ajw
  %i.dxc = icmp eq i64 %i.dxa, 4
  br i1 %i.dxc, label %bb.ajz, label %bb.aka

bb.ajz:                                           ; preds = %bb.ajy
  %i.dxd = load i32, ptr %i.dww, align 4, !tbaa !34
  store i32 %i.dxd, ptr %i.dwu, align 4, !tbaa !34
  br label %bb.aka

bb.aka:                                           ; preds = %bb.ajz, %bb.ajy, %bb.ajx, %_ZNK9MXNetNode9AttrProxycvSt6vectorIiSaIiEEEv.exit2401
  %i.dxe = getelementptr inbounds i8, ptr %i.dwx, i64 -4 ; 3 uses
  store ptr %i.dxe, ptr %i.bqi, align 8, !tbaa !40
  %i.dxf = load ptr, ptr %90, align 8, !tbaa !83  ; 8 uses
  %i.dxg = ptrtoint ptr %i.dxf to i64
  %i.dxh = getelementptr inbounds nuw i8, ptr %i.dxf, i64 4 ; 4 uses
  %i.dxi = load ptr, ptr %i.bqj, align 8, !tbaa !83 ; 3 uses
  %.not.i.i2404 = icmp eq ptr %i.dxh, %i.dxi
  br i1 %.not.i.i2404, label %bb.akf, label %bb.akb

bb.akb:                                           ; preds = %bb.aka
  %i.dxj = ptrtoint ptr %i.dxi to i64
  %i.dxk = ptrtoint ptr %i.dxh to i64
  %i.dxl = sub i64 %i.dxj, %i.dxk                 ; 3 uses
  %i.dxm = icmp sgt i64 %i.dxl, 4
  br i1 %i.dxm, label %bb.akc, label %bb.akd, !prof !69

bb.akc:                                           ; preds = %bb.akb
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.dxf, ptr nonnull align 4 %i.dxh, i64 %i.dxl, i1 false)
  br label %bb.akf

bb.akd:                                           ; preds = %bb.akb
  %i.dxn = icmp eq i64 %i.dxl, 4
  br i1 %i.dxn, label %bb.ake, label %bb.akf

bb.ake:                                           ; preds = %bb.akd
  %i.dxo = load i32, ptr %i.dxh, align 4, !tbaa !34
  store i32 %i.dxo, ptr %i.dxf, align 4, !tbaa !34
  br label %bb.akf

bb.akf:                                           ; preds = %bb.ake, %bb.akd, %bb.akc, %bb.aka
  %i.dxp = getelementptr inbounds i8, ptr %i.dxi, i64 -4 ; 2 uses
  %i.dxq = load ptr, ptr %i.bqk, align 8, !tbaa !40 ; 4 uses
  %i.dxr = load ptr, ptr %91, align 8, !tbaa !39  ; 9 uses
  %i.dxs = ptrtoint ptr %i.dxq to i64
  %i.dxt = ptrtoint ptr %i.dxr to i64
  %.not1251 = icmp eq ptr %i.dxq, %i.dxr
  br i1 %.not1251, label %._crit_edge3351, label %bb.akg

bb.akg:                                           ; preds = %bb.akf
  %i.dxu = getelementptr inbounds nuw i8, ptr %i.dxr, i64 4 ; 4 uses
  %.not.i.i2407 = icmp eq ptr %i.dxu, %i.dxq
  br i1 %.not.i.i2407, label %bb.ako, label %bb.akh

bb.akh:                                           ; preds = %bb.akg
  %i.dxv = ptrtoint ptr %i.dxu to i64
  %i.dxw = sub i64 %i.dxs, %i.dxv                 ; 3 uses
  %i.dxx = icmp sgt i64 %i.dxw, 4
  br i1 %i.dxx, label %bb.aki, label %bb.akj, !prof !69

bb.aki:                                           ; preds = %bb.akh
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.dxr, ptr nonnull align 4 %i.dxu, i64 %i.dxw, i1 false)
  br label %bb.ako

bb.akj:                                           ; preds = %bb.akh
  %i.dxy = icmp eq i64 %i.dxw, 4
  br i1 %i.dxy, label %bb.akk, label %bb.ako

bb.akk:                                           ; preds = %bb.akj
  %i.dxz = load i32, ptr %i.dxu, align 4, !tbaa !34
  store i32 %i.dxz, ptr %i.dxr, align 4, !tbaa !34
  br label %bb.ako

bb.akl:                                           ; preds = %bb.ajt
  %i.dya = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2421

bb.akm:                                           ; preds = %bb.aju
  %i.dyb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2419

bb.akn:                                           ; preds = %bb.ajv
  %i.dyc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #23
  %i.dyd = load ptr, ptr %90, align 8, !tbaa !39  ; 2 uses
  %.not.i.i.i2418 = icmp eq ptr %i.dyd, null
  br i1 %.not.i.i.i2418, label %_ZNSt6vectorIiSaIiEED2Ev.exit2419, label %bb.aku

bb.ako:                                           ; preds = %bb.akg, %bb.aki, %bb.akj, %bb.akk
  %99 = getelementptr inbounds i8, ptr %i.dxq, i64 -4 ; 2 uses
  %i.dye = icmp eq ptr %99, %i.dxr
  br i1 %i.dye, label %._crit_edge3351, label %.lr.ph3350.preheader

.lr.ph3350.preheader:                             ; preds = %bb.ako
  %.pre3675 = ptrtoint ptr %99 to i64
  %i.dyf = sub i64 %.pre3675, %i.dxt
  %i.dyg = ashr exact i64 %i.dyf, 2
  br label %.lr.ph3350

._crit_edge3351:                                  ; preds = %bb.akq, %bb.akf, %bb.ako
  %i.dyh = ptrtoint ptr %i.dxe to i64
  %i.dyi = sub i64 %i.dyh, %i.dwv
  %i.dyj = ashr exact i64 %i.dyi, 2               ; 2 uses
  %i.dyk = trunc i64 %i.dyj to i32
  %i.dyl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zl, ptr noundef nonnull @.str.276, i32 noundef %i.dyk) #23 ; 0 uses
  %.not3402 = icmp eq ptr %i.dxe, %i.dwu
  br i1 %.not3402, label %._crit_edge3355, label %.lr.ph3354

.lr.ph3350:                                       ; preds = %.lr.ph3350.preheader, %bb.akq
  %.011613348 = phi i64 [ %i.dyp, %bb.akq ], [ 0, %.lr.ph3350.preheader ] ; 2 uses
  %i.dym = getelementptr inbounds nuw [4 x i8], ptr %i.dxr, i64 %.011613348
  %i.dyn = load i32, ptr %i.dym, align 4, !tbaa !34
  %.not1257 = icmp eq i32 %i.dyn, 1
  br i1 %.not1257, label %bb.akq, label %bb.akp

bb.akp:                                           ; preds = %.lr.ph3350
  %i.dyo = load ptr, ptr @stderr, align 8, !tbaa !158
  %fwrite1258 = call i64 @fwrite(ptr nonnull @.str.275, i64 25, i64 1, ptr %i.dyo) #30 ; 0 uses
  br label %bb.akq

bb.akq:                                           ; preds = %.lr.ph3350, %bb.akp
  %i.dyp = add nuw i64 %.011613348, 1             ; 2 uses
  %exitcond3599.not = icmp eq i64 %i.dyp, %i.dyg
  br i1 %exitcond3599.not, label %._crit_edge3351, label %.lr.ph3350, !llvm.loop !148

._crit_edge3355:                                  ; preds = %.lr.ph3354, %._crit_edge3351
  %i.dyq = ptrtoint ptr %i.dxp to i64
  %i.dyr = sub i64 %i.dyq, %i.dxg
  %i.dys = ashr exact i64 %i.dyr, 2               ; 2 uses
  %i.dyt = trunc i64 %i.dys to i32
  %i.dyu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zl, ptr noundef nonnull @.str.277, i32 noundef %i.dyt) #23 ; 0 uses
  %.not3403 = icmp eq ptr %i.dxp, %i.dxf
  br i1 %.not3403, label %._crit_edge3359, label %.lr.ph3358

.lr.ph3354:                                       ; preds = %._crit_edge3351, %.lr.ph3354
  %.011603352 = phi i64 [ %i.dyy, %.lr.ph3354 ], [ 0, %._crit_edge3351 ] ; 2 uses
  %i.dyv = getelementptr inbounds nuw [4 x i8], ptr %i.dwu, i64 %.011603352
  %i.dyw = load i32, ptr %i.dyv, align 4, !tbaa !34
  %i.dyx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zl, ptr noundef nonnull @.str.255, i32 noundef %i.dyw) #23 ; 0 uses
  %i.dyy = add nuw i64 %.011603352, 1             ; 2 uses
  %exitcond3601.not = icmp eq i64 %i.dyy, %i.dyj
  br i1 %exitcond3601.not, label %._crit_edge3355, label %.lr.ph3354, !llvm.loop !149

._crit_edge3359:                                  ; preds = %.lr.ph3358, %._crit_edge3355
  %.not.i.i.i2410 = icmp eq ptr %i.dxr, null
  br i1 %.not.i.i.i2410, label %_ZNSt6vectorIiSaIiEED2Ev.exit2411, label %bb.akr

bb.akr:                                           ; preds = %._crit_edge3359
  call void @_ZdlPv(ptr noundef nonnull %i.dxr) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2411

_ZNSt6vectorIiSaIiEED2Ev.exit2411:                ; preds = %._crit_edge3359, %bb.akr
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #23
  %.not.i.i.i2412 = icmp eq ptr %i.dxf, null
  br i1 %.not.i.i.i2412, label %_ZNSt6vectorIiSaIiEED2Ev.exit2413, label %bb.aks

bb.aks:                                           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2411
  call void @_ZdlPv(ptr noundef nonnull %i.dxf) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2413

_ZNSt6vectorIiSaIiEED2Ev.exit2413:                ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2411, %bb.aks
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #23
  %.not.i.i.i2414 = icmp eq ptr %i.dwu, null
  br i1 %.not.i.i.i2414, label %_ZNSt6vectorIiSaIiEED2Ev.exit2415, label %bb.akt

bb.akt:                                           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2413
  call void @_ZdlPv(ptr noundef nonnull %i.dwu) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2415

_ZNSt6vectorIiSaIiEED2Ev.exit2415:                ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2413, %bb.akt
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #23
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1902.thread

.lr.ph3358:                                       ; preds = %._crit_edge3355, %.lr.ph3358
  %.011593356 = phi i64 [ %i.dzc, %.lr.ph3358 ], [ 0, %._crit_edge3355 ] ; 2 uses
  %i.dyz = getelementptr inbounds nuw [4 x i8], ptr %i.dxf, i64 %.011593356
  %i.dza = load i32, ptr %i.dyz, align 4, !tbaa !34
  %i.dzb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zl, ptr noundef nonnull @.str.255, i32 noundef %i.dza) #23 ; 0 uses
  %i.dzc = add nuw i64 %.011593356, 1             ; 2 uses
  %exitcond3603.not = icmp eq i64 %i.dzc, %i.dys
  br i1 %exitcond3603.not, label %._crit_edge3359, label %.lr.ph3358, !llvm.loop !150

bb.aku:                                           ; preds = %bb.akn
  call void @_ZdlPv(ptr noundef nonnull %i.dyd) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2419

_ZNSt6vectorIiSaIiEED2Ev.exit2419:                ; preds = %bb.aku, %bb.akn, %bb.akm
  %.pn1252.pn.pn = phi { ptr, i32 } [ %i.dyb, %bb.akm ], [ %i.dyc, %bb.akn ], [ %i.dyc, %bb.aku ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #23
  %i.dzd = load ptr, ptr %89, align 8, !tbaa !39  ; 2 uses
  %.not.i.i.i2420 = icmp eq ptr %i.dzd, null
  br i1 %.not.i.i.i2420, label %_ZNSt6vectorIiSaIiEED2Ev.exit2421, label %bb.akv

bb.akv:                                           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2419
  call void @_ZdlPv(ptr noundef nonnull %i.dzd) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2421

_ZNSt6vectorIiSaIiEED2Ev.exit2421:                ; preds = %bb.akv, %_ZNSt6vectorIiSaIiEED2Ev.exit2419, %bb.akl
  %.pn1252.pn.pn.pn = phi { ptr, i32 } [ %i.dya, %bb.akl ], [ %.pn1252.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit2419 ], [ %.pn1252.pn.pn, %bb.akv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #23
  br label %.loopexit.split-lp

bb.akw:                                           ; preds = %bb.ajs
  %i.dze = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btc, ptr noundef nonnull @.str.139)
  br i1 %i.dze, label %bb.akx, label %bb.ald

bb.akx:                                           ; preds = %bb.akw
  %i.dzf = invoke noundef i32 @_ZNK9MXNetNode6attr_iEPKc(ptr noundef nonnull align 8 dereferenceable(208) %i.btb, ptr noundef nonnull @.str.242)
          to label %bb.aky unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.aky:                                           ; preds = %bb.akx
  %i.dzg = invoke noundef i32 @_ZNK9MXNetNode6attr_iEPKc(ptr noundef nonnull align 8 dereferenceable(208) %i.btb, ptr noundef nonnull @.str.272)
          to label %_ZNK9MXNetNode9AttrProxycviEv.exit2429 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK9MXNetNode9AttrProxycviEv.exit2429:           ; preds = %bb.aky
  %i.dzh = invoke noundef zeroext i1 @_ZNK9MXNetNode8has_attrEPKc(ptr noundef nonnull align 8 dereferenceable(208) %i.btb, ptr noundef nonnull @.str.273)
          to label %bb.akz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.akz:                                           ; preds = %_ZNK9MXNetNode9AttrProxycviEv.exit2429
  br i1 %i.dzh, label %bb.ala, label %_ZNK9MXNetNode9AttrProxycviEv.exit2433

bb.ala:                                           ; preds = %bb.akz
  %i.dzi = invoke noundef i32 @_ZNK9MXNetNode6attr_iEPKc(ptr noundef nonnull align 8 dereferenceable(208) %i.btb, ptr noundef nonnull @.str.273)
          to label %_ZNK9MXNetNode9AttrProxycviEv.exit2433 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK9MXNetNode9AttrProxycviEv.exit2433:           ; preds = %bb.ala, %bb.akz
  %i.dzj = phi i32 [ 2147483647, %bb.akz ], [ %i.dzi, %bb.ala ]
  %i.dzk = icmp eq i32 %i.dzf, 0
  %i.dzl = add i32 %i.dzf, -4
  %i.dzm = icmp ult i32 %i.dzl, -7
  %or.cond5 = or i1 %i.dzk, %i.dzm
  br i1 %or.cond5, label %bb.alb, label %bb.alc

bb.alb:                                           ; preds = %_ZNK9MXNetNode9AttrProxycviEv.exit2433
  %i.dzn = load ptr, ptr @stderr, align 8, !tbaa !158
  %fwrite1250 = call i64 @fwrite(ptr nonnull @.str.278, i64 30, i64 1, ptr %i.dzn) #30 ; 0 uses
  br label %bb.alc

bb.alc:                                           ; preds = %_ZNK9MXNetNode9AttrProxycviEv.exit2433, %bb.alb
  %i.dzo = icmp sgt i32 %i.dzf, 0
  %i.dzp = sext i1 %i.dzo to i32
  %spec.select1411 = add nsw i32 %i.dzf, %i.dzp
  %i.dzq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zl, ptr noundef nonnull @.str.279, i32 noundef %i.dzg) #23 ; 0 uses
  %i.dzr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zl, ptr noundef nonnull @.str.280, i32 noundef %i.dzj) #23 ; 0 uses
  %i.dzs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zl, ptr noundef nonnull @.str.281, i32 noundef %spec.select1411) #23 ; 0 uses
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1902.thread

bb.ald:                                           ; preds = %bb.akw
  %i.dzt = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btc, ptr noundef nonnull @.str.24)
  br i1 %i.dzt, label %bb.ale, label %bb.ali

bb.ale:                                           ; preds = %bb.ald
  %i.dzu = invoke noundef i32 @_ZNK9MXNetNode6attr_iEPKc(ptr noundef nonnull align 8 dereferenceable(208) %i.btb, ptr noundef nonnull @.str.25)
          to label %bb.alf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.alf:                                           ; preds = %bb.ale
  %i.dzv = invoke noundef i32 @_ZNK9MXNetNode6attr_iEPKc(ptr noundef nonnull align 8 dereferenceable(208) %i.btb, ptr noundef nonnull @.str.282)
          to label %_ZNK9MXNetNode9AttrProxycviEv.exit2441 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK9MXNetNode9AttrProxycviEv.exit2441:           ; preds = %bb.alf
  %.not = icmp eq i32 %i.dzv, 0
  br i1 %.not, label %bb.alh, label %bb.alg

bb.alg:                                           ; preds = %_ZNK9MXNetNode9AttrProxycviEv.exit2441
  %i.dzw = load ptr, ptr @stderr, align 8, !tbaa !158
  %fwrite1244 = call i64 @fwrite(ptr nonnull @.str.283, i64 40, i64 1, ptr %i.dzw) #30 ; 0 uses
  br label %bb.alh

bb.alh:                                           ; preds = %bb.alg, %_ZNK9MXNetNode9AttrProxycviEv.exit2441
  %i.dzx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zl, ptr noundef nonnull @.str.187, i32 noundef %i.dzu) #23 ; 0 uses
  %i.dzy = icmp sgt i32 %i.dzu, 0
  br i1 %i.dzy, label %.lr.ph3347, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1902.thread

.lr.ph3347:                                       ; preds = %bb.alh, %.lr.ph3347
  %.011573345 = phi i32 [ %i.dzz, %.lr.ph3347 ], [ 0, %bb.alh ]
  %fwrite1245 = call i64 @fwrite(ptr nonnull @.str.284, i64 5, i64 1, ptr %i.zl) ; 0 uses
  %i.dzz = add nuw nsw i32 %.011573345, 1         ; 2 uses
  %exitcond3597.not = icmp eq i32 %i.dzz, %i.dzu
  br i1 %exitcond3597.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1902.thread, label %.lr.ph3347, !llvm.loop !151

bb.ali:                                           ; preds = %bb.ald
  %i.eaa = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btc, ptr noundef nonnull @.str.141)
  br i1 %i.eaa, label %bb.alj, label %bb.aln

bb.alj:                                           ; preds = %bb.ali
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #23
  invoke void @_ZNK9MXNetNode6attr_sB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %92, ptr noundef nonnull align 8 dereferenceable(208) %i.btb, ptr noundef nonnull @.str.247)
          to label %_ZNK9MXNetNode9AttrProxycvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit2445 unwind label %bb.all

_ZNK9MXNetNode9AttrProxycvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit2445: ; preds = %bb.alj
  %i.eab = call noundef zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %92, ptr noundef nonnull @.str.249)
  br i1 %i.eab, label %bb.alk, label %bb.alm

bb.alk:                                           ; preds = %_ZNK9MXNetNode9AttrProxycvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit2445
  %i.eac = load ptr, ptr @stderr, align 8, !tbaa !158
  %fwrite1240 = call i64 @fwrite(ptr nonnull @.str.285, i64 37, i64 1, ptr %i.eac) #30 ; 0 uses
  br label %bb.alm

bb.all:                                           ; preds = %bb.alj
  %i.ead = landingpad { ptr, i32 }
end_hunk_2
