Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/Morphology?download=true
inline.NumInlined: 68333
inline.NumDeleted: 20965
loop-unroll.NumCompletelyUnrolled: 253
loop-unroll.NumRuntimeUnrolled: 335
loop-unroll.NumUnrolled: 1724
begin_hunk_0_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_12start_reduceIN7openvdb5v13_04tree11LeafManagerIKNSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSF_INSB_8LeafNodeINSA_9ValueMaskELj3EEELj4EEELj5EEEEEEEE9LeafRangeENSO_11LeafReducerINSA_5tools14count_internal20InactiveVoxelCountOpISM_EEEEKNS1_16auto_partitionerEEESP_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !1778 ; 2 uses
  %i.ek = load i64, ptr %i.ee, align 8, !tbaa !1777 ; 2 uses
  %i.el = icmp ult i64 %i.ej, %i.ek
  br i1 %i.el, label %.lr.ph.i.i.i.i.i.i15, label %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree11LeafManagerIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEE9LeafRangeENSI_11LeafReducerINS4_5tools14count_internal20InactiveVoxelCountOpISG_EEEEKNS1_16auto_partitionerEE8run_bodyERSJ_.exit20

.lr.ph.i.i.i.i.i.i15:                             ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree11LeafManagerIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEE9LeafRangeELh8EE12is_divisibleEh.exit.thread
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !1821, !nonnull !528, !align !535
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !1781
  %.promoted.i.i.i.i.i.i16 = load i64, ptr %i.eh, align 8, !tbaa !1685
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i15
  %i.eq = phi i64 [ %.promoted.i.i.i.i.i.i16, %.lr.ph.i.i.i.i.i.i15 ], [ %i.ew, %bb.k ]
  %.sroa.5.021.i.i.i.i.i.i17 = phi i64 [ %i.ej, %.lr.ph.i.i.i.i.i.i15 ], [ %i.ex, %bb.k ] ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.sroa.5.021.i.i.i.i.i.i17
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !558
  %i.et = load <8 x i64>, ptr %i.es, align 8, !tbaa !513
  %i.eu = call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.et)
  %.neg29 = add i64 %i.eq, 512
  %i.ev = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.eu)
  %i.ew = sub i64 %.neg29, %i.ev                  ; 2 uses
  store i64 %i.ew, ptr %i.eh, align 8, !tbaa !1685
  %i.ex = add nuw i64 %.sroa.5.021.i.i.i.i.i.i17, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i19 = icmp eq i64 %i.ex, %i.ek
  br i1 %exitcond.not.i.i.i.i.i.i19, label %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree11LeafManagerIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEE9LeafRangeENSI_11LeafReducerINS4_5tools14count_internal20InactiveVoxelCountOpISG_EEEEKNS1_16auto_partitionerEE8run_bodyERSJ_.exit20, label %bb.k, !llvm.loop !89

_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree11LeafManagerIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEE9LeafRangeENSI_11LeafReducerINS4_5tools14count_internal20InactiveVoxelCountOpISG_EEEEKNS1_16auto_partitionerEE8run_bodyERSJ_.exit20: ; preds = %bb.k, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree11LeafManagerIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEE9LeafRangeELh8EE12is_divisibleEh.exit.thread
  %i.ey = add i8 %i.ed, -1
  %i.ez = add nuw i8 %i.ec, 7
  %i.fa = and i8 %i.ez, 7
  br label %thread-pre-split27

thread-pre-split27:                               ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree11LeafManagerIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEE9LeafRangeELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree11LeafManagerIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEE9LeafRangeENSI_11LeafReducerINS4_5tools14count_internal20InactiveVoxelCountOpISG_EEEEKNS1_16auto_partitionerEE8run_bodyERSJ_.exit20
  %i.fb = phi i8 [ %i.ey, %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree11LeafManagerIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEE9LeafRangeENSI_11LeafReducerINS4_5tools14count_internal20InactiveVoxelCountOpISG_EEEEKNS1_16auto_partitionerEE8run_bodyERSJ_.exit20 ], [ %i.bt, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree11LeafManagerIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEE9LeafRangeELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.fc = phi i8 [ %i.fa, %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree11LeafManagerIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEE9LeafRangeENSI_11LeafReducerINS4_5tools14count_internal20InactiveVoxelCountOpISG_EEEEKNS1_16auto_partitionerEE8run_bodyERSJ_.exit20 ], [ %i.bu, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree11LeafManagerIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEE9LeafRangeELh8EE12is_divisibleEh.exit ]
  %i.fd = icmp eq i8 %i.fb, 0
  br i1 %i.fd, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree11LeafManagerIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEE9LeafRangeELh8EED2Ev.exit26, label %bb.l

bb.l:                                             ; preds = %.noexc, %thread-pre-split27
  %i.fe = phi i8 [ %i.dp, %.noexc ], [ %i.ah, %thread-pre-split27 ]
  %i.ff = phi i8 [ %i.dn, %.noexc ], [ %i.fb, %thread-pre-split27 ]
  %i.fg = phi i8 [ %i.cj, %.noexc ], [ %i.fc, %thread-pre-split27 ]
  %i.fh = load ptr, ptr %3, align 8, !tbaa !1557  ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 15
  %i.fj = load atomic i8, ptr %i.fi monotonic, align 1
  %i.fk = icmp eq i8 %i.fj, -1
  br i1 %i.fk, label %bb.m, label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

bb.m:                                             ; preds = %bb.l
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !485
  br label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i: ; preds = %bb.m, %bb.l
  %.0.i.i = phi ptr [ %i.fm, %bb.m ], [ %i.fh, %bb.l ]
  %i.fn = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.fn, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree11LeafManagerIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEE9LeafRangeELh8EED2Ev.exit26, label %bb.f, !llvm.loop !4794

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree11LeafManagerIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEE9LeafRangeELh8EED2Ev.exit26: ; preds = %thread-pre-split27, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree11LeafManagerIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEE9LeafRangeENSI_11LeafReducerINS4_5tools14count_internal20InactiveVoxelCountOpISG_EEEEKNS1_16auto_partitionerEE8run_bodyERSJ_.exit

_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree11LeafManagerIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEE9LeafRangeENSI_11LeafReducerINS4_5tools14count_internal20InactiveVoxelCountOpISG_EEEEKNS1_16auto_partitionerEE8run_bodyERSJ_.exit: ; preds = %bb.d, %bb.c, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree11LeafManagerIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEE9LeafRangeELh8EED2Ev.exit26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19fold_treeINS1_19reduction_tree_nodeIN7openvdb5v13_04tree11LeafManagerIKNS6_4TreeINS6_8RootNodeINS6_12InternalNodeINSA_INS6_8LeafNodeINS5_9ValueMaskELj3EEELj4EEELj5EEEEEEEE11LeafReducerINS5_5tools14count_internal20InactiveVoxelCountOpISH_EEEEEEEEvPNS1_4nodeERKNS1_14execution_dataE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = atomicrmw sub ptr %i.a, i32 1 seq_cst, align 4
  %i.c = add i32 %i.b, -1
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %_ZN3tbb6detail2d112wait_context7releaseEj.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.019 = phi ptr [ %i.e, %bb.g ], [ %0, %bb.a ]  ; 9 uses
  %i.e = load ptr, ptr %.019, align 8, !tbaa !1547 ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = load ptr, ptr %1, align 8, !tbaa !1557   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.019, i64 56 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !1840, !range !512, !noundef !528
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree11LeafManagerIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEE11LeafReducerINS4_5tools14count_internal20InactiveVoxelCountOpISG_EEEEE4joinEPNS1_18task_group_contextE.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %i.k = load atomic i8, ptr %i.j monotonic, align 1
  %i.l = icmp eq i8 %i.k, -1
  br i1 %i.l, label %bb.d, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !485
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %i.n, %bb.d ], [ %i.f, %bb.c ]
  %i.o = tail call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i)
  br i1 %i.o, label %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree11LeafManagerIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEE11LeafReducerINS4_5tools14count_internal20InactiveVoxelCountOpISG_EEEEE4joinEPNS1_18task_group_contextE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %.019, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !4795, !nonnull !528, !align !535
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1831 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.019, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1831
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1685
  %i.w = load i64, ptr %i.s, align 8, !tbaa !1685
  %i.x = add i64 %i.w, %i.v
  store i64 %i.x, ptr %i.s, align 8, !tbaa !1685
  br label %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree11LeafManagerIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEE11LeafReducerINS4_5tools14count_internal20InactiveVoxelCountOpISG_EEEEE4joinEPNS1_18task_group_contextE.exit

_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree11LeafManagerIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEE11LeafReducerINS4_5tools14count_internal20InactiveVoxelCountOpISG_EEEEE4joinEPNS1_18task_group_contextE.exit: ; preds = %bb.b, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.019, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1543
  %i.aa = load i8, ptr %i.g, align 8, !tbaa !1840, !range !512, !noundef !528
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree11LeafManagerIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEE11LeafReducerINS4_5tools14count_internal20InactiveVoxelCountOpISG_EEEEE4joinEPNS1_18task_group_contextE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.019, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1832 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %bb.g, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i.i.i: ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 8) #30
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i.i.i, %bb.f, %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree11LeafManagerIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEE11LeafReducerINS4_5tools14count_internal20InactiveVoxelCountOpISG_EEEEE4joinEPNS1_18task_group_contextE.exit
  %i.ae = inttoptr i64 %i.z to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, ptr noundef nonnull %.019, i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ag = atomicrmw sub ptr %i.af, i32 1 seq_cst, align 4
  %i.ah = add i32 %i.ag, -1
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %_ZN3tbb6detail2d112wait_context7releaseEj.exit, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %.019, i64 24
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 seq_cst, align 8
  %.not.i.i = icmp eq i64 %i.ak, 1
  br i1 %.not.i.i, label %bb.i, label %_ZN3tbb6detail2d112wait_context7releaseEj.exit

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %.019, i64 16
  %i.am = ptrtoint ptr %i.al to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.am)
  br label %_ZN3tbb6detail2d112wait_context7releaseEj.exit

_ZN3tbb6detail2d112wait_context7releaseEj.exit:   ; preds = %bb.g, %bb.a, %bb.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree18DynamicNodeManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELj3EE13reduceTopDownINS0_5tools14count_internal18ActiveVoxelCountOpISC_EEEEvRT_bmm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.openvdb::v13_0::tree::NodeList<const openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<openvdb::v13_0::ValueMask, 3>, 4>>::NodeReducer", align 8 ; 8 uses
  %6 = alloca %"class.openvdb::v13_0::tree::NodeList<const openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<openvdb::v13_0::ValueMask, 3>, 4>>::NodeRange", align 8 ; 8 uses
  %7 = alloca %"struct.openvdb::v13_0::tree::NodeList<const openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<openvdb::v13_0::ValueMask, 3>, 4>, 5>>::NodeReducer", align 8 ; 8 uses
  %8 = alloca %"class.openvdb::v13_0::tree::NodeList<const openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<openvdb::v13_0::ValueMask, 3>, 4>, 5>>::NodeRange", align 8 ; 8 uses
  %9 = alloca %"struct.openvdb::v13_0::tree::ReduceFilterOp", align 8 ; 12 uses
  %10 = alloca %"struct.openvdb::v13_0::tree::ReduceFilterOp", align 8 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1858, !nonnull !528, !align !535 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !507  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  %.not1.i.i.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not1.i.i.i.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE13cbeginValueOnEv.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.b
  %.sroa.2.0.i.i = phi ptr [ %i.l, %bb.b ], [ %i.c, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i.i, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !511
  %i.g = icmp eq ptr %i.f, null
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i.i, i64 57
  %i.i = load i8, ptr %i.h, align 1, !range !512
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = select i1 %i.g, i1 %i.j, i1 false
  br i1 %i.k, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE13cbeginValueOnEv.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.l = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i.i) #32 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.d
  br i1 %.not.i.i.i.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE13cbeginValueOnEv.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !91

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE13cbeginValueOnEv.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i, %bb.a
  %.sroa.2.1.i.i = phi ptr [ %i.c, %bb.a ], [ %i.l, %bb.b ], [ %.sroa.2.0.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %.not7.i = icmp eq ptr %.sroa.2.1.i.i, %i.d
  br i1 %.not7.i, label %_ZN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclISD_EEbRKT_m.exit, label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE13cbeginValueOnEv.exit.i
  %.promoted.i = load i64, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_11ValueOnPredEKbEppEv.exit.i, %.lr.ph.i.a
  %.sroa.5.08.i = phi ptr [ %.sroa.5.3.i, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_11ValueOnPredEKbEppEv.exit.i ], [ %.sroa.2.1.i.i, %.lr.ph.i.a ]
  %11 = phi i64 [ %i.m, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_11ValueOnPredEKbEppEv.exit.i ], [ %.promoted.i, %.lr.ph.i.a ]
  %i.m = add i64 %11, 68719476736                 ; 2 uses
  store i64 %i.m, ptr %1, align 8, !tbaa !1683
  %i.n = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.5.08.i) #32 ; 3 uses
  %.not1.i.i.i2.i = icmp eq ptr %i.n, %i.d
  br i1 %.not1.i.i.i2.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_11ValueOnPredEKbEppEv.exit.i, label %.lr.ph.i.i.i3.i

