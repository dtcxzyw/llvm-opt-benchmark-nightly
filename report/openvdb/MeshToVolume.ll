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
  %18 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 7 uses
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
  %19 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %20 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 28
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 52
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 72 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %18, i64 16
  br label %bb.ag

._crit_edge379:                                   ; preds = %._crit_edge376, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EE5resetIPbvEEvT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %13, align 8, !tbaa !545
  %i.ck = load ptr, ptr %i.ah, align 8, !tbaa !3207 ; 2 uses
  %.not.i = icmp eq ptr %i.ck, null
  br i1 %.not.i, label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge379
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %13, ptr %i.d, align 8, !tbaa !3208
  %i.cm = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.cl, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i unwind label %bb.ad, !inline_history !3214 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit

bb.ad:                                            ; preds = %bb.ac
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #31, !inline_history !3214
  unreachable

_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit: ; preds = %._crit_edge379, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %12, align 8, !tbaa !545
  %i.cp = load ptr, ptr %i.k, align 8, !tbaa !3199 ; 2 uses
  %.not.i155 = icmp eq ptr %i.cp, null
  br i1 %.not.i155, label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %12, ptr %i.c, align 8, !tbaa !3200
  %i.cr = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.cq, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i unwind label %bb.af, !inline_history !3215 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit

bb.af:                                            ; preds = %bb.ae
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  call void @__clang_call_terminate(ptr %i.ct) #31, !inline_history !3215
  unreachable

_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit: ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  ret void

bb.ag:                                            ; preds = %.lr.ph378, %._crit_edge376
  %.0118377 = phi i64 [ %i.bs, %.lr.ph378 ], [ %i.uu, %._crit_edge376 ] ; 2 uses
  %i.cu = load ptr, ptr %0, align 8, !tbaa !814
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.0118377
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1339 ; 10 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load atomic i32, ptr %i.cx seq_cst, align 4
  %.not.i.i156 = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i156, label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.cw)
          to label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i unwind label %bb.av

_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i: ; preds = %bb.ah, %bb.ag
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !570 ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.ai, label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE4dataEv.exit

