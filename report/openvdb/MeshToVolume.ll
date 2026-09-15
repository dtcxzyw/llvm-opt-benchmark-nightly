Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/MeshToVolume?download=true
inline.NumInlined: 61374
inline.NumDeleted: 19461
loop-unroll.NumCompletelyUnrolled: 235
loop-unroll.NumRuntimeUnrolled: 314
loop-unroll.NumUnrolled: 949
begin_hunk_0_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENSD_26QuadAndTriangleDataAdapterINSC_4math4Vec3IfEENSR_4Vec4IjEEEEEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
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
  %i.bx = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
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
  %.0118386 = phi i64 [ %i.bs, %.lr.ph387 ], [ %i.xs, %._crit_edge385 ] ; 2 uses
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
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS1_26QuadAndTriangleDataAdapterINS0_4math4Vec3IfEENSF_4Vec4IjEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
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
  %storemerge367 = phi i32 [ %i.me, %._crit_edge365.split ], [ %.sroa.speculated16.i, %bb.az ]
  %i.gi = shl i32 %storemerge367, 6
  %i.gj = and i32 %i.gi, 448
  store i32 %.sroa.speculated11.i, ptr %i.bc, align 4, !tbaa !543
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph364, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200._crit_edge
  %storemerge347362 = phi i32 [ %.sroa.speculated11.i, %.lr.ph364 ], [ %i.mc, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200._crit_edge ]
  %i.gk = shl i32 %storemerge347362, 3
  %i.gl = and i32 %i.gk, 56
  %i.gm = or disjoint i32 %i.gl, %i.gj
  store i32 %.sroa.speculated.i, ptr %i.bd, align 8, !tbaa !543
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph, %bb.bj
  %storemerge348360 = phi i32 [ %.sroa.speculated.i, %.lr.ph ], [ %i.ma, %bb.bj ] ; 4 uses
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
  %i.jd = load double, ptr %i.cd, align 16, !tbaa !595, !alias.scope !11458, !noalias !11460
  %i.je = load <2 x double>, ptr %i.bx, align 8
  %i.jf = load <2 x double>, ptr %17, align 16
  %.sroa.917.0.copyload.i = load double, ptr %i.by, align 16, !noalias !11458
  %i.jg = load <2 x double>, ptr %9, align 16, !tbaa !595, !noalias !11459 ; 2 uses
  %i.jh = load <2 x double>, ptr %19, align 16, !tbaa !595, !alias.scope !11458, !noalias !11460 ; 2 uses
  %i.ji = shufflevector <2 x double> %i.jf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jj = shufflevector <2 x double> %i.jg, <2 x double> %i.jh, <2 x i32> <i32 0, i32 2>
  %i.jk = fsub <2 x double> %i.ji, %i.jj          ; 2 uses
  %i.jl = shufflevector <2 x double> %i.je, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jm = shufflevector <2 x double> %i.jg, <2 x double> %i.jh, <2 x i32> <i32 1, i32 3>
  %i.jn = fsub <2 x double> %i.jl, %i.jm          ; 2 uses
  %i.jo = insertelement <2 x double> poison, double %.sroa.917.0.copyload.i, i64 0
  %i.jp = shufflevector <2 x double> %i.jo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jq = insertelement <2 x double> poison, double %i.jc, i64 0
  %i.jr = insertelement <2 x double> %i.jq, double %i.jd, i64 1
  %i.js = fsub <2 x double> %i.jp, %i.jr          ; 2 uses
  %i.jt = fmul <2 x double> %i.jn, %i.jn
  %i.ju = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jk, <2 x double> %i.jk, <2 x double> %i.jt)
  %i.jv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.js, <2 x double> %i.js, <2 x double> %i.ju) ; 2 uses
  %i.jw = extractelement <2 x double> %i.jv, i64 0
  %i.jx = extractelement <2 x double> %i.jv, i64 1
  %i.jy = fcmp olt double %i.jw, %i.jx
  br i1 %i.jy, label %bb.bf, label %bb.bg

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
  %i.jz = load ptr, ptr %i.bg, align 8, !tbaa !3195
  %i.ka = getelementptr inbounds nuw [24 x i8], ptr %i.jz, i64 %i.he ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 24 ; 2 uses
  %.sroa.9263.0.copyload265 = load double, ptr %i.by, align 16
  %i.kc = load <2 x double>, ptr %17, align 16
  %i.kd = load <2 x double>, ptr %i.hg, align 8, !tbaa !595, !noalias !11461
  %i.ke = fsub <2 x double> %i.kc, %i.kd          ; 5 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !595, !noalias !11461
  %i.kh = fsub double %.sroa.9263.0.copyload265, %i.kg ; 4 uses
  %i.ki = extractelement <2 x double> %i.ke, i64 0 ; 2 uses
  store <2 x double> %i.ke, ptr %i.kb, align 8
  %.sroa.9263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ka, i64 40 ; 2 uses
  store double %i.kh, ptr %.sroa.9263.0..sroa_idx, align 8
  %foldExtExtBinop = fmul <2 x double> %i.ke, %i.ke
  %i.kj = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.kk = call double @llvm.fmuladd.f64(double %i.ki, double %i.ki, double %i.kj)
  %i.kl = call double @llvm.fmuladd.f64(double %i.kh, double %i.kh, double %i.kk)
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.kl) ; 2 uses
  %i.km = call noundef double @llvm.fabs.f64(double %sqrt.i.i)
  %i.kn = fcmp ogt double %i.km, f0x3E7AD7F29ABCAF48
  br i1 %i.kn, label %bb.bh, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200

bb.bh:                                            ; preds = %bb.bg
  %i.ko = fdiv double 1.000000e+00, %sqrt.i.i     ; 2 uses
  %i.kp = fmul double %i.kh, %i.ko
  %i.kq = insertelement <2 x double> poison, double %i.ko, i64 0
  %i.kr = shufflevector <2 x double> %i.kq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ks = fmul <2 x double> %i.ke, %i.kr
  store <2 x double> %i.ks, ptr %i.kb, align 8, !tbaa !595
  store double %i.kp, ptr %.sroa.9263.0..sroa_idx, align 8, !tbaa !595
  br label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200

bb.bi:                                            ; preds = %bb.be, %bb.bd
  %i.kt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %.body157

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200: ; preds = %._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200_crit_edge, %bb.bg, %bb.bh
  %.pre-phi = phi i64 [ %.pre403, %._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200_crit_edge ], [ %i.he, %bb.bg ], [ %i.he, %bb.bh ]
  %i.ku = load ptr, ptr %i.bg, align 8, !tbaa !3195
  %i.kv = getelementptr inbounds nuw [24 x i8], ptr %i.ku, i64 %.pre-phi ; 5 uses
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !595, !noalias !11462
  %i.kx = fsub double %i.fu, %i.kw                ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.kz = load <2 x double>, ptr %i.ky, align 8, !tbaa !595, !noalias !11462
  %i.la = fsub <2 x double> %i.fv, %i.kz          ; 5 uses
  %i.lb = extractelement <2 x double> %i.la, i64 0
  %foldExtExtBinop463 = fmul <2 x double> %i.la, %i.la
  %i.lc = extractelement <2 x double> %foldExtExtBinop463, i64 0
  %i.ld = call double @llvm.fmuladd.f64(double %i.kx, double %i.kx, double %i.lc)
  %i.le = extractelement <2 x double> %i.la, i64 1 ; 3 uses
  %i.lf = call double @llvm.fmuladd.f64(double %i.le, double %i.le, double %i.ld)
  %sqrt.i.i199 = call noundef double @llvm.sqrt.f64(double %i.lf) ; 2 uses
  %i.lg = call noundef double @llvm.fabs.f64(double %sqrt.i.i199)
  %i.lh = fcmp ogt double %i.lg, f0x3E7AD7F29ABCAF48 ; 3 uses
  %i.li = fdiv double 1.000000e+00, %sqrt.i.i199  ; 2 uses
  %i.lj = fmul double %i.kx, %i.li
  %i.lk = insertelement <2 x double> poison, double %i.li, i64 0
  %i.ll = shufflevector <2 x double> %i.lk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lm = fmul <2 x double> %i.la, %i.ll          ; 2 uses
  %i.ln = extractelement <2 x double> %i.lm, i64 1
  %.sroa.19.0 = select i1 %i.lh, double %i.ln, double %i.le
  %i.lo = extractelement <2 x double> %i.lm, i64 0
  %.sroa.11283.0 = select i1 %i.lh, double %i.lo, double %i.lb
  %.sroa.0279.0 = select i1 %i.lh, double %i.lj, double %i.kx
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kv, i64 24
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !595
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !595
  %i.lt = fmul double %i.ls, %.sroa.11283.0
  %i.lu = call double @llvm.fmuladd.f64(double %i.lq, double %.sroa.0279.0, double %i.lt)
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kv, i64 40
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !595
  %i.lx = call noundef double @llvm.fmuladd.f64(double %i.lw, double %.sroa.19.0, double %i.lu)
  %i.ly = fcmp ogt double %i.lx, 0.000000e+00
  br i1 %i.ly, label %bb.bk, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200._crit_edge399

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200._crit_edge399: ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200
  %.pre = load i32, ptr %i.bd, align 8, !tbaa !543
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200._crit_edge399, %bb.bb, %bb.ba
  %i.lz = phi i32 [ %.pre, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200._crit_edge399 ], [ %storemerge348360, %bb.bb ], [ %storemerge348360, %bb.ba ] ; 2 uses
  %i.ma = add nsw i32 %i.lz, 1                    ; 2 uses
  store i32 %i.ma, ptr %i.bd, align 8, !tbaa !543
  %.not.not = icmp slt i32 %i.lz, %.sroa.speculated.i189
  br i1 %.not.not, label %bb.ba, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200._crit_edge, !llvm.loop !11447

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200._crit_edge: ; preds = %bb.bj
  %i.mb = load i32, ptr %i.bc, align 4, !tbaa !543 ; 2 uses
  %i.mc = add nsw i32 %i.mb, 1                    ; 2 uses
  store i32 %i.mc, ptr %i.bc, align 4, !tbaa !543
  %.not = icmp slt i32 %i.mb, %.sroa.speculated11.i188
  br i1 %.not, label %.lr.ph, label %._crit_edge365.split, !llvm.loop !11448

._crit_edge365.split:                             ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200._crit_edge
  %i.md = load i32, ptr %16, align 8, !tbaa !543  ; 2 uses
  %i.me = add nsw i32 %i.md, 1                    ; 2 uses
  store i32 %i.me, ptr %16, align 8, !tbaa !543
  %.not455 = icmp slt i32 %i.md, %.sroa.speculated16.i187
  br i1 %.not455, label %.lr.ph364, label %.preheader.preheader, !llvm.loop !11449

