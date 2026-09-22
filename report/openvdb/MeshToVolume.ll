Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/MeshToVolume?download=true
inline.NumInlined: 61374
inline.NumDeleted: 19461
loop-unroll.NumCompletelyUnrolled: 235
loop-unroll.NumRuntimeUnrolled: 314
loop-unroll.NumUnrolled: 949
begin_hunk_0_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENSD_26QuadAndTriangleDataAdapterINSC_4math4Vec3IfEENSS_IjEEEEEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a

bb.i:                                             ; preds = %.thread, %bb.h
  %i.bi = load i8, ptr %i.l, align 1, !tbaa !1376
  %i.bj = zext i8 %i.bi to i64                    ; 2 uses
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bj
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.bm, ptr %i.a, align 1, !tbaa !570
  call void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS7_26QuadAndTriangleDataAdapterINS6_4math4Vec3IfEENSM_IjEEEEEEKNS1_16auto_partitionerEE15offer_work_implIJRST_RKS4_RhEEEvRNS1_14execution_dataEDpOT_(ptr noundef nonnull align 64 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 64 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 1 dereferenceable(1) %i.a), !inline_history !8508
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bn = load i8, ptr %i.m, align 2, !tbaa !1374
  %i.bo = add i8 %i.bn, -1                        ; 2 uses
  store i8 %i.bo, ptr %i.m, align 2, !tbaa !1374
  %i.bp = load i8, ptr %i.l, align 1, !tbaa !1376
  %i.bq = add i8 %i.bp, 1
  %i.br = and i8 %i.bq, 7
  store i8 %i.br, ptr %i.l, align 1, !tbaa !1376
  br label %thread-pre-split18

bb.j:                                             ; preds = %bb.h
  %i.bs = load i8, ptr %4, align 8, !tbaa !1375
  %i.bt = zext i8 %i.bs to i64                    ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !570
  %i.bw = icmp ult i8 %i.bv, %i.bg
  br i1 %i.bw, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit: ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.bt ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !631
  %i.ca = load i64, ptr %i.bx, align 8, !tbaa !629
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !630
  %i.cd = sub i64 %i.ca, %i.cc
  %i.ce = icmp ult i64 %i.bz, %i.cd
  br i1 %i.ce, label %thread-pre-split18, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.j, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre21, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.bt, %bb.j ], [ %i.bt, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.pre-phi
  call void @_ZNK7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS1_26QuadAndTriangleDataAdapterINS0_4math4Vec3IfEENSG_IjEEEEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.cf)
  %i.cg = load i8, ptr %i.m, align 2, !tbaa !1374
  %i.ch = add i8 %i.cg, -1                        ; 2 uses
  store i8 %i.ch, ptr %i.m, align 2, !tbaa !1374
  %i.ci = load i8, ptr %4, align 8, !tbaa !1375
  %i.cj = add i8 %i.ci, 7
  %i.ck = and i8 %i.cj, 7
  store i8 %i.ck, ptr %4, align 8, !tbaa !1375
  br label %thread-pre-split18

thread-pre-split18:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread, %bb.i
  %i.cl = phi i8 [ %i.bo, %bb.i ], [ %i.ch, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread ], [ %.pr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.cm = icmp eq i8 %i.cl, 0
  br i1 %i.cm, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit17, label %bb.k

bb.k:                                             ; preds = %thread-pre-split18
  %i.cn = load ptr, ptr %3, align 8, !tbaa !1199  ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 15
  %i.cp = load atomic i8, ptr %i.co monotonic, align 1
  %i.cq = icmp eq i8 %i.cp, -1
  br i1 %i.cq, label %bb.l, label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

bb.l:                                             ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !570
  br label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i: ; preds = %bb.l, %bb.k
  %.0.i.i = phi ptr [ %i.cs, %bb.l ], [ %i.cn, %bb.k ]
  %i.ct = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.ct, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit17, label %thread-pre-split, !llvm.loop !8509

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit17: ; preds = %thread-pre-split18, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.m

bb.m:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit17, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS7_26QuadAndTriangleDataAdapterINS6_4math4Vec3IfEENSM_IjEEEEEEKNS1_16auto_partitionerEE15offer_work_implIJRST_RNS0_2d05splitEEEEvRNS1_14execution_dataEDpOT_(ptr noundef nonnull align 64 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 64 dereferenceable(168) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr null, ptr %4, align 8, !tbaa !760
  %i.a = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1), !inline_history !8510 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS7_26QuadAndTriangleDataAdapterINS6_4math4Vec3IfEENSM_IjEEEEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.a, align 64, !tbaa !545
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = load i64, ptr %i.c, align 64, !tbaa !629 ; 2 uses
  store i64 %i.e, ptr %i.d, align 64, !tbaa !629
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !630  ; 2 uses
  %i.i = sub i64 %i.e, %i.h
  %i.j = lshr i64 %i.i, 1
  %i.k = add i64 %i.j, %i.h                       ; 2 uses
  store i64 %i.k, ptr %i.c, align 64, !tbaa !629
  store i64 %i.k, ptr %i.f, align 8, !tbaa !630
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.n = load i64, ptr %i.m, align 16, !tbaa !631
  store i64 %i.n, ptr %i.l, align 16, !tbaa !631
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 32, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.t = load ptr, ptr %i.s, align 64, !tbaa !578 ; 2 uses
  %i.u = load <2 x ptr>, ptr %i.r, align 8, !tbaa !1088
  store <2 x ptr> %i.u, ptr %i.q, align 8, !tbaa !1088
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS8_4tree4TreeINSC_8RootNodeINSC_12InternalNodeINSF_INSC_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS9_26QuadAndTriangleDataAdapterINS8_4math4Vec3IfEENSO_IjEEEEEEKNS1_16auto_partitionerEEEJRSV_RNS0_2d05splitERS2_EEEPT_RNS1_14execution_dataEDpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !570
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = load i32, ptr %i.v, align 4, !tbaa !543
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !543
  br label %_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS8_4tree4TreeINSC_8RootNodeINSC_12InternalNodeINSF_INSC_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS9_26QuadAndTriangleDataAdapterINS8_4math4Vec3IfEENSO_IjEEEEEEKNS1_16auto_partitionerEEEJRSV_RNS0_2d05splitERS2_EEEPT_RNS1_14execution_dataEDpOT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.z = atomicrmw volatile add ptr %i.v, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS8_4tree4TreeINSC_8RootNodeINSC_12InternalNodeINSF_INSC_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS9_26QuadAndTriangleDataAdapterINS8_4math4Vec3IfEENSO_IjEEEEEEKNS1_16auto_partitionerEEEJRSV_RNS0_2d05splitERS2_EEEPT_RNS1_14execution_dataEDpOT0_.exit

_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS8_4tree4TreeINSC_8RootNodeINSC_12InternalNodeINSF_INSC_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS9_26QuadAndTriangleDataAdapterINS8_4math4Vec3IfEENSO_IjEEEEEEKNS1_16auto_partitionerEEEJRSV_RNS0_2d05splitERS2_EEEPT_RNS1_14execution_dataEDpOT0_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !3197
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 16, !tbaa !1186
  %i.ae = lshr i64 %i.ad, 1                       ; 2 uses
  store i64 %i.ae, ptr %i.ac, align 16, !tbaa !1186
  store i64 %i.ae, ptr %i.ab, align 16, !tbaa !1186
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i32 2, ptr %i.af, align 8, !tbaa !1184
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 156
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !1185
  store i8 %i.ai, ptr %i.ag, align 4, !tbaa !1185
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.ak = load i64, ptr %4, align 8, !tbaa !766
  store i64 %i.ak, ptr %i.aj, align 32, !tbaa !766
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.am = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) ; 6 uses
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !1197
  store ptr %i.an, ptr %i.am, align 8, !tbaa !1190
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 2, ptr %i.ao, align 8, !tbaa !1191
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.aq = load i64, ptr %4, align 8, !tbaa !766
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !766
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i8 0, ptr %i.ar, align 8, !tbaa !1198
  store ptr %i.am, ptr %i.al, align 8, !tbaa !3197
  store ptr %i.am, ptr %i.aa, align 8, !tbaa !3197
  %i.as = load ptr, ptr %1, align 8, !tbaa !1199
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(168) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS1_26QuadAndTriangleDataAdapterINS0_4math4Vec3IfEENSG_IjEEEEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 5 uses
  %3 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 5 uses
  %4 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 5 uses
  %5 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 3 uses
  %6 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 5 uses
  %7 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 5 uses
  %8 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 5 uses
  %9 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 3 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i8, align 1                       ; 3 uses
  %10 = alloca %"class.tbb::detail::d2::concurrent_hash_map<openvdb::v13_0::tree::ValueAccessorBase<const openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<int, 3>, 4>, 5>>>, true> *, bool>::accessor", align 8 ; 11 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %11 = alloca %"class.tbb::detail::d2::concurrent_hash_map<openvdb::v13_0::tree::ValueAccessorBase<const openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>, 5>>>, true> *, bool>::accessor", align 8 ; 11 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %12 = alloca %"class.openvdb::v13_0::tree::ValueAccessorImpl.2060", align 8 ; 20 uses
  %13 = alloca %"class.openvdb::v13_0::tree::ValueAccessorImpl.2062", align 8 ; 26 uses
  %i.h = alloca float, align 4                    ; 5 uses
  %14 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 16 uses
  %15 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 10 uses
  %16 = alloca %"struct.openvdb::v13_0::tree::LeafNode<float, 3>::ValueIter", align 8 ; 6 uses
  %17 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 5 uses
  %18 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !815  ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %12, align 8, !tbaa !545
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !3199
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store ptr null, ptr %11, align 8, !tbaa !1153
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i8 0, ptr %i.l, align 8, !tbaa !1152
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  store ptr %12, ptr %i.g, align 8, !tbaa !3200
  %i.o = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6lookupILb1ESI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEEbRKT0_S13_PNSR_14const_accessorEbT1_SU_(ptr noundef nonnull align 8 dereferenceable(570) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %11, i1 noundef zeroext true, ptr noundef nonnull @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE31allocate_node_default_constructISI_EEPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERKT_PKb, ptr noundef null)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i unwind label %bb.e ; 0 uses

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  store ptr null, ptr %i.m, align 8, !tbaa !3203
  %i.p = load ptr, ptr %11, align 8, !tbaa !1153  ; 3 uses
  %.not.i.i3.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i3.i.i.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i
  store ptr null, ptr %11, align 8, !tbaa !1153
  %i.q = load i8, ptr %i.l, align 8, !tbaa !1152, !range !804, !noundef !805
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = atomicrmw and ptr %i.p, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.t = atomicrmw sub ptr %i.p, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  store ptr null, ptr %i.m, align 8, !tbaa !3203
  %i.v = load ptr, ptr %11, align 8, !tbaa !1153  ; 3 uses
  %.not.i.i4.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i4.i.i.i, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %11, align 8, !tbaa !1153
  %i.w = load i8, ptr %i.l, align 8, !tbaa !1152, !range !804, !noundef !805
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = atomicrmw and ptr %i.v, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.z = atomicrmw sub ptr %i.v, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i

common.resume:                                    ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit220, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.u, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ], [ %.pn133.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit220 ]
  resume { ptr, i32 } %common.resume.op

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i: ; preds = %bb.h, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %common.resume

bb.i:                                             ; preds = %bb.d, %bb.c, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %12, align 8, !tbaa !545
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 2 uses
  store i64 9223372034707292159, ptr %i.ab, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !570
  %.06.i.i.i.i.ptr.1.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 36
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i.i, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %12, i64 44
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i, align 4, !tbaa !570
  %.06.i.i.i.i.ptr.2.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 48
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i.i, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %12, i64 56
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i, align 8, !tbaa !570
  store ptr null, ptr %i.aa, align 8, !tbaa !3205
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 32, i1 false)
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !3199 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERSC_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !1124
  br label %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERSC_.exit

_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERSC_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !816 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %13, align 8, !tbaa !545
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !3207
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr null, ptr %10, align 8, !tbaa !1153
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i8 0, ptr %i.ai, align 8, !tbaa !1152
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store ptr %13, ptr %i.f, align 8, !tbaa !3208
  %i.al = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6lookupILb1ESI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEEbRKT0_S13_PNSR_14const_accessorEbT1_SU_(ptr noundef nonnull align 8 dereferenceable(570) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %10, i1 noundef zeroext true, ptr noundef nonnull @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE31allocate_node_default_constructISI_EEPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERKT_PKb, ptr noundef null)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i unwind label %bb.n ; 0 uses

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i: ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERSC_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  store ptr null, ptr %i.aj, align 8, !tbaa !3211
  %i.am = load ptr, ptr %10, align 8, !tbaa !1153 ; 3 uses
  %.not.i.i3.i.i.i146 = icmp eq ptr %i.am, null
  br i1 %.not.i.i3.i.i.i146, label %bb.r, label %bb.k

bb.k:                                             ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i
  store ptr null, ptr %10, align 8, !tbaa !1153
  %i.an = load i8, ptr %i.ai, align 8, !tbaa !1152, !range !804, !noundef !805
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ap = atomicrmw and ptr %i.am, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.aq = atomicrmw sub ptr %i.am, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.r

bb.n:                                             ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERSC_.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  store ptr null, ptr %i.aj, align 8, !tbaa !3211
  %i.as = load ptr, ptr %10, align 8, !tbaa !1153 ; 3 uses
  %.not.i.i4.i.i.i145 = icmp eq ptr %i.as, null
  br i1 %.not.i.i4.i.i.i145, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %10, align 8, !tbaa !1153
  %i.at = load i8, ptr %i.ai, align 8, !tbaa !1152, !range !804, !noundef !805
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.av = atomicrmw and ptr %i.as, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.aw = atomicrmw sub ptr %i.as, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i: ; preds = %bb.q, %bb.p, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.body

bb.r:                                             ; preds = %bb.m, %bb.l, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %13, align 8, !tbaa !545
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 3 uses
  store i64 9223372034707292159, ptr %i.ay, align 8
  %.sroa.6.0..sroa_idx.i.i147 = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i.i147, align 8, !tbaa !570
  %.06.i.i.i.i.ptr.1.i.i.i148 = getelementptr inbounds nuw i8, ptr %13, i64 36 ; 4 uses
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i.i148, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i149 = getelementptr inbounds nuw i8, ptr %13, i64 44 ; 4 uses
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i149, align 4, !tbaa !570
  %.06.i.i.i.i.ptr.2.i.i.i150 = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 3 uses
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i.i150, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i151 = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 3 uses
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i151, align 8, !tbaa !570
  store ptr null, ptr %i.ax, align 8, !tbaa !3213
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, i8 0, i64 32, i1 false)
  %i.ba = load ptr, ptr %i.ah, align 8, !tbaa !3207 ; 2 uses
  %.not.i.i152 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i152, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !1827
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store i32 0, ptr %14, align 8, !tbaa !543
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 4 uses
  store i32 0, ptr %i.bc, align 4, !tbaa !543
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  store i32 0, ptr %i.bd, align 8, !tbaa !543
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.bg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN3tbb6detail2d18ets_baseILNS1_18ets_key_usage_typeE1EE12table_lookupERb(ptr noundef nonnull align 8 dereferenceable(104) %i.bf, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
          to label %bb.u unwind label %bb.x       ; 7 uses

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !3195
  %.not335 = icmp eq ptr %i.bh, null
  br i1 %.not335, label %bb.v, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit

bb.v:                                             ; preds = %bb.u
  %i.bi = invoke noalias noundef nonnull dereferenceable(24576) ptr @_Znam(i64 noundef 24576) #30
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !3195 ; 2 uses
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !3195
  %.not.i.i153 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i153, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IdEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IdEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i: ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.bj) #32
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit

bb.x:                                             ; preds = %bb.t
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body157

bb.y:                                             ; preds = %bb.v
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body157

_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit: ; preds = %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IdEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i, %bb.w, %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 5 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1443
  %.not336 = icmp eq ptr %i.bn, null
  br i1 %.not336, label %bb.z, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EE5resetIPbvEEvT_.exit

bb.z:                                             ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit
  %i.bo = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znam(i64 noundef 512) #30
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !1443 ; 2 uses
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !1443
  %.not.i.i154 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i154, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EE5resetIPbvEEvT_.exit, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %bb.aa
  call void @_ZdaPv(ptr noundef nonnull %i.bp) #32
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EE5resetIPbvEEvT_.exit

bb.ab:                                            ; preds = %bb.z
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body157

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EE5resetIPbvEEvT_.exit: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit, %bb.aa, %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !630 ; 2 uses
  %i.bt = load i64, ptr %1, align 8, !tbaa !629   ; 2 uses
  %i.bu = icmp ult i64 %i.bs, %i.bt
  br i1 %i.bu, label %.lr.ph378, label %._crit_edge379

.lr.ph378:                                        ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EE5resetIPbvEEvT_.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 28
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.ce = getelementptr inbounds nuw i8, ptr %13, i64 52
  %i.cf = getelementptr inbounds nuw i8, ptr %13, i64 72 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.ag

._crit_edge379:                                   ; preds = %._crit_edge376, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EE5resetIPbvEEvT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %13, align 8, !tbaa !545
  %i.ci = load ptr, ptr %i.ah, align 8, !tbaa !3207 ; 2 uses
  %.not.i = icmp eq ptr %i.ci, null
  br i1 %.not.i, label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge379
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %13, ptr %i.d, align 8, !tbaa !3208
  %i.ck = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.cj, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i unwind label %bb.ad, !inline_history !3214 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit

bb.ad:                                            ; preds = %bb.ac
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #31, !inline_history !3214
  unreachable

_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit: ; preds = %._crit_edge379, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %12, align 8, !tbaa !545
  %i.cn = load ptr, ptr %i.k, align 8, !tbaa !3199 ; 2 uses
  %.not.i155 = icmp eq ptr %i.cn, null
  br i1 %.not.i155, label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %12, ptr %i.c, align 8, !tbaa !3200
  %i.cp = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.co, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i unwind label %bb.af, !inline_history !3215 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit

bb.af:                                            ; preds = %bb.ae
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #31, !inline_history !3215
  unreachable

_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit: ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  ret void

bb.ag:                                            ; preds = %.lr.ph378, %._crit_edge376
  %.0118377 = phi i64 [ %i.bs, %.lr.ph378 ], [ %i.us, %._crit_edge376 ] ; 2 uses
  %i.cs = load ptr, ptr %0, align 8, !tbaa !814
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.0118377
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1339 ; 10 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load atomic i32, ptr %i.cv seq_cst, align 4
  %.not.i.i156 = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i156, label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.cu)
          to label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i unwind label %bb.av

_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i: ; preds = %bb.ah, %bb.ag
  %i.cx = load ptr, ptr %i.cu, align 8, !tbaa !570 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.ai, label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE4dataEv.exit