bb.ai:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 12 ; 4 uses
  %i.dc = atomicrmw xchg ptr %i.db, i8 1 seq_cst, align 1
  %i.dd = trunc i8 %i.dc to i1
  br i1 %i.dd, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ai, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i
  %.sroa.0.02.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i ], [ 1, %bb.ai ] ; 8 uses
  %i.de = icmp slt i32 %.sroa.0.02.i.i.i.i, 17
  br i1 %i.de, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i
  %i.df = icmp sgt i32 %.sroa.0.02.i.i.i.i, 0
  br i1 %i.df, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.aj
  %xtraiter = and i32 %.sroa.0.02.i.i.i.i, 7      ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.01.i.i.i.i.i.i.prol = phi i32 [ %i.dg, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.0.02.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.dg = add nsw i32 %.01.i.i.i.i.i.i.prol, -1   ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !8511

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.01.i.i.i.i.i.i.unr = phi i32 [ %.sroa.0.02.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dg, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.dh = icmp ult i32 %.sroa.0.02.i.i.i.i, 8
  br i1 %i.dh, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.01.i.i.i.i.i.i = phi i32 [ %i.di, %.lr.ph.i.i.i.i.i.i ], [ %.01.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.di = add nsw i32 %.01.i.i.i.i.i.i, -8
  call void @llvm.x86.sse2.pause()
  %i.dj = icmp sgt i32 %.01.i.i.i.i.i.i, 8
  br i1 %i.dj, label %.lr.ph.i.i.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i, !llvm.loop !38

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.aj
  %i.dk = shl i32 %.sroa.0.02.i.i.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i
  %i.dl = call noundef i32 @sched_yield() #23     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i: ; preds = %bb.ak, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i32 [ %i.dk, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i ], [ %.sroa.0.02.i.i.i.i, %bb.ak ]
  %i.dm = atomicrmw xchg ptr %i.db, i8 1 seq_cst, align 1
  %i.dn = trunc i8 %i.dm to i1
  br i1 %i.dn, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i, !llvm.loop !47

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i, %bb.ai
  %i.do = load ptr, ptr %i.cw, align 8, !tbaa !570 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.al, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i

bb.al:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i
  %i.dq = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #30
          to label %bb.am unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ; 2 uses

bb.am:                                            ; preds = %bb.al
  store ptr %i.dq, ptr %i.cw, align 8, !tbaa !570
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i: ; preds = %bb.al
  %i.dr = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.db release, align 1
  br label %.body157

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i: ; preds = %bb.am, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i
  %i.ds = phi ptr [ %i.dq, %bb.am ], [ %i.do, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i ]
  store atomic i8 0, ptr %i.db release, align 4
  br label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE4dataEv.exit

_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE4dataEv.exit: ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i
  %i.dt = phi ptr [ %i.ds, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i ], [ %i.cz, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.cw, i64 80 ; 3 uses
  %i.dv = invoke noundef ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %13, ptr noundef nonnull align 4 dereferenceable(12) %i.du)
          to label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstLeafERKNS0_4math5CoordE.exit unwind label %bb.aw ; 6 uses

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstLeafERKNS0_4math5CoordE.exit: ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE4dataEv.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load atomic i32, ptr %i.dw seq_cst, align 4
  %.not.i.i160 = icmp eq i32 %i.dx, 0
  br i1 %.not.i.i160, label %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i, label %bb.an

bb.an:                                            ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstLeafERKNS0_4math5CoordE.exit
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.dv)
          to label %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i unwind label %bb.ax

_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i: ; preds = %bb.an, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstLeafERKNS0_4math5CoordE.exit
  %i.dy = load ptr, ptr %i.dv, align 8, !tbaa !570 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 12 ; 4 uses
  %i.eb = atomicrmw xchg ptr %i.ea, i8 1 seq_cst, align 1
  %i.ec = trunc i8 %i.eb to i1
  br i1 %i.ec, label %.lr.ph.i.i.i.i163, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i161

.lr.ph.i.i.i.i163:                                ; preds = %bb.ao, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i165
  %.sroa.0.02.i.i.i.i164 = phi i32 [ %.sroa.0.1.i.i.i.i166, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i165 ], [ 1, %bb.ao ] ; 8 uses
  %i.ed = icmp slt i32 %.sroa.0.02.i.i.i.i164, 17
  br i1 %i.ed, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i163
  %i.ee = icmp sgt i32 %.sroa.0.02.i.i.i.i164, 0
  br i1 %i.ee, label %.lr.ph.i.i.i.i.i.i168.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i167

.lr.ph.i.i.i.i.i.i168.preheader:                  ; preds = %bb.ap
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS1_26QuadAndTriangleDataAdapterINS0_4math4Vec3IfEENSG_IjEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i165

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i163
  %i.ek = call noundef i32 @sched_yield() #23     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i165

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i165: ; preds = %bb.aq, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i167
  %.sroa.0.1.i.i.i.i166 = phi i32 [ %i.ej, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i167 ], [ %.sroa.0.02.i.i.i.i164, %bb.aq ]
  %i.el = atomicrmw xchg ptr %i.ea, i8 1 seq_cst, align 1
  %i.em = trunc i8 %i.el to i1
  br i1 %i.em, label %.lr.ph.i.i.i.i163, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i161, !llvm.loop !47

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i161: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i165, %bb.ao
  %i.en = load ptr, ptr %i.dv, align 8, !tbaa !570 ; 2 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.ar, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i

bb.ar:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i161
  %i.ep = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #30
          to label %bb.as unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i162 ; 2 uses

bb.as:                                            ; preds = %bb.ar
  store ptr %i.ep, ptr %i.dv, align 8, !tbaa !570
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i162: ; preds = %bb.ar
  %i.eq = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.ea release, align 1
  br label %.body157

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i: ; preds = %bb.as, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i161
  %i.er = phi ptr [ %i.ep, %bb.as ], [ %i.en, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i161 ]
  store atomic i8 0, ptr %i.ea release, align 4
  br label %bb.at

bb.at:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i
  %i.es = phi ptr [ %i.er, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i ], [ %i.dy, %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i ]
  %.sroa.0291.0.copyload = load i32, ptr %i.du, align 8 ; 2 uses
  %.sroa.7293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 84 ; 2 uses
  %.sroa.7293.0.copyload = load i32, ptr %.sroa.7293.0..sroa_idx, align 4 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 88
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !570 ; 2 uses
  %i.et = add nsw i32 %.sroa.0291.0.copyload, 7
  %i.eu = add i32 %.sroa.7293.0.copyload, 7
  %i.ev = add nsw i32 %.sroa.10.0.copyload, 7
  %i.ew = load ptr, ptr %i.bm, align 8, !tbaa !1443
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.ew, i8 0, i64 512, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  invoke void @_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<float, 3>::ValueIter") align 8 %16, ptr noundef nonnull align 8 dereferenceable(96) %i.cw)
          to label %bb.au unwind label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.ex = load i32, ptr %i.bv, align 8, !tbaa !1228 ; 2 uses
  %i.ey = load ptr, ptr %i.bw, align 8, !tbaa !1229 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %.not337372 = icmp eq i32 %i.ex, 512
  br i1 %.not337372, label %._crit_edge376, label %.lr.ph375

.lr.ph375:                                        ; preds = %bb.au, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit
  %.sroa.5.0373 = phi i32 [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit ], [ %i.ex, %bb.au ] ; 5 uses
  %i.ez = zext i32 %.sroa.5.0373 to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.ez ; 3 uses
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !572 ; 2 uses
  %i.fc = fcmp olt float %i.fb, 0.000000e+00
  %i.fd = fcmp ogt float %i.fb, 7.500000e-01
  %or.cond = or i1 %i.fc, %i.fd
  br i1 %or.cond, label %.loopexit, label %bb.az

bb.av:                                            ; preds = %bb.ah
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.body157

bb.aw:                                            ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE4dataEv.exit
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.body157

bb.ax:                                            ; preds = %bb.an
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %.body157

bb.ay:                                            ; preds = %bb.at
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %.body157

bb.az:                                            ; preds = %.lr.ph375
  %i.fi = lshr i32 %.sroa.5.0373, 6
  %i.fj = lshr i32 %.sroa.5.0373, 3
  %i.fk = load i32, ptr %i.du, align 8, !tbaa !543
  %i.fl = add nsw i32 %i.fk, %i.fi                ; 4 uses
  %i.fm = insertelement <2 x i32> poison, i32 %i.fj, i64 0
  %i.fn = insertelement <2 x i32> %i.fm, i32 %.sroa.5.0373, i64 1
  %i.fo = and <2 x i32> %i.fn, splat (i32 7)
  %i.fp = load <2 x i32>, ptr %.sroa.7293.0..sroa_idx, align 4, !tbaa !543
  %i.fq = add <2 x i32> %i.fp, %i.fo              ; 3 uses
  %i.fr = sitofp i32 %i.fl to double              ; 2 uses
  %i.fs = sitofp <2 x i32> %i.fq to <2 x double>  ; 3 uses
  %i.ft = add nsw i32 %i.fl, -1
  %i.fu = extractelement <2 x i32> %i.fq, i64 0   ; 3 uses
  %i.fv = add nsw i32 %i.fu, -1
  %i.fw = extractelement <2 x i32> %i.fq, i64 1   ; 3 uses
  %i.fx = add nsw i32 %i.fw, -1
  %.sroa.speculated16.i = call i32 @llvm.smax.i32(i32 %i.ft, i32 %.sroa.0291.0.copyload) ; 4 uses
  %.sroa.speculated11.i = call i32 @llvm.smax.i32(i32 %i.fv, i32 %.sroa.7293.0.copyload) ; 4 uses
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.fx, i32 %.sroa.10.0.copyload) ; 4 uses
  %i.fy = add nsw i32 %i.fl, 1
  %i.fz = add i32 %i.fu, 1
  %i.ga = add nsw i32 %i.fw, 1
  %.sroa.speculated16.i187 = call i32 @llvm.smin.i32(i32 %i.et, i32 %i.fy) ; 3 uses
  %.sroa.speculated11.i188 = call i32 @llvm.smin.i32(i32 %i.eu, i32 %i.fz) ; 3 uses
  %.sroa.speculated.i189 = call i32 @llvm.smin.i32(i32 %i.ev, i32 %i.ga) ; 3 uses
  store i32 %.sroa.speculated16.i, ptr %14, align 8, !tbaa !543
  %i.gb = icmp sgt i32 %.sroa.speculated16.i, %.sroa.speculated16.i187
  %i.gc = icmp sgt i32 %.sroa.speculated11.i, %.sroa.speculated11.i188
  %or.cond439 = select i1 %i.gb, i1 true, i1 %i.gc
  %.not350 = icmp sgt i32 %.sroa.speculated.i, %.sroa.speculated.i189
  %or.cond440 = select i1 %or.cond439, i1 true, i1 %.not350
  br i1 %or.cond440, label %.preheader.preheader, label %.lr.ph355

.preheader.preheader:                             ; preds = %._crit_edge356.split, %bb.az
  %i.gd = shufflevector <2 x double> %i.fs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  br label %.preheader

.lr.ph355:                                        ; preds = %bb.az, %._crit_edge356.split
  %storemerge358 = phi i32 [ %i.kp, %._crit_edge356.split ], [ %.sroa.speculated16.i, %bb.az ]
  %i.ge = shl i32 %storemerge358, 6
  %i.gf = and i32 %i.ge, 448
  store i32 %.sroa.speculated11.i, ptr %i.bc, align 4, !tbaa !543
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph355, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge
  %storemerge338353 = phi i32 [ %.sroa.speculated11.i, %.lr.ph355 ], [ %i.kn, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge ]
  %i.gg = shl i32 %storemerge338353, 3
  %i.gh = and i32 %i.gg, 56
  %i.gi = or disjoint i32 %i.gh, %i.gf
  store i32 %.sroa.speculated.i, ptr %i.bd, align 8, !tbaa !543
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph, %bb.bh
  %storemerge339351 = phi i32 [ %.sroa.speculated.i, %.lr.ph ], [ %i.kl, %bb.bh ] ; 4 uses
  %i.gj = and i32 %storemerge339351, 7
  %i.gk = or disjoint i32 %i.gi, %i.gj            ; 2 uses
  %i.gl = zext nneg i32 %i.gk to i64              ; 3 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.gl ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !543
  %i.go = icmp eq i32 %i.gn, -1
  br i1 %i.go, label %bb.bh, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.gl
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !572
  %i.gr = fcmp olt float %i.gq, -7.500000e-01
  br i1 %i.gr, label %bb.bc, label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  %i.gs = shl nuw nsw i32 %i.gk, 1                ; 2 uses
  %i.gt = load ptr, ptr %i.bm, align 8, !tbaa !1443
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gl ; 2 uses
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !673, !range !804, !noundef !805
  %i.gw = trunc nuw i8 %i.gv to i1
  br i1 %i.gw, label %._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198_crit_edge, label %bb.bd

._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198_crit_edge: ; preds = %bb.bc
  %.pre391 = zext nneg i32 %i.gs to i64
  br label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198

bb.bd:                                            ; preds = %bb.bc
  store i8 1, ptr %i.gu, align 1, !tbaa !673
  %i.gx = load <2 x i32>, ptr %14, align 8, !tbaa !543
  %i.gy = sitofp <2 x i32> %i.gx to <2 x double>
  store <2 x double> %i.gy, ptr %15, align 16, !tbaa !595
  %i.gz = sitofp i32 %storemerge339351 to double
  store double %i.gz, ptr %i.bx, align 16, !tbaa !595
  %i.ha = load ptr, ptr %i.bg, align 8, !tbaa !3195
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.hb = load i32, ptr %i.gm, align 4, !tbaa !543
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !8526
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !8526
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !8526
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !8526
  %i.hc = sext i32 %i.hb to i64
  %i.hd = load ptr, ptr %i.by, align 8, !tbaa !817, !noalias !8526 ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !1049, !noalias !8526 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !1051, !noalias !8526
  %i.hh = getelementptr inbounds nuw [12 x i8], ptr %i.hg, i64 %i.hc ; 3 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !543, !noalias !8526
  %i.hj = zext i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [12 x i8], ptr %i.he, i64 %i.hj ; 2 uses
  %i.hl = load <2 x float>, ptr %i.hk, align 4, !tbaa !572, !noalias !8526
  %i.hm = fpext <2 x float> %i.hl to <2 x double>
  store <2 x double> %i.hm, ptr %6, align 16, !tbaa !595, !noalias !8526
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !572, !noalias !8526
  %i.hp = fpext float %i.ho to double
  store double %i.hp, ptr %19, align 16, !tbaa !595, !noalias !8526
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !543, !noalias !8526
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [12 x i8], ptr %i.he, i64 %i.hs ; 2 uses
  %i.hu = load <2 x float>, ptr %i.ht, align 4, !tbaa !572, !noalias !8526
  %i.hv = fpext <2 x float> %i.hu to <2 x double>
  store <2 x double> %i.hv, ptr %7, align 16, !tbaa !595, !noalias !8526
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !572, !noalias !8526
  %i.hy = fpext float %i.hx to double
  store double %i.hy, ptr %20, align 16, !tbaa !595, !noalias !8526
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !543, !noalias !8526
  %i.ib = zext i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [12 x i8], ptr %i.he, i64 %i.ib ; 2 uses
  %i.id = load <2 x float>, ptr %i.ic, align 4, !tbaa !572, !noalias !8526
  %i.ie = fpext <2 x float> %i.id to <2 x double>
  store <2 x double> %i.ie, ptr %8, align 16, !tbaa !595, !noalias !8526
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ig = load float, ptr %i.if, align 4, !tbaa !572, !noalias !8526
  %i.ih = fpext float %i.ig to double
  store double %i.ih, ptr %i.bz, align 16, !tbaa !595, !noalias !8526
  invoke void @_ZN7openvdb5v13_04math29closestPointOnTriangleToPointERKNS1_4Vec3IdEES5_S5_S5_RS3_(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.ii = zext nneg i32 %i.gs to i64              ; 4 uses
  %i.ij = getelementptr inbounds nuw [24 x i8], ptr %i.ha, i64 %i.ii ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !8526
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !8526
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !8526
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !8526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ij, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %i.ik = load ptr, ptr %i.bg, align 8, !tbaa !3195
  %i.il = getelementptr inbounds nuw [24 x i8], ptr %i.ik, i64 %i.ii ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 24 ; 2 uses
  %.sroa.9254.0.copyload256 = load double, ptr %i.bx, align 16
  %i.in = load <2 x double>, ptr %15, align 16
  %i.io = load <2 x double>, ptr %i.ij, align 8, !tbaa !595, !noalias !8527
  %i.ip = fsub <2 x double> %i.in, %i.io          ; 5 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !595, !noalias !8527
  %i.is = fsub double %.sroa.9254.0.copyload256, %i.ir ; 4 uses
  %i.it = extractelement <2 x double> %i.ip, i64 0 ; 2 uses
  store <2 x double> %i.ip, ptr %i.im, align 8
  %.sroa.9254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.il, i64 40 ; 2 uses
  store double %i.is, ptr %.sroa.9254.0..sroa_idx, align 8
  %foldExtExtBinop = fmul <2 x double> %i.ip, %i.ip
  %i.iu = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.iv = call double @llvm.fmuladd.f64(double %i.it, double %i.it, double %i.iu)
  %i.iw = call double @llvm.fmuladd.f64(double %i.is, double %i.is, double %i.iv)
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.iw) ; 2 uses
  %i.ix = call noundef double @llvm.fabs.f64(double %sqrt.i.i)
  %i.iy = fcmp ogt double %i.ix, f0x3E7AD7F29ABCAF48
  br i1 %i.iy, label %bb.bf, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198

bb.bf:                                            ; preds = %bb.be
  %i.iz = fdiv double 1.000000e+00, %sqrt.i.i     ; 2 uses
  %i.ja = fmul double %i.is, %i.iz
  %i.jb = insertelement <2 x double> poison, double %i.iz, i64 0
  %i.jc = shufflevector <2 x double> %i.jb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jd = fmul <2 x double> %i.ip, %i.jc
  store <2 x double> %i.jd, ptr %i.im, align 8, !tbaa !595
  store double %i.ja, ptr %.sroa.9254.0..sroa_idx, align 8, !tbaa !595
  br label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198

bb.bg:                                            ; preds = %bb.bd
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %.body157

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198: ; preds = %._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198_crit_edge, %bb.be, %bb.bf
  %.pre-phi = phi i64 [ %.pre391, %._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198_crit_edge ], [ %i.ii, %bb.be ], [ %i.ii, %bb.bf ]
  %i.jf = load ptr, ptr %i.bg, align 8, !tbaa !3195
  %i.jg = getelementptr inbounds nuw [24 x i8], ptr %i.jf, i64 %.pre-phi ; 5 uses
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !595, !noalias !8528
  %i.ji = fsub double %i.fr, %i.jh                ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.jk = load <2 x double>, ptr %i.jj, align 8, !tbaa !595, !noalias !8528
  %i.jl = fsub <2 x double> %i.fs, %i.jk          ; 5 uses
  %i.jm = extractelement <2 x double> %i.jl, i64 0
  %foldExtExtBinop449 = fmul <2 x double> %i.jl, %i.jl
  %i.jn = extractelement <2 x double> %foldExtExtBinop449, i64 0
  %i.jo = call double @llvm.fmuladd.f64(double %i.ji, double %i.ji, double %i.jn)
  %i.jp = extractelement <2 x double> %i.jl, i64 1 ; 3 uses
  %i.jq = call double @llvm.fmuladd.f64(double %i.jp, double %i.jp, double %i.jo)
  %sqrt.i.i197 = call noundef double @llvm.sqrt.f64(double %i.jq) ; 2 uses
  %i.jr = call noundef double @llvm.fabs.f64(double %sqrt.i.i197)
  %i.js = fcmp ogt double %i.jr, f0x3E7AD7F29ABCAF48 ; 3 uses
  %i.jt = fdiv double 1.000000e+00, %sqrt.i.i197  ; 2 uses
  %i.ju = fmul double %i.ji, %i.jt
  %i.jv = insertelement <2 x double> poison, double %i.jt, i64 0
  %i.jw = shufflevector <2 x double> %i.jv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jx = fmul <2 x double> %i.jl, %i.jw          ; 2 uses
  %i.jy = extractelement <2 x double> %i.jx, i64 1
  %.sroa.19.0 = select i1 %i.js, double %i.jy, double %i.jp
  %i.jz = extractelement <2 x double> %i.jx, i64 0
  %.sroa.11274.0 = select i1 %i.js, double %i.jz, double %i.jm
  %.sroa.0270.0 = select i1 %i.js, double %i.ju, double %i.ji
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !595
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jg, i64 32
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !595
  %i.ke = fmul double %i.kd, %.sroa.11274.0
  %i.kf = call double @llvm.fmuladd.f64(double %i.kb, double %.sroa.0270.0, double %i.ke)
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jg, i64 40
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !595
  %i.ki = call noundef double @llvm.fmuladd.f64(double %i.kh, double %.sroa.19.0, double %i.kf)
  %i.kj = fcmp ogt double %i.ki, 0.000000e+00
  br i1 %i.kj, label %bb.bi, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge390

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge390: ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198
  %.pre = load i32, ptr %i.bd, align 8, !tbaa !543
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge390, %bb.bb, %bb.ba
  %i.kk = phi i32 [ %.pre, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge390 ], [ %storemerge339351, %bb.bb ], [ %storemerge339351, %bb.ba ] ; 2 uses
  %i.kl = add nsw i32 %i.kk, 1                    ; 2 uses
  store i32 %i.kl, ptr %i.bd, align 8, !tbaa !543
  %.not.not = icmp slt i32 %i.kk, %.sroa.speculated.i189
  br i1 %.not.not, label %bb.ba, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge, !llvm.loop !8519

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge: ; preds = %bb.bh
  %i.km = load i32, ptr %i.bc, align 4, !tbaa !543 ; 2 uses
  %i.kn = add nsw i32 %i.km, 1                    ; 2 uses
  store i32 %i.kn, ptr %i.bc, align 4, !tbaa !543
  %.not = icmp slt i32 %i.km, %.sroa.speculated11.i188
  br i1 %.not, label %.lr.ph, label %._crit_edge356.split, !llvm.loop !8520

._crit_edge356.split:                             ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge
  %i.ko = load i32, ptr %14, align 8, !tbaa !543  ; 2 uses
  %i.kp = add nsw i32 %i.ko, 1                    ; 2 uses
  store i32 %i.kp, ptr %14, align 8, !tbaa !543
  %.not441 = icmp slt i32 %i.ko, %.sroa.speculated16.i187
  br i1 %.not441, label %.lr.ph355, label %.preheader.preheader, !llvm.loop !8521

bb.bi:                                            ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198
  %i.kq = load <2 x i32>, ptr %14, align 8, !tbaa !543
  %i.kr = add nsw <2 x i32> %i.kq, splat (i32 1)
  store <2 x i32> %i.kr, ptr %14, align 8, !tbaa !543
  br label %.loopexit.sink.split

.preheader:                                       ; preds = %.preheader.preheader, %bb.cd
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.cd ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.ks = getelementptr inbounds nuw [12 x i8], ptr @_ZN7openvdb5v13_04util13COORD_OFFSETSE, i64 %indvars.iv ; 3 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !543
  %i.ku = add nsw i32 %i.kt, %i.fl                ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 4
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !543
  %i.kx = add nsw i32 %i.kw, %i.fu                ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !543
  %i.la = add nsw i32 %i.kz, %i.fw                ; 3 uses
  %.sroa.2.0.insert.ext.i199 = zext i32 %i.kx to i64
  %.sroa.2.0.insert.shift.i200 = shl nuw i64 %.sroa.2.0.insert.ext.i199, 32
  %.sroa.0.0.insert.ext.i201 = zext i32 %i.ku to i64
  %.sroa.0.0.insert.insert.i202 = or disjoint i64 %.sroa.2.0.insert.shift.i200, %.sroa.0.0.insert.ext.i201
  store i64 %.sroa.0.0.insert.insert.i202, ptr %14, align 8
  store i32 %i.la, ptr %i.bd, align 8, !tbaa !570
  %i.lb = icmp slt i32 %i.ku, %.sroa.speculated16.i
  %i.lc = icmp slt i32 %i.kx, %.sroa.speculated11.i
  %or.cond437 = select i1 %i.lb, i1 true, i1 %i.lc
  br i1 %or.cond437, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread, label %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i

_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i: ; preds = %.preheader
  %i.ld = icmp sge i32 %i.la, %.sroa.speculated.i
  %i.le = icmp sge i32 %.sroa.speculated16.i187, %i.ku
  %or.cond.i.not344 = and i1 %i.ld, %i.le
  %i.lf = icmp sge i32 %.sroa.speculated11.i188, %i.kx
  %or.cond10.i.not341 = select i1 %or.cond.i.not344, i1 %i.lf, i1 false
  %i.lg = icmp sge i32 %.sroa.speculated.i189, %i.la
  %or.cond334 = select i1 %or.cond10.i.not341, i1 %i.lg, i1 false
  br i1 %or.cond334, label %bb.cd, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread

_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread: ; preds = %.preheader, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i
  %i.lh = invoke noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERf(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %14, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
          to label %bb.bj unwind label %bb.cb

bb.bj:                                            ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread
  %i.li = load float, ptr %i.h, align 4
  %i.lj = fcmp olt float %i.li, -7.500000e-01
  %or.cond144 = select i1 %i.lh, i1 %i.lj, i1 false
  br i1 %or.cond144, label %bb.bk, label %bb.cd

bb.bk:                                            ; preds = %bb.bj
  %i.lk = load <2 x i32>, ptr %14, align 8, !tbaa !543 ; 3 uses
  %i.ll = extractelement <2 x i32> %i.lk, i64 1   ; 10 uses
  %i.lm = extractelement <2 x i32> %i.lk, i64 0   ; 7 uses
  %i.ln = sitofp <2 x i32> %i.lk to <2 x double>
  store <2 x double> %i.ln, ptr %15, align 16, !tbaa !595
  %i.lo = load i32, ptr %i.bd, align 8, !tbaa !543 ; 11 uses
  %i.lp = sitofp i32 %i.lo to double
  store double %i.lp, ptr %i.bx, align 16, !tbaa !595
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.lq = and i32 %i.lm, -8
  %i.lr = load i32, ptr %i.ay, align 8, !tbaa !543
  %i.ls = icmp eq i32 %i.lq, %i.lr
  br i1 %i.ls, label %bb.bl, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i

bb.bl:                                            ; preds = %bb.bk
  %i.lt = and i32 %i.ll, -8
  %i.lu = load i32, ptr %i.ca, align 4, !tbaa !543
  %i.lv = icmp eq i32 %i.lt, %i.lu
  br i1 %i.lv, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.bl
  %i.lw = and i32 %i.lo, -8
  %i.lx = load i32, ptr %.sroa.6.0..sroa_idx.i.i147, align 8, !tbaa !543
  %i.ly = icmp eq i32 %i.lw, %i.lx
  br i1 %i.ly, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i
  %i.lz = load ptr, ptr %i.ax, align 8, !tbaa !3213 ; 2 uses
  %i.ma = shl i32 %i.lm, 6
  %i.mb = and i32 %i.ma, 448
  %i.mc = shl i32 %i.ll, 3
  %i.md = and i32 %i.mc, 56
  %i.me = or disjoint i32 %i.md, %i.mb
  %i.mf = and i32 %i.lo, 7
  %i.mg = or disjoint i32 %i.me, %i.mf
  %i.mh = zext nneg i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.mh
  %.not.i.not.i = icmp eq ptr %i.lz, null
  br i1 %.not.i.not.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i, %bb.bl, %bb.bk
  %i.mj = and i32 %i.lm, -128                     ; 3 uses
  %i.mk = load i32, ptr %.06.i.i.i.i.ptr.1.i.i.i148, align 4, !tbaa !543
  %i.ml = icmp eq i32 %i.mj, %i.mk
  br i1 %i.ml, label %bb.bm, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i

bb.bm:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i
  %i.mm = and i32 %i.ll, -128
  %i.mn = load i32, ptr %i.cb, align 8, !tbaa !543
  %i.mo = icmp eq i32 %i.mm, %i.mn
  br i1 %i.mo, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.bm
  %i.mp = and i32 %i.lo, -128
  %i.mq = load i32, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i149, align 4, !tbaa !543
  %i.mr = icmp eq i32 %i.mp, %i.mq
  br i1 %i.mr, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i
  %i.ms = load ptr, ptr %i.ce, align 8, !tbaa !1879
  br label %.invoke

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i, %bb.bm, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i
  %i.mt = and i32 %i.lm, -4096                    ; 2 uses
  %i.mu = load i32, ptr %.06.i.i.i.i.ptr.2.i.i.i150, align 8, !tbaa !543
  %i.mv = icmp eq i32 %i.mt, %i.mu
  br i1 %i.mv, label %bb.bn, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i

bb.bn:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i
  %i.mw = and i32 %i.ll, -4096
  %i.mx = load i32, ptr %i.cc, align 4, !tbaa !543
  %i.my = icmp eq i32 %i.mw, %i.mx
  br i1 %i.my, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.bn
  %i.mz = and i32 %i.lo, -4096
  %i.na = load i32, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i151, align 8, !tbaa !543
  %i.nb = icmp eq i32 %i.mz, %i.na
  br i1 %i.nb, label %bb.bo, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i

bb.bo:                                            ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i
  %i.nc = load ptr, ptr %i.cd, align 8, !tbaa !1857 ; 2 uses
  %i.nd = shl i32 %i.lm, 3
  %i.ne = and i32 %i.nd, 31744
  %i.nf = lshr i32 %i.ll, 2
  %i.ng = and i32 %i.nf, 992
  %i.nh = or disjoint i32 %i.ng, %i.ne            ; 2 uses
  %i.ni = lshr i32 %i.lo, 7
  %i.nj = and i32 %i.ni, 31
  %i.nk = or disjoint i32 %i.nj, %i.nh            ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nc, i64 262144
  %i.nm = lshr i32 %i.nh, 6
  %i.nn = zext nneg i32 %i.nm to i64
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %i.nn
  %i.np = load i64, ptr %i.no, align 8, !tbaa !791
  %i.nq = and i32 %i.nk, 63
  %i.nr = zext nneg i32 %i.nq to i64
  %i.ns = shl nuw i64 1, %i.nr
  %i.nt = and i64 %i.np, %i.ns
  %.not.i.i.i = icmp eq i64 %i.nt, 0
  %i.nu = zext nneg i32 %i.nk to i64
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.nc, i64 %i.nu ; 3 uses
  br i1 %.not.i.i.i, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !570
  %i.nx = and i32 %i.ll, -128
  %i.ny = and i32 %i.lo, -128
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.nx to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.mj to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i.i, ptr %.06.i.i.i.i.ptr.1.i.i.i148, align 4
  store i32 %i.ny, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i149, align 4, !tbaa !570
  store ptr %i.nw, ptr %i.ce, align 8, !tbaa !1879
  %i.nz = load ptr, ptr %i.nv, align 8, !tbaa !570
  br label %.invoke

_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i, %bb.bn, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i
  %i.oa = load ptr, ptr %i.az, align 8, !tbaa !1827 ; 6 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 56
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !543
  %i.od = sub nsw i32 %i.ll, %i.oc
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oa, i64 60
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !543
  %i.og = sub nsw i32 %i.lo, %i.of
  %i.oh = and i32 %i.od, -4096                    ; 4 uses
  %i.oi = and i32 %i.og, -4096                    ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !722 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oa, i64 8 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.ok, null
  br i1 %.not12.i.i.i.i.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i
  %i.om = getelementptr inbounds nuw i8, ptr %i.oa, i64 52
  %i.on = load i32, ptr %i.om, align 4, !tbaa !543
  %i.oo = sub nsw i32 %i.lm, %i.on
  %i.op = and i32 %i.oo, -4096                    ; 4 uses
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.014.i.i.i.i.i = phi ptr [ %i.ok, %.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i ] ; 7 uses
  %.0813.i.i.i.i.i = phi ptr [ %i.ol, %.lr.ph.i.i.i.i.i ], [ %.19.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i ]
  %i.oq = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 32
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !543 ; 2 uses
  %i.os = icmp slt i32 %i.or, %i.op
  br i1 %i.os, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ot = icmp sgt i32 %i.or, %i.op
  br i1 %i.ot, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ou = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 36
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !543 ; 2 uses
  %i.ow = icmp slt i32 %i.ov, %i.oh
  br i1 %i.ow, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ox = icmp sgt i32 %i.ov, %i.oh
  br i1 %i.ox, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i: ; preds = %bb.bt
  %i.oy = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 40
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !543
  %i.pa = icmp slt i32 %i.oz, %i.oi
  br i1 %i.pa, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.bs, %bb.bq
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.bt, %bb.br
  %.sink.i.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ 16, %bb.bt ], [ 16, %bb.br ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ]
  %.19.i.i.i.i.i = phi ptr [ %.0813.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ %.014.i.i.i.i.i, %bb.bt ], [ %.014.i.i.i.i.i, %bb.br ], [ %.014.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ] ; 7 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 %.sink.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %i.pb, align 8, !tbaa !1171 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, label %bb.bq, !llvm.loop !308

_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i
  %i.pc = icmp eq ptr %.19.i.i.i.i.i, %i.ol
  br i1 %i.pc, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.bu

bb.bu:                                            ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i
  %i.pd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !543 ; 2 uses
  %i.pf = icmp slt i32 %i.op, %i.pe
  br i1 %i.pf, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.pg = icmp sgt i32 %i.op, %i.pe
  br i1 %i.pg, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ph = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 36
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !543 ; 2 uses
  %i.pj = icmp slt i32 %i.oh, %i.pi
  br i1 %i.pj, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.pk = icmp sgt i32 %i.oh, %i.pi
  br i1 %i.pk, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.bx
  %i.pl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !543
  %i.pn = icmp slt i32 %i.oi, %i.pm
  br i1 %i.pn, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.bw, %bb.bu, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i
  %i.po = getelementptr inbounds nuw i8, ptr %i.oa, i64 48
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.bx, %bb.bv
  %i.pp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 48 ; 2 uses
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !1819 ; 2 uses
  %.not.i221 = icmp eq ptr %i.pq, null
  br i1 %.not.i221, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.pr = and i32 %i.ll, -4096
  %i.ps = and i32 %i.lo, -4096
  %.sroa.2.0.insert.ext.i.i222 = zext i32 %i.pr to i64
  %.sroa.2.0.insert.shift.i.i223 = shl nuw i64 %.sroa.2.0.insert.ext.i.i222, 32
  %.sroa.0.0.insert.ext.i.i224 = zext i32 %i.mt to i64
  %.sroa.0.0.insert.insert.i.i225 = or disjoint i64 %.sroa.2.0.insert.shift.i.i223, %.sroa.0.0.insert.ext.i.i224
  store i64 %.sroa.0.0.insert.insert.i.i225, ptr %.06.i.i.i.i.ptr.2.i.i.i150, align 8
  store i32 %i.ps, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i151, align 8, !tbaa !570
  store ptr %i.pq, ptr %i.cd, align 8, !tbaa !1857
  %i.pt = load ptr, ptr %i.pp, align 8, !tbaa !1821 ; 2 uses
  %i.pu = shl i32 %i.lm, 3
  %i.pv = and i32 %i.pu, 31744
  %i.pw = lshr i32 %i.ll, 2
  %i.px = and i32 %i.pw, 992
  %i.py = or disjoint i32 %i.px, %i.pv            ; 2 uses
  %i.pz = lshr i32 %i.lo, 7
  %i.qa = and i32 %i.pz, 31
  %i.qb = or disjoint i32 %i.qa, %i.py            ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pt, i64 262144
  %i.qd = lshr i32 %i.py, 6
  %i.qe = zext nneg i32 %i.qd to i64
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %i.qe
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !791
  %i.qh = and i32 %i.qb, 63
  %i.qi = zext nneg i32 %i.qh to i64
  %i.qj = shl nuw i64 1, %i.qi
  %i.qk = and i64 %i.qg, %i.qj
  %.not.i.i226 = icmp eq i64 %i.qk, 0
  %i.ql = zext nneg i32 %i.qb to i64
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %i.ql ; 3 uses
  br i1 %.not.i.i226, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !570
  %i.qo = and i32 %i.ll, -128
  %i.qp = and i32 %i.lo, -128
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.qo to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.mj to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %.06.i.i.i.i.ptr.1.i.i.i148, align 4
  store i32 %i.qp, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i149, align 4, !tbaa !570
  store ptr %i.qn, ptr %i.ce, align 8, !tbaa !1879
  %i.qq = load ptr, ptr %i.qm, align 8, !tbaa !570
  br label %.invoke

.invoke:                                          ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i, %bb.bp, %bb.bz
  %i.qr = phi ptr [ %i.qq, %bb.bz ], [ %i.nz, %bb.bp ], [ %i.ms, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i ]
  %i.qs = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIiLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKiRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.qr, ptr noundef nonnull align 4 dereferenceable(12) %14, ptr noundef nonnull align 8 dereferenceable(96) %13)
          to label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit unwind label %bb.cc