bb.bk:                                            ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200
  %i.mf = load <2 x i32>, ptr %16, align 8, !tbaa !543
  %i.mg = add nsw <2 x i32> %i.mf, splat (i32 1)
  store <2 x i32> %i.mg, ptr %16, align 8, !tbaa !543
  br label %.loopexit.sink.split

.preheader:                                       ; preds = %.preheader.preheader, %bb.ch
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ch ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.mh = getelementptr inbounds nuw [12 x i8], ptr @_ZN7openvdb5v13_04util13COORD_OFFSETSE, i64 %indvars.iv ; 3 uses
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !543
  %i.mj = add nsw i32 %i.mi, %i.fo                ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !543
  %i.mm = add nsw i32 %i.ml, %i.fx                ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !543
  %i.mp = add nsw i32 %i.mo, %i.fz                ; 3 uses
  %.sroa.2.0.insert.ext.i201 = zext i32 %i.mm to i64
  %.sroa.2.0.insert.shift.i202 = shl nuw i64 %.sroa.2.0.insert.ext.i201, 32
  %.sroa.0.0.insert.ext.i203 = zext i32 %i.mj to i64
  %.sroa.0.0.insert.insert.i204 = or disjoint i64 %.sroa.2.0.insert.shift.i202, %.sroa.0.0.insert.ext.i203
  store i64 %.sroa.0.0.insert.insert.i204, ptr %16, align 8
  store i32 %i.mp, ptr %i.bd, align 8, !tbaa !570
  %i.mq = icmp slt i32 %i.mj, %.sroa.speculated16.i
  %i.mr = icmp slt i32 %i.mm, %.sroa.speculated11.i
  %or.cond451 = select i1 %i.mq, i1 true, i1 %i.mr
  br i1 %or.cond451, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread, label %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i

_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i: ; preds = %.preheader
  %i.ms = icmp sge i32 %i.mp, %.sroa.speculated.i
  %i.mt = icmp sge i32 %.sroa.speculated16.i187, %i.mj
  %or.cond.i.not353 = and i1 %i.ms, %i.mt
  %i.mu = icmp sge i32 %.sroa.speculated11.i188, %i.mm
  %or.cond10.i.not350 = select i1 %or.cond.i.not353, i1 %i.mu, i1 false
  %i.mv = icmp sge i32 %.sroa.speculated.i189, %i.mp
  %or.cond343 = select i1 %or.cond10.i.not350, i1 %i.mv, i1 false
  br i1 %or.cond343, label %bb.ch, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread

_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread: ; preds = %.preheader, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i
  %i.mw = invoke noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERf(ptr noundef nonnull align 8 dereferenceable(96) %14, ptr noundef nonnull align 4 dereferenceable(12) %16, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
          to label %bb.bl unwind label %bb.cf

bb.bl:                                            ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread
  %i.mx = load float, ptr %i.h, align 4
  %i.my = fcmp olt float %i.mx, -7.500000e-01
  %or.cond144 = select i1 %i.mw, i1 %i.my, i1 false
  br i1 %or.cond144, label %bb.bm, label %bb.ch

bb.bm:                                            ; preds = %bb.bl
  %i.mz = load <2 x i32>, ptr %16, align 8, !tbaa !543 ; 3 uses
  %i.na = extractelement <2 x i32> %i.mz, i64 1   ; 10 uses
  %i.nb = extractelement <2 x i32> %i.mz, i64 0   ; 7 uses
  %i.nc = sitofp <2 x i32> %i.mz to <2 x double>
  store <2 x double> %i.nc, ptr %17, align 16, !tbaa !595
  %i.nd = load i32, ptr %i.bd, align 8, !tbaa !543 ; 11 uses
  %i.ne = sitofp i32 %i.nd to double
  store double %i.ne, ptr %i.by, align 16, !tbaa !595
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  %i.nf = and i32 %i.nb, -8
  %i.ng = load i32, ptr %i.ay, align 8, !tbaa !543
  %i.nh = icmp eq i32 %i.nf, %i.ng
  br i1 %i.nh, label %bb.bn, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i

bb.bn:                                            ; preds = %bb.bm
  %i.ni = and i32 %i.na, -8
  %i.nj = load i32, ptr %i.ce, align 4, !tbaa !543
  %i.nk = icmp eq i32 %i.ni, %i.nj
  br i1 %i.nk, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.bn
  %i.nl = and i32 %i.nd, -8
  %i.nm = load i32, ptr %.sroa.6.0..sroa_idx.i.i147, align 8, !tbaa !543
  %i.nn = icmp eq i32 %i.nl, %i.nm
  br i1 %i.nn, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i
  %i.no = load ptr, ptr %i.ax, align 8, !tbaa !3213 ; 2 uses
  %i.np = shl i32 %i.nb, 6
  %i.nq = and i32 %i.np, 448
  %i.nr = shl i32 %i.na, 3
  %i.ns = and i32 %i.nr, 56
  %i.nt = or disjoint i32 %i.ns, %i.nq
  %i.nu = and i32 %i.nd, 7
  %i.nv = or disjoint i32 %i.nt, %i.nu
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %i.nw
  %.not.i.not.i = icmp eq ptr %i.no, null
  br i1 %.not.i.not.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i, %bb.bn, %bb.bm
  %i.ny = and i32 %i.nb, -128                     ; 3 uses
  %i.nz = load i32, ptr %.06.i.i.i.i.ptr.1.i.i.i148, align 4, !tbaa !543
  %i.oa = icmp eq i32 %i.ny, %i.nz
  br i1 %i.oa, label %bb.bo, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i

bb.bo:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i
  %i.ob = and i32 %i.na, -128
  %i.oc = load i32, ptr %i.cf, align 8, !tbaa !543
  %i.od = icmp eq i32 %i.ob, %i.oc
  br i1 %i.od, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.bo
  %i.oe = and i32 %i.nd, -128
  %i.of = load i32, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i149, align 4, !tbaa !543
  %i.og = icmp eq i32 %i.oe, %i.of
  br i1 %i.og, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i
  %i.oh = load ptr, ptr %i.ci, align 8, !tbaa !1879
  br label %.invoke

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i, %bb.bo, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i
  %i.oi = and i32 %i.nb, -4096                    ; 2 uses
  %i.oj = load i32, ptr %.06.i.i.i.i.ptr.2.i.i.i150, align 8, !tbaa !543
  %i.ok = icmp eq i32 %i.oi, %i.oj
  br i1 %i.ok, label %bb.bp, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i

bb.bp:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i
  %i.ol = and i32 %i.na, -4096
  %i.om = load i32, ptr %i.cg, align 4, !tbaa !543
  %i.on = icmp eq i32 %i.ol, %i.om
  br i1 %i.on, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.bp
  %i.oo = and i32 %i.nd, -4096
  %i.op = load i32, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i151, align 8, !tbaa !543
  %i.oq = icmp eq i32 %i.oo, %i.op
  br i1 %i.oq, label %bb.bq, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i

bb.bq:                                            ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i
  %i.or = load ptr, ptr %i.ch, align 8, !tbaa !1857 ; 2 uses
  %i.os = shl i32 %i.nb, 3
  %i.ot = and i32 %i.os, 31744
  %i.ou = lshr i32 %i.na, 2
  %i.ov = and i32 %i.ou, 992
  %i.ow = or disjoint i32 %i.ov, %i.ot            ; 2 uses
  %i.ox = lshr i32 %i.nd, 7
  %i.oy = and i32 %i.ox, 31
  %i.oz = or disjoint i32 %i.oy, %i.ow            ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.or, i64 262144
  %i.pb = lshr i32 %i.ow, 6
  %i.pc = zext nneg i32 %i.pb to i64
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.pa, i64 %i.pc
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !791
  %i.pf = and i32 %i.oz, 63
  %i.pg = zext nneg i32 %i.pf to i64
  %i.ph = shl nuw i64 1, %i.pg
  %i.pi = and i64 %i.pe, %i.ph
  %.not.i.i.i = icmp eq i64 %i.pi, 0
  %i.pj = zext nneg i32 %i.oz to i64
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.pj ; 3 uses
  br i1 %.not.i.i.i, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !570
  %i.pm = and i32 %i.na, -128
  %i.pn = and i32 %i.nd, -128
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.pm to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.ny to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i.i, ptr %.06.i.i.i.i.ptr.1.i.i.i148, align 4
  store i32 %i.pn, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i149, align 4, !tbaa !570
  store ptr %i.pl, ptr %i.ci, align 8, !tbaa !1879
  %i.po = load ptr, ptr %i.pk, align 8, !tbaa !570
  br label %.invoke

_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i, %bb.bp, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i
  %i.pp = load ptr, ptr %i.az, align 8, !tbaa !1827 ; 6 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 56
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !543
  %i.ps = sub nsw i32 %i.na, %i.pr
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pp, i64 60
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !543
  %i.pv = sub nsw i32 %i.nd, %i.pu
  %i.pw = and i32 %i.ps, -4096                    ; 4 uses
  %i.px = and i32 %i.pv, -4096                    ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !722 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pp, i64 8 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.pz, null
  br i1 %.not12.i.i.i.i.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pp, i64 52
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !543
  %i.qd = sub nsw i32 %i.nb, %i.qc
  %i.qe = and i32 %i.qd, -4096                    ; 4 uses
  br label %bb.bs

bb.bs:                                            ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.014.i.i.i.i.i = phi ptr [ %i.pz, %.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i ] ; 7 uses
  %.0813.i.i.i.i.i = phi ptr [ %i.qa, %.lr.ph.i.i.i.i.i ], [ %.19.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i ]
  %i.qf = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 32
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !543 ; 2 uses
  %i.qh = icmp slt i32 %i.qg, %i.qe
  br i1 %i.qh, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.qi = icmp sgt i32 %i.qg, %i.qe
  br i1 %i.qi, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.qj = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 36
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !543 ; 2 uses
  %i.ql = icmp slt i32 %i.qk, %i.pw
  br i1 %i.ql, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.qm = icmp sgt i32 %i.qk, %i.pw
  br i1 %i.qm, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i: ; preds = %bb.bv
  %i.qn = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 40
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !543
  %i.qp = icmp slt i32 %i.qo, %i.px
  br i1 %i.qp, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.bu, %bb.bs
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.bv, %bb.bt
  %.sink.i.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ 16, %bb.bv ], [ 16, %bb.bt ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ]
  %.19.i.i.i.i.i = phi ptr [ %.0813.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ %.014.i.i.i.i.i, %bb.bv ], [ %.014.i.i.i.i.i, %bb.bt ], [ %.014.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ] ; 7 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 %.sink.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %i.qq, align 8, !tbaa !1171 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, label %bb.bs, !llvm.loop !308

_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i
  %i.qr = icmp eq ptr %.19.i.i.i.i.i, %i.qa
  br i1 %i.qr, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.bw

