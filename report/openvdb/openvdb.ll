Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/openvdb?download=true
inline.NumInlined: 112558
inline.NumDeleted: 36881
loop-unroll.NumCompletelyUnrolled: 380
loop-unroll.NumRuntimeUnrolled: 183
loop-unroll.NumUnrolled: 1352
begin_hunk_0_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_12start_reduceIN7openvdb5v13_04tree8NodeListIKNSB_8LeafNodeIlLj3EEEE9NodeRangeENSG_11NodeReducerINSA_5tools14count_internal18ActiveVoxelCountOpINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSO_ISE_Lj4EEELj5EEEEEEEEENSG_11OpWithIndexEEEKNS1_16auto_partitionerEEESH_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !3633 ; 2 uses
  %i.eh = load i64, ptr %i.ee, align 8, !tbaa !3632 ; 2 uses
  %i.ei = icmp ult i64 %i.eg, %i.eh
  br i1 %i.ei, label %.lr.ph.i.i.i.i.i.i15, label %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIlLj3EEEE9NodeRangeENSA_11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit19

.lr.ph.i.i.i.i.i.i15:                             ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIlLj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread
  %i.ej = load ptr, ptr %i.ad, align 32, !tbaa !3675
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !3630 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !3682, !nonnull !1155, !align !1655
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !3625
  %.promoted.i.i.i.i.i.i16 = load i64, ptr %i.el, align 8, !tbaa !3360
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i15
  %i.eq = phi i64 [ %.promoted.i.i.i.i.i.i16, %.lr.ph.i.i.i.i.i.i15 ], [ %op.rdx67, %bb.k ]
  %.sroa.5.05.i.i.i.i.i.i17 = phi i64 [ %i.eg, %.lr.ph.i.i.i.i.i.i15 ], [ %i.ex, %bb.k ] ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.sroa.5.05.i.i.i.i.i.i17
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !3395
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load <8 x i64>, ptr %i.et, align 8, !tbaa !1156
  %i.ev = call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.eu)
  %i.ew = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.ev)
  %op.rdx67 = add i64 %i.ew, %i.eq                ; 2 uses
  store i64 %op.rdx67, ptr %i.el, align 8, !tbaa !3360
  %i.ex = add nuw i64 %.sroa.5.05.i.i.i.i.i.i17, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i18 = icmp eq i64 %i.ex, %i.eh
  br i1 %exitcond.not.i.i.i.i.i.i18, label %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIlLj3EEEE9NodeRangeENSA_11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit19, label %bb.k, !llvm.loop !348

_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIlLj3EEEE9NodeRangeENSA_11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit19: ; preds = %bb.k, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIlLj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread
  %i.ey = add i8 %i.ed, -1
  %i.ez = add nuw i8 %i.ec, 7
  %i.fa = and i8 %i.ez, 7
  br label %thread-pre-split26