bb.ca:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.qt = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 56
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit: ; preds = %.invoke, %bb.bo, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i, %bb.ca, %bb.by, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i
  %.1.i.i = phi ptr [ %i.mi, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i ], [ %i.qm, %bb.by ], [ %i.qs, %.invoke ], [ %i.nv, %bb.bo ], [ %i.po, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i ], [ %i.qt, %bb.ca ]
  %i.qu = load i32, ptr %.1.i.i, align 4, !tbaa !543
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !8529
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !8529
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !8529
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !8529
  %i.qv = sext i32 %i.qu to i64
  %i.qw = load ptr, ptr %i.by, align 8, !tbaa !817, !noalias !8529 ; 2 uses
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !1049, !noalias !8529 ; 3 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !1051, !noalias !8529
  %i.ra = getelementptr inbounds nuw [12 x i8], ptr %i.qz, i64 %i.qv ; 3 uses
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !543, !noalias !8529
  %i.rc = zext i32 %i.rb to i64
  %i.rd = getelementptr inbounds nuw [12 x i8], ptr %i.qx, i64 %i.rc ; 2 uses
  %i.re = load <2 x float>, ptr %i.rd, align 4, !tbaa !572, !noalias !8529
  %i.rf = fpext <2 x float> %i.re to <2 x double>
  store <2 x double> %i.rf, ptr %2, align 16, !tbaa !595, !noalias !8529
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !572, !noalias !8529
  %i.ri = fpext float %i.rh to double
  store double %i.ri, ptr %i.cf, align 16, !tbaa !595, !noalias !8529
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ra, i64 4
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !543, !noalias !8529
  %i.rl = zext i32 %i.rk to i64
  %i.rm = getelementptr inbounds nuw [12 x i8], ptr %i.qx, i64 %i.rl ; 2 uses
  %i.rn = load <2 x float>, ptr %i.rm, align 4, !tbaa !572, !noalias !8529
  %i.ro = fpext <2 x float> %i.rn to <2 x double>
  store <2 x double> %i.ro, ptr %3, align 16, !tbaa !595, !noalias !8529
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  %i.rq = load float, ptr %i.rp, align 4, !tbaa !572, !noalias !8529
  %i.rr = fpext float %i.rq to double
  store double %i.rr, ptr %i.cg, align 16, !tbaa !595, !noalias !8529
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !543, !noalias !8529
  %i.ru = zext i32 %i.rt to i64
  %i.rv = getelementptr inbounds nuw [12 x i8], ptr %i.qx, i64 %i.ru ; 2 uses
  %i.rw = load <2 x float>, ptr %i.rv, align 4, !tbaa !572, !noalias !8529
  %i.rx = fpext <2 x float> %i.rw to <2 x double>
  store <2 x double> %i.rx, ptr %4, align 16, !tbaa !595, !noalias !8529
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !572, !noalias !8529
  %i.sa = fpext float %i.rz to double
  store double %i.sa, ptr %i.ch, align 16, !tbaa !595, !noalias !8529
  invoke void @_ZN7openvdb5v13_04math29closestPointOnTriangleToPointERKNS1_4Vec3IdEES5_S5_S5_RS3_(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit213 unwind label %bb.cc

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit213: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !8529
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !8529
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !8529
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !8529
  %21 = load <2 x double>, ptr %i.ci, align 8
  %22 = load <2 x double>, ptr %18, align 16
  %.sroa.8.0.copyload = load double, ptr %i.cj, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  %i.sb = load <2 x double>, ptr %15, align 16    ; 2 uses
  %.sroa.9.0.copyload232 = load double, ptr %i.bx, align 16
  %i.sc = shufflevector <2 x double> %i.sb, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.sd = insertelement <2 x double> %i.sc, double %i.fr, i64 0
  %i.se = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sf = fsub <2 x double> %i.sd, %i.se          ; 4 uses
  %i.sg = shufflevector <2 x double> %i.fs, <2 x double> %i.sb, <2 x i32> <i32 0, i32 3>
  %23 = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sh = fsub <2 x double> %i.sg, %23            ; 4 uses
  %24 = insertelement <2 x double> %i.gd, double %.sroa.9.0.copyload232, i64 1
  %i.si = insertelement <2 x double> poison, double %.sroa.8.0.copyload, i64 0
  %25 = shufflevector <2 x double> %i.si, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sj = fsub <2 x double> %24, %25              ; 4 uses
  %i.sk = fmul <2 x double> %i.sh, %i.sh
  %i.sl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sf, <2 x double> %i.sf, <2 x double> %i.sk)
  %i.sm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sj, <2 x double> %i.sj, <2 x double> %i.sl)
  %i.sn = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.sm) ; 2 uses
  %i.so = fdiv <2 x double> splat (double 1.000000e+00), %i.sn ; 3 uses
  %i.sp = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.sn)
  %i.sq = fcmp ogt <2 x double> %i.sp, splat (double f0x3E7AD7F29ABCAF48) ; 3 uses
  %i.sr = shufflevector <2 x double> %i.sj, <2 x double> %i.sf, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ss = shufflevector <2 x double> %i.so, <2 x double> poison, <2 x i32> zeroinitializer
  %i.st = fmul <2 x double> %i.sr, %i.ss
  %i.su = shufflevector <2 x i1> %i.sq, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.sv = select <2 x i1> %i.su, <2 x double> %i.st, <2 x double> %i.sr ; 2 uses
  %i.sw = fmul <2 x double> %i.sh, %i.so
  %i.sx = select <2 x i1> %i.sq, <2 x double> %i.sw, <2 x double> %i.sh ; 2 uses
  %i.sy = shufflevector <2 x double> %i.sj, <2 x double> %i.sf, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.sz = shufflevector <2 x double> %i.so, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ta = fmul <2 x double> %i.sy, %i.sz
  %i.tb = shufflevector <2 x i1> %i.sq, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.tc = select <2 x i1> %i.tb, <2 x double> %i.ta, <2 x double> %i.sy ; 2 uses
  %shift = shufflevector <2 x double> %i.sx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop451 = fmul <2 x double> %i.sx, %shift
  %i.td = extractelement <2 x double> %foldExtExtBinop451, i64 0
  %i.te = extractelement <2 x double> %i.sv, i64 1
  %i.tf = extractelement <2 x double> %i.tc, i64 1
  %i.tg = call double @llvm.fmuladd.f64(double %i.tf, double %i.te, double %i.td)
  %i.th = extractelement <2 x double> %i.sv, i64 0
  %i.ti = extractelement <2 x double> %i.tc, i64 0
  %i.tj = call noundef double @llvm.fmuladd.f64(double %i.ti, double %i.th, double %i.tg)
  %i.tk = fcmp ogt double %i.tj, 0.000000e+00
  br i1 %i.tk, label %.loopexit.sink.split, label %bb.cd