bb.ai:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 12 ; 4 uses
  %i.da = atomicrmw xchg ptr %i.cz, i8 1 seq_cst, align 1
  %i.db = trunc i8 %i.da to i1
  br i1 %i.db, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ai, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i
  %.sroa.0.02.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i ], [ 1, %bb.ai ] ; 8 uses
  %i.dc = icmp slt i32 %.sroa.0.02.i.i.i.i, 17
  br i1 %i.dc, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i
  %i.dd = icmp sgt i32 %.sroa.0.02.i.i.i.i, 0
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.aj
  %xtraiter = and i32 %.sroa.0.02.i.i.i.i, 7      ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.01.i.i.i.i.i.i.prol = phi i32 [ %i.de, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.0.02.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.de = add nsw i32 %.01.i.i.i.i.i.i.prol, -1   ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !8511

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.01.i.i.i.i.i.i.unr = phi i32 [ %.sroa.0.02.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.de, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.df = icmp ult i32 %.sroa.0.02.i.i.i.i, 8
  br i1 %i.df, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.01.i.i.i.i.i.i = phi i32 [ %i.dg, %.lr.ph.i.i.i.i.i.i ], [ %.01.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.dg = add nsw i32 %.01.i.i.i.i.i.i, -8
  call void @llvm.x86.sse2.pause()
  %i.dh = icmp sgt i32 %.01.i.i.i.i.i.i, 8
  br i1 %i.dh, label %.lr.ph.i.i.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i, !llvm.loop !38

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.aj
  %i.di = shl i32 %.sroa.0.02.i.i.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i
  %i.dj = call noundef i32 @sched_yield() #23     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i: ; preds = %bb.ak, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i32 [ %i.di, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i ], [ %.sroa.0.02.i.i.i.i, %bb.ak ]
  %i.dk = atomicrmw xchg ptr %i.cz, i8 1 seq_cst, align 1
  %i.dl = trunc i8 %i.dk to i1
  br i1 %i.dl, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i, !llvm.loop !47

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i, %bb.ai
  %i.dm = load ptr, ptr %i.cu, align 8, !tbaa !570 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.al, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i

bb.al:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i
  %i.do = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #30
          to label %bb.am unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ; 2 uses

bb.am:                                            ; preds = %bb.al
  store ptr %i.do, ptr %i.cu, align 8, !tbaa !570
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i: ; preds = %bb.al
  %i.dp = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.cz release, align 1
  br label %.body157

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i: ; preds = %bb.am, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i
  %i.dq = phi ptr [ %i.do, %bb.am ], [ %i.dm, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i ]
  store atomic i8 0, ptr %i.cz release, align 4
  br label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE4dataEv.exit

_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE4dataEv.exit: ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i
  %i.dr = phi ptr [ %i.dq, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i ], [ %i.cx, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cu, i64 80 ; 3 uses
  %i.dt = invoke noundef ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %13, ptr noundef nonnull align 4 dereferenceable(12) %i.ds)
          to label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstLeafERKNS0_4math5CoordE.exit unwind label %bb.aw ; 6 uses

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstLeafERKNS0_4math5CoordE.exit: ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE4dataEv.exit
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load atomic i32, ptr %i.du seq_cst, align 4
  %.not.i.i160 = icmp eq i32 %i.dv, 0
  br i1 %.not.i.i160, label %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i, label %bb.an

bb.an:                                            ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstLeafERKNS0_4math5CoordE.exit
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.dt)
          to label %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i unwind label %bb.ax

_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i: ; preds = %bb.an, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstLeafERKNS0_4math5CoordE.exit
  %i.dw = load ptr, ptr %i.dt, align 8, !tbaa !570 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 12 ; 4 uses
  %i.dz = atomicrmw xchg ptr %i.dy, i8 1 seq_cst, align 1
  %i.ea = trunc i8 %i.dz to i1
  br i1 %i.ea, label %.lr.ph.i.i.i.i163, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i161

.lr.ph.i.i.i.i163:                                ; preds = %bb.ao, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i165
  %.sroa.0.02.i.i.i.i164 = phi i32 [ %.sroa.0.1.i.i.i.i166, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i165 ], [ 1, %bb.ao ] ; 8 uses
  %i.eb = icmp slt i32 %.sroa.0.02.i.i.i.i164, 17
  br i1 %i.eb, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i163
  %i.ec = icmp sgt i32 %.sroa.0.02.i.i.i.i164, 0
  br i1 %i.ec, label %.lr.ph.i.i.i.i.i.i168.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i167

.lr.ph.i.i.i.i.i.i168.preheader:                  ; preds = %bb.ap
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS1_26QuadAndTriangleDataAdapterINS0_4math4Vec3IfEENSG_IjEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i165

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i163
  %i.ei = call noundef i32 @sched_yield() #23     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i165

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i165: ; preds = %bb.aq, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i167
  %.sroa.0.1.i.i.i.i166 = phi i32 [ %i.eh, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i167 ], [ %.sroa.0.02.i.i.i.i164, %bb.aq ]
  %i.ej = atomicrmw xchg ptr %i.dy, i8 1 seq_cst, align 1
  %i.ek = trunc i8 %i.ej to i1
  br i1 %i.ek, label %.lr.ph.i.i.i.i163, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i161, !llvm.loop !47

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i161: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i165, %bb.ao
  %i.el = load ptr, ptr %i.dt, align 8, !tbaa !570 ; 2 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %bb.ar, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i

bb.ar:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i161
  %i.en = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #30
          to label %bb.as unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i162 ; 2 uses

bb.as:                                            ; preds = %bb.ar
  store ptr %i.en, ptr %i.dt, align 8, !tbaa !570
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i162: ; preds = %bb.ar
  %i.eo = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.dy release, align 1
  br label %.body157

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i: ; preds = %bb.as, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i161
  %i.ep = phi ptr [ %i.en, %bb.as ], [ %i.el, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i161 ]
  store atomic i8 0, ptr %i.dy release, align 4
  br label %bb.at

bb.at:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i
  %i.eq = phi ptr [ %i.ep, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i ], [ %i.dw, %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i ]
  %.sroa.0291.0.copyload = load i32, ptr %i.ds, align 8 ; 2 uses
  %.sroa.7293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 84 ; 2 uses
  %.sroa.7293.0.copyload = load i32, ptr %.sroa.7293.0..sroa_idx, align 4 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 88
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !570 ; 2 uses
  %i.er = add nsw i32 %.sroa.0291.0.copyload, 7
  %i.es = add i32 %.sroa.7293.0.copyload, 7
  %i.et = add nsw i32 %.sroa.10.0.copyload, 7
  %i.eu = load ptr, ptr %i.bm, align 8, !tbaa !1443
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.eu, i8 0, i64 512, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  invoke void @_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<float, 3>::ValueIter") align 8 %16, ptr noundef nonnull align 8 dereferenceable(96) %i.cu)
          to label %bb.au unwind label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.ev = load i32, ptr %i.bv, align 8, !tbaa !1228 ; 2 uses
  %i.ew = load ptr, ptr %i.bw, align 8, !tbaa !1229 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %.not337372 = icmp eq i32 %i.ev, 512
  br i1 %.not337372, label %._crit_edge376, label %.lr.ph375

.lr.ph375:                                        ; preds = %bb.au, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit
  %.sroa.5.0373 = phi i32 [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit ], [ %i.ev, %bb.au ] ; 5 uses
  %i.ex = zext i32 %.sroa.5.0373 to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.ex ; 3 uses
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !572 ; 2 uses
  %i.fa = fcmp olt float %i.ez, 0.000000e+00
  %i.fb = fcmp ogt float %i.ez, 7.500000e-01
  %or.cond = or i1 %i.fa, %i.fb
  br i1 %or.cond, label %.loopexit, label %bb.az

bb.av:                                            ; preds = %bb.ah
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %.body157

bb.aw:                                            ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE4dataEv.exit
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.body157

bb.ax:                                            ; preds = %bb.an
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.body157

bb.ay:                                            ; preds = %bb.at
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %.body157

bb.az:                                            ; preds = %.lr.ph375
  %i.fg = lshr i32 %.sroa.5.0373, 6
  %i.fh = lshr i32 %.sroa.5.0373, 3
  %i.fi = load i32, ptr %i.ds, align 8, !tbaa !543
  %i.fj = add nsw i32 %i.fi, %i.fg                ; 4 uses
  %i.fk = insertelement <2 x i32> poison, i32 %i.fh, i64 0
  %i.fl = insertelement <2 x i32> %i.fk, i32 %.sroa.5.0373, i64 1
  %i.fm = and <2 x i32> %i.fl, splat (i32 7)
  %i.fn = load <2 x i32>, ptr %.sroa.7293.0..sroa_idx, align 4, !tbaa !543
  %i.fo = add <2 x i32> %i.fn, %i.fm              ; 3 uses
  %i.fp = sitofp i32 %i.fj to double              ; 2 uses
  %i.fq = sitofp <2 x i32> %i.fo to <2 x double>  ; 3 uses
  %i.fr = add nsw i32 %i.fj, -1
  %i.fs = extractelement <2 x i32> %i.fo, i64 0   ; 3 uses
  %i.ft = add nsw i32 %i.fs, -1
  %i.fu = extractelement <2 x i32> %i.fo, i64 1   ; 3 uses
  %i.fv = add nsw i32 %i.fu, -1
  %.sroa.speculated16.i = call i32 @llvm.smax.i32(i32 %i.fr, i32 %.sroa.0291.0.copyload) ; 4 uses
  %.sroa.speculated11.i = call i32 @llvm.smax.i32(i32 %i.ft, i32 %.sroa.7293.0.copyload) ; 4 uses
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.fv, i32 %.sroa.10.0.copyload) ; 4 uses
  %i.fw = add nsw i32 %i.fj, 1
  %i.fx = add i32 %i.fs, 1
  %i.fy = add nsw i32 %i.fu, 1
  %.sroa.speculated16.i187 = call i32 @llvm.smin.i32(i32 %i.er, i32 %i.fw) ; 3 uses
  %.sroa.speculated11.i188 = call i32 @llvm.smin.i32(i32 %i.es, i32 %i.fx) ; 3 uses
  %.sroa.speculated.i189 = call i32 @llvm.smin.i32(i32 %i.et, i32 %i.fy) ; 3 uses
  store i32 %.sroa.speculated16.i, ptr %14, align 8, !tbaa !543
  %i.fz = icmp sgt i32 %.sroa.speculated16.i, %.sroa.speculated16.i187
  %i.ga = icmp sgt i32 %.sroa.speculated11.i, %.sroa.speculated11.i188
  %or.cond439 = select i1 %i.fz, i1 true, i1 %i.ga
  %.not350 = icmp sgt i32 %.sroa.speculated.i, %.sroa.speculated.i189
  %or.cond440 = select i1 %or.cond439, i1 true, i1 %.not350
  br i1 %or.cond440, label %.preheader.preheader, label %.lr.ph355

.preheader.preheader:                             ; preds = %._crit_edge356.split, %bb.az
  %i.gb = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  br label %.preheader

.lr.ph355:                                        ; preds = %bb.az, %._crit_edge356.split
  %storemerge358 = phi i32 [ %i.kn, %._crit_edge356.split ], [ %.sroa.speculated16.i, %bb.az ]
  %i.gc = shl i32 %storemerge358, 6
  %i.gd = and i32 %i.gc, 448
  store i32 %.sroa.speculated11.i, ptr %i.bc, align 4, !tbaa !543
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph355, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge
  %storemerge338353 = phi i32 [ %.sroa.speculated11.i, %.lr.ph355 ], [ %i.kl, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge ]
  %i.ge = shl i32 %storemerge338353, 3
  %i.gf = and i32 %i.ge, 56
  %i.gg = or disjoint i32 %i.gf, %i.gd
  store i32 %.sroa.speculated.i, ptr %i.bd, align 8, !tbaa !543
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph, %bb.bh
  %storemerge339351 = phi i32 [ %.sroa.speculated.i, %.lr.ph ], [ %i.kj, %bb.bh ] ; 4 uses
  %i.gh = and i32 %storemerge339351, 7
  %i.gi = or disjoint i32 %i.gg, %i.gh            ; 2 uses
  %i.gj = zext nneg i32 %i.gi to i64              ; 3 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.gj ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !543
  %i.gm = icmp eq i32 %i.gl, -1
  br i1 %i.gm, label %bb.bh, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.gj
  %i.go = load float, ptr %i.gn, align 4, !tbaa !572
  %i.gp = fcmp olt float %i.go, -7.500000e-01
  br i1 %i.gp, label %bb.bc, label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  %i.gq = shl nuw nsw i32 %i.gi, 1                ; 2 uses
  %i.gr = load ptr, ptr %i.bm, align 8, !tbaa !1443
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gj ; 2 uses
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !673, !range !804, !noundef !805
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198_crit_edge, label %bb.bd

._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198_crit_edge: ; preds = %bb.bc
  %.pre391 = zext nneg i32 %i.gq to i64
  br label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198

bb.bd:                                            ; preds = %bb.bc
  store i8 1, ptr %i.gs, align 1, !tbaa !673
  %i.gv = load <2 x i32>, ptr %14, align 8, !tbaa !543
  %i.gw = sitofp <2 x i32> %i.gv to <2 x double>
  store <2 x double> %i.gw, ptr %15, align 16, !tbaa !595
  %i.gx = sitofp i32 %storemerge339351 to double
  store double %i.gx, ptr %i.bx, align 16, !tbaa !595
  %i.gy = load ptr, ptr %i.bg, align 8, !tbaa !3195
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.gz = load i32, ptr %i.gk, align 4, !tbaa !543
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !8526
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !8526
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !8526
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !8526
  %i.ha = sext i32 %i.gz to i64
  %i.hb = load ptr, ptr %i.by, align 8, !tbaa !817, !noalias !8526 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !1049, !noalias !8526 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !1051, !noalias !8526
  %i.hf = getelementptr inbounds nuw [12 x i8], ptr %i.he, i64 %i.ha ; 3 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !543, !noalias !8526
  %i.hh = zext i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [12 x i8], ptr %i.hc, i64 %i.hh ; 2 uses
  %i.hj = load <2 x float>, ptr %i.hi, align 4, !tbaa !572, !noalias !8526
  %i.hk = fpext <2 x float> %i.hj to <2 x double>
  store <2 x double> %i.hk, ptr %6, align 16, !tbaa !595, !noalias !8526
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !572, !noalias !8526
  %i.hn = fpext float %i.hm to double
  store double %i.hn, ptr %i.bz, align 16, !tbaa !595, !noalias !8526
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !543, !noalias !8526
  %i.hq = zext i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [12 x i8], ptr %i.hc, i64 %i.hq ; 2 uses
  %i.hs = load <2 x float>, ptr %i.hr, align 4, !tbaa !572, !noalias !8526
  %i.ht = fpext <2 x float> %i.hs to <2 x double>
  store <2 x double> %i.ht, ptr %7, align 16, !tbaa !595, !noalias !8526
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !572, !noalias !8526
  %i.hw = fpext float %i.hv to double
  store double %i.hw, ptr %i.ca, align 16, !tbaa !595, !noalias !8526
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !543, !noalias !8526
  %i.hz = zext i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [12 x i8], ptr %i.hc, i64 %i.hz ; 2 uses
  %i.ib = load <2 x float>, ptr %i.ia, align 4, !tbaa !572, !noalias !8526
  %i.ic = fpext <2 x float> %i.ib to <2 x double>
  store <2 x double> %i.ic, ptr %8, align 16, !tbaa !595, !noalias !8526
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ie = load float, ptr %i.id, align 4, !tbaa !572, !noalias !8526
  %i.if = fpext float %i.ie to double
  store double %i.if, ptr %i.cb, align 16, !tbaa !595, !noalias !8526
  invoke void @_ZN7openvdb5v13_04math29closestPointOnTriangleToPointERKNS1_4Vec3IdEES5_S5_S5_RS3_(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.ig = zext nneg i32 %i.gq to i64              ; 4 uses
  %i.ih = getelementptr inbounds nuw [24 x i8], ptr %i.gy, i64 %i.ig ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !8526
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !8526
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !8526
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !8526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ih, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %i.ii = load ptr, ptr %i.bg, align 8, !tbaa !3195
  %i.ij = getelementptr inbounds nuw [24 x i8], ptr %i.ii, i64 %i.ig ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 24 ; 2 uses
  %.sroa.9254.0.copyload256 = load double, ptr %i.bx, align 16
  %i.il = load <2 x double>, ptr %15, align 16
  %i.im = load <2 x double>, ptr %i.ih, align 8, !tbaa !595, !noalias !8527
  %i.in = fsub <2 x double> %i.il, %i.im          ; 5 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.ip = load double, ptr %i.io, align 8, !tbaa !595, !noalias !8527
  %i.iq = fsub double %.sroa.9254.0.copyload256, %i.ip ; 4 uses
  %i.ir = extractelement <2 x double> %i.in, i64 0 ; 2 uses
  store <2 x double> %i.in, ptr %i.ik, align 8
  %.sroa.9254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ij, i64 40 ; 2 uses
  store double %i.iq, ptr %.sroa.9254.0..sroa_idx, align 8
  %foldExtExtBinop = fmul <2 x double> %i.in, %i.in
  %i.is = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.it = call double @llvm.fmuladd.f64(double %i.ir, double %i.ir, double %i.is)
  %i.iu = call double @llvm.fmuladd.f64(double %i.iq, double %i.iq, double %i.it)
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.iu) ; 2 uses
  %i.iv = call noundef double @llvm.fabs.f64(double %sqrt.i.i)
  %i.iw = fcmp ogt double %i.iv, f0x3E7AD7F29ABCAF48
  br i1 %i.iw, label %bb.bf, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198

bb.bf:                                            ; preds = %bb.be
  %i.ix = fdiv double 1.000000e+00, %sqrt.i.i     ; 2 uses
  %i.iy = fmul double %i.iq, %i.ix
  %i.iz = insertelement <2 x double> poison, double %i.ix, i64 0
  %i.ja = shufflevector <2 x double> %i.iz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jb = fmul <2 x double> %i.in, %i.ja
  store <2 x double> %i.jb, ptr %i.ik, align 8, !tbaa !595
  store double %i.iy, ptr %.sroa.9254.0..sroa_idx, align 8, !tbaa !595
  br label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198

bb.bg:                                            ; preds = %bb.bd
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %.body157

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198: ; preds = %._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198_crit_edge, %bb.be, %bb.bf
  %.pre-phi = phi i64 [ %.pre391, %._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198_crit_edge ], [ %i.ig, %bb.be ], [ %i.ig, %bb.bf ]
  %i.jd = load ptr, ptr %i.bg, align 8, !tbaa !3195
  %i.je = getelementptr inbounds nuw [24 x i8], ptr %i.jd, i64 %.pre-phi ; 5 uses
  %i.jf = load double, ptr %i.je, align 8, !tbaa !595, !noalias !8528
  %i.jg = fsub double %i.fp, %i.jf                ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.ji = load <2 x double>, ptr %i.jh, align 8, !tbaa !595, !noalias !8528
  %i.jj = fsub <2 x double> %i.fq, %i.ji          ; 5 uses
  %i.jk = extractelement <2 x double> %i.jj, i64 0
  %foldExtExtBinop449 = fmul <2 x double> %i.jj, %i.jj
  %i.jl = extractelement <2 x double> %foldExtExtBinop449, i64 0
  %i.jm = call double @llvm.fmuladd.f64(double %i.jg, double %i.jg, double %i.jl)
  %i.jn = extractelement <2 x double> %i.jj, i64 1 ; 3 uses
  %i.jo = call double @llvm.fmuladd.f64(double %i.jn, double %i.jn, double %i.jm)
  %sqrt.i.i197 = call noundef double @llvm.sqrt.f64(double %i.jo) ; 2 uses
  %i.jp = call noundef double @llvm.fabs.f64(double %sqrt.i.i197)
  %i.jq = fcmp ogt double %i.jp, f0x3E7AD7F29ABCAF48 ; 3 uses
  %i.jr = fdiv double 1.000000e+00, %sqrt.i.i197  ; 2 uses
  %i.js = fmul double %i.jg, %i.jr
  %i.jt = insertelement <2 x double> poison, double %i.jr, i64 0
  %i.ju = shufflevector <2 x double> %i.jt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jv = fmul <2 x double> %i.jj, %i.ju          ; 2 uses
  %i.jw = extractelement <2 x double> %i.jv, i64 1
  %.sroa.19.0 = select i1 %i.jq, double %i.jw, double %i.jn
  %i.jx = extractelement <2 x double> %i.jv, i64 0
  %.sroa.11274.0 = select i1 %i.jq, double %i.jx, double %i.jk
  %.sroa.0270.0 = select i1 %i.jq, double %i.js, double %i.jg
  %i.jy = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !595
  %i.ka = getelementptr inbounds nuw i8, ptr %i.je, i64 32
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !595
  %i.kc = fmul double %i.kb, %.sroa.11274.0
  %i.kd = call double @llvm.fmuladd.f64(double %i.jz, double %.sroa.0270.0, double %i.kc)
  %i.ke = getelementptr inbounds nuw i8, ptr %i.je, i64 40
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !595
  %i.kg = call noundef double @llvm.fmuladd.f64(double %i.kf, double %.sroa.19.0, double %i.kd)
  %i.kh = fcmp ogt double %i.kg, 0.000000e+00
  br i1 %i.kh, label %bb.bi, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge390

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge390: ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198
  %.pre = load i32, ptr %i.bd, align 8, !tbaa !543
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge390, %bb.bb, %bb.ba
  %i.ki = phi i32 [ %.pre, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge390 ], [ %storemerge339351, %bb.bb ], [ %storemerge339351, %bb.ba ] ; 2 uses
  %i.kj = add nsw i32 %i.ki, 1                    ; 2 uses
  store i32 %i.kj, ptr %i.bd, align 8, !tbaa !543
  %.not.not = icmp slt i32 %i.ki, %.sroa.speculated.i189
  br i1 %.not.not, label %bb.ba, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge, !llvm.loop !8519

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge: ; preds = %bb.bh
  %i.kk = load i32, ptr %i.bc, align 4, !tbaa !543 ; 2 uses
  %i.kl = add nsw i32 %i.kk, 1                    ; 2 uses
  store i32 %i.kl, ptr %i.bc, align 4, !tbaa !543
  %.not = icmp slt i32 %i.kk, %.sroa.speculated11.i188
  br i1 %.not, label %.lr.ph, label %._crit_edge356.split, !llvm.loop !8520

._crit_edge356.split:                             ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge
  %i.km = load i32, ptr %14, align 8, !tbaa !543  ; 2 uses
  %i.kn = add nsw i32 %i.km, 1                    ; 2 uses
  store i32 %i.kn, ptr %14, align 8, !tbaa !543
  %.not441 = icmp slt i32 %i.km, %.sroa.speculated16.i187
  br i1 %.not441, label %.lr.ph355, label %.preheader.preheader, !llvm.loop !8521

bb.bi:                                            ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198
  %i.ko = load <2 x i32>, ptr %14, align 8, !tbaa !543
  %i.kp = add nsw <2 x i32> %i.ko, splat (i32 1)
  store <2 x i32> %i.kp, ptr %14, align 8, !tbaa !543
  br label %.loopexit.sink.split

.preheader:                                       ; preds = %.preheader.preheader, %bb.cd
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.cd ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.kq = getelementptr inbounds nuw [12 x i8], ptr @_ZN7openvdb5v13_04util13COORD_OFFSETSE, i64 %indvars.iv ; 3 uses
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !543
  %i.ks = add nsw i32 %i.kr, %i.fj                ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 4
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !543
  %i.kv = add nsw i32 %i.ku, %i.fs                ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !543
  %i.ky = add nsw i32 %i.kx, %i.fu                ; 3 uses
  %.sroa.2.0.insert.ext.i199 = zext i32 %i.kv to i64
  %.sroa.2.0.insert.shift.i200 = shl nuw i64 %.sroa.2.0.insert.ext.i199, 32
  %.sroa.0.0.insert.ext.i201 = zext i32 %i.ks to i64
  %.sroa.0.0.insert.insert.i202 = or disjoint i64 %.sroa.2.0.insert.shift.i200, %.sroa.0.0.insert.ext.i201
  store i64 %.sroa.0.0.insert.insert.i202, ptr %14, align 8
  store i32 %i.ky, ptr %i.bd, align 8, !tbaa !570
  %i.kz = icmp slt i32 %i.ks, %.sroa.speculated16.i
  %i.la = icmp slt i32 %i.kv, %.sroa.speculated11.i
  %or.cond437 = select i1 %i.kz, i1 true, i1 %i.la
  br i1 %or.cond437, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread, label %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i

_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i: ; preds = %.preheader
  %i.lb = icmp sge i32 %i.ky, %.sroa.speculated.i
  %i.lc = icmp sge i32 %.sroa.speculated16.i187, %i.ks
  %or.cond.i.not344 = and i1 %i.lb, %i.lc
  %i.ld = icmp sge i32 %.sroa.speculated11.i188, %i.kv
  %or.cond10.i.not341 = select i1 %or.cond.i.not344, i1 %i.ld, i1 false
  %i.le = icmp sge i32 %.sroa.speculated.i189, %i.ky
  %or.cond334 = select i1 %or.cond10.i.not341, i1 %i.le, i1 false
  br i1 %or.cond334, label %bb.cd, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread

_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread: ; preds = %.preheader, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i
  %i.lf = invoke noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERf(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %14, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
          to label %bb.bj unwind label %bb.cb

bb.bj:                                            ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread
  %i.lg = load float, ptr %i.h, align 4
  %i.lh = fcmp olt float %i.lg, -7.500000e-01
  %or.cond144 = select i1 %i.lf, i1 %i.lh, i1 false
  br i1 %or.cond144, label %bb.bk, label %bb.cd

bb.bk:                                            ; preds = %bb.bj
  %i.li = load <2 x i32>, ptr %14, align 8, !tbaa !543 ; 3 uses
  %i.lj = extractelement <2 x i32> %i.li, i64 1   ; 10 uses
  %i.lk = extractelement <2 x i32> %i.li, i64 0   ; 7 uses
  %i.ll = sitofp <2 x i32> %i.li to <2 x double>
  store <2 x double> %i.ll, ptr %15, align 16, !tbaa !595
  %i.lm = load i32, ptr %i.bd, align 8, !tbaa !543 ; 11 uses
  %i.ln = sitofp i32 %i.lm to double
  store double %i.ln, ptr %i.bx, align 16, !tbaa !595
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.lo = and i32 %i.lk, -8
  %i.lp = load i32, ptr %i.ay, align 8, !tbaa !543
  %i.lq = icmp eq i32 %i.lo, %i.lp
  br i1 %i.lq, label %bb.bl, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i

bb.bl:                                            ; preds = %bb.bk
  %i.lr = and i32 %i.lj, -8
  %i.ls = load i32, ptr %i.cc, align 4, !tbaa !543
  %i.lt = icmp eq i32 %i.lr, %i.ls
  br i1 %i.lt, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.bl
  %i.lu = and i32 %i.lm, -8
  %i.lv = load i32, ptr %.sroa.6.0..sroa_idx.i.i147, align 8, !tbaa !543
  %i.lw = icmp eq i32 %i.lu, %i.lv
  br i1 %i.lw, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i
  %i.lx = load ptr, ptr %i.ax, align 8, !tbaa !3213 ; 2 uses
  %i.ly = shl i32 %i.lk, 6
  %i.lz = and i32 %i.ly, 448
  %i.ma = shl i32 %i.lj, 3
  %i.mb = and i32 %i.ma, 56
  %i.mc = or disjoint i32 %i.mb, %i.lz
  %i.md = and i32 %i.lm, 7
  %i.me = or disjoint i32 %i.mc, %i.md
  %i.mf = zext nneg i32 %i.me to i64
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.mf
  %.not.i.not.i = icmp eq ptr %i.lx, null
  br i1 %.not.i.not.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i, %bb.bl, %bb.bk
  %i.mh = and i32 %i.lk, -128                     ; 3 uses
  %i.mi = load i32, ptr %.06.i.i.i.i.ptr.1.i.i.i148, align 4, !tbaa !543
  %i.mj = icmp eq i32 %i.mh, %i.mi
  br i1 %i.mj, label %bb.bm, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i

bb.bm:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i
  %i.mk = and i32 %i.lj, -128
  %i.ml = load i32, ptr %i.cd, align 8, !tbaa !543
  %i.mm = icmp eq i32 %i.mk, %i.ml
  br i1 %i.mm, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.bm
  %i.mn = and i32 %i.lm, -128
  %i.mo = load i32, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i149, align 4, !tbaa !543
  %i.mp = icmp eq i32 %i.mn, %i.mo
  br i1 %i.mp, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i
  %i.mq = load ptr, ptr %i.cg, align 8, !tbaa !1879
  br label %.invoke

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i, %bb.bm, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i
  %i.mr = and i32 %i.lk, -4096                    ; 2 uses
  %i.ms = load i32, ptr %.06.i.i.i.i.ptr.2.i.i.i150, align 8, !tbaa !543
  %i.mt = icmp eq i32 %i.mr, %i.ms
  br i1 %i.mt, label %bb.bn, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i

bb.bn:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i
  %i.mu = and i32 %i.lj, -4096
  %i.mv = load i32, ptr %i.ce, align 4, !tbaa !543
  %i.mw = icmp eq i32 %i.mu, %i.mv
  br i1 %i.mw, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.bn
  %i.mx = and i32 %i.lm, -4096
  %i.my = load i32, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i151, align 8, !tbaa !543
  %i.mz = icmp eq i32 %i.mx, %i.my
  br i1 %i.mz, label %bb.bo, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i

bb.bo:                                            ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i
  %i.na = load ptr, ptr %i.cf, align 8, !tbaa !1857 ; 2 uses
  %i.nb = shl i32 %i.lk, 3
  %i.nc = and i32 %i.nb, 31744
  %i.nd = lshr i32 %i.lj, 2
  %i.ne = and i32 %i.nd, 992
  %i.nf = or disjoint i32 %i.ne, %i.nc            ; 2 uses
  %i.ng = lshr i32 %i.lm, 7
  %i.nh = and i32 %i.ng, 31
  %i.ni = or disjoint i32 %i.nh, %i.nf            ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.na, i64 262144
  %i.nk = lshr i32 %i.nf, 6
  %i.nl = zext nneg i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %i.nl
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !791
  %i.no = and i32 %i.ni, 63
  %i.np = zext nneg i32 %i.no to i64
  %i.nq = shl nuw i64 1, %i.np
  %i.nr = and i64 %i.nn, %i.nq
  %.not.i.i.i = icmp eq i64 %i.nr, 0
  %i.ns = zext nneg i32 %i.ni to i64
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %i.ns ; 3 uses
  br i1 %.not.i.i.i, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !570
  %i.nv = and i32 %i.lj, -128
  %i.nw = and i32 %i.lm, -128
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.nv to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.mh to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i.i, ptr %.06.i.i.i.i.ptr.1.i.i.i148, align 4
  store i32 %i.nw, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i149, align 4, !tbaa !570
  store ptr %i.nu, ptr %i.cg, align 8, !tbaa !1879
  %i.nx = load ptr, ptr %i.nt, align 8, !tbaa !570
  br label %.invoke

_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i, %bb.bn, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i
  %i.ny = load ptr, ptr %i.az, align 8, !tbaa !1827 ; 6 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 56
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !543
  %i.ob = sub nsw i32 %i.lj, %i.oa
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ny, i64 60
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !543
  %i.oe = sub nsw i32 %i.lm, %i.od
  %i.of = and i32 %i.ob, -4096                    ; 4 uses
  %i.og = and i32 %i.oe, -4096                    ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !722 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ny, i64 8 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.oi, null
  br i1 %.not12.i.i.i.i.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ny, i64 52
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !543
  %i.om = sub nsw i32 %i.lk, %i.ol
  %i.on = and i32 %i.om, -4096                    ; 4 uses
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.014.i.i.i.i.i = phi ptr [ %i.oi, %.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i ] ; 7 uses
  %.0813.i.i.i.i.i = phi ptr [ %i.oj, %.lr.ph.i.i.i.i.i ], [ %.19.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i ]
  %i.oo = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 32
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !543 ; 2 uses
  %i.oq = icmp slt i32 %i.op, %i.on
  br i1 %i.oq, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.or = icmp sgt i32 %i.op, %i.on
  br i1 %i.or, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.os = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 36
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !543 ; 2 uses
  %i.ou = icmp slt i32 %i.ot, %i.of
  br i1 %i.ou, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ov = icmp sgt i32 %i.ot, %i.of
  br i1 %i.ov, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i: ; preds = %bb.bt
  %i.ow = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 40
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !543
  %i.oy = icmp slt i32 %i.ox, %i.og
  br i1 %i.oy, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.bs, %bb.bq
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.bt, %bb.br
  %.sink.i.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ 16, %bb.bt ], [ 16, %bb.br ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ]
  %.19.i.i.i.i.i = phi ptr [ %.0813.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ %.014.i.i.i.i.i, %bb.bt ], [ %.014.i.i.i.i.i, %bb.br ], [ %.014.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ] ; 7 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 %.sink.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %i.oz, align 8, !tbaa !1171 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, label %bb.bq, !llvm.loop !308

_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i
  %i.pa = icmp eq ptr %.19.i.i.i.i.i, %i.oj
  br i1 %i.pa, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.bu

bb.bu:                                            ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i
  %i.pb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !543 ; 2 uses
  %i.pd = icmp slt i32 %i.on, %i.pc
  br i1 %i.pd, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.pe = icmp sgt i32 %i.on, %i.pc
  br i1 %i.pe, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.pf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 36
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !543 ; 2 uses
  %i.ph = icmp slt i32 %i.of, %i.pg
  br i1 %i.ph, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.pi = icmp sgt i32 %i.of, %i.pg
  br i1 %i.pi, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.bx
  %i.pj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !543
  %i.pl = icmp slt i32 %i.og, %i.pk
  br i1 %i.pl, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.bw, %bb.bu, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ny, i64 48
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.bx, %bb.bv
  %i.pn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 48 ; 2 uses
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !1819 ; 2 uses
  %.not.i221 = icmp eq ptr %i.po, null
  br i1 %.not.i221, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.pp = and i32 %i.lj, -4096
  %i.pq = and i32 %i.lm, -4096
  %.sroa.2.0.insert.ext.i.i222 = zext i32 %i.pp to i64
  %.sroa.2.0.insert.shift.i.i223 = shl nuw i64 %.sroa.2.0.insert.ext.i.i222, 32
  %.sroa.0.0.insert.ext.i.i224 = zext i32 %i.mr to i64
  %.sroa.0.0.insert.insert.i.i225 = or disjoint i64 %.sroa.2.0.insert.shift.i.i223, %.sroa.0.0.insert.ext.i.i224
  store i64 %.sroa.0.0.insert.insert.i.i225, ptr %.06.i.i.i.i.ptr.2.i.i.i150, align 8
  store i32 %i.pq, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i151, align 8, !tbaa !570
  store ptr %i.po, ptr %i.cf, align 8, !tbaa !1857
  %i.pr = load ptr, ptr %i.pn, align 8, !tbaa !1821 ; 2 uses
  %i.ps = shl i32 %i.lk, 3
  %i.pt = and i32 %i.ps, 31744
  %i.pu = lshr i32 %i.lj, 2
  %i.pv = and i32 %i.pu, 992
  %i.pw = or disjoint i32 %i.pv, %i.pt            ; 2 uses
  %i.px = lshr i32 %i.lm, 7
  %i.py = and i32 %i.px, 31
  %i.pz = or disjoint i32 %i.py, %i.pw            ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pr, i64 262144
  %i.qb = lshr i32 %i.pw, 6
  %i.qc = zext nneg i32 %i.qb to i64
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.qa, i64 %i.qc
  %i.qe = load i64, ptr %i.qd, align 8, !tbaa !791
  %i.qf = and i32 %i.pz, 63
  %i.qg = zext nneg i32 %i.qf to i64
  %i.qh = shl nuw i64 1, %i.qg
  %i.qi = and i64 %i.qe, %i.qh
  %.not.i.i226 = icmp eq i64 %i.qi, 0
  %i.qj = zext nneg i32 %i.pz to i64
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.pr, i64 %i.qj ; 3 uses
  br i1 %.not.i.i226, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !570
  %i.qm = and i32 %i.lj, -128
  %i.qn = and i32 %i.lm, -128
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.qm to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.mh to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %.06.i.i.i.i.ptr.1.i.i.i148, align 4
  store i32 %i.qn, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i149, align 4, !tbaa !570
  store ptr %i.ql, ptr %i.cg, align 8, !tbaa !1879
  %i.qo = load ptr, ptr %i.qk, align 8, !tbaa !570
  br label %.invoke

.invoke:                                          ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i, %bb.bp, %bb.bz
  %i.qp = phi ptr [ %i.qo, %bb.bz ], [ %i.nx, %bb.bp ], [ %i.mq, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i ]
  %i.qq = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIiLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKiRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.qp, ptr noundef nonnull align 4 dereferenceable(12) %14, ptr noundef nonnull align 8 dereferenceable(96) %13)
          to label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit unwind label %bb.cc

bb.ca:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.qr = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 56
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit: ; preds = %.invoke, %bb.bo, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i, %bb.ca, %bb.by, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i
  %.1.i.i = phi ptr [ %i.mg, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i ], [ %i.qk, %bb.by ], [ %i.qq, %.invoke ], [ %i.nt, %bb.bo ], [ %i.pm, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i ], [ %i.qr, %bb.ca ]
  %i.qs = load i32, ptr %.1.i.i, align 4, !tbaa !543
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !8529
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !8529
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !8529
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !8529
  %i.qt = sext i32 %i.qs to i64
  %i.qu = load ptr, ptr %i.by, align 8, !tbaa !817, !noalias !8529 ; 2 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !1049, !noalias !8529 ; 3 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !1051, !noalias !8529
  %i.qy = getelementptr inbounds nuw [12 x i8], ptr %i.qx, i64 %i.qt ; 3 uses
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !543, !noalias !8529
  %i.ra = zext i32 %i.qz to i64
  %i.rb = getelementptr inbounds nuw [12 x i8], ptr %i.qv, i64 %i.ra ; 2 uses
  %i.rc = load <2 x float>, ptr %i.rb, align 4, !tbaa !572, !noalias !8529
  %i.rd = fpext <2 x float> %i.rc to <2 x double>
  store <2 x double> %i.rd, ptr %2, align 16, !tbaa !595, !noalias !8529
  %i.re = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.rf = load float, ptr %i.re, align 4, !tbaa !572, !noalias !8529
  %i.rg = fpext float %i.rf to double
  store double %i.rg, ptr %i.ch, align 16, !tbaa !595, !noalias !8529
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qy, i64 4
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !543, !noalias !8529
  %i.rj = zext i32 %i.ri to i64
  %i.rk = getelementptr inbounds nuw [12 x i8], ptr %i.qv, i64 %i.rj ; 2 uses
  %i.rl = load <2 x float>, ptr %i.rk, align 4, !tbaa !572, !noalias !8529
  %i.rm = fpext <2 x float> %i.rl to <2 x double>
  store <2 x double> %i.rm, ptr %3, align 16, !tbaa !595, !noalias !8529
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !572, !noalias !8529
  %i.rp = fpext float %i.ro to double
  store double %i.rp, ptr %.sroa.6286.0..sroa_idx, align 16, !tbaa !595, !noalias !8529
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !543, !noalias !8529
  %i.rs = zext i32 %i.rr to i64
  %i.rt = getelementptr inbounds nuw [12 x i8], ptr %i.qv, i64 %i.rs ; 2 uses
  %i.ru = load <2 x float>, ptr %i.rt, align 4, !tbaa !572, !noalias !8529
  %i.rv = fpext <2 x float> %i.ru to <2 x double>
  store <2 x double> %i.rv, ptr %4, align 16, !tbaa !595, !noalias !8529
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !572, !noalias !8529
  %i.ry = fpext float %i.rx to double
  store double %i.ry, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !595, !noalias !8529
  invoke void @_ZN7openvdb5v13_04math29closestPointOnTriangleToPointERKNS1_4Vec3IdEES5_S5_S5_RS3_(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit213 unwind label %bb.cc

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit213: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !8529
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !8529
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !8529
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !8529
  %19 = load <3 x double>, ptr %18, align 8       ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  %i.rz = load <2 x double>, ptr %15, align 16    ; 2 uses
  %.sroa.9.0.copyload232 = load double, ptr %i.bx, align 16
  %i.sa = shufflevector <2 x double> %i.rz, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.sb = insertelement <2 x double> %i.sa, double %i.fp, i64 0
  %i.sc = shufflevector <3 x double> %19, <3 x double> poison, <2 x i32> zeroinitializer
  %i.sd = fsub <2 x double> %i.sb, %i.sc          ; 4 uses
  %i.se = shufflevector <2 x double> %i.fq, <2 x double> %i.rz, <2 x i32> <i32 0, i32 3>
  %20 = shufflevector <3 x double> %19, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.sf = fsub <2 x double> %i.se, %20            ; 4 uses
  %i.sg = insertelement <2 x double> %i.gb, double %.sroa.9.0.copyload232, i64 1
  %21 = shufflevector <3 x double> %19, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.sh = fsub <2 x double> %i.sg, %21            ; 4 uses
  %i.si = fmul <2 x double> %i.sf, %i.sf
  %i.sj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sd, <2 x double> %i.sd, <2 x double> %i.si)
  %i.sk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sh, <2 x double> %i.sh, <2 x double> %i.sj)
  %i.sl = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.sk) ; 2 uses
  %i.sm = fdiv <2 x double> splat (double 1.000000e+00), %i.sl ; 3 uses
  %i.sn = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.sl)
  %i.so = fcmp ogt <2 x double> %i.sn, splat (double f0x3E7AD7F29ABCAF48) ; 3 uses
  %i.sp = shufflevector <2 x double> %i.sh, <2 x double> %i.sd, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.sq = shufflevector <2 x double> %i.sm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sr = fmul <2 x double> %i.sp, %i.sq
  %i.ss = shufflevector <2 x i1> %i.so, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.st = select <2 x i1> %i.ss, <2 x double> %i.sr, <2 x double> %i.sp ; 2 uses
  %i.su = fmul <2 x double> %i.sf, %i.sm
  %i.sv = select <2 x i1> %i.so, <2 x double> %i.su, <2 x double> %i.sf ; 2 uses
  %i.sw = shufflevector <2 x double> %i.sh, <2 x double> %i.sd, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.sx = shufflevector <2 x double> %i.sm, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.sy = fmul <2 x double> %i.sw, %i.sx
  %i.sz = shufflevector <2 x i1> %i.so, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.ta = select <2 x i1> %i.sz, <2 x double> %i.sy, <2 x double> %i.sw ; 2 uses
  %shift = shufflevector <2 x double> %i.sv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop451 = fmul <2 x double> %i.sv, %shift
  %i.tb = extractelement <2 x double> %foldExtExtBinop451, i64 0
  %i.tc = extractelement <2 x double> %i.st, i64 1
  %i.td = extractelement <2 x double> %i.ta, i64 1
  %i.te = call double @llvm.fmuladd.f64(double %i.td, double %i.tc, double %i.tb)
  %i.tf = extractelement <2 x double> %i.st, i64 0
  %i.tg = extractelement <2 x double> %i.ta, i64 0
  %i.th = call noundef double @llvm.fmuladd.f64(double %i.tg, double %i.tf, double %i.te)
  %i.ti = fcmp ogt double %i.th, 0.000000e+00
  br i1 %i.ti, label %.loopexit.sink.split, label %bb.cd

bb.cb:                                            ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread
  %i.tj = landingpad { ptr, i32 }
          cleanup
  br label %.body157

bb.cc:                                            ; preds = %.invoke, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit
  %i.tk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %.body157

bb.cd:                                            ; preds = %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i, %bb.bj, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit213
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 26
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !8524

.loopexit.sink.split:                             ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit213, %bb.bi
  %i.tl = load float, ptr %i.ey, align 4, !tbaa !572
  %i.tm = fneg float %i.tl
  store float %i.tm, ptr %i.ey, align 4, !tbaa !572
  br label %.loopexit

.loopexit:                                        ; preds = %bb.cd, %.loopexit.sink.split, %.lr.ph375
  %i.tn = add i32 %.sroa.5.0373, 1                ; 4 uses
  %i.to = lshr i32 %i.tn, 6                       ; 3 uses
  %i.tp = icmp ugt i32 %i.tn, 511
  br i1 %i.tp, label %._crit_edge376, label %bb.ce

bb.ce:                                            ; preds = %.loopexit
  %i.tq = and i32 %i.tn, 63
  %i.tr = zext nneg i32 %i.to to i64              ; 8 uses
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.tr
  %i.tt = load i64, ptr %i.ts, align 8, !tbaa !791 ; 2 uses
  %i.tu = zext nneg i32 %i.tq to i64              ; 2 uses
  %i.tv = shl nuw i64 1, %i.tu
  %i.tw = and i64 %i.tt, %i.tv
  %.not.i.i.i.i = icmp eq i64 %i.tw, 0
  br i1 %.not.i.i.i.i, label %bb.cf, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

bb.cf:                                            ; preds = %bb.ce
  %i.tx = shl nsw i64 -1, %i.tu
  %i.ty = and i64 %i.tt, %i.tx                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.ty, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i214.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i214.preheader:                      ; preds = %bb.cf
  %exitcond.not.i.i.i.i445 = icmp eq i32 %i.to, 7
  br i1 %exitcond.not.i.i.i.i445, label %._crit_edge376, label %.lr.ph447

.lr.ph.i.i.i.i214:                                ; preds = %.lr.ph447
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge376, label %.lr.ph447.1

.lr.ph447.1:                                      ; preds = %.lr.ph.i.i.i.i214
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.tr, 2 ; 3 uses
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.next.i.i.i.i.1
  %i.ua = load i64, ptr %i.tz, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.ua, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i214.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i214.1:                              ; preds = %.lr.ph447.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge376, label %.lr.ph447.2

.lr.ph447.2:                                      ; preds = %.lr.ph.i.i.i.i214.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.tr, 3 ; 3 uses
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.next.i.i.i.i.2
  %i.uc = load i64, ptr %i.ub, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.uc, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i214.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i214.2:                              ; preds = %.lr.ph447.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge376, label %.lr.ph447.3

.lr.ph447.3:                                      ; preds = %.lr.ph.i.i.i.i214.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.tr, 4 ; 3 uses
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.next.i.i.i.i.3
  %i.ue = load i64, ptr %i.ud, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.ue, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i214.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i214.3:                              ; preds = %.lr.ph447.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge376, label %.lr.ph447.4

.lr.ph447.4:                                      ; preds = %.lr.ph.i.i.i.i214.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.tr, 5 ; 3 uses
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.next.i.i.i.i.4
  %i.ug = load i64, ptr %i.uf, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.ug, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i214.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i214.4:                              ; preds = %.lr.ph447.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge376, label %.lr.ph447.5

.lr.ph447.5:                                      ; preds = %.lr.ph.i.i.i.i214.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.tr, 6 ; 3 uses
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.next.i.i.i.i.5
  %i.ui = load i64, ptr %i.uh, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.ui, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i214.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i214.5:                              ; preds = %.lr.ph447.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge376, label %.lr.ph447.6

.lr.ph447.6:                                      ; preds = %.lr.ph.i.i.i.i214.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.tr, 7 ; 2 uses
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.next.i.i.i.i.6
  %i.uk = load i64, ptr %i.uj, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.uk, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge376, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph447:                                        ; preds = %.lr.ph.i.i.i.i214.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.tr, 1 ; 3 uses
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.next.i.i.i.i
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.um, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i214, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph447.6, %.lr.ph447.5, %.lr.ph447.4, %.lr.ph447.3, %.lr.ph447.2, %.lr.ph447.1, %.lr.ph447
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph447 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph447.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph447.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph447.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph447.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph447.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph447.6 ]
  %.lcssa = phi i64 [ %i.um, %.lr.ph447 ], [ %i.ua, %.lr.ph447.1 ], [ %i.uc, %.lr.ph447.2 ], [ %i.ue, %.lr.ph447.3 ], [ %i.ug, %.lr.ph447.4 ], [ %i.ui, %.lr.ph447.5 ], [ %i.uk, %.lr.ph447.6 ]
  %i.un = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.cf
  %.016.lcssa.i.i.i.i = phi i32 [ %i.to, %bb.cf ], [ %i.un, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.ty, %bb.cf ], [ %.lcssa, %.critedge.loopexit.i.i.i.i ]
  %i.uo = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.up = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.uq = trunc nuw nsw i64 %i.up to i32
  %i.ur = or disjoint i32 %i.uo, %i.uq
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit: ; preds = %bb.ce, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.ur, %.critedge.i.i.i.i ], [ %i.tn, %bb.ce ] ; 2 uses
  %.not337 = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not337, label %._crit_edge376, label %.lr.ph375

._crit_edge376:                                   ; preds = %.loopexit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit, %.lr.ph.i.i.i.i214.preheader, %.lr.ph447.6, %.lr.ph.i.i.i.i214, %.lr.ph.i.i.i.i214.1, %.lr.ph.i.i.i.i214.2, %.lr.ph.i.i.i.i214.3, %.lr.ph.i.i.i.i214.4, %.lr.ph.i.i.i.i214.5, %bb.au
  %i.us = add nuw i64 %.0118377, 1                ; 2 uses
  %exitcond389.not = icmp eq i64 %i.us, %i.bt
  br i1 %exitcond389.not, label %._crit_edge379, label %bb.ag, !llvm.loop !8525

.body157:                                         ; preds = %bb.aw, %bb.bg, %bb.cc, %bb.cb, %bb.ay, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i, %bb.av, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i162, %bb.ax, %bb.y, %bb.ab, %bb.x
  %.pn133.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.x ], [ %i.bl, %bb.y ], [ %i.bq, %bb.ab ], [ %i.eo, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i162 ], [ %i.jc, %bb.bg ], [ %i.fd, %bb.aw ], [ %i.dp, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ], [ %i.fe, %bb.ax ], [ %i.ff, %bb.ay ], [ %i.fc, %bb.av ], [ %i.tk, %bb.cc ], [ %i.tj, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %13, align 8, !tbaa !545
  %i.ut = load ptr, ptr %i.ah, align 8, !tbaa !3207 ; 2 uses
  %.not.i215 = icmp eq ptr %i.ut, null
  br i1 %.not.i215, label %.body, label %bb.cg

bb.cg:                                            ; preds = %.body157
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %13, ptr %i.b, align 8, !tbaa !3208
  %i.uv = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.uu, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i216 unwind label %bb.ch, !inline_history !3214 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i216: ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.body

bb.ch:                                            ; preds = %bb.cg
end_hunk_1
begin_hunk_2_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSD_26QuadAndTriangleDataAdapterINSC_4math4Vec3IfEENSS_IjEEEEEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a

bb.i:                                             ; preds = %.thread, %bb.h
  %i.bi = load i8, ptr %i.l, align 1, !tbaa !1376
  %i.bj = zext i8 %i.bi to i64                    ; 2 uses
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bj
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.bm, ptr %i.a, align 1, !tbaa !570
  call void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS7_26QuadAndTriangleDataAdapterINS6_4math4Vec3IfEENSM_IjEEEEEEKNS1_16auto_partitionerEE15offer_work_implIJRST_RKS4_RhEEEvRNS1_14execution_dataEDpOT_(ptr noundef nonnull align 64 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 64 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 1 dereferenceable(1) %i.a), !inline_history !11178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bn = load i8, ptr %i.m, align 2, !tbaa !1374
  %i.bo = add i8 %i.bn, -1                        ; 2 uses
  store i8 %i.bo, ptr %i.m, align 2, !tbaa !1374
  %i.bp = load i8, ptr %i.l, align 1, !tbaa !1376
  %i.bq = add i8 %i.bp, 1
  %i.br = and i8 %i.bq, 7
  store i8 %i.br, ptr %i.l, align 1, !tbaa !1376
  br label %thread-pre-split18

bb.j:                                             ; preds = %bb.h
  %i.bs = load i8, ptr %4, align 8, !tbaa !1375
  %i.bt = zext i8 %i.bs to i64                    ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !570
  %i.bw = icmp ult i8 %i.bv, %i.bg
  br i1 %i.bw, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit: ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.bt ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !631
  %i.ca = load i64, ptr %i.bx, align 8, !tbaa !629
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !630
  %i.cd = sub i64 %i.ca, %i.cc
  %i.ce = icmp ult i64 %i.bz, %i.cd
  br i1 %i.ce, label %thread-pre-split18, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.j, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre21, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.bt, %bb.j ], [ %i.bt, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.pre-phi
  call void @_ZNK7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS1_26QuadAndTriangleDataAdapterINS0_4math4Vec3IfEENSG_IjEEEEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.cf)
  %i.cg = load i8, ptr %i.m, align 2, !tbaa !1374
  %i.ch = add i8 %i.cg, -1                        ; 2 uses
  store i8 %i.ch, ptr %i.m, align 2, !tbaa !1374
  %i.ci = load i8, ptr %4, align 8, !tbaa !1375
  %i.cj = add i8 %i.ci, 7
  %i.ck = and i8 %i.cj, 7
  store i8 %i.ck, ptr %4, align 8, !tbaa !1375
  br label %thread-pre-split18