.lr.ph.i.i.i3.i:                                  ; preds = %bb.c, %bb.d
  %.sroa.5.2.i = phi ptr [ %i.v, %bb.d ], [ %i.n, %bb.c ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.5.2.i, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !511
  %i.q = icmp eq ptr %i.p, null
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.5.2.i, i64 57
  %i.s = load i8, ptr %i.r, align 1, !range !512
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = select i1 %i.q, i1 %i.t, i1 false
  br i1 %i.u, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_11ValueOnPredEKbEppEv.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i3.i
  %i.v = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.5.2.i) #32 ; 3 uses
  %.not.i.i.i4.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i4.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_11ValueOnPredEKbEppEv.exit.i, label %.lr.ph.i.i.i3.i, !llvm.loop !91

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_11ValueOnPredEKbEppEv.exit.i: ; preds = %bb.d, %.lr.ph.i.i.i3.i, %bb.c
  %.sroa.5.3.i = phi ptr [ %i.n, %bb.c ], [ %.sroa.5.2.i, %.lr.ph.i.i.i3.i ], [ %i.v, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.5.3.i, %i.d
  br i1 %.not.i, label %_ZN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclISD_EEbRKT_m.exit, label %bb.c, !llvm.loop !4796

_ZN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclISD_EEbRKT_m.exit: ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_11ValueOnPredEKbEppEv.exit.i, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE13cbeginValueOnEv.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.x = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE16initRootChildrenIKNS1_8RootNodeIS8_EEEEbRT_(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(68) %i.a)
  br i1 %i.x, label %bb.e, label %bb.y

bb.e:                                             ; preds = %_ZN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclISD_EEbRKT_m.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.y = load i64, ptr %i.w, align 8, !tbaa !1859 ; 2 uses
  store ptr null, ptr %9, align 8, !tbaa !1766
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %1, ptr %i.z, align 8, !tbaa !1867
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4805)
  %i.aa = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.y) #29
          to label %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEC2ERSG_m.exit unwind label %bb.f ; 3 uses

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %9, align 8, !tbaa !1782  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %common.resume, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i: ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 8) #30
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.ab, %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i ], [ %i.ab, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEC2ERSG_m.exit: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.y, i1 false), !noalias !4805
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !593, !alias.scope !4805
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.aa, ptr %i.ae, align 8, !tbaa !1868
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store ptr null, ptr %7, align 8, !tbaa !4806
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %9, ptr %i.af, align 8, !tbaa !1877
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !4807)
  %i.ag = load i64, ptr %i.w, align 8, !tbaa !1859, !noalias !4807
  store i64 %i.ag, ptr %8, align 8, !tbaa !1880, !alias.scope !4807
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.ah, align 8, !tbaa !1881, !alias.scope !4807
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %4, ptr %i.ai, align 8, !tbaa !1882, !alias.scope !4807
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.w, ptr %i.aj, align 8, !tbaa !1883, !alias.scope !4807
  invoke void @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEENSA_11OpWithIndexEE3runERKNSA_9NodeRangeEb(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext %2)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEC2ERSG_m.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.ak = load ptr, ptr %7, align 8, !tbaa !1884  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !593 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i: ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.am) #30
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i.i

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i, %bb.h
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !1782 ; 2 uses
  %.not.i1.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i1.i.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal18ActiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEEclEPSI_.exit.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 8) #30
  br label %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal18ActiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEEclEPSI_.exit.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal18ActiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEEclEPSI_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i.i.i.i.i, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 32) #30
  br label %bb.j

bb.i:                                             ; preds = %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEC2ERSG_m.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEENSA_11OpWithIndexEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %.body

bb.j:                                             ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal18ActiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEEclEPSI_.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.aq = xor i1 %2, true                         ; 2 uses
  %i.ar = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEE16initNodeChildrenINS2_IKNS3_IS7_Lj5EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeISB_EEEEEEEEEEbRT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %9, i1 noundef zeroext %i.aq)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %i.ar, label %bb.m, label %bb.x

bb.l:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.at = load i64, ptr %i.ap, align 8, !tbaa !1885 ; 2 uses
  store ptr null, ptr %10, align 8, !tbaa !1766
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %1, ptr %i.au, align 8, !tbaa !1867
  call void @llvm.experimental.noalias.scope.decl(metadata !4808)
  %i.av = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.at) #29
          to label %bb.o unwind label %bb.n       ; 3 uses

bb.n:                                             ; preds = %bb.m
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body21

bb.o:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.av, i8 0, i64 %i.at, i1 false), !noalias !4808
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !593, !alias.scope !4808
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !1868
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr null, ptr %5, align 8, !tbaa !4806
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %10, ptr %i.az, align 8, !tbaa !1887
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !4809)
  %i.ba = load i64, ptr %i.ap, align 8, !tbaa !1885, !noalias !4809
  store i64 %i.ba, ptr %6, align 8, !tbaa !1890, !alias.scope !4809
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.bb, align 8, !tbaa !1891, !alias.scope !4809
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %4, ptr %i.bc, align 8, !tbaa !1892, !alias.scope !4809
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.ap, ptr %i.bd, align 8, !tbaa !1893, !alias.scope !4809
  invoke void @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS3_IS7_Lj5EEEEEEEEEEENS9_11OpWithIndexEE3runERKNS9_9NodeRangeEb(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext %2)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.be = load ptr, ptr %5, align 8, !tbaa !1884  ; 4 uses
  %.not.i.i.i24 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i24, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !593 ; 2 uses
  %.not.i.i.i.i.i.i25 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i25, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i.i27, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i26

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i26: ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.bg) #30
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i.i27

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i.i27: ; preds = %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i26, %bb.q
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !1782 ; 2 uses
  %.not.i1.i.i.i.i.i28 = icmp eq ptr %i.bh, null
  br i1 %.not.i1.i.i.i.i.i28, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal18ActiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEEclEPSI_.exit.i.i.i30, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i.i.i.i.i29

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i.i.i.i.i29: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i.i27
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef 8) #30
  br label %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal18ActiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEEclEPSI_.exit.i.i.i30

_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal18ActiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEEclEPSI_.exit.i.i.i30: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i.i.i.i.i29, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i.i27
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef 32) #30
  br label %bb.s

bb.r:                                             ; preds = %bb.o
end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE15reduceWithIndexINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEEEEvRT_bm:bb.a
  %6 = alloca %"class.openvdb::v13_0::tree::NodeList<const openvdb::v13_0::tree::LeafNode<openvdb::v13_0::ValueMask, 3>>::NodeRange", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr null, ptr %5, align 8, !tbaa !1766
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !1904
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4837)
  %i.b = load i64, ptr %0, align 8, !tbaa !1898, !noalias !4837 ; 3 uses
  store i64 %i.b, ptr %6, align 8, !tbaa !1906, !alias.scope !4837
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !1907, !alias.scope !4837
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %3, ptr %i.d, align 8, !tbaa !1908, !alias.scope !4837
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %0, ptr %i.e, align 8, !tbaa !1909, !alias.scope !4837
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeENSB_11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSJ_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEKNS1_16auto_partitionerEE3runERKSC_RSQ_RSS_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE11NodeReducerINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEENS7_11OpWithIndexEE3runERKNS7_9NodeRangeEb.exit unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE11NodeReducerINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEENS7_11OpWithIndexEE3runERKNS7_9NodeRangeEb.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1899
  %.promoted.i.i = load i64, ptr %1, align 8, !tbaa !1683
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.h = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %op.rdx, %bb.d ]
  %.sroa.5.05.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.n, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.sroa.5.05.i.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !558
  %i.k = load <8 x i64>, ptr %i.j, align 8, !tbaa !513
  %i.l = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.k)
  %i.m = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.l)
  %op.rdx = add i64 %i.m, %i.h                    ; 2 uses
  store i64 %op.rdx, ptr %1, align 8, !tbaa !1683
  %i.n = add nuw i64 %.sroa.5.05.i.i, 1           ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.n, %i.b
  br i1 %exitcond.not.i.i, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE11NodeReducerINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEENS7_11OpWithIndexEE3runERKNS7_9NodeRangeEb.exit.thread, label %bb.d, !llvm.loop !93

_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE11NodeReducerINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEENS7_11OpWithIndexEE3runERKNS7_9NodeRangeEb.exit.thread: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE11NodeReducerINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEENS7_11OpWithIndexEED2Ev.exit

_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE11NodeReducerINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEENS7_11OpWithIndexEE3runERKNS7_9NodeRangeEb.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %.pre = load ptr, ptr %5, align 8, !tbaa !1782  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE11NodeReducerINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEENS7_11OpWithIndexEED2Ev.exit, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i: ; preds = %_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE11NodeReducerINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEENS7_11OpWithIndexEE3runERKNS7_9NodeRangeEb.exit
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef 8) #30
  br label %_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE11NodeReducerINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEENS7_11OpWithIndexEED2Ev.exit

_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE11NodeReducerINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEENS7_11OpWithIndexEED2Ev.exit: ; preds = %_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE11NodeReducerINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEENS7_11OpWithIndexEE3runERKNS7_9NodeRangeEb.exit.thread, %_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE11NodeReducerINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEENS7_11OpWithIndexEE3runERKNS7_9NodeRangeEb.exit, %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.e:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.p = load ptr, ptr %5, align 8, !tbaa !1782   ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.p, null
  br i1 %.not.i.i5, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE11NodeReducerINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEENS7_11OpWithIndexEED2Ev.exit7, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i6

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i6: ; preds = %bb.e
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 8) #30
  br label %_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE11NodeReducerINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEENS7_11OpWithIndexEED2Ev.exit7

_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE11NodeReducerINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEENS7_11OpWithIndexEED2Ev.exit7: ; preds = %bb.e, %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %i.o
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !593  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #30
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  %i.c = load ptr, ptr %0, align 8, !tbaa !1782   ; 2 uses
  %.not.i1 = icmp eq ptr %i.c, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESt14default_deleteISG_EED2Ev.exit, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 8) #30
  br label %_ZNSt10unique_ptrIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESt14default_deleteISG_EED2Ev.exit

_ZNSt10unique_ptrIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESt14default_deleteISG_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEENSA_11OpWithIndexEE3runERKNSA_9NodeRangeEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEE3runERKSF_RSS_RSU_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEENSA_11OpWithIndexEEclERKNSA_9NodeRangeE.exit

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1881 ; 2 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !1880   ; 2 uses
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %.lr.ph.i, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEENSA_11OpWithIndexEEclERKNSA_9NodeRangeE.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1877 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1910, !nonnull !528, !align !535
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1894
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1867 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1868
  br label %bb.d

bb.d:                                             ; preds = %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i, %.lr.ph.i
  %.sroa.5.010.i = phi i64 [ %i.b, %.lr.ph.i ], [ %i.bc, %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.5.010.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1593
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 266240 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.d
  %.013.i.i.i.i.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.y, %bb.i ] ; 5 uses
  %.0712.i.i.i.i.i.i.i = phi i32 [ 0, %bb.d ], [ %i.z, %bb.i ] ; 5 uses
  %i.r = load i64, ptr %.013.i.i.i.i.i.i.i, align 8, !tbaa !513, !noalias !4840 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !513, !noalias !4840 ; 2 uses
  %.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i.i.i.i.1, label %bb.g, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.split.loop.exit46

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !513, !noalias !4840 ; 2 uses
  %.not.i.i.i.i.i.i.i.2 = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i.2, label %bb.h, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.split.loop.exit43

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !513, !noalias !4840 ; 2 uses
  %.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i.i.i.i.i.3, label %bb.i, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.split.loop.exit

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 32
  %i.z = add nuw nsw i32 %.0712.i.i.i.i.i.i.i, 4  ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i32 %i.z, 512
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i, label %bb.e, !llvm.loop !47

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.split.loop.exit: ; preds = %bb.h
  %i.aa = or disjoint i32 %.0712.i.i.i.i.i.i.i, 3
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.split.loop.exit43: ; preds = %bb.g
  %i.ab = or disjoint i32 %.0712.i.i.i.i.i.i.i, 2
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.split.loop.exit46: ; preds = %bb.f
  %i.ac = or disjoint i32 %.0712.i.i.i.i.i.i.i, 1
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i: ; preds = %bb.e, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.split.loop.exit46, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.split.loop.exit43, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.split.loop.exit
  %.0712.i.i.i.i.i.i.i.lcssa = phi i32 [ %i.ac, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.split.loop.exit46 ], [ %i.ab, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.split.loop.exit43 ], [ %i.aa, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.split.loop.exit ], [ %.0712.i.i.i.i.i.i.i, %bb.e ]
  %.lcssa = phi i64 [ %i.t, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.split.loop.exit46 ], [ %i.v, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.split.loop.exit43 ], [ %i.x, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.split.loop.exit ], [ %i.r, %bb.e ]
  %i.ad = shl nuw nsw i32 %.0712.i.i.i.i.i.i.i.lcssa, 6
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa, i1 true)
  %i.af = trunc nuw nsw i64 %i.ae to i32
  %i.ag = or disjoint i32 %i.ad, %i.af            ; 2 uses
  %.not7.i.i.i.i = icmp eq i32 %i.ag, 32768
  br i1 %.not7.i.i.i.i, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i, label %.lr.ph.i.i.i.i.a

.lr.ph.i.i.i.i.a:                                 ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i
  %.promoted.i.i.i.i = load i64, ptr %i.l, align 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit.i.i.i.i, %.lr.ph.i.i.i.i.a
  %.sroa.3.08.i.i.i.i = phi i32 [ %.118.i.i.i.i.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit.i.i.i.i ], [ %i.ag, %.lr.ph.i.i.i.i.a ]
  %4 = phi i64 [ %i.ah, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit.i.i.i.i ], [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i.a ]
  %i.ah = add i64 %4, 2097152                     ; 2 uses
  store i64 %i.ah, ptr %i.l, align 8, !tbaa !1683
  %i.ai = add i32 %.sroa.3.08.i.i.i.i, 1          ; 4 uses
  %i.aj = lshr i32 %i.ai, 6                       ; 3 uses
  %i.ak = icmp ugt i32 %i.ai, 32767
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = and i32 %i.ai, 63
  %i.am = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !513 ; 2 uses
  %i.ap = zext nneg i32 %i.al to i64              ; 2 uses
  %i.aq = shl nuw i64 1, %i.ap
  %i.ar = and i64 %i.ao, %i.aq
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.l, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.as = shl nsw i64 -1, %i.ap
  %i.at = and i64 %i.ao, %i.as                    ; 2 uses
  %.not2226.i.i.i.i.i.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not2226.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %.critedge.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.l
  %exitcond.not.i.i.i.i.i.i.i.i31 = icmp eq i32 %i.aj, 511
  br i1 %exitcond.not.i.i.i.i.i.i.i.i31, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i, label %.lr.ph

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i.i, 511
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i, label %.lr.ph, !llvm.loop !48

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i32 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i.i32, 1 ; 4 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.i.i.i.i.i
  %i.av = load i64, ptr %i.au, align 8, !tbaa !513 ; 2 uses
  %.not22.i.i.i.i.i.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not22.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %.critedge.loopexit.i.i.i.i.i.i.i.i, !llvm.loop !48