bb.cb:                                            ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread
  %i.tl = landingpad { ptr, i32 }
          cleanup
  br label %.body157

bb.cc:                                            ; preds = %.invoke, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit
  %i.tm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %.body157

bb.cd:                                            ; preds = %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i, %bb.bj, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit213
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 26
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !8524

.loopexit.sink.split:                             ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit213, %bb.bi
  %i.tn = load float, ptr %i.fa, align 4, !tbaa !572
  %i.to = fneg float %i.tn
  store float %i.to, ptr %i.fa, align 4, !tbaa !572
  br label %.loopexit

.loopexit:                                        ; preds = %bb.cd, %.loopexit.sink.split, %.lr.ph375
  %i.tp = add i32 %.sroa.5.0373, 1                ; 4 uses
  %i.tq = lshr i32 %i.tp, 6                       ; 3 uses
  %i.tr = icmp ugt i32 %i.tp, 511
  br i1 %i.tr, label %._crit_edge376, label %bb.ce

bb.ce:                                            ; preds = %.loopexit
  %i.ts = and i32 %i.tp, 63
  %i.tt = zext nneg i32 %i.tq to i64              ; 8 uses
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.tt
  %i.tv = load i64, ptr %i.tu, align 8, !tbaa !791 ; 2 uses
  %i.tw = zext nneg i32 %i.ts to i64              ; 2 uses
  %i.tx = shl nuw i64 1, %i.tw
  %i.ty = and i64 %i.tv, %i.tx
  %.not.i.i.i.i = icmp eq i64 %i.ty, 0
  br i1 %.not.i.i.i.i, label %bb.cf, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

bb.cf:                                            ; preds = %bb.ce
  %i.tz = shl nsw i64 -1, %i.tw
  %i.ua = and i64 %i.tv, %i.tz                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.ua, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i214.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i214.preheader:                      ; preds = %bb.cf
  %exitcond.not.i.i.i.i445 = icmp eq i32 %i.tq, 7
  br i1 %exitcond.not.i.i.i.i445, label %._crit_edge376, label %.lr.ph447

.lr.ph.i.i.i.i214:                                ; preds = %.lr.ph447
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge376, label %.lr.ph447.1

.lr.ph447.1:                                      ; preds = %.lr.ph.i.i.i.i214
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.tt, 2 ; 3 uses
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv.next.i.i.i.i.1
  %i.uc = load i64, ptr %i.ub, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.uc, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i214.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i214.1:                              ; preds = %.lr.ph447.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge376, label %.lr.ph447.2

.lr.ph447.2:                                      ; preds = %.lr.ph.i.i.i.i214.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.tt, 3 ; 3 uses
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv.next.i.i.i.i.2
  %i.ue = load i64, ptr %i.ud, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.ue, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i214.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i214.2:                              ; preds = %.lr.ph447.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge376, label %.lr.ph447.3

.lr.ph447.3:                                      ; preds = %.lr.ph.i.i.i.i214.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.tt, 4 ; 3 uses
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv.next.i.i.i.i.3
  %i.ug = load i64, ptr %i.uf, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.ug, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i214.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i214.3:                              ; preds = %.lr.ph447.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge376, label %.lr.ph447.4

.lr.ph447.4:                                      ; preds = %.lr.ph.i.i.i.i214.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.tt, 5 ; 3 uses
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv.next.i.i.i.i.4
  %i.ui = load i64, ptr %i.uh, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.ui, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i214.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i214.4:                              ; preds = %.lr.ph447.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge376, label %.lr.ph447.5

.lr.ph447.5:                                      ; preds = %.lr.ph.i.i.i.i214.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.tt, 6 ; 3 uses
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv.next.i.i.i.i.5
  %i.uk = load i64, ptr %i.uj, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.uk, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i214.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i214.5:                              ; preds = %.lr.ph447.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge376, label %.lr.ph447.6

.lr.ph447.6:                                      ; preds = %.lr.ph.i.i.i.i214.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.tt, 7 ; 2 uses
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv.next.i.i.i.i.6
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.um, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge376, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph447:                                        ; preds = %.lr.ph.i.i.i.i214.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.tt, 1 ; 3 uses
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv.next.i.i.i.i
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.uo, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i214, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph447.6, %.lr.ph447.5, %.lr.ph447.4, %.lr.ph447.3, %.lr.ph447.2, %.lr.ph447.1, %.lr.ph447
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph447 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph447.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph447.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph447.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph447.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph447.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph447.6 ]
  %.lcssa = phi i64 [ %i.uo, %.lr.ph447 ], [ %i.uc, %.lr.ph447.1 ], [ %i.ue, %.lr.ph447.2 ], [ %i.ug, %.lr.ph447.3 ], [ %i.ui, %.lr.ph447.4 ], [ %i.uk, %.lr.ph447.5 ], [ %i.um, %.lr.ph447.6 ]
  %i.up = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.cf
  %.016.lcssa.i.i.i.i = phi i32 [ %i.tq, %bb.cf ], [ %i.up, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.ua, %bb.cf ], [ %.lcssa, %.critedge.loopexit.i.i.i.i ]
  %i.uq = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.ur = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.us = trunc nuw nsw i64 %i.ur to i32
  %i.ut = or disjoint i32 %i.uq, %i.us
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit: ; preds = %bb.ce, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.ut, %.critedge.i.i.i.i ], [ %i.tp, %bb.ce ] ; 2 uses
  %.not337 = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not337, label %._crit_edge376, label %.lr.ph375

._crit_edge376:                                   ; preds = %.loopexit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit, %.lr.ph.i.i.i.i214.preheader, %.lr.ph447.6, %.lr.ph.i.i.i.i214, %.lr.ph.i.i.i.i214.1, %.lr.ph.i.i.i.i214.2, %.lr.ph.i.i.i.i214.3, %.lr.ph.i.i.i.i214.4, %.lr.ph.i.i.i.i214.5, %bb.au
  %i.uu = add nuw i64 %.0118377, 1                ; 2 uses
  %exitcond389.not = icmp eq i64 %i.uu, %i.bt
  br i1 %exitcond389.not, label %._crit_edge379, label %bb.ag, !llvm.loop !8525

