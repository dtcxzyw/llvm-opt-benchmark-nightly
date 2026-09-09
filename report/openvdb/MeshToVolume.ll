Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/MeshToVolume?download=true
inline.NumInlined: 61374
inline.NumDeleted: 19461
loop-unroll.NumCompletelyUnrolled: 235
loop-unroll.NumRuntimeUnrolled: 314
loop-unroll.NumUnrolled: 949
begin_hunk_0_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENSD_26QuadAndTriangleDataAdapterINSC_4math4Vec3IfEENSR_4Vec4IjEEEEEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread, %bb.h
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
  %.0118386 = phi i64 [ %i.bs, %.lr.ph387 ], [ %i.xl, %._crit_edge385 ] ; 2 uses
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
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS1_26QuadAndTriangleDataAdapterINS0_4math4Vec3IfEENSF_4Vec4IjEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
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
  %storemerge367 = phi i32 [ %i.lz, %._crit_edge365.split ], [ %.sroa.speculated16.i, %bb.az ]
  %i.gi = shl i32 %storemerge367, 6
  %i.gj = and i32 %i.gi, 448
  store i32 %.sroa.speculated11.i, ptr %i.bc, align 4, !tbaa !543
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph364, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200._crit_edge
  %storemerge347362 = phi i32 [ %.sroa.speculated11.i, %.lr.ph364 ], [ %i.lx, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200._crit_edge ]
  %i.gk = shl i32 %storemerge347362, 3
  %i.gl = and i32 %i.gk, 56
  %i.gm = or disjoint i32 %i.gl, %i.gj
  store i32 %.sroa.speculated.i, ptr %i.bd, align 8, !tbaa !543
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph, %bb.bj
  %storemerge348360 = phi i32 [ %.sroa.speculated.i, %.lr.ph ], [ %i.lv, %bb.bj ] ; 4 uses
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
  %21 = load <2 x double>, ptr %i.bx, align 8
  %22 = load <2 x double>, ptr %17, align 16
  %.sroa.917.0.copyload.i = load double, ptr %i.by, align 16, !noalias !11458
  %i.je = load <2 x double>, ptr %9, align 16, !tbaa !595, !noalias !11459 ; 2 uses
  %i.jf = load <2 x double>, ptr %19, align 16, !tbaa !595, !alias.scope !11458, !noalias !11460 ; 2 uses
  %i.jg = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jh = shufflevector <2 x double> %i.je, <2 x double> %i.jf, <2 x i32> <i32 0, i32 2>
  %i.ji = fsub <2 x double> %i.jg, %i.jh          ; 2 uses
  %23 = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jj = shufflevector <2 x double> %i.je, <2 x double> %i.jf, <2 x i32> <i32 1, i32 3>
  %i.jk = fsub <2 x double> %23, %i.jj            ; 2 uses
  %24 = insertelement <2 x double> poison, double %.sroa.917.0.copyload.i, i64 0
  %25 = shufflevector <2 x double> %24, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jl = insertelement <2 x double> poison, double %i.jc, i64 0
  %i.jm = insertelement <2 x double> %i.jl, double %i.jd, i64 1
  %i.jn = fsub <2 x double> %25, %i.jm            ; 2 uses
  %i.jo = fmul <2 x double> %i.jk, %i.jk
  %i.jp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ji, <2 x double> %i.ji, <2 x double> %i.jo)
  %i.jq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jn, <2 x double> %i.jn, <2 x double> %i.jp) ; 2 uses
  %i.jr = extractelement <2 x double> %i.jq, i64 0
  %i.js = extractelement <2 x double> %i.jq, i64 1
  %i.jt = fcmp olt double %i.jr, %i.js
  br i1 %i.jt, label %bb.bf, label %bb.bg

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
  %i.ju = load ptr, ptr %i.bg, align 8, !tbaa !3195
  %i.jv = getelementptr inbounds nuw [24 x i8], ptr %i.ju, i64 %i.he ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 24 ; 2 uses
  %.sroa.9263.0.copyload265 = load double, ptr %i.by, align 16
  %i.jx = load <2 x double>, ptr %17, align 16
  %i.jy = load <2 x double>, ptr %i.hg, align 8, !tbaa !595, !noalias !11461
  %i.jz = fsub <2 x double> %i.jx, %i.jy          ; 5 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !595, !noalias !11461
  %i.kc = fsub double %.sroa.9263.0.copyload265, %i.kb ; 4 uses
  %i.kd = extractelement <2 x double> %i.jz, i64 0 ; 2 uses
  store <2 x double> %i.jz, ptr %i.jw, align 8
  %.sroa.9263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jv, i64 40 ; 2 uses
  store double %i.kc, ptr %.sroa.9263.0..sroa_idx, align 8
  %foldExtExtBinop = fmul <2 x double> %i.jz, %i.jz
  %i.ke = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.kf = call double @llvm.fmuladd.f64(double %i.kd, double %i.kd, double %i.ke)
  %i.kg = call double @llvm.fmuladd.f64(double %i.kc, double %i.kc, double %i.kf)
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.kg) ; 2 uses
  %i.kh = call noundef double @llvm.fabs.f64(double %sqrt.i.i)
  %i.ki = fcmp ogt double %i.kh, f0x3E7AD7F29ABCAF48
  br i1 %i.ki, label %bb.bh, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200

bb.bh:                                            ; preds = %bb.bg
  %i.kj = fdiv double 1.000000e+00, %sqrt.i.i     ; 2 uses
  %i.kk = fmul double %i.kc, %i.kj
  %i.kl = insertelement <2 x double> poison, double %i.kj, i64 0
  %i.km = shufflevector <2 x double> %i.kl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kn = fmul <2 x double> %i.jz, %i.km
  store <2 x double> %i.kn, ptr %i.jw, align 8, !tbaa !595
  store double %i.kk, ptr %.sroa.9263.0..sroa_idx, align 8, !tbaa !595
  br label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200

bb.bi:                                            ; preds = %bb.be, %bb.bd
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %.body157

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200: ; preds = %._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200_crit_edge, %bb.bg, %bb.bh
  %.pre-phi = phi i64 [ %.pre403, %._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200_crit_edge ], [ %i.he, %bb.bg ], [ %i.he, %bb.bh ]
  %i.kp = load ptr, ptr %i.bg, align 8, !tbaa !3195
  %i.kq = getelementptr inbounds nuw [24 x i8], ptr %i.kp, i64 %.pre-phi ; 5 uses
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !595, !noalias !11462
  %i.ks = fsub double %i.fu, %i.kr                ; 4 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ku = load <2 x double>, ptr %i.kt, align 8, !tbaa !595, !noalias !11462
  %i.kv = fsub <2 x double> %i.fv, %i.ku          ; 5 uses
  %i.kw = extractelement <2 x double> %i.kv, i64 0
  %foldExtExtBinop463 = fmul <2 x double> %i.kv, %i.kv
  %i.kx = extractelement <2 x double> %foldExtExtBinop463, i64 0
  %i.ky = call double @llvm.fmuladd.f64(double %i.ks, double %i.ks, double %i.kx)
  %i.kz = extractelement <2 x double> %i.kv, i64 1 ; 3 uses
  %i.la = call double @llvm.fmuladd.f64(double %i.kz, double %i.kz, double %i.ky)
  %sqrt.i.i199 = call noundef double @llvm.sqrt.f64(double %i.la) ; 2 uses
  %i.lb = call noundef double @llvm.fabs.f64(double %sqrt.i.i199)
  %i.lc = fcmp ogt double %i.lb, f0x3E7AD7F29ABCAF48 ; 3 uses
  %i.ld = fdiv double 1.000000e+00, %sqrt.i.i199  ; 2 uses
  %i.le = fmul double %i.ks, %i.ld
  %i.lf = insertelement <2 x double> poison, double %i.ld, i64 0
  %i.lg = shufflevector <2 x double> %i.lf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lh = fmul <2 x double> %i.kv, %i.lg          ; 2 uses
  %i.li = extractelement <2 x double> %i.lh, i64 1
  %.sroa.19.0 = select i1 %i.lc, double %i.li, double %i.kz
  %i.lj = extractelement <2 x double> %i.lh, i64 0
  %.sroa.11283.0 = select i1 %i.lc, double %i.lj, double %i.kw
  %.sroa.0279.0 = select i1 %i.lc, double %i.le, double %i.ks
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kq, i64 24
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !595
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kq, i64 32
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !595
  %i.lo = fmul double %i.ln, %.sroa.11283.0
  %i.lp = call double @llvm.fmuladd.f64(double %i.ll, double %.sroa.0279.0, double %i.lo)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.kq, i64 40
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !595
  %i.ls = call noundef double @llvm.fmuladd.f64(double %i.lr, double %.sroa.19.0, double %i.lp)
  %i.lt = fcmp ogt double %i.ls, 0.000000e+00
  br i1 %i.lt, label %bb.bk, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200._crit_edge399

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200._crit_edge399: ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200
  %.pre = load i32, ptr %i.bd, align 8, !tbaa !543
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200._crit_edge399, %bb.bb, %bb.ba
  %i.lu = phi i32 [ %.pre, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200._crit_edge399 ], [ %storemerge348360, %bb.bb ], [ %storemerge348360, %bb.ba ] ; 2 uses
  %i.lv = add nsw i32 %i.lu, 1                    ; 2 uses
  store i32 %i.lv, ptr %i.bd, align 8, !tbaa !543
  %.not.not = icmp slt i32 %i.lu, %.sroa.speculated.i189
  br i1 %.not.not, label %bb.ba, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200._crit_edge, !llvm.loop !11447

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200._crit_edge: ; preds = %bb.bj
  %i.lw = load i32, ptr %i.bc, align 4, !tbaa !543 ; 2 uses
  %i.lx = add nsw i32 %i.lw, 1                    ; 2 uses
  store i32 %i.lx, ptr %i.bc, align 4, !tbaa !543
  %.not = icmp slt i32 %i.lw, %.sroa.speculated11.i188
  br i1 %.not, label %.lr.ph, label %._crit_edge365.split, !llvm.loop !11448