.critedge.loopexit.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph
  %i.aw = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i to i32
  br label %.critedge.i.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i.i:                        ; preds = %.critedge.loopexit.i.i.i.i.i.i.i.i, %bb.l
  %.016.lcssa.i.i.i.i.i.i.i.i = phi i32 [ %i.aj, %bb.l ], [ %i.aw, %.critedge.loopexit.i.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i = phi i64 [ %i.at, %bb.l ], [ %i.av, %.critedge.loopexit.i.i.i.i.i.i.i.i ]
  %i.ax = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i.i.i.i, 6
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit.i.i.i.i

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit.i.i.i.i: ; preds = %.critedge.i.i.i.i.i.i.i.i, %bb.k
  %.118.i.i.i.i.i.i.i.i = phi i32 [ %i.ba, %.critedge.i.i.i.i.i.i.i.i ], [ %i.ai, %bb.k ] ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.118.i.i.i.i.i.i.i.i, 32768
  br i1 %.not.i.i.i.i, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i, label %bb.j, !llvm.loop !94

_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i: ; preds = %bb.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit.i.i.i.i, %bb.j, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.5.010.i
  store i8 1, ptr %i.bb, align 1, !tbaa !514
  %i.bc = add nuw i64 %.sroa.5.010.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %i.c
  br i1 %exitcond.not.i, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEENSA_11OpWithIndexEEclERKNSA_9NodeRangeE.exit, label %bb.d, !llvm.loop !95

_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEENSA_11OpWithIndexEEclERKNSA_9NodeRangeE.exit: ; preds = %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i, %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEENSA_11OpWithIndexEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1884   ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal18ActiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISI_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !593  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #30
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %bb.b
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !1782 ; 2 uses
  %.not.i1.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i1.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal18ActiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEEclEPSI_.exit.i, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 8) #30
  br label %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal18ActiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEEclEPSI_.exit.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal18ActiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEEclEPSI_.exit.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i.i.i, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #30
  br label %_ZNSt10unique_ptrIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal18ActiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISI_EED2Ev.exit

_ZNSt10unique_ptrIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal18ActiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISI_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal18ActiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEEclEPSI_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEE3runERKSF_RSS_RSU_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !1523
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 4, ptr %i.c, align 8, !tbaa !1524
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !485
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1881
  %i.g = load i64, ptr %0, align 8, !tbaa !1880
  %.not.i = icmp ult i64 %i.f, %i.g
  br i1 %.not.i, label %.noexc.i, label %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEE3runERKSF_RSS_RSU_RNS1_18task_group_contextE.exit

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr null, ptr %3, align 8, !tbaa !1547
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1, ptr %i.h, align 8, !tbaa !1548
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 1, ptr %i.i, align 8, !tbaa !1550
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 1, ptr %i.j, align 8, !tbaa !654
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !1527
  %i.k = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192)
          to label %.noexc unwind label %bb.d     ; 11 uses

.noexc:                                           ; preds = %.noexc.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.k, align 64, !tbaa !466
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !1911
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  store ptr %1, ptr %i.n, align 32, !tbaa !1914
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 104 ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !1915
  %i.p = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  store i32 0, ptr %i.s, align 8, !tbaa !1540
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 124
  store i8 5, ptr %i.t, align 4, !tbaa !1541
  %i.u = shl nsw i64 %i.r, 1
  %i.v = and i64 %i.u, 9223372036854775806
  store i64 %i.v, ptr %i.q, align 16, !tbaa !1542
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.x = load i64, ptr %4, align 8, !tbaa !1543
  store i64 %i.x, ptr %i.w, align 64, !tbaa !1543
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  store i8 0, ptr %i.y, align 8, !tbaa !1916
  store ptr %3, ptr %i.o, align 8, !tbaa !1915
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEE3runERKSF_RSS_RSU_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEE3runERKSF_RSS_RSU_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.aa = load atomic i8, ptr %i.z monotonic, align 1
  %i.ab = icmp eq i8 %i.aa, -1
  br i1 %i.ab, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEE3runERKSF_RSS_RSU_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #31
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEE3runERKSF_RSS_RSU_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %.noexc.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_12start_reduceIN7openvdb5v13_04tree8NodeListIKNS9_12InternalNodeINSB_INS9_8LeafNodeINS8_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSI_11NodeReducerINS9_14ReduceFilterOpINS8_5tools14count_internal18ActiveVoxelCountOpINS9_4TreeINS9_8RootNodeISG_EEEEEEEENSI_11OpWithIndexEEEKNS1_16auto_partitionerEEESJ_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !1527
  %i.w = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !4848 ; 13 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.x, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.w, align 64, !tbaa !466
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.z = load i64, ptr %i.n, align 64, !tbaa !1880 ; 2 uses
  store i64 %i.z, ptr %i.y, align 64, !tbaa !1880
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !1881 ; 2 uses
  %i.ac = sub i64 %i.z, %i.ab
  %i.ad = lshr i64 %i.ac, 1
  %i.ae = add i64 %i.ad, %i.ab                    ; 2 uses
  store i64 %i.ae, ptr %i.n, align 64, !tbaa !1880
  store i64 %i.ae, ptr %i.aa, align 8, !tbaa !1881
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.ag = load i64, ptr %i.p, align 16, !tbaa !1882
  store i64 %i.ag, ptr %i.af, align 16, !tbaa !1882
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.ai = load ptr, ptr %i.r, align 32, !tbaa !1914
  %i.aj = load <2 x ptr>, ptr %i.q, align 8, !tbaa !591
  store <2 x ptr> %i.aj, ptr %i.ah, align 8, !tbaa !591
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 104 ; 2 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !1915
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  %i.am = load i64, ptr %i.s, align 16, !tbaa !1542
  %i.an = lshr i64 %i.am, 1                       ; 2 uses
  store i64 %i.an, ptr %i.s, align 16, !tbaa !1542
  store i64 %i.an, ptr %i.al, align 16, !tbaa !1542
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  store i32 2, ptr %i.ao, align 8, !tbaa !1540
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 124
  %i.aq = load i8, ptr %i.t, align 4, !tbaa !1541
  store i8 %i.aq, ptr %i.ap, align 4, !tbaa !1541
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %i.as = load i64, ptr %4, align 8, !tbaa !1543
  store i64 %i.as, ptr %i.ar, align 64, !tbaa !1543
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  store i8 1, ptr %i.at, align 8, !tbaa !1916
  store i8 0, ptr %i.u, align 8, !tbaa !1916
  %i.au = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !4849 ; 8 uses
  %i.av = load ptr, ptr %i.v, align 8, !tbaa !1555
  store ptr %i.av, ptr %i.au, align 8, !tbaa !1547
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 2, ptr %i.aw, align 8, !tbaa !1548
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ay = load i64, ptr %4, align 8, !tbaa !1543
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !1543
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store i8 0, ptr %i.az, align 8, !tbaa !1556
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  store ptr %i.ai, ptr %i.ba, align 8, !tbaa !1921
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  store i8 0, ptr %i.bb, align 8, !tbaa !1920
  store ptr %i.au, ptr %i.v, align 8, !tbaa !1915
  store ptr %i.au, ptr %i.ak, align 8, !tbaa !1915
  %i.bc = load ptr, ptr %3, align 8, !tbaa !1557
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(137) %i.w, ptr noundef nonnull align 8 dereferenceable(128) %i.bc), !inline_history !4849
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !1882
  %i.be = load i64, ptr %2, align 8, !tbaa !1880
  %i.bf = load i64, ptr %i.d, align 8, !tbaa !1881
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = icmp ult i64 %i.bd, %i.bg
  br i1 %i.bh, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.bi = load i64, ptr %0, align 8, !tbaa !1542  ; 2 uses
  %i.bj = icmp ugt i64 %i.bi, 1
  br i1 %i.bj, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, label %bb.g

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge: ; preds = %bb.f, %bb.i
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !4850

bb.g:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i64 %i.bi, 0
  br i1 %.not.i8, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = load i8, ptr %i.m, align 4, !tbaa !1541 ; 2 uses
  %.not4.i9 = icmp eq i8 %i.bk, 0
  br i1 %.not4.i9, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = add i8 %i.bk, -1
  store i8 %i.bl, ptr %i.m, align 4, !tbaa !1541
  store i64 0, ptr %0, align 8, !tbaa !1542
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_12start_reduceIN7openvdb5v13_04tree8NodeListIKNSB_12InternalNodeINSD_INSB_8LeafNodeINSA_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSK_11NodeReducerINSB_14ReduceFilterOpINSA_5tools14count_internal18ActiveVoxelCountOpINSB_4TreeINSB_8RootNodeISI_EEEEEEEENSK_11OpWithIndexEEEKNS1_16auto_partitionerEEESL_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(137) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_12start_reduceIN7openvdb5v13_04tree8NodeListIKNSB_12InternalNodeINSD_INSB_8LeafNodeINSA_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSK_11NodeReducerINSB_14ReduceFilterOpINSA_5tools14count_internal18ActiveVoxelCountOpINSB_4TreeINSB_8RootNodeISI_EEEEEEEENSK_11OpWithIndexEEEKNS1_16auto_partitionerEEESL_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(137) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::range_vector.1006", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1882
  %i.c = load i64, ptr %2, align 8, !tbaa !1880   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1881 ; 3 uses
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !1541
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = icmp ult i64 %i.e, %i.c
  br i1 %i.j, label %.lr.ph.i.i.i.i.i.i, label %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSF_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.l = load ptr, ptr %i.k, align 32, !tbaa !1914
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1877 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1910, !nonnull !528, !align !535
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1894
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1867 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1868
  br label %bb.d

bb.d:                                             ; preds = %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.5.010.i.i.i.i.i.i = phi i64 [ %i.e, %.lr.ph.i.i.i.i.i.i ], [ %i.bk, %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i.i.i.i.i.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.sroa.5.010.i.i.i.i.i.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1593
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 266240 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.d
  %.013.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.y, %bb.d ], [ %i.ag, %bb.i ] ; 5 uses
  %.0712.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ 0, %bb.d ], [ %i.ah, %bb.i ] ; 5 uses
  %i.z = load i64, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !513, !noalias !4857 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !513, !noalias !4857 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.1, label %bb.g, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i.split.loop.exit196

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !513, !noalias !4857 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.2 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.2, label %bb.h, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i.split.loop.exit193

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !513, !noalias !4857 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.3, label %bb.i, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i.split.loop.exit

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.ah = add nuw nsw i32 %.0712.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i32 %i.ah, 512
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i.i.i.i.i.i, label %bb.e, !llvm.loop !47

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i.split.loop.exit: ; preds = %bb.h
  %i.ai = or disjoint i32 %.0712.i.i.i.i.i.i.i.i.i.i.i.i, 3
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i.split.loop.exit193: ; preds = %bb.g
  %i.aj = or disjoint i32 %.0712.i.i.i.i.i.i.i.i.i.i.i.i, 2
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i.split.loop.exit196: ; preds = %bb.f
  %i.ak = or disjoint i32 %.0712.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i.split.loop.exit196, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i.split.loop.exit193, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i.split.loop.exit
  %.0712.i.i.i.i.i.i.i.i.i.i.i.i.lcssa = phi i32 [ %i.ak, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i.split.loop.exit196 ], [ %i.aj, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i.split.loop.exit193 ], [ %i.ai, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i.split.loop.exit ], [ %.0712.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e ]
  %.lcssa = phi i64 [ %i.ab, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i.split.loop.exit196 ], [ %i.ad, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i.split.loop.exit193 ], [ %i.af, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i.split.loop.exit ], [ %i.z, %bb.e ]
  %i.al = shl nuw nsw i32 %.0712.i.i.i.i.i.i.i.i.i.i.i.i.lcssa, 6
  %i.am = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa, i1 true)
  %i.an = trunc nuw nsw i64 %i.am to i32
  %i.ao = or disjoint i32 %i.al, %i.an            ; 2 uses
  %.not7.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ao, 32768
  br i1 %.not7.i.i.i.i.i.i.i.i.i, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.a

.lr.ph.i.i.i.i.i.i.i.i.i.a:                       ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i
  %.promoted.i.i.i.i.i.i.i.i.i = load i64, ptr %i.t, align 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.a
  %.sroa.3.08.i.i.i.i.i.i.i.i.i = phi i32 [ %.118.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.i.a ]
  %6 = phi i64 [ %i.ap, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit.i.i.i.i.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.a ]
  %i.ap = add i64 %6, 2097152                     ; 2 uses
  store i64 %i.ap, ptr %i.t, align 8, !tbaa !1683
  %i.aq = add i32 %.sroa.3.08.i.i.i.i.i.i.i.i.i, 1 ; 4 uses
  %i.ar = lshr i32 %i.aq, 6                       ; 3 uses
  %i.as = icmp ugt i32 %i.aq, 32767
  br i1 %i.as, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = and i32 %i.aq, 63
  %i.au = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !513 ; 2 uses
  %i.ax = zext nneg i32 %i.at to i64              ; 2 uses
  %i.ay = shl nuw i64 1, %i.ax
  %i.az = and i64 %i.aw, %i.ay
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ba = shl nsw i64 -1, %i.ax
  %i.bb = and i64 %i.aw, %i.ba                    ; 2 uses
  %.not2226.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not2226.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %bb.l
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i154 = icmp eq i32 %i.ar, 511
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i154, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i.i.i.i.i.i, label %.lr.ph156

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph156
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.i.i, 511
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i.i.i.i.i.i, label %.lr.ph156, !llvm.loop !48

.lr.ph156:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i.i.i.i.i155 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i.i.i155, 1 ; 4 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !513 ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not22.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.critedge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !48