.body157:                                         ; preds = %bb.aw, %bb.bg, %bb.cc, %bb.cb, %bb.ay, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i, %bb.av, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i162, %bb.ax, %bb.y, %bb.ab, %bb.x
  %.pn133.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.x ], [ %i.bl, %bb.y ], [ %i.bq, %bb.ab ], [ %i.eq, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i162 ], [ %i.je, %bb.bg ], [ %i.ff, %bb.aw ], [ %i.dr, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ], [ %i.fg, %bb.ax ], [ %i.fh, %bb.ay ], [ %i.fe, %bb.av ], [ %i.tm, %bb.cc ], [ %i.tl, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %13, align 8, !tbaa !545
  %i.uv = load ptr, ptr %i.ah, align 8, !tbaa !3207 ; 2 uses
  %.not.i215 = icmp eq ptr %i.uv, null
  br i1 %.not.i215, label %.body, label %bb.cg

bb.cg:                                            ; preds = %.body157
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %13, ptr %i.b, align 8, !tbaa !3208
  %i.ux = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.uw, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
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
  %18 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 7 uses
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
  %19 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %20 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 28
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 52
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 72 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %18, i64 16
  br label %bb.ag

._crit_edge377:                                   ; preds = %._crit_edge374, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EE5resetIPbvEEvT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %13, align 8, !tbaa !545
  %i.ck = load ptr, ptr %i.ah, align 8, !tbaa !3207 ; 2 uses
  %.not.i = icmp eq ptr %i.ck, null
  br i1 %.not.i, label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge377
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %13, ptr %i.d, align 8, !tbaa !3208
  %i.cm = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.cl, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i unwind label %bb.ad, !inline_history !3214 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit

bb.ad:                                            ; preds = %bb.ac
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #31, !inline_history !3214
  unreachable

_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit: ; preds = %._crit_edge377, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %12, align 8, !tbaa !545
  %i.cp = load ptr, ptr %i.k, align 8, !tbaa !4534 ; 2 uses
  %.not.i153 = icmp eq ptr %i.cp, null
  br i1 %.not.i153, label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %12, ptr %i.c, align 8, !tbaa !4535
  %i.cr = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.cq, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i unwind label %bb.af, !inline_history !4541 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit

bb.af:                                            ; preds = %bb.ae
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  call void @__clang_call_terminate(ptr %i.ct) #31, !inline_history !4541
  unreachable

_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit: ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EED2Ev.exit, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  ret void

bb.ag:                                            ; preds = %.lr.ph376, %._crit_edge374
  %.0118375 = phi i64 [ %i.bs, %.lr.ph376 ], [ %i.uu, %._crit_edge374 ] ; 2 uses
  %i.cu = load ptr, ptr %0, align 8, !tbaa !970
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.0118375
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !4024 ; 10 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load atomic i32, ptr %i.cx seq_cst, align 4
  %.not.i.i154 = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i154, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.cw)
          to label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i unwind label %bb.av

_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i: ; preds = %bb.ah, %bb.ag
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !570 ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.ai, label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit

bb.ai:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 12 ; 4 uses
  %i.dc = atomicrmw xchg ptr %i.db, i8 1 seq_cst, align 1
  %i.dd = trunc i8 %i.dc to i1
  br i1 %i.dd, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ai, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i
  %.sroa.0.02.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i ], [ 1, %bb.ai ] ; 8 uses
  %i.de = icmp slt i32 %.sroa.0.02.i.i.i.i, 17
  br i1 %i.de, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i
  %i.df = icmp sgt i32 %.sroa.0.02.i.i.i.i, 0
  br i1 %i.df, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.aj
  %xtraiter = and i32 %.sroa.0.02.i.i.i.i, 7      ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.01.i.i.i.i.i.i.prol = phi i32 [ %i.dg, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.0.02.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.dg = add nsw i32 %.01.i.i.i.i.i.i.prol, -1   ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !11181

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.01.i.i.i.i.i.i.unr = phi i32 [ %.sroa.0.02.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dg, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.dh = icmp ult i32 %.sroa.0.02.i.i.i.i, 8
  br i1 %i.dh, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.01.i.i.i.i.i.i = phi i32 [ %i.di, %.lr.ph.i.i.i.i.i.i ], [ %.01.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.di = add nsw i32 %.01.i.i.i.i.i.i, -8
  call void @llvm.x86.sse2.pause()
  %i.dj = icmp sgt i32 %.01.i.i.i.i.i.i, 8
  br i1 %i.dj, label %.lr.ph.i.i.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i, !llvm.loop !38

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.aj
  %i.dk = shl i32 %.sroa.0.02.i.i.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i
  %i.dl = call noundef i32 @sched_yield() #23     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i: ; preds = %bb.ak, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i32 [ %i.dk, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i ], [ %.sroa.0.02.i.i.i.i, %bb.ak ]
  %i.dm = atomicrmw xchg ptr %i.db, i8 1 seq_cst, align 1
  %i.dn = trunc i8 %i.dm to i1
  br i1 %i.dn, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i, !llvm.loop !47

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i, %bb.ai
  %i.do = load ptr, ptr %i.cw, align 8, !tbaa !570 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.al, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i

bb.al:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i
  %i.dq = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #30
          to label %bb.am unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ; 2 uses

bb.am:                                            ; preds = %bb.al
  store ptr %i.dq, ptr %i.cw, align 8, !tbaa !570
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i: ; preds = %bb.al
  %i.dr = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.db release, align 1
  br label %.body155

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i: ; preds = %bb.am, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i
  %i.ds = phi ptr [ %i.dq, %bb.am ], [ %i.do, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i ]
  store atomic i8 0, ptr %i.db release, align 4
  br label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit

_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit: ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i
  %i.dt = phi ptr [ %i.ds, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i ], [ %i.cz, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.cw, i64 80 ; 3 uses
  %i.dv = invoke noundef ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstNodeIS7_EEPKT_RKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %13, ptr noundef nonnull align 4 dereferenceable(12) %i.du)
          to label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstLeafERKNS0_4math5CoordE.exit unwind label %bb.aw ; 6 uses

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstLeafERKNS0_4math5CoordE.exit: ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load atomic i32, ptr %i.dw seq_cst, align 4
  %.not.i.i158 = icmp eq i32 %i.dx, 0
  br i1 %.not.i.i158, label %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i, label %bb.an

bb.an:                                            ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstLeafERKNS0_4math5CoordE.exit
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.dv)
          to label %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i unwind label %bb.ax

_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i: ; preds = %bb.an, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE14probeConstLeafERKNS0_4math5CoordE.exit
  %i.dy = load ptr, ptr %i.dv, align 8, !tbaa !570 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 12 ; 4 uses
  %i.eb = atomicrmw xchg ptr %i.ea, i8 1 seq_cst, align 1
  %i.ec = trunc i8 %i.eb to i1
  br i1 %i.ec, label %.lr.ph.i.i.i.i161, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i159

.lr.ph.i.i.i.i161:                                ; preds = %bb.ao, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i163
  %.sroa.0.02.i.i.i.i162 = phi i32 [ %.sroa.0.1.i.i.i.i164, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i163 ], [ 1, %bb.ao ] ; 8 uses
  %i.ed = icmp slt i32 %.sroa.0.02.i.i.i.i162, 17
  br i1 %i.ed, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i161
  %i.ee = icmp sgt i32 %.sroa.0.02.i.i.i.i162, 0
  br i1 %i.ee, label %.lr.ph.i.i.i.i.i.i166.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i165

.lr.ph.i.i.i.i.i.i166.preheader:                  ; preds = %bb.ap
end_hunk_2
begin_hunk_3_@_ZNK7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS1_26QuadAndTriangleDataAdapterINS0_4math4Vec3IfEENSG_IjEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i163

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i161
  %i.ek = call noundef i32 @sched_yield() #23     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i163

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i163: ; preds = %bb.aq, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i165
  %.sroa.0.1.i.i.i.i164 = phi i32 [ %i.ej, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i165 ], [ %.sroa.0.02.i.i.i.i162, %bb.aq ]
  %i.el = atomicrmw xchg ptr %i.ea, i8 1 seq_cst, align 1
  %i.em = trunc i8 %i.el to i1
  br i1 %i.em, label %.lr.ph.i.i.i.i161, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i159, !llvm.loop !47

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i159: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i163, %bb.ao
  %i.en = load ptr, ptr %i.dv, align 8, !tbaa !570 ; 2 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.ar, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i

bb.ar:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i159
  %i.ep = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #30
          to label %bb.as unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i160 ; 2 uses

bb.as:                                            ; preds = %bb.ar
  store ptr %i.ep, ptr %i.dv, align 8, !tbaa !570
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i160: ; preds = %bb.ar
  %i.eq = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.ea release, align 1
  br label %.body155

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i: ; preds = %bb.as, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i159
  %i.er = phi ptr [ %i.ep, %bb.as ], [ %i.en, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i159 ]
  store atomic i8 0, ptr %i.ea release, align 4
  br label %bb.at

bb.at:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i
  %i.es = phi ptr [ %i.er, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i ], [ %i.dy, %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i ]
  %.sroa.0289.0.copyload = load i32, ptr %i.du, align 8 ; 2 uses
  %.sroa.7291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 84 ; 2 uses
  %.sroa.7291.0.copyload = load i32, ptr %.sroa.7291.0..sroa_idx, align 4 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 88
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !570 ; 2 uses
  %i.et = add nsw i32 %.sroa.0289.0.copyload, 7
  %i.eu = add i32 %.sroa.7291.0.copyload, 7
  %i.ev = add nsw i32 %.sroa.10.0.copyload, 7
  %i.ew = load ptr, ptr %i.bm, align 8, !tbaa !1443
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.ew, i8 0, i64 512, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  invoke void @_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<double, 3>::ValueIter") align 8 %16, ptr noundef nonnull align 8 dereferenceable(96) %i.cw)
          to label %bb.au unwind label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.ex = load i32, ptr %i.bv, align 8, !tbaa !1228 ; 2 uses
  %i.ey = load ptr, ptr %i.bw, align 8, !tbaa !1229 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %.not335370 = icmp eq i32 %i.ex, 512
  br i1 %.not335370, label %._crit_edge374, label %.lr.ph373

.lr.ph373:                                        ; preds = %bb.au, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit
  %.sroa.5.0371 = phi i32 [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit ], [ %i.ex, %bb.au ] ; 5 uses
  %i.ez = zext i32 %.sroa.5.0371 to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.ez ; 3 uses
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !595 ; 2 uses
  %i.fc = fcmp olt double %i.fb, 0.000000e+00
  %i.fd = fcmp ogt double %i.fb, 7.500000e-01
  %or.cond142 = or i1 %i.fc, %i.fd
  br i1 %or.cond142, label %.loopexit, label %bb.az

bb.av:                                            ; preds = %bb.ah
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.body155

bb.aw:                                            ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.body155

bb.ax:                                            ; preds = %bb.an
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %.body155

bb.ay:                                            ; preds = %bb.at
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %.body155

bb.az:                                            ; preds = %.lr.ph373
  %i.fi = lshr i32 %.sroa.5.0371, 6
  %i.fj = lshr i32 %.sroa.5.0371, 3
  %i.fk = load i32, ptr %i.du, align 8, !tbaa !543
  %i.fl = add nsw i32 %i.fk, %i.fi                ; 4 uses
  %i.fm = insertelement <2 x i32> poison, i32 %i.fj, i64 0
  %i.fn = insertelement <2 x i32> %i.fm, i32 %.sroa.5.0371, i64 1
  %i.fo = and <2 x i32> %i.fn, splat (i32 7)
  %i.fp = load <2 x i32>, ptr %.sroa.7291.0..sroa_idx, align 4, !tbaa !543
  %i.fq = add <2 x i32> %i.fp, %i.fo              ; 3 uses
  %i.fr = sitofp i32 %i.fl to double              ; 2 uses
  %i.fs = sitofp <2 x i32> %i.fq to <2 x double>  ; 3 uses
  %i.ft = add nsw i32 %i.fl, -1
  %i.fu = extractelement <2 x i32> %i.fq, i64 0   ; 3 uses
  %i.fv = add nsw i32 %i.fu, -1
  %i.fw = extractelement <2 x i32> %i.fq, i64 1   ; 3 uses
  %i.fx = add nsw i32 %i.fw, -1
  %.sroa.speculated16.i = call i32 @llvm.smax.i32(i32 %i.ft, i32 %.sroa.0289.0.copyload) ; 4 uses
  %.sroa.speculated11.i = call i32 @llvm.smax.i32(i32 %i.fv, i32 %.sroa.7291.0.copyload) ; 4 uses
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.fx, i32 %.sroa.10.0.copyload) ; 4 uses
  %i.fy = add nsw i32 %i.fl, 1
  %i.fz = add i32 %i.fu, 1
  %i.ga = add nsw i32 %i.fw, 1
  %.sroa.speculated16.i185 = call i32 @llvm.smin.i32(i32 %i.et, i32 %i.fy) ; 3 uses
  %.sroa.speculated11.i186 = call i32 @llvm.smin.i32(i32 %i.eu, i32 %i.fz) ; 3 uses
  %.sroa.speculated.i187 = call i32 @llvm.smin.i32(i32 %i.ev, i32 %i.ga) ; 3 uses
  store i32 %.sroa.speculated16.i, ptr %14, align 8, !tbaa !543
  %i.gb = icmp sgt i32 %.sroa.speculated16.i, %.sroa.speculated16.i185
  %i.gc = icmp sgt i32 %.sroa.speculated11.i, %.sroa.speculated11.i186
  %or.cond437 = select i1 %i.gb, i1 true, i1 %i.gc
  %.not348 = icmp sgt i32 %.sroa.speculated.i, %.sroa.speculated.i187
  %or.cond438 = select i1 %or.cond437, i1 true, i1 %.not348
  br i1 %or.cond438, label %.preheader.preheader, label %.lr.ph353

.preheader.preheader:                             ; preds = %._crit_edge354.split, %bb.az
  %i.gd = shufflevector <2 x double> %i.fs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  br label %.preheader

.lr.ph353:                                        ; preds = %bb.az, %._crit_edge354.split
  %storemerge356 = phi i32 [ %i.kp, %._crit_edge354.split ], [ %.sroa.speculated16.i, %bb.az ]
  %i.ge = shl i32 %storemerge356, 6
  %i.gf = and i32 %i.ge, 448
  store i32 %.sroa.speculated11.i, ptr %i.bc, align 4, !tbaa !543
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph353, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196._crit_edge
  %storemerge336351 = phi i32 [ %.sroa.speculated11.i, %.lr.ph353 ], [ %i.kn, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196._crit_edge ]
  %i.gg = shl i32 %storemerge336351, 3
  %i.gh = and i32 %i.gg, 56
  %i.gi = or disjoint i32 %i.gh, %i.gf
  store i32 %.sroa.speculated.i, ptr %i.bd, align 8, !tbaa !543
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph, %bb.bh
  %storemerge337349 = phi i32 [ %.sroa.speculated.i, %.lr.ph ], [ %i.kl, %bb.bh ] ; 4 uses
  %i.gj = and i32 %storemerge337349, 7
  %i.gk = or disjoint i32 %i.gi, %i.gj            ; 2 uses
  %i.gl = zext nneg i32 %i.gk to i64              ; 3 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.gl ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !543
  %i.go = icmp eq i32 %i.gn, -1
  br i1 %i.go, label %bb.bh, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.gl
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !595
  %i.gr = fcmp olt double %i.gq, -7.500000e-01
  br i1 %i.gr, label %bb.bc, label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  %i.gs = shl nuw nsw i32 %i.gk, 1                ; 2 uses
  %i.gt = load ptr, ptr %i.bm, align 8, !tbaa !1443
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gl ; 2 uses
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !673, !range !804, !noundef !805
  %i.gw = trunc nuw i8 %i.gv to i1
  br i1 %i.gw, label %._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196_crit_edge, label %bb.bd

._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196_crit_edge: ; preds = %bb.bc
  %.pre389 = zext nneg i32 %i.gs to i64
  br label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196

bb.bd:                                            ; preds = %bb.bc
  store i8 1, ptr %i.gu, align 1, !tbaa !673
  %i.gx = load <2 x i32>, ptr %14, align 8, !tbaa !543
  %i.gy = sitofp <2 x i32> %i.gx to <2 x double>
  store <2 x double> %i.gy, ptr %15, align 16, !tbaa !595
  %i.gz = sitofp i32 %storemerge337349 to double
  store double %i.gz, ptr %i.bx, align 16, !tbaa !595
  %i.ha = load ptr, ptr %i.bg, align 8, !tbaa !3195
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.hb = load i32, ptr %i.gm, align 4, !tbaa !543
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !11196
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !11196
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !11196
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !11196
  %i.hc = sext i32 %i.hb to i64
  %i.hd = load ptr, ptr %i.by, align 8, !tbaa !973, !noalias !11196 ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !1049, !noalias !11196 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !1051, !noalias !11196
  %i.hh = getelementptr inbounds nuw [12 x i8], ptr %i.hg, i64 %i.hc ; 3 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !543, !noalias !11196
  %i.hj = zext i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [12 x i8], ptr %i.he, i64 %i.hj ; 2 uses
  %i.hl = load <2 x float>, ptr %i.hk, align 4, !tbaa !572, !noalias !11196
  %i.hm = fpext <2 x float> %i.hl to <2 x double>
  store <2 x double> %i.hm, ptr %6, align 16, !tbaa !595, !noalias !11196
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !572, !noalias !11196
  %i.hp = fpext float %i.ho to double
  store double %i.hp, ptr %19, align 16, !tbaa !595, !noalias !11196
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !543, !noalias !11196
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [12 x i8], ptr %i.he, i64 %i.hs ; 2 uses
  %i.hu = load <2 x float>, ptr %i.ht, align 4, !tbaa !572, !noalias !11196
  %i.hv = fpext <2 x float> %i.hu to <2 x double>
  store <2 x double> %i.hv, ptr %7, align 16, !tbaa !595, !noalias !11196
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !572, !noalias !11196
  %i.hy = fpext float %i.hx to double
  store double %i.hy, ptr %20, align 16, !tbaa !595, !noalias !11196
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !543, !noalias !11196
  %i.ib = zext i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [12 x i8], ptr %i.he, i64 %i.ib ; 2 uses
  %i.id = load <2 x float>, ptr %i.ic, align 4, !tbaa !572, !noalias !11196
  %i.ie = fpext <2 x float> %i.id to <2 x double>
  store <2 x double> %i.ie, ptr %8, align 16, !tbaa !595, !noalias !11196
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ig = load float, ptr %i.if, align 4, !tbaa !572, !noalias !11196
  %i.ih = fpext float %i.ig to double
  store double %i.ih, ptr %i.bz, align 16, !tbaa !595, !noalias !11196
  invoke void @_ZN7openvdb5v13_04math29closestPointOnTriangleToPointERKNS1_4Vec3IdEES5_S5_S5_RS3_(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.ii = zext nneg i32 %i.gs to i64              ; 4 uses
  %i.ij = getelementptr inbounds nuw [24 x i8], ptr %i.ha, i64 %i.ii ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !11196
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !11196
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !11196
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !11196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ij, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %i.ik = load ptr, ptr %i.bg, align 8, !tbaa !3195
  %i.il = getelementptr inbounds nuw [24 x i8], ptr %i.ik, i64 %i.ii ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 24 ; 2 uses
  %.sroa.9252.0.copyload254 = load double, ptr %i.bx, align 16
  %i.in = load <2 x double>, ptr %15, align 16
  %i.io = load <2 x double>, ptr %i.ij, align 8, !tbaa !595, !noalias !11197
  %i.ip = fsub <2 x double> %i.in, %i.io          ; 5 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !595, !noalias !11197
  %i.is = fsub double %.sroa.9252.0.copyload254, %i.ir ; 4 uses
  %i.it = extractelement <2 x double> %i.ip, i64 0 ; 2 uses
  store <2 x double> %i.ip, ptr %i.im, align 8
  %.sroa.9252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.il, i64 40 ; 2 uses
  store double %i.is, ptr %.sroa.9252.0..sroa_idx, align 8
  %foldExtExtBinop = fmul <2 x double> %i.ip, %i.ip
  %i.iu = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.iv = call double @llvm.fmuladd.f64(double %i.it, double %i.it, double %i.iu)
  %i.iw = call double @llvm.fmuladd.f64(double %i.is, double %i.is, double %i.iv)
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.iw) ; 2 uses
  %i.ix = call noundef double @llvm.fabs.f64(double %sqrt.i.i)
  %i.iy = fcmp ogt double %i.ix, f0x3E7AD7F29ABCAF48
  br i1 %i.iy, label %bb.bf, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196

bb.bf:                                            ; preds = %bb.be
  %i.iz = fdiv double 1.000000e+00, %sqrt.i.i     ; 2 uses
  %i.ja = fmul double %i.is, %i.iz
  %i.jb = insertelement <2 x double> poison, double %i.iz, i64 0
  %i.jc = shufflevector <2 x double> %i.jb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jd = fmul <2 x double> %i.ip, %i.jc
  store <2 x double> %i.jd, ptr %i.im, align 8, !tbaa !595
  store double %i.ja, ptr %.sroa.9252.0..sroa_idx, align 8, !tbaa !595
  br label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196

bb.bg:                                            ; preds = %bb.bd
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %.body155

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196: ; preds = %._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196_crit_edge, %bb.be, %bb.bf
  %.pre-phi = phi i64 [ %.pre389, %._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196_crit_edge ], [ %i.ii, %bb.be ], [ %i.ii, %bb.bf ]
  %i.jf = load ptr, ptr %i.bg, align 8, !tbaa !3195
  %i.jg = getelementptr inbounds nuw [24 x i8], ptr %i.jf, i64 %.pre-phi ; 5 uses
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !595, !noalias !11198
  %i.ji = fsub double %i.fr, %i.jh                ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.jk = load <2 x double>, ptr %i.jj, align 8, !tbaa !595, !noalias !11198
  %i.jl = fsub <2 x double> %i.fs, %i.jk          ; 5 uses
  %i.jm = extractelement <2 x double> %i.jl, i64 0
  %foldExtExtBinop447 = fmul <2 x double> %i.jl, %i.jl
  %i.jn = extractelement <2 x double> %foldExtExtBinop447, i64 0
  %i.jo = call double @llvm.fmuladd.f64(double %i.ji, double %i.ji, double %i.jn)
  %i.jp = extractelement <2 x double> %i.jl, i64 1 ; 3 uses
  %i.jq = call double @llvm.fmuladd.f64(double %i.jp, double %i.jp, double %i.jo)
  %sqrt.i.i195 = call noundef double @llvm.sqrt.f64(double %i.jq) ; 2 uses
  %i.jr = call noundef double @llvm.fabs.f64(double %sqrt.i.i195)
  %i.js = fcmp ogt double %i.jr, f0x3E7AD7F29ABCAF48 ; 3 uses
  %i.jt = fdiv double 1.000000e+00, %sqrt.i.i195  ; 2 uses
  %i.ju = fmul double %i.ji, %i.jt
  %i.jv = insertelement <2 x double> poison, double %i.jt, i64 0
  %i.jw = shufflevector <2 x double> %i.jv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jx = fmul <2 x double> %i.jl, %i.jw          ; 2 uses
  %i.jy = extractelement <2 x double> %i.jx, i64 1
  %.sroa.19.0 = select i1 %i.js, double %i.jy, double %i.jp
  %i.jz = extractelement <2 x double> %i.jx, i64 0
  %.sroa.11272.0 = select i1 %i.js, double %i.jz, double %i.jm
  %.sroa.0268.0 = select i1 %i.js, double %i.ju, double %i.ji
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !595
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jg, i64 32
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !595
  %i.ke = fmul double %i.kd, %.sroa.11272.0
  %i.kf = call double @llvm.fmuladd.f64(double %i.kb, double %.sroa.0268.0, double %i.ke)
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jg, i64 40
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !595
  %i.ki = call noundef double @llvm.fmuladd.f64(double %i.kh, double %.sroa.19.0, double %i.kf)
  %i.kj = fcmp ogt double %i.ki, 0.000000e+00
  br i1 %i.kj, label %bb.bi, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196._crit_edge388

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196._crit_edge388: ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196
  %.pre = load i32, ptr %i.bd, align 8, !tbaa !543
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196._crit_edge388, %bb.bb, %bb.ba
  %i.kk = phi i32 [ %.pre, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196._crit_edge388 ], [ %storemerge337349, %bb.bb ], [ %storemerge337349, %bb.ba ] ; 2 uses
  %i.kl = add nsw i32 %i.kk, 1                    ; 2 uses
  store i32 %i.kl, ptr %i.bd, align 8, !tbaa !543
  %.not.not = icmp slt i32 %i.kk, %.sroa.speculated.i187
  br i1 %.not.not, label %bb.ba, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196._crit_edge, !llvm.loop !11189

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196._crit_edge: ; preds = %bb.bh
  %i.km = load i32, ptr %i.bc, align 4, !tbaa !543 ; 2 uses
  %i.kn = add nsw i32 %i.km, 1                    ; 2 uses
  store i32 %i.kn, ptr %i.bc, align 4, !tbaa !543
  %.not = icmp slt i32 %i.km, %.sroa.speculated11.i186
  br i1 %.not, label %.lr.ph, label %._crit_edge354.split, !llvm.loop !11190

._crit_edge354.split:                             ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196._crit_edge
  %i.ko = load i32, ptr %14, align 8, !tbaa !543  ; 2 uses
  %i.kp = add nsw i32 %i.ko, 1                    ; 2 uses
  store i32 %i.kp, ptr %14, align 8, !tbaa !543
  %.not439 = icmp slt i32 %i.ko, %.sroa.speculated16.i185
  br i1 %.not439, label %.lr.ph353, label %.preheader.preheader, !llvm.loop !11191

bb.bi:                                            ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit196
  %i.kq = load <2 x i32>, ptr %14, align 8, !tbaa !543
  %i.kr = add nsw <2 x i32> %i.kq, splat (i32 1)
  store <2 x i32> %i.kr, ptr %14, align 8, !tbaa !543
  br label %.loopexit.sink.split

.preheader:                                       ; preds = %.preheader.preheader, %bb.cd
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.cd ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.ks = getelementptr inbounds nuw [12 x i8], ptr @_ZN7openvdb5v13_04util13COORD_OFFSETSE, i64 %indvars.iv ; 3 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !543
  %i.ku = add nsw i32 %i.kt, %i.fl                ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 4
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !543
  %i.kx = add nsw i32 %i.kw, %i.fu                ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !543
  %i.la = add nsw i32 %i.kz, %i.fw                ; 3 uses
  %.sroa.2.0.insert.ext.i197 = zext i32 %i.kx to i64
  %.sroa.2.0.insert.shift.i198 = shl nuw i64 %.sroa.2.0.insert.ext.i197, 32
  %.sroa.0.0.insert.ext.i199 = zext i32 %i.ku to i64
  %.sroa.0.0.insert.insert.i200 = or disjoint i64 %.sroa.2.0.insert.shift.i198, %.sroa.0.0.insert.ext.i199
  store i64 %.sroa.0.0.insert.insert.i200, ptr %14, align 8
  store i32 %i.la, ptr %i.bd, align 8, !tbaa !570
  %i.lb = icmp slt i32 %i.ku, %.sroa.speculated16.i
  %i.lc = icmp slt i32 %i.kx, %.sroa.speculated11.i
  %or.cond435 = select i1 %i.lb, i1 true, i1 %i.lc
  br i1 %or.cond435, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread, label %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i

_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i: ; preds = %.preheader
  %i.ld = icmp sge i32 %i.la, %.sroa.speculated.i
  %i.le = icmp sge i32 %.sroa.speculated16.i185, %i.ku
  %or.cond.i.not342 = and i1 %i.ld, %i.le
  %i.lf = icmp sge i32 %.sroa.speculated11.i186, %i.kx
  %or.cond10.i.not339 = select i1 %or.cond.i.not342, i1 %i.lf, i1 false
  %i.lg = icmp sge i32 %.sroa.speculated.i187, %i.la
  %or.cond332 = select i1 %or.cond10.i.not339, i1 %i.lg, i1 false
  br i1 %or.cond332, label %bb.cd, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread

_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread: ; preds = %.preheader, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i
  %i.lh = invoke noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERd(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(12) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.bj unwind label %bb.cb

bb.bj:                                            ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread
  %i.li = load double, ptr %i.h, align 8
  %i.lj = fcmp olt double %i.li, -7.500000e-01
  %or.cond = select i1 %i.lh, i1 %i.lj, i1 false
  br i1 %or.cond, label %bb.bk, label %bb.cd

bb.bk:                                            ; preds = %bb.bj
  %i.lk = load <2 x i32>, ptr %14, align 8, !tbaa !543 ; 3 uses
  %i.ll = extractelement <2 x i32> %i.lk, i64 1   ; 10 uses
  %i.lm = extractelement <2 x i32> %i.lk, i64 0   ; 7 uses
  %i.ln = sitofp <2 x i32> %i.lk to <2 x double>
  store <2 x double> %i.ln, ptr %15, align 16, !tbaa !595
  %i.lo = load i32, ptr %i.bd, align 8, !tbaa !543 ; 11 uses
  %i.lp = sitofp i32 %i.lo to double
  store double %i.lp, ptr %i.bx, align 16, !tbaa !595
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.lq = and i32 %i.lm, -8
  %i.lr = load i32, ptr %i.ay, align 8, !tbaa !543
  %i.ls = icmp eq i32 %i.lq, %i.lr
  br i1 %i.ls, label %bb.bl, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i

bb.bl:                                            ; preds = %bb.bk
  %i.lt = and i32 %i.ll, -8
  %i.lu = load i32, ptr %i.ca, align 4, !tbaa !543
  %i.lv = icmp eq i32 %i.lt, %i.lu
  br i1 %i.lv, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.bl
  %i.lw = and i32 %i.lo, -8
  %i.lx = load i32, ptr %.sroa.6.0..sroa_idx.i.i145, align 8, !tbaa !543
  %i.ly = icmp eq i32 %i.lw, %i.lx
  br i1 %i.ly, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i
  %i.lz = load ptr, ptr %i.ax, align 8, !tbaa !3213 ; 2 uses
  %i.ma = shl i32 %i.lm, 6
  %i.mb = and i32 %i.ma, 448
  %i.mc = shl i32 %i.ll, 3
  %i.md = and i32 %i.mc, 56
  %i.me = or disjoint i32 %i.md, %i.mb
  %i.mf = and i32 %i.lo, 7
  %i.mg = or disjoint i32 %i.me, %i.mf
  %i.mh = zext nneg i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.mh
  %.not.i.not.i = icmp eq ptr %i.lz, null
  br i1 %.not.i.not.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i, %bb.bl, %bb.bk
  %i.mj = and i32 %i.lm, -128                     ; 3 uses
  %i.mk = load i32, ptr %.06.i.i.i.i.ptr.1.i.i.i146, align 4, !tbaa !543
  %i.ml = icmp eq i32 %i.mj, %i.mk
  br i1 %i.ml, label %bb.bm, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i

bb.bm:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i
  %i.mm = and i32 %i.ll, -128
  %i.mn = load i32, ptr %i.cb, align 8, !tbaa !543
  %i.mo = icmp eq i32 %i.mm, %i.mn
  br i1 %i.mo, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.bm
  %i.mp = and i32 %i.lo, -128
  %i.mq = load i32, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i147, align 4, !tbaa !543
  %i.mr = icmp eq i32 %i.mp, %i.mq
  br i1 %i.mr, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i
  %i.ms = load ptr, ptr %i.ce, align 8, !tbaa !1879
  br label %.invoke

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i, %bb.bm, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i
  %i.mt = and i32 %i.lm, -4096                    ; 2 uses
  %i.mu = load i32, ptr %.06.i.i.i.i.ptr.2.i.i.i148, align 8, !tbaa !543
  %i.mv = icmp eq i32 %i.mt, %i.mu
  br i1 %i.mv, label %bb.bn, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i

bb.bn:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i
  %i.mw = and i32 %i.ll, -4096
  %i.mx = load i32, ptr %i.cc, align 4, !tbaa !543
  %i.my = icmp eq i32 %i.mw, %i.mx
  br i1 %i.my, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.bn
  %i.mz = and i32 %i.lo, -4096
  %i.na = load i32, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i149, align 8, !tbaa !543
  %i.nb = icmp eq i32 %i.mz, %i.na
  br i1 %i.nb, label %bb.bo, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i

bb.bo:                                            ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i
  %i.nc = load ptr, ptr %i.cd, align 8, !tbaa !1857 ; 2 uses
  %i.nd = shl i32 %i.lm, 3
  %i.ne = and i32 %i.nd, 31744
  %i.nf = lshr i32 %i.ll, 2
  %i.ng = and i32 %i.nf, 992
  %i.nh = or disjoint i32 %i.ng, %i.ne            ; 2 uses
  %i.ni = lshr i32 %i.lo, 7
  %i.nj = and i32 %i.ni, 31
  %i.nk = or disjoint i32 %i.nj, %i.nh            ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nc, i64 262144
  %i.nm = lshr i32 %i.nh, 6
  %i.nn = zext nneg i32 %i.nm to i64
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %i.nn
  %i.np = load i64, ptr %i.no, align 8, !tbaa !791
  %i.nq = and i32 %i.nk, 63
  %i.nr = zext nneg i32 %i.nq to i64
  %i.ns = shl nuw i64 1, %i.nr
  %i.nt = and i64 %i.np, %i.ns
  %.not.i.i.i = icmp eq i64 %i.nt, 0
  %i.nu = zext nneg i32 %i.nk to i64
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.nc, i64 %i.nu ; 3 uses
  br i1 %.not.i.i.i, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !570
  %i.nx = and i32 %i.ll, -128
  %i.ny = and i32 %i.lo, -128
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.nx to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.mj to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i.i, ptr %.06.i.i.i.i.ptr.1.i.i.i146, align 4
  store i32 %i.ny, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i147, align 4, !tbaa !570
  store ptr %i.nw, ptr %i.ce, align 8, !tbaa !1879
  %i.nz = load ptr, ptr %i.nv, align 8, !tbaa !570
  br label %.invoke

_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i, %bb.bn, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i
  %i.oa = load ptr, ptr %i.az, align 8, !tbaa !1827 ; 6 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 56
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !543
  %i.od = sub nsw i32 %i.ll, %i.oc
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oa, i64 60
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !543
  %i.og = sub nsw i32 %i.lo, %i.of
  %i.oh = and i32 %i.od, -4096                    ; 4 uses
  %i.oi = and i32 %i.og, -4096                    ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !722 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oa, i64 8 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.ok, null
  br i1 %.not12.i.i.i.i.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i
  %i.om = getelementptr inbounds nuw i8, ptr %i.oa, i64 52
  %i.on = load i32, ptr %i.om, align 4, !tbaa !543
  %i.oo = sub nsw i32 %i.lm, %i.on
  %i.op = and i32 %i.oo, -4096                    ; 4 uses
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.014.i.i.i.i.i = phi ptr [ %i.ok, %.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i ] ; 7 uses
  %.0813.i.i.i.i.i = phi ptr [ %i.ol, %.lr.ph.i.i.i.i.i ], [ %.19.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i ]
  %i.oq = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 32
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !543 ; 2 uses
  %i.os = icmp slt i32 %i.or, %i.op
  br i1 %i.os, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ot = icmp sgt i32 %i.or, %i.op
  br i1 %i.ot, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ou = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 36
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !543 ; 2 uses
  %i.ow = icmp slt i32 %i.ov, %i.oh
  br i1 %i.ow, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ox = icmp sgt i32 %i.ov, %i.oh
  br i1 %i.ox, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i: ; preds = %bb.bt
  %i.oy = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 40
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !543
  %i.pa = icmp slt i32 %i.oz, %i.oi
  br i1 %i.pa, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.bs, %bb.bq
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.bt, %bb.br
  %.sink.i.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ 16, %bb.bt ], [ 16, %bb.br ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ]
  %.19.i.i.i.i.i = phi ptr [ %.0813.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ %.014.i.i.i.i.i, %bb.bt ], [ %.014.i.i.i.i.i, %bb.br ], [ %.014.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ] ; 7 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 %.sink.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %i.pb, align 8, !tbaa !1171 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, label %bb.bq, !llvm.loop !308

_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i
  %i.pc = icmp eq ptr %.19.i.i.i.i.i, %i.ol
  br i1 %i.pc, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.bu

bb.bu:                                            ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i
  %i.pd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !543 ; 2 uses
  %i.pf = icmp slt i32 %i.op, %i.pe
  br i1 %i.pf, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.pg = icmp sgt i32 %i.op, %i.pe
  br i1 %i.pg, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ph = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 36
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !543 ; 2 uses
  %i.pj = icmp slt i32 %i.oh, %i.pi
  br i1 %i.pj, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.pk = icmp sgt i32 %i.oh, %i.pi
  br i1 %i.pk, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.bx
  %i.pl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !543
  %i.pn = icmp slt i32 %i.oi, %i.pm
  br i1 %i.pn, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.bw, %bb.bu, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i
  %i.po = getelementptr inbounds nuw i8, ptr %i.oa, i64 48
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.bx, %bb.bv
  %i.pp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 48 ; 2 uses
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !1819 ; 2 uses
  %.not.i219 = icmp eq ptr %i.pq, null
  br i1 %.not.i219, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.pr = and i32 %i.ll, -4096
  %i.ps = and i32 %i.lo, -4096
  %.sroa.2.0.insert.ext.i.i220 = zext i32 %i.pr to i64
  %.sroa.2.0.insert.shift.i.i221 = shl nuw i64 %.sroa.2.0.insert.ext.i.i220, 32
  %.sroa.0.0.insert.ext.i.i222 = zext i32 %i.mt to i64
  %.sroa.0.0.insert.insert.i.i223 = or disjoint i64 %.sroa.2.0.insert.shift.i.i221, %.sroa.0.0.insert.ext.i.i222
  store i64 %.sroa.0.0.insert.insert.i.i223, ptr %.06.i.i.i.i.ptr.2.i.i.i148, align 8
  store i32 %i.ps, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i149, align 8, !tbaa !570
  store ptr %i.pq, ptr %i.cd, align 8, !tbaa !1857
  %i.pt = load ptr, ptr %i.pp, align 8, !tbaa !1821 ; 2 uses
  %i.pu = shl i32 %i.lm, 3
  %i.pv = and i32 %i.pu, 31744
  %i.pw = lshr i32 %i.ll, 2
  %i.px = and i32 %i.pw, 992
  %i.py = or disjoint i32 %i.px, %i.pv            ; 2 uses
  %i.pz = lshr i32 %i.lo, 7
  %i.qa = and i32 %i.pz, 31
  %i.qb = or disjoint i32 %i.qa, %i.py            ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pt, i64 262144
  %i.qd = lshr i32 %i.py, 6
  %i.qe = zext nneg i32 %i.qd to i64
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %i.qe
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !791
  %i.qh = and i32 %i.qb, 63
  %i.qi = zext nneg i32 %i.qh to i64
  %i.qj = shl nuw i64 1, %i.qi
  %i.qk = and i64 %i.qg, %i.qj
  %.not.i.i224 = icmp eq i64 %i.qk, 0
  %i.ql = zext nneg i32 %i.qb to i64
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %i.ql ; 3 uses
  br i1 %.not.i.i224, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !570
  %i.qo = and i32 %i.ll, -128
  %i.qp = and i32 %i.lo, -128
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.qo to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.mj to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %.06.i.i.i.i.ptr.1.i.i.i146, align 4
  store i32 %i.qp, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i147, align 4, !tbaa !570
  store ptr %i.qn, ptr %i.ce, align 8, !tbaa !1879
  %i.qq = load ptr, ptr %i.qm, align 8, !tbaa !570
  br label %.invoke

.invoke:                                          ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i, %bb.bp, %bb.bz
  %i.qr = phi ptr [ %i.qq, %bb.bz ], [ %i.nz, %bb.bp ], [ %i.ms, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i ]
  %i.qs = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIiLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKiRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.qr, ptr noundef nonnull align 4 dereferenceable(12) %14, ptr noundef nonnull align 8 dereferenceable(96) %13)
          to label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit unwind label %bb.cc