bb.bw:                                            ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i
  %i.qs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !543 ; 2 uses
  %i.qu = icmp slt i32 %i.qe, %i.qt
  br i1 %i.qu, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.qv = icmp sgt i32 %i.qe, %i.qt
  br i1 %i.qv, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.qw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 36
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !543 ; 2 uses
  %i.qy = icmp slt i32 %i.pw, %i.qx
  br i1 %i.qy, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.qz = icmp sgt i32 %i.pw, %i.qx
  br i1 %i.qz, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.bz
  %i.ra = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !543
  %i.rc = icmp slt i32 %i.px, %i.rb
  br i1 %i.rc, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.by, %bb.bw, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i
  %i.rd = getelementptr inbounds nuw i8, ptr %i.pp, i64 48
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.bz, %bb.bx
  %i.re = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 48 ; 2 uses
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !1819 ; 2 uses
  %.not.i230 = icmp eq ptr %i.rf, null
  br i1 %.not.i230, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.rg = and i32 %i.na, -4096
  %i.rh = and i32 %i.nd, -4096
  %.sroa.2.0.insert.ext.i.i231 = zext i32 %i.rg to i64
  %.sroa.2.0.insert.shift.i.i232 = shl nuw i64 %.sroa.2.0.insert.ext.i.i231, 32
  %.sroa.0.0.insert.ext.i.i233 = zext i32 %i.oi to i64
  %.sroa.0.0.insert.insert.i.i234 = or disjoint i64 %.sroa.2.0.insert.shift.i.i232, %.sroa.0.0.insert.ext.i.i233
  store i64 %.sroa.0.0.insert.insert.i.i234, ptr %.06.i.i.i.i.ptr.2.i.i.i150, align 8
  store i32 %i.rh, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i151, align 8, !tbaa !570
  store ptr %i.rf, ptr %i.ch, align 8, !tbaa !1857
  %i.ri = load ptr, ptr %i.re, align 8, !tbaa !1821 ; 2 uses
  %i.rj = shl i32 %i.nb, 3
  %i.rk = and i32 %i.rj, 31744
  %i.rl = lshr i32 %i.na, 2
  %i.rm = and i32 %i.rl, 992
  %i.rn = or disjoint i32 %i.rm, %i.rk            ; 2 uses
  %i.ro = lshr i32 %i.nd, 7
  %i.rp = and i32 %i.ro, 31
  %i.rq = or disjoint i32 %i.rp, %i.rn            ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ri, i64 262144
  %i.rs = lshr i32 %i.rn, 6
  %i.rt = zext nneg i32 %i.rs to i64
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %i.rt
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !791
  %i.rw = and i32 %i.rq, 63
  %i.rx = zext nneg i32 %i.rw to i64
  %i.ry = shl nuw i64 1, %i.rx
  %i.rz = and i64 %i.rv, %i.ry
  %.not.i.i235 = icmp eq i64 %i.rz, 0
  %i.sa = zext nneg i32 %i.rq to i64
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.ri, i64 %i.sa ; 3 uses
  br i1 %.not.i.i235, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !570
  %i.sd = and i32 %i.na, -128
  %i.se = and i32 %i.nd, -128
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.sd to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.ny to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %.06.i.i.i.i.ptr.1.i.i.i148, align 4
  store i32 %i.se, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i149, align 4, !tbaa !570
  store ptr %i.sc, ptr %i.ci, align 8, !tbaa !1879
  %i.sf = load ptr, ptr %i.sb, align 8, !tbaa !570
  br label %.invoke

.invoke:                                          ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i, %bb.br, %bb.cb
  %i.sg = phi ptr [ %i.sf, %bb.cb ], [ %i.po, %bb.br ], [ %i.oh, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i ]
  %i.sh = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIiLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKiRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.sg, ptr noundef nonnull align 4 dereferenceable(12) %16, ptr noundef nonnull align 8 dereferenceable(96) %15)
          to label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit unwind label %bb.cg

bb.cc:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.si = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 56
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit: ; preds = %.invoke, %bb.bq, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i, %bb.cc, %bb.ca, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i
  %.1.i.i = phi ptr [ %i.nx, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i ], [ %i.sb, %bb.ca ], [ %i.sh, %.invoke ], [ %i.pk, %bb.bq ], [ %i.rd, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i ], [ %i.si, %bb.cc ]
  %i.sj = load i32, ptr %.1.i.i, align 4, !tbaa !543
  call void @llvm.experimental.noalias.scope.decl(metadata !11463)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !11463
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !11463
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !11463
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !11463
  %i.sk = sext i32 %i.sj to i64                   ; 2 uses
  %i.sl = load ptr, ptr %i.bz, align 8, !tbaa !1009, !noalias !11463 ; 2 uses
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !1053, !noalias !11463 ; 3 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sl, i64 16
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !1055, !noalias !11463
  %i.sp = getelementptr inbounds nuw [16 x i8], ptr %i.so, i64 %i.sk ; 3 uses
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !543, !noalias !11463
  %i.sr = zext i32 %i.sq to i64
  %i.ss = getelementptr inbounds nuw [12 x i8], ptr %i.sm, i64 %i.sr ; 2 uses
  %i.st = load <2 x float>, ptr %i.ss, align 4, !tbaa !572, !noalias !11463
  %i.su = fpext <2 x float> %i.st to <2 x double>
  store <2 x double> %i.su, ptr %2, align 16, !tbaa !595, !noalias !11463
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !572, !noalias !11463
  %i.sx = fpext float %i.sw to double
  store double %i.sx, ptr %i.cj, align 16, !tbaa !595, !noalias !11463
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sp, i64 4
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !543, !noalias !11463
  %i.ta = zext i32 %i.sz to i64
  %i.tb = getelementptr inbounds nuw [12 x i8], ptr %i.sm, i64 %i.ta ; 2 uses
  %i.tc = load <2 x float>, ptr %i.tb, align 4, !tbaa !572, !noalias !11463
  %i.td = fpext <2 x float> %i.tc to <2 x double>
  store <2 x double> %i.td, ptr %3, align 16, !tbaa !595, !noalias !11463
  %i.te = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %i.tf = load float, ptr %i.te, align 4, !tbaa !572, !noalias !11463
  %i.tg = fpext float %i.tf to double
  store double %i.tg, ptr %i.ck, align 16, !tbaa !595, !noalias !11463
  %i.th = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !543, !noalias !11463
  %i.tj = zext i32 %i.ti to i64
  %i.tk = getelementptr inbounds nuw [12 x i8], ptr %i.sm, i64 %i.tj ; 2 uses
  %i.tl = load <2 x float>, ptr %i.tk, align 4, !tbaa !572, !noalias !11463
  %i.tm = fpext <2 x float> %i.tl to <2 x double>
  store <2 x double> %i.tm, ptr %4, align 16, !tbaa !595, !noalias !11463
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  %i.to = load float, ptr %i.tn, align 4, !tbaa !572, !noalias !11463
  %i.tp = fpext float %i.to to double
  store double %i.tp, ptr %i.cl, align 16, !tbaa !595, !noalias !11463
  invoke void @_ZN7openvdb5v13_04math29closestPointOnTriangleToPointERKNS1_4Vec3IdEES5_S5_S5_RS3_(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.noexc216 unwind label %bb.cg

.noexc216:                                        ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit
  %i.tq = load ptr, ptr %i.bz, align 8, !tbaa !1009, !noalias !11463 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !1055
  %i.tt = getelementptr inbounds nuw [16 x i8], ptr %i.ts, i64 %i.sk
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 12
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !543 ; 2 uses
  %.not.i210 = icmp eq i32 %i.tv, -1
  br i1 %.not.i210, label %.noexc216._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit222_crit_edge, label %bb.cd

.noexc216._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit222_crit_edge: ; preds = %.noexc216
  %.sroa.0.0.copyload237.pre = load double, ptr %17, align 16
  %.sroa.7.0.copyload239.pre = load double, ptr %i.bx, align 8
  %.sroa.9.0.copyload241.pre = load double, ptr %i.by, align 16
  br label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit222

bb.cd:                                            ; preds = %.noexc216
  %i.tw = load ptr, ptr %i.tq, align 8, !tbaa !1053
  %i.tx = zext i32 %i.tv to i64
  %i.ty = getelementptr inbounds nuw [12 x i8], ptr %i.tw, i64 %i.tx ; 2 uses
  %i.tz = load <2 x float>, ptr %i.ty, align 4, !tbaa !572
  %i.ua = fpext <2 x float> %i.tz to <2 x double>
  store <2 x double> %i.ua, ptr %3, align 16, !tbaa !595, !noalias !11463
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !572
  %i.ud = fpext float %i.uc to double
  store double %i.ud, ptr %i.ck, align 16, !tbaa !595, !noalias !11463
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !11463
  invoke void @_ZN7openvdb5v13_04math29closestPointOnTriangleToPointERKNS1_4Vec3IdEES5_S5_S5_RS3_(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.noexc217 unwind label %bb.cg

.noexc217:                                        ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !noalias !11463
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !11463
  %i.ue = load double, ptr %i.cl, align 16, !tbaa !595, !noalias !11464
  %i.uf = load double, ptr %i.cm, align 16, !tbaa !595, !alias.scope !11463, !noalias !11465
  %.sroa.615.0.copyload.i213 = load double, ptr %i.bx, align 8, !noalias !11463 ; 3 uses
  %.sroa.013.0.copyload.i211 = load double, ptr %17, align 16, !noalias !11463 ; 3 uses
  %.sroa.917.0.copyload.i215 = load double, ptr %i.by, align 16, !noalias !11463 ; 3 uses
  %i.ug = load <2 x double>, ptr %4, align 16, !tbaa !595, !noalias !11464 ; 2 uses
  %i.uh = load <2 x double>, ptr %20, align 16, !tbaa !595, !alias.scope !11463, !noalias !11465 ; 2 uses
  %i.ui = insertelement <2 x double> poison, double %.sroa.013.0.copyload.i211, i64 0
  %i.uj = shufflevector <2 x double> %i.ui, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uk = shufflevector <2 x double> %i.ug, <2 x double> %i.uh, <2 x i32> <i32 0, i32 2>
  %i.ul = fsub <2 x double> %i.uj, %i.uk          ; 2 uses
  %i.um = insertelement <2 x double> poison, double %.sroa.615.0.copyload.i213, i64 0
  %i.un = shufflevector <2 x double> %i.um, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uo = shufflevector <2 x double> %i.ug, <2 x double> %i.uh, <2 x i32> <i32 1, i32 3>
  %i.up = fsub <2 x double> %i.un, %i.uo          ; 2 uses
  %i.uq = insertelement <2 x double> poison, double %.sroa.917.0.copyload.i215, i64 0
  %i.ur = shufflevector <2 x double> %i.uq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.us = insertelement <2 x double> poison, double %i.ue, i64 0
  %i.ut = insertelement <2 x double> %i.us, double %i.uf, i64 1
  %i.uu = fsub <2 x double> %i.ur, %i.ut          ; 2 uses
  %i.uv = fmul <2 x double> %i.up, %i.up
  %i.uw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ul, <2 x double> %i.ul, <2 x double> %i.uv)
  %i.ux = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uu, <2 x double> %i.uu, <2 x double> %i.uw) ; 2 uses
  %i.uy = extractelement <2 x double> %i.ux, i64 0
  %i.uz = extractelement <2 x double> %i.ux, i64 1
  %i.va = fcmp olt double %i.uy, %i.uz
  br i1 %i.va, label %bb.ce, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit222

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
  %21 = load <3 x double>, ptr %20, align 16      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  %i.vb = insertelement <2 x double> %i.gg, double %.sroa.0.0.copyload237, i64 1
  %i.vc = shufflevector <3 x double> %21, <3 x double> poison, <2 x i32> zeroinitializer
  %i.vd = fsub <2 x double> %i.vb, %i.vc          ; 4 uses
  %i.ve = insertelement <2 x double> %i.fv, double %.sroa.7.0.copyload239, i64 1
  %22 = shufflevector <3 x double> %21, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.vf = fsub <2 x double> %i.ve, %22            ; 4 uses
  %i.vg = insertelement <2 x double> %i.gh, double %.sroa.9.0.copyload241, i64 1
  %23 = shufflevector <3 x double> %21, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.vh = fsub <2 x double> %i.vg, %23            ; 4 uses
  %i.vi = fmul <2 x double> %i.vf, %i.vf
  %i.vj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vd, <2 x double> %i.vd, <2 x double> %i.vi)
  %i.vk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vh, <2 x double> %i.vh, <2 x double> %i.vj)
  %i.vl = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.vk) ; 2 uses
  %i.vm = fdiv <2 x double> splat (double 1.000000e+00), %i.vl ; 3 uses
  %i.vn = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.vl)
  %i.vo = fcmp ogt <2 x double> %i.vn, splat (double f0x3E7AD7F29ABCAF48) ; 3 uses
  %i.vp = shufflevector <2 x double> %i.vh, <2 x double> %i.vd, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.vq = shufflevector <2 x double> %i.vm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vr = fmul <2 x double> %i.vp, %i.vq
  %i.vs = shufflevector <2 x i1> %i.vo, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.vt = select <2 x i1> %i.vs, <2 x double> %i.vr, <2 x double> %i.vp ; 2 uses
  %i.vu = fmul <2 x double> %i.vf, %i.vm
  %i.vv = select <2 x i1> %i.vo, <2 x double> %i.vu, <2 x double> %i.vf ; 2 uses
  %i.vw = shufflevector <2 x double> %i.vh, <2 x double> %i.vd, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.vx = shufflevector <2 x double> %i.vm, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.vy = fmul <2 x double> %i.vw, %i.vx
  %i.vz = shufflevector <2 x i1> %i.vo, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.wa = select <2 x i1> %i.vz, <2 x double> %i.vy, <2 x double> %i.vw ; 2 uses
  %shift = shufflevector <2 x double> %i.vv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop465 = fmul <2 x double> %i.vv, %shift
  %i.wb = extractelement <2 x double> %foldExtExtBinop465, i64 0
  %i.wc = extractelement <2 x double> %i.vt, i64 1
  %i.wd = extractelement <2 x double> %i.wa, i64 1
  %i.we = call double @llvm.fmuladd.f64(double %i.wd, double %i.wc, double %i.wb)
  %i.wf = extractelement <2 x double> %i.vt, i64 0
  %i.wg = extractelement <2 x double> %i.wa, i64 0
  %i.wh = call noundef double @llvm.fmuladd.f64(double %i.wg, double %i.wf, double %i.we)
  %i.wi = fcmp ogt double %i.wh, 0.000000e+00
  br i1 %i.wi, label %.loopexit.sink.split, label %bb.ch