.critedge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %.lr.ph156
  %i.be = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  br label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.critedge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.l
  %.016.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ar, %bb.l ], [ %i.be, %.critedge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bb, %bb.l ], [ %i.bd, %.critedge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bf = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, 6
  %i.bg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bh = trunc nuw nsw i64 %i.bg to i32
  %i.bi = or disjoint i32 %i.bf, %i.bh
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit.i.i.i.i.i.i.i.i.i

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.k
  %.118.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bi, %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aq, %bb.k ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %.118.i.i.i.i.i.i.i.i.i.i.i.i.i, 32768
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i.i.i.i.i.i, label %bb.j, !llvm.loop !94

_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i.i.i.i.i.i: ; preds = %bb.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit.i.i.i.i.i.i.i.i.i, %bb.j, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.5.010.i.i.i.i.i.i
  store i8 1, ptr %i.bj, align 1, !tbaa !514
  %i.bk = add nuw i64 %.sroa.5.010.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.bk, %i.c
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSF_.exit, label %bb.d, !llvm.loop !95

bb.m:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 6 uses
  store i8 0, ptr %i.bl, align 1, !tbaa !485
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !1911
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 136
  br label %bb.n

bb.n:                                             ; preds = %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i, %bb.m
  %i.bs = phi i8 [ %i.ia, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i ], [ 0, %bb.m ] ; 3 uses
  %i.bt = phi i8 [ %i.ib, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i ], [ 1, %bb.m ] ; 4 uses
  %i.bu = phi i8 [ %i.ic, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i ], [ 0, %bb.m ] ; 4 uses
  %i.bv = load i8, ptr %i.h, align 4, !tbaa !1541 ; 4 uses
  %i.bw = icmp ult i8 %i.bt, 8
  br i1 %i.bw, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.n
  %.phi.trans.insert.i = zext i8 %i.bu to i64
  %.phi.trans.insert6.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.phi.trans.insert.i
  %.pre.i = load i8, ptr %.phi.trans.insert6.i, align 1, !tbaa !485
  %i.bx = icmp ult i8 %.pre.i, %i.bv
  br i1 %i.bx, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit

bb.o:                                             ; preds = %bb.p
  %i.by = icmp ult i8 %i.db, %i.bv
  br i1 %i.by, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit, !llvm.loop !97

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.i: ; preds = %.lr.ph.i, %bb.o
  %i.bz = phi i8 [ %i.cm, %bb.o ], [ %i.bu, %.lr.ph.i ] ; 3 uses
  %i.ca = phi i8 [ %i.dd, %bb.o ], [ %i.bt, %.lr.ph.i ] ; 2 uses
  %i.cb = zext i8 %i.bz to i64                    ; 2 uses
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %i.bm, i64 %i.cb ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !1882
  %i.cf = load i64, ptr %i.cc, align 8, !tbaa !1880
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !1881
  %i.ci = sub i64 %i.cf, %i.ch
  %i.cj = icmp ult i64 %i.ce, %i.ci
  br i1 %i.cj, label %bb.p, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit

bb.p:                                             ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cb ; 2 uses
  %i.cl = add nuw i8 %i.bz, 1
  %i.cm = and i8 %i.cl, 7                         ; 5 uses
  %i.cn = zext nneg i8 %i.cm to i64               ; 2 uses
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.bm, i64 %i.cn ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.co, ptr noundef nonnull align 8 dereferenceable(32) %i.cc, i64 32, i1 false), !tbaa.struct !1911
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !1880 ; 2 uses
  store i64 %i.cp, ptr %i.cc, align 8, !tbaa !1880
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !1881 ; 2 uses
  %i.cs = sub i64 %i.cp, %i.cr
  %i.ct = lshr i64 %i.cs, 1
  %i.cu = add i64 %i.ct, %i.cr                    ; 2 uses
  store i64 %i.cu, ptr %i.co, align 8, !tbaa !1880
  store i64 %i.cu, ptr %i.cg, align 8, !tbaa !1881
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !1882
  store i64 %i.cw, ptr %i.cd, align 8, !tbaa !1882
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1910, !nonnull !528, !align !535
  store ptr %i.cz, ptr %i.cx, align 8, !tbaa !1883
  %i.da = load i8, ptr %i.ck, align 1, !tbaa !485
  %i.db = add i8 %i.da, 1                         ; 3 uses
  store i8 %i.db, ptr %i.ck, align 1, !tbaa !485
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cn
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !485
  %i.dd = add nuw nsw i8 %i.ca, 1                 ; 3 uses
  %exitcond.not.i = icmp eq i8 %i.dd, 8
  br i1 %exitcond.not.i, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit.thread, label %bb.o, !llvm.loop !97

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit: ; preds = %bb.o, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.i, %.lr.ph.i, %bb.n
  %i.de = phi i8 [ %i.bt, %bb.n ], [ %i.bt, %.lr.ph.i ], [ %i.ca, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.i ], [ %i.dd, %bb.o ] ; 6 uses
  %i.df = phi i8 [ %i.bu, %bb.n ], [ %i.bu, %.lr.ph.i ], [ %i.bz, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.i ], [ %i.cm, %bb.o ] ; 6 uses
  %i.dg = load ptr, ptr %i.bn, align 8, !tbaa !1915
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load atomic i8, ptr %i.dh monotonic, align 1, !range !512, !noundef !528
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.q, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread_crit_edge

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.p
  %i.dk = load ptr, ptr %i.bn, align 8, !tbaa !1915
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load atomic i8, ptr %i.dl monotonic, align 1, !range !512, !noundef !528
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %.thread125, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread_crit_edge

.thread125:                                       ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit.thread
  %i.do = add i8 %i.bv, 1
  store i8 %i.do, ptr %i.h, align 4, !tbaa !1541
  br label %.noexc

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit
  %i.dp = phi i8 [ %i.cm, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit.thread ], [ %i.df, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit ] ; 2 uses
  %i.dq = phi i8 [ 8, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit.thread ], [ %i.de, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit ]
  %.pre = zext i8 %i.dp to i64
  br label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread

bb.q:                                             ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit
  %i.dr = add i8 %i.bv, 1                         ; 2 uses
  store i8 %i.dr, ptr %i.h, align 4, !tbaa !1541
  %i.ds = icmp ugt i8 %i.de, 1
  br i1 %i.ds, label %.noexc, label %bb.r

.noexc:                                           ; preds = %.thread125, %bb.q
  %i.dt = phi i8 [ 8, %.thread125 ], [ %i.de, %bb.q ]
  %i.du = phi i8 [ %i.cm, %.thread125 ], [ %i.df, %bb.q ]
  %i.dv = zext nneg i8 %i.bs to i64               ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !485
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !1527
  %i.dy = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !4853 ; 11 uses
  %i.dz = getelementptr inbounds nuw [32 x i8], ptr %i.bm, i64 %i.dv
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ea, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.dy, align 64, !tbaa !466
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(32) %i.eb, ptr noundef nonnull align 8 dereferenceable(32) %i.dz, i64 32, i1 false), !tbaa.struct !1911
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 96
  %i.ed = load ptr, ptr %i.bo, align 32, !tbaa !1914 ; 2 uses
  store ptr %i.ed, ptr %i.ec, align 32, !tbaa !1914
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 104 ; 2 uses
  store ptr null, ptr %i.ee, align 8, !tbaa !1915
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 112
  %i.eg = load i64, ptr %i.bp, align 16, !tbaa !1542
  %i.eh = lshr i64 %i.eg, 1                       ; 2 uses
  store i64 %i.eh, ptr %i.bp, align 16, !tbaa !1542
  store i64 %i.eh, ptr %i.ef, align 16, !tbaa !1542
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dy, i64 120
  store i32 2, ptr %i.ei, align 8, !tbaa !1540
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dy, i64 124
  %i.ek = load i8, ptr %i.bq, align 4, !tbaa !1541
  %i.el = getelementptr inbounds nuw i8, ptr %i.dy, i64 128
  %i.em = load i64, ptr %4, align 8, !tbaa !1543
  store i64 %i.em, ptr %i.el, align 64, !tbaa !1543
  %i.en = getelementptr inbounds nuw i8, ptr %i.dy, i64 136
  store i8 1, ptr %i.en, align 8, !tbaa !1916
  %i.eo = sub i8 %i.ek, %i.dx
  store i8 %i.eo, ptr %i.ej, align 4, !tbaa !1541
  store i8 0, ptr %i.br, align 8, !tbaa !1916
  %i.ep = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !4853 ; 8 uses
  %i.eq = load ptr, ptr %i.bn, align 8, !tbaa !1555
  store ptr %i.eq, ptr %i.ep, align 8, !tbaa !1547
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i32 2, ptr %i.er, align 8, !tbaa !1548
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.et = load i64, ptr %4, align 8, !tbaa !1543
  store i64 %i.et, ptr %i.es, align 8, !tbaa !1543
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  store i8 0, ptr %i.eu, align 8, !tbaa !1556
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  store ptr %i.ed, ptr %i.ev, align 8, !tbaa !1921
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 56
  store i8 0, ptr %i.ew, align 8, !tbaa !1920
  store ptr %i.ep, ptr %i.bn, align 8, !tbaa !1915
  store ptr %i.ep, ptr %i.ee, align 8, !tbaa !1915
  %i.ex = load ptr, ptr %3, align 8, !tbaa !1557
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(137) %i.dy, ptr noundef nonnull align 8 dereferenceable(128) %i.ex), !inline_history !4853
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.ey = add i8 %i.dt, -1
  %i.ez = add nuw nsw i8 %i.bs, 1
  %i.fa = and i8 %i.ez, 7
  br label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.fb = zext i8 %i.df to i64                    ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !485
  %i.fe = icmp ult i8 %i.fd, %i.dr
  br i1 %i.fe, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit: ; preds = %bb.r
  %i.ff = getelementptr inbounds nuw [32 x i8], ptr %i.bm, i64 %i.fb ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !1882
  %i.fi = load i64, ptr %i.ff, align 8, !tbaa !1880
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !1881
  %i.fl = sub i64 %i.fi, %i.fk
  %i.fm = icmp ult i64 %i.fh, %i.fl
  br i1 %i.fm, label %thread-pre-split49, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.r, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit
  %i.fn = phi i8 [ %i.dp, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.df, %bb.r ], [ %i.df, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit ]
  %i.fo = phi i8 [ %i.dq, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.de, %bb.r ], [ %i.de, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit ]
  %.pre-phi = phi i64 [ %.pre, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.fb, %bb.r ], [ %i.fb, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit ]
  %i.fp = getelementptr inbounds nuw [32 x i8], ptr %i.bm, i64 %.pre-phi ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !1881 ; 2 uses
  %i.fs = load i64, ptr %i.fp, align 8, !tbaa !1880 ; 2 uses
  %i.ft = icmp ult i64 %i.fr, %i.fs
  br i1 %i.ft, label %.lr.ph.i.i.i.i.i.i15, label %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSF_.exit42

.lr.ph.i.i.i.i.i.i15:                             ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread
  %i.fu = load ptr, ptr %i.bo, align 32, !tbaa !1914
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !1877 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !1910, !nonnull !528, !align !535
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !1894
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !1867 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !1868
  br label %bb.s

bb.s:                                             ; preds = %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i.i.i.i.i.i29, %.lr.ph.i.i.i.i.i.i15
  %.sroa.5.010.i.i.i.i.i.i16 = phi i64 [ %i.fr, %.lr.ph.i.i.i.i.i.i15 ], [ %i.ht, %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i.i.i.i.i.i29 ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.sroa.5.010.i.i.i.i.i.i16
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !1593
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 266240 ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %bb.s
  %.013.i.i.i.i.i.i.i.i.i.i.i.i17 = phi ptr [ %i.gh, %bb.s ], [ %i.gp, %bb.x ] ; 5 uses
  %.0712.i.i.i.i.i.i.i.i.i.i.i.i18 = phi i32 [ 0, %bb.s ], [ %i.gq, %bb.x ] ; 5 uses
  %i.gi = load i64, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i17, align 8, !tbaa !513, !noalias !4858 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i19 = icmp eq i64 %i.gi, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i19, label %bb.u, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i20

bb.u:                                             ; preds = %bb.t
  %i.gj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i17, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !513, !noalias !4858 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i19.1 = icmp eq i64 %i.gk, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i19.1, label %bb.v, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i20.split.loop.exit184

bb.v:                                             ; preds = %bb.u
  %i.gl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i17, i64 16
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !513, !noalias !4858 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i19.2 = icmp eq i64 %i.gm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i19.2, label %bb.w, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i20.split.loop.exit181

bb.w:                                             ; preds = %bb.v
  %i.gn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i17, i64 24
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !513, !noalias !4858 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i19.3 = icmp eq i64 %i.go, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i19.3, label %bb.x, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i20.split.loop.exit

bb.x:                                             ; preds = %bb.w
  %i.gp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i17, i64 32
  %i.gq = add nuw nsw i32 %.0712.i.i.i.i.i.i.i.i.i.i.i.i18, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i41.3 = icmp eq i32 %i.gq, 512
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i41.3, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i.i.i.i.i.i29, label %bb.t, !llvm.loop !47

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i20.split.loop.exit: ; preds = %bb.w
  %i.gr = or disjoint i32 %.0712.i.i.i.i.i.i.i.i.i.i.i.i18, 3
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i20

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i20.split.loop.exit181: ; preds = %bb.v
  %i.gs = or disjoint i32 %.0712.i.i.i.i.i.i.i.i.i.i.i.i18, 2
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i20

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i20.split.loop.exit184: ; preds = %bb.u
  %i.gt = or disjoint i32 %.0712.i.i.i.i.i.i.i.i.i.i.i.i18, 1
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i20

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i20: ; preds = %bb.t, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i20.split.loop.exit184, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i20.split.loop.exit181, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i20.split.loop.exit
  %.0712.i.i.i.i.i.i.i.i.i.i.i.i18.lcssa = phi i32 [ %i.gt, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i20.split.loop.exit184 ], [ %i.gs, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i20.split.loop.exit181 ], [ %i.gr, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i20.split.loop.exit ], [ %.0712.i.i.i.i.i.i.i.i.i.i.i.i18, %bb.t ]
  %.lcssa168 = phi i64 [ %i.gk, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i20.split.loop.exit184 ], [ %i.gm, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i20.split.loop.exit181 ], [ %i.go, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i20.split.loop.exit ], [ %i.gi, %bb.t ]
  %i.gu = shl nuw nsw i32 %.0712.i.i.i.i.i.i.i.i.i.i.i.i18.lcssa, 6
  %i.gv = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa168, i1 true)
  %i.gw = trunc nuw nsw i64 %i.gv to i32
  %i.gx = or disjoint i32 %i.gu, %i.gw            ; 2 uses
  %.not7.i.i.i.i.i.i.i.i.i21 = icmp eq i32 %i.gx, 32768
  br i1 %.not7.i.i.i.i.i.i.i.i.i21, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i.i.i.i.i.i29, label %.lr.ph.i.i.i.i.i.i.i.i.i22

.lr.ph.i.i.i.i.i.i.i.i.i22:                       ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i20
  %.promoted.i.i.i.i.i.i.i.i.i23 = load i64, ptr %i.gc, align 1
  br label %bb.y