bb.ca:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.qt = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 56
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit: ; preds = %.invoke, %bb.bo, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i, %bb.ca, %bb.by, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i
  %.1.i.i = phi ptr [ %i.mi, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i ], [ %i.qm, %bb.by ], [ %i.qs, %.invoke ], [ %i.nv, %bb.bo ], [ %i.po, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i ], [ %i.qt, %bb.ca ]
  %i.qu = load i32, ptr %.1.i.i, align 4, !tbaa !543
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !11199
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !11199
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !11199
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !11199
  %i.qv = sext i32 %i.qu to i64
  %i.qw = load ptr, ptr %i.by, align 8, !tbaa !973, !noalias !11199 ; 2 uses
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !1049, !noalias !11199 ; 3 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !1051, !noalias !11199
  %i.ra = getelementptr inbounds nuw [12 x i8], ptr %i.qz, i64 %i.qv ; 3 uses
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !543, !noalias !11199
  %i.rc = zext i32 %i.rb to i64
  %i.rd = getelementptr inbounds nuw [12 x i8], ptr %i.qx, i64 %i.rc ; 2 uses
  %i.re = load <2 x float>, ptr %i.rd, align 4, !tbaa !572, !noalias !11199
  %i.rf = fpext <2 x float> %i.re to <2 x double>
  store <2 x double> %i.rf, ptr %2, align 16, !tbaa !595, !noalias !11199
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !572, !noalias !11199
  %i.ri = fpext float %i.rh to double
  store double %i.ri, ptr %i.cf, align 16, !tbaa !595, !noalias !11199
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ra, i64 4
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !543, !noalias !11199
  %i.rl = zext i32 %i.rk to i64
  %i.rm = getelementptr inbounds nuw [12 x i8], ptr %i.qx, i64 %i.rl ; 2 uses
  %i.rn = load <2 x float>, ptr %i.rm, align 4, !tbaa !572, !noalias !11199
  %i.ro = fpext <2 x float> %i.rn to <2 x double>
  store <2 x double> %i.ro, ptr %3, align 16, !tbaa !595, !noalias !11199
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  %i.rq = load float, ptr %i.rp, align 4, !tbaa !572, !noalias !11199
  %i.rr = fpext float %i.rq to double
  store double %i.rr, ptr %i.cg, align 16, !tbaa !595, !noalias !11199
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !543, !noalias !11199
  %i.ru = zext i32 %i.rt to i64
  %i.rv = getelementptr inbounds nuw [12 x i8], ptr %i.qx, i64 %i.ru ; 2 uses
  %i.rw = load <2 x float>, ptr %i.rv, align 4, !tbaa !572, !noalias !11199
  %i.rx = fpext <2 x float> %i.rw to <2 x double>
  store <2 x double> %i.rx, ptr %4, align 16, !tbaa !595, !noalias !11199
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !572, !noalias !11199
  %i.sa = fpext float %i.rz to double
  store double %i.sa, ptr %i.ch, align 16, !tbaa !595, !noalias !11199
  invoke void @_ZN7openvdb5v13_04math29closestPointOnTriangleToPointERKNS1_4Vec3IdEES5_S5_S5_RS3_(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit211 unwind label %bb.cc

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit211: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !11199
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !11199
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !11199
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !11199
  %21 = load <2 x double>, ptr %i.ci, align 8
  %22 = load <2 x double>, ptr %18, align 16
  %.sroa.8.0.copyload = load double, ptr %i.cj, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  %i.sb = load <2 x double>, ptr %15, align 16    ; 2 uses
  %.sroa.9.0.copyload230 = load double, ptr %i.bx, align 16
  %i.sc = shufflevector <2 x double> %i.sb, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.sd = insertelement <2 x double> %i.sc, double %i.fr, i64 0
  %i.se = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sf = fsub <2 x double> %i.sd, %i.se          ; 4 uses
  %i.sg = shufflevector <2 x double> %i.fs, <2 x double> %i.sb, <2 x i32> <i32 0, i32 3>
  %23 = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sh = fsub <2 x double> %i.sg, %23            ; 4 uses
  %24 = insertelement <2 x double> %i.gd, double %.sroa.9.0.copyload230, i64 1
  %i.si = insertelement <2 x double> poison, double %.sroa.8.0.copyload, i64 0
  %25 = shufflevector <2 x double> %i.si, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sj = fsub <2 x double> %24, %25              ; 4 uses
  %i.sk = fmul <2 x double> %i.sh, %i.sh
  %i.sl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sf, <2 x double> %i.sf, <2 x double> %i.sk)
  %i.sm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sj, <2 x double> %i.sj, <2 x double> %i.sl)
  %i.sn = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.sm) ; 2 uses
  %i.so = fdiv <2 x double> splat (double 1.000000e+00), %i.sn ; 3 uses
  %i.sp = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.sn)
  %i.sq = fcmp ogt <2 x double> %i.sp, splat (double f0x3E7AD7F29ABCAF48) ; 3 uses
  %i.sr = shufflevector <2 x double> %i.sj, <2 x double> %i.sf, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ss = shufflevector <2 x double> %i.so, <2 x double> poison, <2 x i32> zeroinitializer
  %i.st = fmul <2 x double> %i.sr, %i.ss
  %i.su = shufflevector <2 x i1> %i.sq, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.sv = select <2 x i1> %i.su, <2 x double> %i.st, <2 x double> %i.sr ; 2 uses
  %i.sw = fmul <2 x double> %i.sh, %i.so
  %i.sx = select <2 x i1> %i.sq, <2 x double> %i.sw, <2 x double> %i.sh ; 2 uses
  %i.sy = shufflevector <2 x double> %i.sj, <2 x double> %i.sf, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.sz = shufflevector <2 x double> %i.so, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ta = fmul <2 x double> %i.sy, %i.sz
  %i.tb = shufflevector <2 x i1> %i.sq, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.tc = select <2 x i1> %i.tb, <2 x double> %i.ta, <2 x double> %i.sy ; 2 uses
  %shift = shufflevector <2 x double> %i.sx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop449 = fmul <2 x double> %i.sx, %shift
  %i.td = extractelement <2 x double> %foldExtExtBinop449, i64 0
  %i.te = extractelement <2 x double> %i.sv, i64 1
  %i.tf = extractelement <2 x double> %i.tc, i64 1
  %i.tg = call double @llvm.fmuladd.f64(double %i.tf, double %i.te, double %i.td)
  %i.th = extractelement <2 x double> %i.sv, i64 0
  %i.ti = extractelement <2 x double> %i.tc, i64 0
  %i.tj = call noundef double @llvm.fmuladd.f64(double %i.ti, double %i.th, double %i.tg)
  %i.tk = fcmp ogt double %i.tj, 0.000000e+00
  br i1 %i.tk, label %.loopexit.sink.split, label %bb.cd