bb.cf:                                            ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread
  %i.wj = landingpad { ptr, i32 }
          cleanup
  br label %.body157

bb.cg:                                            ; preds = %.invoke, %bb.cd, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit
  %i.wk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %.body157

bb.ch:                                            ; preds = %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i, %bb.bl, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit222
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 26
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !11456

.loopexit.sink.split:                             ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit222, %bb.bk
  %i.wl = load float, ptr %i.fd, align 4, !tbaa !572
  %i.wm = fneg float %i.wl
  store float %i.wm, ptr %i.fd, align 4, !tbaa !572
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ch, %.loopexit.sink.split, %.lr.ph384
  %i.wn = add i32 %.sroa.5.0382, 1                ; 4 uses
  %i.wo = lshr i32 %i.wn, 6                       ; 3 uses
  %i.wp = icmp ugt i32 %i.wn, 511
  br i1 %i.wp, label %._crit_edge385, label %bb.ci

bb.ci:                                            ; preds = %.loopexit
  %i.wq = and i32 %i.wn, 63
  %i.wr = zext nneg i32 %i.wo to i64              ; 8 uses
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.wr
  %i.wt = load i64, ptr %i.ws, align 8, !tbaa !791 ; 2 uses
  %i.wu = zext nneg i32 %i.wq to i64              ; 2 uses
  %i.wv = shl nuw i64 1, %i.wu
  %i.ww = and i64 %i.wt, %i.wv
  %.not.i.i.i.i = icmp eq i64 %i.ww, 0
  br i1 %.not.i.i.i.i, label %bb.cj, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

bb.cj:                                            ; preds = %bb.ci
  %i.wx = shl nsw i64 -1, %i.wu
  %i.wy = and i64 %i.wt, %i.wx                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.wy, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i223.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i223.preheader:                      ; preds = %bb.cj
  %exitcond.not.i.i.i.i459 = icmp eq i32 %i.wo, 7
  br i1 %exitcond.not.i.i.i.i459, label %._crit_edge385, label %.lr.ph461

.lr.ph.i.i.i.i223:                                ; preds = %.lr.ph461
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge385, label %.lr.ph461.1

.lr.ph461.1:                                      ; preds = %.lr.ph.i.i.i.i223
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.wr, 2 ; 3 uses
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.1
  %i.xa = load i64, ptr %i.wz, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.xa, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i223.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i223.1:                              ; preds = %.lr.ph461.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge385, label %.lr.ph461.2

.lr.ph461.2:                                      ; preds = %.lr.ph.i.i.i.i223.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.wr, 3 ; 3 uses
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.2
  %i.xc = load i64, ptr %i.xb, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.xc, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i223.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i223.2:                              ; preds = %.lr.ph461.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge385, label %.lr.ph461.3

.lr.ph461.3:                                      ; preds = %.lr.ph.i.i.i.i223.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.wr, 4 ; 3 uses
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.3
  %i.xe = load i64, ptr %i.xd, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.xe, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i223.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i223.3:                              ; preds = %.lr.ph461.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge385, label %.lr.ph461.4

.lr.ph461.4:                                      ; preds = %.lr.ph.i.i.i.i223.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.wr, 5 ; 3 uses
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.4
  %i.xg = load i64, ptr %i.xf, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.xg, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i223.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i223.4:                              ; preds = %.lr.ph461.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge385, label %.lr.ph461.5

.lr.ph461.5:                                      ; preds = %.lr.ph.i.i.i.i223.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.wr, 6 ; 3 uses
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.5
  %i.xi = load i64, ptr %i.xh, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.xi, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i223.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i223.5:                              ; preds = %.lr.ph461.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge385, label %.lr.ph461.6

.lr.ph461.6:                                      ; preds = %.lr.ph.i.i.i.i223.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.wr, 7 ; 2 uses
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.6
  %i.xk = load i64, ptr %i.xj, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.xk, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge385, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph461:                                        ; preds = %.lr.ph.i.i.i.i223.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.wr, 1 ; 3 uses
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i
  %i.xm = load i64, ptr %i.xl, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.xm, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i223, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph461.6, %.lr.ph461.5, %.lr.ph461.4, %.lr.ph461.3, %.lr.ph461.2, %.lr.ph461.1, %.lr.ph461
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph461 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph461.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph461.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph461.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph461.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph461.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph461.6 ]
  %.lcssa = phi i64 [ %i.xm, %.lr.ph461 ], [ %i.xa, %.lr.ph461.1 ], [ %i.xc, %.lr.ph461.2 ], [ %i.xe, %.lr.ph461.3 ], [ %i.xg, %.lr.ph461.4 ], [ %i.xi, %.lr.ph461.5 ], [ %i.xk, %.lr.ph461.6 ]
  %i.xn = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.cj
  %.016.lcssa.i.i.i.i = phi i32 [ %i.wo, %bb.cj ], [ %i.xn, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.wy, %bb.cj ], [ %.lcssa, %.critedge.loopexit.i.i.i.i ]
  %i.xo = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.xp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.xq = trunc nuw nsw i64 %i.xp to i32
  %i.xr = or disjoint i32 %i.xo, %i.xq
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit: ; preds = %bb.ci, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.xr, %.critedge.i.i.i.i ], [ %i.wn, %bb.ci ] ; 2 uses
  %.not346 = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not346, label %._crit_edge385, label %.lr.ph384

._crit_edge385:                                   ; preds = %.loopexit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit, %.lr.ph.i.i.i.i223.preheader, %.lr.ph461.6, %.lr.ph.i.i.i.i223, %.lr.ph.i.i.i.i223.1, %.lr.ph.i.i.i.i223.2, %.lr.ph.i.i.i.i223.3, %.lr.ph.i.i.i.i223.4, %.lr.ph.i.i.i.i223.5, %bb.au
  %i.xs = add nuw i64 %.0118386, 1                ; 2 uses
  %exitcond398.not = icmp eq i64 %i.xs, %i.bt
  br i1 %exitcond398.not, label %._crit_edge388, label %bb.ag, !llvm.loop !11457