bb.y:                                             ; preds = %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit.i.i.i.i.i.i.i.i.i26, %.lr.ph.i.i.i.i.i.i.i.i.i22
  %.sroa.3.08.i.i.i.i.i.i.i.i.i25 = phi i32 [ %.118.i.i.i.i.i.i.i.i.i.i.i.i.i27, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit.i.i.i.i.i.i.i.i.i26 ], [ %i.gx, %.lr.ph.i.i.i.i.i.i.i.i.i22 ]
  %7 = phi i64 [ %i.gy, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit.i.i.i.i.i.i.i.i.i26 ], [ %.promoted.i.i.i.i.i.i.i.i.i23, %.lr.ph.i.i.i.i.i.i.i.i.i22 ]
  %i.gy = add i64 %7, 2097152                     ; 2 uses
  store i64 %i.gy, ptr %i.gc, align 8, !tbaa !1683
  %i.gz = add i32 %.sroa.3.08.i.i.i.i.i.i.i.i.i25, 1 ; 4 uses
  %i.ha = lshr i32 %i.gz, 6                       ; 3 uses
  %i.hb = icmp ugt i32 %i.gz, 32767
  br i1 %i.hb, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i.i.i.i.i.i29, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hc = and i32 %i.gz, 63
  %i.hd = zext nneg i32 %i.ha to i64              ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.hd
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !513 ; 2 uses
  %i.hg = zext nneg i32 %i.hc to i64              ; 2 uses
  %i.hh = shl nuw i64 1, %i.hg
  %i.hi = and i64 %i.hf, %i.hh
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i25 = icmp eq i64 %i.hi, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i25, label %bb.aa, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit.i.i.i.i.i.i.i.i.i26

bb.aa:                                            ; preds = %bb.z
  %i.hj = shl nsw i64 -1, %i.hg
  %i.hk = and i64 %i.hf, %i.hj                    ; 2 uses
  %.not2226.i.i.i.i.i.i.i.i.i.i.i.i.i31 = icmp eq i64 %i.hk, 0
  br i1 %.not2226.i.i.i.i.i.i.i.i.i.i.i.i.i31, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i35.preheader, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i35.preheader:     ; preds = %bb.aa
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i37152 = icmp eq i32 %i.ha, 511
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i37152, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i.i.i.i.i.i29, label %.lr.ph

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i35:               ; preds = %.lr.ph
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i37 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.i.i38, 511
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i37, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i.i.i.i.i.i29, label %.lr.ph, !llvm.loop !48

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i35.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i35
  %indvars.iv.i.i.i.i.i.i.i.i.i.i.i.i.i36153 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.i.i38, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i35 ], [ %i.hd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i35.preheader ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.i.i38 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i.i.i36153, 1 ; 4 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.i.i38
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !513 ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i.i.i.i.i39 = icmp eq i64 %i.hm, 0
  br i1 %.not22.i.i.i.i.i.i.i.i.i.i.i.i.i39, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i35, label %.critedge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i40, !llvm.loop !48

.critedge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i40:   ; preds = %.lr.ph
  %i.hn = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.i.i38 to i32
  br label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i32

.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i32:            ; preds = %.critedge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i40, %bb.aa
  %.016.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i33 = phi i32 [ %i.ha, %bb.aa ], [ %i.hn, %.critedge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i40 ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i34 = phi i64 [ %i.hk, %bb.aa ], [ %i.hm, %.critedge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i40 ]
  %i.ho = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i33, 6
  %i.hp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i34, i1 true)
  %i.hq = trunc nuw nsw i64 %i.hp to i32
  %i.hr = or disjoint i32 %i.ho, %i.hq
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit.i.i.i.i.i.i.i.i.i26

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit.i.i.i.i.i.i.i.i.i26: ; preds = %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i32, %bb.z
  %.118.i.i.i.i.i.i.i.i.i.i.i.i.i27 = phi i32 [ %i.hr, %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i32 ], [ %i.gz, %bb.z ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i28 = icmp eq i32 %.118.i.i.i.i.i.i.i.i.i.i.i.i.i27, 32768
  br i1 %.not.i.i.i.i.i.i.i.i.i28, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i.i.i.i.i.i29, label %bb.y, !llvm.loop !94

_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i.i.i.i.i.i29: ; preds = %bb.x, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit.i.i.i.i.i.i.i.i.i26, %bb.y, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i35.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i35, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13cbeginValueOnEv.exit.i.i.i.i.i.i.i.i.i20
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ge, i64 %.sroa.5.010.i.i.i.i.i.i16
  store i8 1, ptr %i.hs, align 1, !tbaa !514
  %i.ht = add nuw i64 %.sroa.5.010.i.i.i.i.i.i16, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i30 = icmp eq i64 %i.ht, %i.fs
  br i1 %exitcond.not.i.i.i.i.i.i30, label %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSF_.exit42, label %bb.s, !llvm.loop !95

_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSF_.exit42: ; preds = %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i.i.i.i.i.i29, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread
  %i.hu = add i8 %i.fo, -1
  %i.hv = add nuw i8 %i.fn, 7
  %i.hw = and i8 %i.hv, 7
  br label %thread-pre-split49

thread-pre-split49:                               ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSF_.exit42
  %i.hx = phi i8 [ %i.hu, %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSF_.exit42 ], [ %i.de, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.hy = phi i8 [ %i.hw, %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSF_.exit42 ], [ %i.df, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EE12is_divisibleEh.exit ]
  %i.hz = icmp eq i8 %i.hx, 0
  br i1 %i.hz, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EED2Ev.exit48, label %bb.ab

bb.ab:                                            ; preds = %.noexc, %thread-pre-split49
  %i.ia = phi i8 [ %i.fa, %.noexc ], [ %i.bs, %thread-pre-split49 ]
  %i.ib = phi i8 [ %i.ey, %.noexc ], [ %i.hx, %thread-pre-split49 ]
  %i.ic = phi i8 [ %i.du, %.noexc ], [ %i.hy, %thread-pre-split49 ]
  %i.id = load ptr, ptr %3, align 8, !tbaa !1557  ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 15
  %i.if = load atomic i8, ptr %i.ie monotonic, align 1
  %i.ig = icmp eq i8 %i.if, -1
  br i1 %i.ig, label %bb.ac, label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !485
  br label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i = phi ptr [ %i.ii, %bb.ac ], [ %i.id, %bb.ab ]
  %i.ij = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.ij, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EED2Ev.exit48, label %bb.n, !llvm.loop !4856

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EED2Ev.exit48: ; preds = %thread-pre-split49, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSF_.exit

_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSF_.exit: ; preds = %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i.i.i.i.i.i, %bb.c, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeELh8EED2Ev.exit48
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19fold_treeINS1_19reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS6_12InternalNodeINS8_INS6_8LeafNodeINS5_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS6_14ReduceFilterOpINS5_5tools14count_internal18ActiveVoxelCountOpINS6_4TreeINS6_8RootNodeISD_EEEEEEEENSF_11OpWithIndexEEEEEEEvPNS1_4nodeERKNS1_14execution_dataE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = atomicrmw sub ptr %i.a, i32 1 seq_cst, align 4
  %i.c = add i32 %i.b, -1
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %_ZN3tbb6detail2d112wait_context7releaseEj.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.019 = phi ptr [ %i.e, %bb.h ], [ %0, %bb.a ]  ; 9 uses
  %i.e = load ptr, ptr %.019, align 8, !tbaa !1547 ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = load ptr, ptr %1, align 8, !tbaa !1557   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.019, i64 56 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !1920, !range !512, !noundef !528
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEE4joinEPNS1_18task_group_contextE.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %i.k = load atomic i8, ptr %i.j monotonic, align 1
  %i.l = icmp eq i8 %i.k, -1
  br i1 %i.l, label %bb.d, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !485
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %i.n, %bb.d ], [ %i.f, %bb.c ]
  %i.o = tail call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i)
  br i1 %i.o, label %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEE4joinEPNS1_18task_group_contextE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %.019, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !4859, !nonnull !528, !align !535
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1877
  %i.t = getelementptr inbounds nuw i8, ptr %.019, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1877
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1867 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1867
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1683
  %i.aa = load i64, ptr %i.w, align 8, !tbaa !1683
  %i.ab = add i64 %i.aa, %i.z
  store i64 %i.ab, ptr %i.w, align 8, !tbaa !1683
  br label %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEE4joinEPNS1_18task_group_contextE.exit

_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEE4joinEPNS1_18task_group_contextE.exit: ; preds = %bb.b, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.019, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !1543
  %i.ae = load i8, ptr %i.g, align 8, !tbaa !1920, !range !512, !noundef !528
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEE4joinEPNS1_18task_group_contextE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.019, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1884 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !593 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.aj) #30
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i, %bb.g
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !1782 ; 2 uses
  %.not.i1.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i1.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal18ActiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEEclEPSI_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 8) #30
  br label %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal18ActiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEEclEPSI_.exit.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal18ActiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEEclEPSI_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i.i.i.i.i.i, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 32) #30
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal18ActiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEEclEPSI_.exit.i.i.i.i, %bb.f, %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEE4joinEPNS1_18task_group_contextE.exit
  %i.al = inttoptr i64 %i.ad to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.al, ptr noundef nonnull %.019, i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.an = atomicrmw sub ptr %i.am, i32 1 seq_cst, align 4
  %i.ao = add i32 %i.an, -1
  %i.ap = icmp sgt i32 %i.ao, 0
end_hunk_2
begin_hunk_3_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_12start_reduceIN7openvdb5v13_04tree8NodeListIKNSB_8LeafNodeINSA_9ValueMaskELj3EEEE9NodeRangeENSH_11NodeReducerINSA_5tools14count_internal18ActiveVoxelCountOpINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSP_ISF_Lj4EEELj5EEEEEEEEENSH_11OpWithIndexEEEKNS1_16auto_partitionerEEESI_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %.pre-phi = phi i64 [ %.pre, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.dp, %bb.j ], [ %i.dp, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit ]
  %i.ed = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %.pre-phi ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !1907 ; 2 uses
  %i.eg = load i64, ptr %i.ed, align 8, !tbaa !1906 ; 2 uses
  %i.eh = icmp ult i64 %i.ef, %i.eg
  br i1 %i.eh, label %.lr.ph.i.i.i.i.i.i15, label %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeENSB_11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSJ_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSC_.exit19

.lr.ph.i.i.i.i.i.i15:                             ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread
  %i.ei = load ptr, ptr %i.ac, align 32, !tbaa !1950
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !1904 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !1957, !nonnull !528, !align !535
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !1899
  %.promoted.i.i.i.i.i.i16 = load i64, ptr %i.ek, align 8, !tbaa !1683
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i15
  %i.ep = phi i64 [ %.promoted.i.i.i.i.i.i16, %.lr.ph.i.i.i.i.i.i15 ], [ %op.rdx67, %bb.k ]
  %.sroa.5.05.i.i.i.i.i.i17 = phi i64 [ %i.ef, %.lr.ph.i.i.i.i.i.i15 ], [ %i.ev, %bb.k ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.sroa.5.05.i.i.i.i.i.i17
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !558
  %i.es = load <8 x i64>, ptr %i.er, align 8, !tbaa !513
  %i.et = call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.es)
  %i.eu = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.et)
  %op.rdx67 = add i64 %i.eu, %i.ep                ; 2 uses
  store i64 %op.rdx67, ptr %i.ek, align 8, !tbaa !1683
  %i.ev = add nuw i64 %.sroa.5.05.i.i.i.i.i.i17, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i18 = icmp eq i64 %i.ev, %i.eg
  br i1 %exitcond.not.i.i.i.i.i.i18, label %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeENSB_11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSJ_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSC_.exit19, label %bb.k, !llvm.loop !93

_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeENSB_11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSJ_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSC_.exit19: ; preds = %bb.k, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread
  %i.ew = add i8 %i.ec, -1
  %i.ex = add nuw i8 %i.eb, 7
  %i.ey = and i8 %i.ex, 7
  br label %thread-pre-split26

thread-pre-split26:                               ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeENSB_11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSJ_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSC_.exit19
  %i.ez = phi i8 [ %i.ew, %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeENSB_11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSJ_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSC_.exit19 ], [ %i.bs, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.fa = phi i8 [ %i.ey, %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeENSB_11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSJ_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSC_.exit19 ], [ %i.bt, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit ]
  %i.fb = icmp eq i8 %i.ez, 0
  br i1 %i.fb, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EED2Ev.exit25, label %bb.l

bb.l:                                             ; preds = %.noexc, %thread-pre-split26
  %i.fc = phi i8 [ %i.do, %.noexc ], [ %i.ag, %thread-pre-split26 ]
  %i.fd = phi i8 [ %i.dm, %.noexc ], [ %i.ez, %thread-pre-split26 ]
  %i.fe = phi i8 [ %i.ci, %.noexc ], [ %i.fa, %thread-pre-split26 ]
  %i.ff = load ptr, ptr %3, align 8, !tbaa !1557  ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 15
  %i.fh = load atomic i8, ptr %i.fg monotonic, align 1
  %i.fi = icmp eq i8 %i.fh, -1
  br i1 %i.fi, label %bb.m, label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

bb.m:                                             ; preds = %bb.l
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !485
  br label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i: ; preds = %bb.m, %bb.l
  %.0.i.i = phi ptr [ %i.fk, %bb.m ], [ %i.ff, %bb.l ]
  %i.fl = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.fl, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EED2Ev.exit25, label %bb.f, !llvm.loop !4941

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EED2Ev.exit25: ; preds = %thread-pre-split26, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeENSB_11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSJ_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSC_.exit

_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeENSB_11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSJ_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSC_.exit: ; preds = %bb.d, %bb.c, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EED2Ev.exit25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19fold_treeINS1_19reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS6_8LeafNodeINS5_9ValueMaskELj3EEEE11NodeReducerINS5_5tools14count_internal18ActiveVoxelCountOpINS6_4TreeINS6_8RootNodeINS6_12InternalNodeINSJ_ISA_Lj4EEELj5EEEEEEEEENSC_11OpWithIndexEEEEEEEvPNS1_4nodeERKNS1_14execution_dataE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = atomicrmw sub ptr %i.a, i32 1 seq_cst, align 4
  %i.c = add i32 %i.b, -1
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %_ZN3tbb6detail2d112wait_context7releaseEj.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.019 = phi ptr [ %i.e, %bb.g ], [ %0, %bb.a ]  ; 9 uses
  %i.e = load ptr, ptr %.019, align 8, !tbaa !1547 ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = load ptr, ptr %1, align 8, !tbaa !1557   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.019, i64 56 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !1955, !range !512, !noundef !528
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEE4joinEPNS1_18task_group_contextE.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %i.k = load atomic i8, ptr %i.j monotonic, align 1
  %i.l = icmp eq i8 %i.k, -1
  br i1 %i.l, label %bb.d, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !485
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %i.n, %bb.d ], [ %i.f, %bb.c ]
  %i.o = tail call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i)
  br i1 %i.o, label %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEE4joinEPNS1_18task_group_contextE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %.019, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !4942, !nonnull !528, !align !535
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1904 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.019, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1904
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1683
  %i.w = load i64, ptr %i.s, align 8, !tbaa !1683
  %i.x = add i64 %i.w, %i.v
  store i64 %i.x, ptr %i.s, align 8, !tbaa !1683
  br label %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEE4joinEPNS1_18task_group_contextE.exit