._crit_edge365.split:                             ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200._crit_edge
  %i.ly = load i32, ptr %16, align 8, !tbaa !543  ; 2 uses
  %i.lz = add nsw i32 %i.ly, 1                    ; 2 uses
  store i32 %i.lz, ptr %16, align 8, !tbaa !543
  %.not455 = icmp slt i32 %i.ly, %.sroa.speculated16.i187
  br i1 %.not455, label %.lr.ph364, label %.preheader.preheader, !llvm.loop !11449

bb.bk:                                            ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit200
  %i.ma = load <2 x i32>, ptr %16, align 8, !tbaa !543
  %i.mb = add nsw <2 x i32> %i.ma, splat (i32 1)
  store <2 x i32> %i.mb, ptr %16, align 8, !tbaa !543
  br label %.loopexit.sink.split

.preheader:                                       ; preds = %.preheader.preheader, %bb.ch
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ch ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.mc = getelementptr inbounds nuw [12 x i8], ptr @_ZN7openvdb5v13_04util13COORD_OFFSETSE, i64 %indvars.iv ; 3 uses
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !543
  %i.me = add nsw i32 %i.md, %i.fo                ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mc, i64 4
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !543
  %i.mh = add nsw i32 %i.mg, %i.fx                ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !543
  %i.mk = add nsw i32 %i.mj, %i.fz                ; 3 uses
  %.sroa.2.0.insert.ext.i201 = zext i32 %i.mh to i64
  %.sroa.2.0.insert.shift.i202 = shl nuw i64 %.sroa.2.0.insert.ext.i201, 32
  %.sroa.0.0.insert.ext.i203 = zext i32 %i.me to i64
  %.sroa.0.0.insert.insert.i204 = or disjoint i64 %.sroa.2.0.insert.shift.i202, %.sroa.0.0.insert.ext.i203
  store i64 %.sroa.0.0.insert.insert.i204, ptr %16, align 8
  store i32 %i.mk, ptr %i.bd, align 8, !tbaa !570
  %i.ml = icmp slt i32 %i.me, %.sroa.speculated16.i
  %i.mm = icmp slt i32 %i.mh, %.sroa.speculated11.i
  %or.cond451 = select i1 %i.ml, i1 true, i1 %i.mm
  br i1 %or.cond451, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread, label %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i

_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i: ; preds = %.preheader
  %i.mn = icmp sge i32 %i.mk, %.sroa.speculated.i
  %i.mo = icmp sge i32 %.sroa.speculated16.i187, %i.me
  %or.cond.i.not353 = and i1 %i.mn, %i.mo
  %i.mp = icmp sge i32 %.sroa.speculated11.i188, %i.mh
  %or.cond10.i.not350 = select i1 %or.cond.i.not353, i1 %i.mp, i1 false
  %i.mq = icmp sge i32 %.sroa.speculated.i189, %i.mk
  %or.cond343 = select i1 %or.cond10.i.not350, i1 %i.mq, i1 false
  br i1 %or.cond343, label %bb.ch, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread

_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread: ; preds = %.preheader, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i
  %i.mr = invoke noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERf(ptr noundef nonnull align 8 dereferenceable(96) %14, ptr noundef nonnull align 4 dereferenceable(12) %16, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
          to label %bb.bl unwind label %bb.cf

bb.bl:                                            ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread
  %i.ms = load float, ptr %i.h, align 4
  %i.mt = fcmp olt float %i.ms, -7.500000e-01
  %or.cond144 = select i1 %i.mr, i1 %i.mt, i1 false
  br i1 %or.cond144, label %bb.bm, label %bb.ch

bb.bm:                                            ; preds = %bb.bl
  %i.mu = load <2 x i32>, ptr %16, align 8, !tbaa !543 ; 3 uses
  %i.mv = extractelement <2 x i32> %i.mu, i64 1   ; 10 uses
  %i.mw = extractelement <2 x i32> %i.mu, i64 0   ; 7 uses
  %i.mx = sitofp <2 x i32> %i.mu to <2 x double>
  store <2 x double> %i.mx, ptr %17, align 16, !tbaa !595
  %i.my = load i32, ptr %i.bd, align 8, !tbaa !543 ; 11 uses
  %i.mz = sitofp i32 %i.my to double
  store double %i.mz, ptr %i.by, align 16, !tbaa !595
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  %i.na = and i32 %i.mw, -8
  %i.nb = load i32, ptr %i.ay, align 8, !tbaa !543
  %i.nc = icmp eq i32 %i.na, %i.nb
  br i1 %i.nc, label %bb.bn, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i

bb.bn:                                            ; preds = %bb.bm
  %i.nd = and i32 %i.mv, -8
  %i.ne = load i32, ptr %i.ce, align 4, !tbaa !543
  %i.nf = icmp eq i32 %i.nd, %i.ne
  br i1 %i.nf, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.bn
  %i.ng = and i32 %i.my, -8
  %i.nh = load i32, ptr %.sroa.6.0..sroa_idx.i.i147, align 8, !tbaa !543
  %i.ni = icmp eq i32 %i.ng, %i.nh
  br i1 %i.ni, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i
  %i.nj = load ptr, ptr %i.ax, align 8, !tbaa !3213 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEENS1_26QuadAndTriangleDataAdapterINS0_4math4Vec3IfEENSF_4Vec4IjEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  br i1 %i.qh, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i: ; preds = %bb.bv
  %i.qi = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 40
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !543
  %i.qk = icmp slt i32 %i.qj, %i.ps
  br i1 %i.qk, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.bu, %bb.bs
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.bv, %bb.bt
  %.sink.i.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ 16, %bb.bv ], [ 16, %bb.bt ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ]
  %.19.i.i.i.i.i = phi ptr [ %.0813.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ %.014.i.i.i.i.i, %bb.bv ], [ %.014.i.i.i.i.i, %bb.bt ], [ %.014.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ] ; 7 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 %.sink.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %i.ql, align 8, !tbaa !1171 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, label %bb.bs, !llvm.loop !308

_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i
  %i.qm = icmp eq ptr %.19.i.i.i.i.i, %i.pv
  br i1 %i.qm, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.bw

bb.bw:                                            ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i
  %i.qn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !543 ; 2 uses
  %i.qp = icmp slt i32 %i.pz, %i.qo
  br i1 %i.qp, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.qq = icmp sgt i32 %i.pz, %i.qo
  br i1 %i.qq, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.qr = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 36
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !543 ; 2 uses
  %i.qt = icmp slt i32 %i.pr, %i.qs
  br i1 %i.qt, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.qu = icmp sgt i32 %i.pr, %i.qs
  br i1 %i.qu, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.bz
  %i.qv = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !543
  %i.qx = icmp slt i32 %i.ps, %i.qw
  br i1 %i.qx, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.by, %bb.bw, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i
  %i.qy = getelementptr inbounds nuw i8, ptr %i.pk, i64 48
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.bz, %bb.bx
  %i.qz = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 48 ; 2 uses
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !1819 ; 2 uses
  %.not.i230 = icmp eq ptr %i.ra, null
  br i1 %.not.i230, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.rb = and i32 %i.mv, -4096
  %i.rc = and i32 %i.my, -4096
  %.sroa.2.0.insert.ext.i.i231 = zext i32 %i.rb to i64
  %.sroa.2.0.insert.shift.i.i232 = shl nuw i64 %.sroa.2.0.insert.ext.i.i231, 32
  %.sroa.0.0.insert.ext.i.i233 = zext i32 %i.od to i64
  %.sroa.0.0.insert.insert.i.i234 = or disjoint i64 %.sroa.2.0.insert.shift.i.i232, %.sroa.0.0.insert.ext.i.i233
  store i64 %.sroa.0.0.insert.insert.i.i234, ptr %.06.i.i.i.i.ptr.2.i.i.i150, align 8
  store i32 %i.rc, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i151, align 8, !tbaa !570
  store ptr %i.ra, ptr %i.ch, align 8, !tbaa !1857
  %i.rd = load ptr, ptr %i.qz, align 8, !tbaa !1821 ; 2 uses
  %i.re = shl i32 %i.mw, 3
  %i.rf = and i32 %i.re, 31744
  %i.rg = lshr i32 %i.mv, 2
  %i.rh = and i32 %i.rg, 992
  %i.ri = or disjoint i32 %i.rh, %i.rf            ; 2 uses
  %i.rj = lshr i32 %i.my, 7
  %i.rk = and i32 %i.rj, 31
  %i.rl = or disjoint i32 %i.rk, %i.ri            ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rd, i64 262144
  %i.rn = lshr i32 %i.ri, 6
  %i.ro = zext nneg i32 %i.rn to i64
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.rm, i64 %i.ro
  %i.rq = load i64, ptr %i.rp, align 8, !tbaa !791
  %i.rr = and i32 %i.rl, 63
  %i.rs = zext nneg i32 %i.rr to i64
  %i.rt = shl nuw i64 1, %i.rs
  %i.ru = and i64 %i.rq, %i.rt
  %.not.i.i235 = icmp eq i64 %i.ru, 0
  %i.rv = zext nneg i32 %i.rl to i64
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.rd, i64 %i.rv ; 3 uses
  br i1 %.not.i.i235, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !570
  %i.ry = and i32 %i.mv, -128
  %i.rz = and i32 %i.my, -128
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.ry to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.nt to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %.06.i.i.i.i.ptr.1.i.i.i148, align 4
  store i32 %i.rz, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i149, align 4, !tbaa !570
  store ptr %i.rx, ptr %i.ci, align 8, !tbaa !1879
  %i.sa = load ptr, ptr %i.rw, align 8, !tbaa !570
  br label %.invoke