thread-pre-split18:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread, %bb.i
  %i.cl = phi i8 [ %i.bo, %bb.i ], [ %i.ch, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread ], [ %.pr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.cm = icmp eq i8 %i.cl, 0
  br i1 %i.cm, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit17, label %bb.k

bb.k:                                             ; preds = %thread-pre-split18
  %i.cn = load ptr, ptr %3, align 8, !tbaa !1199  ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 15
  %i.cp = load atomic i8, ptr %i.co monotonic, align 1
  %i.cq = icmp eq i8 %i.cp, -1
  br i1 %i.cq, label %bb.l, label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

bb.l:                                             ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !570
  br label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i: ; preds = %bb.l, %bb.k
  %.0.i.i = phi ptr [ %i.cs, %bb.l ], [ %i.cn, %bb.k ]
  %i.ct = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.ct, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit17, label %thread-pre-split, !llvm.loop !11179

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit17: ; preds = %thread-pre-split18, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.m

bb.m:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit17, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS7_26QuadAndTriangleDataAdapterINS6_4math4Vec3IfEENSM_IjEEEEEEKNS1_16auto_partitionerEE15offer_work_implIJRST_RNS0_2d05splitEEEEvRNS1_14execution_dataEDpOT_(ptr noundef nonnull align 64 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 64 dereferenceable(168) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr null, ptr %4, align 8, !tbaa !760
  %i.a = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1), !inline_history !11180 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS7_26QuadAndTriangleDataAdapterINS6_4math4Vec3IfEENSM_IjEEEEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.a, align 64, !tbaa !545
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = load i64, ptr %i.c, align 64, !tbaa !629 ; 2 uses
  store i64 %i.e, ptr %i.d, align 64, !tbaa !629
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !630  ; 2 uses
  %i.i = sub i64 %i.e, %i.h
  %i.j = lshr i64 %i.i, 1
  %i.k = add i64 %i.j, %i.h                       ; 2 uses
  store i64 %i.k, ptr %i.c, align 64, !tbaa !629
  store i64 %i.k, ptr %i.f, align 8, !tbaa !630
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.n = load i64, ptr %i.m, align 16, !tbaa !631
  store i64 %i.n, ptr %i.l, align 16, !tbaa !631
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 32, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.t = load ptr, ptr %i.s, align 64, !tbaa !578 ; 2 uses
  %i.u = load <2 x ptr>, ptr %i.r, align 8, !tbaa !1088
  store <2 x ptr> %i.u, ptr %i.q, align 8, !tbaa !1088
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS8_4tree4TreeINSC_8RootNodeINSC_12InternalNodeINSF_INSC_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS9_26QuadAndTriangleDataAdapterINS8_4math4Vec3IfEENSO_IjEEEEEEKNS1_16auto_partitionerEEEJRSV_RNS0_2d05splitERS2_EEEPT_RNS1_14execution_dataEDpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !570
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = load i32, ptr %i.v, align 4, !tbaa !543
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !543
  br label %_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS8_4tree4TreeINSC_8RootNodeINSC_12InternalNodeINSF_INSC_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS9_26QuadAndTriangleDataAdapterINS8_4math4Vec3IfEENSO_IjEEEEEEKNS1_16auto_partitionerEEEJRSV_RNS0_2d05splitERS2_EEEPT_RNS1_14execution_dataEDpOT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.z = atomicrmw volatile add ptr %i.v, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS8_4tree4TreeINSC_8RootNodeINSC_12InternalNodeINSF_INSC_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS9_26QuadAndTriangleDataAdapterINS8_4math4Vec3IfEENSO_IjEEEEEEKNS1_16auto_partitionerEEEJRSV_RNS0_2d05splitERS2_EEEPT_RNS1_14execution_dataEDpOT0_.exit

_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS8_4tree4TreeINSC_8RootNodeINSC_12InternalNodeINSF_INSC_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS9_26QuadAndTriangleDataAdapterINS8_4math4Vec3IfEENSO_IjEEEEEEKNS1_16auto_partitionerEEEJRSV_RNS0_2d05splitERS2_EEEPT_RNS1_14execution_dataEDpOT0_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !4532
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 16, !tbaa !1186
  %i.ae = lshr i64 %i.ad, 1                       ; 2 uses
  store i64 %i.ae, ptr %i.ac, align 16, !tbaa !1186
  store i64 %i.ae, ptr %i.ab, align 16, !tbaa !1186
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i32 2, ptr %i.af, align 8, !tbaa !1184
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 156
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !1185
  store i8 %i.ai, ptr %i.ag, align 4, !tbaa !1185
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.ak = load i64, ptr %4, align 8, !tbaa !766
  store i64 %i.ak, ptr %i.aj, align 32, !tbaa !766
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.am = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) ; 6 uses
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !1197
  store ptr %i.an, ptr %i.am, align 8, !tbaa !1190
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 2, ptr %i.ao, align 8, !tbaa !1191
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.aq = load i64, ptr %4, align 8, !tbaa !766
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !766
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i8 0, ptr %i.ar, align 8, !tbaa !1198
  store ptr %i.am, ptr %i.al, align 8, !tbaa !4532
  store ptr %i.am, ptr %i.aa, align 8, !tbaa !4532
  %i.as = load ptr, ptr %1, align 8, !tbaa !1199
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(168) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS1_26QuadAndTriangleDataAdapterINS0_4math4Vec3IfEENSG_IjEEEEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 5 uses
  %3 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 5 uses
  %4 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 5 uses
  %5 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 3 uses
  %6 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 5 uses
  %7 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 5 uses
  %8 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 5 uses
  %9 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 3 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i8, align 1                       ; 3 uses
  %10 = alloca %"class.tbb::detail::d2::concurrent_hash_map<openvdb::v13_0::tree::ValueAccessorBase<const openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<int, 3>, 4>, 5>>>, true> *, bool>::accessor", align 8 ; 11 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %11 = alloca %"class.tbb::detail::d2::concurrent_hash_map<openvdb::v13_0::tree::ValueAccessorBase<const openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>>, true> *, bool>::accessor", align 8 ; 11 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %12 = alloca %"class.openvdb::v13_0::tree::ValueAccessorImpl.3258", align 8 ; 20 uses
  %13 = alloca %"class.openvdb::v13_0::tree::ValueAccessorImpl.2062", align 8 ; 26 uses
  %i.h = alloca double, align 8                   ; 5 uses
  %14 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 16 uses
  %15 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 10 uses
  %16 = alloca %"struct.openvdb::v13_0::tree::LeafNode<double, 3>::ValueIter", align 8 ; 6 uses
  %17 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 5 uses
  %18 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !971  ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %12, align 8, !tbaa !545
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !4534
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store ptr null, ptr %11, align 8, !tbaa !1153
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i8 0, ptr %i.l, align 8, !tbaa !1152
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  store ptr %12, ptr %i.g, align 8, !tbaa !4535
  %i.o = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6lookupILb1ESI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEEbRKT0_S13_PNSR_14const_accessorEbT1_SU_(ptr noundef nonnull align 8 dereferenceable(570) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %11, i1 noundef zeroext true, ptr noundef nonnull @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE31allocate_node_default_constructISI_EEPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERKT_PKb, ptr noundef null)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i unwind label %bb.e ; 0 uses

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  store ptr null, ptr %i.m, align 8, !tbaa !4538
  %i.p = load ptr, ptr %11, align 8, !tbaa !1153  ; 3 uses
  %.not.i.i3.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i3.i.i.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i
  store ptr null, ptr %11, align 8, !tbaa !1153
  %i.q = load i8, ptr %i.l, align 8, !tbaa !1152, !range !804, !noundef !805
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = atomicrmw and ptr %i.p, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.t = atomicrmw sub ptr %i.p, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  store ptr null, ptr %i.m, align 8, !tbaa !4538
  %i.v = load ptr, ptr %11, align 8, !tbaa !1153  ; 3 uses
  %.not.i.i4.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i4.i.i.i, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %11, align 8, !tbaa !1153
  %i.w = load i8, ptr %i.l, align 8, !tbaa !1152, !range !804, !noundef !805
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = atomicrmw and ptr %i.v, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.z = atomicrmw sub ptr %i.v, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i

common.resume:                                    ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit218, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.u, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ], [ %.pn132.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit218 ]
  resume { ptr, i32 } %common.resume.op

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i: ; preds = %bb.h, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %common.resume

bb.i:                                             ; preds = %bb.d, %bb.c, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %12, align 8, !tbaa !545
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 2 uses
  store i64 9223372034707292159, ptr %i.ab, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !570
  %.06.i.i.i.i.ptr.1.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 36
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i.i, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %12, i64 44
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i, align 4, !tbaa !570
  %.06.i.i.i.i.ptr.2.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 48
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i.i, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %12, i64 56
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i, align 8, !tbaa !570
  store ptr null, ptr %i.aa, align 8, !tbaa !4540
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 32, i1 false)
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !4534 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERSC_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !3894
  br label %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERSC_.exit

_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERSC_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !972 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %13, align 8, !tbaa !545
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !3207
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr null, ptr %10, align 8, !tbaa !1153
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i8 0, ptr %i.ai, align 8, !tbaa !1152
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store ptr %13, ptr %i.f, align 8, !tbaa !3208
  %i.al = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6lookupILb1ESI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEEbRKT0_S13_PNSR_14const_accessorEbT1_SU_(ptr noundef nonnull align 8 dereferenceable(570) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %10, i1 noundef zeroext true, ptr noundef nonnull @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE31allocate_node_default_constructISI_EEPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERKT_PKb, ptr noundef null)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i unwind label %bb.n ; 0 uses

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i: ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERSC_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  store ptr null, ptr %i.aj, align 8, !tbaa !3211
  %i.am = load ptr, ptr %10, align 8, !tbaa !1153 ; 3 uses
  %.not.i.i3.i.i.i144 = icmp eq ptr %i.am, null
  br i1 %.not.i.i3.i.i.i144, label %bb.r, label %bb.k

bb.k:                                             ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i
  store ptr null, ptr %10, align 8, !tbaa !1153
  %i.an = load i8, ptr %i.ai, align 8, !tbaa !1152, !range !804, !noundef !805
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ap = atomicrmw and ptr %i.am, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.aq = atomicrmw sub ptr %i.am, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.r

bb.n:                                             ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERSC_.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  store ptr null, ptr %i.aj, align 8, !tbaa !3211
  %i.as = load ptr, ptr %10, align 8, !tbaa !1153 ; 3 uses
  %.not.i.i4.i.i.i143 = icmp eq ptr %i.as, null
  br i1 %.not.i.i4.i.i.i143, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %10, align 8, !tbaa !1153
  %i.at = load i8, ptr %i.ai, align 8, !tbaa !1152, !range !804, !noundef !805
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.av = atomicrmw and ptr %i.as, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.aw = atomicrmw sub ptr %i.as, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i: ; preds = %bb.q, %bb.p, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.body

bb.r:                                             ; preds = %bb.m, %bb.l, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %13, align 8, !tbaa !545
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 3 uses
  store i64 9223372034707292159, ptr %i.ay, align 8
  %.sroa.6.0..sroa_idx.i.i145 = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i.i145, align 8, !tbaa !570
  %.06.i.i.i.i.ptr.1.i.i.i146 = getelementptr inbounds nuw i8, ptr %13, i64 36 ; 4 uses
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i.i146, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i147 = getelementptr inbounds nuw i8, ptr %13, i64 44 ; 4 uses
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i147, align 4, !tbaa !570
  %.06.i.i.i.i.ptr.2.i.i.i148 = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 3 uses
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i.i148, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i149 = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 3 uses
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i149, align 8, !tbaa !570
  store ptr null, ptr %i.ax, align 8, !tbaa !3213
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, i8 0, i64 32, i1 false)
  %i.ba = load ptr, ptr %i.ah, align 8, !tbaa !3207 ; 2 uses
  %.not.i.i150 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i150, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !1827
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store i32 0, ptr %14, align 8, !tbaa !543
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 4 uses
  store i32 0, ptr %i.bc, align 4, !tbaa !543
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  store i32 0, ptr %i.bd, align 8, !tbaa !543
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.bg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN3tbb6detail2d18ets_baseILNS1_18ets_key_usage_typeE1EE12table_lookupERb(ptr noundef nonnull align 8 dereferenceable(104) %i.bf, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
          to label %bb.u unwind label %bb.x       ; 7 uses

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !3195
  %.not333 = icmp eq ptr %i.bh, null
  br i1 %.not333, label %bb.v, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit

bb.v:                                             ; preds = %bb.u
  %i.bi = invoke noalias noundef nonnull dereferenceable(24576) ptr @_Znam(i64 noundef 24576) #30
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !3195 ; 2 uses
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !3195
  %.not.i.i151 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i151, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IdEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IdEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i: ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.bj) #32
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit

bb.x:                                             ; preds = %bb.t
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body155

bb.y:                                             ; preds = %bb.v
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body155

_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit: ; preds = %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IdEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i, %bb.w, %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 5 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1443
  %.not334 = icmp eq ptr %i.bn, null
  br i1 %.not334, label %bb.z, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EE5resetIPbvEEvT_.exit

bb.z:                                             ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit
  %i.bo = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znam(i64 noundef 512) #30
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !1443 ; 2 uses
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !1443
  %.not.i.i152 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i152, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EE5resetIPbvEEvT_.exit, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %bb.aa
  call void @_ZdaPv(ptr noundef nonnull %i.bp) #32
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EE5resetIPbvEEvT_.exit

bb.ab:                                            ; preds = %bb.z
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body155

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EE5resetIPbvEEvT_.exit: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit, %bb.aa, %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !630 ; 2 uses
  %i.bt = load i64, ptr %1, align 8, !tbaa !629   ; 2 uses
  %i.bu = icmp ult i64 %i.bs, %i.bt
  br i1 %i.bu, label %.lr.ph376, label %._crit_edge377

.lr.ph376:                                        ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EE5resetIPbvEEvT_.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 28
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.ce = getelementptr inbounds nuw i8, ptr %13, i64 52
  %i.cf = getelementptr inbounds nuw i8, ptr %13, i64 72 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.ag

._crit_edge377:                                   ; preds = %._crit_edge374, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EE5resetIPbvEEvT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %13, align 8, !tbaa !545
  %i.ci = load ptr, ptr %i.ah, align 8, !tbaa !3207 ; 2 uses
  %.not.i = icmp eq ptr %i.ci, null
  br i1 %.not.i, label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge377
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %13, ptr %i.d, align 8, !tbaa !3208
  %i.ck = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.cj, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i unwind label %bb.ad, !inline_history !3214 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit

bb.ad:                                            ; preds = %bb.ac
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #31, !inline_history !3214
  unreachable

_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit: ; preds = %._crit_edge377, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %12, align 8, !tbaa !545
  %i.cn = load ptr, ptr %i.k, align 8, !tbaa !4534 ; 2 uses
  %.not.i153 = icmp eq ptr %i.cn, null
  br i1 %.not.i153, label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %12, ptr %i.c, align 8, !tbaa !4535
  %i.cp = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.co, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i unwind label %bb.af, !inline_history !4541 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit

bb.af:                                            ; preds = %bb.ae
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #31, !inline_history !4541
  unreachable

_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit: ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  ret void

bb.ag:                                            ; preds = %.lr.ph376, %._crit_edge374
  %.0118375 = phi i64 [ %i.bs, %.lr.ph376 ], [ %i.us, %._crit_edge374 ] ; 2 uses
  %i.cs = load ptr, ptr %0, align 8, !tbaa !970
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.0118375
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !4024 ; 10 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load atomic i32, ptr %i.cv seq_cst, align 4
  %.not.i.i154 = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i154, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.cu)
          to label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i unwind label %bb.av

_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i: ; preds = %bb.ah, %bb.ag
  %i.cx = load ptr, ptr %i.cu, align 8, !tbaa !570 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.ai, label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit

bb.ai:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 12 ; 4 uses
  %i.da = atomicrmw xchg ptr %i.cz, i8 1 seq_cst, align 1
  %i.db = trunc i8 %i.da to i1
  br i1 %i.db, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ai, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i
  %.sroa.0.02.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i ], [ 1, %bb.ai ] ; 8 uses
  %i.dc = icmp slt i32 %.sroa.0.02.i.i.i.i, 17
  br i1 %i.dc, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i
  %i.dd = icmp sgt i32 %.sroa.0.02.i.i.i.i, 0
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.aj
  %xtraiter = and i32 %.sroa.0.02.i.i.i.i, 7      ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.01.i.i.i.i.i.i.prol = phi i32 [ %i.de, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.0.02.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.de = add nsw i32 %.01.i.i.i.i.i.i.prol, -1   ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !11181

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.01.i.i.i.i.i.i.unr = phi i32 [ %.sroa.0.02.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.de, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.df = icmp ult i32 %.sroa.0.02.i.i.i.i, 8
  br i1 %i.df, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.01.i.i.i.i.i.i = phi i32 [ %i.dg, %.lr.ph.i.i.i.i.i.i ], [ %.01.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.dg = add nsw i32 %.01.i.i.i.i.i.i, -8
  call void @llvm.x86.sse2.pause()
  %i.dh = icmp sgt i32 %.01.i.i.i.i.i.i, 8
  br i1 %i.dh, label %.lr.ph.i.i.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i, !llvm.loop !38

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.aj
  %i.di = shl i32 %.sroa.0.02.i.i.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i
  %i.dj = call noundef i32 @sched_yield() #23     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i: ; preds = %bb.ak, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i32 [ %i.di, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i ], [ %.sroa.0.02.i.i.i.i, %bb.ak ]
  %i.dk = atomicrmw xchg ptr %i.cz, i8 1 seq_cst, align 1
  %i.dl = trunc i8 %i.dk to i1
  br i1 %i.dl, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i, !llvm.loop !47

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i, %bb.ai
  %i.dm = load ptr, ptr %i.cu, align 8, !tbaa !570 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.al, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i

bb.al:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i
  %i.do = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #30
          to label %bb.am unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ; 2 uses

bb.am:                                            ; preds = %bb.al
  store ptr %i.do, ptr %i.cu, align 8, !tbaa !570
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i: ; preds = %bb.al
  %i.dp = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.cz release, align 1
  br label %.body155

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i: ; preds = %bb.am, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i
  %i.dq = phi ptr [ %i.do, %bb.am ], [ %i.dm, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i ]
  store atomic i8 0, ptr %i.cz release, align 4
  br label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit

_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit: ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i
  %i.dr = phi ptr [ %i.dq, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i ], [ %i.cx, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cu, i64 80 ; 3 uses
  %i.dt = invoke noundef ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %13, ptr noundef nonnull align 4 dereferenceable(12) %i.ds)
          to label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstLeafERKNS0_4math5CoordE.exit unwind label %bb.aw ; 6 uses

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstLeafERKNS0_4math5CoordE.exit: ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load atomic i32, ptr %i.du seq_cst, align 4
  %.not.i.i158 = icmp eq i32 %i.dv, 0
  br i1 %.not.i.i158, label %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i, label %bb.an

bb.an:                                            ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstLeafERKNS0_4math5CoordE.exit
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.dt)
          to label %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i unwind label %bb.ax

_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i: ; preds = %bb.an, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstLeafERKNS0_4math5CoordE.exit
  %i.dw = load ptr, ptr %i.dt, align 8, !tbaa !570 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 12 ; 4 uses
  %i.dz = atomicrmw xchg ptr %i.dy, i8 1 seq_cst, align 1
  %i.ea = trunc i8 %i.dz to i1
  br i1 %i.ea, label %.lr.ph.i.i.i.i161, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i159

.lr.ph.i.i.i.i161:                                ; preds = %bb.ao, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i163
  %.sroa.0.02.i.i.i.i162 = phi i32 [ %.sroa.0.1.i.i.i.i164, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i163 ], [ 1, %bb.ao ] ; 8 uses
  %i.eb = icmp slt i32 %.sroa.0.02.i.i.i.i162, 17
  br i1 %i.eb, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i161
  %i.ec = icmp sgt i32 %.sroa.0.02.i.i.i.i162, 0
  br i1 %i.ec, label %.lr.ph.i.i.i.i.i.i166.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i165

.lr.ph.i.i.i.i.i.i166.preheader:                  ; preds = %bb.ap
end_hunk_2
begin_hunk_3_@_ZNK7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS1_26QuadAndTriangleDataAdapterINS0_4math4Vec3IfEENSG_IjEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i163

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i161
  %i.ei = call noundef i32 @sched_yield() #23     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i163

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i163: ; preds = %bb.aq, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i165
  %.sroa.0.1.i.i.i.i164 = phi i32 [ %i.eh, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i165 ], [ %.sroa.0.02.i.i.i.i162, %bb.aq ]
  %i.ej = atomicrmw xchg ptr %i.dy, i8 1 seq_cst, align 1
  %i.ek = trunc i8 %i.ej to i1
  br i1 %i.ek, label %.lr.ph.i.i.i.i161, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i159, !llvm.loop !47

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i159: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i163, %bb.ao
  %i.el = load ptr, ptr %i.dt, align 8, !tbaa !570 ; 2 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %bb.ar, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i

bb.ar:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i159
  %i.en = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #30
          to label %bb.as unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i160 ; 2 uses

bb.as:                                            ; preds = %bb.ar
  store ptr %i.en, ptr %i.dt, align 8, !tbaa !570
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i160: ; preds = %bb.ar
  %i.eo = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.dy release, align 1
  br label %.body155

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i: ; preds = %bb.as, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i159
  %i.ep = phi ptr [ %i.en, %bb.as ], [ %i.el, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i159 ]
  store atomic i8 0, ptr %i.dy release, align 4
  br label %bb.at

bb.at:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i
  %i.eq = phi ptr [ %i.ep, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i ], [ %i.dw, %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i ]
  %.sroa.0289.0.copyload = load i32, ptr %i.ds, align 8 ; 2 uses
  %.sroa.7291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 84 ; 2 uses
  %.sroa.7291.0.copyload = load i32, ptr %.sroa.7291.0..sroa_idx, align 4 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 88
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !570 ; 2 uses
  %i.er = add nsw i32 %.sroa.0289.0.copyload, 7
  %i.es = add i32 %.sroa.7291.0.copyload, 7
  %i.et = add nsw i32 %.sroa.10.0.copyload, 7
  %i.eu = load ptr, ptr %i.bm, align 8, !tbaa !1443
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.eu, i8 0, i64 512, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  invoke void @_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<double, 3>::ValueIter") align 8 %16, ptr noundef nonnull align 8 dereferenceable(96) %i.cu)
          to label %bb.au unwind label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.ev = load i32, ptr %i.bv, align 8, !tbaa !1228 ; 2 uses
  %i.ew = load ptr, ptr %i.bw, align 8, !tbaa !1229 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %.not335370 = icmp eq i32 %i.ev, 512
  br i1 %.not335370, label %._crit_edge374, label %.lr.ph373

.lr.ph373:                                        ; preds = %bb.au, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit
  %.sroa.5.0371 = phi i32 [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit ], [ %i.ev, %bb.au ] ; 5 uses
  %i.ex = zext i32 %.sroa.5.0371 to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.ex ; 3 uses
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !595 ; 2 uses
  %i.fa = fcmp olt double %i.ez, 0.000000e+00
  %i.fb = fcmp ogt double %i.ez, 7.500000e-01
  %or.cond142 = or i1 %i.fa, %i.fb
  br i1 %or.cond142, label %.loopexit, label %bb.az

bb.av:                                            ; preds = %bb.ah
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %.body155

bb.aw:                                            ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.body155

bb.ax:                                            ; preds = %bb.an
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.body155

bb.ay:                                            ; preds = %bb.at
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %.body155

bb.az:                                            ; preds = %.lr.ph373
  %i.fg = lshr i32 %.sroa.5.0371, 6
  %i.fh = lshr i32 %.sroa.5.0371, 3
  %i.fi = load i32, ptr %i.ds, align 8, !tbaa !543
  %i.fj = add nsw i32 %i.fi, %i.fg                ; 4 uses
  %i.fk = insertelement <2 x i32> poison, i32 %i.fh, i64 0
  %i.fl = insertelement <2 x i32> %i.fk, i32 %.sroa.5.0371, i64 1
  %i.fm = and <2 x i32> %i.fl, splat (i32 7)
  %i.fn = load <2 x i32>, ptr %.sroa.7291.0..sroa_idx, align 4, !tbaa !543
  %i.fo = add <2 x i32> %i.fn, %i.fm              ; 3 uses
  %i.fp = sitofp i32 %i.fj to double              ; 2 uses
  %i.fq = sitofp <2 x i32> %i.fo to <2 x double>  ; 3 uses
  %i.fr = add nsw i32 %i.fj, -1
  %i.fs = extractelement <2 x i32> %i.fo, i64 0   ; 3 uses
  %i.ft = add nsw i32 %i.fs, -1
  %i.fu = extractelement <2 x i32> %i.fo, i64 1   ; 3 uses
  %i.fv = add nsw i32 %i.fu, -1
  %.sroa.speculated16.i = call i32 @llvm.smax.i32(i32 %i.fr, i32 %.sroa.0289.0.copyload) ; 4 uses
  %.sroa.speculated11.i = call i32 @llvm.smax.i32(i32 %i.ft, i32 %.sroa.7291.0.copyload) ; 4 uses
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.fv, i32 %.sroa.10.0.copyload) ; 4 uses
  %i.fw = add nsw i32 %i.fj, 1
  %i.fx = add i32 %i.fs, 1
  %i.fy = add nsw i32 %i.fu, 1
  %.sroa.speculated16.i185 = call i32 @llvm.smin.i32(i32 %i.er, i32 %i.fw) ; 3 uses
  %.sroa.speculated11.i186 = call i32 @llvm.smin.i32(i32 %i.es, i32 %i.fx) ; 3 uses
  %.sroa.speculated.i187 = call i32 @llvm.smin.i32(i32 %i.et, i32 %i.fy) ; 3 uses
  store i32 %.sroa.speculated16.i, ptr %14, align 8, !tbaa !543
  %i.fz = icmp sgt i32 %.sroa.speculated16.i, %.sroa.speculated16.i185
  %i.ga = icmp sgt i32 %.sroa.speculated11.i, %.sroa.speculated11.i186
  %or.cond437 = select i1 %i.fz, i1 true, i1 %i.ga
  %.not348 = icmp sgt i32 %.sroa.speculated.i, %.sroa.speculated.i187
  %or.cond438 = select i1 %or.cond437, i1 true, i1 %.not348
  br i1 %or.cond438, label %.preheader.preheader, label %.lr.ph353

.preheader.preheader:                             ; preds = %._crit_edge354.split, %bb.az
  %i.gb = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  br label %.preheader

.lr.ph353:                                        ; preds = %bb.az, %._crit_edge354.split
  %storemerge356 = phi i32 [ %i.kn, %._crit_edge354.split ], [ %.sroa.speculated16.i, %bb.az ]
  %i.gc = shl i32 %storemerge356, 6
  %i.gd = and i32 %i.gc, 448
  store i32 %.sroa.speculated11.i, ptr %i.bc, align 4, !tbaa !543
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph353, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196._crit_edge
  %storemerge336351 = phi i32 [ %.sroa.speculated11.i, %.lr.ph353 ], [ %i.kl, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196._crit_edge ]
  %i.ge = shl i32 %storemerge336351, 3
  %i.gf = and i32 %i.ge, 56
  %i.gg = or disjoint i32 %i.gf, %i.gd
  store i32 %.sroa.speculated.i, ptr %i.bd, align 8, !tbaa !543
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph, %bb.bh
  %storemerge337349 = phi i32 [ %.sroa.speculated.i, %.lr.ph ], [ %i.kj, %bb.bh ] ; 4 uses
  %i.gh = and i32 %storemerge337349, 7
  %i.gi = or disjoint i32 %i.gg, %i.gh            ; 2 uses
  %i.gj = zext nneg i32 %i.gi to i64              ; 3 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.gj ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !543
  %i.gm = icmp eq i32 %i.gl, -1
  br i1 %i.gm, label %bb.bh, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.gj
  %i.go = load double, ptr %i.gn, align 8, !tbaa !595
  %i.gp = fcmp olt double %i.go, -7.500000e-01
  br i1 %i.gp, label %bb.bc, label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  %i.gq = shl nuw nsw i32 %i.gi, 1                ; 2 uses
  %i.gr = load ptr, ptr %i.bm, align 8, !tbaa !1443
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gj ; 2 uses
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !673, !range !804, !noundef !805
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196_crit_edge, label %bb.bd

._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196_crit_edge: ; preds = %bb.bc
  %.pre389 = zext nneg i32 %i.gq to i64
  br label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196

bb.bd:                                            ; preds = %bb.bc
  store i8 1, ptr %i.gs, align 1, !tbaa !673
  %i.gv = load <2 x i32>, ptr %14, align 8, !tbaa !543
  %i.gw = sitofp <2 x i32> %i.gv to <2 x double>
  store <2 x double> %i.gw, ptr %15, align 16, !tbaa !595
  %i.gx = sitofp i32 %storemerge337349 to double
  store double %i.gx, ptr %i.bx, align 16, !tbaa !595
  %i.gy = load ptr, ptr %i.bg, align 8, !tbaa !3195
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.gz = load i32, ptr %i.gk, align 4, !tbaa !543
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !11196
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !11196
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !11196
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !11196
  %i.ha = sext i32 %i.gz to i64
  %i.hb = load ptr, ptr %i.by, align 8, !tbaa !973, !noalias !11196 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !1049, !noalias !11196 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !1051, !noalias !11196
  %i.hf = getelementptr inbounds nuw [12 x i8], ptr %i.he, i64 %i.ha ; 3 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !543, !noalias !11196
  %i.hh = zext i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [12 x i8], ptr %i.hc, i64 %i.hh ; 2 uses
  %i.hj = load <2 x float>, ptr %i.hi, align 4, !tbaa !572, !noalias !11196
  %i.hk = fpext <2 x float> %i.hj to <2 x double>
  store <2 x double> %i.hk, ptr %6, align 16, !tbaa !595, !noalias !11196
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !572, !noalias !11196
  %i.hn = fpext float %i.hm to double
  store double %i.hn, ptr %i.bz, align 16, !tbaa !595, !noalias !11196
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !543, !noalias !11196
  %i.hq = zext i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [12 x i8], ptr %i.hc, i64 %i.hq ; 2 uses
  %i.hs = load <2 x float>, ptr %i.hr, align 4, !tbaa !572, !noalias !11196
  %i.ht = fpext <2 x float> %i.hs to <2 x double>
  store <2 x double> %i.ht, ptr %7, align 16, !tbaa !595, !noalias !11196
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !572, !noalias !11196
  %i.hw = fpext float %i.hv to double
  store double %i.hw, ptr %i.ca, align 16, !tbaa !595, !noalias !11196
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !543, !noalias !11196
  %i.hz = zext i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [12 x i8], ptr %i.hc, i64 %i.hz ; 2 uses
  %i.ib = load <2 x float>, ptr %i.ia, align 4, !tbaa !572, !noalias !11196
  %i.ic = fpext <2 x float> %i.ib to <2 x double>
  store <2 x double> %i.ic, ptr %8, align 16, !tbaa !595, !noalias !11196
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ie = load float, ptr %i.id, align 4, !tbaa !572, !noalias !11196
  %i.if = fpext float %i.ie to double
  store double %i.if, ptr %i.cb, align 16, !tbaa !595, !noalias !11196
  invoke void @_ZN7openvdb5v13_04math29closestPointOnTriangleToPointERKNS1_4Vec3IdEES5_S5_S5_RS3_(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.ig = zext nneg i32 %i.gq to i64              ; 4 uses
  %i.ih = getelementptr inbounds nuw [24 x i8], ptr %i.gy, i64 %i.ig ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !11196
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !11196
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !11196
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !11196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ih, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %i.ii = load ptr, ptr %i.bg, align 8, !tbaa !3195
  %i.ij = getelementptr inbounds nuw [24 x i8], ptr %i.ii, i64 %i.ig ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 24 ; 2 uses
  %.sroa.9252.0.copyload254 = load double, ptr %i.bx, align 16
  %i.il = load <2 x double>, ptr %15, align 16
  %i.im = load <2 x double>, ptr %i.ih, align 8, !tbaa !595, !noalias !11197
  %i.in = fsub <2 x double> %i.il, %i.im          ; 5 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.ip = load double, ptr %i.io, align 8, !tbaa !595, !noalias !11197
  %i.iq = fsub double %.sroa.9252.0.copyload254, %i.ip ; 4 uses
  %i.ir = extractelement <2 x double> %i.in, i64 0 ; 2 uses
  store <2 x double> %i.in, ptr %i.ik, align 8
  %.sroa.9252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ij, i64 40 ; 2 uses
  store double %i.iq, ptr %.sroa.9252.0..sroa_idx, align 8
  %foldExtExtBinop = fmul <2 x double> %i.in, %i.in
  %i.is = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.it = call double @llvm.fmuladd.f64(double %i.ir, double %i.ir, double %i.is)
  %i.iu = call double @llvm.fmuladd.f64(double %i.iq, double %i.iq, double %i.it)
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.iu) ; 2 uses
  %i.iv = call noundef double @llvm.fabs.f64(double %sqrt.i.i)
  %i.iw = fcmp ogt double %i.iv, f0x3E7AD7F29ABCAF48
  br i1 %i.iw, label %bb.bf, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196

bb.bf:                                            ; preds = %bb.be
  %i.ix = fdiv double 1.000000e+00, %sqrt.i.i     ; 2 uses
  %i.iy = fmul double %i.iq, %i.ix
  %i.iz = insertelement <2 x double> poison, double %i.ix, i64 0
  %i.ja = shufflevector <2 x double> %i.iz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jb = fmul <2 x double> %i.in, %i.ja
  store <2 x double> %i.jb, ptr %i.ik, align 8, !tbaa !595
  store double %i.iy, ptr %.sroa.9252.0..sroa_idx, align 8, !tbaa !595
  br label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196

bb.bg:                                            ; preds = %bb.bd
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %.body155

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196: ; preds = %._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196_crit_edge, %bb.be, %bb.bf
  %.pre-phi = phi i64 [ %.pre389, %._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196_crit_edge ], [ %i.ig, %bb.be ], [ %i.ig, %bb.bf ]
  %i.jd = load ptr, ptr %i.bg, align 8, !tbaa !3195
  %i.je = getelementptr inbounds nuw [24 x i8], ptr %i.jd, i64 %.pre-phi ; 5 uses
  %i.jf = load double, ptr %i.je, align 8, !tbaa !595, !noalias !11198
  %i.jg = fsub double %i.fp, %i.jf                ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.ji = load <2 x double>, ptr %i.jh, align 8, !tbaa !595, !noalias !11198
  %i.jj = fsub <2 x double> %i.fq, %i.ji          ; 5 uses
  %i.jk = extractelement <2 x double> %i.jj, i64 0
  %foldExtExtBinop447 = fmul <2 x double> %i.jj, %i.jj
  %i.jl = extractelement <2 x double> %foldExtExtBinop447, i64 0
  %i.jm = call double @llvm.fmuladd.f64(double %i.jg, double %i.jg, double %i.jl)
  %i.jn = extractelement <2 x double> %i.jj, i64 1 ; 3 uses
  %i.jo = call double @llvm.fmuladd.f64(double %i.jn, double %i.jn, double %i.jm)
  %sqrt.i.i195 = call noundef double @llvm.sqrt.f64(double %i.jo) ; 2 uses
  %i.jp = call noundef double @llvm.fabs.f64(double %sqrt.i.i195)
  %i.jq = fcmp ogt double %i.jp, f0x3E7AD7F29ABCAF48 ; 3 uses
  %i.jr = fdiv double 1.000000e+00, %sqrt.i.i195  ; 2 uses
  %i.js = fmul double %i.jg, %i.jr
  %i.jt = insertelement <2 x double> poison, double %i.jr, i64 0
  %i.ju = shufflevector <2 x double> %i.jt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jv = fmul <2 x double> %i.jj, %i.ju          ; 2 uses
  %i.jw = extractelement <2 x double> %i.jv, i64 1
  %.sroa.19.0 = select i1 %i.jq, double %i.jw, double %i.jn
  %i.jx = extractelement <2 x double> %i.jv, i64 0
  %.sroa.11272.0 = select i1 %i.jq, double %i.jx, double %i.jk
  %.sroa.0268.0 = select i1 %i.jq, double %i.js, double %i.jg
  %i.jy = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !595
  %i.ka = getelementptr inbounds nuw i8, ptr %i.je, i64 32
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !595
  %i.kc = fmul double %i.kb, %.sroa.11272.0
  %i.kd = call double @llvm.fmuladd.f64(double %i.jz, double %.sroa.0268.0, double %i.kc)
  %i.ke = getelementptr inbounds nuw i8, ptr %i.je, i64 40
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !595
  %i.kg = call noundef double @llvm.fmuladd.f64(double %i.kf, double %.sroa.19.0, double %i.kd)
  %i.kh = fcmp ogt double %i.kg, 0.000000e+00
  br i1 %i.kh, label %bb.bi, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196._crit_edge388

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196._crit_edge388: ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196
  %.pre = load i32, ptr %i.bd, align 8, !tbaa !543
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196._crit_edge388, %bb.bb, %bb.ba
  %i.ki = phi i32 [ %.pre, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196._crit_edge388 ], [ %storemerge337349, %bb.bb ], [ %storemerge337349, %bb.ba ] ; 2 uses
  %i.kj = add nsw i32 %i.ki, 1                    ; 2 uses
  store i32 %i.kj, ptr %i.bd, align 8, !tbaa !543
  %.not.not = icmp slt i32 %i.ki, %.sroa.speculated.i187
  br i1 %.not.not, label %bb.ba, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196._crit_edge, !llvm.loop !11189

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196._crit_edge: ; preds = %bb.bh
  %i.kk = load i32, ptr %i.bc, align 4, !tbaa !543 ; 2 uses
  %i.kl = add nsw i32 %i.kk, 1                    ; 2 uses
  store i32 %i.kl, ptr %i.bc, align 4, !tbaa !543
  %.not = icmp slt i32 %i.kk, %.sroa.speculated11.i186
  br i1 %.not, label %.lr.ph, label %._crit_edge354.split, !llvm.loop !11190

._crit_edge354.split:                             ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196._crit_edge
  %i.km = load i32, ptr %14, align 8, !tbaa !543  ; 2 uses
  %i.kn = add nsw i32 %i.km, 1                    ; 2 uses
  store i32 %i.kn, ptr %14, align 8, !tbaa !543
  %.not439 = icmp slt i32 %i.km, %.sroa.speculated16.i185
  br i1 %.not439, label %.lr.ph353, label %.preheader.preheader, !llvm.loop !11191

bb.bi:                                            ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196
  %i.ko = load <2 x i32>, ptr %14, align 8, !tbaa !543
  %i.kp = add nsw <2 x i32> %i.ko, splat (i32 1)
  store <2 x i32> %i.kp, ptr %14, align 8, !tbaa !543
  br label %.loopexit.sink.split

.preheader:                                       ; preds = %.preheader.preheader, %bb.cd
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.cd ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.kq = getelementptr inbounds nuw [12 x i8], ptr @_ZN7openvdb5v13_04util13COORD_OFFSETSE, i64 %indvars.iv ; 3 uses
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !543
  %i.ks = add nsw i32 %i.kr, %i.fj                ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 4
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !543
  %i.kv = add nsw i32 %i.ku, %i.fs                ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !543
  %i.ky = add nsw i32 %i.kx, %i.fu                ; 3 uses
  %.sroa.2.0.insert.ext.i197 = zext i32 %i.kv to i64
  %.sroa.2.0.insert.shift.i198 = shl nuw i64 %.sroa.2.0.insert.ext.i197, 32
  %.sroa.0.0.insert.ext.i199 = zext i32 %i.ks to i64
  %.sroa.0.0.insert.insert.i200 = or disjoint i64 %.sroa.2.0.insert.shift.i198, %.sroa.0.0.insert.ext.i199
  store i64 %.sroa.0.0.insert.insert.i200, ptr %14, align 8
  store i32 %i.ky, ptr %i.bd, align 8, !tbaa !570
  %i.kz = icmp slt i32 %i.ks, %.sroa.speculated16.i
  %i.la = icmp slt i32 %i.kv, %.sroa.speculated11.i
  %or.cond435 = select i1 %i.kz, i1 true, i1 %i.la
  br i1 %or.cond435, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread, label %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i

_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i: ; preds = %.preheader
  %i.lb = icmp sge i32 %i.ky, %.sroa.speculated.i
  %i.lc = icmp sge i32 %.sroa.speculated16.i185, %i.ks
  %or.cond.i.not342 = and i1 %i.lb, %i.lc
  %i.ld = icmp sge i32 %.sroa.speculated11.i186, %i.kv
  %or.cond10.i.not339 = select i1 %or.cond.i.not342, i1 %i.ld, i1 false
  %i.le = icmp sge i32 %.sroa.speculated.i187, %i.ky
  %or.cond332 = select i1 %or.cond10.i.not339, i1 %i.le, i1 false
  br i1 %or.cond332, label %bb.cd, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread

_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread: ; preds = %.preheader, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i
  %i.lf = invoke noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERd(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.bj unwind label %bb.cb

bb.bj:                                            ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread
  %i.lg = load double, ptr %i.h, align 8
  %i.lh = fcmp olt double %i.lg, -7.500000e-01
  %or.cond = select i1 %i.lf, i1 %i.lh, i1 false
  br i1 %or.cond, label %bb.bk, label %bb.cd

bb.bk:                                            ; preds = %bb.bj
  %i.li = load <2 x i32>, ptr %14, align 8, !tbaa !543 ; 3 uses
  %i.lj = extractelement <2 x i32> %i.li, i64 1   ; 10 uses
  %i.lk = extractelement <2 x i32> %i.li, i64 0   ; 7 uses
  %i.ll = sitofp <2 x i32> %i.li to <2 x double>
  store <2 x double> %i.ll, ptr %15, align 16, !tbaa !595
  %i.lm = load i32, ptr %i.bd, align 8, !tbaa !543 ; 11 uses
  %i.ln = sitofp i32 %i.lm to double
  store double %i.ln, ptr %i.bx, align 16, !tbaa !595
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.lo = and i32 %i.lk, -8
  %i.lp = load i32, ptr %i.ay, align 8, !tbaa !543
  %i.lq = icmp eq i32 %i.lo, %i.lp
  br i1 %i.lq, label %bb.bl, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i

bb.bl:                                            ; preds = %bb.bk
  %i.lr = and i32 %i.lj, -8
  %i.ls = load i32, ptr %i.cc, align 4, !tbaa !543
  %i.lt = icmp eq i32 %i.lr, %i.ls
  br i1 %i.lt, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.bl
  %i.lu = and i32 %i.lm, -8
  %i.lv = load i32, ptr %.sroa.6.0..sroa_idx.i.i145, align 8, !tbaa !543
  %i.lw = icmp eq i32 %i.lu, %i.lv
  br i1 %i.lw, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i
  %i.lx = load ptr, ptr %i.ax, align 8, !tbaa !3213 ; 2 uses
  %i.ly = shl i32 %i.lk, 6
  %i.lz = and i32 %i.ly, 448
  %i.ma = shl i32 %i.lj, 3
  %i.mb = and i32 %i.ma, 56
  %i.mc = or disjoint i32 %i.mb, %i.lz
  %i.md = and i32 %i.lm, 7
  %i.me = or disjoint i32 %i.mc, %i.md
  %i.mf = zext nneg i32 %i.me to i64
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.mf
  %.not.i.not.i = icmp eq ptr %i.lx, null
  br i1 %.not.i.not.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i, %bb.bl, %bb.bk
  %i.mh = and i32 %i.lk, -128                     ; 3 uses
  %i.mi = load i32, ptr %.06.i.i.i.i.ptr.1.i.i.i146, align 4, !tbaa !543
  %i.mj = icmp eq i32 %i.mh, %i.mi
  br i1 %i.mj, label %bb.bm, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i

bb.bm:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i
  %i.mk = and i32 %i.lj, -128
  %i.ml = load i32, ptr %i.cd, align 8, !tbaa !543
  %i.mm = icmp eq i32 %i.mk, %i.ml
  br i1 %i.mm, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.bm
  %i.mn = and i32 %i.lm, -128
  %i.mo = load i32, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i147, align 4, !tbaa !543
  %i.mp = icmp eq i32 %i.mn, %i.mo
  br i1 %i.mp, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i
  %i.mq = load ptr, ptr %i.cg, align 8, !tbaa !1879
  br label %.invoke

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i, %bb.bm, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i
  %i.mr = and i32 %i.lk, -4096                    ; 2 uses
  %i.ms = load i32, ptr %.06.i.i.i.i.ptr.2.i.i.i148, align 8, !tbaa !543
  %i.mt = icmp eq i32 %i.mr, %i.ms
  br i1 %i.mt, label %bb.bn, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i

bb.bn:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i
  %i.mu = and i32 %i.lj, -4096
  %i.mv = load i32, ptr %i.ce, align 4, !tbaa !543
  %i.mw = icmp eq i32 %i.mu, %i.mv
  br i1 %i.mw, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.bn
  %i.mx = and i32 %i.lm, -4096
  %i.my = load i32, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i149, align 8, !tbaa !543
  %i.mz = icmp eq i32 %i.mx, %i.my
  br i1 %i.mz, label %bb.bo, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i

bb.bo:                                            ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i
  %i.na = load ptr, ptr %i.cf, align 8, !tbaa !1857 ; 2 uses
  %i.nb = shl i32 %i.lk, 3
  %i.nc = and i32 %i.nb, 31744
  %i.nd = lshr i32 %i.lj, 2
  %i.ne = and i32 %i.nd, 992
  %i.nf = or disjoint i32 %i.ne, %i.nc            ; 2 uses
  %i.ng = lshr i32 %i.lm, 7
  %i.nh = and i32 %i.ng, 31
  %i.ni = or disjoint i32 %i.nh, %i.nf            ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.na, i64 262144
  %i.nk = lshr i32 %i.nf, 6
  %i.nl = zext nneg i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %i.nl
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !791
  %i.no = and i32 %i.ni, 63
  %i.np = zext nneg i32 %i.no to i64
  %i.nq = shl nuw i64 1, %i.np
  %i.nr = and i64 %i.nn, %i.nq
  %.not.i.i.i = icmp eq i64 %i.nr, 0
  %i.ns = zext nneg i32 %i.ni to i64
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %i.ns ; 3 uses
  br i1 %.not.i.i.i, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !570
  %i.nv = and i32 %i.lj, -128
  %i.nw = and i32 %i.lm, -128
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.nv to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.mh to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i.i, ptr %.06.i.i.i.i.ptr.1.i.i.i146, align 4
  store i32 %i.nw, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i147, align 4, !tbaa !570
  store ptr %i.nu, ptr %i.cg, align 8, !tbaa !1879
  %i.nx = load ptr, ptr %i.nt, align 8, !tbaa !570
  br label %.invoke

_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i, %bb.bn, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i
  %i.ny = load ptr, ptr %i.az, align 8, !tbaa !1827 ; 6 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 56
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !543
  %i.ob = sub nsw i32 %i.lj, %i.oa
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ny, i64 60
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !543
  %i.oe = sub nsw i32 %i.lm, %i.od
  %i.of = and i32 %i.ob, -4096                    ; 4 uses
  %i.og = and i32 %i.oe, -4096                    ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !722 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ny, i64 8 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.oi, null
  br i1 %.not12.i.i.i.i.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ny, i64 52
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !543
  %i.om = sub nsw i32 %i.lk, %i.ol
  %i.on = and i32 %i.om, -4096                    ; 4 uses
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.014.i.i.i.i.i = phi ptr [ %i.oi, %.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i ] ; 7 uses
  %.0813.i.i.i.i.i = phi ptr [ %i.oj, %.lr.ph.i.i.i.i.i ], [ %.19.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i ]
  %i.oo = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 32
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !543 ; 2 uses
  %i.oq = icmp slt i32 %i.op, %i.on
  br i1 %i.oq, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.or = icmp sgt i32 %i.op, %i.on
  br i1 %i.or, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.os = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 36
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !543 ; 2 uses
  %i.ou = icmp slt i32 %i.ot, %i.of
  br i1 %i.ou, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ov = icmp sgt i32 %i.ot, %i.of
  br i1 %i.ov, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i: ; preds = %bb.bt
  %i.ow = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 40
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !543
  %i.oy = icmp slt i32 %i.ox, %i.og
  br i1 %i.oy, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.bs, %bb.bq
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.bt, %bb.br
  %.sink.i.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ 16, %bb.bt ], [ 16, %bb.br ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ]
  %.19.i.i.i.i.i = phi ptr [ %.0813.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ %.014.i.i.i.i.i, %bb.bt ], [ %.014.i.i.i.i.i, %bb.br ], [ %.014.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ] ; 7 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 %.sink.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %i.oz, align 8, !tbaa !1171 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, label %bb.bq, !llvm.loop !308

_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i
  %i.pa = icmp eq ptr %.19.i.i.i.i.i, %i.oj
  br i1 %i.pa, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.bu

bb.bu:                                            ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i
  %i.pb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !543 ; 2 uses
  %i.pd = icmp slt i32 %i.on, %i.pc
  br i1 %i.pd, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.pe = icmp sgt i32 %i.on, %i.pc
  br i1 %i.pe, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.pf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 36
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !543 ; 2 uses
  %i.ph = icmp slt i32 %i.of, %i.pg
  br i1 %i.ph, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.pi = icmp sgt i32 %i.of, %i.pg
  br i1 %i.pi, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.bx
  %i.pj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !543
  %i.pl = icmp slt i32 %i.og, %i.pk
  br i1 %i.pl, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.bw, %bb.bu, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ny, i64 48
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.bx, %bb.bv
  %i.pn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 48 ; 2 uses
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !1819 ; 2 uses
  %.not.i219 = icmp eq ptr %i.po, null
  br i1 %.not.i219, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.pp = and i32 %i.lj, -4096
  %i.pq = and i32 %i.lm, -4096
  %.sroa.2.0.insert.ext.i.i220 = zext i32 %i.pp to i64
  %.sroa.2.0.insert.shift.i.i221 = shl nuw i64 %.sroa.2.0.insert.ext.i.i220, 32
  %.sroa.0.0.insert.ext.i.i222 = zext i32 %i.mr to i64
  %.sroa.0.0.insert.insert.i.i223 = or disjoint i64 %.sroa.2.0.insert.shift.i.i221, %.sroa.0.0.insert.ext.i.i222
  store i64 %.sroa.0.0.insert.insert.i.i223, ptr %.06.i.i.i.i.ptr.2.i.i.i148, align 8
  store i32 %i.pq, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i149, align 8, !tbaa !570
  store ptr %i.po, ptr %i.cf, align 8, !tbaa !1857
  %i.pr = load ptr, ptr %i.pn, align 8, !tbaa !1821 ; 2 uses
  %i.ps = shl i32 %i.lk, 3
  %i.pt = and i32 %i.ps, 31744
  %i.pu = lshr i32 %i.lj, 2
  %i.pv = and i32 %i.pu, 992
  %i.pw = or disjoint i32 %i.pv, %i.pt            ; 2 uses
  %i.px = lshr i32 %i.lm, 7
  %i.py = and i32 %i.px, 31
  %i.pz = or disjoint i32 %i.py, %i.pw            ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pr, i64 262144
  %i.qb = lshr i32 %i.pw, 6
  %i.qc = zext nneg i32 %i.qb to i64
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.qa, i64 %i.qc
  %i.qe = load i64, ptr %i.qd, align 8, !tbaa !791
  %i.qf = and i32 %i.pz, 63
  %i.qg = zext nneg i32 %i.qf to i64
  %i.qh = shl nuw i64 1, %i.qg
  %i.qi = and i64 %i.qe, %i.qh
  %.not.i.i224 = icmp eq i64 %i.qi, 0
  %i.qj = zext nneg i32 %i.pz to i64
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.pr, i64 %i.qj ; 3 uses
  br i1 %.not.i.i224, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !570
  %i.qm = and i32 %i.lj, -128
  %i.qn = and i32 %i.lm, -128
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.qm to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.mh to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %.06.i.i.i.i.ptr.1.i.i.i146, align 4
  store i32 %i.qn, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i147, align 4, !tbaa !570
  store ptr %i.ql, ptr %i.cg, align 8, !tbaa !1879
  %i.qo = load ptr, ptr %i.qk, align 8, !tbaa !570
  br label %.invoke

.invoke:                                          ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i, %bb.bp, %bb.bz
  %i.qp = phi ptr [ %i.qo, %bb.bz ], [ %i.nx, %bb.bp ], [ %i.mq, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i ]
  %i.qq = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIiLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKiRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.qp, ptr noundef nonnull align 4 dereferenceable(12) %14, ptr noundef nonnull align 8 dereferenceable(96) %13)
          to label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit unwind label %bb.cc