_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEE4joinEPNS1_18task_group_contextE.exit: ; preds = %bb.b, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.019, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1543
  %i.aa = load i8, ptr %i.g, align 8, !tbaa !1955, !range !512, !noundef !528
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEE4joinEPNS1_18task_group_contextE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.019, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1782 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %bb.g, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i.i.i: ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 8) #30
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i.i.i, %bb.f, %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEE4joinEPNS1_18task_group_contextE.exit
  %i.ae = inttoptr i64 %i.z to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, ptr noundef nonnull %.019, i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ag = atomicrmw sub ptr %i.af, i32 1 seq_cst, align 4
  %i.ah = add i32 %i.ag, -1
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %_ZN3tbb6detail2d112wait_context7releaseEj.exit, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %.019, i64 24
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 seq_cst, align 8
  %.not.i.i = icmp eq i64 %i.ak, 1
  br i1 %.not.i.i, label %bb.i, label %_ZN3tbb6detail2d112wait_context7releaseEj.exit

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %.019, i64 16
  %i.am = ptrtoint ptr %i.al to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.am)
  br label %_ZN3tbb6detail2d112wait_context7releaseEj.exit

_ZN3tbb6detail2d112wait_context7releaseEj.exit:   ; preds = %bb.g, %bb.a, %bb.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree18DynamicNodeManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELj3EE13reduceTopDownINS0_5tools14count_internal20InactiveVoxelCountOpISC_EEEEvRT_bmm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.openvdb::v13_0::tree::ReduceFilterOp.1034", align 8 ; 11 uses
  %6 = alloca %"struct.openvdb::v13_0::tree::ReduceFilterOp.1034", align 8 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1858, !nonnull !528, !align !535 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !507  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  %.not3.i.i.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not3.i.i.i.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE14cbeginValueOffEv.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.b
  %.sroa.2.0.i.i = phi ptr [ %i.k, %bb.b ], [ %i.c, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i.i, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !511
  %i.g = icmp ne ptr %i.f, null
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i.i, i64 57
  %i.i = load i8, ptr %i.h, align 1, !range !512
  %i.j = trunc nuw i8 %i.i to i1
  %.not2.i.i.i.i = select i1 %i.g, i1 true, i1 %i.j
  br i1 %.not2.i.i.i.i, label %bb.b, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE14cbeginValueOffEv.exit.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.k = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i.i) #32 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE14cbeginValueOffEv.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !4943

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE14cbeginValueOffEv.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i, %bb.a
  %.sroa.2.1.i.i = phi ptr [ %i.c, %bb.a ], [ %.sroa.2.0.i.i, %.lr.ph.i.i.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %.not10.i = icmp eq ptr %.sroa.2.1.i.i, %i.d
  br i1 %.not10.i, label %_ZN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclERKSD_m.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE14cbeginValueOffEv.exit.i
  %.promoted.i = load i64, ptr %1, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.m = load i8, ptr %i.l, align 8, !tbaa !514, !range !512, !noundef !528
  br label %bb.c

bb.c:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_12ValueOffPredEKbEppEv.exit.i, %.lr.ph.i
  %.sroa.5.011.i = phi ptr [ %.sroa.2.1.i.i, %.lr.ph.i ], [ %.sroa.5.3.i, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_12ValueOffPredEKbEppEv.exit.i ] ; 2 uses
  %7 = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %8, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_12ValueOffPredEKbEppEv.exit.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.5.011.i, i64 56
  %i.o = load i8, ptr %i.n, align 1, !tbaa !514, !range !512, !noundef !528
  %i.p = icmp eq i8 %i.o, %i.m
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = add i64 %7, 68719476736                  ; 2 uses
  store i64 %i.q, ptr %1, align 8, !tbaa !1685
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %8 = phi i64 [ %i.q, %bb.d ], [ %7, %bb.c ]
  %i.r = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.5.011.i) #32 ; 3 uses
  %.not3.i.i.i3.i = icmp eq ptr %i.r, %i.d
  br i1 %.not3.i.i.i3.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_12ValueOffPredEKbEppEv.exit.i, label %.lr.ph.i.i.i4.i

.lr.ph.i.i.i4.i:                                  ; preds = %bb.e, %bb.f
  %.sroa.5.2.i = phi ptr [ %i.y, %bb.f ], [ %i.r, %bb.e ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.5.2.i, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !511
  %i.u = icmp ne ptr %i.t, null
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.5.2.i, i64 57
  %i.w = load i8, ptr %i.v, align 1, !range !512
  %i.x = trunc nuw i8 %i.w to i1
  %.not2.i.i.i5.i = select i1 %i.u, i1 true, i1 %i.x
  br i1 %.not2.i.i.i5.i, label %bb.f, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_12ValueOffPredEKbEppEv.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i.i4.i
  %i.y = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.5.2.i) #32 ; 3 uses
  %.not.i.i.i6.i = icmp eq ptr %i.y, %i.d
  br i1 %.not.i.i.i6.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_12ValueOffPredEKbEppEv.exit.i, label %.lr.ph.i.i.i4.i, !llvm.loop !4943

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_12ValueOffPredEKbEppEv.exit.i: ; preds = %bb.f, %.lr.ph.i.i.i4.i, %bb.e
  %.sroa.5.3.i = phi ptr [ %i.r, %bb.e ], [ %i.y, %bb.f ], [ %.sroa.5.2.i, %.lr.ph.i.i.i4.i ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.5.3.i, %i.d
  br i1 %.not.i, label %_ZN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclERKSD_m.exit, label %bb.c, !llvm.loop !4944

_ZN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclERKSD_m.exit: ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_12ValueOffPredEKbEppEv.exit.i, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE14cbeginValueOffEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aa = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE16initRootChildrenIKNS1_8RootNodeIS8_EEEEbRT_(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(68) %i.a)
  br i1 %i.aa, label %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEC2ERSG_m.exit, label %bb.s

_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEC2ERSG_m.exit: ; preds = %_ZN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclERKSD_m.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !1859 ; 2 uses
  store ptr null, ptr %5, align 8, !tbaa !1824
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.ac, align 8, !tbaa !1959
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4949)
  %i.ad = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #29 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ad, i8 0, i64 %i.ab, i1 false), !noalias !4949
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !593, !alias.scope !4949
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !1960
  invoke void @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE15reduceWithIndexINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_bm(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext %2, i64 noundef %4)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEC2ERSG_m.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ah = xor i1 %2, true                         ; 2 uses
  %i.ai = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEE16initNodeChildrenINS2_IKNS3_IS7_Lj5EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeISB_EEEEEEEEEEbRT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext %i.ah)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %i.ai, label %bb.j, label %bb.r

bb.i:                                             ; preds = %bb.g, %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEC2ERSG_m.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.ak = load i64, ptr %i.ag, align 8, !tbaa !1885 ; 2 uses
  store ptr null, ptr %6, align 8, !tbaa !1824
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.al, align 8, !tbaa !1959
  call void @llvm.experimental.noalias.scope.decl(metadata !4950)
  %i.am = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ak) #29
          to label %bb.l unwind label %bb.k       ; 3 uses

bb.k:                                             ; preds = %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.am, i8 0, i64 %i.ak, i1 false), !noalias !4950
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !593, !alias.scope !4950
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !1960
  invoke void @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEE15reduceWithIndexINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS3_IS7_Lj5EEEEEEEEEEEEEvRT_bm(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext %2, i64 noundef %4)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ar = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE16initNodeChildrenINS2_IKNS1_12InternalNodeIS5_Lj4EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS9_ISA_Lj5EEEEEEEEEEEEEbRT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext %i.ah)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  br i1 %i.ar, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.p, %bb.m, %bb.l
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #21
  br label %.body

bb.p:                                             ; preds = %bb.n
  invoke void @_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE15reduceWithIndexINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEEEEvRT_bm(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2, i64 noundef %3)
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !593 ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.at, null
  br i1 %.not.i.i22, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.at) #30
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i, %bb.q
  %i.au = load ptr, ptr %6, align 8, !tbaa !1832  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.au, null
  br i1 %.not.i1.i, label %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEED2Ev.exit, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i23

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i23: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 8) #30
  br label %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEED2Ev.exit

_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i, %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.r

bb.r:                                             ; preds = %bb.h, %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEED2Ev.exit
  %i.av = load ptr, ptr %i.ae, align 8, !tbaa !593 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.av, null
  br i1 %.not.i.i25, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i27, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i26

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i26: ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.av) #30
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i27

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i27: ; preds = %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i26, %bb.r
  %i.aw = load ptr, ptr %5, align 8, !tbaa !1832  ; 2 uses
  %.not.i1.i28 = icmp eq ptr %i.aw, null
  br i1 %.not.i1.i28, label %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEED2Ev.exit31, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i29

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i29: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i27
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef 8) #30
  br label %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEED2Ev.exit31

_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEED2Ev.exit31: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i27, %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.s

bb.s:                                             ; preds = %_ZN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclERKSD_m.exit, %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEED2Ev.exit31
  ret void

.body:                                            ; preds = %bb.k, %bb.o
  %.pn = phi { ptr, i32 } [ %i.as, %bb.o ], [ %i.an, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %common.resume

common.resume:                                    ; preds = %.body, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.aj, %bb.i ]
  call void @_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE15reduceWithIndexINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_bm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2, i64 noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %5 = alloca %"struct.openvdb::v13_0::tree::NodeList<const openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<openvdb::v13_0::ValueMask, 3>, 4>, 5>>::NodeReducer.1037", align 8 ; 9 uses
  %6 = alloca %"class.openvdb::v13_0::tree::NodeList<const openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<openvdb::v13_0::ValueMask, 3>, 4>, 5>>::NodeRange", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr null, ptr %5, align 8, !tbaa !1963
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !1970
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4953)
  %i.b = load i64, ptr %0, align 8, !tbaa !1859, !noalias !4953
  store i64 %i.b, ptr %6, align 8, !tbaa !1880, !alias.scope !4953
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !1881, !alias.scope !4953
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %3, ptr %i.d, align 8, !tbaa !1882, !alias.scope !4953
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %0, ptr %i.e, align 8, !tbaa !1883, !alias.scope !4953
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEE3runERKSF_RSS_RSU_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEENSA_11OpWithIndexEE3runERKNSA_9NodeRangeEb.exit

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEENSA_11OpWithIndexEEclERKNSA_9NodeRangeE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEENSA_11OpWithIndexEE3runERKNSA_9NodeRangeEb.exit unwind label %bb.e

_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEENSA_11OpWithIndexEE3runERKNSA_9NodeRangeEb.exit: ; preds = %.noexc, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.f = load ptr, ptr %5, align 8, !tbaa !1971   ; 4 uses
  %.not.i.i = icmp eq ptr %i.f, null
end_hunk_3
begin_hunk_4_@_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE15reduceWithIndexINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEEEEvRT_bm:bb.a
  %.promoted.i.i = load i64, ptr %1, align 8, !tbaa !1685
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.h = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.n, %bb.d ]
  %.sroa.5.019.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.sroa.5.019.i.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !558
  %i.k = load <8 x i64>, ptr %i.j, align 8, !tbaa !513
  %i.l = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.k)
  %.neg9 = add i64 %i.h, 512
  %i.m = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.l)
  %i.n = sub i64 %.neg9, %i.m                     ; 2 uses
  store i64 %i.n, ptr %1, align 8, !tbaa !1685
  %i.o = add nuw i64 %.sroa.5.019.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.o, %i.b
  br i1 %exitcond.not.i.i, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE11NodeReducerINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEENS7_11OpWithIndexEE3runERKNS7_9NodeRangeEb.exit.thread, label %bb.d, !llvm.loop !111

_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE11NodeReducerINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEENS7_11OpWithIndexEE3runERKNS7_9NodeRangeEb.exit.thread: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE11NodeReducerINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEENS7_11OpWithIndexEED2Ev.exit

_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE11NodeReducerINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEENS7_11OpWithIndexEE3runERKNS7_9NodeRangeEb.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %.pre = load ptr, ptr %5, align 8, !tbaa !1832  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE11NodeReducerINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEENS7_11OpWithIndexEED2Ev.exit, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i: ; preds = %_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE11NodeReducerINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEENS7_11OpWithIndexEE3runERKNS7_9NodeRangeEb.exit
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef 8) #30
  br label %_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE11NodeReducerINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEENS7_11OpWithIndexEED2Ev.exit

_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE11NodeReducerINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEENS7_11OpWithIndexEED2Ev.exit: ; preds = %_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE11NodeReducerINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEENS7_11OpWithIndexEE3runERKNS7_9NodeRangeEb.exit.thread, %_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE11NodeReducerINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEENS7_11OpWithIndexEE3runERKNS7_9NodeRangeEb.exit, %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.q = load ptr, ptr %5, align 8, !tbaa !1832   ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.q, null
  br i1 %.not.i.i5, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE11NodeReducerINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEENS7_11OpWithIndexEED2Ev.exit7, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i6

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i6: ; preds = %bb.e
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 8) #30
  br label %_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE11NodeReducerINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEENS7_11OpWithIndexEED2Ev.exit7