.invoke:                                          ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i, %bb.br, %bb.cb
  %i.sb = phi ptr [ %i.sa, %bb.cb ], [ %i.pj, %bb.br ], [ %i.oc, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i ]
  %i.sc = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIiLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKiRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.sb, ptr noundef nonnull align 4 dereferenceable(12) %16, ptr noundef nonnull align 8 dereferenceable(96) %15)
          to label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit unwind label %bb.cg

bb.cc:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.sd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 56
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit: ; preds = %.invoke, %bb.bq, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i, %bb.cc, %bb.ca, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i
  %.1.i.i = phi ptr [ %i.ns, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i ], [ %i.rw, %bb.ca ], [ %i.sc, %.invoke ], [ %i.pf, %bb.bq ], [ %i.qy, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i ], [ %i.sd, %bb.cc ]
  %i.se = load i32, ptr %.1.i.i, align 4, !tbaa !543
  call void @llvm.experimental.noalias.scope.decl(metadata !11463)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !11463
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !11463
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !11463
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !11463
  %i.sf = sext i32 %i.se to i64                   ; 2 uses
  %i.sg = load ptr, ptr %i.bz, align 8, !tbaa !1009, !noalias !11463 ; 2 uses
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !1053, !noalias !11463 ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !1055, !noalias !11463
  %i.sk = getelementptr inbounds nuw [16 x i8], ptr %i.sj, i64 %i.sf ; 3 uses
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !543, !noalias !11463
  %i.sm = zext i32 %i.sl to i64
  %i.sn = getelementptr inbounds nuw [12 x i8], ptr %i.sh, i64 %i.sm ; 2 uses
  %i.so = load <2 x float>, ptr %i.sn, align 4, !tbaa !572, !noalias !11463
  %i.sp = fpext <2 x float> %i.so to <2 x double>
  store <2 x double> %i.sp, ptr %2, align 16, !tbaa !595, !noalias !11463
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !572, !noalias !11463
  %i.ss = fpext float %i.sr to double
  store double %i.ss, ptr %i.cj, align 16, !tbaa !595, !noalias !11463
  %i.st = getelementptr inbounds nuw i8, ptr %i.sk, i64 4
  %i.su = load i32, ptr %i.st, align 4, !tbaa !543, !noalias !11463
  %i.sv = zext i32 %i.su to i64
  %i.sw = getelementptr inbounds nuw [12 x i8], ptr %i.sh, i64 %i.sv ; 2 uses
  %i.sx = load <2 x float>, ptr %i.sw, align 4, !tbaa !572, !noalias !11463
  %i.sy = fpext <2 x float> %i.sx to <2 x double>
  store <2 x double> %i.sy, ptr %3, align 16, !tbaa !595, !noalias !11463
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !572, !noalias !11463
  %i.tb = fpext float %i.ta to double
  store double %i.tb, ptr %i.ck, align 16, !tbaa !595, !noalias !11463
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !543, !noalias !11463
  %i.te = zext i32 %i.td to i64
  %i.tf = getelementptr inbounds nuw [12 x i8], ptr %i.sh, i64 %i.te ; 2 uses
  %i.tg = load <2 x float>, ptr %i.tf, align 4, !tbaa !572, !noalias !11463
  %i.th = fpext <2 x float> %i.tg to <2 x double>
  store <2 x double> %i.th, ptr %4, align 16, !tbaa !595, !noalias !11463
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !572, !noalias !11463
  %i.tk = fpext float %i.tj to double
  store double %i.tk, ptr %i.cl, align 16, !tbaa !595, !noalias !11463
  invoke void @_ZN7openvdb5v13_04math29closestPointOnTriangleToPointERKNS1_4Vec3IdEES5_S5_S5_RS3_(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.noexc216 unwind label %bb.cg

.noexc216:                                        ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit
  %i.tl = load ptr, ptr %i.bz, align 8, !tbaa !1009, !noalias !11463 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !1055
  %i.to = getelementptr inbounds nuw [16 x i8], ptr %i.tn, i64 %i.sf
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 12
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !543 ; 2 uses
  %.not.i210 = icmp eq i32 %i.tq, -1
  br i1 %.not.i210, label %.noexc216._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit222_crit_edge, label %bb.cd

.noexc216._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit222_crit_edge: ; preds = %.noexc216
  %.sroa.0.0.copyload237.pre = load double, ptr %17, align 16
  %.sroa.7.0.copyload239.pre = load double, ptr %i.bx, align 8
  %.sroa.9.0.copyload241.pre = load double, ptr %i.by, align 16
  br label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit222

bb.cd:                                            ; preds = %.noexc216
  %i.tr = load ptr, ptr %i.tl, align 8, !tbaa !1053
  %i.ts = zext i32 %i.tq to i64
  %i.tt = getelementptr inbounds nuw [12 x i8], ptr %i.tr, i64 %i.ts ; 2 uses
  %i.tu = load <2 x float>, ptr %i.tt, align 4, !tbaa !572
  %i.tv = fpext <2 x float> %i.tu to <2 x double>
  store <2 x double> %i.tv, ptr %3, align 16, !tbaa !595, !noalias !11463
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !572
  %i.ty = fpext float %i.tx to double
  store double %i.ty, ptr %i.ck, align 16, !tbaa !595, !noalias !11463
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !11463
  invoke void @_ZN7openvdb5v13_04math29closestPointOnTriangleToPointERKNS1_4Vec3IdEES5_S5_S5_RS3_(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.noexc217 unwind label %bb.cg

.noexc217:                                        ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !noalias !11463
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !11463
  %i.tz = load double, ptr %i.cl, align 16, !tbaa !595, !noalias !11464
  %i.ua = load double, ptr %i.cm, align 16, !tbaa !595, !alias.scope !11463, !noalias !11465
  %.sroa.615.0.copyload.i213 = load double, ptr %i.bx, align 8, !noalias !11463 ; 3 uses
  %.sroa.013.0.copyload.i211 = load double, ptr %17, align 16, !noalias !11463 ; 3 uses
  %.sroa.013.0.copyload.i211.a = load double, ptr %i.by, align 16, !noalias !11463 ; 3 uses
  %i.ub = load <2 x double>, ptr %4, align 16, !tbaa !595, !noalias !11464 ; 2 uses
  %i.uc = load <2 x double>, ptr %20, align 16, !tbaa !595, !alias.scope !11463, !noalias !11465 ; 2 uses
  %26 = insertelement <2 x double> poison, double %.sroa.013.0.copyload.i211, i64 0
  %i.ud = shufflevector <2 x double> %26, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ue = shufflevector <2 x double> %i.ub, <2 x double> %i.uc, <2 x i32> <i32 0, i32 2>
  %i.uf = fsub <2 x double> %i.ud, %i.ue          ; 2 uses
  %27 = insertelement <2 x double> poison, double %.sroa.615.0.copyload.i213, i64 0
  %28 = shufflevector <2 x double> %27, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ug = shufflevector <2 x double> %i.ub, <2 x double> %i.uc, <2 x i32> <i32 1, i32 3>
  %i.uh = fsub <2 x double> %28, %i.ug            ; 2 uses
  %29 = insertelement <2 x double> poison, double %.sroa.013.0.copyload.i211.a, i64 0
  %30 = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ui = insertelement <2 x double> poison, double %i.tz, i64 0
  %i.uj = insertelement <2 x double> %i.ui, double %i.ua, i64 1
  %i.uk = fsub <2 x double> %30, %i.uj            ; 2 uses
  %i.ul = fmul <2 x double> %i.uh, %i.uh
  %i.um = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uf, <2 x double> %i.uf, <2 x double> %i.ul)
  %i.un = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uk, <2 x double> %i.uk, <2 x double> %i.um) ; 2 uses
  %i.uo = extractelement <2 x double> %i.un, i64 0
  %i.up = extractelement <2 x double> %i.un, i64 1
  %i.uq = fcmp olt double %i.uo, %i.up
  br i1 %i.uq, label %bb.ce, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit222