bb.ca:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.qr = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 56
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit: ; preds = %.invoke, %bb.bo, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i, %bb.ca, %bb.by, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i
  %.1.i.i = phi ptr [ %i.mg, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i ], [ %i.qk, %bb.by ], [ %i.qq, %.invoke ], [ %i.nt, %bb.bo ], [ %i.pm, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i ], [ %i.qr, %bb.ca ]
  %i.qs = load i32, ptr %.1.i.i, align 4, !tbaa !543
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !11199
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !11199
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !11199
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !11199
  %i.qt = sext i32 %i.qs to i64
  %i.qu = load ptr, ptr %i.by, align 8, !tbaa !973, !noalias !11199 ; 2 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !1049, !noalias !11199 ; 3 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !1051, !noalias !11199
  %i.qy = getelementptr inbounds nuw [12 x i8], ptr %i.qx, i64 %i.qt ; 3 uses
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !543, !noalias !11199
  %i.ra = zext i32 %i.qz to i64
  %i.rb = getelementptr inbounds nuw [12 x i8], ptr %i.qv, i64 %i.ra ; 2 uses
  %i.rc = load <2 x float>, ptr %i.rb, align 4, !tbaa !572, !noalias !11199
  %i.rd = fpext <2 x float> %i.rc to <2 x double>
  store <2 x double> %i.rd, ptr %2, align 16, !tbaa !595, !noalias !11199
  %i.re = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.rf = load float, ptr %i.re, align 4, !tbaa !572, !noalias !11199
  %i.rg = fpext float %i.rf to double
  store double %i.rg, ptr %i.ch, align 16, !tbaa !595, !noalias !11199
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qy, i64 4
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !543, !noalias !11199
  %i.rj = zext i32 %i.ri to i64
  %i.rk = getelementptr inbounds nuw [12 x i8], ptr %i.qv, i64 %i.rj ; 2 uses
  %i.rl = load <2 x float>, ptr %i.rk, align 4, !tbaa !572, !noalias !11199
  %i.rm = fpext <2 x float> %i.rl to <2 x double>
  store <2 x double> %i.rm, ptr %3, align 16, !tbaa !595, !noalias !11199
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !572, !noalias !11199
  %i.rp = fpext float %i.ro to double
  store double %i.rp, ptr %.sroa.6284.0..sroa_idx, align 16, !tbaa !595, !noalias !11199
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !543, !noalias !11199
  %i.rs = zext i32 %i.rr to i64
  %i.rt = getelementptr inbounds nuw [12 x i8], ptr %i.qv, i64 %i.rs ; 2 uses
  %i.ru = load <2 x float>, ptr %i.rt, align 4, !tbaa !572, !noalias !11199
  %i.rv = fpext <2 x float> %i.ru to <2 x double>
  store <2 x double> %i.rv, ptr %4, align 16, !tbaa !595, !noalias !11199
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !572, !noalias !11199
  %i.ry = fpext float %i.rx to double
  store double %i.ry, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !595, !noalias !11199
  invoke void @_ZN7openvdb5v13_04math29closestPointOnTriangleToPointERKNS1_4Vec3IdEES5_S5_S5_RS3_(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit211 unwind label %bb.cc

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit211: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !11199
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !11199
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !11199
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !11199
  %19 = load <3 x double>, ptr %18, align 8       ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  %i.rz = load <2 x double>, ptr %15, align 16    ; 2 uses
  %.sroa.9.0.copyload230 = load double, ptr %i.bx, align 16
  %i.sa = shufflevector <2 x double> %i.rz, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.sb = insertelement <2 x double> %i.sa, double %i.fp, i64 0
  %i.sc = shufflevector <3 x double> %19, <3 x double> poison, <2 x i32> zeroinitializer
  %i.sd = fsub <2 x double> %i.sb, %i.sc          ; 4 uses
  %i.se = shufflevector <2 x double> %i.fq, <2 x double> %i.rz, <2 x i32> <i32 0, i32 3>
  %20 = shufflevector <3 x double> %19, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.sf = fsub <2 x double> %i.se, %20            ; 4 uses
  %i.sg = insertelement <2 x double> %i.gb, double %.sroa.9.0.copyload230, i64 1
  %21 = shufflevector <3 x double> %19, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.sh = fsub <2 x double> %i.sg, %21            ; 4 uses
  %i.si = fmul <2 x double> %i.sf, %i.sf
  %i.sj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sd, <2 x double> %i.sd, <2 x double> %i.si)
  %i.sk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sh, <2 x double> %i.sh, <2 x double> %i.sj)
  %i.sl = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.sk) ; 2 uses
  %i.sm = fdiv <2 x double> splat (double 1.000000e+00), %i.sl ; 3 uses
  %i.sn = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.sl)
  %i.so = fcmp ogt <2 x double> %i.sn, splat (double f0x3E7AD7F29ABCAF48) ; 3 uses
  %i.sp = shufflevector <2 x double> %i.sh, <2 x double> %i.sd, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.sq = shufflevector <2 x double> %i.sm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sr = fmul <2 x double> %i.sp, %i.sq
  %i.ss = shufflevector <2 x i1> %i.so, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.st = select <2 x i1> %i.ss, <2 x double> %i.sr, <2 x double> %i.sp ; 2 uses
  %i.su = fmul <2 x double> %i.sf, %i.sm
  %i.sv = select <2 x i1> %i.so, <2 x double> %i.su, <2 x double> %i.sf ; 2 uses
  %i.sw = shufflevector <2 x double> %i.sh, <2 x double> %i.sd, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.sx = shufflevector <2 x double> %i.sm, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.sy = fmul <2 x double> %i.sw, %i.sx
  %i.sz = shufflevector <2 x i1> %i.so, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.ta = select <2 x i1> %i.sz, <2 x double> %i.sy, <2 x double> %i.sw ; 2 uses
  %shift = shufflevector <2 x double> %i.sv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop449 = fmul <2 x double> %i.sv, %shift
  %i.tb = extractelement <2 x double> %foldExtExtBinop449, i64 0
  %i.tc = extractelement <2 x double> %i.st, i64 1
  %i.td = extractelement <2 x double> %i.ta, i64 1
  %i.te = call double @llvm.fmuladd.f64(double %i.td, double %i.tc, double %i.tb)
  %i.tf = extractelement <2 x double> %i.st, i64 0
  %i.tg = extractelement <2 x double> %i.ta, i64 0
  %i.th = call noundef double @llvm.fmuladd.f64(double %i.tg, double %i.tf, double %i.te)
  %i.ti = fcmp ogt double %i.th, 0.000000e+00
  br i1 %i.ti, label %.loopexit.sink.split, label %bb.cd

bb.cb:                                            ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread
  %i.tj = landingpad { ptr, i32 }
          cleanup
  br label %.body155

bb.cc:                                            ; preds = %.invoke, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit
  %i.tk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %.body155

bb.cd:                                            ; preds = %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i, %bb.bj, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit211
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 26
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !11194

.loopexit.sink.split:                             ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit211, %bb.bi
  %i.tl = load double, ptr %i.ey, align 8, !tbaa !595
  %i.tm = fneg double %i.tl
  store double %i.tm, ptr %i.ey, align 8, !tbaa !595
  br label %.loopexit

.loopexit:                                        ; preds = %bb.cd, %.loopexit.sink.split, %.lr.ph373
  %i.tn = add i32 %.sroa.5.0371, 1                ; 4 uses
  %i.to = lshr i32 %i.tn, 6                       ; 3 uses
  %i.tp = icmp ugt i32 %i.tn, 511
  br i1 %i.tp, label %._crit_edge374, label %bb.ce

bb.ce:                                            ; preds = %.loopexit
  %i.tq = and i32 %i.tn, 63
  %i.tr = zext nneg i32 %i.to to i64              ; 8 uses
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.tr
  %i.tt = load i64, ptr %i.ts, align 8, !tbaa !791 ; 2 uses
  %i.tu = zext nneg i32 %i.tq to i64              ; 2 uses
  %i.tv = shl nuw i64 1, %i.tu
  %i.tw = and i64 %i.tt, %i.tv
  %.not.i.i.i.i = icmp eq i64 %i.tw, 0
  br i1 %.not.i.i.i.i, label %bb.cf, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

bb.cf:                                            ; preds = %bb.ce
  %i.tx = shl nsw i64 -1, %i.tu
  %i.ty = and i64 %i.tt, %i.tx                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.ty, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i212.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i212.preheader:                      ; preds = %bb.cf
  %exitcond.not.i.i.i.i443 = icmp eq i32 %i.to, 7
  br i1 %exitcond.not.i.i.i.i443, label %._crit_edge374, label %.lr.ph445

.lr.ph.i.i.i.i212:                                ; preds = %.lr.ph445
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge374, label %.lr.ph445.1

.lr.ph445.1:                                      ; preds = %.lr.ph.i.i.i.i212
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.tr, 2 ; 3 uses
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.next.i.i.i.i.1
  %i.ua = load i64, ptr %i.tz, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.ua, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i212.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i212.1:                              ; preds = %.lr.ph445.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge374, label %.lr.ph445.2

.lr.ph445.2:                                      ; preds = %.lr.ph.i.i.i.i212.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.tr, 3 ; 3 uses
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.next.i.i.i.i.2
  %i.uc = load i64, ptr %i.ub, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.uc, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i212.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i212.2:                              ; preds = %.lr.ph445.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge374, label %.lr.ph445.3

.lr.ph445.3:                                      ; preds = %.lr.ph.i.i.i.i212.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.tr, 4 ; 3 uses
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.next.i.i.i.i.3
  %i.ue = load i64, ptr %i.ud, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.ue, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i212.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i212.3:                              ; preds = %.lr.ph445.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge374, label %.lr.ph445.4

.lr.ph445.4:                                      ; preds = %.lr.ph.i.i.i.i212.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.tr, 5 ; 3 uses
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.next.i.i.i.i.4
  %i.ug = load i64, ptr %i.uf, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.ug, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i212.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i212.4:                              ; preds = %.lr.ph445.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge374, label %.lr.ph445.5

.lr.ph445.5:                                      ; preds = %.lr.ph.i.i.i.i212.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.tr, 6 ; 3 uses
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.next.i.i.i.i.5
  %i.ui = load i64, ptr %i.uh, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.ui, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i212.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i212.5:                              ; preds = %.lr.ph445.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge374, label %.lr.ph445.6

.lr.ph445.6:                                      ; preds = %.lr.ph.i.i.i.i212.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.tr, 7 ; 2 uses
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.next.i.i.i.i.6
  %i.uk = load i64, ptr %i.uj, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.uk, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge374, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph445:                                        ; preds = %.lr.ph.i.i.i.i212.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.tr, 1 ; 3 uses
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.next.i.i.i.i
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.um, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i212, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph445.6, %.lr.ph445.5, %.lr.ph445.4, %.lr.ph445.3, %.lr.ph445.2, %.lr.ph445.1, %.lr.ph445
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph445 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph445.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph445.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph445.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph445.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph445.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph445.6 ]
  %.lcssa = phi i64 [ %i.um, %.lr.ph445 ], [ %i.ua, %.lr.ph445.1 ], [ %i.uc, %.lr.ph445.2 ], [ %i.ue, %.lr.ph445.3 ], [ %i.ug, %.lr.ph445.4 ], [ %i.ui, %.lr.ph445.5 ], [ %i.uk, %.lr.ph445.6 ]
  %i.un = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.cf
  %.016.lcssa.i.i.i.i = phi i32 [ %i.to, %bb.cf ], [ %i.un, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.ty, %bb.cf ], [ %.lcssa, %.critedge.loopexit.i.i.i.i ]
  %i.uo = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.up = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.uq = trunc nuw nsw i64 %i.up to i32
  %i.ur = or disjoint i32 %i.uo, %i.uq
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit: ; preds = %bb.ce, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.ur, %.critedge.i.i.i.i ], [ %i.tn, %bb.ce ] ; 2 uses
  %.not335 = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not335, label %._crit_edge374, label %.lr.ph373

._crit_edge374:                                   ; preds = %.loopexit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit, %.lr.ph.i.i.i.i212.preheader, %.lr.ph445.6, %.lr.ph.i.i.i.i212, %.lr.ph.i.i.i.i212.1, %.lr.ph.i.i.i.i212.2, %.lr.ph.i.i.i.i212.3, %.lr.ph.i.i.i.i212.4, %.lr.ph.i.i.i.i212.5, %bb.au
  %i.us = add nuw i64 %.0118375, 1                ; 2 uses
  %exitcond387.not = icmp eq i64 %i.us, %i.bt
  br i1 %exitcond387.not, label %._crit_edge377, label %bb.ag, !llvm.loop !11195

.body155:                                         ; preds = %bb.aw, %bb.cb, %bb.cc, %bb.bg, %bb.ay, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i, %bb.av, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i160, %bb.ax, %bb.y, %bb.ab, %bb.x
  %.pn132.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.x ], [ %i.bl, %bb.y ], [ %i.bq, %bb.ab ], [ %i.eo, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i160 ], [ %i.tj, %bb.cb ], [ %i.fd, %bb.aw ], [ %i.dp, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ], [ %i.fe, %bb.ax ], [ %i.ff, %bb.ay ], [ %i.fc, %bb.av ], [ %i.tk, %bb.cc ], [ %i.jc, %bb.bg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %13, align 8, !tbaa !545
  %i.ut = load ptr, ptr %i.ah, align 8, !tbaa !3207 ; 2 uses
  %.not.i213 = icmp eq ptr %i.ut, null
  br i1 %.not.i213, label %.body, label %bb.cg

bb.cg:                                            ; preds = %.body155
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %13, ptr %i.b, align 8, !tbaa !3208
  %i.uv = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.uu, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i214 unwind label %bb.ch, !inline_history !3214 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i214: ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.body

bb.ch:                                            ; preds = %bb.cg
end_hunk_3
begin_hunk_4_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENSD_26QuadAndTriangleDataAdapterINSC_4math4Vec3IfEENSR_4Vec4IjEEEEEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.bi = load i8, ptr %i.l, align 1, !tbaa !1376
  %i.bj = zext i8 %i.bi to i64                    ; 2 uses
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bj
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.bm, ptr %i.a, align 1, !tbaa !570
  call void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS7_26QuadAndTriangleDataAdapterINS6_4math4Vec3IfEENSL_4Vec4IjEEEEEEKNS1_16auto_partitionerEE15offer_work_implIJRSU_RKS4_RhEEEvRNS1_14execution_dataEDpOT_(ptr noundef nonnull align 64 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 64 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 1 dereferenceable(1) %i.a), !inline_history !11432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bn = load i8, ptr %i.m, align 2, !tbaa !1374
  %i.bo = add i8 %i.bn, -1                        ; 2 uses
  store i8 %i.bo, ptr %i.m, align 2, !tbaa !1374
  %i.bp = load i8, ptr %i.l, align 1, !tbaa !1376
  %i.bq = add i8 %i.bp, 1
  %i.br = and i8 %i.bq, 7
  store i8 %i.br, ptr %i.l, align 1, !tbaa !1376
  br label %thread-pre-split18

bb.j:                                             ; preds = %bb.h
  %i.bs = load i8, ptr %4, align 8, !tbaa !1375
  %i.bt = zext i8 %i.bs to i64                    ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !570
  %i.bw = icmp ult i8 %i.bv, %i.bg
  br i1 %i.bw, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit: ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.bt ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !631
  %i.ca = load i64, ptr %i.bx, align 8, !tbaa !629
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !630
  %i.cd = sub i64 %i.ca, %i.cc
  %i.ce = icmp ult i64 %i.bz, %i.cd
  br i1 %i.ce, label %thread-pre-split18, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.j, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre21, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.bt, %bb.j ], [ %i.bt, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.pre-phi
  call void @_ZNK7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS1_26QuadAndTriangleDataAdapterINS0_4math4Vec3IfEENSF_4Vec4IjEEEEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.cf)
  %i.cg = load i8, ptr %i.m, align 2, !tbaa !1374
  %i.ch = add i8 %i.cg, -1                        ; 2 uses
  store i8 %i.ch, ptr %i.m, align 2, !tbaa !1374
  %i.ci = load i8, ptr %4, align 8, !tbaa !1375
  %i.cj = add i8 %i.ci, 7
  %i.ck = and i8 %i.cj, 7
  store i8 %i.ck, ptr %4, align 8, !tbaa !1375
  br label %thread-pre-split18

thread-pre-split18:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread, %bb.i
  %i.cl = phi i8 [ %i.bo, %bb.i ], [ %i.ch, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread ], [ %.pr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.cm = icmp eq i8 %i.cl, 0
  br i1 %i.cm, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit17, label %bb.k

bb.k:                                             ; preds = %thread-pre-split18
  %i.cn = load ptr, ptr %3, align 8, !tbaa !1199  ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 15
  %i.cp = load atomic i8, ptr %i.co monotonic, align 1
  %i.cq = icmp eq i8 %i.cp, -1
  br i1 %i.cq, label %bb.l, label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

bb.l:                                             ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !570
  br label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i: ; preds = %bb.l, %bb.k
  %.0.i.i = phi ptr [ %i.cs, %bb.l ], [ %i.cn, %bb.k ]
  %i.ct = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.ct, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit17, label %thread-pre-split, !llvm.loop !11433

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit17: ; preds = %thread-pre-split18, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.m

bb.m:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit17, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS7_26QuadAndTriangleDataAdapterINS6_4math4Vec3IfEENSL_4Vec4IjEEEEEEKNS1_16auto_partitionerEE15offer_work_implIJRSU_RNS0_2d05splitEEEEvRNS1_14execution_dataEDpOT_(ptr noundef nonnull align 64 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 64 dereferenceable(168) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr null, ptr %4, align 8, !tbaa !760
  %i.a = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1), !inline_history !11434 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS7_26QuadAndTriangleDataAdapterINS6_4math4Vec3IfEENSL_4Vec4IjEEEEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.a, align 64, !tbaa !545
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = load i64, ptr %i.c, align 64, !tbaa !629 ; 2 uses
  store i64 %i.e, ptr %i.d, align 64, !tbaa !629
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !630  ; 2 uses
  %i.i = sub i64 %i.e, %i.h
  %i.j = lshr i64 %i.i, 1
  %i.k = add i64 %i.j, %i.h                       ; 2 uses
  store i64 %i.k, ptr %i.c, align 64, !tbaa !629
  store i64 %i.k, ptr %i.f, align 8, !tbaa !630
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.n = load i64, ptr %i.m, align 16, !tbaa !631
  store i64 %i.n, ptr %i.l, align 16, !tbaa !631
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 32, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.t = load ptr, ptr %i.s, align 64, !tbaa !578 ; 2 uses
  %i.u = load <2 x ptr>, ptr %i.r, align 8, !tbaa !1088
  store <2 x ptr> %i.u, ptr %i.q, align 8, !tbaa !1088
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS8_4tree4TreeINSC_8RootNodeINSC_12InternalNodeINSF_INSC_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS9_26QuadAndTriangleDataAdapterINS8_4math4Vec3IfEENSN_4Vec4IjEEEEEEKNS1_16auto_partitionerEEEJRSW_RNS0_2d05splitERS2_EEEPT_RNS1_14execution_dataEDpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !570
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = load i32, ptr %i.v, align 4, !tbaa !543
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !543
  br label %_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS8_4tree4TreeINSC_8RootNodeINSC_12InternalNodeINSF_INSC_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS9_26QuadAndTriangleDataAdapterINS8_4math4Vec3IfEENSN_4Vec4IjEEEEEEKNS1_16auto_partitionerEEEJRSW_RNS0_2d05splitERS2_EEEPT_RNS1_14execution_dataEDpOT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.z = atomicrmw volatile add ptr %i.v, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS8_4tree4TreeINSC_8RootNodeINSC_12InternalNodeINSF_INSC_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS9_26QuadAndTriangleDataAdapterINS8_4math4Vec3IfEENSN_4Vec4IjEEEEEEKNS1_16auto_partitionerEEEJRSW_RNS0_2d05splitERS2_EEEPT_RNS1_14execution_dataEDpOT0_.exit

_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS8_4tree4TreeINSC_8RootNodeINSC_12InternalNodeINSF_INSC_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS9_26QuadAndTriangleDataAdapterINS8_4math4Vec3IfEENSN_4Vec4IjEEEEEEKNS1_16auto_partitionerEEEJRSW_RNS0_2d05splitERS2_EEEPT_RNS1_14execution_dataEDpOT0_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !4620
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 16, !tbaa !1186
  %i.ae = lshr i64 %i.ad, 1                       ; 2 uses
  store i64 %i.ae, ptr %i.ac, align 16, !tbaa !1186
  store i64 %i.ae, ptr %i.ab, align 16, !tbaa !1186
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i32 2, ptr %i.af, align 8, !tbaa !1184
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 156
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !1185
  store i8 %i.ai, ptr %i.ag, align 4, !tbaa !1185
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.ak = load i64, ptr %4, align 8, !tbaa !766
  store i64 %i.ak, ptr %i.aj, align 32, !tbaa !766
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.am = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) ; 6 uses
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !1197
  store ptr %i.an, ptr %i.am, align 8, !tbaa !1190
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 2, ptr %i.ao, align 8, !tbaa !1191
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.aq = load i64, ptr %4, align 8, !tbaa !766
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !766
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i8 0, ptr %i.ar, align 8, !tbaa !1198
  store ptr %i.am, ptr %i.al, align 8, !tbaa !4620
  store ptr %i.am, ptr %i.aa, align 8, !tbaa !4620
  %i.as = load ptr, ptr %1, align 8, !tbaa !1199
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(168) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS1_26QuadAndTriangleDataAdapterINS0_4math4Vec3IfEENSF_4Vec4IjEEEEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 6 uses
  %3 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 7 uses
  %4 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 9 uses
  %5 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %6 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %7 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 6 uses
  %8 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 7 uses
  %9 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 9 uses
  %10 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %11 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i8, align 1                       ; 3 uses
  %12 = alloca %"class.tbb::detail::d2::concurrent_hash_map<openvdb::v13_0::tree::ValueAccessorBase<const openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<int, 3>, 4>, 5>>>, true> *, bool>::accessor", align 8 ; 11 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.tbb::detail::d2::concurrent_hash_map<openvdb::v13_0::tree::ValueAccessorBase<const openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>, 5>>>, true> *, bool>::accessor", align 8 ; 11 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %14 = alloca %"class.openvdb::v13_0::tree::ValueAccessorImpl.2060", align 8 ; 20 uses
  %15 = alloca %"class.openvdb::v13_0::tree::ValueAccessorImpl.2062", align 8 ; 26 uses
  %i.h = alloca float, align 4                    ; 5 uses
  %16 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 16 uses
  %17 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 15 uses
  %18 = alloca %"struct.openvdb::v13_0::tree::LeafNode<float, 3>::ValueIter", align 8 ; 6 uses
  %19 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 8 uses
  %20 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1007 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %14, align 8, !tbaa !545
  %i.k = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !3199
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  store ptr null, ptr %13, align 8, !tbaa !1153
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  store i8 0, ptr %i.l, align 8, !tbaa !1152
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  store ptr %14, ptr %i.g, align 8, !tbaa !3200
  %i.o = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6lookupILb1ESI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEEbRKT0_S13_PNSR_14const_accessorEbT1_SU_(ptr noundef nonnull align 8 dereferenceable(570) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %13, i1 noundef zeroext true, ptr noundef nonnull @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE31allocate_node_default_constructISI_EEPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERKT_PKb, ptr noundef null)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i unwind label %bb.e ; 0 uses

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  store ptr null, ptr %i.m, align 8, !tbaa !3203
  %i.p = load ptr, ptr %13, align 8, !tbaa !1153  ; 3 uses
  %.not.i.i3.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i3.i.i.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i
  store ptr null, ptr %13, align 8, !tbaa !1153
  %i.q = load i8, ptr %i.l, align 8, !tbaa !1152, !range !804, !noundef !805
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = atomicrmw and ptr %i.p, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.t = atomicrmw sub ptr %i.p, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  store ptr null, ptr %i.m, align 8, !tbaa !3203
  %i.v = load ptr, ptr %13, align 8, !tbaa !1153  ; 3 uses
  %.not.i.i4.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i4.i.i.i, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %13, align 8, !tbaa !1153
  %i.w = load i8, ptr %i.l, align 8, !tbaa !1152, !range !804, !noundef !805
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = atomicrmw and ptr %i.v, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.z = atomicrmw sub ptr %i.v, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i