thread-pre-split26:                               ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIlLj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIlLj3EEEE9NodeRangeENSA_11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit19
  %i.fb = phi i8 [ %i.ey, %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIlLj3EEEE9NodeRangeENSA_11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit19 ], [ %i.bt, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIlLj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.fc = phi i8 [ %i.fa, %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIlLj3EEEE9NodeRangeENSA_11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit19 ], [ %i.bu, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIlLj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit ]
  %i.fd = icmp eq i8 %i.fb, 0
  br i1 %i.fd, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIlLj3EEEE9NodeRangeELh8EED2Ev.exit25, label %bb.l

bb.l:                                             ; preds = %.noexc, %thread-pre-split26
  %i.fe = phi i8 [ %i.dp, %.noexc ], [ %i.ah, %thread-pre-split26 ]
  %i.ff = phi i8 [ %i.dn, %.noexc ], [ %i.fb, %thread-pre-split26 ]
  %i.fg = phi i8 [ %i.cj, %.noexc ], [ %i.fc, %thread-pre-split26 ]
  %i.fh = load ptr, ptr %3, align 8, !tbaa !1458  ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 15
  %i.fj = load atomic i8, ptr %i.fi monotonic, align 1
  %i.fk = icmp eq i8 %i.fj, -1
  br i1 %i.fk, label %bb.m, label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

bb.m:                                             ; preds = %bb.l
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !1126
  br label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i: ; preds = %bb.m, %bb.l
  %.0.i.i = phi ptr [ %i.fm, %bb.m ], [ %i.fh, %bb.l ]
  %i.fn = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.fn, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIlLj3EEEE9NodeRangeELh8EED2Ev.exit25, label %bb.f, !llvm.loop !13960

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIlLj3EEEE9NodeRangeELh8EED2Ev.exit25: ; preds = %thread-pre-split26, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIlLj3EEEE9NodeRangeENSA_11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit

_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIlLj3EEEE9NodeRangeENSA_11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit: ; preds = %bb.d, %bb.c, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIlLj3EEEE9NodeRangeELh8EED2Ev.exit25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19fold_treeINS1_19reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS6_8LeafNodeIlLj3EEEE11NodeReducerINS5_5tools14count_internal18ActiveVoxelCountOpINS6_4TreeINS6_8RootNodeINS6_12InternalNodeINSI_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEEEEEvPNS1_4nodeERKNS1_14execution_dataE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = atomicrmw sub ptr %i.a, i32 1 seq_cst, align 4
  %i.c = add i32 %i.b, -1
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %_ZN3tbb6detail2d112wait_context7releaseEj.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.019 = phi ptr [ %i.e, %bb.g ], [ %0, %bb.a ]  ; 9 uses
  %i.e = load ptr, ptr %.019, align 8, !tbaa !1446 ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = load ptr, ptr %1, align 8, !tbaa !1458   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.019, i64 56 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !3680, !range !1154, !noundef !1155
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIlLj3EEEE11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEEE4joinEPNS1_18task_group_contextE.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %i.k = load atomic i8, ptr %i.j monotonic, align 1
  %i.l = icmp eq i8 %i.k, -1
  br i1 %i.l, label %bb.d, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1126
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %i.n, %bb.d ], [ %i.f, %bb.c ]
  %i.o = tail call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i)
  br i1 %i.o, label %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIlLj3EEEE11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEEE4joinEPNS1_18task_group_contextE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %.019, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !13961, !nonnull !1155, !align !1655
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3630 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.019, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3630
  %i.v = load i64, ptr %i.u, align 8, !tbaa !3360
  %i.w = load i64, ptr %i.s, align 8, !tbaa !3360
  %i.x = add i64 %i.w, %i.v
  store i64 %i.x, ptr %i.s, align 8, !tbaa !3360
  br label %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIlLj3EEEE11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEEE4joinEPNS1_18task_group_contextE.exit

_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIlLj3EEEE11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEEE4joinEPNS1_18task_group_contextE.exit: ; preds = %bb.b, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.019, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1442
  %i.aa = load i8, ptr %i.g, align 8, !tbaa !3680, !range !1154, !noundef !1155
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIlLj3EEEE11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEEE4joinEPNS1_18task_group_contextE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.019, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !3512 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %bb.g, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit.i.i.i.i: ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 8) #35
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit.i.i.i.i, %bb.f, %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIlLj3EEEE11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEEE4joinEPNS1_18task_group_contextE.exit
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
define linkonce_odr void @_ZN7openvdb5v13_04tree18DynamicNodeManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEELj3EE13reduceTopDownINS0_5tools14count_internal20InactiveVoxelCountOpISB_EEEEvRT_bmm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.openvdb::v13_0::tree::ReduceFilterOp.2087", align 8 ; 11 uses
  %6 = alloca %"struct.openvdb::v13_0::tree::ReduceFilterOp.2087", align 8 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !3590, !nonnull !1155, !align !1655 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1302 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  %.not3.i.i.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not3.i.i.i.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE14cbeginValueOffEv.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.b
  %.sroa.2.0.i.i = phi ptr [ %i.k, %bb.b ], [ %i.c, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i.i, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3354
  %i.g = icmp ne ptr %i.f, null
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i.i, i64 64
  %i.i = load i8, ptr %i.h, align 8, !range !1154
  %i.j = trunc nuw i8 %i.i to i1
  %.not2.i.i.i.i = select i1 %i.g, i1 true, i1 %i.j
  br i1 %.not2.i.i.i.i, label %bb.b, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE14cbeginValueOffEv.exit.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.k = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i.i) #36 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE14cbeginValueOffEv.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !13962

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE14cbeginValueOffEv.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i, %bb.a
  %.sroa.2.1.i.i = phi ptr [ %i.c, %bb.a ], [ %.sroa.2.0.i.i, %.lr.ph.i.i.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %.not10.i = icmp eq ptr %.sroa.2.1.i.i, %i.d
  br i1 %.not10.i, label %_ZN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEclERKSC_m.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE14cbeginValueOffEv.exit.i
  %.promoted.i = load i64, ptr %1, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %.pre12.i = load i64, ptr %i.l, align 8, !tbaa !1156
  br label %bb.c

bb.c:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueOffPredEKlEppEv.exit.i, %.lr.ph.i
  %7 = phi i64 [ %.pre12.i, %.lr.ph.i ], [ %8, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueOffPredEKlEppEv.exit.i ] ; 2 uses
  %.sroa.5.011.i = phi ptr [ %.sroa.2.1.i.i, %.lr.ph.i ], [ %.sroa.5.3.i, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueOffPredEKlEppEv.exit.i ] ; 2 uses
  %i.m = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.r, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueOffPredEKlEppEv.exit.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.5.011.i, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1156
  %i.p = icmp eq i64 %i.o, %7
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = add i64 %i.m, 68719476736                ; 2 uses
  store i64 %i.q, ptr %1, align 8, !tbaa !3370
  %.pre.i = load i64, ptr %i.l, align 8, !tbaa !1156
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %8 = phi i64 [ %.pre.i, %bb.d ], [ %7, %bb.c ]
  %i.r = phi i64 [ %i.q, %bb.d ], [ %i.m, %bb.c ]
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.5.011.i) #36 ; 3 uses
  %.not3.i.i.i3.i = icmp eq ptr %i.s, %i.d
  br i1 %.not3.i.i.i3.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueOffPredEKlEppEv.exit.i, label %.lr.ph.i.i.i4.i