bb.ce:                                            ; preds = %.noexc217
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %20, ptr noundef nonnull align 16 dereferenceable(24) %4, i64 24, i1 false)
  br label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit222

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit222: ; preds = %.noexc216._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit222_crit_edge, %.noexc217, %bb.ce
  %.sroa.9.0.copyload241 = phi double [ %.sroa.9.0.copyload241.pre, %.noexc216._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit222_crit_edge ], [ %.sroa.013.0.copyload.i211.a, %.noexc217 ], [ %.sroa.013.0.copyload.i211.a, %bb.ce ]
  %.sroa.7.0.copyload239 = phi double [ %.sroa.7.0.copyload239.pre, %.noexc216._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit222_crit_edge ], [ %.sroa.615.0.copyload.i213, %.noexc217 ], [ %.sroa.615.0.copyload.i213, %bb.ce ]
  %.sroa.0.0.copyload237 = phi double [ %.sroa.0.0.copyload237.pre, %.noexc216._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit222_crit_edge ], [ %.sroa.013.0.copyload.i211, %.noexc217 ], [ %.sroa.013.0.copyload.i211, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !11463
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !11463
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !11463
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !11463
  %i.ur = load <3 x double>, ptr %20, align 16    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  %i.us = insertelement <2 x double> %i.gg, double %.sroa.0.0.copyload237, i64 1
  %i.ut = shufflevector <3 x double> %i.ur, <3 x double> poison, <2 x i32> zeroinitializer
  %i.uu = fsub <2 x double> %i.us, %i.ut          ; 4 uses
  %i.uv = insertelement <2 x double> %i.fv, double %.sroa.7.0.copyload239, i64 1
  %i.uw = shufflevector <3 x double> %i.ur, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ux = fsub <2 x double> %i.uv, %i.uw          ; 4 uses
  %i.uy = insertelement <2 x double> %i.gh, double %.sroa.9.0.copyload241, i64 1
  %i.uz = shufflevector <3 x double> %i.ur, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.va = fsub <2 x double> %i.uy, %i.uz          ; 4 uses
  %i.vb = fmul <2 x double> %i.ux, %i.ux
  %i.vc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uu, <2 x double> %i.uu, <2 x double> %i.vb)
  %i.vd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.va, <2 x double> %i.va, <2 x double> %i.vc)
  %i.ve = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.vd) ; 2 uses
  %i.vf = fdiv <2 x double> splat (double 1.000000e+00), %i.ve ; 3 uses
  %i.vg = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ve)
  %i.vh = fcmp ogt <2 x double> %i.vg, splat (double f0x3E7AD7F29ABCAF48) ; 3 uses
  %i.vi = shufflevector <2 x double> %i.va, <2 x double> %i.uu, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.vj = shufflevector <2 x double> %i.vf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vk = fmul <2 x double> %i.vi, %i.vj
  %i.vl = shufflevector <2 x i1> %i.vh, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.vm = select <2 x i1> %i.vl, <2 x double> %i.vk, <2 x double> %i.vi ; 2 uses
  %i.vn = fmul <2 x double> %i.ux, %i.vf
  %i.vo = select <2 x i1> %i.vh, <2 x double> %i.vn, <2 x double> %i.ux ; 2 uses
  %i.vp = shufflevector <2 x double> %i.va, <2 x double> %i.uu, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.vq = shufflevector <2 x double> %i.vf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.vr = fmul <2 x double> %i.vp, %i.vq
  %i.vs = shufflevector <2 x i1> %i.vh, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.vt = select <2 x i1> %i.vs, <2 x double> %i.vr, <2 x double> %i.vp ; 2 uses
  %shift = shufflevector <2 x double> %i.vo, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop465 = fmul <2 x double> %i.vo, %shift
  %i.vu = extractelement <2 x double> %foldExtExtBinop465, i64 0
  %i.vv = extractelement <2 x double> %i.vm, i64 1
  %i.vw = extractelement <2 x double> %i.vt, i64 1
  %i.vx = call double @llvm.fmuladd.f64(double %i.vw, double %i.vv, double %i.vu)
  %i.vy = extractelement <2 x double> %i.vm, i64 0
  %i.vz = extractelement <2 x double> %i.vt, i64 0
  %i.wa = call noundef double @llvm.fmuladd.f64(double %i.vz, double %i.vy, double %i.vx)
  %i.wb = fcmp ogt double %i.wa, 0.000000e+00
  br i1 %i.wb, label %.loopexit.sink.split, label %bb.ch

bb.cf:                                            ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread
  %i.wc = landingpad { ptr, i32 }
          cleanup
  br label %.body157

bb.cg:                                            ; preds = %.invoke, %bb.cd, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit
  %i.wd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %.body157

bb.ch:                                            ; preds = %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i, %bb.bl, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit222
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 26
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !11456

.loopexit.sink.split:                             ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit222, %bb.bk
  %i.we = load float, ptr %i.fd, align 4, !tbaa !572
  %i.wf = fneg float %i.we
  store float %i.wf, ptr %i.fd, align 4, !tbaa !572
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ch, %.loopexit.sink.split, %.lr.ph384
  %i.wg = add i32 %.sroa.5.0382, 1                ; 4 uses
  %i.wh = lshr i32 %i.wg, 6                       ; 3 uses
  %i.wi = icmp ugt i32 %i.wg, 511
  br i1 %i.wi, label %._crit_edge385, label %bb.ci

bb.ci:                                            ; preds = %.loopexit
  %i.wj = and i32 %i.wg, 63
  %i.wk = zext nneg i32 %i.wh to i64              ; 8 uses
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.wk
  %i.wm = load i64, ptr %i.wl, align 8, !tbaa !791 ; 2 uses
  %i.wn = zext nneg i32 %i.wj to i64              ; 2 uses
  %i.wo = shl nuw i64 1, %i.wn
  %i.wp = and i64 %i.wm, %i.wo
  %.not.i.i.i.i = icmp eq i64 %i.wp, 0
  br i1 %.not.i.i.i.i, label %bb.cj, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

bb.cj:                                            ; preds = %bb.ci
  %i.wq = shl nsw i64 -1, %i.wn
  %i.wr = and i64 %i.wm, %i.wq                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.wr, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i223.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i223.preheader:                      ; preds = %bb.cj
  %exitcond.not.i.i.i.i459 = icmp eq i32 %i.wh, 7
  br i1 %exitcond.not.i.i.i.i459, label %._crit_edge385, label %.lr.ph461

.lr.ph.i.i.i.i223:                                ; preds = %.lr.ph461
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge385, label %.lr.ph461.1

.lr.ph461.1:                                      ; preds = %.lr.ph.i.i.i.i223
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.wk, 2 ; 3 uses
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.1
  %i.wt = load i64, ptr %i.ws, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.wt, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i223.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i223.1:                              ; preds = %.lr.ph461.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge385, label %.lr.ph461.2

.lr.ph461.2:                                      ; preds = %.lr.ph.i.i.i.i223.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.wk, 3 ; 3 uses
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.2
  %i.wv = load i64, ptr %i.wu, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.wv, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i223.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i223.2:                              ; preds = %.lr.ph461.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge385, label %.lr.ph461.3

.lr.ph461.3:                                      ; preds = %.lr.ph.i.i.i.i223.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.wk, 4 ; 3 uses
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.3
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.wx, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i223.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i223.3:                              ; preds = %.lr.ph461.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge385, label %.lr.ph461.4

.lr.ph461.4:                                      ; preds = %.lr.ph.i.i.i.i223.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.wk, 5 ; 3 uses
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.4
  %i.wz = load i64, ptr %i.wy, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.wz, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i223.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i223.4:                              ; preds = %.lr.ph461.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge385, label %.lr.ph461.5

.lr.ph461.5:                                      ; preds = %.lr.ph.i.i.i.i223.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.wk, 6 ; 3 uses
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.5
  %i.xb = load i64, ptr %i.xa, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.xb, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i223.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i223.5:                              ; preds = %.lr.ph461.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge385, label %.lr.ph461.6

.lr.ph461.6:                                      ; preds = %.lr.ph.i.i.i.i223.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.wk, 7 ; 2 uses
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.6
  %i.xd = load i64, ptr %i.xc, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.xd, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge385, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph461:                                        ; preds = %.lr.ph.i.i.i.i223.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.wk, 1 ; 3 uses
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i
  %i.xf = load i64, ptr %i.xe, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.xf, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i223, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph461.6, %.lr.ph461.5, %.lr.ph461.4, %.lr.ph461.3, %.lr.ph461.2, %.lr.ph461.1, %.lr.ph461
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph461 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph461.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph461.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph461.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph461.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph461.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph461.6 ]
  %.lcssa = phi i64 [ %i.xf, %.lr.ph461 ], [ %i.wt, %.lr.ph461.1 ], [ %i.wv, %.lr.ph461.2 ], [ %i.wx, %.lr.ph461.3 ], [ %i.wz, %.lr.ph461.4 ], [ %i.xb, %.lr.ph461.5 ], [ %i.xd, %.lr.ph461.6 ]
  %i.xg = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.cj
  %.016.lcssa.i.i.i.i = phi i32 [ %i.wh, %bb.cj ], [ %i.xg, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.wr, %bb.cj ], [ %.lcssa, %.critedge.loopexit.i.i.i.i ]
  %i.xh = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.xi = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.xj = trunc nuw nsw i64 %i.xi to i32
  %i.xk = or disjoint i32 %i.xh, %i.xj
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit: ; preds = %bb.ci, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.xk, %.critedge.i.i.i.i ], [ %i.wg, %bb.ci ] ; 2 uses
  %.not346 = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not346, label %._crit_edge385, label %.lr.ph384

._crit_edge385:                                   ; preds = %.loopexit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit, %.lr.ph.i.i.i.i223.preheader, %.lr.ph461.6, %.lr.ph.i.i.i.i223, %.lr.ph.i.i.i.i223.1, %.lr.ph.i.i.i.i223.2, %.lr.ph.i.i.i.i223.3, %.lr.ph.i.i.i.i223.4, %.lr.ph.i.i.i.i223.5, %bb.au
  %i.xl = add nuw i64 %.0118386, 1                ; 2 uses
  %exitcond398.not = icmp eq i64 %i.xl, %i.bt
  br i1 %exitcond398.not, label %._crit_edge388, label %bb.ag, !llvm.loop !11457

