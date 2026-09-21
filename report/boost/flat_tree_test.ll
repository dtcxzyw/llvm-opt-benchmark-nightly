Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_tree_test?download=true
inline.NumInlined: 27414
inline.NumDeleted: 3408
loop-unroll.NumRuntimeUnrolled: 494
loop-unroll.NumUnrolled: 502
begin_hunk_0_@_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_13stable_vectorINS1_4pairINS0_4test24movable_and_copyable_intES6_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_OSF_T0_NS_11move_detail5bool_ILb0EEE:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !390, !noalias !3019
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !391, !noalias !3019 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN5boost7movelib7pdqsortINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEvT_SH_T0_.exit.thread43, label %_ZN5boost7movelib7pdqsortINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEvT_SH_T0_.exit

_ZN5boost7movelib7pdqsortINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEvT_SH_T0_.exit.thread43: ; preds = %_ZN5boost9container13stable_vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EEvE5beginEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN5boost9container13stable_vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EEvE5beginEv.exit10

_ZN5boost7movelib7pdqsortINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEvT_SH_T0_.exit: ; preds = %_ZN5boost9container13stable_vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EEvE5beginEv.exit
  store ptr %i.f, ptr %2, align 8, !tbaa !397
  store ptr %i.g, ptr %3, align 8, !tbaa !397
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !395
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !395
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %i.o = lshr i64 %i.n, 1
  %i.p = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 false)
  %i.q = sub nuw nsw i64 64, %i.p
  call void @_ZN5boost7movelib14pdqsort_detail12pdqsort_loopINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEENS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEEEEvT_SI_T0_NS0_9iter_sizeISI_E4typeEb(ptr noundef nonnull align 8 dead_on_return %2, ptr noundef nonnull align 8 dead_on_return %3, i64 noundef %i.q, i1 noundef zeroext true)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !389, !noalias !3020
  %i.r = icmp eq i64 %.pre, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %i.r, label %_ZN5boost7movelib6uniqueINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS0_6negateINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_T0_.exit, label %_ZN5boost9container13stable_vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EEvE5beginEv.exit10