.body157:                                         ; preds = %bb.aw, %bb.bi, %bb.cg, %bb.cf, %bb.ay, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i, %bb.av, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i162, %bb.ax, %bb.y, %bb.ab, %bb.x
  %.pn133.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.x ], [ %i.bl, %bb.y ], [ %i.bq, %bb.ab ], [ %i.et, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i162 ], [ %i.kt, %bb.bi ], [ %i.fi, %bb.aw ], [ %i.du, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ], [ %i.fj, %bb.ax ], [ %i.fk, %bb.ay ], [ %i.fh, %bb.av ], [ %i.wk, %bb.cg ], [ %i.wj, %bb.cf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %15, align 8, !tbaa !545
  %i.xt = load ptr, ptr %i.ah, align 8, !tbaa !3207 ; 2 uses
  %.not.i224 = icmp eq ptr %i.xt, null
  br i1 %.not.i224, label %.body, label %bb.ck

bb.ck:                                            ; preds = %.body157
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %15, ptr %i.b, align 8, !tbaa !3208
  %i.xv = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.xu, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i225 unwind label %bb.cl, !inline_history !3214 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i225: ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.body

bb.cl:                                            ; preds = %bb.ck
end_hunk_1
begin_hunk_2_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSD_26QuadAndTriangleDataAdapterINSC_4math4Vec3IfEENSR_4Vec4IjEEEEEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
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
  %i.bx = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
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
  %.0118384 = phi i64 [ %i.bs, %.lr.ph385 ], [ %i.xs, %._crit_edge383 ] ; 2 uses
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
end_hunk_2
begin_hunk_3_@_ZNK7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS1_26QuadAndTriangleDataAdapterINS0_4math4Vec3IfEENSF_4Vec4IjEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
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
  %storemerge365 = phi i32 [ %i.me, %._crit_edge363.split ], [ %.sroa.speculated16.i, %bb.az ]
  %i.gi = shl i32 %storemerge365, 6
  %i.gj = and i32 %i.gi, 448
  store i32 %.sroa.speculated11.i, ptr %i.bc, align 4, !tbaa !543
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph362, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge
  %storemerge345360 = phi i32 [ %.sroa.speculated11.i, %.lr.ph362 ], [ %i.mc, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge ]
  %i.gk = shl i32 %storemerge345360, 3
  %i.gl = and i32 %i.gk, 56
  %i.gm = or disjoint i32 %i.gl, %i.gj
  store i32 %.sroa.speculated.i, ptr %i.bd, align 8, !tbaa !543
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph, %bb.bj
  %storemerge346358 = phi i32 [ %.sroa.speculated.i, %.lr.ph ], [ %i.ma, %bb.bj ] ; 4 uses
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
  %i.jd = load double, ptr %i.cd, align 16, !tbaa !595, !alias.scope !11601, !noalias !11603
  %i.je = load <2 x double>, ptr %i.bx, align 8
  %i.jf = load <2 x double>, ptr %17, align 16
  %.sroa.917.0.copyload.i = load double, ptr %i.by, align 16, !noalias !11601
  %i.jg = load <2 x double>, ptr %9, align 16, !tbaa !595, !noalias !11602 ; 2 uses
  %i.jh = load <2 x double>, ptr %19, align 16, !tbaa !595, !alias.scope !11601, !noalias !11603 ; 2 uses
  %i.ji = shufflevector <2 x double> %i.jf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jj = shufflevector <2 x double> %i.jg, <2 x double> %i.jh, <2 x i32> <i32 0, i32 2>
  %i.jk = fsub <2 x double> %i.ji, %i.jj          ; 2 uses
  %i.jl = shufflevector <2 x double> %i.je, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jm = shufflevector <2 x double> %i.jg, <2 x double> %i.jh, <2 x i32> <i32 1, i32 3>
  %i.jn = fsub <2 x double> %i.jl, %i.jm          ; 2 uses
  %i.jo = insertelement <2 x double> poison, double %.sroa.917.0.copyload.i, i64 0
  %i.jp = shufflevector <2 x double> %i.jo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jq = insertelement <2 x double> poison, double %i.jc, i64 0
  %i.jr = insertelement <2 x double> %i.jq, double %i.jd, i64 1
  %i.js = fsub <2 x double> %i.jp, %i.jr          ; 2 uses
  %i.jt = fmul <2 x double> %i.jn, %i.jn
  %i.ju = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jk, <2 x double> %i.jk, <2 x double> %i.jt)
  %i.jv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.js, <2 x double> %i.js, <2 x double> %i.ju) ; 2 uses
  %i.jw = extractelement <2 x double> %i.jv, i64 0
  %i.jx = extractelement <2 x double> %i.jv, i64 1
  %i.jy = fcmp olt double %i.jw, %i.jx
  br i1 %i.jy, label %bb.bf, label %bb.bg

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
  %i.jz = load ptr, ptr %i.bg, align 8, !tbaa !3195
  %i.ka = getelementptr inbounds nuw [24 x i8], ptr %i.jz, i64 %i.he ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 24 ; 2 uses
  %.sroa.9261.0.copyload263 = load double, ptr %i.by, align 16
  %i.kc = load <2 x double>, ptr %17, align 16
  %i.kd = load <2 x double>, ptr %i.hg, align 8, !tbaa !595, !noalias !11604
  %i.ke = fsub <2 x double> %i.kc, %i.kd          ; 5 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !595, !noalias !11604
  %i.kh = fsub double %.sroa.9261.0.copyload263, %i.kg ; 4 uses
  %i.ki = extractelement <2 x double> %i.ke, i64 0 ; 2 uses
  store <2 x double> %i.ke, ptr %i.kb, align 8
  %.sroa.9261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ka, i64 40 ; 2 uses
  store double %i.kh, ptr %.sroa.9261.0..sroa_idx, align 8
  %foldExtExtBinop = fmul <2 x double> %i.ke, %i.ke
  %i.kj = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.kk = call double @llvm.fmuladd.f64(double %i.ki, double %i.ki, double %i.kj)
  %i.kl = call double @llvm.fmuladd.f64(double %i.kh, double %i.kh, double %i.kk)
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.kl) ; 2 uses
  %i.km = call noundef double @llvm.fabs.f64(double %sqrt.i.i)
  %i.kn = fcmp ogt double %i.km, f0x3E7AD7F29ABCAF48
  br i1 %i.kn, label %bb.bh, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198

bb.bh:                                            ; preds = %bb.bg
  %i.ko = fdiv double 1.000000e+00, %sqrt.i.i     ; 2 uses
  %i.kp = fmul double %i.kh, %i.ko
  %i.kq = insertelement <2 x double> poison, double %i.ko, i64 0
  %i.kr = shufflevector <2 x double> %i.kq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ks = fmul <2 x double> %i.ke, %i.kr
  store <2 x double> %i.ks, ptr %i.kb, align 8, !tbaa !595
  store double %i.kp, ptr %.sroa.9261.0..sroa_idx, align 8, !tbaa !595
  br label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198

bb.bi:                                            ; preds = %bb.be, %bb.bd
  %i.kt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %.body155

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198: ; preds = %._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198_crit_edge, %bb.bg, %bb.bh
  %.pre-phi = phi i64 [ %.pre401, %._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198_crit_edge ], [ %i.he, %bb.bg ], [ %i.he, %bb.bh ]
  %i.ku = load ptr, ptr %i.bg, align 8, !tbaa !3195
  %i.kv = getelementptr inbounds nuw [24 x i8], ptr %i.ku, i64 %.pre-phi ; 5 uses
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !595, !noalias !11605
  %i.kx = fsub double %i.fu, %i.kw                ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.kz = load <2 x double>, ptr %i.ky, align 8, !tbaa !595, !noalias !11605
  %i.la = fsub <2 x double> %i.fv, %i.kz          ; 5 uses
  %i.lb = extractelement <2 x double> %i.la, i64 0
  %foldExtExtBinop461 = fmul <2 x double> %i.la, %i.la
  %i.lc = extractelement <2 x double> %foldExtExtBinop461, i64 0
  %i.ld = call double @llvm.fmuladd.f64(double %i.kx, double %i.kx, double %i.lc)
  %i.le = extractelement <2 x double> %i.la, i64 1 ; 3 uses
  %i.lf = call double @llvm.fmuladd.f64(double %i.le, double %i.le, double %i.ld)
  %sqrt.i.i197 = call noundef double @llvm.sqrt.f64(double %i.lf) ; 2 uses
  %i.lg = call noundef double @llvm.fabs.f64(double %sqrt.i.i197)
  %i.lh = fcmp ogt double %i.lg, f0x3E7AD7F29ABCAF48 ; 3 uses
  %i.li = fdiv double 1.000000e+00, %sqrt.i.i197  ; 2 uses
  %i.lj = fmul double %i.kx, %i.li
  %i.lk = insertelement <2 x double> poison, double %i.li, i64 0
  %i.ll = shufflevector <2 x double> %i.lk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lm = fmul <2 x double> %i.la, %i.ll          ; 2 uses
  %i.ln = extractelement <2 x double> %i.lm, i64 1
  %.sroa.19.0 = select i1 %i.lh, double %i.ln, double %i.le
  %i.lo = extractelement <2 x double> %i.lm, i64 0
  %.sroa.11281.0 = select i1 %i.lh, double %i.lo, double %i.lb
  %.sroa.0277.0 = select i1 %i.lh, double %i.lj, double %i.kx
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kv, i64 24
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !595
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !595
  %i.lt = fmul double %i.ls, %.sroa.11281.0
  %i.lu = call double @llvm.fmuladd.f64(double %i.lq, double %.sroa.0277.0, double %i.lt)
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kv, i64 40
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !595
  %i.lx = call noundef double @llvm.fmuladd.f64(double %i.lw, double %.sroa.19.0, double %i.lu)
  %i.ly = fcmp ogt double %i.lx, 0.000000e+00
  br i1 %i.ly, label %bb.bk, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge397

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge397: ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198
  %.pre = load i32, ptr %i.bd, align 8, !tbaa !543
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge397, %bb.bb, %bb.ba
  %i.lz = phi i32 [ %.pre, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge397 ], [ %storemerge346358, %bb.bb ], [ %storemerge346358, %bb.ba ] ; 2 uses
  %i.ma = add nsw i32 %i.lz, 1                    ; 2 uses
  store i32 %i.ma, ptr %i.bd, align 8, !tbaa !543
  %.not.not = icmp slt i32 %i.lz, %.sroa.speculated.i187
  br i1 %.not.not, label %bb.ba, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge, !llvm.loop !11590

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge: ; preds = %bb.bj
  %i.mb = load i32, ptr %i.bc, align 4, !tbaa !543 ; 2 uses
  %i.mc = add nsw i32 %i.mb, 1                    ; 2 uses
  store i32 %i.mc, ptr %i.bc, align 4, !tbaa !543
  %.not = icmp slt i32 %i.mb, %.sroa.speculated11.i186
  br i1 %.not, label %.lr.ph, label %._crit_edge363.split, !llvm.loop !11591

._crit_edge363.split:                             ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge
  %i.md = load i32, ptr %16, align 8, !tbaa !543  ; 2 uses
  %i.me = add nsw i32 %i.md, 1                    ; 2 uses
  store i32 %i.me, ptr %16, align 8, !tbaa !543
  %.not453 = icmp slt i32 %i.md, %.sroa.speculated16.i185
  br i1 %.not453, label %.lr.ph362, label %.preheader.preheader, !llvm.loop !11592

bb.bk:                                            ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198
  %i.mf = load <2 x i32>, ptr %16, align 8, !tbaa !543
  %i.mg = add nsw <2 x i32> %i.mf, splat (i32 1)
  store <2 x i32> %i.mg, ptr %16, align 8, !tbaa !543
  br label %.loopexit.sink.split