.body157:                                         ; preds = %bb.aw, %bb.bi, %bb.cg, %bb.cf, %bb.ay, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i, %bb.av, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i162, %bb.ax, %bb.y, %bb.ab, %bb.x
  %.pn133.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.x ], [ %i.bl, %bb.y ], [ %i.bq, %bb.ab ], [ %i.et, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i162 ], [ %i.ko, %bb.bi ], [ %i.fi, %bb.aw ], [ %i.du, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ], [ %i.fj, %bb.ax ], [ %i.fk, %bb.ay ], [ %i.fh, %bb.av ], [ %i.wd, %bb.cg ], [ %i.wc, %bb.cf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %15, align 8, !tbaa !545
  %i.xm = load ptr, ptr %i.ah, align 8, !tbaa !3207 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSD_26QuadAndTriangleDataAdapterINSC_4math4Vec3IfEENSR_4Vec4IjEEEEEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread, %bb.h
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
  %.0118384 = phi i64 [ %i.bs, %.lr.ph385 ], [ %i.xl, %._crit_edge383 ] ; 2 uses
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
end_hunk_3
begin_hunk_4_@_ZNK7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS1_26QuadAndTriangleDataAdapterINS0_4math4Vec3IfEENSF_4Vec4IjEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
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
  %storemerge365 = phi i32 [ %i.lz, %._crit_edge363.split ], [ %.sroa.speculated16.i, %bb.az ]
  %i.gi = shl i32 %storemerge365, 6
  %i.gj = and i32 %i.gi, 448
  store i32 %.sroa.speculated11.i, ptr %i.bc, align 4, !tbaa !543
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph362, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge
  %storemerge345360 = phi i32 [ %.sroa.speculated11.i, %.lr.ph362 ], [ %i.lx, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge ]
  %i.gk = shl i32 %storemerge345360, 3
  %i.gl = and i32 %i.gk, 56
  %i.gm = or disjoint i32 %i.gl, %i.gj
  store i32 %.sroa.speculated.i, ptr %i.bd, align 8, !tbaa !543
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph, %bb.bj
  %storemerge346358 = phi i32 [ %.sroa.speculated.i, %.lr.ph ], [ %i.lv, %bb.bj ] ; 4 uses
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
  %21 = load <2 x double>, ptr %i.bx, align 8
  %22 = load <2 x double>, ptr %17, align 16
  %.sroa.917.0.copyload.i = load double, ptr %i.by, align 16, !noalias !11601
  %i.je = load <2 x double>, ptr %9, align 16, !tbaa !595, !noalias !11602 ; 2 uses
  %i.jf = load <2 x double>, ptr %19, align 16, !tbaa !595, !alias.scope !11601, !noalias !11603 ; 2 uses
  %i.jg = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jh = shufflevector <2 x double> %i.je, <2 x double> %i.jf, <2 x i32> <i32 0, i32 2>
  %i.ji = fsub <2 x double> %i.jg, %i.jh          ; 2 uses
  %23 = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jj = shufflevector <2 x double> %i.je, <2 x double> %i.jf, <2 x i32> <i32 1, i32 3>
  %i.jk = fsub <2 x double> %23, %i.jj            ; 2 uses
  %24 = insertelement <2 x double> poison, double %.sroa.917.0.copyload.i, i64 0
  %25 = shufflevector <2 x double> %24, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jl = insertelement <2 x double> poison, double %i.jc, i64 0
  %i.jm = insertelement <2 x double> %i.jl, double %i.jd, i64 1
  %i.jn = fsub <2 x double> %25, %i.jm            ; 2 uses
  %i.jo = fmul <2 x double> %i.jk, %i.jk
  %i.jp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ji, <2 x double> %i.ji, <2 x double> %i.jo)
  %i.jq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jn, <2 x double> %i.jn, <2 x double> %i.jp) ; 2 uses
  %i.jr = extractelement <2 x double> %i.jq, i64 0
  %i.js = extractelement <2 x double> %i.jq, i64 1
  %i.jt = fcmp olt double %i.jr, %i.js
  br i1 %i.jt, label %bb.bf, label %bb.bg

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
  %i.ju = load ptr, ptr %i.bg, align 8, !tbaa !3195
  %i.jv = getelementptr inbounds nuw [24 x i8], ptr %i.ju, i64 %i.he ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 24 ; 2 uses
  %.sroa.9261.0.copyload263 = load double, ptr %i.by, align 16
  %i.jx = load <2 x double>, ptr %17, align 16
  %i.jy = load <2 x double>, ptr %i.hg, align 8, !tbaa !595, !noalias !11604
  %i.jz = fsub <2 x double> %i.jx, %i.jy          ; 5 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !595, !noalias !11604
  %i.kc = fsub double %.sroa.9261.0.copyload263, %i.kb ; 4 uses
  %i.kd = extractelement <2 x double> %i.jz, i64 0 ; 2 uses
  store <2 x double> %i.jz, ptr %i.jw, align 8
  %.sroa.9261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jv, i64 40 ; 2 uses
  store double %i.kc, ptr %.sroa.9261.0..sroa_idx, align 8
  %foldExtExtBinop = fmul <2 x double> %i.jz, %i.jz
  %i.ke = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.kf = call double @llvm.fmuladd.f64(double %i.kd, double %i.kd, double %i.ke)
  %i.kg = call double @llvm.fmuladd.f64(double %i.kc, double %i.kc, double %i.kf)
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.kg) ; 2 uses
  %i.kh = call noundef double @llvm.fabs.f64(double %sqrt.i.i)
  %i.ki = fcmp ogt double %i.kh, f0x3E7AD7F29ABCAF48
  br i1 %i.ki, label %bb.bh, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198

bb.bh:                                            ; preds = %bb.bg
  %i.kj = fdiv double 1.000000e+00, %sqrt.i.i     ; 2 uses
  %i.kk = fmul double %i.kc, %i.kj
  %i.kl = insertelement <2 x double> poison, double %i.kj, i64 0
  %i.km = shufflevector <2 x double> %i.kl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kn = fmul <2 x double> %i.jz, %i.km
  store <2 x double> %i.kn, ptr %i.jw, align 8, !tbaa !595
  store double %i.kk, ptr %.sroa.9261.0..sroa_idx, align 8, !tbaa !595
  br label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198

bb.bi:                                            ; preds = %bb.be, %bb.bd
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %.body155

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198: ; preds = %._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198_crit_edge, %bb.bg, %bb.bh
  %.pre-phi = phi i64 [ %.pre401, %._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198_crit_edge ], [ %i.he, %bb.bg ], [ %i.he, %bb.bh ]
  %i.kp = load ptr, ptr %i.bg, align 8, !tbaa !3195
  %i.kq = getelementptr inbounds nuw [24 x i8], ptr %i.kp, i64 %.pre-phi ; 5 uses
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !595, !noalias !11605
  %i.ks = fsub double %i.fu, %i.kr                ; 4 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ku = load <2 x double>, ptr %i.kt, align 8, !tbaa !595, !noalias !11605
  %i.kv = fsub <2 x double> %i.fv, %i.ku          ; 5 uses
  %i.kw = extractelement <2 x double> %i.kv, i64 0
  %foldExtExtBinop461 = fmul <2 x double> %i.kv, %i.kv
  %i.kx = extractelement <2 x double> %foldExtExtBinop461, i64 0
  %i.ky = call double @llvm.fmuladd.f64(double %i.ks, double %i.ks, double %i.kx)
  %i.kz = extractelement <2 x double> %i.kv, i64 1 ; 3 uses
  %i.la = call double @llvm.fmuladd.f64(double %i.kz, double %i.kz, double %i.ky)
  %sqrt.i.i197 = call noundef double @llvm.sqrt.f64(double %i.la) ; 2 uses
  %i.lb = call noundef double @llvm.fabs.f64(double %sqrt.i.i197)
  %i.lc = fcmp ogt double %i.lb, f0x3E7AD7F29ABCAF48 ; 3 uses
  %i.ld = fdiv double 1.000000e+00, %sqrt.i.i197  ; 2 uses
  %i.le = fmul double %i.ks, %i.ld
  %i.lf = insertelement <2 x double> poison, double %i.ld, i64 0
  %i.lg = shufflevector <2 x double> %i.lf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lh = fmul <2 x double> %i.kv, %i.lg          ; 2 uses
  %i.li = extractelement <2 x double> %i.lh, i64 1
  %.sroa.19.0 = select i1 %i.lc, double %i.li, double %i.kz
  %i.lj = extractelement <2 x double> %i.lh, i64 0
  %.sroa.11281.0 = select i1 %i.lc, double %i.lj, double %i.kw
  %.sroa.0277.0 = select i1 %i.lc, double %i.le, double %i.ks
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kq, i64 24
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !595
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kq, i64 32
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !595
  %i.lo = fmul double %i.ln, %.sroa.11281.0
  %i.lp = call double @llvm.fmuladd.f64(double %i.ll, double %.sroa.0277.0, double %i.lo)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.kq, i64 40
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !595
  %i.ls = call noundef double @llvm.fmuladd.f64(double %i.lr, double %.sroa.19.0, double %i.lp)
  %i.lt = fcmp ogt double %i.ls, 0.000000e+00
  br i1 %i.lt, label %bb.bk, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge397

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge397: ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198
  %.pre = load i32, ptr %i.bd, align 8, !tbaa !543
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge397, %bb.bb, %bb.ba
  %i.lu = phi i32 [ %.pre, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge397 ], [ %storemerge346358, %bb.bb ], [ %storemerge346358, %bb.ba ] ; 2 uses
  %i.lv = add nsw i32 %i.lu, 1                    ; 2 uses
  store i32 %i.lv, ptr %i.bd, align 8, !tbaa !543
  %.not.not = icmp slt i32 %i.lu, %.sroa.speculated.i187
  br i1 %.not.not, label %bb.ba, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge, !llvm.loop !11590

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge: ; preds = %bb.bj
  %i.lw = load i32, ptr %i.bc, align 4, !tbaa !543 ; 2 uses
  %i.lx = add nsw i32 %i.lw, 1                    ; 2 uses
  store i32 %i.lx, ptr %i.bc, align 4, !tbaa !543
  %.not = icmp slt i32 %i.lw, %.sroa.speculated11.i186
  br i1 %.not, label %.lr.ph, label %._crit_edge363.split, !llvm.loop !11591