_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE11NodeReducerINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEENS7_11OpWithIndexEED2Ev.exit7: ; preds = %bb.e, %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %i.p
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !593  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #30
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  %i.c = load ptr, ptr %0, align 8, !tbaa !1832   ; 2 uses
  %.not.i1 = icmp eq ptr %i.c, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESt14default_deleteISG_EED2Ev.exit, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 8) #30
  br label %_ZNSt10unique_ptrIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESt14default_deleteISG_EED2Ev.exit

_ZNSt10unique_ptrIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESt14default_deleteISG_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEENSA_11OpWithIndexEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1971   ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal20InactiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISI_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !593  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #30
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %bb.b
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !1832 ; 2 uses
  %.not.i1.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i1.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal20InactiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEEclEPSI_.exit.i, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 8) #30
  br label %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal20InactiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEEclEPSI_.exit.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal20InactiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEEclEPSI_.exit.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i.i.i, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #30
  br label %_ZNSt10unique_ptrIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal20InactiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISI_EED2Ev.exit

_ZNSt10unique_ptrIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal20InactiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISI_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal20InactiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEEclEPSI_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEENSA_11OpWithIndexEEclERKNSA_9NodeRangeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1881 ; 2 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !1880   ; 2 uses
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1970 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1910, !nonnull !528, !align !535
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1894
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1959 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1960
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit
  %.sroa.5.010 = phi i64 [ %i.b, %.lr.ph ], [ %i.bo, %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.5.010
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1593 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 266240 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.013.i.i.i.i.i.i = phi ptr [ %i.q, %bb.b ], [ %i.y, %bb.g ] ; 5 uses
  %.0712.i.i.i.i.i.i = phi i32 [ 0, %bb.b ], [ %i.z, %bb.g ] ; 5 uses
  %i.r = load i64, ptr %.013.i.i.i.i.i.i, align 8, !tbaa !513, !noalias !4991 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.r, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE14cbeginValueOffEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !513, !noalias !4991 ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq i64 %i.t, -1
  br i1 %.not.i.i.i.i.i.i.1, label %bb.e, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE14cbeginValueOffEv.exit.i.i.i.split.loop.exit50

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !513, !noalias !4991 ; 2 uses
  %.not.i.i.i.i.i.i.2 = icmp eq i64 %i.v, -1
  br i1 %.not.i.i.i.i.i.i.2, label %bb.f, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE14cbeginValueOffEv.exit.i.i.i.split.loop.exit47

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !513, !noalias !4991 ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.x, -1
  br i1 %.not.i.i.i.i.i.i.3, label %bb.g, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE14cbeginValueOffEv.exit.i.i.i.split.loop.exit

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 32
  %i.z = add nuw nsw i32 %.0712.i.i.i.i.i.i, 4    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i32 %i.z, 512
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit, label %bb.c, !llvm.loop !112

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE14cbeginValueOffEv.exit.i.i.i.split.loop.exit: ; preds = %bb.f
  %i.aa = or disjoint i32 %.0712.i.i.i.i.i.i, 3
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE14cbeginValueOffEv.exit.i.i.i

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE14cbeginValueOffEv.exit.i.i.i.split.loop.exit47: ; preds = %bb.e
  %i.ab = or disjoint i32 %.0712.i.i.i.i.i.i, 2
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE14cbeginValueOffEv.exit.i.i.i

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE14cbeginValueOffEv.exit.i.i.i.split.loop.exit50: ; preds = %bb.d
  %i.ac = or disjoint i32 %.0712.i.i.i.i.i.i, 1
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE14cbeginValueOffEv.exit.i.i.i

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE14cbeginValueOffEv.exit.i.i.i: ; preds = %bb.c, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE14cbeginValueOffEv.exit.i.i.i.split.loop.exit50, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE14cbeginValueOffEv.exit.i.i.i.split.loop.exit47, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE14cbeginValueOffEv.exit.i.i.i.split.loop.exit
  %.0712.i.i.i.i.i.i.lcssa = phi i32 [ %i.ac, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE14cbeginValueOffEv.exit.i.i.i.split.loop.exit50 ], [ %i.ab, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE14cbeginValueOffEv.exit.i.i.i.split.loop.exit47 ], [ %i.aa, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE14cbeginValueOffEv.exit.i.i.i.split.loop.exit ], [ %.0712.i.i.i.i.i.i, %bb.c ]
  %.lcssa = phi i64 [ %i.t, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE14cbeginValueOffEv.exit.i.i.i.split.loop.exit50 ], [ %i.v, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE14cbeginValueOffEv.exit.i.i.i.split.loop.exit47 ], [ %i.x, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE14cbeginValueOffEv.exit.i.i.i.split.loop.exit ], [ %i.r, %bb.c ]
  %i.ad = shl nuw nsw i32 %.0712.i.i.i.i.i.i.lcssa, 6
  %i.ae = xor i64 %.lcssa, -1
  %i.af = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ae, i1 true)
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = or disjoint i32 %i.ad, %i.ag            ; 2 uses
  %.not9.i.i.i = icmp eq i32 %i.ah, 32768
  br i1 %.not9.i.i.i, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE14cbeginValueOffEv.exit.i.i.i
  %.promoted.i.i.i = load i64, ptr %i.l, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 262144
  br label %bb.h

bb.h:                                             ; preds = %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.3.010.i.i.i = phi i32 [ %i.ah, %.lr.ph.i.i.i ], [ %.118.i.i.i.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit.i.i.i ] ; 3 uses
  %2 = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %3, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit.i.i.i ] ; 2 uses
  %i.aj = lshr i32 %.sroa.3.010.i.i.i, 6
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !513
  %i.an = and i32 %.sroa.3.010.i.i.i, 63
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = shl nuw i64 1, %i.ao
  %i.aq = and i64 %i.ap, %i.am
  %.not.i.i.i.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = add i64 %2, 2097152                     ; 2 uses
  store i64 %i.ar, ptr %i.l, align 8, !tbaa !1685
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %3 = phi i64 [ %2, %bb.h ], [ %i.ar, %bb.i ]
  %i.as = add i32 %.sroa.3.010.i.i.i, 1           ; 4 uses
  %i.at = lshr i32 %i.as, 6                       ; 3 uses
  %i.au = icmp ugt i32 %i.as, 32767
  br i1 %i.au, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = and i32 %i.as, 63
  %i.aw = zext nneg i32 %i.at to i64              ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !513 ; 2 uses
  %i.az = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = and i64 %i.ay, %i.ba
  %.not.not.i.i.i.i.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not.not.i.i.i.i.i.i.i, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = xor i64 %i.ay, -1
  %i.bd = shl nsw i64 -1, %i.az
  %i.be = and i64 %i.bd, %i.bc                    ; 2 uses
  %.not25.i.i.i.i.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not25.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %.critedge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.l
  %exitcond.not.i.i.i.i.i.i.i34 = icmp eq i32 %i.at, 511
  br i1 %exitcond.not.i.i.i.i.i.i.i34, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit, label %.lr.ph36

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph36
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i, 511
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit, label %.lr.ph36, !llvm.loop !113

.lr.ph36:                                         ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i35 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i35, 1 ; 4 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.i.i.i.i
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !513 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bg, -1
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %.critedge.loopexit.i.i.i.i.i.i.i, !llvm.loop !113

.critedge.loopexit.i.i.i.i.i.i.i:                 ; preds = %.lr.ph36
  %i.bh = xor i64 %i.bg, -1
  %i.bi = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i.i.i to i32
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %.critedge.loopexit.i.i.i.i.i.i.i, %bb.l
  %.016.lcssa.i.i.i.i.i.i.i = phi i32 [ %i.at, %bb.l ], [ %i.bi, %.critedge.loopexit.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %i.be, %bb.l ], [ %i.bh, %.critedge.loopexit.i.i.i.i.i.i.i ]
  %i.bj = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i.i.i, 6
  %i.bk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.bl = trunc nuw nsw i64 %i.bk to i32
  %i.bm = or disjoint i32 %i.bj, %i.bl
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit.i.i.i

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit.i.i.i: ; preds = %.critedge.i.i.i.i.i.i.i, %bb.k
  %.118.i.i.i.i.i.i.i = phi i32 [ %i.bm, %.critedge.i.i.i.i.i.i.i ], [ %i.as, %bb.k ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %.118.i.i.i.i.i.i.i, 32768
  br i1 %.not.i.i.i, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit, label %bb.h, !llvm.loop !4989

_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit: ; preds = %bb.g, %bb.j, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE14cbeginValueOffEv.exit.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.5.010
  store i8 1, ptr %i.bn, align 1, !tbaa !514
  %i.bo = add nuw i64 %.sroa.5.010, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.bo, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !4990
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEE3runERKSF_RSS_RSU_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !1523
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 4, ptr %i.c, align 8, !tbaa !1524
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !485
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1881
  %i.g = load i64, ptr %0, align 8, !tbaa !1880
  %.not.i = icmp ult i64 %i.f, %i.g
  br i1 %.not.i, label %.noexc.i, label %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEE3runERKSF_RSS_RSU_RNS1_18task_group_contextE.exit

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr null, ptr %3, align 8, !tbaa !1547
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1, ptr %i.h, align 8, !tbaa !1548
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 1, ptr %i.i, align 8, !tbaa !1550
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 1, ptr %i.j, align 8, !tbaa !654
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !1527
  %i.k = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192)
          to label %.noexc unwind label %bb.d     ; 11 uses

.noexc:                                           ; preds = %.noexc.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.k, align 64, !tbaa !466
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !1911
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  store ptr %1, ptr %i.n, align 32, !tbaa !1982
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 104 ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !1983
  %i.p = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  store i32 0, ptr %i.s, align 8, !tbaa !1540
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 124
  store i8 5, ptr %i.t, align 4, !tbaa !1541
  %i.u = shl nsw i64 %i.r, 1
  %i.v = and i64 %i.u, 9223372036854775806
  store i64 %i.v, ptr %i.q, align 16, !tbaa !1542
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.x = load i64, ptr %4, align 8, !tbaa !1543
  store i64 %i.x, ptr %i.w, align 64, !tbaa !1543
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  store i8 0, ptr %i.y, align 8, !tbaa !1984
  store ptr %3, ptr %i.o, align 8, !tbaa !1983
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEE3runERKSF_RSS_RSU_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEE3runERKSF_RSS_RSU_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.aa = load atomic i8, ptr %i.z monotonic, align 1
  %i.ab = icmp eq i8 %i.aa, -1
  br i1 %i.ab, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEE3runERKSF_RSS_RSU_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #31
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEE3runERKSF_RSS_RSU_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %.noexc.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %i.ae
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(137) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 192, i64 noundef 64) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(137) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !1553 ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.h = load i64, ptr %i.g, align 16, !tbaa !1542
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_12start_reduceIN7openvdb5v13_04tree8NodeListIKNSB_12InternalNodeINSD_INSB_8LeafNodeINSA_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSK_11NodeReducerINSB_14ReduceFilterOpINSA_5tools14count_internal20InactiveVoxelCountOpINSB_4TreeINSB_8RootNodeISI_EEEEEEEENSK_11OpWithIndexEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 16, !tbaa !1542
end_hunk_4
begin_hunk_5_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_12start_reduceIN7openvdb5v13_04tree8NodeListIKNSB_8LeafNodeINSA_9ValueMaskELj3EEEE9NodeRangeENSH_11NodeReducerINSA_5tools14count_internal20InactiveVoxelCountOpINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSP_ISF_Lj4EEELj5EEEEEEEEENSH_11OpWithIndexEEEKNS1_16auto_partitionerEEESI_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %.pre-phi = phi i64 [ %.pre, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.dq, %bb.j ], [ %i.dq, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit ]
  %i.ee = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %.pre-phi ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !1907 ; 2 uses
  %i.eh = load i64, ptr %i.ee, align 8, !tbaa !1906 ; 2 uses
  %i.ei = icmp ult i64 %i.eg, %i.eh
  br i1 %i.ei, label %.lr.ph.i.i.i.i.i.i15, label %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeENSB_11NodeReducerINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSJ_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSC_.exit20

.lr.ph.i.i.i.i.i.i15:                             ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread
  %i.ej = load ptr, ptr %i.ad, align 32, !tbaa !2014
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !1979 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !1957, !nonnull !528, !align !535
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !1899
  %.promoted.i.i.i.i.i.i16 = load i64, ptr %i.el, align 8, !tbaa !1685
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i15
  %i.eq = phi i64 [ %.promoted.i.i.i.i.i.i16, %.lr.ph.i.i.i.i.i.i15 ], [ %i.ew, %bb.k ]
  %.sroa.5.019.i.i.i.i.i.i17 = phi i64 [ %i.eg, %.lr.ph.i.i.i.i.i.i15 ], [ %i.ex, %bb.k ] ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.sroa.5.019.i.i.i.i.i.i17
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !558
  %i.et = load <8 x i64>, ptr %i.es, align 8, !tbaa !513
  %i.eu = call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.et)
  %.neg29 = add i64 %i.eq, 512
  %i.ev = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.eu)
  %i.ew = sub i64 %.neg29, %i.ev                  ; 2 uses
  store i64 %i.ew, ptr %i.el, align 8, !tbaa !1685
  %i.ex = add nuw i64 %.sroa.5.019.i.i.i.i.i.i17, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i19 = icmp eq i64 %i.ex, %i.eh
  br i1 %exitcond.not.i.i.i.i.i.i19, label %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeENSB_11NodeReducerINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSJ_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSC_.exit20, label %bb.k, !llvm.loop !111

_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeENSB_11NodeReducerINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSJ_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSC_.exit20: ; preds = %bb.k, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread
  %i.ey = add i8 %i.ed, -1
  %i.ez = add nuw i8 %i.ec, 7
  %i.fa = and i8 %i.ez, 7
  br label %thread-pre-split27