common.resume:                                    ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit229, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.u, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ], [ %.pn133.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit229 ]
  resume { ptr, i32 } %common.resume.op

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i: ; preds = %bb.h, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %common.resume

bb.i:                                             ; preds = %bb.d, %bb.c, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %14, align 8, !tbaa !545
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 2 uses
  store i64 9223372034707292159, ptr %i.ab, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !570
  %.06.i.i.i.i.ptr.1.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 36
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i.i, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %14, i64 44
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i, align 4, !tbaa !570
  %.06.i.i.i.i.ptr.2.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 48
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i.i, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %14, i64 56
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i, align 8, !tbaa !570
  store ptr null, ptr %i.aa, align 8, !tbaa !3205
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 32, i1 false)
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !3199 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERSC_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !1124
  br label %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERSC_.exit

_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERSC_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1008 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %15, align 8, !tbaa !545
  %i.ah = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !3207
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store ptr null, ptr %12, align 8, !tbaa !1153
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store i8 0, ptr %i.ai, align 8, !tbaa !1152
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store ptr %15, ptr %i.f, align 8, !tbaa !3208
  %i.al = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6lookupILb1ESI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEEbRKT0_S13_PNSR_14const_accessorEbT1_SU_(ptr noundef nonnull align 8 dereferenceable(570) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %12, i1 noundef zeroext true, ptr noundef nonnull @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE31allocate_node_default_constructISI_EEPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERKT_PKb, ptr noundef null)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i unwind label %bb.n ; 0 uses

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i: ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERSC_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  store ptr null, ptr %i.aj, align 8, !tbaa !3211
  %i.am = load ptr, ptr %12, align 8, !tbaa !1153 ; 3 uses
  %.not.i.i3.i.i.i146 = icmp eq ptr %i.am, null
  br i1 %.not.i.i3.i.i.i146, label %bb.r, label %bb.k

bb.k:                                             ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i
  store ptr null, ptr %12, align 8, !tbaa !1153
  %i.an = load i8, ptr %i.ai, align 8, !tbaa !1152, !range !804, !noundef !805
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ap = atomicrmw and ptr %i.am, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.aq = atomicrmw sub ptr %i.am, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.r

bb.n:                                             ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERSC_.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  store ptr null, ptr %i.aj, align 8, !tbaa !3211
  %i.as = load ptr, ptr %12, align 8, !tbaa !1153 ; 3 uses
  %.not.i.i4.i.i.i145 = icmp eq ptr %i.as, null
  br i1 %.not.i.i4.i.i.i145, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %12, align 8, !tbaa !1153
  %i.at = load i8, ptr %i.ai, align 8, !tbaa !1152, !range !804, !noundef !805
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.av = atomicrmw and ptr %i.as, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.aw = atomicrmw sub ptr %i.as, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i: ; preds = %bb.q, %bb.p, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %.body

bb.r:                                             ; preds = %bb.m, %bb.l, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %15, align 8, !tbaa !545
  %i.ay = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %15, i64 64 ; 3 uses
  store i64 9223372034707292159, ptr %i.ay, align 8
  %.sroa.6.0..sroa_idx.i.i147 = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i.i147, align 8, !tbaa !570
  %.06.i.i.i.i.ptr.1.i.i.i148 = getelementptr inbounds nuw i8, ptr %15, i64 36 ; 4 uses
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i.i148, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i149 = getelementptr inbounds nuw i8, ptr %15, i64 44 ; 4 uses
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i149, align 4, !tbaa !570
  %.06.i.i.i.i.ptr.2.i.i.i150 = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 3 uses
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i.i150, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i151 = getelementptr inbounds nuw i8, ptr %15, i64 56 ; 3 uses
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i151, align 8, !tbaa !570
  store ptr null, ptr %i.ax, align 8, !tbaa !3213
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, i8 0, i64 32, i1 false)
  %i.ba = load ptr, ptr %i.ah, align 8, !tbaa !3207 ; 2 uses
  %.not.i.i152 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i152, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !1827
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store i32 0, ptr %16, align 8, !tbaa !543
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 4 uses
  store i32 0, ptr %i.bc, align 4, !tbaa !543
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 6 uses
  store i32 0, ptr %i.bd, align 8, !tbaa !543
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.bg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN3tbb6detail2d18ets_baseILNS1_18ets_key_usage_typeE1EE12table_lookupERb(ptr noundef nonnull align 8 dereferenceable(104) %i.bf, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
          to label %bb.u unwind label %bb.x       ; 7 uses

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !3195
  %.not344 = icmp eq ptr %i.bh, null
  br i1 %.not344, label %bb.v, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit

bb.v:                                             ; preds = %bb.u
  %i.bi = invoke noalias noundef nonnull dereferenceable(24576) ptr @_Znam(i64 noundef 24576) #30
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !3195 ; 2 uses
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !3195
  %.not.i.i153 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i153, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IdEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IdEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i: ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.bj) #32
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit

bb.x:                                             ; preds = %bb.t
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body157

bb.y:                                             ; preds = %bb.v
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body157

_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit: ; preds = %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IdEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i, %bb.w, %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 5 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1443
  %.not345 = icmp eq ptr %i.bn, null
  br i1 %.not345, label %bb.z, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EE5resetIPbvEEvT_.exit

bb.z:                                             ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit
  %i.bo = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znam(i64 noundef 512) #30
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !1443 ; 2 uses
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !1443
  %.not.i.i154 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i154, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EE5resetIPbvEEvT_.exit, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %bb.aa
  call void @_ZdaPv(ptr noundef nonnull %i.bp) #32
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EE5resetIPbvEEvT_.exit

bb.ab:                                            ; preds = %bb.z
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body157

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EE5resetIPbvEEvT_.exit: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit, %bb.aa, %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !630 ; 2 uses
  %i.bt = load i64, ptr %1, align 8, !tbaa !629   ; 2 uses
  %i.bu = icmp ult i64 %i.bs, %i.bt
  br i1 %i.bu, label %.lr.ph387, label %._crit_edge388

.lr.ph387:                                        ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EE5resetIPbvEEvT_.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %15, i64 28
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.cg = getelementptr inbounds nuw i8, ptr %15, i64 52
  %i.ch = getelementptr inbounds nuw i8, ptr %15, i64 72 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %15, i64 80 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %20, i64 16
  br label %bb.ag

._crit_edge388:                                   ; preds = %._crit_edge385, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EE5resetIPbvEEvT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %15, align 8, !tbaa !545
  %i.cn = load ptr, ptr %i.ah, align 8, !tbaa !3207 ; 2 uses
  %.not.i = icmp eq ptr %i.cn, null
  br i1 %.not.i, label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge388
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %15, ptr %i.d, align 8, !tbaa !3208
  %i.cp = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.co, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i unwind label %bb.ad, !inline_history !3214 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit

bb.ad:                                            ; preds = %bb.ac
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #31, !inline_history !3214
  unreachable

_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit: ; preds = %._crit_edge388, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %14, align 8, !tbaa !545
  %i.cs = load ptr, ptr %i.k, align 8, !tbaa !3199 ; 2 uses
  %.not.i155 = icmp eq ptr %i.cs, null
  br i1 %.not.i155, label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %14, ptr %i.c, align 8, !tbaa !3200
  %i.cu = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.ct, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i unwind label %bb.af, !inline_history !3215 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit

bb.af:                                            ; preds = %bb.ae
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #31, !inline_history !3215
  unreachable

_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit: ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  ret void

bb.ag:                                            ; preds = %.lr.ph387, %._crit_edge385
  %.0118386 = phi i64 [ %i.bs, %.lr.ph387 ], [ %i.xm, %._crit_edge385 ] ; 2 uses
  %i.cx = load ptr, ptr %0, align 8, !tbaa !1006
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.0118386
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1339 ; 10 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load atomic i32, ptr %i.da seq_cst, align 4
  %.not.i.i156 = icmp eq i32 %i.db, 0
  br i1 %.not.i.i156, label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.cz)
          to label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i unwind label %bb.av

_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i: ; preds = %bb.ah, %bb.ag
  %i.dc = load ptr, ptr %i.cz, align 8, !tbaa !570 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.ai, label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE4dataEv.exit

bb.ai:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 12 ; 4 uses
  %i.df = atomicrmw xchg ptr %i.de, i8 1 seq_cst, align 1
  %i.dg = trunc i8 %i.df to i1
  br i1 %i.dg, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ai, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i
  %.sroa.0.02.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i ], [ 1, %bb.ai ] ; 8 uses
  %i.dh = icmp slt i32 %.sroa.0.02.i.i.i.i, 17
  br i1 %i.dh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i
  %i.di = icmp sgt i32 %.sroa.0.02.i.i.i.i, 0
  br i1 %i.di, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.aj
  %xtraiter = and i32 %.sroa.0.02.i.i.i.i, 7      ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.01.i.i.i.i.i.i.prol = phi i32 [ %i.dj, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.0.02.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.dj = add nsw i32 %.01.i.i.i.i.i.i.prol, -1   ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !11435

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.01.i.i.i.i.i.i.unr = phi i32 [ %.sroa.0.02.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dj, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.dk = icmp ult i32 %.sroa.0.02.i.i.i.i, 8
  br i1 %i.dk, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.01.i.i.i.i.i.i = phi i32 [ %i.dl, %.lr.ph.i.i.i.i.i.i ], [ %.01.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.dl = add nsw i32 %.01.i.i.i.i.i.i, -8
  call void @llvm.x86.sse2.pause()
  %i.dm = icmp sgt i32 %.01.i.i.i.i.i.i, 8
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i, !llvm.loop !38

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.aj
  %i.dn = shl i32 %.sroa.0.02.i.i.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i
  %i.do = call noundef i32 @sched_yield() #23     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i: ; preds = %bb.ak, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i32 [ %i.dn, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i ], [ %.sroa.0.02.i.i.i.i, %bb.ak ]
  %i.dp = atomicrmw xchg ptr %i.de, i8 1 seq_cst, align 1
  %i.dq = trunc i8 %i.dp to i1
  br i1 %i.dq, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i, !llvm.loop !47

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i, %bb.ai
  %i.dr = load ptr, ptr %i.cz, align 8, !tbaa !570 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.al, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i

bb.al:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i
  %i.dt = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #30
          to label %bb.am unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ; 2 uses

bb.am:                                            ; preds = %bb.al
  store ptr %i.dt, ptr %i.cz, align 8, !tbaa !570
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i: ; preds = %bb.al
  %i.du = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.de release, align 1
  br label %.body157

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i: ; preds = %bb.am, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i
  %i.dv = phi ptr [ %i.dt, %bb.am ], [ %i.dr, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i ]
  store atomic i8 0, ptr %i.de release, align 4
  br label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE4dataEv.exit

_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE4dataEv.exit: ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i
  %i.dw = phi ptr [ %i.dv, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i ], [ %i.dc, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cz, i64 80 ; 3 uses
  %i.dy = invoke noundef ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %15, ptr noundef nonnull align 4 dereferenceable(12) %i.dx)
          to label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstLeafERKNS0_4math5CoordE.exit unwind label %bb.aw ; 6 uses

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstLeafERKNS0_4math5CoordE.exit: ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE4dataEv.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load atomic i32, ptr %i.dz seq_cst, align 4
  %.not.i.i160 = icmp eq i32 %i.ea, 0
  br i1 %.not.i.i160, label %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i, label %bb.an

bb.an:                                            ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstLeafERKNS0_4math5CoordE.exit
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.dy)
          to label %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i unwind label %bb.ax

_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i: ; preds = %bb.an, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstLeafERKNS0_4math5CoordE.exit
  %i.eb = load ptr, ptr %i.dy, align 8, !tbaa !570 ; 2 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 12 ; 4 uses
  %i.ee = atomicrmw xchg ptr %i.ed, i8 1 seq_cst, align 1
  %i.ef = trunc i8 %i.ee to i1
  br i1 %i.ef, label %.lr.ph.i.i.i.i163, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i161

.lr.ph.i.i.i.i163:                                ; preds = %bb.ao, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i165
  %.sroa.0.02.i.i.i.i164 = phi i32 [ %.sroa.0.1.i.i.i.i166, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i165 ], [ 1, %bb.ao ] ; 8 uses
  %i.eg = icmp slt i32 %.sroa.0.02.i.i.i.i164, 17
  br i1 %i.eg, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i163
  %i.eh = icmp sgt i32 %.sroa.0.02.i.i.i.i164, 0
  br i1 %i.eh, label %.lr.ph.i.i.i.i.i.i168.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i167

.lr.ph.i.i.i.i.i.i168.preheader:                  ; preds = %bb.ap
end_hunk_4
begin_hunk_5_@_ZNK7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS1_26QuadAndTriangleDataAdapterINS0_4math4Vec3IfEENSF_4Vec4IjEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i165

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i165: ; preds = %bb.aq, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i167
  %.sroa.0.1.i.i.i.i166 = phi i32 [ %i.em, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i167 ], [ %.sroa.0.02.i.i.i.i164, %bb.aq ]
  %i.eo = atomicrmw xchg ptr %i.ed, i8 1 seq_cst, align 1
  %i.ep = trunc i8 %i.eo to i1
  br i1 %i.ep, label %.lr.ph.i.i.i.i163, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i161, !llvm.loop !47

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i161: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i165, %bb.ao
  %i.eq = load ptr, ptr %i.dy, align 8, !tbaa !570 ; 2 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %bb.ar, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i

bb.ar:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i161
  %i.es = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #30
          to label %bb.as unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i162 ; 2 uses

bb.as:                                            ; preds = %bb.ar
  store ptr %i.es, ptr %i.dy, align 8, !tbaa !570
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i162: ; preds = %bb.ar
  %i.et = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.ed release, align 1
  br label %.body157

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i: ; preds = %bb.as, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i161
  %i.eu = phi ptr [ %i.es, %bb.as ], [ %i.eq, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i161 ]
  store atomic i8 0, ptr %i.ed release, align 4
  br label %bb.at

bb.at:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i
  %i.ev = phi ptr [ %i.eu, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i ], [ %i.eb, %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i ]
  %.sroa.0300.0.copyload = load i32, ptr %i.dx, align 8 ; 2 uses
  %.sroa.7302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 84 ; 2 uses
  %.sroa.7302.0.copyload = load i32, ptr %.sroa.7302.0..sroa_idx, align 4 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 88
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !570 ; 2 uses
  %i.ew = add nsw i32 %.sroa.0300.0.copyload, 7
  %i.ex = add i32 %.sroa.7302.0.copyload, 7
  %i.ey = add nsw i32 %.sroa.10.0.copyload, 7
  %i.ez = load ptr, ptr %i.bm, align 8, !tbaa !1443
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.ez, i8 0, i64 512, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  invoke void @_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<float, 3>::ValueIter") align 8 %18, ptr noundef nonnull align 8 dereferenceable(96) %i.cz)
          to label %bb.au unwind label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.fa = load i32, ptr %i.bv, align 8, !tbaa !1228 ; 2 uses
  %i.fb = load ptr, ptr %i.bw, align 8, !tbaa !1229 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  %.not346381 = icmp eq i32 %i.fa, 512
  br i1 %.not346381, label %._crit_edge385, label %.lr.ph384

.lr.ph384:                                        ; preds = %bb.au, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit
  %.sroa.5.0382 = phi i32 [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit ], [ %i.fa, %bb.au ] ; 5 uses
  %i.fc = zext i32 %.sroa.5.0382 to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.fc ; 3 uses
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !572 ; 2 uses
  %i.ff = fcmp olt float %i.fe, 0.000000e+00
  %i.fg = fcmp ogt float %i.fe, 7.500000e-01
  %or.cond = or i1 %i.ff, %i.fg
  br i1 %or.cond, label %.loopexit, label %bb.az

bb.av:                                            ; preds = %bb.ah
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.body157

bb.aw:                                            ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE4dataEv.exit
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body157

bb.ax:                                            ; preds = %bb.an
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %.body157

bb.ay:                                            ; preds = %bb.at
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %.body157

bb.az:                                            ; preds = %.lr.ph384
  %i.fl = lshr i32 %.sroa.5.0382, 6
  %i.fm = lshr i32 %.sroa.5.0382, 3
  %i.fn = load i32, ptr %i.dx, align 8, !tbaa !543
  %i.fo = add nsw i32 %i.fn, %i.fl                ; 4 uses
  %i.fp = insertelement <2 x i32> poison, i32 %i.fm, i64 0
  %i.fq = insertelement <2 x i32> %i.fp, i32 %.sroa.5.0382, i64 1
  %i.fr = and <2 x i32> %i.fq, splat (i32 7)
  %i.fs = load <2 x i32>, ptr %.sroa.7302.0..sroa_idx, align 4, !tbaa !543
  %i.ft = add <2 x i32> %i.fs, %i.fr              ; 3 uses
  %i.fu = sitofp i32 %i.fo to double              ; 2 uses
  %i.fv = sitofp <2 x i32> %i.ft to <2 x double>  ; 3 uses
  %i.fw = add nsw i32 %i.fo, -1
  %i.fx = extractelement <2 x i32> %i.ft, i64 0   ; 3 uses
  %i.fy = add nsw i32 %i.fx, -1
  %i.fz = extractelement <2 x i32> %i.ft, i64 1   ; 3 uses
  %i.ga = add nsw i32 %i.fz, -1
  %.sroa.speculated16.i = call i32 @llvm.smax.i32(i32 %i.fw, i32 %.sroa.0300.0.copyload) ; 4 uses
  %.sroa.speculated11.i = call i32 @llvm.smax.i32(i32 %i.fy, i32 %.sroa.7302.0.copyload) ; 4 uses
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.ga, i32 %.sroa.10.0.copyload) ; 4 uses
  %i.gb = add nsw i32 %i.fo, 1
  %i.gc = add i32 %i.fx, 1
  %i.gd = add nsw i32 %i.fz, 1
  %.sroa.speculated16.i187 = call i32 @llvm.smin.i32(i32 %i.ew, i32 %i.gb) ; 3 uses
  %.sroa.speculated11.i188 = call i32 @llvm.smin.i32(i32 %i.ex, i32 %i.gc) ; 3 uses
  %.sroa.speculated.i189 = call i32 @llvm.smin.i32(i32 %i.ey, i32 %i.gd) ; 3 uses
  store i32 %.sroa.speculated16.i, ptr %16, align 8, !tbaa !543
  %i.ge = icmp sgt i32 %.sroa.speculated16.i, %.sroa.speculated16.i187
  %i.gf = icmp sgt i32 %.sroa.speculated11.i, %.sroa.speculated11.i188
  %or.cond453 = select i1 %i.ge, i1 true, i1 %i.gf
  %.not359 = icmp sgt i32 %.sroa.speculated.i, %.sroa.speculated.i189
  %or.cond454 = select i1 %or.cond453, i1 true, i1 %.not359
  br i1 %or.cond454, label %.preheader.preheader, label %.lr.ph364

.preheader.preheader:                             ; preds = %._crit_edge365.split, %bb.az
  %i.gg = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.gh = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  br label %.preheader

.lr.ph364:                                        ; preds = %bb.az, %._crit_edge365.split
  %storemerge367 = phi i32 [ %i.ly, %._crit_edge365.split ], [ %.sroa.speculated16.i, %bb.az ]
  %i.gi = shl i32 %storemerge367, 6
  %i.gj = and i32 %i.gi, 448
  store i32 %.sroa.speculated11.i, ptr %i.bc, align 4, !tbaa !543
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph364, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200._crit_edge
  %storemerge347362 = phi i32 [ %.sroa.speculated11.i, %.lr.ph364 ], [ %i.lw, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200._crit_edge ]
  %i.gk = shl i32 %storemerge347362, 3
  %i.gl = and i32 %i.gk, 56
  %i.gm = or disjoint i32 %i.gl, %i.gj
  store i32 %.sroa.speculated.i, ptr %i.bd, align 8, !tbaa !543
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph, %bb.bj
  %storemerge348360 = phi i32 [ %.sroa.speculated.i, %.lr.ph ], [ %i.lu, %bb.bj ] ; 4 uses
  %i.gn = and i32 %storemerge348360, 7
  %i.go = or disjoint i32 %i.gm, %i.gn            ; 2 uses
  %i.gp = zext nneg i32 %i.go to i64              ; 3 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.gp ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !543
  %i.gs = icmp eq i32 %i.gr, -1
  br i1 %i.gs, label %bb.bj, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.gp
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !572
  %i.gv = fcmp olt float %i.gu, -7.500000e-01
  br i1 %i.gv, label %bb.bc, label %bb.bj

bb.bc:                                            ; preds = %bb.bb
  %i.gw = shl nuw nsw i32 %i.go, 1                ; 2 uses
  %i.gx = load ptr, ptr %i.bm, align 8, !tbaa !1443
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gp ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !673, !range !804, !noundef !805
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200_crit_edge, label %bb.bd

._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200_crit_edge: ; preds = %bb.bc
  %.pre403 = zext nneg i32 %i.gw to i64
  br label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200

bb.bd:                                            ; preds = %bb.bc
  store i8 1, ptr %i.gy, align 1, !tbaa !673
  %i.hb = load <2 x i32>, ptr %16, align 8, !tbaa !543
  %i.hc = sitofp <2 x i32> %i.hb to <2 x double>
  store <2 x double> %i.hc, ptr %17, align 16, !tbaa !595
  %i.hd = sitofp i32 %storemerge348360 to double
  store double %i.hd, ptr %i.by, align 16, !tbaa !595
  %i.he = zext nneg i32 %i.gw to i64              ; 4 uses
  %i.hf = load ptr, ptr %i.bg, align 8, !tbaa !3195
  %i.hg = getelementptr inbounds nuw [24 x i8], ptr %i.hf, i64 %i.he ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  %i.hh = load i32, ptr %i.gq, align 4, !tbaa !543
  call void @llvm.experimental.noalias.scope.decl(metadata !11458)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !11458
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !11458
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !11458
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23, !noalias !11458
  %i.hi = sext i32 %i.hh to i64                   ; 2 uses
  %i.hj = load ptr, ptr %i.bz, align 8, !tbaa !1009, !noalias !11458 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !1053, !noalias !11458 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !1055, !noalias !11458
  %i.hn = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %i.hi ; 3 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !543, !noalias !11458
  %i.hp = zext i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [12 x i8], ptr %i.hk, i64 %i.hp ; 2 uses
  %i.hr = load <2 x float>, ptr %i.hq, align 4, !tbaa !572, !noalias !11458
  %i.hs = fpext <2 x float> %i.hr to <2 x double>
  store <2 x double> %i.hs, ptr %7, align 16, !tbaa !595, !noalias !11458
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !572, !noalias !11458
  %i.hv = fpext float %i.hu to double
  store double %i.hv, ptr %i.ca, align 16, !tbaa !595, !noalias !11458
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !543, !noalias !11458
  %i.hy = zext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [12 x i8], ptr %i.hk, i64 %i.hy ; 2 uses
  %i.ia = load <2 x float>, ptr %i.hz, align 4, !tbaa !572, !noalias !11458
  %i.ib = fpext <2 x float> %i.ia to <2 x double>
  store <2 x double> %i.ib, ptr %8, align 16, !tbaa !595, !noalias !11458
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.id = load float, ptr %i.ic, align 4, !tbaa !572, !noalias !11458
  %i.ie = fpext float %i.id to double
  store double %i.ie, ptr %i.cb, align 16, !tbaa !595, !noalias !11458
  %i.if = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !543, !noalias !11458
  %i.ih = zext i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [12 x i8], ptr %i.hk, i64 %i.ih ; 2 uses
  %i.ij = load <2 x float>, ptr %i.ii, align 4, !tbaa !572, !noalias !11458
  %i.ik = fpext <2 x float> %i.ij to <2 x double>
  store <2 x double> %i.ik, ptr %9, align 16, !tbaa !595, !noalias !11458
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.im = load float, ptr %i.il, align 4, !tbaa !572, !noalias !11458
  %i.in = fpext float %i.im to double
  store double %i.in, ptr %i.cc, align 16, !tbaa !595, !noalias !11458
  invoke void @_ZN7openvdb5v13_04math29closestPointOnTriangleToPointERKNS1_4Vec3IdEES5_S5_S5_RS3_(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %19, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %.noexc197 unwind label %bb.bi

.noexc197:                                        ; preds = %bb.bd
  %i.io = load ptr, ptr %i.bz, align 8, !tbaa !1009, !noalias !11458 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !1055
  %i.ir = getelementptr inbounds nuw [16 x i8], ptr %i.iq, i64 %i.hi
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 12
  %i.it = load i32, ptr %i.is, align 4, !tbaa !543 ; 2 uses
  %.not.i196 = icmp eq i32 %i.it, -1
  br i1 %.not.i196, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %.noexc197
  %i.iu = load ptr, ptr %i.io, align 8, !tbaa !1053
  %i.iv = zext i32 %i.it to i64
  %i.iw = getelementptr inbounds nuw [12 x i8], ptr %i.iu, i64 %i.iv ; 2 uses
  %i.ix = load <2 x float>, ptr %i.iw, align 4, !tbaa !572
  %i.iy = fpext <2 x float> %i.ix to <2 x double>
  store <2 x double> %i.iy, ptr %8, align 16, !tbaa !595, !noalias !11458
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !572
  %i.jb = fpext float %i.ja to double
  store double %i.jb, ptr %i.cb, align 16, !tbaa !595, !noalias !11458
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23, !noalias !11458
  invoke void @_ZN7openvdb5v13_04math29closestPointOnTriangleToPointERKNS1_4Vec3IdEES5_S5_S5_RS3_(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %.noexc198 unwind label %bb.bi

.noexc198:                                        ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !noalias !11458
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23, !noalias !11458
  %i.jc = load double, ptr %i.cc, align 16, !tbaa !595, !noalias !11459
  %21 = load double, ptr %i.cd, align 16, !tbaa !595, !alias.scope !11458, !noalias !11460
  %22 = load <3 x double>, ptr %17, align 16, !noalias !11458 ; 3 uses
  %i.jd = load <2 x double>, ptr %9, align 16, !tbaa !595, !noalias !11459 ; 2 uses
  %i.je = load <2 x double>, ptr %19, align 16, !tbaa !595, !alias.scope !11458, !noalias !11460 ; 2 uses
  %i.jf = shufflevector <3 x double> %22, <3 x double> poison, <2 x i32> zeroinitializer
  %i.jg = shufflevector <2 x double> %i.jd, <2 x double> %i.je, <2 x i32> <i32 0, i32 2>
  %i.jh = fsub <2 x double> %i.jf, %i.jg          ; 2 uses
  %23 = shufflevector <3 x double> %22, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ji = shufflevector <2 x double> %i.jd, <2 x double> %i.je, <2 x i32> <i32 1, i32 3>
  %i.jj = fsub <2 x double> %23, %i.ji            ; 2 uses
  %24 = shufflevector <3 x double> %22, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.jk = insertelement <2 x double> poison, double %i.jc, i64 0
  %i.jl = insertelement <2 x double> %i.jk, double %21, i64 1
  %i.jm = fsub <2 x double> %24, %i.jl            ; 2 uses
  %i.jn = fmul <2 x double> %i.jj, %i.jj
  %i.jo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jh, <2 x double> %i.jh, <2 x double> %i.jn)
  %i.jp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jm, <2 x double> %i.jm, <2 x double> %i.jo) ; 2 uses
  %i.jq = extractelement <2 x double> %i.jp, i64 0
  %i.jr = extractelement <2 x double> %i.jp, i64 1
  %i.js = fcmp olt double %i.jq, %i.jr
  br i1 %i.js, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.noexc198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %19, ptr noundef nonnull align 16 dereferenceable(24) %9, i64 24, i1 false)
  br label %bb.bg

bb.bg:                                            ; preds = %.noexc197, %.noexc198, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23, !noalias !11458
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !11458
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !11458
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !11458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hg, ptr noundef nonnull align 16 dereferenceable(24) %19, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  %i.jt = load ptr, ptr %i.bg, align 8, !tbaa !3195
  %i.ju = getelementptr inbounds nuw [24 x i8], ptr %i.jt, i64 %i.he ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 24 ; 2 uses
  %.sroa.9263.0.copyload265 = load double, ptr %i.by, align 16
  %i.jw = load <2 x double>, ptr %17, align 16
  %i.jx = load <2 x double>, ptr %i.hg, align 8, !tbaa !595, !noalias !11461
  %i.jy = fsub <2 x double> %i.jw, %i.jx          ; 5 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !595, !noalias !11461
  %i.kb = fsub double %.sroa.9263.0.copyload265, %i.ka ; 4 uses
  %i.kc = extractelement <2 x double> %i.jy, i64 0 ; 2 uses
  store <2 x double> %i.jy, ptr %i.jv, align 8
  %.sroa.9263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ju, i64 40 ; 2 uses
  store double %i.kb, ptr %.sroa.9263.0..sroa_idx, align 8
  %foldExtExtBinop = fmul <2 x double> %i.jy, %i.jy
  %i.kd = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.ke = call double @llvm.fmuladd.f64(double %i.kc, double %i.kc, double %i.kd)
  %i.kf = call double @llvm.fmuladd.f64(double %i.kb, double %i.kb, double %i.ke)
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.kf) ; 2 uses
  %i.kg = call noundef double @llvm.fabs.f64(double %sqrt.i.i)
  %i.kh = fcmp ogt double %i.kg, f0x3E7AD7F29ABCAF48
  br i1 %i.kh, label %bb.bh, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200

bb.bh:                                            ; preds = %bb.bg
  %i.ki = fdiv double 1.000000e+00, %sqrt.i.i     ; 2 uses
  %i.kj = fmul double %i.kb, %i.ki
  %i.kk = insertelement <2 x double> poison, double %i.ki, i64 0
  %i.kl = shufflevector <2 x double> %i.kk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.km = fmul <2 x double> %i.jy, %i.kl
  store <2 x double> %i.km, ptr %i.jv, align 8, !tbaa !595
  store double %i.kj, ptr %.sroa.9263.0..sroa_idx, align 8, !tbaa !595
  br label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200

bb.bi:                                            ; preds = %bb.be, %bb.bd
  %i.kn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %.body157

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200: ; preds = %._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200_crit_edge, %bb.bg, %bb.bh
  %.pre-phi = phi i64 [ %.pre403, %._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200_crit_edge ], [ %i.he, %bb.bg ], [ %i.he, %bb.bh ]
  %i.ko = load ptr, ptr %i.bg, align 8, !tbaa !3195
  %i.kp = getelementptr inbounds nuw [24 x i8], ptr %i.ko, i64 %.pre-phi ; 5 uses
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !595, !noalias !11462
  %i.kr = fsub double %i.fu, %i.kq                ; 4 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kt = load <2 x double>, ptr %i.ks, align 8, !tbaa !595, !noalias !11462
  %i.ku = fsub <2 x double> %i.fv, %i.kt          ; 5 uses
  %i.kv = extractelement <2 x double> %i.ku, i64 0
  %foldExtExtBinop463 = fmul <2 x double> %i.ku, %i.ku
  %i.kw = extractelement <2 x double> %foldExtExtBinop463, i64 0
  %i.kx = call double @llvm.fmuladd.f64(double %i.kr, double %i.kr, double %i.kw)
  %i.ky = extractelement <2 x double> %i.ku, i64 1 ; 3 uses
  %i.kz = call double @llvm.fmuladd.f64(double %i.ky, double %i.ky, double %i.kx)
  %sqrt.i.i199 = call noundef double @llvm.sqrt.f64(double %i.kz) ; 2 uses
  %i.la = call noundef double @llvm.fabs.f64(double %sqrt.i.i199)
  %i.lb = fcmp ogt double %i.la, f0x3E7AD7F29ABCAF48 ; 3 uses
  %i.lc = fdiv double 1.000000e+00, %sqrt.i.i199  ; 2 uses
  %i.ld = fmul double %i.kr, %i.lc
  %i.le = insertelement <2 x double> poison, double %i.lc, i64 0
  %i.lf = shufflevector <2 x double> %i.le, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lg = fmul <2 x double> %i.ku, %i.lf          ; 2 uses
  %i.lh = extractelement <2 x double> %i.lg, i64 1
  %.sroa.19.0 = select i1 %i.lb, double %i.lh, double %i.ky
  %i.li = extractelement <2 x double> %i.lg, i64 0
  %.sroa.11283.0 = select i1 %i.lb, double %i.li, double %i.kv
  %.sroa.0279.0 = select i1 %i.lb, double %i.ld, double %i.kr
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !595
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !595
  %i.ln = fmul double %i.lm, %.sroa.11283.0
  %i.lo = call double @llvm.fmuladd.f64(double %i.lk, double %.sroa.0279.0, double %i.ln)
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kp, i64 40
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !595
  %i.lr = call noundef double @llvm.fmuladd.f64(double %i.lq, double %.sroa.19.0, double %i.lo)
  %i.ls = fcmp ogt double %i.lr, 0.000000e+00
  br i1 %i.ls, label %bb.bk, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200._crit_edge399

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200._crit_edge399: ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200
  %.pre = load i32, ptr %i.bd, align 8, !tbaa !543
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200._crit_edge399, %bb.bb, %bb.ba
  %i.lt = phi i32 [ %.pre, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200._crit_edge399 ], [ %storemerge348360, %bb.bb ], [ %storemerge348360, %bb.ba ] ; 2 uses
  %i.lu = add nsw i32 %i.lt, 1                    ; 2 uses
  store i32 %i.lu, ptr %i.bd, align 8, !tbaa !543
  %.not.not = icmp slt i32 %i.lt, %.sroa.speculated.i189
  br i1 %.not.not, label %bb.ba, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200._crit_edge, !llvm.loop !11447

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200._crit_edge: ; preds = %bb.bj
  %i.lv = load i32, ptr %i.bc, align 4, !tbaa !543 ; 2 uses
  %i.lw = add nsw i32 %i.lv, 1                    ; 2 uses
  store i32 %i.lw, ptr %i.bc, align 4, !tbaa !543
  %.not = icmp slt i32 %i.lv, %.sroa.speculated11.i188
  br i1 %.not, label %.lr.ph, label %._crit_edge365.split, !llvm.loop !11448

._crit_edge365.split:                             ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200._crit_edge
  %i.lx = load i32, ptr %16, align 8, !tbaa !543  ; 2 uses
  %i.ly = add nsw i32 %i.lx, 1                    ; 2 uses
  store i32 %i.ly, ptr %16, align 8, !tbaa !543
  %.not455 = icmp slt i32 %i.lx, %.sroa.speculated16.i187
  br i1 %.not455, label %.lr.ph364, label %.preheader.preheader, !llvm.loop !11449

bb.bk:                                            ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200
  %i.lz = load <2 x i32>, ptr %16, align 8, !tbaa !543
  %i.ma = add nsw <2 x i32> %i.lz, splat (i32 1)
  store <2 x i32> %i.ma, ptr %16, align 8, !tbaa !543
  br label %.loopexit.sink.split

.preheader:                                       ; preds = %.preheader.preheader, %bb.ch
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ch ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.mb = getelementptr inbounds nuw [12 x i8], ptr @_ZN7openvdb5v13_04util13COORD_OFFSETSE, i64 %indvars.iv ; 3 uses
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !543
  %i.md = add nsw i32 %i.mc, %i.fo                ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !543
  %i.mg = add nsw i32 %i.mf, %i.fx                ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !543
  %i.mj = add nsw i32 %i.mi, %i.fz                ; 3 uses
  %.sroa.2.0.insert.ext.i201 = zext i32 %i.mg to i64
  %.sroa.2.0.insert.shift.i202 = shl nuw i64 %.sroa.2.0.insert.ext.i201, 32
  %.sroa.0.0.insert.ext.i203 = zext i32 %i.md to i64
  %.sroa.0.0.insert.insert.i204 = or disjoint i64 %.sroa.2.0.insert.shift.i202, %.sroa.0.0.insert.ext.i203
  store i64 %.sroa.0.0.insert.insert.i204, ptr %16, align 8
  store i32 %i.mj, ptr %i.bd, align 8, !tbaa !570
  %i.mk = icmp slt i32 %i.md, %.sroa.speculated16.i
  %i.ml = icmp slt i32 %i.mg, %.sroa.speculated11.i
  %or.cond451 = select i1 %i.mk, i1 true, i1 %i.ml
  br i1 %or.cond451, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread, label %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i