._crit_edge363.split:                             ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198._crit_edge
  %i.ly = load i32, ptr %16, align 8, !tbaa !543  ; 2 uses
  %i.lz = add nsw i32 %i.ly, 1                    ; 2 uses
  store i32 %i.lz, ptr %16, align 8, !tbaa !543
  %.not453 = icmp slt i32 %i.ly, %.sroa.speculated16.i185
  br i1 %.not453, label %.lr.ph362, label %.preheader.preheader, !llvm.loop !11592

bb.bk:                                            ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit198
  %i.ma = load <2 x i32>, ptr %16, align 8, !tbaa !543
  %i.mb = add nsw <2 x i32> %i.ma, splat (i32 1)
  store <2 x i32> %i.mb, ptr %16, align 8, !tbaa !543
  br label %.loopexit.sink.split

.preheader:                                       ; preds = %.preheader.preheader, %bb.ch
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ch ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.mc = getelementptr inbounds nuw [12 x i8], ptr @_ZN7openvdb5v13_04util13COORD_OFFSETSE, i64 %indvars.iv ; 3 uses
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !543
  %i.me = add nsw i32 %i.md, %i.fo                ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mc, i64 4
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !543
  %i.mh = add nsw i32 %i.mg, %i.fx                ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !543
  %i.mk = add nsw i32 %i.mj, %i.fz                ; 3 uses
  %.sroa.2.0.insert.ext.i199 = zext i32 %i.mh to i64
  %.sroa.2.0.insert.shift.i200 = shl nuw i64 %.sroa.2.0.insert.ext.i199, 32
  %.sroa.0.0.insert.ext.i201 = zext i32 %i.me to i64
  %.sroa.0.0.insert.insert.i202 = or disjoint i64 %.sroa.2.0.insert.shift.i200, %.sroa.0.0.insert.ext.i201
  store i64 %.sroa.0.0.insert.insert.i202, ptr %16, align 8
  store i32 %i.mk, ptr %i.bd, align 8, !tbaa !570
  %i.ml = icmp slt i32 %i.me, %.sroa.speculated16.i
  %i.mm = icmp slt i32 %i.mh, %.sroa.speculated11.i
  %or.cond449 = select i1 %i.ml, i1 true, i1 %i.mm
  br i1 %or.cond449, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread, label %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i

_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i: ; preds = %.preheader
  %i.mn = icmp sge i32 %i.mk, %.sroa.speculated.i
  %i.mo = icmp sge i32 %.sroa.speculated16.i185, %i.me
  %or.cond.i.not351 = and i1 %i.mn, %i.mo
  %i.mp = icmp sge i32 %.sroa.speculated11.i186, %i.mh
  %or.cond10.i.not348 = select i1 %or.cond.i.not351, i1 %i.mp, i1 false
  %i.mq = icmp sge i32 %.sroa.speculated.i187, %i.mk
  %or.cond341 = select i1 %or.cond10.i.not348, i1 %i.mq, i1 false
  br i1 %or.cond341, label %bb.ch, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread

_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread: ; preds = %.preheader, %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i
  %i.mr = invoke noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERd(ptr noundef nonnull align 8 dereferenceable(96) %14, ptr noundef nonnull align 4 dereferenceable(12) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.bl unwind label %bb.cf

bb.bl:                                            ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread
  %i.ms = load double, ptr %i.h, align 8
  %i.mt = fcmp olt double %i.ms, -7.500000e-01
  %or.cond = select i1 %i.mr, i1 %i.mt, i1 false
  br i1 %or.cond, label %bb.bm, label %bb.ch

bb.bm:                                            ; preds = %bb.bl
  %i.mu = load <2 x i32>, ptr %16, align 8, !tbaa !543 ; 3 uses
  %i.mv = extractelement <2 x i32> %i.mu, i64 1   ; 10 uses
  %i.mw = extractelement <2 x i32> %i.mu, i64 0   ; 7 uses
  %i.mx = sitofp <2 x i32> %i.mu to <2 x double>
  store <2 x double> %i.mx, ptr %17, align 16, !tbaa !595
  %i.my = load i32, ptr %i.bd, align 8, !tbaa !543 ; 11 uses
  %i.mz = sitofp i32 %i.my to double
  store double %i.mz, ptr %i.by, align 16, !tbaa !595
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  %i.na = and i32 %i.mw, -8
  %i.nb = load i32, ptr %i.ay, align 8, !tbaa !543
  %i.nc = icmp eq i32 %i.na, %i.nb
  br i1 %i.nc, label %bb.bn, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i

bb.bn:                                            ; preds = %bb.bm
  %i.nd = and i32 %i.mv, -8
  %i.ne = load i32, ptr %i.ce, align 4, !tbaa !543
  %i.nf = icmp eq i32 %i.nd, %i.ne
  br i1 %i.nf, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.bn
  %i.ng = and i32 %i.my, -8
  %i.nh = load i32, ptr %.sroa.6.0..sroa_idx.i.i145, align 8, !tbaa !543
  %i.ni = icmp eq i32 %i.ng, %i.nh
  br i1 %i.ni, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.thread.i

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i
  %i.nj = load ptr, ptr %i.ax, align 8, !tbaa !3213 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZNK7openvdb5v13_05tools23mesh_to_volume_internal28ComputeIntersectingVoxelSignINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENS1_26QuadAndTriangleDataAdapterINS0_4math4Vec3IfEENSF_4Vec4IjEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  br i1 %i.qh, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i: ; preds = %bb.bv
  %i.qi = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 40
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !543
  %i.qk = icmp slt i32 %i.qj, %i.ps
  br i1 %i.qk, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.bu, %bb.bs
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.bv, %bb.bt
  %.sink.i.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ 16, %bb.bv ], [ 16, %bb.bt ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ]
  %.19.i.i.i.i.i = phi ptr [ %.0813.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ %.014.i.i.i.i.i, %bb.bv ], [ %.014.i.i.i.i.i, %bb.bt ], [ %.014.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ] ; 7 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 %.sink.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %i.ql, align 8, !tbaa !1171 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, label %bb.bs, !llvm.loop !308

_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i
  %i.qm = icmp eq ptr %.19.i.i.i.i.i, %i.pv
  br i1 %i.qm, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.bw

bb.bw:                                            ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i
  %i.qn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !543 ; 2 uses
  %i.qp = icmp slt i32 %i.pz, %i.qo
  br i1 %i.qp, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.qq = icmp sgt i32 %i.pz, %i.qo
  br i1 %i.qq, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.qr = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 36
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !543 ; 2 uses
  %i.qt = icmp slt i32 %i.pr, %i.qs
  br i1 %i.qt, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.qu = icmp sgt i32 %i.pr, %i.qs
  br i1 %i.qu, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.bz
  %i.qv = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !543
  %i.qx = icmp slt i32 %i.ps, %i.qw
  br i1 %i.qx, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.by, %bb.bw, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKiLm3ELm4EEET0_SM_SQ_.exit.i
  %i.qy = getelementptr inbounds nuw i8, ptr %i.pk, i64 48
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.bz, %bb.bx
  %i.qz = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 48 ; 2 uses
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !1819 ; 2 uses
  %.not.i228 = icmp eq ptr %i.ra, null
  br i1 %.not.i228, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.rb = and i32 %i.mv, -4096
  %i.rc = and i32 %i.my, -4096
  %.sroa.2.0.insert.ext.i.i229 = zext i32 %i.rb to i64
  %.sroa.2.0.insert.shift.i.i230 = shl nuw i64 %.sroa.2.0.insert.ext.i.i229, 32
  %.sroa.0.0.insert.ext.i.i231 = zext i32 %i.od to i64
  %.sroa.0.0.insert.insert.i.i232 = or disjoint i64 %.sroa.2.0.insert.shift.i.i230, %.sroa.0.0.insert.ext.i.i231
  store i64 %.sroa.0.0.insert.insert.i.i232, ptr %.06.i.i.i.i.ptr.2.i.i.i148, align 8
  store i32 %i.rc, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i149, align 8, !tbaa !570
  store ptr %i.ra, ptr %i.ch, align 8, !tbaa !1857
  %i.rd = load ptr, ptr %i.qz, align 8, !tbaa !1821 ; 2 uses
  %i.re = shl i32 %i.mw, 3
  %i.rf = and i32 %i.re, 31744
  %i.rg = lshr i32 %i.mv, 2
  %i.rh = and i32 %i.rg, 992
  %i.ri = or disjoint i32 %i.rh, %i.rf            ; 2 uses
  %i.rj = lshr i32 %i.my, 7
  %i.rk = and i32 %i.rj, 31
  %i.rl = or disjoint i32 %i.rk, %i.ri            ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rd, i64 262144
  %i.rn = lshr i32 %i.ri, 6
  %i.ro = zext nneg i32 %i.rn to i64
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.rm, i64 %i.ro
  %i.rq = load i64, ptr %i.rp, align 8, !tbaa !791
  %i.rr = and i32 %i.rl, 63
  %i.rs = zext nneg i32 %i.rr to i64
  %i.rt = shl nuw i64 1, %i.rs
  %i.ru = and i64 %i.rq, %i.rt
  %.not.i.i233 = icmp eq i64 %i.ru, 0
  %i.rv = zext nneg i32 %i.rl to i64
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.rd, i64 %i.rv ; 3 uses
  br i1 %.not.i.i233, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !570
  %i.ry = and i32 %i.mv, -128
  %i.rz = and i32 %i.my, -128
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.ry to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.nt to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %.06.i.i.i.i.ptr.1.i.i.i146, align 4
  store i32 %i.rz, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i147, align 4, !tbaa !570
  store ptr %i.rx, ptr %i.ci, align 8, !tbaa !1879
  %i.sa = load ptr, ptr %i.rw, align 8, !tbaa !570
  br label %.invoke