.preheader:                                       ; preds = %.preheader.preheader, %bb.ch
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ch ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.mh = getelementptr inbounds nuw [12 x i8], ptr @_ZN7openvdb5v13_04util13COORD_OFFSETSE, i64 %indvars.iv ; 3 uses
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !543
  %i.mj = add nsw i32 %i.mi, %i.fo                ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !543
  %i.mm = add nsw i32 %i.ml, %i.fx                ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !543
  %i.mp = add nsw i32 %i.mo, %i.fz                ; 3 uses
  %.sroa.2.0.insert.ext.i199 = zext i32 %i.mm to i64
  %.sroa.2.0.insert.shift.i200 = shl nuw i64 %.sroa.2.0.insert.ext.i199, 32
  %.sroa.0.0.insert.ext.i201 = zext i32 %i.mj to i64
  %.sroa.0.0.insert.insert.i202 = or disjoint i64 %.sroa.2.0.insert.shift.i200, %.sroa.0.0.insert.ext.i201
  store i64 %.sroa.0.0.insert.insert.i202, ptr %16, align 8
  store i32 %i.mp, ptr %i.bd, align 8, !tbaa !570
  %i.mq = icmp slt i32 %i.mj, %.sroa.speculated16.i
  %i.mr = icmp slt i32 %i.mm, %.sroa.speculated11.i
  %or.cond449 = select i1 %i.mq, i1 true, i1 %i.mr
  br i1 %or.cond449, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread, label %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i

_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i: ; preds = %.preheader
  %i.ms = icmp sge i32 %i.mp, %.sroa.speculated.i
  %i.mt = icmp sge i32 %.sroa.speculated16.i185, %i.mj
  %or.cond.i.not351 = and i1 %i.ms, %i.mt
  %i.mu = icmp sge i32 %.sroa.speculated11.i186, %i.mm
  %or.cond10.i.not348 = select i1 %or.cond.i.not351, i1 %i.mu, i1 false
  %i.mv = icmp sge i32 %.sroa.speculated.i187, %i.mp
  %or.cond341 = select i1 %or.cond10.i.not348, i1 %i.mv, i1 false
  br i1 %or.cond341, label %bb.ch, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread

_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread: ; preds = %.preheader, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i
  %i.mw = invoke noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERd(ptr noundef nonnull align 8 dereferenceable(96) %14, ptr noundef nonnull align 4 dereferenceable(12) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.bl unwind label %bb.cf

bb.bl:                                            ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread
  %i.mx = load double, ptr %i.h, align 8
  %i.my = fcmp olt double %i.mx, -7.500000e-01
  %or.cond = select i1 %i.mw, i1 %i.my, i1 false
  br i1 %or.cond, label %bb.bm, label %bb.ch

bb.bm:                                            ; preds = %bb.bl
  %i.mz = load <2 x i32>, ptr %16, align 8, !tbaa !543 ; 3 uses
  %i.na = extractelement <2 x i32> %i.mz, i64 1   ; 10 uses
  %i.nb = extractelement <2 x i32> %i.mz, i64 0   ; 7 uses
  %i.nc = sitofp <2 x i32> %i.mz to <2 x double>
  store <2 x double> %i.nc, ptr %17, align 16, !tbaa !595
  %i.nd = load i32, ptr %i.bd, align 8, !tbaa !543 ; 11 uses
  %i.ne = sitofp i32 %i.nd to double
  store double %i.ne, ptr %i.by, align 16, !tbaa !595
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  %i.nf = and i32 %i.nb, -8
  %i.ng = load i32, ptr %i.ay, align 8, !tbaa !543
  %i.nh = icmp eq i32 %i.nf, %i.ng
  br i1 %i.nh, label %bb.bn, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i

bb.bn:                                            ; preds = %bb.bm
  %i.ni = and i32 %i.na, -8
  %i.nj = load i32, ptr %i.ce, align 4, !tbaa !543
  %i.nk = icmp eq i32 %i.ni, %i.nj
  br i1 %i.nk, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.bn
  %i.nl = and i32 %i.nd, -8
  %i.nm = load i32, ptr %.sroa.6.0..sroa_idx.i.i145, align 8, !tbaa !543
  %i.nn = icmp eq i32 %i.nl, %i.nm
  br i1 %i.nn, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i
  %i.no = load ptr, ptr %i.ax, align 8, !tbaa !3213 ; 2 uses
  %i.np = shl i32 %i.nb, 6
  %i.nq = and i32 %i.np, 448
  %i.nr = shl i32 %i.na, 3
  %i.ns = and i32 %i.nr, 56
  %i.nt = or disjoint i32 %i.ns, %i.nq
  %i.nu = and i32 %i.nd, 7
  %i.nv = or disjoint i32 %i.nt, %i.nu
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %i.nw
  %.not.i.not.i = icmp eq ptr %i.no, null
  br i1 %.not.i.not.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i, %bb.bn, %bb.bm
  %i.ny = and i32 %i.nb, -128                     ; 3 uses
  %i.nz = load i32, ptr %.06.i.i.i.i.ptr.1.i.i.i146, align 4, !tbaa !543
  %i.oa = icmp eq i32 %i.ny, %i.nz
  br i1 %i.oa, label %bb.bo, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i

bb.bo:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i
  %i.ob = and i32 %i.na, -128
  %i.oc = load i32, ptr %i.cf, align 8, !tbaa !543
  %i.od = icmp eq i32 %i.ob, %i.oc
  br i1 %i.od, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.bo
  %i.oe = and i32 %i.nd, -128
  %i.of = load i32, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i147, align 4, !tbaa !543
  %i.og = icmp eq i32 %i.oe, %i.of
  br i1 %i.og, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i
  %i.oh = load ptr, ptr %i.ci, align 8, !tbaa !1879
  br label %.invoke

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i, %bb.bo, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i
  %i.oi = and i32 %i.nb, -4096                    ; 2 uses
  %i.oj = load i32, ptr %.06.i.i.i.i.ptr.2.i.i.i148, align 8, !tbaa !543
  %i.ok = icmp eq i32 %i.oi, %i.oj
  br i1 %i.ok, label %bb.bp, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i

bb.bp:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i
  %i.ol = and i32 %i.na, -4096
  %i.om = load i32, ptr %i.cg, align 4, !tbaa !543
  %i.on = icmp eq i32 %i.ol, %i.om
  br i1 %i.on, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.bp
  %i.oo = and i32 %i.nd, -4096
  %i.op = load i32, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i149, align 8, !tbaa !543
  %i.oq = icmp eq i32 %i.oo, %i.op
  br i1 %i.oq, label %bb.bq, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i

bb.bq:                                            ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i
  %i.or = load ptr, ptr %i.ch, align 8, !tbaa !1857 ; 2 uses
  %i.os = shl i32 %i.nb, 3
  %i.ot = and i32 %i.os, 31744
  %i.ou = lshr i32 %i.na, 2
  %i.ov = and i32 %i.ou, 992
  %i.ow = or disjoint i32 %i.ov, %i.ot            ; 2 uses
  %i.ox = lshr i32 %i.nd, 7
  %i.oy = and i32 %i.ox, 31
  %i.oz = or disjoint i32 %i.oy, %i.ow            ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.or, i64 262144
  %i.pb = lshr i32 %i.ow, 6
  %i.pc = zext nneg i32 %i.pb to i64
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.pa, i64 %i.pc
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !791
  %i.pf = and i32 %i.oz, 63
  %i.pg = zext nneg i32 %i.pf to i64
  %i.ph = shl nuw i64 1, %i.pg
  %i.pi = and i64 %i.pe, %i.ph
  %.not.i.i.i = icmp eq i64 %i.pi, 0
  %i.pj = zext nneg i32 %i.oz to i64
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.pj ; 3 uses
  br i1 %.not.i.i.i, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !570
  %i.pm = and i32 %i.na, -128
  %i.pn = and i32 %i.nd, -128
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.pm to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.ny to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i.i, ptr %.06.i.i.i.i.ptr.1.i.i.i146, align 4
  store i32 %i.pn, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i147, align 4, !tbaa !570
  store ptr %i.pl, ptr %i.ci, align 8, !tbaa !1879
  %i.po = load ptr, ptr %i.pk, align 8, !tbaa !570
  br label %.invoke

_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i, %bb.bp, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.thread.i
  %i.pp = load ptr, ptr %i.az, align 8, !tbaa !1827 ; 6 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 56
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !543
  %i.ps = sub nsw i32 %i.na, %i.pr
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pp, i64 60
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !543
  %i.pv = sub nsw i32 %i.nd, %i.pu
  %i.pw = and i32 %i.ps, -4096                    ; 4 uses
  %i.px = and i32 %i.pv, -4096                    ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !722 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pp, i64 8 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.pz, null
  br i1 %.not12.i.i.i.i.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pp, i64 52
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !543
  %i.qd = sub nsw i32 %i.nb, %i.qc
  %i.qe = and i32 %i.qd, -4096                    ; 4 uses
  br label %bb.bs

bb.bs:                                            ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.014.i.i.i.i.i = phi ptr [ %i.pz, %.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i ] ; 7 uses
  %.0813.i.i.i.i.i = phi ptr [ %i.qa, %.lr.ph.i.i.i.i.i ], [ %.19.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i ]
  %i.qf = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 32
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !543 ; 2 uses
  %i.qh = icmp slt i32 %i.qg, %i.qe
  br i1 %i.qh, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.qi = icmp sgt i32 %i.qg, %i.qe
  br i1 %i.qi, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.qj = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 36
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !543 ; 2 uses
  %i.ql = icmp slt i32 %i.qk, %i.pw
  br i1 %i.ql, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.qm = icmp sgt i32 %i.qk, %i.pw
  br i1 %i.qm, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i: ; preds = %bb.bv
  %i.qn = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 40
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !543
  %i.qp = icmp slt i32 %i.qo, %i.px
  br i1 %i.qp, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.bu, %bb.bs
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.bv, %bb.bt
  %.sink.i.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ 16, %bb.bv ], [ 16, %bb.bt ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ]
  %.19.i.i.i.i.i = phi ptr [ %.0813.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ %.014.i.i.i.i.i, %bb.bv ], [ %.014.i.i.i.i.i, %bb.bt ], [ %.014.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ] ; 7 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 %.sink.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %i.qq, align 8, !tbaa !1171 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, label %bb.bs, !llvm.loop !308

_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i
  %i.qr = icmp eq ptr %.19.i.i.i.i.i, %i.qa
  br i1 %i.qr, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.bw