_ZN5boost9container13stable_vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EEvE5beginEv.exit10: ; preds = %_ZN5boost7movelib7pdqsortINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEvT_SH_T0_.exit.thread43, %_ZN5boost7movelib7pdqsortINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEvT_SH_T0_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !390, !noalias !3020
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !391, !noalias !3020 ; 5 uses
  %.not.i = icmp eq ptr %i.u, %i.g
  br i1 %.not.i, label %_ZN5boost7movelib6uniqueINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS0_6negateINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_T0_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9container13stable_vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EEvE5beginEv.exit10
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !395, !noalias !3021
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !391, !noalias !3021 ; 2 uses
  %.not814.i = icmp eq ptr %i.x, %i.g
  br i1 %.not814.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %i.y = phi ptr [ %i.az, %bb.e ], [ %i.u, %bb.b ] ; 4 uses
  %.sroa.0.015.i = phi ptr [ %i.af, %bb.e ], [ %i.x, %bb.b ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i, i64 8
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !343, !noalias !3021
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !343, !noalias !3021
  %.not9.i = icmp slt i32 %i.ab, %i.ac
  %i.ad = load ptr, ptr %.sroa.0.015.i, align 8, !tbaa !395, !noalias !3021
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !391, !noalias !3021 ; 4 uses
  br i1 %.not9.i, label %bb.e, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not1016.i = icmp eq ptr %i.af, %i.g
  br i1 %.not1016.i, label %.loopexit.i, label %.lr.ph17.i

.lr.ph17.i:                                       ; preds = %.preheader.i, %bb.d
  %i.ag = phi ptr [ %i.at, %bb.d ], [ %i.y, %.preheader.i ] ; 3 uses
  %i.ah = phi ptr [ %i.aw, %bb.d ], [ %i.af, %.preheader.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !343, !noalias !3021
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !343, !noalias !3021 ; 2 uses
  %.not11.i = icmp slt i32 %i.ak, %i.al
  br i1 %.not11.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph17.i
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !395, !noalias !3021
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !391, !noalias !3021 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 %i.al, ptr %i.ap, align 4, !tbaa !343, !noalias !3021
  store i32 0, ptr %i.aj, align 4, !tbaa !343, !noalias !3021
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 12 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !343, !noalias !3021
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !343, !noalias !3021
  store i32 0, ptr %i.aq, align 4, !tbaa !343, !noalias !3021
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph17.i
  %i.at = phi ptr [ %i.ao, %bb.c ], [ %i.ag, %.lr.ph17.i ] ; 2 uses
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !395, !noalias !3021
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !391, !noalias !3021 ; 2 uses
  %.not10.i = icmp eq ptr %i.aw, %i.g
  br i1 %.not10.i, label %.loopexit.i, label %.lr.ph17.i, !llvm.loop !3013

bb.e:                                             ; preds = %.lr.ph.i
  %i.ax = load ptr, ptr %i.y, align 8, !tbaa !395, !noalias !3021
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !391, !noalias !3021 ; 2 uses
  %.not8.i = icmp eq ptr %i.af, %i.g
  br i1 %.not8.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !3014

.loopexit.i:                                      ; preds = %bb.e, %bb.d, %.preheader.i, %bb.b
  %i.ba = phi ptr [ %i.at, %bb.d ], [ %i.y, %.preheader.i ], [ %i.u, %bb.b ], [ %i.az, %bb.e ]
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !395, !noalias !3021
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !391, !noalias !3021
  br label %_ZN5boost7movelib6uniqueINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS0_6negateINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_T0_.exit

_ZN5boost7movelib6uniqueINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS0_6negateINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_T0_.exit: ; preds = %_ZN5boost7movelib7pdqsortINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEvT_SH_T0_.exit.thread, %_ZN5boost7movelib7pdqsortINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEvT_SH_T0_.exit, %_ZN5boost9container13stable_vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EEvE5beginEv.exit10, %.loopexit.i
  %i.be = phi ptr [ %i.g, %.loopexit.i ], [ %i.g, %_ZN5boost9container13stable_vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EEvE5beginEv.exit10 ], [ %i.g, %_ZN5boost7movelib7pdqsortINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEvT_SH_T0_.exit ], [ %i.c, %_ZN5boost7movelib7pdqsortINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEvT_SH_T0_.exit.thread ]
  %i.bf = phi ptr [ %i.bd, %.loopexit.i ], [ %i.u, %_ZN5boost9container13stable_vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EEvE5beginEv.exit10 ], [ %i.g, %_ZN5boost7movelib7pdqsortINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEvT_SH_T0_.exit ], [ %i.c, %_ZN5boost7movelib7pdqsortINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEvT_SH_T0_.exit.thread ]
  store ptr %i.bf, ptr %4, align 8, !tbaa !384
  store ptr %i.be, ptr %5, align 8, !tbaa !384, !alias.scope !3022
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZN5boost9container13stable_vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EEvE5eraseENS0_22stable_vector_iteratorIPS6_Lb1EEESA_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator") align 8 %6, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dead_on_return %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %.not.i11 = icmp eq ptr %0, %1
  br i1 %.not.i11, label %_ZN5boost9container13stable_vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EEvEaSEOS7_.exit, label %bb.f, !prof !339

bb.f:                                             ; preds = %_ZN5boost7movelib6uniqueINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS0_6negateINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_T0_.exit
  invoke void @_ZN5boost9container13stable_vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EEvE16priv_move_assignEOS7_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %_ZN5boost9container13stable_vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EEvEaSEOS7_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #22
  unreachable

_ZN5boost9container13stable_vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EEvEaSEOS7_.exit: ; preds = %_ZN5boost7movelib6uniqueINS_9container22stable_vector_iteratorIPNS2_3dtl4pairINS2_4test24movable_and_copyable_intES7_EELb0EEENS0_6negateINS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEEET_SJ_SJ_T0_.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_vEEE20adopt_sequence_equalENS0_15ordered_range_tEOSC_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN5boost9container13stable_vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EEvEaSEOS7_.exit, label %bb.b, !prof !339

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5boost9container13stable_vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EEvE16priv_move_assignEOS7_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %_ZN5boost9container13stable_vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EEvEaSEOS7_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #22
  unreachable

_ZN5boost9container13stable_vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EEvEaSEOS7_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_vEEE21adopt_sequence_uniqueENS0_22ordered_unique_range_tEOSC_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN5boost9container13stable_vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EEvEaSEOS7_.exit, label %bb.b, !prof !339

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5boost9container13stable_vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EEvE16priv_move_assignEOS7_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %_ZN5boost9container13stable_vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EEvEaSEOS7_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #22
  unreachable

_ZN5boost9container13stable_vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EEvEaSEOS7_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_vEEE20priv_in_range_or_endENS0_22stable_vector_iteratorIPS6_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !389, !noalias !3029
  %.not.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_vEEE5beginEv.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !390, !noalias !3029
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !391, !noalias !3029
  br label %_ZNK5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_vEEE5beginEv.exit

_ZNK5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_vEEE5beginEv.exit: ; preds = %bb.b, %bb.c
  %storemerge.i.i.i = phi ptr [ %i.f, %bb.c ], [ %i.c, %bb.b ]
  %i.g = load ptr, ptr %storemerge.i.i.i, align 8, !tbaa !395
  %i.h = load ptr, ptr %1, align 8, !tbaa !384
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !395  ; 2 uses
  %.not = icmp ugt ptr %i.g, %i.i
  br i1 %.not, label %6, label %2

2:                                                ; preds = %_ZNK5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_vEEE5beginEv.exit
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !395
  %5 = icmp ule ptr %i.i, %4
  br label %6

6:                                                ; preds = %2, %_ZNK5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_vEEE5beginEv.exit
  %7 = phi i1 [ false, %_ZNK5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_vEEE5beginEv.exit ], [ %5, %2 ]
  ret i1 %7
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS3_16simple_allocatorIS4_EEE4DataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat($_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS3_16simple_allocatorIS4_EEE4DataC5Ev) align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS3_16simple_allocatorIS4_EEE4DataC2ERKSB_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #0 comdat($_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS3_16simple_allocatorIS4_EEE4DataC5ERKSB_) align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS3_16simple_allocatorIS4_EEE4DataC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #0 comdat($_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS3_16simple_allocatorIS4_EEE4DataC5ERKS9_) align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS3_16simple_allocatorIS4_EEE4DataC2ERKS9_RKSB_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat($_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS3_16simple_allocatorIS4_EEE4DataC5ERKS9_RKSB_) align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS3_16simple_allocatorIS4_EEE4DataC2ERKSD_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat($_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS3_16simple_allocatorIS4_EEE4DataC5ERKSD_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !413  ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !414
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.c, align 8, !tbaa !415
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !416
  %.not.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC2ERKS6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %i.b, 4611686018427387903
  br i1 %i.e, label %bb.c, label %bb.d, !prof !339

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = icmp samesign ugt i64 %i.b, 2305843009213693951
  br i1 %i.f, label %bb.e, label %_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEEC2IRKS5_mEENS0_27vector_uninitialized_size_tEOT_T0_.exit.i, !prof !339

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5boost9container15throw_bad_allocEv() #19
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEEC2IRKS5_mEENS0_27vector_uninitialized_size_tEOT_T0_.exit.i: ; preds = %bb.d
  %i.g = shl nuw nsw i64 %i.b, 2
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #20 ; 8 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !414
  store i64 %i.b, ptr %i.d, align 8, !tbaa !340
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !413 ; 8 uses
  %.not17.i.i = icmp eq i64 %.pre.i, 0
  br i1 %.not17.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC2ERKS6_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEEC2IRKS5_mEENS0_27vector_uninitialized_size_tEOT_T0_.exit.i
  %i.i = load ptr, ptr %1, align 8, !tbaa !414    ; 7 uses
  %.pre7.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341 ; 3 uses
  %min.iters.check = icmp ult i64 %.pre.i, 20
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader.i
  %i.j = shl i64 %.pre.i, 2                       ; 2 uses
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.j ; 2 uses
  %scevgep2 = getelementptr i8, ptr %i.i, i64 %i.j ; 2 uses
  %bound0 = icmp ult ptr %i.h, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %scevgep, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound03 = icmp ult ptr %i.h, %scevgep2
  %bound14 = icmp ult ptr %i.i, %scevgep
  %found.conflict5 = and i1 %bound03, %bound14
  %conflict.rdx = or i1 %found.conflict, %found.conflict5
  %bound06 = icmp ugt ptr %scevgep2, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound17 = icmp ult ptr %i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict8 = and i1 %bound06, %bound17
  %conflict.rdx9 = or i1 %conflict.rdx, %found.conflict8
  br i1 %conflict.rdx9, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.pre.i, -8                    ; 3 uses
  %i.k = and i64 %.pre.i, 7
  %i.l = shl i64 %n.vec, 2                        ; 2 uses
  %i.m = getelementptr i8, ptr %i.i, i64 %i.l
  %i.n = getelementptr i8, ptr %i.h, i64 %i.l
  %i.o = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre7.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.o, %vector.ph ], [ %i.s, %vector.body ]
  %vec.phi10 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %i.p = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.p ; 2 uses
  %next.gep11 = getelementptr i8, ptr %i.h, i64 %i.p ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !343, !alias.scope !3037
  %wide.load12 = load <4 x i32>, ptr %i.q, align 4, !tbaa !343, !alias.scope !3037
  %i.r = getelementptr i8, ptr %next.gep11, i64 16
  store <4 x i32> %wide.load, ptr %next.gep11, align 4, !tbaa !343, !alias.scope !3038, !noalias !3039
  store <4 x i32> %wide.load12, ptr %i.r, align 4, !tbaa !343, !alias.scope !3038, !noalias !3039
  %i.s = add <4 x i32> %vec.phi, splat (i32 1)    ; 2 uses
  %i.t = add <4 x i32> %vec.phi10, splat (i32 1)  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !3034

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.t, %i.s
  %i.v = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !alias.scope !3040, !noalias !3037
  %cmp.n = icmp eq i64 %.pre.i, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC2ERKS6_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader.i, %middle.block
  %.ph = phi i32 [ %.pre7.i, %vector.memcheck ], [ %.pre7.i, %.lr.ph.i.preheader.i ], [ %i.v, %middle.block ] ; 2 uses
  %.020.i.i.ph = phi i64 [ %.pre.i, %vector.memcheck ], [ %.pre.i, %.lr.ph.i.preheader.i ], [ %i.k, %middle.block ] ; 4 uses
  %.0819.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.preheader.i ], [ %i.m, %middle.block ] ; 2 uses
  %.01618.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.preheader.i ], [ %i.n, %middle.block ] ; 2 uses
  %i.w = add i64 %.020.i.i.ph, -1
  %xtraiter = and i64 %.020.i.i.ph, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %i.x = phi i32 [ %i.aa, %.lr.ph.i.i.prol ], [ %.ph, %.lr.ph.i.i.preheader ]
  %.020.i.i.prol = phi i64 [ %i.y, %.lr.ph.i.i.prol ], [ %.020.i.i.ph, %.lr.ph.i.i.preheader ]
  %.0819.i.i.prol = phi ptr [ %i.ab, %.lr.ph.i.i.prol ], [ %.0819.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.01618.i.i.prol = phi ptr [ %i.ac, %.lr.ph.i.i.prol ], [ %.01618.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.y = add i64 %.020.i.i.prol, -1               ; 2 uses
  %i.z = load i32, ptr %.0819.i.i.prol, align 4, !tbaa !343
  store i32 %i.z, ptr %.01618.i.i.prol, align 4, !tbaa !343
  %i.aa = add i32 %i.x, 1                         ; 3 uses
  store i32 %i.aa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ab = getelementptr inbounds nuw i8, ptr %.0819.i.i.prol, i64 4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01618.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3035

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.unr = phi i32 [ %.ph, %.lr.ph.i.i.preheader ], [ %i.aa, %.lr.ph.i.i.prol ]
  %.020.i.i.unr = phi i64 [ %.020.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.y, %.lr.ph.i.i.prol ]
  %.0819.i.i.unr = phi ptr [ %.0819.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.prol ]
  %.01618.i.i.unr = phi ptr [ %.01618.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.prol ]
  %i.ad = icmp ult i64 %i.w, 3
  br i1 %i.ad, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC2ERKS6_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.ae = phi i32 [ %i.at, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.020.i.i = phi i64 [ %i.ar, %.lr.ph.i.i ], [ %.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.0819.i.i = phi ptr [ %i.au, %.lr.ph.i.i ], [ %.0819.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i = phi ptr [ %i.av, %.lr.ph.i.i ], [ %.01618.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.af = load i32, ptr %.0819.i.i, align 4, !tbaa !343
  store i32 %i.af, ptr %.01618.i.i, align 4, !tbaa !343
  %i.ag = add i32 %i.ae, 1
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ah = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !343
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !343
  %i.ak = add i32 %i.ae, 2
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.al = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %i.an = load i32, ptr %i.al, align 4, !tbaa !343
  store i32 %i.an, ptr %i.am, align 4, !tbaa !343
  %i.ao = add i32 %i.ae, 3
  store i32 %i.ao, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ap = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 12
  %i.aq = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 12
  %i.ar = add i64 %.020.i.i, -4                   ; 2 uses
  %i.as = load i32, ptr %i.ap, align 4, !tbaa !343
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !343
  %i.at = add i32 %i.ae, 4                        ; 2 uses
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.au = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC2ERKS6_.exit, label %.lr.ph.i.i, !llvm.loop !3036

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC2ERKS6_.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %bb.a, %_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEEC2IRKS5_mEENS0_27vector_uninitialized_size_tEOT_T0_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS3_16simple_allocatorIS4_EEE4DataC2EOSD_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat($_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS3_16simple_allocatorIS4_EEE4DataC5EOSD_) align 2 {
end_hunk_0
begin_hunk_1_@_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_13stable_vectorINS0_4test24movable_and_copyable_intEvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSE_T0_NSA_5bool_ILb0EEE:bb.a
_ZN5boost7movelib7pdqsortINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SG_T0_.exit.thread: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %_ZN5boost7movelib6uniqueINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit

_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvE5beginEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !390, !noalias !5592
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !391, !noalias !5592 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN5boost7movelib7pdqsortINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SG_T0_.exit.thread43, label %_ZN5boost7movelib7pdqsortINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SG_T0_.exit

_ZN5boost7movelib7pdqsortINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SG_T0_.exit.thread43: ; preds = %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvE5beginEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvE5beginEv.exit10

_ZN5boost7movelib7pdqsortINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SG_T0_.exit: ; preds = %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvE5beginEv.exit
  store ptr %i.f, ptr %2, align 8, !tbaa !450
  store ptr %i.g, ptr %3, align 8, !tbaa !450
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !395
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !395
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %i.o = lshr i64 %i.n, 1
  %i.p = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 false)
  %i.q = sub nuw nsw i64 64, %i.p
  call void @_ZN5boost7movelib14pdqsort_detail12pdqsort_loopINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEvT_SH_T0_NS0_9iter_sizeISH_E4typeEb(ptr noundef nonnull align 8 dead_on_return %2, ptr noundef nonnull align 8 dead_on_return %3, i64 noundef %i.q, i1 noundef zeroext true)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !389, !noalias !5593
  %i.r = icmp eq i64 %.pre, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %i.r, label %_ZN5boost7movelib6uniqueINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvE5beginEv.exit10

_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvE5beginEv.exit10: ; preds = %_ZN5boost7movelib7pdqsortINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SG_T0_.exit.thread43, %_ZN5boost7movelib7pdqsortINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SG_T0_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !390, !noalias !5593
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !391, !noalias !5593 ; 5 uses
  %.not.i = icmp eq ptr %i.u, %i.g
  br i1 %.not.i, label %_ZN5boost7movelib6uniqueINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvE5beginEv.exit10
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !395, !noalias !5594
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !391, !noalias !5594 ; 2 uses
  %.not814.i = icmp eq ptr %i.x, %i.g
  br i1 %.not814.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %i.y = phi ptr [ %i.aw, %bb.e ], [ %i.u, %bb.b ] ; 4 uses
  %.sroa.0.015.i = phi ptr [ %i.af, %bb.e ], [ %i.x, %bb.b ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i, i64 8
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !343, !noalias !5594
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !343, !noalias !5594
  %.not9.i = icmp slt i32 %i.ab, %i.ac
  %i.ad = load ptr, ptr %.sroa.0.015.i, align 8, !tbaa !395, !noalias !5594
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !391, !noalias !5594 ; 4 uses
  br i1 %.not9.i, label %bb.e, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not1016.i = icmp eq ptr %i.af, %i.g
  br i1 %.not1016.i, label %.loopexit.i, label %.lr.ph17.i

.lr.ph17.i:                                       ; preds = %.preheader.i, %bb.d
  %i.ag = phi ptr [ %i.aq, %bb.d ], [ %i.y, %.preheader.i ] ; 3 uses
  %i.ah = phi ptr [ %i.at, %bb.d ], [ %i.af, %.preheader.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !343, !noalias !5594
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !343, !noalias !5594 ; 2 uses
  %.not11.i = icmp slt i32 %i.ak, %i.al
  br i1 %.not11.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph17.i
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !395, !noalias !5594
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !391, !noalias !5594 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 %i.al, ptr %i.ap, align 4, !tbaa !343, !noalias !5594
  store i32 0, ptr %i.aj, align 4, !tbaa !343, !noalias !5594
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph17.i
  %i.aq = phi ptr [ %i.ao, %bb.c ], [ %i.ag, %.lr.ph17.i ] ; 2 uses
  %i.ar = load ptr, ptr %i.ah, align 8, !tbaa !395, !noalias !5594
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !391, !noalias !5594 ; 2 uses
  %.not10.i = icmp eq ptr %i.at, %i.g
  br i1 %.not10.i, label %.loopexit.i, label %.lr.ph17.i, !llvm.loop !5586

bb.e:                                             ; preds = %.lr.ph.i
  %i.au = load ptr, ptr %i.y, align 8, !tbaa !395, !noalias !5594
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !391, !noalias !5594 ; 2 uses
  %.not8.i = icmp eq ptr %i.af, %i.g
  br i1 %.not8.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !5587

.loopexit.i:                                      ; preds = %bb.e, %bb.d, %.preheader.i, %bb.b
  %i.ax = phi ptr [ %i.aq, %bb.d ], [ %i.y, %.preheader.i ], [ %i.u, %bb.b ], [ %i.aw, %bb.e ]
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !395, !noalias !5594
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !391, !noalias !5594
  br label %_ZN5boost7movelib6uniqueINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit

_ZN5boost7movelib6uniqueINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit: ; preds = %_ZN5boost7movelib7pdqsortINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SG_T0_.exit.thread, %_ZN5boost7movelib7pdqsortINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SG_T0_.exit, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvE5beginEv.exit10, %.loopexit.i
  %i.bb = phi ptr [ %i.g, %.loopexit.i ], [ %i.g, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvE5beginEv.exit10 ], [ %i.g, %_ZN5boost7movelib7pdqsortINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SG_T0_.exit ], [ %i.c, %_ZN5boost7movelib7pdqsortINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SG_T0_.exit.thread ]
  %i.bc = phi ptr [ %i.ba, %.loopexit.i ], [ %i.u, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvE5beginEv.exit10 ], [ %i.g, %_ZN5boost7movelib7pdqsortINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SG_T0_.exit ], [ %i.c, %_ZN5boost7movelib7pdqsortINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SG_T0_.exit.thread ]
  store ptr %i.bc, ptr %4, align 8, !tbaa !448
  store ptr %i.bb, ptr %5, align 8, !tbaa !448, !alias.scope !5595
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvE5eraseENS0_22stable_vector_iteratorIPS3_Lb1EEES7_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.71") align 8 %6, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dead_on_return %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %.not.i11 = icmp eq ptr %0, %1
  br i1 %.not.i11, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvEaSEOS4_.exit, label %bb.f, !prof !339

bb.f:                                             ; preds = %_ZN5boost7movelib6uniqueINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit
  invoke void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvE16priv_move_assignEOS4_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvEaSEOS4_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #22
  unreachable

_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvEaSEOS4_.exit: ; preds = %_ZN5boost7movelib6uniqueINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13stable_vectorIS4_vEEE20adopt_sequence_equalENS0_15ordered_range_tEOSB_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvEaSEOS4_.exit, label %bb.b, !prof !339

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvE16priv_move_assignEOS4_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvEaSEOS4_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #22
  unreachable

_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvEaSEOS4_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13stable_vectorIS4_vEEE21adopt_sequence_uniqueENS0_22ordered_unique_range_tEOSB_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvEaSEOS4_.exit, label %bb.b, !prof !339

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvE16priv_move_assignEOS4_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvEaSEOS4_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #22
  unreachable

_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvEaSEOS4_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13stable_vectorIS4_vEEE20priv_in_range_or_endENS0_22stable_vector_iteratorIPS4_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !389, !noalias !5602
  %.not.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13stable_vectorIS4_vEEE5beginEv.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !390, !noalias !5602
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !391, !noalias !5602
  br label %_ZNK5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13stable_vectorIS4_vEEE5beginEv.exit

_ZNK5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13stable_vectorIS4_vEEE5beginEv.exit: ; preds = %bb.b, %bb.c
  %storemerge.i.i.i = phi ptr [ %i.f, %bb.c ], [ %i.c, %bb.b ]
  %i.g = load ptr, ptr %storemerge.i.i.i, align 8, !tbaa !395
  %i.h = load ptr, ptr %1, align 8, !tbaa !448
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !395  ; 2 uses
  %.not = icmp ugt ptr %i.g, %i.i
  br i1 %.not, label %6, label %2

2:                                                ; preds = %_ZNK5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13stable_vectorIS4_vEEE5beginEv.exit
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !395
  %5 = icmp ule ptr %i.i, %4
  br label %6

6:                                                ; preds = %2, %_ZNK5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13stable_vectorIS4_vEEE5beginEv.exit
  %7 = phi i1 [ false, %_ZNK5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13stable_vectorIS4_vEEE5beginEv.exit ], [ %5, %2 ]
  ret i1 %7
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13static_vectorIS4_Lm10EvEEE4DataC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat($_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13static_vectorIS4_Lm10EvEEE4DataC5Ev) align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.a, align 8, !tbaa !458
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13static_vectorIS4_Lm10EvEEE4DataC2ERKNS1_24static_storage_allocatorIS4_Lm10ELm0ELb1EEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(40) %1) unnamed_addr #0 comdat($_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13static_vectorIS4_Lm10EvEEE4DataC5ERKNS1_24static_storage_allocatorIS4_Lm10ELm0ELb1EEE) align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.a, align 8, !tbaa !458
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13static_vectorIS4_Lm10EvEEE4DataC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #0 comdat($_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13static_vectorIS4_Lm10EvEEE4DataC5ERKS9_) align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.a, align 8, !tbaa !458
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13static_vectorIS4_Lm10EvEEE4DataC2ERKS9_RKNS1_24static_storage_allocatorIS4_Lm10ELm0ELb1EEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(40) %2) unnamed_addr #0 comdat($_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13static_vectorIS4_Lm10EvEEE4DataC5ERKS9_RKNS1_24static_storage_allocatorIS4_Lm10ELm0ELb1EEE) align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.a, align 8, !tbaa !458
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13static_vectorIS4_Lm10EvEEE4DataC2ERKSD_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat($_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13static_vectorIS4_Lm10EvEEE4DataC5ERKSD_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !460  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.b, ptr %i.c, align 8, !tbaa !458
  %i.d = icmp ugt i64 %i.b, 10
  br i1 %i.d, label %bb.b, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #19
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i: ; preds = %bb.a
  %.not17.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not17.i.i.i, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %xtraiter = and i64 %i.b, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i.prol
  %.020.i.i.i.prol = phi i64 [ %i.e, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.preheader.i.i ]
  %.0819.i.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %.01618.i.i.i.prol = phi ptr [ %i.h, %.lr.ph.i.i.i.prol ], [ %0, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.preheader.i.i ]
  %i.e = add i64 %.020.i.i.i.prol, -1             ; 2 uses
  %i.f = load i32, ptr %.0819.i.i.i.prol, align 4, !tbaa !343
  store i32 %i.f, ptr %.01618.i.i.i.prol, align 4, !tbaa !343
  %i.g = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.prol, i64 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !5603

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.preheader.i.i
  %.020.i.i.i.unr = phi i64 [ %i.b, %.lr.ph.i.preheader.i.i ], [ %i.e, %.lr.ph.i.i.i.prol ]
  %.0819.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.preheader.i.i ], [ %i.g, %.lr.ph.i.i.i.prol ]
  %.01618.i.i.i.unr = phi ptr [ %0, %.lr.ph.i.preheader.i.i ], [ %i.h, %.lr.ph.i.i.i.prol ]
  %i.i = icmp ult i64 %i.b, 8
  br i1 %i.i, label %_ZN5boost9container26uninitialized_copy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_S7_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.020.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i ], [ %.020.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.0819.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.0819.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.01618.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.01618.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.j = load i32, ptr %.0819.i.i.i, align 4, !tbaa !343
  store i32 %i.j, ptr %.01618.i.i.i, align 4, !tbaa !343
  %i.k = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 4
  %i.m = load i32, ptr %i.k, align 4, !tbaa !343
  store i32 %i.m, ptr %i.l, align 4, !tbaa !343
  %i.n = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 8
  %i.p = load i32, ptr %i.n, align 4, !tbaa !343
  store i32 %i.p, ptr %i.o, align 4, !tbaa !343
  %i.q = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 12
  %i.s = load i32, ptr %i.q, align 4, !tbaa !343
  store i32 %i.s, ptr %i.r, align 4, !tbaa !343
  %i.t = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 16
  %i.v = load i32, ptr %i.t, align 4, !tbaa !343
  store i32 %i.v, ptr %i.u, align 4, !tbaa !343
  %i.w = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 20
  %i.x = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 20
  %i.y = load i32, ptr %i.w, align 4, !tbaa !343
  store i32 %i.y, ptr %i.x, align 4, !tbaa !343
  %i.z = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 24
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !343
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !343
  %i.ac = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 28
  %i.ad = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 28
  %i.ae = add i64 %.020.i.i.i, -8                 ; 2 uses
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !343
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !343
  %i.ag = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 32
  %.not.i.i.i.7 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.7, label %_ZN5boost9container26uninitialized_copy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_S7_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !69

_ZN5boost9container26uninitialized_copy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_S7_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %i.ai = trunc nuw nsw i64 %i.b to i32
  %i.aj = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.ai
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  br label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit

_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i, %_ZN5boost9container26uninitialized_copy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_S7_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.loopexit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13static_vectorIS4_Lm10EvEEE4DataC2EOSD_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat($_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13static_vectorIS4_Lm10EvEEE4DataC5EOSD_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !458  ; 14 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !458
  %.not17.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not17.i.i.i.i, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2EOS4_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.c, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader21, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.d = shl i64 %i.c, 2                          ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.d
  %scevgep3 = getelementptr i8, ptr %1, i64 %i.d
  %bound0 = icmp ult ptr %0, %scevgep3
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader21, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.c, -8                       ; 3 uses
  %i.e = and i64 %i.c, 7
  %i.f = shl i64 %n.vec, 2                        ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 %i.f
  %i.h = getelementptr i8, ptr %0, i64 %i.f
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.i = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.i  ; 3 uses
  %next.gep4 = getelementptr i8, ptr %0, i64 %i.i ; 2 uses
  %i.j = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 8, !tbaa !343, !alias.scope !5612
  %wide.load5 = load <4 x i32>, ptr %i.j, align 8, !tbaa !343, !alias.scope !5612
  %i.k = getelementptr i8, ptr %next.gep4, i64 16
  store <4 x i32> %wide.load, ptr %next.gep4, align 8, !tbaa !343, !alias.scope !5613, !noalias !5612
  store <4 x i32> %wide.load5, ptr %i.k, align 8, !tbaa !343, !alias.scope !5613, !noalias !5612
  store <4 x i32> zeroinitializer, ptr %next.gep, align 8, !tbaa !343, !alias.scope !5612
  store <4 x i32> zeroinitializer, ptr %i.j, align 8, !tbaa !343, !alias.scope !5612
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !5607

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %.lr.ph.i6.i.i.i.preheader, label %.lr.ph.i.i.i.i.preheader21

.lr.ph.i.i.i.i.preheader21:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.020.i.i.i.i.ph = phi i64 [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.e, %middle.block ] ; 4 uses
  %.0819.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i.i.preheader ], [ %i.g, %middle.block ] ; 2 uses
  %.01618.i.i.i.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i.i.i.i.preheader ], [ %i.h, %middle.block ] ; 2 uses
  %i.m = add i64 %.020.i.i.i.i.ph, -1
  %xtraiter = and i64 %.020.i.i.i.i.ph, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader21, %.lr.ph.i.i.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.n, %.lr.ph.i.i.i.i.prol ], [ %.020.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader21 ]
  %.0819.i.i.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.i.i.prol ], [ %.0819.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader21 ] ; 3 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.i.prol ], [ %.01618.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader21 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader21 ]
  %i.n = add i64 %.020.i.i.i.i.prol, -1           ; 2 uses
  %i.o = load i32, ptr %.0819.i.i.i.i.prol, align 4, !tbaa !343
  store i32 %i.o, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !343
  store i32 0, ptr %.0819.i.i.i.i.prol, align 4, !tbaa !343
  %i.p = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.prol, i64 4 ; 2 uses
end_hunk_1