.invoke:                                          ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i, %bb.br, %bb.cb
  %i.sb = phi ptr [ %i.sa, %bb.cb ], [ %i.pj, %bb.br ], [ %i.oc, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKiSK_.exit.i ]
  %i.sc = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIiLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKiRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.sb, ptr noundef nonnull align 4 dereferenceable(12) %16, ptr noundef nonnull align 8 dereferenceable(96) %15)
          to label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit unwind label %bb.cg

bb.cc:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.sd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 56
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit: ; preds = %.invoke, %bb.bq, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i, %bb.cc, %bb.ca, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i
  %.1.i.i = phi ptr [ %i.ns, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKiSK_.exit.i ], [ %i.rw, %bb.ca ], [ %i.sc, %.invoke ], [ %i.pf, %bb.bq ], [ %i.qy, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i ], [ %i.sd, %bb.cc ]
  %i.se = load i32, ptr %.1.i.i, align 4, !tbaa !543
  call void @llvm.experimental.noalias.scope.decl(metadata !11606)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !11606
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !11606
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !11606
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !11606
  %i.sf = sext i32 %i.se to i64                   ; 2 uses
  %i.sg = load ptr, ptr %i.bz, align 8, !tbaa !1026, !noalias !11606 ; 2 uses
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !1053, !noalias !11606 ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !1055, !noalias !11606
  %i.sk = getelementptr inbounds nuw [16 x i8], ptr %i.sj, i64 %i.sf ; 3 uses
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !543, !noalias !11606
  %i.sm = zext i32 %i.sl to i64
  %i.sn = getelementptr inbounds nuw [12 x i8], ptr %i.sh, i64 %i.sm ; 2 uses
  %i.so = load <2 x float>, ptr %i.sn, align 4, !tbaa !572, !noalias !11606
  %i.sp = fpext <2 x float> %i.so to <2 x double>
  store <2 x double> %i.sp, ptr %2, align 16, !tbaa !595, !noalias !11606
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !572, !noalias !11606
  %i.ss = fpext float %i.sr to double
  store double %i.ss, ptr %i.cj, align 16, !tbaa !595, !noalias !11606
  %i.st = getelementptr inbounds nuw i8, ptr %i.sk, i64 4
  %i.su = load i32, ptr %i.st, align 4, !tbaa !543, !noalias !11606
  %i.sv = zext i32 %i.su to i64
  %i.sw = getelementptr inbounds nuw [12 x i8], ptr %i.sh, i64 %i.sv ; 2 uses
  %i.sx = load <2 x float>, ptr %i.sw, align 4, !tbaa !572, !noalias !11606
  %i.sy = fpext <2 x float> %i.sx to <2 x double>
  store <2 x double> %i.sy, ptr %3, align 16, !tbaa !595, !noalias !11606
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !572, !noalias !11606
  %i.tb = fpext float %i.ta to double
  store double %i.tb, ptr %i.ck, align 16, !tbaa !595, !noalias !11606
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !543, !noalias !11606
  %i.te = zext i32 %i.td to i64
  %i.tf = getelementptr inbounds nuw [12 x i8], ptr %i.sh, i64 %i.te ; 2 uses
  %i.tg = load <2 x float>, ptr %i.tf, align 4, !tbaa !572, !noalias !11606
  %i.th = fpext <2 x float> %i.tg to <2 x double>
  store <2 x double> %i.th, ptr %4, align 16, !tbaa !595, !noalias !11606
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !572, !noalias !11606
  %i.tk = fpext float %i.tj to double
  store double %i.tk, ptr %i.cl, align 16, !tbaa !595, !noalias !11606
  invoke void @_ZN7openvdb5v13_04math29closestPointOnTriangleToPointERKNS1_4Vec3IdEES5_S5_S5_RS3_(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.noexc214 unwind label %bb.cg

.noexc214:                                        ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit
  %i.tl = load ptr, ptr %i.bz, align 8, !tbaa !1026, !noalias !11606 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !1055
  %i.to = getelementptr inbounds nuw [16 x i8], ptr %i.tn, i64 %i.sf
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 12
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !543 ; 2 uses
  %.not.i208 = icmp eq i32 %i.tq, -1
  br i1 %.not.i208, label %.noexc214._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit220_crit_edge, label %bb.cd

.noexc214._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit220_crit_edge: ; preds = %.noexc214
  %.sroa.0.0.copyload235.pre = load double, ptr %17, align 16
  %.sroa.7.0.copyload237.pre = load double, ptr %i.bx, align 8
  %.sroa.9.0.copyload239.pre = load double, ptr %i.by, align 16
  br label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit220

bb.cd:                                            ; preds = %.noexc214
  %i.tr = load ptr, ptr %i.tl, align 8, !tbaa !1053
  %i.ts = zext i32 %i.tq to i64
  %i.tt = getelementptr inbounds nuw [12 x i8], ptr %i.tr, i64 %i.ts ; 2 uses
  %i.tu = load <2 x float>, ptr %i.tt, align 4, !tbaa !572
  %i.tv = fpext <2 x float> %i.tu to <2 x double>
  store <2 x double> %i.tv, ptr %3, align 16, !tbaa !595, !noalias !11606
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !572
  %i.ty = fpext float %i.tx to double
  store double %i.ty, ptr %i.ck, align 16, !tbaa !595, !noalias !11606
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !11606
  invoke void @_ZN7openvdb5v13_04math29closestPointOnTriangleToPointERKNS1_4Vec3IdEES5_S5_S5_RS3_(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.noexc215 unwind label %bb.cg

.noexc215:                                        ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !noalias !11606
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !11606
  %i.tz = load double, ptr %i.cl, align 16, !tbaa !595, !noalias !11607
  %i.ua = load double, ptr %i.cm, align 16, !tbaa !595, !alias.scope !11606, !noalias !11608
  %.sroa.615.0.copyload.i211 = load double, ptr %i.bx, align 8, !noalias !11606 ; 3 uses
  %.sroa.013.0.copyload.i209 = load double, ptr %17, align 16, !noalias !11606 ; 3 uses
  %.sroa.013.0.copyload.i209.a = load double, ptr %i.by, align 16, !noalias !11606 ; 3 uses
  %i.ub = load <2 x double>, ptr %4, align 16, !tbaa !595, !noalias !11607 ; 2 uses
  %i.uc = load <2 x double>, ptr %20, align 16, !tbaa !595, !alias.scope !11606, !noalias !11608 ; 2 uses
  %26 = insertelement <2 x double> poison, double %.sroa.013.0.copyload.i209, i64 0
  %i.ud = shufflevector <2 x double> %26, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ue = shufflevector <2 x double> %i.ub, <2 x double> %i.uc, <2 x i32> <i32 0, i32 2>
  %i.uf = fsub <2 x double> %i.ud, %i.ue          ; 2 uses
  %27 = insertelement <2 x double> poison, double %.sroa.615.0.copyload.i211, i64 0
  %28 = shufflevector <2 x double> %27, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ug = shufflevector <2 x double> %i.ub, <2 x double> %i.uc, <2 x i32> <i32 1, i32 3>
  %i.uh = fsub <2 x double> %28, %i.ug            ; 2 uses
  %29 = insertelement <2 x double> poison, double %.sroa.013.0.copyload.i209.a, i64 0
  %30 = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ui = insertelement <2 x double> poison, double %i.tz, i64 0
  %i.uj = insertelement <2 x double> %i.ui, double %i.ua, i64 1
  %i.uk = fsub <2 x double> %30, %i.uj            ; 2 uses
  %i.ul = fmul <2 x double> %i.uh, %i.uh
  %i.um = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uf, <2 x double> %i.uf, <2 x double> %i.ul)
  %i.un = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uk, <2 x double> %i.uk, <2 x double> %i.um) ; 2 uses
  %i.uo = extractelement <2 x double> %i.un, i64 0
  %i.up = extractelement <2 x double> %i.un, i64 1
  %i.uq = fcmp olt double %i.uo, %i.up
  br i1 %i.uq, label %bb.ce, label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit220

bb.ce:                                            ; preds = %.noexc215
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %20, ptr noundef nonnull align 16 dereferenceable(24) %4, i64 24, i1 false)
  br label %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit220