thread-pre-split27:                               ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeENSB_11NodeReducerINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSJ_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSC_.exit20
  %i.fb = phi i8 [ %i.ey, %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeENSB_11NodeReducerINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSJ_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSC_.exit20 ], [ %i.bt, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.fc = phi i8 [ %i.fa, %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeENSB_11NodeReducerINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSJ_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSC_.exit20 ], [ %i.bu, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit ]
  %i.fd = icmp eq i8 %i.fb, 0
  br i1 %i.fd, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EED2Ev.exit26, label %bb.l

bb.l:                                             ; preds = %.noexc, %thread-pre-split27
  %i.fe = phi i8 [ %i.dp, %.noexc ], [ %i.ah, %thread-pre-split27 ]
  %i.ff = phi i8 [ %i.dn, %.noexc ], [ %i.fb, %thread-pre-split27 ]
  %i.fg = phi i8 [ %i.cj, %.noexc ], [ %i.fc, %thread-pre-split27 ]
  %i.fh = load ptr, ptr %3, align 8, !tbaa !1557  ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 15
  %i.fj = load atomic i8, ptr %i.fi monotonic, align 1
  %i.fk = icmp eq i8 %i.fj, -1
  br i1 %i.fk, label %bb.m, label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

bb.m:                                             ; preds = %bb.l
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !485
  br label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i: ; preds = %bb.m, %bb.l
  %.0.i.i = phi ptr [ %i.fm, %bb.m ], [ %i.fh, %bb.l ]
  %i.fn = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.fn, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EED2Ev.exit26, label %bb.f, !llvm.loop !5090

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EED2Ev.exit26: ; preds = %thread-pre-split27, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeENSB_11NodeReducerINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSJ_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSC_.exit

_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeENSB_11NodeReducerINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSJ_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSC_.exit: ; preds = %bb.d, %bb.c, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EED2Ev.exit26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19fold_treeINS1_19reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS6_8LeafNodeINS5_9ValueMaskELj3EEEE11NodeReducerINS5_5tools14count_internal20InactiveVoxelCountOpINS6_4TreeINS6_8RootNodeINS6_12InternalNodeINSJ_ISA_Lj4EEELj5EEEEEEEEENSC_11OpWithIndexEEEEEEEvPNS1_4nodeERKNS1_14execution_dataE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = atomicrmw sub ptr %i.a, i32 1 seq_cst, align 4
  %i.c = add i32 %i.b, -1
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %_ZN3tbb6detail2d112wait_context7releaseEj.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.019 = phi ptr [ %i.e, %bb.g ], [ %0, %bb.a ]  ; 9 uses
  %i.e = load ptr, ptr %.019, align 8, !tbaa !1547 ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = load ptr, ptr %1, align 8, !tbaa !1557   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.019, i64 56 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !2019, !range !512, !noundef !528
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE11NodeReducerINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEE4joinEPNS1_18task_group_contextE.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %i.k = load atomic i8, ptr %i.j monotonic, align 1
  %i.l = icmp eq i8 %i.k, -1
  br i1 %i.l, label %bb.d, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !485
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %i.n, %bb.d ], [ %i.f, %bb.c ]
  %i.o = tail call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i)
  br i1 %i.o, label %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE11NodeReducerINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEE4joinEPNS1_18task_group_contextE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %.019, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !5091, !nonnull !528, !align !535
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1979 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.019, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1979
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1685
  %i.w = load i64, ptr %i.s, align 8, !tbaa !1685
  %i.x = add i64 %i.w, %i.v
  store i64 %i.x, ptr %i.s, align 8, !tbaa !1685
  br label %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE11NodeReducerINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEE4joinEPNS1_18task_group_contextE.exit

_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE11NodeReducerINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEE4joinEPNS1_18task_group_contextE.exit: ; preds = %bb.b, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.019, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1543
  %i.aa = load i8, ptr %i.g, align 8, !tbaa !2019, !range !512, !noundef !528
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE11NodeReducerINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEE4joinEPNS1_18task_group_contextE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.019, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1832 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %bb.g, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i.i.i: ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 8) #30
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i.i.i, %bb.f, %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE11NodeReducerINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEE4joinEPNS1_18task_group_contextE.exit
  %i.ae = inttoptr i64 %i.z to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, ptr noundef nonnull %.019, i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ag = atomicrmw sub ptr %i.af, i32 1 seq_cst, align 4
  %i.ah = add i32 %i.ag, -1
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %_ZN3tbb6detail2d112wait_context7releaseEj.exit, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %.019, i64 24
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 seq_cst, align 8
  %.not.i.i = icmp eq i64 %i.ak, 1
  br i1 %.not.i.i, label %bb.i, label %_ZN3tbb6detail2d112wait_context7releaseEj.exit

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %.019, i64 16
  %i.am = ptrtoint ptr %i.al to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.am)
  br label %_ZN3tbb6detail2d112wait_context7releaseEj.exit

_ZN3tbb6detail2d112wait_context7releaseEj.exit:   ; preds = %bb.g, %bb.a, %bb.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree18DynamicNodeManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELj2EE13reduceTopDownINS0_5tools14count_internal17ActiveTileCountOpISC_EEEEvRT_bmm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.openvdb::v13_0::tree::ReduceFilterOp.1084", align 8 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !5096, !nonnull !528, !align !535 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !507  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  %.not1.i.i.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not1.i.i.i.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE13cbeginValueOnEv.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.b
  %.sroa.2.0.i.i = phi ptr [ %i.l, %bb.b ], [ %i.c, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i.i, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !511
  %i.g = icmp eq ptr %i.f, null
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i.i, i64 57
  %i.i = load i8, ptr %i.h, align 1, !range !512
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = select i1 %i.g, i1 %i.j, i1 false
  br i1 %i.k, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE13cbeginValueOnEv.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.l = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i.i) #32 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.d
  br i1 %.not.i.i.i.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE13cbeginValueOnEv.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !91

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE13cbeginValueOnEv.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i, %bb.a
  %.sroa.2.1.i.i = phi ptr [ %i.c, %bb.a ], [ %i.l, %bb.b ], [ %.sroa.2.0.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %.not7.i = icmp eq ptr %.sroa.2.1.i.i, %i.d
  br i1 %.not7.i, label %_ZN7openvdb5v13_05tools14count_internal17ActiveTileCountOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclERKSD_m.exit, label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE13cbeginValueOnEv.exit.i
  %.promoted.i = load i64, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_11ValueOnPredEKbEppEv.exit.i, %.lr.ph.i.a
  %.sroa.5.08.i = phi ptr [ %.sroa.5.3.i, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_11ValueOnPredEKbEppEv.exit.i ], [ %.sroa.2.1.i.i, %.lr.ph.i.a ]
  %6 = phi i64 [ %i.m, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_11ValueOnPredEKbEppEv.exit.i ], [ %.promoted.i, %.lr.ph.i.a ]
  %i.m = add i64 %6, 1                            ; 2 uses
  store i64 %i.m, ptr %1, align 8, !tbaa !1687
  %i.n = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.5.08.i) #32 ; 3 uses
  %.not1.i.i.i2.i = icmp eq ptr %i.n, %i.d
  br i1 %.not1.i.i.i2.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_11ValueOnPredEKbEppEv.exit.i, label %.lr.ph.i.i.i3.i

.lr.ph.i.i.i3.i:                                  ; preds = %bb.c, %bb.d
  %.sroa.5.2.i = phi ptr [ %i.v, %bb.d ], [ %i.n, %bb.c ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.5.2.i, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !511
  %i.q = icmp eq ptr %i.p, null
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.5.2.i, i64 57
  %i.s = load i8, ptr %i.r, align 1, !range !512
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = select i1 %i.q, i1 %i.t, i1 false
  br i1 %i.u, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_11ValueOnPredEKbEppEv.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i3.i
  %i.v = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.5.2.i) #32 ; 3 uses
  %.not.i.i.i4.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i4.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_11ValueOnPredEKbEppEv.exit.i, label %.lr.ph.i.i.i3.i, !llvm.loop !91

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_11ValueOnPredEKbEppEv.exit.i: ; preds = %bb.d, %.lr.ph.i.i.i3.i, %bb.c
  %.sroa.5.3.i = phi ptr [ %i.n, %bb.c ], [ %.sroa.5.2.i, %.lr.ph.i.i.i3.i ], [ %i.v, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.5.3.i, %i.d
  br i1 %.not.i, label %_ZN7openvdb5v13_05tools14count_internal17ActiveTileCountOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclERKSD_m.exit, label %bb.c, !llvm.loop !5092

_ZN7openvdb5v13_05tools14count_internal17ActiveTileCountOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclERKSD_m.exit: ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_11ValueOnPredEKbEppEv.exit.i, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE13cbeginValueOnEv.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.x = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE16initRootChildrenIKNS1_8RootNodeIS8_EEEEbRT_(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(68) %i.a)
  br i1 %i.x, label %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEC2ERSG_m.exit, label %bb.i

_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEC2ERSG_m.exit: ; preds = %_ZN7openvdb5v13_05tools14count_internal17ActiveTileCountOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclERKSD_m.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.y = load i64, ptr %i.w, align 8, !tbaa !1859 ; 2 uses
  store ptr null, ptr %5, align 8, !tbaa !2023
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.z, align 8, !tbaa !2030
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5097)
  %i.aa = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.y) #29 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.y, i1 false), !noalias !5097
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !593, !alias.scope !5097
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !2031
  invoke void @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE15reduceWithIndexINS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_bm(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext %2, i64 noundef %4)
          to label %bb.e unwind label %common.resume

bb.e:                                             ; preds = %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEC2ERSG_m.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ae = xor i1 %2, true
  %i.af = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEE16initNodeChildrenINS2_IKNS3_IS7_Lj5EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeISB_EEEEEEEEEEbRT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext %i.ae)
          to label %bb.f unwind label %common.resume

bb.f:                                             ; preds = %bb.e
  br i1 %i.af, label %bb.g, label %bb.h

common.resume:                                    ; preds = %bb.g, %bb.e, %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEC2ERSG_m.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %i.ag

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEE15reduceWithIndexINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeINS3_IS7_Lj5EEEEEEEEEEEvRT_bm(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2, i64 noundef %3)
          to label %bb.h unwind label %common.resume

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !593 ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i10, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.ah) #30
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i, %bb.h
  %i.ai = load ptr, ptr %5, align 8, !tbaa !2032  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.ai, null
  br i1 %.not.i1.i, label %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEED2Ev.exit, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal17ActiveTileCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i11

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal17ActiveTileCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i11: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 8) #30
  br label %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEED2Ev.exit

_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i, %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal17ActiveTileCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.i

bb.i:                                             ; preds = %_ZN7openvdb5v13_05tools14count_internal17ActiveTileCountOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclERKSD_m.exit, %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree18DynamicNodeManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELj2EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1133 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEED2Ev.exit, label %_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEEEclIS9_EENSt9enable_ifIXsr14is_convertibleIPA_T_PSA_EE5valueEvE4typeEPSE_.exit.i.i

_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEEEclIS9_EENSt9enable_ifIXsr14is_convertibleIPA_T_PSA_EE5valueEvE4typeEPSE_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #30
  br label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEED2Ev.exit

_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEEEclIS9_EENSt9enable_ifIXsr14is_convertibleIPA_T_PSA_EE5valueEvE4typeEPSE_.exit.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1134 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.d, null
  br i1 %.not.i.i1, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEED2Ev.exit, label %_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEclISA_EENSt9enable_ifIXsr14is_convertibleIPA_T_PSB_EE5valueEvE4typeEPSF_.exit.i.i

_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEclISA_EENSt9enable_ifIXsr14is_convertibleIPA_T_PSB_EE5valueEvE4typeEPSF_.exit.i.i: ; preds = %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #30
  br label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEED2Ev.exit

_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEED2Ev.exit: ; preds = %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEED2Ev.exit, %_ZNKSt14default_deleteIA_PKN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEclISA_EENSt9enable_ifIXsr14is_convertibleIPA_T_PSB_EE5valueEvE4typeEPSF_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE15reduceWithIndexINS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_bm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2, i64 noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %5 = alloca %"struct.openvdb::v13_0::tree::NodeList<const openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<openvdb::v13_0::ValueMask, 3>, 4>, 5>>::NodeReducer.1095", align 8 ; 8 uses
  %6 = alloca %"class.openvdb::v13_0::tree::NodeList<const openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<openvdb::v13_0::ValueMask, 3>, 4>, 5>>::NodeRange", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr null, ptr %5, align 8, !tbaa !5101
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !2041
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5102)
  %i.b = load i64, ptr %0, align 8, !tbaa !1859, !noalias !5102 ; 3 uses
  store i64 %i.b, ptr %6, align 8, !tbaa !1880, !alias.scope !5102
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !1881, !alias.scope !5102
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %3, ptr %i.d, align 8, !tbaa !1882, !alias.scope !5102
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %0, ptr %i.e, align 8, !tbaa !1883, !alias.scope !5102
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal17ActiveTileCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEE3runERKSF_RSS_RSU_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEENSA_11OpWithIndexEE3runERKNSA_9NodeRangeEb.exit unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEENSA_11OpWithIndexEE3runERKNSA_9NodeRangeEb.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1894
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2030 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2031
  %.promoted.i.i = load i64, ptr %i.i, align 8, !tbaa !1687
  br label %vector.ph

vector.ph:                                        ; preds = %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i.i, %.lr.ph.i.i
  %i.l = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.aa, %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i.i ]
  %.sroa.5.05.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ac, %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.sroa.5.05.i.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1593
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 266240
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi10 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %i.p = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.p ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !513
  %wide.load11 = load <2 x i64>, ptr %i.q, align 8, !tbaa !513
  %i.r = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.s = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load11)
  %i.t = trunc nuw nsw <2 x i64> %i.r to <2 x i32>
  %i.u = trunc nuw nsw <2 x i64> %i.s to <2 x i32>
  %i.v = add <2 x i32> %vec.phi, %i.t             ; 2 uses
  %i.w = add <2 x i32> %vec.phi10, %i.u           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, 512
  br i1 %i.x, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i.i, label %vector.body, !llvm.loop !5100

_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11OpWithIndex4evalINS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_RNSA_9NodeRange8IteratorE.exit.i.i: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.w, %i.v
  %i.y = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.z = zext i32 %i.y to i64
  %i.aa = add i64 %i.l, %i.z                      ; 2 uses
  store i64 %i.aa, ptr %i.i, align 8, !tbaa !1687
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.5.05.i.i
  store i8 1, ptr %i.ab, align 1, !tbaa !514
  %i.ac = add nuw i64 %.sroa.5.05.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ac, %i.b
  br i1 %exitcond.not.i.i, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEENSA_11OpWithIndexEE3runERKNSA_9NodeRangeEb.exit.thread, label %vector.ph, !llvm.loop !121

end_hunk_5