.lr.ph.i.i.i4.i:                                  ; preds = %bb.e, %bb.f
  %.sroa.5.2.i = phi ptr [ %i.z, %bb.f ], [ %i.s, %bb.e ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.5.2.i, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3354
  %i.v = icmp ne ptr %i.u, null
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.5.2.i, i64 64
  %i.x = load i8, ptr %i.w, align 8, !range !1154
  %i.y = trunc nuw i8 %i.x to i1
  %.not2.i.i.i5.i = select i1 %i.v, i1 true, i1 %i.y
  br i1 %.not2.i.i.i5.i, label %bb.f, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueOffPredEKlEppEv.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i.i4.i
  %i.z = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.5.2.i) #36 ; 3 uses
  %.not.i.i.i6.i = icmp eq ptr %i.z, %i.d
  br i1 %.not.i.i.i6.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueOffPredEKlEppEv.exit.i, label %.lr.ph.i.i.i4.i, !llvm.loop !13962

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueOffPredEKlEppEv.exit.i: ; preds = %bb.f, %.lr.ph.i.i.i4.i, %bb.e
  %.sroa.5.3.i = phi ptr [ %i.s, %bb.e ], [ %i.z, %bb.f ], [ %.sroa.5.2.i, %.lr.ph.i.i.i4.i ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.5.3.i, %i.d
  br i1 %.not.i, label %_ZN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEclERKSC_m.exit, label %bb.c, !llvm.loop !13963

_ZN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEclERKSC_m.exit: ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE9ValueIterIKS8_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_12ValueOffPredEKlEppEv.exit.i, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE14cbeginValueOffEv.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ab = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE16initRootChildrenIKNS1_8RootNodeIS7_EEEEbRT_(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(72) %i.a)
  br i1 %i.ab, label %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEC2ERSF_m.exit, label %bb.s

_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEC2ERSF_m.exit: ; preds = %_ZN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEclERKSC_m.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !3591 ; 2 uses
  store ptr null, ptr %5, align 8, !tbaa !3556
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.ad, align 8, !tbaa !3684
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13968)
  %i.ae = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #32 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ae, i8 0, i64 %i.ac, i1 false), !noalias !13968
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !1726, !alias.scope !13968
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !3685
  invoke void @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE15reduceWithIndexINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS7_EEEEEEEEEEvRT_bm(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext %2, i64 noundef %4)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEC2ERSF_m.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ai = xor i1 %2, true                         ; 2 uses
  %i.aj = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIlLj3EEELj4EEEE16initNodeChildrenINS2_IKNS3_IS6_Lj5EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEEEEbRT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext %i.ai)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %i.aj, label %bb.j, label %bb.r