_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit220: ; preds = %.noexc214._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit220_crit_edge, %.noexc215, %bb.ce
  %.sroa.9.0.copyload239 = phi double [ %.sroa.9.0.copyload239.pre, %.noexc214._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit220_crit_edge ], [ %.sroa.013.0.copyload.i209.a, %.noexc215 ], [ %.sroa.013.0.copyload.i209.a, %bb.ce ]
  %.sroa.7.0.copyload237 = phi double [ %.sroa.7.0.copyload237.pre, %.noexc214._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit220_crit_edge ], [ %.sroa.615.0.copyload.i211, %.noexc215 ], [ %.sroa.615.0.copyload.i211, %bb.ce ]
  %.sroa.0.0.copyload235 = phi double [ %.sroa.0.0.copyload235.pre, %.noexc214._ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit220_crit_edge ], [ %.sroa.013.0.copyload.i209, %.noexc215 ], [ %.sroa.013.0.copyload.i209, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !11606
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !11606
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !11606
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !11606
  %i.ur = load <3 x double>, ptr %20, align 16    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  %i.us = insertelement <2 x double> %i.gg, double %.sroa.0.0.copyload235, i64 1
  %i.ut = shufflevector <3 x double> %i.ur, <3 x double> poison, <2 x i32> zeroinitializer
  %i.uu = fsub <2 x double> %i.us, %i.ut          ; 4 uses
  %i.uv = insertelement <2 x double> %i.fv, double %.sroa.7.0.copyload237, i64 1
  %i.uw = shufflevector <3 x double> %i.ur, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ux = fsub <2 x double> %i.uv, %i.uw          ; 4 uses
  %i.uy = insertelement <2 x double> %i.gh, double %.sroa.9.0.copyload239, i64 1
  %i.uz = shufflevector <3 x double> %i.ur, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.va = fsub <2 x double> %i.uy, %i.uz          ; 4 uses
  %i.vb = fmul <2 x double> %i.ux, %i.ux
  %i.vc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uu, <2 x double> %i.uu, <2 x double> %i.vb)
  %i.vd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.va, <2 x double> %i.va, <2 x double> %i.vc)
  %i.ve = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.vd) ; 2 uses
  %i.vf = fdiv <2 x double> splat (double 1.000000e+00), %i.ve ; 3 uses
  %i.vg = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ve)
  %i.vh = fcmp ogt <2 x double> %i.vg, splat (double f0x3E7AD7F29ABCAF48) ; 3 uses
  %i.vi = shufflevector <2 x double> %i.va, <2 x double> %i.uu, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.vj = shufflevector <2 x double> %i.vf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vk = fmul <2 x double> %i.vi, %i.vj
  %i.vl = shufflevector <2 x i1> %i.vh, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.vm = select <2 x i1> %i.vl, <2 x double> %i.vk, <2 x double> %i.vi ; 2 uses
  %i.vn = fmul <2 x double> %i.ux, %i.vf
  %i.vo = select <2 x i1> %i.vh, <2 x double> %i.vn, <2 x double> %i.ux ; 2 uses
  %i.vp = shufflevector <2 x double> %i.va, <2 x double> %i.uu, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.vq = shufflevector <2 x double> %i.vf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.vr = fmul <2 x double> %i.vp, %i.vq
  %i.vs = shufflevector <2 x i1> %i.vh, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.vt = select <2 x i1> %i.vs, <2 x double> %i.vr, <2 x double> %i.vp ; 2 uses
  %shift = shufflevector <2 x double> %i.vo, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop463 = fmul <2 x double> %i.vo, %shift
  %i.vu = extractelement <2 x double> %foldExtExtBinop463, i64 0
  %i.vv = extractelement <2 x double> %i.vm, i64 1
  %i.vw = extractelement <2 x double> %i.vt, i64 1
  %i.vx = call double @llvm.fmuladd.f64(double %i.vw, double %i.vv, double %i.vu)
  %i.vy = extractelement <2 x double> %i.vm, i64 0
  %i.vz = extractelement <2 x double> %i.vt, i64 0
  %i.wa = call noundef double @llvm.fmuladd.f64(double %i.vz, double %i.vy, double %i.vx)
  %i.wb = fcmp ogt double %i.wa, 0.000000e+00
  br i1 %i.wb, label %.loopexit.sink.split, label %bb.ch

bb.cf:                                            ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit.thread
  %i.wc = landingpad { ptr, i32 }
          cleanup
  br label %.body155

bb.cg:                                            ; preds = %.invoke, %bb.cd, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit
  %i.wd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %.body155

bb.ch:                                            ; preds = %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i, %bb.bl, %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit220
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 26
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !11599

.loopexit.sink.split:                             ; preds = %_ZN7openvdb5v13_04math4Vec3IdE9normalizeEd.exit220, %bb.bk
  %i.we = load double, ptr %i.fd, align 8, !tbaa !595
  %i.wf = fneg double %i.we
  store double %i.wf, ptr %i.fd, align 8, !tbaa !595
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ch, %.loopexit.sink.split, %.lr.ph382
  %i.wg = add i32 %.sroa.5.0380, 1                ; 4 uses
  %i.wh = lshr i32 %i.wg, 6                       ; 3 uses
  %i.wi = icmp ugt i32 %i.wg, 511
  br i1 %i.wi, label %._crit_edge383, label %bb.ci

bb.ci:                                            ; preds = %.loopexit
  %i.wj = and i32 %i.wg, 63
  %i.wk = zext nneg i32 %i.wh to i64              ; 8 uses
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.wk
  %i.wm = load i64, ptr %i.wl, align 8, !tbaa !791 ; 2 uses
  %i.wn = zext nneg i32 %i.wj to i64              ; 2 uses
  %i.wo = shl nuw i64 1, %i.wn
  %i.wp = and i64 %i.wm, %i.wo
  %.not.i.i.i.i = icmp eq i64 %i.wp, 0
  br i1 %.not.i.i.i.i, label %bb.cj, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

bb.cj:                                            ; preds = %bb.ci
  %i.wq = shl nsw i64 -1, %i.wn
  %i.wr = and i64 %i.wm, %i.wq                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.wr, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i221.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i221.preheader:                      ; preds = %bb.cj
  %exitcond.not.i.i.i.i457 = icmp eq i32 %i.wh, 7
  br i1 %exitcond.not.i.i.i.i457, label %._crit_edge383, label %.lr.ph459

.lr.ph.i.i.i.i221:                                ; preds = %.lr.ph459
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge383, label %.lr.ph459.1

.lr.ph459.1:                                      ; preds = %.lr.ph.i.i.i.i221
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.wk, 2 ; 3 uses
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.1
  %i.wt = load i64, ptr %i.ws, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.wt, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i221.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i221.1:                              ; preds = %.lr.ph459.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge383, label %.lr.ph459.2

.lr.ph459.2:                                      ; preds = %.lr.ph.i.i.i.i221.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.wk, 3 ; 3 uses
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.2
  %i.wv = load i64, ptr %i.wu, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.wv, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i221.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i221.2:                              ; preds = %.lr.ph459.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge383, label %.lr.ph459.3

.lr.ph459.3:                                      ; preds = %.lr.ph.i.i.i.i221.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.wk, 4 ; 3 uses
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.3
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.wx, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i221.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i221.3:                              ; preds = %.lr.ph459.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge383, label %.lr.ph459.4

.lr.ph459.4:                                      ; preds = %.lr.ph.i.i.i.i221.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.wk, 5 ; 3 uses
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.4
  %i.wz = load i64, ptr %i.wy, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.wz, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i221.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i221.4:                              ; preds = %.lr.ph459.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge383, label %.lr.ph459.5

.lr.ph459.5:                                      ; preds = %.lr.ph.i.i.i.i221.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.wk, 6 ; 3 uses
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.5
  %i.xb = load i64, ptr %i.xa, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.xb, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i221.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i221.5:                              ; preds = %.lr.ph459.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge383, label %.lr.ph459.6

.lr.ph459.6:                                      ; preds = %.lr.ph.i.i.i.i221.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.wk, 7 ; 2 uses
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i.6
  %i.xd = load i64, ptr %i.xc, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.xd, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge383, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.lr.ph459:                                        ; preds = %.lr.ph.i.i.i.i221.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.wk, 1 ; 3 uses
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.i.i.i
  %i.xf = load i64, ptr %i.xe, align 8, !tbaa !791 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.xf, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i221, label %.critedge.loopexit.i.i.i.i, !llvm.loop !46

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph459.6, %.lr.ph459.5, %.lr.ph459.4, %.lr.ph459.3, %.lr.ph459.2, %.lr.ph459.1, %.lr.ph459
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph459 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph459.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph459.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph459.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph459.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph459.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph459.6 ]
  %.lcssa = phi i64 [ %i.xf, %.lr.ph459 ], [ %i.wt, %.lr.ph459.1 ], [ %i.wv, %.lr.ph459.2 ], [ %i.wx, %.lr.ph459.3 ], [ %i.wz, %.lr.ph459.4 ], [ %i.xb, %.lr.ph459.5 ], [ %i.xd, %.lr.ph459.6 ]
  %i.xg = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.cj
  %.016.lcssa.i.i.i.i = phi i32 [ %i.wh, %bb.cj ], [ %i.xg, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.wr, %bb.cj ], [ %.lcssa, %.critedge.loopexit.i.i.i.i ]
  %i.xh = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.xi = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.xj = trunc nuw nsw i64 %i.xi to i32
  %i.xk = or disjoint i32 %i.xh, %i.xj
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit: ; preds = %bb.ci, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.xk, %.critedge.i.i.i.i ], [ %i.wg, %bb.ci ] ; 2 uses
  %.not344 = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not344, label %._crit_edge383, label %.lr.ph382

._crit_edge383:                                   ; preds = %.loopexit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit, %.lr.ph.i.i.i.i221.preheader, %.lr.ph459.6, %.lr.ph.i.i.i.i221, %.lr.ph.i.i.i.i221.1, %.lr.ph.i.i.i.i221.2, %.lr.ph.i.i.i.i221.3, %.lr.ph.i.i.i.i221.4, %.lr.ph.i.i.i.i221.5, %bb.au
  %i.xl = add nuw i64 %.0118384, 1                ; 2 uses
  %exitcond396.not = icmp eq i64 %i.xl, %i.bt
  br i1 %exitcond396.not, label %._crit_edge386, label %bb.ag, !llvm.loop !11600

.body155:                                         ; preds = %bb.aw, %bb.cf, %bb.cg, %bb.bi, %bb.ay, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i, %bb.av, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i160, %bb.ax, %bb.y, %bb.ab, %bb.x
  %.pn132.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.x ], [ %i.bl, %bb.y ], [ %i.bq, %bb.ab ], [ %i.et, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i160 ], [ %i.wc, %bb.cf ], [ %i.fi, %bb.aw ], [ %i.du, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ], [ %i.fj, %bb.ax ], [ %i.fk, %bb.ay ], [ %i.fh, %bb.av ], [ %i.wd, %bb.cg ], [ %i.ko, %bb.bi ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %15, align 8, !tbaa !545
  %i.xm = load ptr, ptr %i.ah, align 8, !tbaa !3207 ; 2 uses
end_hunk_5