bb.bw:                                            ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i
  %i.qs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !543 ; 2 uses
  %i.qu = icmp slt i32 %i.qe, %i.qt
  br i1 %i.qu, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.qv = icmp sgt i32 %i.qe, %i.qt
  br i1 %i.qv, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.qw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 36
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !543 ; 2 uses
  %i.qy = icmp slt i32 %i.pw, %i.qx
  br i1 %i.qy, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.qz = icmp sgt i32 %i.pw, %i.qx
  br i1 %i.qz, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.bz
  %i.ra = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !543
  %i.rc = icmp slt i32 %i.px, %i.rb
  br i1 %i.rc, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.by, %bb.bw, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i
  %i.rd = getelementptr inbounds nuw i8, ptr %i.pp, i64 48
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.bz, %bb.bx
  %i.re = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 48 ; 2 uses
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !1819 ; 2 uses
  %.not.i228 = icmp eq ptr %i.rf, null
  br i1 %.not.i228, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.rg = and i32 %i.na, -4096
  %i.rh = and i32 %i.nd, -4096
  %.sroa.2.0.insert.ext.i.i229 = zext i32 %i.rg to i64
  %.sroa.2.0.insert.shift.i.i230 = shl nuw i64 %.sroa.2.0.insert.ext.i.i229, 32
  %.sroa.0.0.insert.ext.i.i231 = zext i32 %i.oi to i64
  %.sroa.0.0.insert.insert.i.i232 = or disjoint i64 %.sroa.2.0.insert.shift.i.i230, %.sroa.0.0.insert.ext.i.i231
  store i64 %.sroa.0.0.insert.insert.i.i232, ptr %.06.i.i.i.i.ptr.2.i.i.i148, align 8
  store i32 %i.rh, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i149, align 8, !tbaa !570
  store ptr %i.rf, ptr %i.ch, align 8, !tbaa !1857
  %i.ri = load ptr, ptr %i.re, align 8, !tbaa !1821 ; 2 uses
  %i.rj = shl i32 %i.nb, 3
  %i.rk = and i32 %i.rj, 31744
  %i.rl = lshr i32 %i.na, 2
  %i.rm = and i32 %i.rl, 992
  %i.rn = or disjoint i32 %i.rm, %i.rk            ; 2 uses
  %i.ro = lshr i32 %i.nd, 7
  %i.rp = and i32 %i.ro, 31
  %i.rq = or disjoint i32 %i.rp, %i.rn            ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ri, i64 262144
  %i.rs = lshr i32 %i.rn, 6
  %i.rt = zext nneg i32 %i.rs to i64
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %i.rt
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !791
  %i.rw = and i32 %i.rq, 63
  %i.rx = zext nneg i32 %i.rw to i64
  %i.ry = shl nuw i64 1, %i.rx
  %i.rz = and i64 %i.rv, %i.ry
  %.not.i.i233 = icmp eq i64 %i.rz, 0
  %i.sa = zext nneg i32 %i.rq to i64
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.ri, i64 %i.sa ; 3 uses
  br i1 %.not.i.i233, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !570
  %i.sd = and i32 %i.na, -128
  %i.se = and i32 %i.nd, -128
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.sd to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.ny to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %.06.i.i.i.i.ptr.1.i.i.i146, align 4
  store i32 %i.se, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i147, align 4, !tbaa !570
  store ptr %i.sc, ptr %i.ci, align 8, !tbaa !1879
  %i.sf = load ptr, ptr %i.sb, align 8, !tbaa !570
  br label %.invoke

.invoke:                                          ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i, %bb.br, %bb.cb
  %i.sg = phi ptr [ %i.sf, %bb.cb ], [ %i.po, %bb.br ], [ %i.oh, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i ]
  %i.sh = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIiLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKiRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.sg, ptr noundef nonnull align 4 dereferenceable(12) %16, ptr noundef nonnull align 8 dereferenceable(96) %15)
          to label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit unwind label %bb.cg

bb.cc:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.si = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 56
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit: ; preds = %.invoke, %bb.bq, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i, %bb.cc, %bb.ca, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i
  %.1.i.i = phi ptr [ %i.nx, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i ], [ %i.sb, %bb.ca ], [ %i.sh, %.invoke ], [ %i.pk, %bb.bq ], [ %i.rd, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i ], [ %i.si, %bb.cc ]
  %i.sj = load i32, ptr %.1.i.i, align 4, !tbaa !543
  call void @llvm.experimental.noalias.scope.decl(metadata !11606)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !11606
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !11606
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !11606
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !11606
  %i.sk = sext i32 %i.sj to i64                   ; 2 uses
  %i.sl = load ptr, ptr %i.bz, align 8, !tbaa !1026, !noalias !11606 ; 2 uses
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !1053, !noalias !11606 ; 3 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sl, i64 16
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !1055, !noalias !11606
  %i.sp = getelementptr inbounds nuw [16 x i8], ptr %i.so, i64 %i.sk ; 3 uses
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !543, !noalias !11606
  %i.sr = zext i32 %i.sq to i64
  %i.ss = getelementptr inbounds nuw [12 x i8], ptr %i.sm, i64 %i.sr ; 2 uses
  %i.st = load <2 x float>, ptr %i.ss, align 4, !tbaa !572, !noalias !11606
  %i.su = fpext <2 x float> %i.st to <2 x double>
  store <2 x double> %i.su, ptr %2, align 16, !tbaa !595, !noalias !11606
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !572, !noalias !11606
  %i.sx = fpext float %i.sw to double
  store double %i.sx, ptr %i.cj, align 16, !tbaa !595, !noalias !11606
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sp, i64 4
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !543, !noalias !11606
  %i.ta = zext i32 %i.sz to i64
  %i.tb = getelementptr inbounds nuw [12 x i8], ptr %i.sm, i64 %i.ta ; 2 uses
  %i.tc = load <2 x float>, ptr %i.tb, align 4, !tbaa !572, !noalias !11606
  %i.td = fpext <2 x float> %i.tc to <2 x double>
  store <2 x double> %i.td, ptr %3, align 16, !tbaa !595, !noalias !11606
  %i.te = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %i.tf = load float, ptr %i.te, align 4, !tbaa !572, !noalias !11606
  %i.tg = fpext float %i.tf to double
  store double %i.tg, ptr %i.ck, align 16, !tbaa !595, !noalias !11606
  %i.th = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !543, !noalias !11606
  %i.tj = zext i32 %i.ti to i64
  %i.tk = getelementptr inbounds nuw [12 x i8], ptr %i.sm, i64 %i.tj ; 2 uses
  %i.tl = load <2 x float>, ptr %i.tk, align 4, !tbaa !572, !noalias !11606
  %i.tm = fpext <2 x float> %i.tl to <2 x double>
  store <2 x double> %i.tm, ptr %4, align 16, !tbaa !595, !noalias !11606
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  %i.to = load float, ptr %i.tn, align 4, !tbaa !572, !noalias !11606
  %i.tp = fpext float %i.to to double
  store double %i.tp, ptr %i.cl, align 16, !tbaa !595, !noalias !11606
  invoke void @_ZN7openvdb5v13_04math29closestPointOnTriangleToPointERKNS1_4Vec3IdEES5_S5_S5_RS3_(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.noexc214 unwind label %bb.cg

.noexc214:                                        ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit
  %i.tq = load ptr, ptr %i.bz, align 8, !tbaa !1026, !noalias !11606 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !1055
  %i.tt = getelementptr inbounds nuw [16 x i8], ptr %i.ts, i64 %i.sk
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 12
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !543 ; 2 uses
  %.not.i208 = icmp eq i32 %i.tv, -1
  br i1 %.not.i208, label %.noexc214._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit220_crit_edge, label %bb.cd

.noexc214._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit220_crit_edge: ; preds = %.noexc214
  %.sroa.0.0.copyload235.pre = load double, ptr %17, align 16
  %.sroa.7.0.copyload237.pre = load double, ptr %i.bx, align 8
  %.sroa.9.0.copyload239.pre = load double, ptr %i.by, align 16
  br label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit220

bb.cd:                                            ; preds = %.noexc214
  %i.tw = load ptr, ptr %i.tq, align 8, !tbaa !1053
  %i.tx = zext i32 %i.tv to i64
  %i.ty = getelementptr inbounds nuw [12 x i8], ptr %i.tw, i64 %i.tx ; 2 uses
  %i.tz = load <2 x float>, ptr %i.ty, align 4, !tbaa !572
  %i.ua = fpext <2 x float> %i.tz to <2 x double>
  store <2 x double> %i.ua, ptr %3, align 16, !tbaa !595, !noalias !11606
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !572
  %i.ud = fpext float %i.uc to double
  store double %i.ud, ptr %i.ck, align 16, !tbaa !595, !noalias !11606
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !11606
  invoke void @_ZN7openvdb5v13_04math29closestPointOnTriangleToPointERKNS1_4Vec3IdEES5_S5_S5_RS3_(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.noexc215 unwind label %bb.cg

.noexc215:                                        ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !noalias !11606
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !11606
  %i.ue = load double, ptr %i.cl, align 16, !tbaa !595, !noalias !11607
  %i.uf = load double, ptr %i.cm, align 16, !tbaa !595, !alias.scope !11606, !noalias !11608
  %.sroa.615.0.copyload.i211 = load double, ptr %i.bx, align 8, !noalias !11606 ; 3 uses
  %.sroa.013.0.copyload.i209 = load double, ptr %17, align 16, !noalias !11606 ; 3 uses
  %.sroa.917.0.copyload.i213 = load double, ptr %i.by, align 16, !noalias !11606 ; 3 uses
  %i.ug = load <2 x double>, ptr %4, align 16, !tbaa !595, !noalias !11607 ; 2 uses
  %i.uh = load <2 x double>, ptr %20, align 16, !tbaa !595, !alias.scope !11606, !noalias !11608 ; 2 uses
  %i.ui = insertelement <2 x double> poison, double %.sroa.013.0.copyload.i209, i64 0
  %i.uj = shufflevector <2 x double> %i.ui, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uk = shufflevector <2 x double> %i.ug, <2 x double> %i.uh, <2 x i32> <i32 0, i32 2>
  %i.ul = fsub <2 x double> %i.uj, %i.uk          ; 2 uses
  %i.um = insertelement <2 x double> poison, double %.sroa.615.0.copyload.i211, i64 0
  %i.un = shufflevector <2 x double> %i.um, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uo = shufflevector <2 x double> %i.ug, <2 x double> %i.uh, <2 x i32> <i32 1, i32 3>
  %i.up = fsub <2 x double> %i.un, %i.uo          ; 2 uses
  %i.uq = insertelement <2 x double> poison, double %.sroa.917.0.copyload.i213, i64 0
  %i.ur = shufflevector <2 x double> %i.uq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.us = insertelement <2 x double> poison, double %i.ue, i64 0
  %i.ut = insertelement <2 x double> %i.us, double %i.uf, i64 1
  %i.uu = fsub <2 x double> %i.ur, %i.ut          ; 2 uses
  %i.uv = fmul <2 x double> %i.up, %i.up
  %i.uw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ul, <2 x double> %i.ul, <2 x double> %i.uv)
  %i.ux = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uu, <2 x double> %i.uu, <2 x double> %i.uw) ; 2 uses
  %i.uy = extractelement <2 x double> %i.ux, i64 0
  %i.uz = extractelement <2 x double> %i.ux, i64 1
  %i.va = fcmp olt double %i.uy, %i.uz
  br i1 %i.va, label %bb.ce, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit220

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
  %21 = load <3 x double>, ptr %20, align 16      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  %i.vb = insertelement <2 x double> %i.gg, double %.sroa.0.0.copyload235, i64 1
  %i.vc = shufflevector <3 x double> %21, <3 x double> poison, <2 x i32> zeroinitializer
  %i.vd = fsub <2 x double> %i.vb, %i.vc          ; 4 uses
  %i.ve = insertelement <2 x double> %i.fv, double %.sroa.7.0.copyload237, i64 1
  %22 = shufflevector <3 x double> %21, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.vf = fsub <2 x double> %i.ve, %22            ; 4 uses
  %i.vg = insertelement <2 x double> %i.gh, double %.sroa.9.0.copyload239, i64 1
  %23 = shufflevector <3 x double> %21, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.vh = fsub <2 x double> %i.vg, %23            ; 4 uses
  %i.vi = fmul <2 x double> %i.vf, %i.vf
  %i.vj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vd, <2 x double> %i.vd, <2 x double> %i.vi)
  %i.vk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vh, <2 x double> %i.vh, <2 x double> %i.vj)
  %i.vl = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.vk) ; 2 uses
  %i.vm = fdiv <2 x double> splat (double 1.000000e+00), %i.vl ; 3 uses
  %i.vn = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.vl)
  %i.vo = fcmp ogt <2 x double> %i.vn, splat (double f0x3E7AD7F29ABCAF48) ; 3 uses
  %i.vp = shufflevector <2 x double> %i.vh, <2 x double> %i.vd, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.vq = shufflevector <2 x double> %i.vm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vr = fmul <2 x double> %i.vp, %i.vq
  %i.vs = shufflevector <2 x i1> %i.vo, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.vt = select <2 x i1> %i.vs, <2 x double> %i.vr, <2 x double> %i.vp ; 2 uses
  %i.vu = fmul <2 x double> %i.vf, %i.vm
  %i.vv = select <2 x i1> %i.vo, <2 x double> %i.vu, <2 x double> %i.vf ; 2 uses
  %i.vw = shufflevector <2 x double> %i.vh, <2 x double> %i.vd, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.vx = shufflevector <2 x double> %i.vm, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.vy = fmul <2 x double> %i.vw, %i.vx
  %i.vz = shufflevector <2 x i1> %i.vo, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.wa = select <2 x i1> %i.vz, <2 x double> %i.vy, <2 x double> %i.vw ; 2 uses
  %shift = shufflevector <2 x double> %i.vv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop463 = fmul <2 x double> %i.vv, %shift
  %i.wb = extractelement <2 x double> %foldExtExtBinop463, i64 0
  %i.wc = extractelement <2 x double> %i.vt, i64 1
  %i.wd = extractelement <2 x double> %i.wa, i64 1
  %i.we = call double @llvm.fmuladd.f64(double %i.wd, double %i.wc, double %i.wb)
  %i.wf = extractelement <2 x double> %i.vt, i64 0
  %i.wg = extractelement <2 x double> %i.wa, i64 0
  %i.wh = call noundef double @llvm.fmuladd.f64(double %i.wg, double %i.wf, double %i.we)
  %i.wi = fcmp ogt double %i.wh, 0.000000e+00
  br i1 %i.wi, label %.loopexit.sink.split, label %bb.ch