_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i: ; preds = %.preheader
  %i.mm = icmp sge i32 %i.mj, %.sroa.speculated.i
  %i.mn = icmp sge i32 %.sroa.speculated16.i187, %i.md
  %or.cond.i.not353 = and i1 %i.mm, %i.mn
  %i.mo = icmp sge i32 %.sroa.speculated11.i188, %i.mg
  %or.cond10.i.not350 = select i1 %or.cond.i.not353, i1 %i.mo, i1 false
  %i.mp = icmp sge i32 %.sroa.speculated.i189, %i.mj
  %or.cond343 = select i1 %or.cond10.i.not350, i1 %i.mp, i1 false
  br i1 %or.cond343, label %bb.ch, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread

_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread: ; preds = %.preheader, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i
  %i.mq = invoke noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERf(ptr noundef nonnull align 8 dereferenceable(96) %14, ptr noundef nonnull align 4 dereferenceable(12) %16, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
          to label %bb.bl unwind label %bb.cf

bb.bl:                                            ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread
  %i.mr = load float, ptr %i.h, align 4
  %i.ms = fcmp olt float %i.mr, -7.500000e-01
  %or.cond144 = select i1 %i.mq, i1 %i.ms, i1 false
  br i1 %or.cond144, label %bb.bm, label %bb.ch

bb.bm:                                            ; preds = %bb.bl
  %i.mt = load <2 x i32>, ptr %16, align 8, !tbaa !543 ; 3 uses
  %i.mu = extractelement <2 x i32> %i.mt, i64 1   ; 10 uses
  %i.mv = extractelement <2 x i32> %i.mt, i64 0   ; 7 uses
  %i.mw = sitofp <2 x i32> %i.mt to <2 x double>
  store <2 x double> %i.mw, ptr %17, align 16, !tbaa !595
  %i.mx = load i32, ptr %i.bd, align 8, !tbaa !543 ; 11 uses
  %i.my = sitofp i32 %i.mx to double
  store double %i.my, ptr %i.by, align 16, !tbaa !595
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  %i.mz = and i32 %i.mv, -8
  %i.na = load i32, ptr %i.ay, align 8, !tbaa !543
  %i.nb = icmp eq i32 %i.mz, %i.na
  br i1 %i.nb, label %bb.bn, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i

bb.bn:                                            ; preds = %bb.bm
  %i.nc = and i32 %i.mu, -8
  %i.nd = load i32, ptr %i.ce, align 4, !tbaa !543
  %i.ne = icmp eq i32 %i.nc, %i.nd
  br i1 %i.ne, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.bn
  %i.nf = and i32 %i.mx, -8
  %i.ng = load i32, ptr %.sroa.6.0..sroa_idx.i.i147, align 8, !tbaa !543
  %i.nh = icmp eq i32 %i.nf, %i.ng
  br i1 %i.nh, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i
  %i.ni = load ptr, ptr %i.ax, align 8, !tbaa !3213 ; 2 uses
  %i.nj = shl i32 %i.mv, 6
  %i.nk = and i32 %i.nj, 448
  %i.nl = shl i32 %i.mu, 3
  %i.nm = and i32 %i.nl, 56
  %i.nn = or disjoint i32 %i.nm, %i.nk
  %i.no = and i32 %i.mx, 7
  %i.np = or disjoint i32 %i.nn, %i.no
  %i.nq = zext nneg i32 %i.np to i64
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.nq
  %.not.i.not.i = icmp eq ptr %i.ni, null
  br i1 %.not.i.not.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i, %bb.bn, %bb.bm
  %i.ns = and i32 %i.mv, -128                     ; 3 uses
  %i.nt = load i32, ptr %.06.i.i.i.i.ptr.1.i.i.i148, align 4, !tbaa !543
  %i.nu = icmp eq i32 %i.ns, %i.nt
  br i1 %i.nu, label %bb.bo, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i

bb.bo:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i
  %i.nv = and i32 %i.mu, -128
  %i.nw = load i32, ptr %i.cf, align 8, !tbaa !543
  %i.nx = icmp eq i32 %i.nv, %i.nw
  br i1 %i.nx, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.bo
  %i.ny = and i32 %i.mx, -128
  %i.nz = load i32, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i149, align 4, !tbaa !543
  %i.oa = icmp eq i32 %i.ny, %i.nz
  br i1 %i.oa, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i
  %i.ob = load ptr, ptr %i.ci, align 8, !tbaa !1879
  br label %.invoke

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i, %bb.bo, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i
  %i.oc = and i32 %i.mv, -4096                    ; 2 uses
  %i.od = load i32, ptr %.06.i.i.i.i.ptr.2.i.i.i150, align 8, !tbaa !543
  %i.oe = icmp eq i32 %i.oc, %i.od
  br i1 %i.oe, label %bb.bp, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i

bb.bp:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i
  %i.of = and i32 %i.mu, -4096
  %i.og = load i32, ptr %i.cg, align 4, !tbaa !543
  %i.oh = icmp eq i32 %i.of, %i.og
  br i1 %i.oh, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.bp
  %i.oi = and i32 %i.mx, -4096
  %i.oj = load i32, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i151, align 8, !tbaa !543
  %i.ok = icmp eq i32 %i.oi, %i.oj
  br i1 %i.ok, label %bb.bq, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i

bb.bq:                                            ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i
  %i.ol = load ptr, ptr %i.ch, align 8, !tbaa !1857 ; 2 uses
  %i.om = shl i32 %i.mv, 3
  %i.on = and i32 %i.om, 31744
  %i.oo = lshr i32 %i.mu, 2
  %i.op = and i32 %i.oo, 992
  %i.oq = or disjoint i32 %i.op, %i.on            ; 2 uses
  %i.or = lshr i32 %i.mx, 7
  %i.os = and i32 %i.or, 31
  %i.ot = or disjoint i32 %i.os, %i.oq            ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ol, i64 262144
  %i.ov = lshr i32 %i.oq, 6
  %i.ow = zext nneg i32 %i.ov to i64
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %i.ow
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !791
  %i.oz = and i32 %i.ot, 63
  %i.pa = zext nneg i32 %i.oz to i64
  %i.pb = shl nuw i64 1, %i.pa
  %i.pc = and i64 %i.oy, %i.pb
  %.not.i.i.i = icmp eq i64 %i.pc, 0
  %i.pd = zext nneg i32 %i.ot to i64
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %i.pd ; 3 uses
  br i1 %.not.i.i.i, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !570
  %i.pg = and i32 %i.mu, -128
  %i.ph = and i32 %i.mx, -128
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.pg to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.ns to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i.i, ptr %.06.i.i.i.i.ptr.1.i.i.i148, align 4
  store i32 %i.ph, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i149, align 4, !tbaa !570
  store ptr %i.pf, ptr %i.ci, align 8, !tbaa !1879
  %i.pi = load ptr, ptr %i.pe, align 8, !tbaa !570
  br label %.invoke

_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i, %bb.bp, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i
  %i.pj = load ptr, ptr %i.az, align 8, !tbaa !1827 ; 6 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 56
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !543
  %i.pm = sub nsw i32 %i.mu, %i.pl
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pj, i64 60
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !543
  %i.pp = sub nsw i32 %i.mx, %i.po
  %i.pq = and i32 %i.pm, -4096                    ; 4 uses
  %i.pr = and i32 %i.pp, -4096                    ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !722 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pj, i64 8 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.pt, null
  br i1 %.not12.i.i.i.i.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pj, i64 52
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !543
  %i.px = sub nsw i32 %i.mv, %i.pw
  %i.py = and i32 %i.px, -4096                    ; 4 uses
  br label %bb.bs

bb.bs:                                            ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.014.i.i.i.i.i = phi ptr [ %i.pt, %.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i ] ; 7 uses
  %.0813.i.i.i.i.i = phi ptr [ %i.pu, %.lr.ph.i.i.i.i.i ], [ %.19.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i ]
  %i.pz = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 32
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !543 ; 2 uses
  %i.qb = icmp slt i32 %i.qa, %i.py
  br i1 %i.qb, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.qc = icmp sgt i32 %i.qa, %i.py
  br i1 %i.qc, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.qd = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 36
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !543 ; 2 uses
  %i.qf = icmp slt i32 %i.qe, %i.pq
  br i1 %i.qf, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.qg = icmp sgt i32 %i.qe, %i.pq
  br i1 %i.qg, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i: ; preds = %bb.bv
  %i.qh = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 40
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !543
  %i.qj = icmp slt i32 %i.qi, %i.pr
  br i1 %i.qj, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.bu, %bb.bs
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.bv, %bb.bt
  %.sink.i.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ 16, %bb.bv ], [ 16, %bb.bt ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ]
  %.19.i.i.i.i.i = phi ptr [ %.0813.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ %.014.i.i.i.i.i, %bb.bv ], [ %.014.i.i.i.i.i, %bb.bt ], [ %.014.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ] ; 7 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 %.sink.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %i.qk, align 8, !tbaa !1171 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, label %bb.bs, !llvm.loop !308

_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i
  %i.ql = icmp eq ptr %.19.i.i.i.i.i, %i.pu
  br i1 %i.ql, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.bw

bb.bw:                                            ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i
  %i.qm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !543 ; 2 uses
  %i.qo = icmp slt i32 %i.py, %i.qn
  br i1 %i.qo, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.qp = icmp sgt i32 %i.py, %i.qn
  br i1 %i.qp, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.qq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 36
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !543 ; 2 uses
  %i.qs = icmp slt i32 %i.pq, %i.qr
  br i1 %i.qs, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.qt = icmp sgt i32 %i.pq, %i.qr
  br i1 %i.qt, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.bz
  %i.qu = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !543
  %i.qw = icmp slt i32 %i.pr, %i.qv
  br i1 %i.qw, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.by, %bb.bw, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i
  %i.qx = getelementptr inbounds nuw i8, ptr %i.pj, i64 48
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.bz, %bb.bx
  %i.qy = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 48 ; 2 uses
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !1819 ; 2 uses
  %.not.i230 = icmp eq ptr %i.qz, null
  br i1 %.not.i230, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.ra = and i32 %i.mu, -4096
  %i.rb = and i32 %i.mx, -4096
  %.sroa.2.0.insert.ext.i.i231 = zext i32 %i.ra to i64
  %.sroa.2.0.insert.shift.i.i232 = shl nuw i64 %.sroa.2.0.insert.ext.i.i231, 32
  %.sroa.0.0.insert.ext.i.i233 = zext i32 %i.oc to i64
  %.sroa.0.0.insert.insert.i.i234 = or disjoint i64 %.sroa.2.0.insert.shift.i.i232, %.sroa.0.0.insert.ext.i.i233
  store i64 %.sroa.0.0.insert.insert.i.i234, ptr %.06.i.i.i.i.ptr.2.i.i.i150, align 8
  store i32 %i.rb, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i151, align 8, !tbaa !570
  store ptr %i.qz, ptr %i.ch, align 8, !tbaa !1857
  %i.rc = load ptr, ptr %i.qy, align 8, !tbaa !1821 ; 2 uses
  %i.rd = shl i32 %i.mv, 3
  %i.re = and i32 %i.rd, 31744
  %i.rf = lshr i32 %i.mu, 2
  %i.rg = and i32 %i.rf, 992
  %i.rh = or disjoint i32 %i.rg, %i.re            ; 2 uses
  %i.ri = lshr i32 %i.mx, 7
  %i.rj = and i32 %i.ri, 31
  %i.rk = or disjoint i32 %i.rj, %i.rh            ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rc, i64 262144
  %i.rm = lshr i32 %i.rh, 6
  %i.rn = zext nneg i32 %i.rm to i64
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.rl, i64 %i.rn
  %i.rp = load i64, ptr %i.ro, align 8, !tbaa !791
  %i.rq = and i32 %i.rk, 63
  %i.rr = zext nneg i32 %i.rq to i64
  %i.rs = shl nuw i64 1, %i.rr
  %i.rt = and i64 %i.rp, %i.rs
  %.not.i.i235 = icmp eq i64 %i.rt, 0
  %i.ru = zext nneg i32 %i.rk to i64
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.rc, i64 %i.ru ; 3 uses
  br i1 %.not.i.i235, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !570
  %i.rx = and i32 %i.mu, -128
  %i.ry = and i32 %i.mx, -128
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.rx to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.ns to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %.06.i.i.i.i.ptr.1.i.i.i148, align 4
  store i32 %i.ry, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i149, align 4, !tbaa !570
  store ptr %i.rw, ptr %i.ci, align 8, !tbaa !1879
  %i.rz = load ptr, ptr %i.rv, align 8, !tbaa !570
  br label %.invoke

.invoke:                                          ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i, %bb.br, %bb.cb
  %i.sa = phi ptr [ %i.rz, %bb.cb ], [ %i.pi, %bb.br ], [ %i.ob, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i ]
  %i.sb = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIiLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKiRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.sa, ptr noundef nonnull align 4 dereferenceable(12) %16, ptr noundef nonnull align 8 dereferenceable(96) %15)
          to label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit unwind label %bb.cg

bb.cc:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.sc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 56
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit: ; preds = %.invoke, %bb.bq, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i, %bb.cc, %bb.ca, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i
  %.1.i.i = phi ptr [ %i.nr, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i ], [ %i.rv, %bb.ca ], [ %i.sb, %.invoke ], [ %i.pe, %bb.bq ], [ %i.qx, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i ], [ %i.sc, %bb.cc ]
  %i.sd = load i32, ptr %.1.i.i, align 4, !tbaa !543
  call void @llvm.experimental.noalias.scope.decl(metadata !11463)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !11463
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !11463
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !11463
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !11463
  %i.se = sext i32 %i.sd to i64                   ; 2 uses
  %i.sf = load ptr, ptr %i.bz, align 8, !tbaa !1009, !noalias !11463 ; 2 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !1053, !noalias !11463 ; 3 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sf, i64 16
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !1055, !noalias !11463
  %i.sj = getelementptr inbounds nuw [16 x i8], ptr %i.si, i64 %i.se ; 3 uses
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !543, !noalias !11463
  %i.sl = zext i32 %i.sk to i64
  %i.sm = getelementptr inbounds nuw [12 x i8], ptr %i.sg, i64 %i.sl ; 2 uses
  %i.sn = load <2 x float>, ptr %i.sm, align 4, !tbaa !572, !noalias !11463
  %i.so = fpext <2 x float> %i.sn to <2 x double>
  store <2 x double> %i.so, ptr %2, align 16, !tbaa !595, !noalias !11463
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  %i.sq = load float, ptr %i.sp, align 4, !tbaa !572, !noalias !11463
  %i.sr = fpext float %i.sq to double
  store double %i.sr, ptr %i.cj, align 16, !tbaa !595, !noalias !11463
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sj, i64 4
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !543, !noalias !11463
  %i.su = zext i32 %i.st to i64
  %i.sv = getelementptr inbounds nuw [12 x i8], ptr %i.sg, i64 %i.su ; 2 uses
  %i.sw = load <2 x float>, ptr %i.sv, align 4, !tbaa !572, !noalias !11463
  %i.sx = fpext <2 x float> %i.sw to <2 x double>
  store <2 x double> %i.sx, ptr %3, align 16, !tbaa !595, !noalias !11463
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %i.sz = load float, ptr %i.sy, align 4, !tbaa !572, !noalias !11463
  %i.ta = fpext float %i.sz to double
  store double %i.ta, ptr %i.ck, align 16, !tbaa !595, !noalias !11463
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !543, !noalias !11463
  %i.td = zext i32 %i.tc to i64
  %i.te = getelementptr inbounds nuw [12 x i8], ptr %i.sg, i64 %i.td ; 2 uses
  %i.tf = load <2 x float>, ptr %i.te, align 4, !tbaa !572, !noalias !11463
  %i.tg = fpext <2 x float> %i.tf to <2 x double>
  store <2 x double> %i.tg, ptr %4, align 16, !tbaa !595, !noalias !11463
  %i.th = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  %i.ti = load float, ptr %i.th, align 4, !tbaa !572, !noalias !11463
  %i.tj = fpext float %i.ti to double
  store double %i.tj, ptr %i.cl, align 16, !tbaa !595, !noalias !11463
  invoke void @_ZN7openvdb5v13_04math29closestPointOnTriangleToPointERKNS1_4Vec3IdEES5_S5_S5_RS3_(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.noexc216 unwind label %bb.cg

.noexc216:                                        ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit
  %i.tk = load ptr, ptr %i.bz, align 8, !tbaa !1009, !noalias !11463 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !1055
  %i.tn = getelementptr inbounds nuw [16 x i8], ptr %i.tm, i64 %i.se
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 12
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !543 ; 2 uses
  %.not.i210 = icmp eq i32 %i.tp, -1
  br i1 %.not.i210, label %.noexc216._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit222_crit_edge, label %bb.cd

.noexc216._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit222_crit_edge: ; preds = %.noexc216
  %.sroa.0.0.copyload237.pre = load double, ptr %17, align 16
  %.sroa.7.0.copyload239.pre = load double, ptr %i.bx, align 8
  %.sroa.9.0.copyload241.pre = load double, ptr %i.by, align 16
  br label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit222

bb.cd:                                            ; preds = %.noexc216
  %i.tq = load ptr, ptr %i.tk, align 8, !tbaa !1053
  %i.tr = zext i32 %i.tp to i64
  %i.ts = getelementptr inbounds nuw [12 x i8], ptr %i.tq, i64 %i.tr ; 2 uses
  %i.tt = load <2 x float>, ptr %i.ts, align 4, !tbaa !572
  %i.tu = fpext <2 x float> %i.tt to <2 x double>
  store <2 x double> %i.tu, ptr %3, align 16, !tbaa !595, !noalias !11463
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !572
  %i.tx = fpext float %i.tw to double
  store double %i.tx, ptr %i.ck, align 16, !tbaa !595, !noalias !11463
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !11463
  invoke void @_ZN7openvdb5v13_04math29closestPointOnTriangleToPointERKNS1_4Vec3IdEES5_S5_S5_RS3_(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.noexc217 unwind label %bb.cg

.noexc217:                                        ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !noalias !11463
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !11463
  %i.ty = load double, ptr %i.cl, align 16, !tbaa !595, !noalias !11464
  %i.tz = load double, ptr %i.cm, align 16, !tbaa !595, !alias.scope !11463, !noalias !11465
  %.sroa.615.0.copyload.i213 = load double, ptr %i.bx, align 8, !noalias !11463 ; 3 uses
  %.sroa.013.0.copyload.i211 = load double, ptr %17, align 16, !noalias !11463 ; 3 uses
  %.sroa.917.0.copyload.i215 = load double, ptr %i.by, align 16, !noalias !11463 ; 3 uses
  %i.ua = load <2 x double>, ptr %4, align 16, !tbaa !595, !noalias !11464 ; 2 uses
  %i.ub = load <2 x double>, ptr %20, align 16, !tbaa !595, !alias.scope !11463, !noalias !11465 ; 2 uses
  %i.uc = insertelement <2 x double> poison, double %.sroa.013.0.copyload.i211, i64 0
  %i.ud = shufflevector <2 x double> %i.uc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ue = shufflevector <2 x double> %i.ua, <2 x double> %i.ub, <2 x i32> <i32 0, i32 2>
  %i.uf = fsub <2 x double> %i.ud, %i.ue          ; 2 uses
  %i.ug = insertelement <2 x double> poison, double %.sroa.615.0.copyload.i213, i64 0
  %i.uh = shufflevector <2 x double> %i.ug, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ui = shufflevector <2 x double> %i.ua, <2 x double> %i.ub, <2 x i32> <i32 1, i32 3>
  %i.uj = fsub <2 x double> %i.uh, %i.ui          ; 2 uses
  %i.uk = insertelement <2 x double> poison, double %.sroa.917.0.copyload.i215, i64 0
  %i.ul = shufflevector <2 x double> %i.uk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.um = insertelement <2 x double> poison, double %i.ty, i64 0
  %i.un = insertelement <2 x double> %i.um, double %i.tz, i64 1
  %i.uo = fsub <2 x double> %i.ul, %i.un          ; 2 uses
  %i.up = fmul <2 x double> %i.uj, %i.uj
  %i.uq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uf, <2 x double> %i.uf, <2 x double> %i.up)
  %i.ur = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uo, <2 x double> %i.uo, <2 x double> %i.uq) ; 2 uses
  %i.us = extractelement <2 x double> %i.ur, i64 0
  %i.ut = extractelement <2 x double> %i.ur, i64 1
  %i.uu = fcmp olt double %i.us, %i.ut
  br i1 %i.uu, label %bb.ce, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit222

bb.ce:                                            ; preds = %.noexc217
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %20, ptr noundef nonnull align 16 dereferenceable(24) %4, i64 24, i1 false)
  br label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit222

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit222: ; preds = %.noexc216._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit222_crit_edge, %.noexc217, %bb.ce
  %.sroa.9.0.copyload241 = phi double [ %.sroa.9.0.copyload241.pre, %.noexc216._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit222_crit_edge ], [ %.sroa.917.0.copyload.i215, %.noexc217 ], [ %.sroa.917.0.copyload.i215, %bb.ce ]
  %.sroa.7.0.copyload239 = phi double [ %.sroa.7.0.copyload239.pre, %.noexc216._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit222_crit_edge ], [ %.sroa.615.0.copyload.i213, %.noexc217 ], [ %.sroa.615.0.copyload.i213, %bb.ce ]
  %.sroa.0.0.copyload237 = phi double [ %.sroa.0.0.copyload237.pre, %.noexc216._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit222_crit_edge ], [ %.sroa.013.0.copyload.i211, %.noexc217 ], [ %.sroa.013.0.copyload.i211, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !11463
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !11463
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !11463
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !11463
  %25 = load <3 x double>, ptr %20, align 16      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  %i.uv = insertelement <2 x double> %i.gg, double %.sroa.0.0.copyload237, i64 1
  %i.uw = shufflevector <3 x double> %25, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ux = fsub <2 x double> %i.uv, %i.uw          ; 4 uses
  %i.uy = insertelement <2 x double> %i.fv, double %.sroa.7.0.copyload239, i64 1
  %26 = shufflevector <3 x double> %25, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.uz = fsub <2 x double> %i.uy, %26            ; 4 uses
  %i.va = insertelement <2 x double> %i.gh, double %.sroa.9.0.copyload241, i64 1
  %27 = shufflevector <3 x double> %25, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.vb = fsub <2 x double> %i.va, %27            ; 4 uses
  %i.vc = fmul <2 x double> %i.uz, %i.uz
  %i.vd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ux, <2 x double> %i.ux, <2 x double> %i.vc)
  %i.ve = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vb, <2 x double> %i.vb, <2 x double> %i.vd)
  %i.vf = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ve) ; 2 uses
  %i.vg = fdiv <2 x double> splat (double 1.000000e+00), %i.vf ; 3 uses
  %i.vh = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.vf)
  %i.vi = fcmp ogt <2 x double> %i.vh, splat (double f0x3E7AD7F29ABCAF48) ; 3 uses
  %i.vj = shufflevector <2 x double> %i.vb, <2 x double> %i.ux, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.vk = shufflevector <2 x double> %i.vg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vl = fmul <2 x double> %i.vj, %i.vk
  %i.vm = shufflevector <2 x i1> %i.vi, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.vn = select <2 x i1> %i.vm, <2 x double> %i.vl, <2 x double> %i.vj ; 2 uses
  %i.vo = fmul <2 x double> %i.uz, %i.vg
  %i.vp = select <2 x i1> %i.vi, <2 x double> %i.vo, <2 x double> %i.uz ; 2 uses
  %i.vq = shufflevector <2 x double> %i.vb, <2 x double> %i.ux, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.vr = shufflevector <2 x double> %i.vg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.vs = fmul <2 x double> %i.vq, %i.vr
  %i.vt = shufflevector <2 x i1> %i.vi, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.vu = select <2 x i1> %i.vt, <2 x double> %i.vs, <2 x double> %i.vq ; 2 uses
  %shift = shufflevector <2 x double> %i.vp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop465 = fmul <2 x double> %i.vp, %shift
  %i.vv = extractelement <2 x double> %foldExtExtBinop465, i64 0
  %i.vw = extractelement <2 x double> %i.vn, i64 1
  %i.vx = extractelement <2 x double> %i.vu, i64 1
  %i.vy = call double @llvm.fmuladd.f64(double %i.vx, double %i.vw, double %i.vv)
  %i.vz = extractelement <2 x double> %i.vn, i64 0
  %i.wa = extractelement <2 x double> %i.vu, i64 0
  %i.wb = call noundef double @llvm.fmuladd.f64(double %i.wa, double %i.vz, double %i.vy)
  %i.wc = fcmp ogt double %i.wb, 0.000000e+00
  br i1 %i.wc, label %.loopexit.sink.split, label %bb.ch

bb.cf:                                            ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread
  %i.wd = landingpad { ptr, i32 }
          cleanup
  br label %.body157

bb.cg:                                            ; preds = %.invoke, %bb.cd, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit
  %i.we = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %.body157

bb.ch:                                            ; preds = %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i, %bb.bl, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit222
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 26
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !11456

.loopexit.sink.split:                             ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit222, %bb.bk
  %i.wf = load float, ptr %i.fd, align 4, !tbaa !572
  %i.wg = fneg float %i.wf
  store float %i.wg, ptr %i.fd, align 4, !tbaa !572
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ch, %.loopexit.sink.split, %.lr.ph384
  %i.wh = add i32 %.sroa.5.0382, 1                ; 4 uses
  %i.wi = lshr i32 %i.wh, 6                       ; 3 uses
  %i.wj = icmp ugt i32 %i.wh, 511
  br i1 %i.wj, label %._crit_edge385, label %bb.ci

bb.ci:                                            ; preds = %.loopexit
  %i.wk = and i32 %i.wh, 63
  %i.wl = zext nneg i32 %i.wi to i64              ; 8 uses
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.wl
  %i.wn = load i64, ptr %i.wm, align 8, !tbaa !791 ; 2 uses
  %i.wo = zext nneg i32 %i.wk to i64              ; 2 uses
  %i.wp = shl nuw i64 1, %i.wo
  %i.wq = and i64 %i.wn, %i.wp
  %.not.i.i.i.i = icmp eq i64 %i.wq, 0
  br i1 %.not.i.i.i.i, label %bb.cj, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

bb.cj:                                            ; preds = %bb.ci
  %i.wr = shl nsw i64 -1, %i.wo
  %i.ws = and i64 %i.wn, %i.wr                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.ws, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i223.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i223.preheader:                      ; preds = %bb.cj
  %exitcond.not.i.i.i.i459 = icmp eq i32 %i.wi, 7
  br i1 %exitcond.not.i.i.i.i459, label %._crit_edge385, label %.lr.ph461

.lr.ph.i.i.i.i223:                                ; preds = %.lr.ph461
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge385, label %.lr.ph461.1

.lr.ph461.1:                                      ; preds = %.lr.ph.i.i.i.i223
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.wl, 2 ; 3 uses
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.1
  %i.wu = load i64, ptr %i.wt, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.wu, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i223.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i223.1:                              ; preds = %.lr.ph461.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge385, label %.lr.ph461.2

.lr.ph461.2:                                      ; preds = %.lr.ph.i.i.i.i223.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.wl, 3 ; 3 uses
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.2
  %i.ww = load i64, ptr %i.wv, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.ww, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i223.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i223.2:                              ; preds = %.lr.ph461.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge385, label %.lr.ph461.3

.lr.ph461.3:                                      ; preds = %.lr.ph.i.i.i.i223.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.wl, 4 ; 3 uses
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.3
  %i.wy = load i64, ptr %i.wx, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.wy, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i223.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i223.3:                              ; preds = %.lr.ph461.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge385, label %.lr.ph461.4

.lr.ph461.4:                                      ; preds = %.lr.ph.i.i.i.i223.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.wl, 5 ; 3 uses
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.4
  %i.xa = load i64, ptr %i.wz, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.xa, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i223.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i223.4:                              ; preds = %.lr.ph461.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge385, label %.lr.ph461.5

.lr.ph461.5:                                      ; preds = %.lr.ph.i.i.i.i223.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.wl, 6 ; 3 uses
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.5
  %i.xc = load i64, ptr %i.xb, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.xc, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i223.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i223.5:                              ; preds = %.lr.ph461.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge385, label %.lr.ph461.6

.lr.ph461.6:                                      ; preds = %.lr.ph.i.i.i.i223.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.wl, 7 ; 2 uses
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.6
  %i.xe = load i64, ptr %i.xd, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.xe, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge385, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph461:                                        ; preds = %.lr.ph.i.i.i.i223.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.wl, 1 ; 3 uses
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i
  %i.xg = load i64, ptr %i.xf, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.xg, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i223, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph461.6, %.lr.ph461.5, %.lr.ph461.4, %.lr.ph461.3, %.lr.ph461.2, %.lr.ph461.1, %.lr.ph461
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph461 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph461.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph461.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph461.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph461.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph461.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph461.6 ]
  %.lcssa = phi i64 [ %i.xg, %.lr.ph461 ], [ %i.wu, %.lr.ph461.1 ], [ %i.ww, %.lr.ph461.2 ], [ %i.wy, %.lr.ph461.3 ], [ %i.xa, %.lr.ph461.4 ], [ %i.xc, %.lr.ph461.5 ], [ %i.xe, %.lr.ph461.6 ]
  %i.xh = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.cj
  %.016.lcssa.i.i.i.i = phi i32 [ %i.wi, %bb.cj ], [ %i.xh, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.ws, %bb.cj ], [ %.lcssa, %.critedge.loopexit.i.i.i.i ]
  %i.xi = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.xj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.xk = trunc nuw nsw i64 %i.xj to i32
  %i.xl = or disjoint i32 %i.xi, %i.xk
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit: ; preds = %bb.ci, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.xl, %.critedge.i.i.i.i ], [ %i.wh, %bb.ci ] ; 2 uses
  %.not346 = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not346, label %._crit_edge385, label %.lr.ph384

._crit_edge385:                                   ; preds = %.loopexit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit, %.lr.ph.i.i.i.i223.preheader, %.lr.ph461.6, %.lr.ph.i.i.i.i223, %.lr.ph.i.i.i.i223.1, %.lr.ph.i.i.i.i223.2, %.lr.ph.i.i.i.i223.3, %.lr.ph.i.i.i.i223.4, %.lr.ph.i.i.i.i223.5, %bb.au
  %i.xm = add nuw i64 %.0118386, 1                ; 2 uses
  %exitcond398.not = icmp eq i64 %i.xm, %i.bt
  br i1 %exitcond398.not, label %._crit_edge388, label %bb.ag, !llvm.loop !11457

.body157:                                         ; preds = %bb.aw, %bb.bi, %bb.cg, %bb.cf, %bb.ay, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i, %bb.av, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i162, %bb.ax, %bb.y, %bb.ab, %bb.x
  %.pn133.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.x ], [ %i.bl, %bb.y ], [ %i.bq, %bb.ab ], [ %i.et, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i162 ], [ %i.kn, %bb.bi ], [ %i.fi, %bb.aw ], [ %i.du, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ], [ %i.fj, %bb.ax ], [ %i.fk, %bb.ay ], [ %i.fh, %bb.av ], [ %i.we, %bb.cg ], [ %i.wd, %bb.cf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %15, align 8, !tbaa !545
  %i.xn = load ptr, ptr %i.ah, align 8, !tbaa !3207 ; 2 uses
  %.not.i224 = icmp eq ptr %i.xn, null
  br i1 %.not.i224, label %.body, label %bb.ck

bb.ck:                                            ; preds = %.body157
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %15, ptr %i.b, align 8, !tbaa !3208
  %i.xp = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.xo, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i225 unwind label %bb.cl, !inline_history !3214 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i225: ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.body

bb.cl:                                            ; preds = %bb.ck
end_hunk_5
begin_hunk_6_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSD_26QuadAndTriangleDataAdapterINSC_4math4Vec3IfEENSR_4Vec4IjEEEEEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.bi = load i8, ptr %i.l, align 1, !tbaa !1376
  %i.bj = zext i8 %i.bi to i64                    ; 2 uses
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bj
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.bm, ptr %i.a, align 1, !tbaa !570
  call void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS7_26QuadAndTriangleDataAdapterINS6_4math4Vec3IfEENSL_4Vec4IjEEEEEEKNS1_16auto_partitionerEE15offer_work_implIJRSU_RKS4_RhEEEvRNS1_14execution_dataEDpOT_(ptr noundef nonnull align 64 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 64 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 1 dereferenceable(1) %i.a), !inline_history !11575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bn = load i8, ptr %i.m, align 2, !tbaa !1374
  %i.bo = add i8 %i.bn, -1                        ; 2 uses
  store i8 %i.bo, ptr %i.m, align 2, !tbaa !1374
  %i.bp = load i8, ptr %i.l, align 1, !tbaa !1376
  %i.bq = add i8 %i.bp, 1
  %i.br = and i8 %i.bq, 7
  store i8 %i.br, ptr %i.l, align 1, !tbaa !1376
  br label %thread-pre-split18

bb.j:                                             ; preds = %bb.h
  %i.bs = load i8, ptr %4, align 8, !tbaa !1375
  %i.bt = zext i8 %i.bs to i64                    ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !570
  %i.bw = icmp ult i8 %i.bv, %i.bg
  br i1 %i.bw, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit: ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.bt ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !631
  %i.ca = load i64, ptr %i.bx, align 8, !tbaa !629
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !630
  %i.cd = sub i64 %i.ca, %i.cc
  %i.ce = icmp ult i64 %i.bz, %i.cd
  br i1 %i.ce, label %thread-pre-split18, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.j, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre21, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.bt, %bb.j ], [ %i.bt, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.pre-phi
  call void @_ZNK7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS1_26QuadAndTriangleDataAdapterINS0_4math4Vec3IfEENSF_4Vec4IjEEEEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.cf)
  %i.cg = load i8, ptr %i.m, align 2, !tbaa !1374
  %i.ch = add i8 %i.cg, -1                        ; 2 uses
  store i8 %i.ch, ptr %i.m, align 2, !tbaa !1374
  %i.ci = load i8, ptr %4, align 8, !tbaa !1375
  %i.cj = add i8 %i.ci, 7
  %i.ck = and i8 %i.cj, 7
  store i8 %i.ck, ptr %4, align 8, !tbaa !1375
  br label %thread-pre-split18