bb.i:                                             ; preds = %bb.g, %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEC2ERSF_m.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.al = load i64, ptr %i.ah, align 8, !tbaa !3611 ; 2 uses
  store ptr null, ptr %6, align 8, !tbaa !3556
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.am, align 8, !tbaa !3684
  call void @llvm.experimental.noalias.scope.decl(metadata !13969)
  %i.an = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.al) #32
          to label %bb.l unwind label %bb.k       ; 3 uses

bb.k:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.an, i8 0, i64 %i.al, i1 false), !noalias !13969
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !1726, !alias.scope !13969
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !3685
  invoke void @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIlLj3EEELj4EEEE15reduceWithIndexINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS3_IS6_Lj5EEEEEEEEEEEEEvRT_bm(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext %2, i64 noundef %4)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.as = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeIlLj3EEEE16initNodeChildrenINS2_IKNS1_12InternalNodeIS4_Lj4EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS8_IS9_Lj5EEEEEEEEEEEEEbRT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext %i.ai)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  br i1 %i.as, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.p, %bb.m, %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #26
  br label %.body

bb.p:                                             ; preds = %bb.n
  invoke void @_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeIlLj3EEEE15reduceWithIndexINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSD_IS4_Lj4EEELj5EEEEEEEEEEEvRT_bm(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2, i64 noundef %3)
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !1726 ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.au, null
  br i1 %.not.i.i22, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.au) #35
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i, %bb.q
  %i.av = load ptr, ptr %6, align 8, !tbaa !3564  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.av, null
  br i1 %.not.i1.i, label %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEED2Ev.exit, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit.i.i23

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit.i.i23: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 8) #35
  br label %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEED2Ev.exit

_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i, %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.r

bb.r:                                             ; preds = %bb.h, %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEED2Ev.exit
  %i.aw = load ptr, ptr %i.af, align 8, !tbaa !1726 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i25, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i27, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i26

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i26: ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.aw) #35
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i27

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i27: ; preds = %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i26, %bb.r
  %i.ax = load ptr, ptr %5, align 8, !tbaa !3564  ; 2 uses
  %.not.i1.i28 = icmp eq ptr %i.ax, null
  br i1 %.not.i1.i28, label %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEED2Ev.exit31, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit.i.i29

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit.i.i29: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i27
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef 8) #35
  br label %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEED2Ev.exit31

_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEED2Ev.exit31: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i27, %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.s

bb.s:                                             ; preds = %_ZN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEclERKSC_m.exit, %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEED2Ev.exit31
  ret void

.body:                                            ; preds = %bb.k, %bb.o
  %.pn = phi { ptr, i32 } [ %i.at, %bb.o ], [ %i.ao, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %common.resume

common.resume:                                    ; preds = %.body, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ak, %bb.i ]
  call void @_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE15reduceWithIndexINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS7_EEEEEEEEEEvRT_bm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2, i64 noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %5 = alloca %"struct.openvdb::v13_0::tree::NodeList<const openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<long, 3>, 4>, 5>>::NodeReducer.2090", align 8 ; 9 uses
  %6 = alloca %"class.openvdb::v13_0::tree::NodeList<const openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<long, 3>, 4>, 5>>::NodeRange", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr null, ptr %5, align 8, !tbaa !3688
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !3695
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13972)
  %i.b = load i64, ptr %0, align 8, !tbaa !3591, !noalias !13972
  store i64 %i.b, ptr %6, align 8, !tbaa !3606, !alias.scope !13972
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !3607, !alias.scope !13972
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %3, ptr %i.d, align 8, !tbaa !3608, !alias.scope !13972
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %0, ptr %i.e, align 8, !tbaa !3609, !alias.scope !13972
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeIlLj3EEELj4EEELj5EEEE9NodeRangeENSD_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeISB_EEEEEEEENSD_11OpWithIndexEEEKNS1_16auto_partitionerEE3runERKSE_RSR_RST_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS7_EEEEEEEENS9_11OpWithIndexEE3runERKNS9_9NodeRangeEb.exit

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS7_EEEEEEEENS9_11OpWithIndexEEclERKNS9_9NodeRangeE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS7_EEEEEEEENS9_11OpWithIndexEE3runERKNS9_9NodeRangeEb.exit unwind label %bb.e

_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS7_EEEEEEEENS9_11OpWithIndexEE3runERKNS9_9NodeRangeEb.exit: ; preds = %.noexc, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.f = load ptr, ptr %5, align 8, !tbaa !3696   ; 4 uses
end_hunk_0