bb.cf:                                            ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread
  %i.wj = landingpad { ptr, i32 }
          cleanup
  br label %.body155

bb.cg:                                            ; preds = %.invoke, %bb.cd, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit
  %i.wk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %.body155

bb.ch:                                            ; preds = %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i, %bb.bl, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit220
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 26
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !11599

.loopexit.sink.split:                             ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit220, %bb.bk
  %i.wl = load double, ptr %i.fd, align 8, !tbaa !595
  %i.wm = fneg double %i.wl
  store double %i.wm, ptr %i.fd, align 8, !tbaa !595
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ch, %.loopexit.sink.split, %.lr.ph382
  %i.wn = add i32 %.sroa.5.0380, 1                ; 4 uses
  %i.wo = lshr i32 %i.wn, 6                       ; 3 uses
  %i.wp = icmp ugt i32 %i.wn, 511
  br i1 %i.wp, label %._crit_edge383, label %bb.ci

bb.ci:                                            ; preds = %.loopexit
  %i.wq = and i32 %i.wn, 63
  %i.wr = zext nneg i32 %i.wo to i64              ; 8 uses
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.wr
  %i.wt = load i64, ptr %i.ws, align 8, !tbaa !791 ; 2 uses
  %i.wu = zext nneg i32 %i.wq to i64              ; 2 uses
  %i.wv = shl nuw i64 1, %i.wu
  %i.ww = and i64 %i.wt, %i.wv
  %.not.i.i.i.i = icmp eq i64 %i.ww, 0
  br i1 %.not.i.i.i.i, label %bb.cj, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

bb.cj:                                            ; preds = %bb.ci
  %i.wx = shl nsw i64 -1, %i.wu
  %i.wy = and i64 %i.wt, %i.wx                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.wy, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i221.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i221.preheader:                      ; preds = %bb.cj
  %exitcond.not.i.i.i.i457 = icmp eq i32 %i.wo, 7
  br i1 %exitcond.not.i.i.i.i457, label %._crit_edge383, label %.lr.ph459

.lr.ph.i.i.i.i221:                                ; preds = %.lr.ph459
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge383, label %.lr.ph459.1

.lr.ph459.1:                                      ; preds = %.lr.ph.i.i.i.i221
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.wr, 2 ; 3 uses
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.1
  %i.xa = load i64, ptr %i.wz, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.xa, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i221.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i221.1:                              ; preds = %.lr.ph459.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge383, label %.lr.ph459.2

.lr.ph459.2:                                      ; preds = %.lr.ph.i.i.i.i221.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.wr, 3 ; 3 uses
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.2
  %i.xc = load i64, ptr %i.xb, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.xc, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i221.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i221.2:                              ; preds = %.lr.ph459.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge383, label %.lr.ph459.3

.lr.ph459.3:                                      ; preds = %.lr.ph.i.i.i.i221.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.wr, 4 ; 3 uses
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.3
  %i.xe = load i64, ptr %i.xd, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.xe, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i221.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i221.3:                              ; preds = %.lr.ph459.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge383, label %.lr.ph459.4

.lr.ph459.4:                                      ; preds = %.lr.ph.i.i.i.i221.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.wr, 5 ; 3 uses
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.4
  %i.xg = load i64, ptr %i.xf, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.xg, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i221.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i221.4:                              ; preds = %.lr.ph459.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge383, label %.lr.ph459.5

.lr.ph459.5:                                      ; preds = %.lr.ph.i.i.i.i221.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.wr, 6 ; 3 uses
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.5
  %i.xi = load i64, ptr %i.xh, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.xi, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i221.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i221.5:                              ; preds = %.lr.ph459.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge383, label %.lr.ph459.6

.lr.ph459.6:                                      ; preds = %.lr.ph.i.i.i.i221.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.wr, 7 ; 2 uses
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.6
  %i.xk = load i64, ptr %i.xj, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.xk, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge383, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph459:                                        ; preds = %.lr.ph.i.i.i.i221.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.wr, 1 ; 3 uses
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i
  %i.xm = load i64, ptr %i.xl, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.xm, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i221, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph459.6, %.lr.ph459.5, %.lr.ph459.4, %.lr.ph459.3, %.lr.ph459.2, %.lr.ph459.1, %.lr.ph459
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph459 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph459.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph459.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph459.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph459.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph459.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph459.6 ]
  %.lcssa = phi i64 [ %i.xm, %.lr.ph459 ], [ %i.xa, %.lr.ph459.1 ], [ %i.xc, %.lr.ph459.2 ], [ %i.xe, %.lr.ph459.3 ], [ %i.xg, %.lr.ph459.4 ], [ %i.xi, %.lr.ph459.5 ], [ %i.xk, %.lr.ph459.6 ]
  %i.xn = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.cj
  %.016.lcssa.i.i.i.i = phi i32 [ %i.wo, %bb.cj ], [ %i.xn, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.wy, %bb.cj ], [ %.lcssa, %.critedge.loopexit.i.i.i.i ]
  %i.xo = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.xp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.xq = trunc nuw nsw i64 %i.xp to i32
  %i.xr = or disjoint i32 %i.xo, %i.xq
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit: ; preds = %bb.ci, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.xr, %.critedge.i.i.i.i ], [ %i.wn, %bb.ci ] ; 2 uses
  %.not344 = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not344, label %._crit_edge383, label %.lr.ph382

._crit_edge383:                                   ; preds = %.loopexit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit, %.lr.ph.i.i.i.i221.preheader, %.lr.ph459.6, %.lr.ph.i.i.i.i221, %.lr.ph.i.i.i.i221.1, %.lr.ph.i.i.i.i221.2, %.lr.ph.i.i.i.i221.3, %.lr.ph.i.i.i.i221.4, %.lr.ph.i.i.i.i221.5, %bb.au
  %i.xs = add nuw i64 %.0118384, 1                ; 2 uses
  %exitcond396.not = icmp eq i64 %i.xs, %i.bt
  br i1 %exitcond396.not, label %._crit_edge386, label %bb.ag, !llvm.loop !11600

.body155:                                         ; preds = %bb.aw, %bb.cf, %bb.cg, %bb.bi, %bb.ay, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i, %bb.av, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i160, %bb.ax, %bb.y, %bb.ab, %bb.x
  %.pn132.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.x ], [ %i.bl, %bb.y ], [ %i.bq, %bb.ab ], [ %i.et, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i160 ], [ %i.wj, %bb.cf ], [ %i.fi, %bb.aw ], [ %i.du, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ], [ %i.fj, %bb.ax ], [ %i.fk, %bb.ay ], [ %i.fh, %bb.av ], [ %i.wk, %bb.cg ], [ %i.kt, %bb.bi ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %15, align 8, !tbaa !545
  %i.xt = load ptr, ptr %i.ah, align 8, !tbaa !3207 ; 2 uses
  %.not.i222 = icmp eq ptr %i.xt, null
  br i1 %.not.i222, label %.body, label %bb.ck

bb.ck:                                            ; preds = %.body155
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %15, ptr %i.b, align 8, !tbaa !3208
  %i.xv = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.xu, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i223 unwind label %bb.cl, !inline_history !3214 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i223: ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.body

bb.cl:                                            ; preds = %bb.ck
end_hunk_3