bb.cb:                                            ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread
  %i.tl = landingpad { ptr, i32 }
          cleanup
  br label %.body155

bb.cc:                                            ; preds = %.invoke, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit
  %i.tm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %.body155

bb.cd:                                            ; preds = %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i, %bb.bj, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit211
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 26
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !11194

.loopexit.sink.split:                             ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit211, %bb.bi
  %i.tn = load double, ptr %i.fa, align 8, !tbaa !595
  %i.to = fneg double %i.tn
  store double %i.to, ptr %i.fa, align 8, !tbaa !595
  br label %.loopexit

.loopexit:                                        ; preds = %bb.cd, %.loopexit.sink.split, %.lr.ph373
  %i.tp = add i32 %.sroa.5.0371, 1                ; 4 uses
  %i.tq = lshr i32 %i.tp, 6                       ; 3 uses
  %i.tr = icmp ugt i32 %i.tp, 511
  br i1 %i.tr, label %._crit_edge374, label %bb.ce

bb.ce:                                            ; preds = %.loopexit
  %i.ts = and i32 %i.tp, 63
  %i.tt = zext nneg i32 %i.tq to i64              ; 8 uses
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.tt
  %i.tv = load i64, ptr %i.tu, align 8, !tbaa !791 ; 2 uses
  %i.tw = zext nneg i32 %i.ts to i64              ; 2 uses
  %i.tx = shl nuw i64 1, %i.tw
  %i.ty = and i64 %i.tv, %i.tx
  %.not.i.i.i.i = icmp eq i64 %i.ty, 0
  br i1 %.not.i.i.i.i, label %bb.cf, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

bb.cf:                                            ; preds = %bb.ce
  %i.tz = shl nsw i64 -1, %i.tw
  %i.ua = and i64 %i.tv, %i.tz                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.ua, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i212.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i212.preheader:                      ; preds = %bb.cf
  %exitcond.not.i.i.i.i443 = icmp eq i32 %i.tq, 7
  br i1 %exitcond.not.i.i.i.i443, label %._crit_edge374, label %.lr.ph445

.lr.ph.i.i.i.i212:                                ; preds = %.lr.ph445
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge374, label %.lr.ph445.1

.lr.ph445.1:                                      ; preds = %.lr.ph.i.i.i.i212
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.tt, 2 ; 3 uses
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv.next.i.i.i.i.1
  %i.uc = load i64, ptr %i.ub, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.uc, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i212.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i212.1:                              ; preds = %.lr.ph445.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge374, label %.lr.ph445.2

.lr.ph445.2:                                      ; preds = %.lr.ph.i.i.i.i212.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.tt, 3 ; 3 uses
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv.next.i.i.i.i.2
  %i.ue = load i64, ptr %i.ud, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.ue, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i212.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i212.2:                              ; preds = %.lr.ph445.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge374, label %.lr.ph445.3

.lr.ph445.3:                                      ; preds = %.lr.ph.i.i.i.i212.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.tt, 4 ; 3 uses
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv.next.i.i.i.i.3
  %i.ug = load i64, ptr %i.uf, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.ug, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i212.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i212.3:                              ; preds = %.lr.ph445.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge374, label %.lr.ph445.4

.lr.ph445.4:                                      ; preds = %.lr.ph.i.i.i.i212.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.tt, 5 ; 3 uses
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv.next.i.i.i.i.4
  %i.ui = load i64, ptr %i.uh, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.ui, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i212.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i212.4:                              ; preds = %.lr.ph445.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge374, label %.lr.ph445.5

.lr.ph445.5:                                      ; preds = %.lr.ph.i.i.i.i212.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.tt, 6 ; 3 uses
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv.next.i.i.i.i.5
  %i.uk = load i64, ptr %i.uj, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.uk, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i212.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i212.5:                              ; preds = %.lr.ph445.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge374, label %.lr.ph445.6

.lr.ph445.6:                                      ; preds = %.lr.ph.i.i.i.i212.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.tt, 7 ; 2 uses
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv.next.i.i.i.i.6
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.um, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge374, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph445:                                        ; preds = %.lr.ph.i.i.i.i212.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.tt, 1 ; 3 uses
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv.next.i.i.i.i
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.uo, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i212, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph445.6, %.lr.ph445.5, %.lr.ph445.4, %.lr.ph445.3, %.lr.ph445.2, %.lr.ph445.1, %.lr.ph445
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph445 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph445.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph445.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph445.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph445.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph445.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph445.6 ]
  %.lcssa = phi i64 [ %i.uo, %.lr.ph445 ], [ %i.uc, %.lr.ph445.1 ], [ %i.ue, %.lr.ph445.2 ], [ %i.ug, %.lr.ph445.3 ], [ %i.ui, %.lr.ph445.4 ], [ %i.uk, %.lr.ph445.5 ], [ %i.um, %.lr.ph445.6 ]
  %i.up = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.cf
  %.016.lcssa.i.i.i.i = phi i32 [ %i.tq, %bb.cf ], [ %i.up, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.ua, %bb.cf ], [ %.lcssa, %.critedge.loopexit.i.i.i.i ]
  %i.uq = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.ur = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.us = trunc nuw nsw i64 %i.ur to i32
  %i.ut = or disjoint i32 %i.uq, %i.us
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit: ; preds = %bb.ce, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.ut, %.critedge.i.i.i.i ], [ %i.tp, %bb.ce ] ; 2 uses
  %.not335 = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not335, label %._crit_edge374, label %.lr.ph373

._crit_edge374:                                   ; preds = %.loopexit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit, %.lr.ph.i.i.i.i212.preheader, %.lr.ph445.6, %.lr.ph.i.i.i.i212, %.lr.ph.i.i.i.i212.1, %.lr.ph.i.i.i.i212.2, %.lr.ph.i.i.i.i212.3, %.lr.ph.i.i.i.i212.4, %.lr.ph.i.i.i.i212.5, %bb.au
  %i.uu = add nuw i64 %.0118375, 1                ; 2 uses
  %exitcond387.not = icmp eq i64 %i.uu, %i.bt
  br i1 %exitcond387.not, label %._crit_edge377, label %bb.ag, !llvm.loop !11195

.body155:                                         ; preds = %bb.aw, %bb.cb, %bb.cc, %bb.bg, %bb.ay, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i, %bb.av, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i160, %bb.ax, %bb.y, %bb.ab, %bb.x
  %.pn132.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.x ], [ %i.bl, %bb.y ], [ %i.bq, %bb.ab ], [ %i.eq, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i160 ], [ %i.tl, %bb.cb ], [ %i.ff, %bb.aw ], [ %i.dr, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ], [ %i.fg, %bb.ax ], [ %i.fh, %bb.ay ], [ %i.fe, %bb.av ], [ %i.tm, %bb.cc ], [ %i.je, %bb.bg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %13, align 8, !tbaa !545
  %i.uv = load ptr, ptr %i.ah, align 8, !tbaa !3207 ; 2 uses
  %.not.i213 = icmp eq ptr %i.uv, null
  br i1 %.not.i213, label %.body, label %bb.cg

bb.cg:                                            ; preds = %.body155
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %13, ptr %i.b, align 8, !tbaa !3208
  %i.ux = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.uw, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i214 unwind label %bb.ch, !inline_history !3214 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i214: ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.body

bb.ch:                                            ; preds = %bb.cg
end_hunk_3