thread-pre-split18:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread, %bb.i
  %i.cl = phi i8 [ %i.bo, %bb.i ], [ %i.ch, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread ], [ %.pr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.cm = icmp eq i8 %i.cl, 0
  br i1 %i.cm, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit17, label %bb.k

bb.k:                                             ; preds = %thread-pre-split18
  %i.cn = load ptr, ptr %3, align 8, !tbaa !1199  ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 15
  %i.cp = load atomic i8, ptr %i.co monotonic, align 1
  %i.cq = icmp eq i8 %i.cp, -1
  br i1 %i.cq, label %bb.l, label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

bb.l:                                             ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !570
  br label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i: ; preds = %bb.l, %bb.k
  %.0.i.i = phi ptr [ %i.cs, %bb.l ], [ %i.cn, %bb.k ]
  %i.ct = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.ct, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit17, label %thread-pre-split, !llvm.loop !11576

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit17: ; preds = %thread-pre-split18, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.m

bb.m:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit17, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS7_26QuadAndTriangleDataAdapterINS6_4math4Vec3IfEENSL_4Vec4IjEEEEEEKNS1_16auto_partitionerEE15offer_work_implIJRSU_RNS0_2d05splitEEEEvRNS1_14execution_dataEDpOT_(ptr noundef nonnull align 64 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 64 dereferenceable(168) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr null, ptr %4, align 8, !tbaa !760
  %i.a = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1), !inline_history !11577 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS7_26QuadAndTriangleDataAdapterINS6_4math4Vec3IfEENSL_4Vec4IjEEEEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.a, align 64, !tbaa !545
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = load i64, ptr %i.c, align 64, !tbaa !629 ; 2 uses
  store i64 %i.e, ptr %i.d, align 64, !tbaa !629
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !630  ; 2 uses
  %i.i = sub i64 %i.e, %i.h
  %i.j = lshr i64 %i.i, 1
  %i.k = add i64 %i.j, %i.h                       ; 2 uses
  store i64 %i.k, ptr %i.c, align 64, !tbaa !629
  store i64 %i.k, ptr %i.f, align 8, !tbaa !630
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.n = load i64, ptr %i.m, align 16, !tbaa !631
  store i64 %i.n, ptr %i.l, align 16, !tbaa !631
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 32, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.t = load ptr, ptr %i.s, align 64, !tbaa !578 ; 2 uses
  %i.u = load <2 x ptr>, ptr %i.r, align 8, !tbaa !1088
  store <2 x ptr> %i.u, ptr %i.q, align 8, !tbaa !1088
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS8_4tree4TreeINSC_8RootNodeINSC_12InternalNodeINSF_INSC_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS9_26QuadAndTriangleDataAdapterINS8_4math4Vec3IfEENSN_4Vec4IjEEEEEEKNS1_16auto_partitionerEEEJRSW_RNS0_2d05splitERS2_EEEPT_RNS1_14execution_dataEDpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !570
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = load i32, ptr %i.v, align 4, !tbaa !543
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !543
  br label %_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS8_4tree4TreeINSC_8RootNodeINSC_12InternalNodeINSF_INSC_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS9_26QuadAndTriangleDataAdapterINS8_4math4Vec3IfEENSN_4Vec4IjEEEEEEKNS1_16auto_partitionerEEEJRSW_RNS0_2d05splitERS2_EEEPT_RNS1_14execution_dataEDpOT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.z = atomicrmw volatile add ptr %i.v, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS8_4tree4TreeINSC_8RootNodeINSC_12InternalNodeINSF_INSC_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS9_26QuadAndTriangleDataAdapterINS8_4math4Vec3IfEENSN_4Vec4IjEEEEEEKNS1_16auto_partitionerEEEJRSW_RNS0_2d05splitERS2_EEEPT_RNS1_14execution_dataEDpOT0_.exit

_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS8_4tree4TreeINSC_8RootNodeINSC_12InternalNodeINSF_INSC_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS9_26QuadAndTriangleDataAdapterINS8_4math4Vec3IfEENSN_4Vec4IjEEEEEEKNS1_16auto_partitionerEEEJRSW_RNS0_2d05splitERS2_EEEPT_RNS1_14execution_dataEDpOT0_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !4646
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 16, !tbaa !1186
  %i.ae = lshr i64 %i.ad, 1                       ; 2 uses
  store i64 %i.ae, ptr %i.ac, align 16, !tbaa !1186
  store i64 %i.ae, ptr %i.ab, align 16, !tbaa !1186
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i32 2, ptr %i.af, align 8, !tbaa !1184
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 156
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !1185
  store i8 %i.ai, ptr %i.ag, align 4, !tbaa !1185
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.ak = load i64, ptr %4, align 8, !tbaa !766
  store i64 %i.ak, ptr %i.aj, align 32, !tbaa !766
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.am = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) ; 6 uses
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !1197
  store ptr %i.an, ptr %i.am, align 8, !tbaa !1190
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 2, ptr %i.ao, align 8, !tbaa !1191
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.aq = load i64, ptr %4, align 8, !tbaa !766
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !766
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i8 0, ptr %i.ar, align 8, !tbaa !1198
  store ptr %i.am, ptr %i.al, align 8, !tbaa !4646
  store ptr %i.am, ptr %i.aa, align 8, !tbaa !4646
  %i.as = load ptr, ptr %1, align 8, !tbaa !1199
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(168) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS1_26QuadAndTriangleDataAdapterINS0_4math4Vec3IfEENSF_4Vec4IjEEEEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 6 uses
  %3 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 7 uses
  %4 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 9 uses
  %5 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %6 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %7 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 6 uses
  %8 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 7 uses
  %9 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 9 uses
  %10 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %11 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i8, align 1                       ; 3 uses
  %12 = alloca %"class.tbb::detail::d2::concurrent_hash_map<openvdb::v13_0::tree::ValueAccessorBase<const openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<int, 3>, 4>, 5>>>, true> *, bool>::accessor", align 8 ; 11 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.tbb::detail::d2::concurrent_hash_map<openvdb::v13_0::tree::ValueAccessorBase<const openvdb::v13_0::tree::Tree<openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>>, true> *, bool>::accessor", align 8 ; 11 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %14 = alloca %"class.openvdb::v13_0::tree::ValueAccessorImpl.3258", align 8 ; 20 uses
  %15 = alloca %"class.openvdb::v13_0::tree::ValueAccessorImpl.2062", align 8 ; 26 uses
  %i.h = alloca double, align 8                   ; 5 uses
  %16 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 16 uses
  %17 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 15 uses
  %18 = alloca %"struct.openvdb::v13_0::tree::LeafNode<double, 3>::ValueIter", align 8 ; 6 uses
  %19 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 8 uses
  %20 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1024 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %14, align 8, !tbaa !545
  %i.k = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !4534
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  store ptr null, ptr %13, align 8, !tbaa !1153
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  store i8 0, ptr %i.l, align 8, !tbaa !1152
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  store ptr %14, ptr %i.g, align 8, !tbaa !4535
  %i.o = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6lookupILb1ESI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEEbRKT0_S13_PNSR_14const_accessorEbT1_SU_(ptr noundef nonnull align 8 dereferenceable(570) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %13, i1 noundef zeroext true, ptr noundef nonnull @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE31allocate_node_default_constructISI_EEPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERKT_PKb, ptr noundef null)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i unwind label %bb.e ; 0 uses

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  store ptr null, ptr %i.m, align 8, !tbaa !4538
  %i.p = load ptr, ptr %13, align 8, !tbaa !1153  ; 3 uses
  %.not.i.i3.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i3.i.i.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i
  store ptr null, ptr %13, align 8, !tbaa !1153
  %i.q = load i8, ptr %i.l, align 8, !tbaa !1152, !range !804, !noundef !805
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = atomicrmw and ptr %i.p, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.t = atomicrmw sub ptr %i.p, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  store ptr null, ptr %i.m, align 8, !tbaa !4538
  %i.v = load ptr, ptr %13, align 8, !tbaa !1153  ; 3 uses
  %.not.i.i4.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i4.i.i.i, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %13, align 8, !tbaa !1153
  %i.w = load i8, ptr %i.l, align 8, !tbaa !1152, !range !804, !noundef !805
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = atomicrmw and ptr %i.v, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.z = atomicrmw sub ptr %i.v, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i

common.resume:                                    ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit227, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.u, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i ], [ %.pn132.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit227 ]
  resume { ptr, i32 } %common.resume.op

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i: ; preds = %bb.h, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %common.resume

bb.i:                                             ; preds = %bb.d, %bb.c, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %14, align 8, !tbaa !545
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 2 uses
  store i64 9223372034707292159, ptr %i.ab, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !570
  %.06.i.i.i.i.ptr.1.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 36
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i.i, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %14, i64 44
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i, align 4, !tbaa !570
  %.06.i.i.i.i.ptr.2.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 48
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i.i, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %14, i64 56
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i, align 8, !tbaa !570
  store ptr null, ptr %i.aa, align 8, !tbaa !4540
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 32, i1 false)
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !4534 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERSC_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !3894
  br label %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERSC_.exit

_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERSC_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1025 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %15, align 8, !tbaa !545
  %i.ah = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !3207
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store ptr null, ptr %12, align 8, !tbaa !1153
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store i8 0, ptr %i.ai, align 8, !tbaa !1152
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store ptr %15, ptr %i.f, align 8, !tbaa !3208
  %i.al = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6lookupILb1ESI_PFPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERSO_PKbEEEbRKT0_S13_PNSR_14const_accessorEbT1_SU_(ptr noundef nonnull align 8 dereferenceable(570) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %12, i1 noundef zeroext true, ptr noundef nonnull @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE31allocate_node_default_constructISI_EEPNSR_4nodeERNSM_INS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEEERKT_PKb, ptr noundef null)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i unwind label %bb.n ; 0 uses

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i: ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERSC_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  store ptr null, ptr %i.aj, align 8, !tbaa !3211
  %i.am = load ptr, ptr %12, align 8, !tbaa !1153 ; 3 uses
  %.not.i.i3.i.i.i144 = icmp eq ptr %i.am, null
  br i1 %.not.i.i3.i.i.i144, label %bb.r, label %bb.k

bb.k:                                             ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i
  store ptr null, ptr %12, align 8, !tbaa !1153
  %i.an = load i8, ptr %i.ai, align 8, !tbaa !1152, !range !804, !noundef !805
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ap = atomicrmw and ptr %i.am, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.aq = atomicrmw sub ptr %i.am, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.r

bb.n:                                             ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERSC_.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  store ptr null, ptr %i.aj, align 8, !tbaa !3211
  %i.as = load ptr, ptr %12, align 8, !tbaa !1153 ; 3 uses
  %.not.i.i4.i.i.i143 = icmp eq ptr %i.as, null
  br i1 %.not.i.i4.i.i.i143, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %12, align 8, !tbaa !1153
  %i.at = load i8, ptr %i.ai, align 8, !tbaa !1152, !range !804, !noundef !805
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.av = atomicrmw and ptr %i.as, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.aw = atomicrmw sub ptr %i.as, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14const_accessorD2Ev.exit5.i.i.i: ; preds = %bb.q, %bb.p, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %.body

bb.r:                                             ; preds = %bb.m, %bb.l, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE6insertERNSR_8accessorERSO_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %15, align 8, !tbaa !545
  %i.ay = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %15, i64 64 ; 3 uses
  store i64 9223372034707292159, ptr %i.ay, align 8
  %.sroa.6.0..sroa_idx.i.i145 = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i.i145, align 8, !tbaa !570
  %.06.i.i.i.i.ptr.1.i.i.i146 = getelementptr inbounds nuw i8, ptr %15, i64 36 ; 4 uses
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i.i146, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i147 = getelementptr inbounds nuw i8, ptr %15, i64 44 ; 4 uses
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i147, align 4, !tbaa !570
  %.06.i.i.i.i.ptr.2.i.i.i148 = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 3 uses
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i.i148, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i149 = getelementptr inbounds nuw i8, ptr %15, i64 56 ; 3 uses
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i149, align 8, !tbaa !570
  store ptr null, ptr %i.ax, align 8, !tbaa !3213
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, i8 0, i64 32, i1 false)
  %i.ba = load ptr, ptr %i.ah, align 8, !tbaa !3207 ; 2 uses
  %.not.i.i150 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i150, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !1827
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store i32 0, ptr %16, align 8, !tbaa !543
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 4 uses
  store i32 0, ptr %i.bc, align 4, !tbaa !543
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 6 uses
  store i32 0, ptr %i.bd, align 8, !tbaa !543
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.bg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN3tbb6detail2d18ets_baseILNS1_18ets_key_usage_typeE1EE12table_lookupERb(ptr noundef nonnull align 8 dereferenceable(104) %i.bf, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
          to label %bb.u unwind label %bb.x       ; 7 uses

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !3195
  %.not342 = icmp eq ptr %i.bh, null
  br i1 %.not342, label %bb.v, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit

bb.v:                                             ; preds = %bb.u
  %i.bi = invoke noalias noundef nonnull dereferenceable(24576) ptr @_Znam(i64 noundef 24576) #30
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !3195 ; 2 uses
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !3195
  %.not.i.i151 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i151, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IdEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IdEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i: ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.bj) #32
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit

bb.x:                                             ; preds = %bb.t
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body155

bb.y:                                             ; preds = %bb.v
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body155

_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit: ; preds = %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IdEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i, %bb.w, %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 5 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1443
  %.not343 = icmp eq ptr %i.bn, null
  br i1 %.not343, label %bb.z, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EE5resetIPbvEEvT_.exit

bb.z:                                             ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit
  %i.bo = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znam(i64 noundef 512) #30
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !1443 ; 2 uses
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !1443
  %.not.i.i152 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i152, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EE5resetIPbvEEvT_.exit, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %bb.aa
  call void @_ZdaPv(ptr noundef nonnull %i.bp) #32
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EE5resetIPbvEEvT_.exit

bb.ab:                                            ; preds = %bb.z
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body155

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EE5resetIPbvEEvT_.exit: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit, %bb.aa, %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !630 ; 2 uses
  %i.bt = load i64, ptr %1, align 8, !tbaa !629   ; 2 uses
  %i.bu = icmp ult i64 %i.bs, %i.bt
  br i1 %i.bu, label %.lr.ph385, label %._crit_edge386

.lr.ph385:                                        ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EE5resetIPbvEEvT_.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %15, i64 28
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.cg = getelementptr inbounds nuw i8, ptr %15, i64 52
  %i.ch = getelementptr inbounds nuw i8, ptr %15, i64 72 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %15, i64 80 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %20, i64 16
  br label %bb.ag

._crit_edge386:                                   ; preds = %._crit_edge383, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EE5resetIPbvEEvT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %15, align 8, !tbaa !545
  %i.cn = load ptr, ptr %i.ah, align 8, !tbaa !3207 ; 2 uses
  %.not.i = icmp eq ptr %i.cn, null
  br i1 %.not.i, label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge386
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %15, ptr %i.d, align 8, !tbaa !3208
  %i.cp = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.co, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i unwind label %bb.ad, !inline_history !3214 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit

bb.ad:                                            ; preds = %bb.ac
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #31, !inline_history !3214
  unreachable

_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit: ; preds = %._crit_edge386, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %14, align 8, !tbaa !545
  %i.cs = load ptr, ptr %i.k, align 8, !tbaa !4534 ; 2 uses
  %.not.i153 = icmp eq ptr %i.cs, null
  br i1 %.not.i153, label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %14, ptr %i.c, align 8, !tbaa !4535
  %i.cu = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.ct, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i unwind label %bb.af, !inline_history !4541 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit

bb.af:                                            ; preds = %bb.ae
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #31, !inline_history !4541
  unreachable

_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit: ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  ret void

bb.ag:                                            ; preds = %.lr.ph385, %._crit_edge383
  %.0118384 = phi i64 [ %i.bs, %.lr.ph385 ], [ %i.xm, %._crit_edge383 ] ; 2 uses
  %i.cx = load ptr, ptr %0, align 8, !tbaa !1023
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.0118384
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !4024 ; 10 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load atomic i32, ptr %i.da seq_cst, align 4
  %.not.i.i154 = icmp eq i32 %i.db, 0
  br i1 %.not.i.i154, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.cz)
          to label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i unwind label %bb.av

_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i: ; preds = %bb.ah, %bb.ag
  %i.dc = load ptr, ptr %i.cz, align 8, !tbaa !570 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.ai, label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit

bb.ai:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 12 ; 4 uses
  %i.df = atomicrmw xchg ptr %i.de, i8 1 seq_cst, align 1
  %i.dg = trunc i8 %i.df to i1
  br i1 %i.dg, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ai, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i
  %.sroa.0.02.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i ], [ 1, %bb.ai ] ; 8 uses
  %i.dh = icmp slt i32 %.sroa.0.02.i.i.i.i, 17
  br i1 %i.dh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i
  %i.di = icmp sgt i32 %.sroa.0.02.i.i.i.i, 0
  br i1 %i.di, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.aj
  %xtraiter = and i32 %.sroa.0.02.i.i.i.i, 7      ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.01.i.i.i.i.i.i.prol = phi i32 [ %i.dj, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.0.02.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.dj = add nsw i32 %.01.i.i.i.i.i.i.prol, -1   ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !11578

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.01.i.i.i.i.i.i.unr = phi i32 [ %.sroa.0.02.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dj, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.dk = icmp ult i32 %.sroa.0.02.i.i.i.i, 8
  br i1 %i.dk, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.01.i.i.i.i.i.i = phi i32 [ %i.dl, %.lr.ph.i.i.i.i.i.i ], [ %.01.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.dl = add nsw i32 %.01.i.i.i.i.i.i, -8
  call void @llvm.x86.sse2.pause()
  %i.dm = icmp sgt i32 %.01.i.i.i.i.i.i, 8
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i, !llvm.loop !38

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.aj
  %i.dn = shl i32 %.sroa.0.02.i.i.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i
  %i.do = call noundef i32 @sched_yield() #23     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i: ; preds = %bb.ak, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i32 [ %i.dn, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i ], [ %.sroa.0.02.i.i.i.i, %bb.ak ]
  %i.dp = atomicrmw xchg ptr %i.de, i8 1 seq_cst, align 1
  %i.dq = trunc i8 %i.dp to i1
  br i1 %i.dq, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i, !llvm.loop !47

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i, %bb.ai
  %i.dr = load ptr, ptr %i.cz, align 8, !tbaa !570 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.al, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i

bb.al:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i
  %i.dt = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #30
          to label %bb.am unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ; 2 uses

bb.am:                                            ; preds = %bb.al
  store ptr %i.dt, ptr %i.cz, align 8, !tbaa !570
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i: ; preds = %bb.al
  %i.du = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.de release, align 1
  br label %.body155

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i: ; preds = %bb.am, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i
  %i.dv = phi ptr [ %i.dt, %bb.am ], [ %i.dr, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i ]
  store atomic i8 0, ptr %i.de release, align 4
  br label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit

_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit: ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i
  %i.dw = phi ptr [ %i.dv, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i ], [ %i.dc, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cz, i64 80 ; 3 uses
  %i.dy = invoke noundef ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %15, ptr noundef nonnull align 4 dereferenceable(12) %i.dx)
          to label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstLeafERKNS0_4math5CoordE.exit unwind label %bb.aw ; 6 uses

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstLeafERKNS0_4math5CoordE.exit: ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load atomic i32, ptr %i.dz seq_cst, align 4
  %.not.i.i158 = icmp eq i32 %i.ea, 0
  br i1 %.not.i.i158, label %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i, label %bb.an

bb.an:                                            ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstLeafERKNS0_4math5CoordE.exit
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.dy)
          to label %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i unwind label %bb.ax

_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i: ; preds = %bb.an, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstLeafERKNS0_4math5CoordE.exit
  %i.eb = load ptr, ptr %i.dy, align 8, !tbaa !570 ; 2 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 12 ; 4 uses
  %i.ee = atomicrmw xchg ptr %i.ed, i8 1 seq_cst, align 1
  %i.ef = trunc i8 %i.ee to i1
  br i1 %i.ef, label %.lr.ph.i.i.i.i161, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i159

.lr.ph.i.i.i.i161:                                ; preds = %bb.ao, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i163
  %.sroa.0.02.i.i.i.i162 = phi i32 [ %.sroa.0.1.i.i.i.i164, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i163 ], [ 1, %bb.ao ] ; 8 uses
  %i.eg = icmp slt i32 %.sroa.0.02.i.i.i.i162, 17
  br i1 %i.eg, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i161
  %i.eh = icmp sgt i32 %.sroa.0.02.i.i.i.i162, 0
  br i1 %i.eh, label %.lr.ph.i.i.i.i.i.i166.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i165

.lr.ph.i.i.i.i.i.i166.preheader:                  ; preds = %bb.ap
end_hunk_6
begin_hunk_7_@_ZNK7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS1_26QuadAndTriangleDataAdapterINS0_4math4Vec3IfEENSF_4Vec4IjEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i163

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i163: ; preds = %bb.aq, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i165
  %.sroa.0.1.i.i.i.i164 = phi i32 [ %i.em, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i165 ], [ %.sroa.0.02.i.i.i.i162, %bb.aq ]
  %i.eo = atomicrmw xchg ptr %i.ed, i8 1 seq_cst, align 1
  %i.ep = trunc i8 %i.eo to i1
  br i1 %i.ep, label %.lr.ph.i.i.i.i161, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i159, !llvm.loop !47

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i159: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i163, %bb.ao
  %i.eq = load ptr, ptr %i.dy, align 8, !tbaa !570 ; 2 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %bb.ar, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i

bb.ar:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i159
  %i.es = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #30
          to label %bb.as unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i160 ; 2 uses

bb.as:                                            ; preds = %bb.ar
  store ptr %i.es, ptr %i.dy, align 8, !tbaa !570
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i160: ; preds = %bb.ar
  %i.et = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.ed release, align 1
  br label %.body155

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i: ; preds = %bb.as, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i159
  %i.eu = phi ptr [ %i.es, %bb.as ], [ %i.eq, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i159 ]
  store atomic i8 0, ptr %i.ed release, align 4
  br label %bb.at

bb.at:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i
  %i.ev = phi ptr [ %i.eu, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i ], [ %i.eb, %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i ]
  %.sroa.0298.0.copyload = load i32, ptr %i.dx, align 8 ; 2 uses
  %.sroa.7300.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 84 ; 2 uses
  %.sroa.7300.0.copyload = load i32, ptr %.sroa.7300.0..sroa_idx, align 4 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 88
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !570 ; 2 uses
  %i.ew = add nsw i32 %.sroa.0298.0.copyload, 7
  %i.ex = add i32 %.sroa.7300.0.copyload, 7
  %i.ey = add nsw i32 %.sroa.10.0.copyload, 7
  %i.ez = load ptr, ptr %i.bm, align 8, !tbaa !1443
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.ez, i8 0, i64 512, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  invoke void @_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<double, 3>::ValueIter") align 8 %18, ptr noundef nonnull align 8 dereferenceable(96) %i.cz)
          to label %bb.au unwind label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.fa = load i32, ptr %i.bv, align 8, !tbaa !1228 ; 2 uses
  %i.fb = load ptr, ptr %i.bw, align 8, !tbaa !1229 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  %.not344379 = icmp eq i32 %i.fa, 512
  br i1 %.not344379, label %._crit_edge383, label %.lr.ph382

.lr.ph382:                                        ; preds = %bb.au, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit
  %.sroa.5.0380 = phi i32 [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit ], [ %i.fa, %bb.au ] ; 5 uses
  %i.fc = zext i32 %.sroa.5.0380 to i64
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fc ; 3 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !595 ; 2 uses
  %i.ff = fcmp olt double %i.fe, 0.000000e+00
  %i.fg = fcmp ogt double %i.fe, 7.500000e-01
  %or.cond142 = or i1 %i.ff, %i.fg
  br i1 %or.cond142, label %.loopexit, label %bb.az

bb.av:                                            ; preds = %bb.ah
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.body155

bb.aw:                                            ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body155

bb.ax:                                            ; preds = %bb.an
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %.body155

bb.ay:                                            ; preds = %bb.at
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %.body155

bb.az:                                            ; preds = %.lr.ph382
  %i.fl = lshr i32 %.sroa.5.0380, 6
  %i.fm = lshr i32 %.sroa.5.0380, 3
  %i.fn = load i32, ptr %i.dx, align 8, !tbaa !543
  %i.fo = add nsw i32 %i.fn, %i.fl                ; 4 uses
  %i.fp = insertelement <2 x i32> poison, i32 %i.fm, i64 0
  %i.fq = insertelement <2 x i32> %i.fp, i32 %.sroa.5.0380, i64 1
  %i.fr = and <2 x i32> %i.fq, splat (i32 7)
  %i.fs = load <2 x i32>, ptr %.sroa.7300.0..sroa_idx, align 4, !tbaa !543
  %i.ft = add <2 x i32> %i.fs, %i.fr              ; 3 uses
  %i.fu = sitofp i32 %i.fo to double              ; 2 uses
  %i.fv = sitofp <2 x i32> %i.ft to <2 x double>  ; 3 uses
  %i.fw = add nsw i32 %i.fo, -1
  %i.fx = extractelement <2 x i32> %i.ft, i64 0   ; 3 uses
  %i.fy = add nsw i32 %i.fx, -1
  %i.fz = extractelement <2 x i32> %i.ft, i64 1   ; 3 uses
  %i.ga = add nsw i32 %i.fz, -1
  %.sroa.speculated16.i = call i32 @llvm.smax.i32(i32 %i.fw, i32 %.sroa.0298.0.copyload) ; 4 uses
  %.sroa.speculated11.i = call i32 @llvm.smax.i32(i32 %i.fy, i32 %.sroa.7300.0.copyload) ; 4 uses
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.ga, i32 %.sroa.10.0.copyload) ; 4 uses
  %i.gb = add nsw i32 %i.fo, 1
  %i.gc = add i32 %i.fx, 1
  %i.gd = add nsw i32 %i.fz, 1
  %.sroa.speculated16.i185 = call i32 @llvm.smin.i32(i32 %i.ew, i32 %i.gb) ; 3 uses
  %.sroa.speculated11.i186 = call i32 @llvm.smin.i32(i32 %i.ex, i32 %i.gc) ; 3 uses
  %.sroa.speculated.i187 = call i32 @llvm.smin.i32(i32 %i.ey, i32 %i.gd) ; 3 uses
  store i32 %.sroa.speculated16.i, ptr %16, align 8, !tbaa !543
  %i.ge = icmp sgt i32 %.sroa.speculated16.i, %.sroa.speculated16.i185
  %i.gf = icmp sgt i32 %.sroa.speculated11.i, %.sroa.speculated11.i186
  %or.cond451 = select i1 %i.ge, i1 true, i1 %i.gf
  %.not357 = icmp sgt i32 %.sroa.speculated.i, %.sroa.speculated.i187
  %or.cond452 = select i1 %or.cond451, i1 true, i1 %.not357
  br i1 %or.cond452, label %.preheader.preheader, label %.lr.ph362

.preheader.preheader:                             ; preds = %._crit_edge363.split, %bb.az
  %i.gg = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.gh = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  br label %.preheader

.lr.ph362:                                        ; preds = %bb.az, %._crit_edge363.split
  %storemerge365 = phi i32 [ %i.ly, %._crit_edge363.split ], [ %.sroa.speculated16.i, %bb.az ]
  %i.gi = shl i32 %storemerge365, 6
  %i.gj = and i32 %i.gi, 448
  store i32 %.sroa.speculated11.i, ptr %i.bc, align 4, !tbaa !543
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph362, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge
  %storemerge345360 = phi i32 [ %.sroa.speculated11.i, %.lr.ph362 ], [ %i.lw, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge ]
  %i.gk = shl i32 %storemerge345360, 3
  %i.gl = and i32 %i.gk, 56
  %i.gm = or disjoint i32 %i.gl, %i.gj
  store i32 %.sroa.speculated.i, ptr %i.bd, align 8, !tbaa !543
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph, %bb.bj
  %storemerge346358 = phi i32 [ %.sroa.speculated.i, %.lr.ph ], [ %i.lu, %bb.bj ] ; 4 uses
  %i.gn = and i32 %storemerge346358, 7
  %i.go = or disjoint i32 %i.gm, %i.gn            ; 2 uses
  %i.gp = zext nneg i32 %i.go to i64              ; 3 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.gp ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !543
  %i.gs = icmp eq i32 %i.gr, -1
  br i1 %i.gs, label %bb.bj, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.gp
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !595
  %i.gv = fcmp olt double %i.gu, -7.500000e-01
  br i1 %i.gv, label %bb.bc, label %bb.bj

bb.bc:                                            ; preds = %bb.bb
  %i.gw = shl nuw nsw i32 %i.go, 1                ; 2 uses
  %i.gx = load ptr, ptr %i.bm, align 8, !tbaa !1443
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gp ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !673, !range !804, !noundef !805
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198_crit_edge, label %bb.bd

._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198_crit_edge: ; preds = %bb.bc
  %.pre401 = zext nneg i32 %i.gw to i64
  br label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198

bb.bd:                                            ; preds = %bb.bc
  store i8 1, ptr %i.gy, align 1, !tbaa !673
  %i.hb = load <2 x i32>, ptr %16, align 8, !tbaa !543
  %i.hc = sitofp <2 x i32> %i.hb to <2 x double>
  store <2 x double> %i.hc, ptr %17, align 16, !tbaa !595
  %i.hd = sitofp i32 %storemerge346358 to double
  store double %i.hd, ptr %i.by, align 16, !tbaa !595
  %i.he = zext nneg i32 %i.gw to i64              ; 4 uses
  %i.hf = load ptr, ptr %i.bg, align 8, !tbaa !3195
  %i.hg = getelementptr inbounds nuw [24 x i8], ptr %i.hf, i64 %i.he ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  %i.hh = load i32, ptr %i.gq, align 4, !tbaa !543
  call void @llvm.experimental.noalias.scope.decl(metadata !11601)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !11601
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !11601
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !11601
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23, !noalias !11601
  %i.hi = sext i32 %i.hh to i64                   ; 2 uses
  %i.hj = load ptr, ptr %i.bz, align 8, !tbaa !1026, !noalias !11601 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !1053, !noalias !11601 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !1055, !noalias !11601
  %i.hn = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %i.hi ; 3 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !543, !noalias !11601
  %i.hp = zext i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [12 x i8], ptr %i.hk, i64 %i.hp ; 2 uses
  %i.hr = load <2 x float>, ptr %i.hq, align 4, !tbaa !572, !noalias !11601
  %i.hs = fpext <2 x float> %i.hr to <2 x double>
  store <2 x double> %i.hs, ptr %7, align 16, !tbaa !595, !noalias !11601
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !572, !noalias !11601
  %i.hv = fpext float %i.hu to double
  store double %i.hv, ptr %i.ca, align 16, !tbaa !595, !noalias !11601
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !543, !noalias !11601
  %i.hy = zext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [12 x i8], ptr %i.hk, i64 %i.hy ; 2 uses
  %i.ia = load <2 x float>, ptr %i.hz, align 4, !tbaa !572, !noalias !11601
  %i.ib = fpext <2 x float> %i.ia to <2 x double>
  store <2 x double> %i.ib, ptr %8, align 16, !tbaa !595, !noalias !11601
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.id = load float, ptr %i.ic, align 4, !tbaa !572, !noalias !11601
  %i.ie = fpext float %i.id to double
  store double %i.ie, ptr %i.cb, align 16, !tbaa !595, !noalias !11601
  %i.if = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !543, !noalias !11601
  %i.ih = zext i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [12 x i8], ptr %i.hk, i64 %i.ih ; 2 uses
  %i.ij = load <2 x float>, ptr %i.ii, align 4, !tbaa !572, !noalias !11601
  %i.ik = fpext <2 x float> %i.ij to <2 x double>
  store <2 x double> %i.ik, ptr %9, align 16, !tbaa !595, !noalias !11601
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.im = load float, ptr %i.il, align 4, !tbaa !572, !noalias !11601
  %i.in = fpext float %i.im to double
  store double %i.in, ptr %i.cc, align 16, !tbaa !595, !noalias !11601
  invoke void @_ZN7openvdb5v13_04math29closestPointOnTriangleToPointERKNS1_4Vec3IdEES5_S5_S5_RS3_(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %19, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %.noexc195 unwind label %bb.bi

.noexc195:                                        ; preds = %bb.bd
  %i.io = load ptr, ptr %i.bz, align 8, !tbaa !1026, !noalias !11601 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !1055
  %i.ir = getelementptr inbounds nuw [16 x i8], ptr %i.iq, i64 %i.hi
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 12
  %i.it = load i32, ptr %i.is, align 4, !tbaa !543 ; 2 uses
  %.not.i194 = icmp eq i32 %i.it, -1
  br i1 %.not.i194, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %.noexc195
  %i.iu = load ptr, ptr %i.io, align 8, !tbaa !1053
  %i.iv = zext i32 %i.it to i64
  %i.iw = getelementptr inbounds nuw [12 x i8], ptr %i.iu, i64 %i.iv ; 2 uses
  %i.ix = load <2 x float>, ptr %i.iw, align 4, !tbaa !572
  %i.iy = fpext <2 x float> %i.ix to <2 x double>
  store <2 x double> %i.iy, ptr %8, align 16, !tbaa !595, !noalias !11601
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !572
  %i.jb = fpext float %i.ja to double
  store double %i.jb, ptr %i.cb, align 16, !tbaa !595, !noalias !11601
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23, !noalias !11601
  invoke void @_ZN7openvdb5v13_04math29closestPointOnTriangleToPointERKNS1_4Vec3IdEES5_S5_S5_RS3_(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %.noexc196 unwind label %bb.bi

.noexc196:                                        ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !noalias !11601
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23, !noalias !11601
  %i.jc = load double, ptr %i.cc, align 16, !tbaa !595, !noalias !11602
  %21 = load double, ptr %i.cd, align 16, !tbaa !595, !alias.scope !11601, !noalias !11603
  %22 = load <3 x double>, ptr %17, align 16, !noalias !11601 ; 3 uses
  %i.jd = load <2 x double>, ptr %9, align 16, !tbaa !595, !noalias !11602 ; 2 uses
  %i.je = load <2 x double>, ptr %19, align 16, !tbaa !595, !alias.scope !11601, !noalias !11603 ; 2 uses
  %i.jf = shufflevector <3 x double> %22, <3 x double> poison, <2 x i32> zeroinitializer
  %i.jg = shufflevector <2 x double> %i.jd, <2 x double> %i.je, <2 x i32> <i32 0, i32 2>
  %i.jh = fsub <2 x double> %i.jf, %i.jg          ; 2 uses
  %23 = shufflevector <3 x double> %22, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ji = shufflevector <2 x double> %i.jd, <2 x double> %i.je, <2 x i32> <i32 1, i32 3>
  %i.jj = fsub <2 x double> %23, %i.ji            ; 2 uses
  %24 = shufflevector <3 x double> %22, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.jk = insertelement <2 x double> poison, double %i.jc, i64 0
  %i.jl = insertelement <2 x double> %i.jk, double %21, i64 1
  %i.jm = fsub <2 x double> %24, %i.jl            ; 2 uses
  %i.jn = fmul <2 x double> %i.jj, %i.jj
  %i.jo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jh, <2 x double> %i.jh, <2 x double> %i.jn)
  %i.jp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jm, <2 x double> %i.jm, <2 x double> %i.jo) ; 2 uses
  %i.jq = extractelement <2 x double> %i.jp, i64 0
  %i.jr = extractelement <2 x double> %i.jp, i64 1
  %i.js = fcmp olt double %i.jq, %i.jr
  br i1 %i.js, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.noexc196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %19, ptr noundef nonnull align 16 dereferenceable(24) %9, i64 24, i1 false)
  br label %bb.bg

bb.bg:                                            ; preds = %.noexc195, %.noexc196, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23, !noalias !11601
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !11601
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !11601
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !11601
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hg, ptr noundef nonnull align 16 dereferenceable(24) %19, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  %i.jt = load ptr, ptr %i.bg, align 8, !tbaa !3195
  %i.ju = getelementptr inbounds nuw [24 x i8], ptr %i.jt, i64 %i.he ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 24 ; 2 uses
  %.sroa.9261.0.copyload263 = load double, ptr %i.by, align 16
  %i.jw = load <2 x double>, ptr %17, align 16
  %i.jx = load <2 x double>, ptr %i.hg, align 8, !tbaa !595, !noalias !11604
  %i.jy = fsub <2 x double> %i.jw, %i.jx          ; 5 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !595, !noalias !11604
  %i.kb = fsub double %.sroa.9261.0.copyload263, %i.ka ; 4 uses
  %i.kc = extractelement <2 x double> %i.jy, i64 0 ; 2 uses
  store <2 x double> %i.jy, ptr %i.jv, align 8
  %.sroa.9261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ju, i64 40 ; 2 uses
  store double %i.kb, ptr %.sroa.9261.0..sroa_idx, align 8
  %foldExtExtBinop = fmul <2 x double> %i.jy, %i.jy
  %i.kd = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.ke = call double @llvm.fmuladd.f64(double %i.kc, double %i.kc, double %i.kd)
  %i.kf = call double @llvm.fmuladd.f64(double %i.kb, double %i.kb, double %i.ke)
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.kf) ; 2 uses
  %i.kg = call noundef double @llvm.fabs.f64(double %sqrt.i.i)
  %i.kh = fcmp ogt double %i.kg, f0x3E7AD7F29ABCAF48
  br i1 %i.kh, label %bb.bh, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198

bb.bh:                                            ; preds = %bb.bg
  %i.ki = fdiv double 1.000000e+00, %sqrt.i.i     ; 2 uses
  %i.kj = fmul double %i.kb, %i.ki
  %i.kk = insertelement <2 x double> poison, double %i.ki, i64 0
  %i.kl = shufflevector <2 x double> %i.kk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.km = fmul <2 x double> %i.jy, %i.kl
  store <2 x double> %i.km, ptr %i.jv, align 8, !tbaa !595
  store double %i.kj, ptr %.sroa.9261.0..sroa_idx, align 8, !tbaa !595
  br label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198

bb.bi:                                            ; preds = %bb.be, %bb.bd
  %i.kn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %.body155

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198: ; preds = %._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198_crit_edge, %bb.bg, %bb.bh
  %.pre-phi = phi i64 [ %.pre401, %._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198_crit_edge ], [ %i.he, %bb.bg ], [ %i.he, %bb.bh ]
  %i.ko = load ptr, ptr %i.bg, align 8, !tbaa !3195
  %i.kp = getelementptr inbounds nuw [24 x i8], ptr %i.ko, i64 %.pre-phi ; 5 uses
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !595, !noalias !11605
  %i.kr = fsub double %i.fu, %i.kq                ; 4 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kt = load <2 x double>, ptr %i.ks, align 8, !tbaa !595, !noalias !11605
  %i.ku = fsub <2 x double> %i.fv, %i.kt          ; 5 uses
  %i.kv = extractelement <2 x double> %i.ku, i64 0
  %foldExtExtBinop461 = fmul <2 x double> %i.ku, %i.ku
  %i.kw = extractelement <2 x double> %foldExtExtBinop461, i64 0
  %i.kx = call double @llvm.fmuladd.f64(double %i.kr, double %i.kr, double %i.kw)
  %i.ky = extractelement <2 x double> %i.ku, i64 1 ; 3 uses
  %i.kz = call double @llvm.fmuladd.f64(double %i.ky, double %i.ky, double %i.kx)
  %sqrt.i.i197 = call noundef double @llvm.sqrt.f64(double %i.kz) ; 2 uses
  %i.la = call noundef double @llvm.fabs.f64(double %sqrt.i.i197)
  %i.lb = fcmp ogt double %i.la, f0x3E7AD7F29ABCAF48 ; 3 uses
  %i.lc = fdiv double 1.000000e+00, %sqrt.i.i197  ; 2 uses
  %i.ld = fmul double %i.kr, %i.lc
  %i.le = insertelement <2 x double> poison, double %i.lc, i64 0
  %i.lf = shufflevector <2 x double> %i.le, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lg = fmul <2 x double> %i.ku, %i.lf          ; 2 uses
  %i.lh = extractelement <2 x double> %i.lg, i64 1
  %.sroa.19.0 = select i1 %i.lb, double %i.lh, double %i.ky
  %i.li = extractelement <2 x double> %i.lg, i64 0
  %.sroa.11281.0 = select i1 %i.lb, double %i.li, double %i.kv
  %.sroa.0277.0 = select i1 %i.lb, double %i.ld, double %i.kr
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !595
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !595
  %i.ln = fmul double %i.lm, %.sroa.11281.0
  %i.lo = call double @llvm.fmuladd.f64(double %i.lk, double %.sroa.0277.0, double %i.ln)
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kp, i64 40
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !595
  %i.lr = call noundef double @llvm.fmuladd.f64(double %i.lq, double %.sroa.19.0, double %i.lo)
  %i.ls = fcmp ogt double %i.lr, 0.000000e+00
  br i1 %i.ls, label %bb.bk, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge397

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge397: ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198
  %.pre = load i32, ptr %i.bd, align 8, !tbaa !543
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge397, %bb.bb, %bb.ba
  %i.lt = phi i32 [ %.pre, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge397 ], [ %storemerge346358, %bb.bb ], [ %storemerge346358, %bb.ba ] ; 2 uses
  %i.lu = add nsw i32 %i.lt, 1                    ; 2 uses
  store i32 %i.lu, ptr %i.bd, align 8, !tbaa !543
  %.not.not = icmp slt i32 %i.lt, %.sroa.speculated.i187
  br i1 %.not.not, label %bb.ba, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge, !llvm.loop !11590

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge: ; preds = %bb.bj
  %i.lv = load i32, ptr %i.bc, align 4, !tbaa !543 ; 2 uses
  %i.lw = add nsw i32 %i.lv, 1                    ; 2 uses
  store i32 %i.lw, ptr %i.bc, align 4, !tbaa !543
  %.not = icmp slt i32 %i.lv, %.sroa.speculated11.i186
  br i1 %.not, label %.lr.ph, label %._crit_edge363.split, !llvm.loop !11591

._crit_edge363.split:                             ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge
  %i.lx = load i32, ptr %16, align 8, !tbaa !543  ; 2 uses
  %i.ly = add nsw i32 %i.lx, 1                    ; 2 uses
  store i32 %i.ly, ptr %16, align 8, !tbaa !543
  %.not453 = icmp slt i32 %i.lx, %.sroa.speculated16.i185
  br i1 %.not453, label %.lr.ph362, label %.preheader.preheader, !llvm.loop !11592

bb.bk:                                            ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198
  %i.lz = load <2 x i32>, ptr %16, align 8, !tbaa !543
  %i.ma = add nsw <2 x i32> %i.lz, splat (i32 1)
  store <2 x i32> %i.ma, ptr %16, align 8, !tbaa !543
  br label %.loopexit.sink.split

.preheader:                                       ; preds = %.preheader.preheader, %bb.ch
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ch ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.mb = getelementptr inbounds nuw [12 x i8], ptr @_ZN7openvdb5v13_04util13COORD_OFFSETSE, i64 %indvars.iv ; 3 uses
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !543
  %i.md = add nsw i32 %i.mc, %i.fo                ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !543
  %i.mg = add nsw i32 %i.mf, %i.fx                ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !543
  %i.mj = add nsw i32 %i.mi, %i.fz                ; 3 uses
  %.sroa.2.0.insert.ext.i199 = zext i32 %i.mg to i64
  %.sroa.2.0.insert.shift.i200 = shl nuw i64 %.sroa.2.0.insert.ext.i199, 32
  %.sroa.0.0.insert.ext.i201 = zext i32 %i.md to i64
  %.sroa.0.0.insert.insert.i202 = or disjoint i64 %.sroa.2.0.insert.shift.i200, %.sroa.0.0.insert.ext.i201
  store i64 %.sroa.0.0.insert.insert.i202, ptr %16, align 8
  store i32 %i.mj, ptr %i.bd, align 8, !tbaa !570
  %i.mk = icmp slt i32 %i.md, %.sroa.speculated16.i
  %i.ml = icmp slt i32 %i.mg, %.sroa.speculated11.i
  %or.cond449 = select i1 %i.mk, i1 true, i1 %i.ml
  br i1 %or.cond449, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread, label %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i

_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i: ; preds = %.preheader
  %i.mm = icmp sge i32 %i.mj, %.sroa.speculated.i
  %i.mn = icmp sge i32 %.sroa.speculated16.i185, %i.md
  %or.cond.i.not351 = and i1 %i.mm, %i.mn
  %i.mo = icmp sge i32 %.sroa.speculated11.i186, %i.mg
  %or.cond10.i.not348 = select i1 %or.cond.i.not351, i1 %i.mo, i1 false
  %i.mp = icmp sge i32 %.sroa.speculated.i187, %i.mj
  %or.cond341 = select i1 %or.cond10.i.not348, i1 %i.mp, i1 false
  br i1 %or.cond341, label %bb.ch, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread

_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread: ; preds = %.preheader, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i
  %i.mq = invoke noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERd(ptr noundef nonnull align 8 dereferenceable(96) %14, ptr noundef nonnull align 4 dereferenceable(12) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.bl unwind label %bb.cf

bb.bl:                                            ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread
  %i.mr = load double, ptr %i.h, align 8
  %i.ms = fcmp olt double %i.mr, -7.500000e-01
  %or.cond = select i1 %i.mq, i1 %i.ms, i1 false
  br i1 %or.cond, label %bb.bm, label %bb.ch

bb.bm:                                            ; preds = %bb.bl
  %i.mt = load <2 x i32>, ptr %16, align 8, !tbaa !543 ; 3 uses
  %i.mu = extractelement <2 x i32> %i.mt, i64 1   ; 10 uses
  %i.mv = extractelement <2 x i32> %i.mt, i64 0   ; 7 uses
  %i.mw = sitofp <2 x i32> %i.mt to <2 x double>
  store <2 x double> %i.mw, ptr %17, align 16, !tbaa !595
  %i.mx = load i32, ptr %i.bd, align 8, !tbaa !543 ; 11 uses
  %i.my = sitofp i32 %i.mx to double
  store double %i.my, ptr %i.by, align 16, !tbaa !595
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  %i.mz = and i32 %i.mv, -8
  %i.na = load i32, ptr %i.ay, align 8, !tbaa !543
  %i.nb = icmp eq i32 %i.mz, %i.na
  br i1 %i.nb, label %bb.bn, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i

bb.bn:                                            ; preds = %bb.bm
  %i.nc = and i32 %i.mu, -8
  %i.nd = load i32, ptr %i.ce, align 4, !tbaa !543
  %i.ne = icmp eq i32 %i.nc, %i.nd
  br i1 %i.ne, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.bn
  %i.nf = and i32 %i.mx, -8
  %i.ng = load i32, ptr %.sroa.6.0..sroa_idx.i.i145, align 8, !tbaa !543
  %i.nh = icmp eq i32 %i.nf, %i.ng
  br i1 %i.nh, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i
  %i.ni = load ptr, ptr %i.ax, align 8, !tbaa !3213 ; 2 uses
  %i.nj = shl i32 %i.mv, 6
  %i.nk = and i32 %i.nj, 448
  %i.nl = shl i32 %i.mu, 3
  %i.nm = and i32 %i.nl, 56
  %i.nn = or disjoint i32 %i.nm, %i.nk
  %i.no = and i32 %i.mx, 7
  %i.np = or disjoint i32 %i.nn, %i.no
  %i.nq = zext nneg i32 %i.np to i64
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.nq
  %.not.i.not.i = icmp eq ptr %i.ni, null
  br i1 %.not.i.not.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i, %bb.bn, %bb.bm
  %i.ns = and i32 %i.mv, -128                     ; 3 uses
  %i.nt = load i32, ptr %.06.i.i.i.i.ptr.1.i.i.i146, align 4, !tbaa !543
  %i.nu = icmp eq i32 %i.ns, %i.nt
  br i1 %i.nu, label %bb.bo, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i

bb.bo:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i
  %i.nv = and i32 %i.mu, -128
  %i.nw = load i32, ptr %i.cf, align 8, !tbaa !543
  %i.nx = icmp eq i32 %i.nv, %i.nw
  br i1 %i.nx, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.bo
  %i.ny = and i32 %i.mx, -128
  %i.nz = load i32, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i147, align 4, !tbaa !543
  %i.oa = icmp eq i32 %i.ny, %i.nz
  br i1 %i.oa, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i
  %i.ob = load ptr, ptr %i.ci, align 8, !tbaa !1879
  br label %.invoke

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i, %bb.bo, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i
  %i.oc = and i32 %i.mv, -4096                    ; 2 uses
  %i.od = load i32, ptr %.06.i.i.i.i.ptr.2.i.i.i148, align 8, !tbaa !543
  %i.oe = icmp eq i32 %i.oc, %i.od
  br i1 %i.oe, label %bb.bp, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i

bb.bp:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i
  %i.of = and i32 %i.mu, -4096
  %i.og = load i32, ptr %i.cg, align 4, !tbaa !543
  %i.oh = icmp eq i32 %i.of, %i.og
  br i1 %i.oh, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.bp
  %i.oi = and i32 %i.mx, -4096
  %i.oj = load i32, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i149, align 8, !tbaa !543
  %i.ok = icmp eq i32 %i.oi, %i.oj
  br i1 %i.ok, label %bb.bq, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i

bb.bq:                                            ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i
  %i.ol = load ptr, ptr %i.ch, align 8, !tbaa !1857 ; 2 uses
  %i.om = shl i32 %i.mv, 3
  %i.on = and i32 %i.om, 31744
  %i.oo = lshr i32 %i.mu, 2
  %i.op = and i32 %i.oo, 992
  %i.oq = or disjoint i32 %i.op, %i.on            ; 2 uses
  %i.or = lshr i32 %i.mx, 7
  %i.os = and i32 %i.or, 31
  %i.ot = or disjoint i32 %i.os, %i.oq            ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ol, i64 262144
  %i.ov = lshr i32 %i.oq, 6
  %i.ow = zext nneg i32 %i.ov to i64
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %i.ow
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !791
  %i.oz = and i32 %i.ot, 63
  %i.pa = zext nneg i32 %i.oz to i64
  %i.pb = shl nuw i64 1, %i.pa
  %i.pc = and i64 %i.oy, %i.pb
  %.not.i.i.i = icmp eq i64 %i.pc, 0
  %i.pd = zext nneg i32 %i.ot to i64
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %i.pd ; 3 uses
  br i1 %.not.i.i.i, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !570
  %i.pg = and i32 %i.mu, -128
  %i.ph = and i32 %i.mx, -128
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.pg to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.ns to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i.i, ptr %.06.i.i.i.i.ptr.1.i.i.i146, align 4
  store i32 %i.ph, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i147, align 4, !tbaa !570
  store ptr %i.pf, ptr %i.ci, align 8, !tbaa !1879
  %i.pi = load ptr, ptr %i.pe, align 8, !tbaa !570
  br label %.invoke

_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i, %bb.bp, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i
  %i.pj = load ptr, ptr %i.az, align 8, !tbaa !1827 ; 6 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 56
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !543
  %i.pm = sub nsw i32 %i.mu, %i.pl
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pj, i64 60
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !543
  %i.pp = sub nsw i32 %i.mx, %i.po
  %i.pq = and i32 %i.pm, -4096                    ; 4 uses
  %i.pr = and i32 %i.pp, -4096                    ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !722 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pj, i64 8 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.pt, null
  br i1 %.not12.i.i.i.i.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pj, i64 52
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !543
  %i.px = sub nsw i32 %i.mv, %i.pw
  %i.py = and i32 %i.px, -4096                    ; 4 uses
  br label %bb.bs

bb.bs:                                            ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.014.i.i.i.i.i = phi ptr [ %i.pt, %.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i ] ; 7 uses
  %.0813.i.i.i.i.i = phi ptr [ %i.pu, %.lr.ph.i.i.i.i.i ], [ %.19.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i ]
  %i.pz = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 32
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !543 ; 2 uses
  %i.qb = icmp slt i32 %i.qa, %i.py
  br i1 %i.qb, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.qc = icmp sgt i32 %i.qa, %i.py
  br i1 %i.qc, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.qd = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 36
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !543 ; 2 uses
  %i.qf = icmp slt i32 %i.qe, %i.pq
  br i1 %i.qf, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.qg = icmp sgt i32 %i.qe, %i.pq
  br i1 %i.qg, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i: ; preds = %bb.bv
  %i.qh = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 40
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !543
  %i.qj = icmp slt i32 %i.qi, %i.pr
  br i1 %i.qj, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.bu, %bb.bs
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.bv, %bb.bt
  %.sink.i.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ 16, %bb.bv ], [ 16, %bb.bt ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ]
  %.19.i.i.i.i.i = phi ptr [ %.0813.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ %.014.i.i.i.i.i, %bb.bv ], [ %.014.i.i.i.i.i, %bb.bt ], [ %.014.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ] ; 7 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 %.sink.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %i.qk, align 8, !tbaa !1171 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, label %bb.bs, !llvm.loop !308

_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i
  %i.ql = icmp eq ptr %.19.i.i.i.i.i, %i.pu
  br i1 %i.ql, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.bw

bb.bw:                                            ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i
  %i.qm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !543 ; 2 uses
  %i.qo = icmp slt i32 %i.py, %i.qn
  br i1 %i.qo, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.qp = icmp sgt i32 %i.py, %i.qn
  br i1 %i.qp, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.qq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 36
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !543 ; 2 uses
  %i.qs = icmp slt i32 %i.pq, %i.qr
  br i1 %i.qs, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.qt = icmp sgt i32 %i.pq, %i.qr
  br i1 %i.qt, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.bz
  %i.qu = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !543
  %i.qw = icmp slt i32 %i.pr, %i.qv
  br i1 %i.qw, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.by, %bb.bw, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i
  %i.qx = getelementptr inbounds nuw i8, ptr %i.pj, i64 48
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.bz, %bb.bx
  %i.qy = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 48 ; 2 uses
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !1819 ; 2 uses
  %.not.i228 = icmp eq ptr %i.qz, null
  br i1 %.not.i228, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.ra = and i32 %i.mu, -4096
  %i.rb = and i32 %i.mx, -4096
  %.sroa.2.0.insert.ext.i.i229 = zext i32 %i.ra to i64
  %.sroa.2.0.insert.shift.i.i230 = shl nuw i64 %.sroa.2.0.insert.ext.i.i229, 32
  %.sroa.0.0.insert.ext.i.i231 = zext i32 %i.oc to i64
  %.sroa.0.0.insert.insert.i.i232 = or disjoint i64 %.sroa.2.0.insert.shift.i.i230, %.sroa.0.0.insert.ext.i.i231
  store i64 %.sroa.0.0.insert.insert.i.i232, ptr %.06.i.i.i.i.ptr.2.i.i.i148, align 8
  store i32 %i.rb, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i149, align 8, !tbaa !570
  store ptr %i.qz, ptr %i.ch, align 8, !tbaa !1857
  %i.rc = load ptr, ptr %i.qy, align 8, !tbaa !1821 ; 2 uses
  %i.rd = shl i32 %i.mv, 3
  %i.re = and i32 %i.rd, 31744
  %i.rf = lshr i32 %i.mu, 2
  %i.rg = and i32 %i.rf, 992
  %i.rh = or disjoint i32 %i.rg, %i.re            ; 2 uses
  %i.ri = lshr i32 %i.mx, 7
  %i.rj = and i32 %i.ri, 31
  %i.rk = or disjoint i32 %i.rj, %i.rh            ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rc, i64 262144
  %i.rm = lshr i32 %i.rh, 6
  %i.rn = zext nneg i32 %i.rm to i64
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.rl, i64 %i.rn
  %i.rp = load i64, ptr %i.ro, align 8, !tbaa !791
  %i.rq = and i32 %i.rk, 63
  %i.rr = zext nneg i32 %i.rq to i64
  %i.rs = shl nuw i64 1, %i.rr
  %i.rt = and i64 %i.rp, %i.rs
  %.not.i.i233 = icmp eq i64 %i.rt, 0
  %i.ru = zext nneg i32 %i.rk to i64
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.rc, i64 %i.ru ; 3 uses
  br i1 %.not.i.i233, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !570
  %i.rx = and i32 %i.mu, -128
  %i.ry = and i32 %i.mx, -128
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.rx to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.ns to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %.06.i.i.i.i.ptr.1.i.i.i146, align 4
  store i32 %i.ry, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i147, align 4, !tbaa !570
  store ptr %i.rw, ptr %i.ci, align 8, !tbaa !1879
  %i.rz = load ptr, ptr %i.rv, align 8, !tbaa !570
  br label %.invoke

.invoke:                                          ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i, %bb.br, %bb.cb
  %i.sa = phi ptr [ %i.rz, %bb.cb ], [ %i.pi, %bb.br ], [ %i.ob, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i ]
  %i.sb = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIiLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKiRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.sa, ptr noundef nonnull align 4 dereferenceable(12) %16, ptr noundef nonnull align 8 dereferenceable(96) %15)
          to label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit unwind label %bb.cg

bb.cc:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.sc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 56
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit: ; preds = %.invoke, %bb.bq, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i, %bb.cc, %bb.ca, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i
  %.1.i.i = phi ptr [ %i.nr, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i ], [ %i.rv, %bb.ca ], [ %i.sb, %.invoke ], [ %i.pe, %bb.bq ], [ %i.qx, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i ], [ %i.sc, %bb.cc ]
  %i.sd = load i32, ptr %.1.i.i, align 4, !tbaa !543
  call void @llvm.experimental.noalias.scope.decl(metadata !11606)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !11606
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !11606
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !11606
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !11606
  %i.se = sext i32 %i.sd to i64                   ; 2 uses
  %i.sf = load ptr, ptr %i.bz, align 8, !tbaa !1026, !noalias !11606 ; 2 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !1053, !noalias !11606 ; 3 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sf, i64 16
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !1055, !noalias !11606
  %i.sj = getelementptr inbounds nuw [16 x i8], ptr %i.si, i64 %i.se ; 3 uses
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !543, !noalias !11606
  %i.sl = zext i32 %i.sk to i64
  %i.sm = getelementptr inbounds nuw [12 x i8], ptr %i.sg, i64 %i.sl ; 2 uses
  %i.sn = load <2 x float>, ptr %i.sm, align 4, !tbaa !572, !noalias !11606
  %i.so = fpext <2 x float> %i.sn to <2 x double>
  store <2 x double> %i.so, ptr %2, align 16, !tbaa !595, !noalias !11606
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  %i.sq = load float, ptr %i.sp, align 4, !tbaa !572, !noalias !11606
  %i.sr = fpext float %i.sq to double
  store double %i.sr, ptr %i.cj, align 16, !tbaa !595, !noalias !11606
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sj, i64 4
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !543, !noalias !11606
  %i.su = zext i32 %i.st to i64
  %i.sv = getelementptr inbounds nuw [12 x i8], ptr %i.sg, i64 %i.su ; 2 uses
  %i.sw = load <2 x float>, ptr %i.sv, align 4, !tbaa !572, !noalias !11606
  %i.sx = fpext <2 x float> %i.sw to <2 x double>
  store <2 x double> %i.sx, ptr %3, align 16, !tbaa !595, !noalias !11606
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %i.sz = load float, ptr %i.sy, align 4, !tbaa !572, !noalias !11606
  %i.ta = fpext float %i.sz to double
  store double %i.ta, ptr %i.ck, align 16, !tbaa !595, !noalias !11606
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !543, !noalias !11606
  %i.td = zext i32 %i.tc to i64
  %i.te = getelementptr inbounds nuw [12 x i8], ptr %i.sg, i64 %i.td ; 2 uses
  %i.tf = load <2 x float>, ptr %i.te, align 4, !tbaa !572, !noalias !11606
  %i.tg = fpext <2 x float> %i.tf to <2 x double>
  store <2 x double> %i.tg, ptr %4, align 16, !tbaa !595, !noalias !11606
  %i.th = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  %i.ti = load float, ptr %i.th, align 4, !tbaa !572, !noalias !11606
  %i.tj = fpext float %i.ti to double
  store double %i.tj, ptr %i.cl, align 16, !tbaa !595, !noalias !11606
  invoke void @_ZN7openvdb5v13_04math29closestPointOnTriangleToPointERKNS1_4Vec3IdEES5_S5_S5_RS3_(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.noexc214 unwind label %bb.cg

.noexc214:                                        ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit
  %i.tk = load ptr, ptr %i.bz, align 8, !tbaa !1026, !noalias !11606 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !1055
  %i.tn = getelementptr inbounds nuw [16 x i8], ptr %i.tm, i64 %i.se
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 12
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !543 ; 2 uses
  %.not.i208 = icmp eq i32 %i.tp, -1
  br i1 %.not.i208, label %.noexc214._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit220_crit_edge, label %bb.cd

.noexc214._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit220_crit_edge: ; preds = %.noexc214
  %.sroa.0.0.copyload235.pre = load double, ptr %17, align 16
  %.sroa.7.0.copyload237.pre = load double, ptr %i.bx, align 8
  %.sroa.9.0.copyload239.pre = load double, ptr %i.by, align 16
  br label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit220

bb.cd:                                            ; preds = %.noexc214
  %i.tq = load ptr, ptr %i.tk, align 8, !tbaa !1053
  %i.tr = zext i32 %i.tp to i64
  %i.ts = getelementptr inbounds nuw [12 x i8], ptr %i.tq, i64 %i.tr ; 2 uses
  %i.tt = load <2 x float>, ptr %i.ts, align 4, !tbaa !572
  %i.tu = fpext <2 x float> %i.tt to <2 x double>
  store <2 x double> %i.tu, ptr %3, align 16, !tbaa !595, !noalias !11606
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !572
  %i.tx = fpext float %i.tw to double
  store double %i.tx, ptr %i.ck, align 16, !tbaa !595, !noalias !11606
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !11606
  invoke void @_ZN7openvdb5v13_04math29closestPointOnTriangleToPointERKNS1_4Vec3IdEES5_S5_S5_RS3_(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.noexc215 unwind label %bb.cg

.noexc215:                                        ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !noalias !11606
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !11606
  %i.ty = load double, ptr %i.cl, align 16, !tbaa !595, !noalias !11607
  %i.tz = load double, ptr %i.cm, align 16, !tbaa !595, !alias.scope !11606, !noalias !11608
  %.sroa.615.0.copyload.i211 = load double, ptr %i.bx, align 8, !noalias !11606 ; 3 uses
  %.sroa.013.0.copyload.i209 = load double, ptr %17, align 16, !noalias !11606 ; 3 uses
  %.sroa.917.0.copyload.i213 = load double, ptr %i.by, align 16, !noalias !11606 ; 3 uses
  %i.ua = load <2 x double>, ptr %4, align 16, !tbaa !595, !noalias !11607 ; 2 uses
  %i.ub = load <2 x double>, ptr %20, align 16, !tbaa !595, !alias.scope !11606, !noalias !11608 ; 2 uses
  %i.uc = insertelement <2 x double> poison, double %.sroa.013.0.copyload.i209, i64 0
  %i.ud = shufflevector <2 x double> %i.uc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ue = shufflevector <2 x double> %i.ua, <2 x double> %i.ub, <2 x i32> <i32 0, i32 2>
  %i.uf = fsub <2 x double> %i.ud, %i.ue          ; 2 uses
  %i.ug = insertelement <2 x double> poison, double %.sroa.615.0.copyload.i211, i64 0
  %i.uh = shufflevector <2 x double> %i.ug, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ui = shufflevector <2 x double> %i.ua, <2 x double> %i.ub, <2 x i32> <i32 1, i32 3>
  %i.uj = fsub <2 x double> %i.uh, %i.ui          ; 2 uses
  %i.uk = insertelement <2 x double> poison, double %.sroa.917.0.copyload.i213, i64 0
  %i.ul = shufflevector <2 x double> %i.uk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.um = insertelement <2 x double> poison, double %i.ty, i64 0
  %i.un = insertelement <2 x double> %i.um, double %i.tz, i64 1
  %i.uo = fsub <2 x double> %i.ul, %i.un          ; 2 uses
  %i.up = fmul <2 x double> %i.uj, %i.uj
  %i.uq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uf, <2 x double> %i.uf, <2 x double> %i.up)
  %i.ur = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uo, <2 x double> %i.uo, <2 x double> %i.uq) ; 2 uses
  %i.us = extractelement <2 x double> %i.ur, i64 0
  %i.ut = extractelement <2 x double> %i.ur, i64 1
  %i.uu = fcmp olt double %i.us, %i.ut
  br i1 %i.uu, label %bb.ce, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit220

bb.ce:                                            ; preds = %.noexc215
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %20, ptr noundef nonnull align 16 dereferenceable(24) %4, i64 24, i1 false)
  br label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit220

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit220: ; preds = %.noexc214._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit220_crit_edge, %.noexc215, %bb.ce
  %.sroa.9.0.copyload239 = phi double [ %.sroa.9.0.copyload239.pre, %.noexc214._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit220_crit_edge ], [ %.sroa.917.0.copyload.i213, %.noexc215 ], [ %.sroa.917.0.copyload.i213, %bb.ce ]
  %.sroa.7.0.copyload237 = phi double [ %.sroa.7.0.copyload237.pre, %.noexc214._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit220_crit_edge ], [ %.sroa.615.0.copyload.i211, %.noexc215 ], [ %.sroa.615.0.copyload.i211, %bb.ce ]
  %.sroa.0.0.copyload235 = phi double [ %.sroa.0.0.copyload235.pre, %.noexc214._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit220_crit_edge ], [ %.sroa.013.0.copyload.i209, %.noexc215 ], [ %.sroa.013.0.copyload.i209, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !11606
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !11606
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !11606
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !11606
  %25 = load <3 x double>, ptr %20, align 16      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  %i.uv = insertelement <2 x double> %i.gg, double %.sroa.0.0.copyload235, i64 1
  %i.uw = shufflevector <3 x double> %25, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ux = fsub <2 x double> %i.uv, %i.uw          ; 4 uses
  %i.uy = insertelement <2 x double> %i.fv, double %.sroa.7.0.copyload237, i64 1
  %26 = shufflevector <3 x double> %25, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.uz = fsub <2 x double> %i.uy, %26            ; 4 uses
  %i.va = insertelement <2 x double> %i.gh, double %.sroa.9.0.copyload239, i64 1
  %27 = shufflevector <3 x double> %25, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.vb = fsub <2 x double> %i.va, %27            ; 4 uses
  %i.vc = fmul <2 x double> %i.uz, %i.uz
  %i.vd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ux, <2 x double> %i.ux, <2 x double> %i.vc)
  %i.ve = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vb, <2 x double> %i.vb, <2 x double> %i.vd)
  %i.vf = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ve) ; 2 uses
  %i.vg = fdiv <2 x double> splat (double 1.000000e+00), %i.vf ; 3 uses
  %i.vh = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.vf)
  %i.vi = fcmp ogt <2 x double> %i.vh, splat (double f0x3E7AD7F29ABCAF48) ; 3 uses
  %i.vj = shufflevector <2 x double> %i.vb, <2 x double> %i.ux, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.vk = shufflevector <2 x double> %i.vg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vl = fmul <2 x double> %i.vj, %i.vk
  %i.vm = shufflevector <2 x i1> %i.vi, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.vn = select <2 x i1> %i.vm, <2 x double> %i.vl, <2 x double> %i.vj ; 2 uses
  %i.vo = fmul <2 x double> %i.uz, %i.vg
  %i.vp = select <2 x i1> %i.vi, <2 x double> %i.vo, <2 x double> %i.uz ; 2 uses
  %i.vq = shufflevector <2 x double> %i.vb, <2 x double> %i.ux, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.vr = shufflevector <2 x double> %i.vg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.vs = fmul <2 x double> %i.vq, %i.vr
  %i.vt = shufflevector <2 x i1> %i.vi, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.vu = select <2 x i1> %i.vt, <2 x double> %i.vs, <2 x double> %i.vq ; 2 uses
  %shift = shufflevector <2 x double> %i.vp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop463 = fmul <2 x double> %i.vp, %shift
  %i.vv = extractelement <2 x double> %foldExtExtBinop463, i64 0
  %i.vw = extractelement <2 x double> %i.vn, i64 1
  %i.vx = extractelement <2 x double> %i.vu, i64 1
  %i.vy = call double @llvm.fmuladd.f64(double %i.vx, double %i.vw, double %i.vv)
  %i.vz = extractelement <2 x double> %i.vn, i64 0
  %i.wa = extractelement <2 x double> %i.vu, i64 0
  %i.wb = call noundef double @llvm.fmuladd.f64(double %i.wa, double %i.vz, double %i.vy)
  %i.wc = fcmp ogt double %i.wb, 0.000000e+00
  br i1 %i.wc, label %.loopexit.sink.split, label %bb.ch

bb.cf:                                            ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread
  %i.wd = landingpad { ptr, i32 }
          cleanup
  br label %.body155

bb.cg:                                            ; preds = %.invoke, %bb.cd, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit
  %i.we = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %.body155

bb.ch:                                            ; preds = %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i, %bb.bl, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit220
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 26
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !11599

.loopexit.sink.split:                             ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit220, %bb.bk
  %i.wf = load double, ptr %i.fd, align 8, !tbaa !595
  %i.wg = fneg double %i.wf
  store double %i.wg, ptr %i.fd, align 8, !tbaa !595
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ch, %.loopexit.sink.split, %.lr.ph382
  %i.wh = add i32 %.sroa.5.0380, 1                ; 4 uses
  %i.wi = lshr i32 %i.wh, 6                       ; 3 uses
  %i.wj = icmp ugt i32 %i.wh, 511
  br i1 %i.wj, label %._crit_edge383, label %bb.ci

bb.ci:                                            ; preds = %.loopexit
  %i.wk = and i32 %i.wh, 63
  %i.wl = zext nneg i32 %i.wi to i64              ; 8 uses
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.wl
  %i.wn = load i64, ptr %i.wm, align 8, !tbaa !791 ; 2 uses
  %i.wo = zext nneg i32 %i.wk to i64              ; 2 uses
  %i.wp = shl nuw i64 1, %i.wo
  %i.wq = and i64 %i.wn, %i.wp
  %.not.i.i.i.i = icmp eq i64 %i.wq, 0
  br i1 %.not.i.i.i.i, label %bb.cj, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

bb.cj:                                            ; preds = %bb.ci
  %i.wr = shl nsw i64 -1, %i.wo
  %i.ws = and i64 %i.wn, %i.wr                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.ws, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i221.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i221.preheader:                      ; preds = %bb.cj
  %exitcond.not.i.i.i.i457 = icmp eq i32 %i.wi, 7
  br i1 %exitcond.not.i.i.i.i457, label %._crit_edge383, label %.lr.ph459

.lr.ph.i.i.i.i221:                                ; preds = %.lr.ph459
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge383, label %.lr.ph459.1

.lr.ph459.1:                                      ; preds = %.lr.ph.i.i.i.i221
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.wl, 2 ; 3 uses
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.1
  %i.wu = load i64, ptr %i.wt, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.wu, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i221.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i221.1:                              ; preds = %.lr.ph459.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge383, label %.lr.ph459.2

.lr.ph459.2:                                      ; preds = %.lr.ph.i.i.i.i221.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.wl, 3 ; 3 uses
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.2
  %i.ww = load i64, ptr %i.wv, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.ww, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i221.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i221.2:                              ; preds = %.lr.ph459.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge383, label %.lr.ph459.3

.lr.ph459.3:                                      ; preds = %.lr.ph.i.i.i.i221.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.wl, 4 ; 3 uses
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.3
  %i.wy = load i64, ptr %i.wx, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.wy, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i221.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i221.3:                              ; preds = %.lr.ph459.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge383, label %.lr.ph459.4

.lr.ph459.4:                                      ; preds = %.lr.ph.i.i.i.i221.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.wl, 5 ; 3 uses
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.4
  %i.xa = load i64, ptr %i.wz, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.xa, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i221.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i221.4:                              ; preds = %.lr.ph459.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge383, label %.lr.ph459.5

.lr.ph459.5:                                      ; preds = %.lr.ph.i.i.i.i221.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.wl, 6 ; 3 uses
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.5
  %i.xc = load i64, ptr %i.xb, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.xc, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i221.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i221.5:                              ; preds = %.lr.ph459.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge383, label %.lr.ph459.6

.lr.ph459.6:                                      ; preds = %.lr.ph.i.i.i.i221.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.wl, 7 ; 2 uses
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.6
  %i.xe = load i64, ptr %i.xd, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.xe, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge383, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph459:                                        ; preds = %.lr.ph.i.i.i.i221.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.wl, 1 ; 3 uses
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i
  %i.xg = load i64, ptr %i.xf, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.xg, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i221, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph459.6, %.lr.ph459.5, %.lr.ph459.4, %.lr.ph459.3, %.lr.ph459.2, %.lr.ph459.1, %.lr.ph459
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph459 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph459.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph459.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph459.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph459.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph459.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph459.6 ]
  %.lcssa = phi i64 [ %i.xg, %.lr.ph459 ], [ %i.wu, %.lr.ph459.1 ], [ %i.ww, %.lr.ph459.2 ], [ %i.wy, %.lr.ph459.3 ], [ %i.xa, %.lr.ph459.4 ], [ %i.xc, %.lr.ph459.5 ], [ %i.xe, %.lr.ph459.6 ]
  %i.xh = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.cj
  %.016.lcssa.i.i.i.i = phi i32 [ %i.wi, %bb.cj ], [ %i.xh, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.ws, %bb.cj ], [ %.lcssa, %.critedge.loopexit.i.i.i.i ]
  %i.xi = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.xj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.xk = trunc nuw nsw i64 %i.xj to i32
  %i.xl = or disjoint i32 %i.xi, %i.xk
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit: ; preds = %bb.ci, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.xl, %.critedge.i.i.i.i ], [ %i.wh, %bb.ci ] ; 2 uses
  %.not344 = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not344, label %._crit_edge383, label %.lr.ph382

._crit_edge383:                                   ; preds = %.loopexit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit, %.lr.ph.i.i.i.i221.preheader, %.lr.ph459.6, %.lr.ph.i.i.i.i221, %.lr.ph.i.i.i.i221.1, %.lr.ph.i.i.i.i221.2, %.lr.ph.i.i.i.i221.3, %.lr.ph.i.i.i.i221.4, %.lr.ph.i.i.i.i221.5, %bb.au
  %i.xm = add nuw i64 %.0118384, 1                ; 2 uses
  %exitcond396.not = icmp eq i64 %i.xm, %i.bt
  br i1 %exitcond396.not, label %._crit_edge386, label %bb.ag, !llvm.loop !11600

.body155:                                         ; preds = %bb.aw, %bb.cf, %bb.cg, %bb.bi, %bb.ay, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i, %bb.av, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i160, %bb.ax, %bb.y, %bb.ab, %bb.x
  %.pn132.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.x ], [ %i.bl, %bb.y ], [ %i.bq, %bb.ab ], [ %i.et, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i160 ], [ %i.wd, %bb.cf ], [ %i.fi, %bb.aw ], [ %i.du, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ], [ %i.fj, %bb.ax ], [ %i.fk, %bb.ay ], [ %i.fh, %bb.av ], [ %i.we, %bb.cg ], [ %i.kn, %bb.bi ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %15, align 8, !tbaa !545
  %i.xn = load ptr, ptr %i.ah, align 8, !tbaa !3207 ; 2 uses
  %.not.i222 = icmp eq ptr %i.xn, null
  br i1 %.not.i222, label %.body, label %bb.ck

bb.ck:                                            ; preds = %.body155
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %15, ptr %i.b, align 8, !tbaa !3208
  %i.xp = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.xo, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i223 unwind label %bb.cl, !inline_history !3214 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i223: ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.body

bb.cl:                                            ; preds = %bb.ck
end_hunk_7
