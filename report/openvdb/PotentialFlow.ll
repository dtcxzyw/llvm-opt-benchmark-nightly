Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/PotentialFlow?download=true
inline.NumInlined: 97346
inline.NumDeleted: 30608
loop-unroll.NumCompletelyUnrolled: 353
loop-unroll.NumRuntimeUnrolled: 294
loop-unroll.NumUnrolled: 1396
begin_hunk_0_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE:bb.a
_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.f, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.g, %bb.h
  %i.as = inttoptr i64 %i.z to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.as, ptr noundef nonnull align 64 dereferenceable(128) %0, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 32, !tbaa !5992 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1362
  %i.e = load ptr, ptr %0, align 64, !tbaa !895
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(128) dereferenceable(128) %0) #26, !inline_history !706
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = atomicrmw add ptr %i.g, i32 -1 seq_cst, align 4
  %i.i = add i32 %i.h, -1
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.k, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.k = load ptr, ptr %.019.i.i, align 8, !tbaa !1366 ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1362
  %i.n = inttoptr i64 %i.m to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = atomicrmw add ptr %i.o, i32 -1 seq_cst, align 4
  %i.q = add i32 %i.p, -1
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.t = atomicrmw add ptr %i.s, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v)
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(128) %0, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !984
  %i.c = load i32, ptr %2, align 8, !tbaa !982
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !983
  %i.f = sub i32 %i.c, %i.e
  %i.g = zext i32 %i.f to i64
  %i.h = icmp ult i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %0, align 8, !tbaa !1361   ; 2 uses
  %i.j = icmp ugt i64 %i.i, 1
  br i1 %i.j, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4, !tbaa !1360  ; 2 uses
  %.not4.i = icmp eq i8 %i.l, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add i8 %i.l, -1
  store i8 %i.m, ptr %i.k, align 4, !tbaa !1360
  store i64 0, ptr %0, align 8, !tbaa !1361
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit: ; preds = %bb.b, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !1348
  %i.v = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !16684 ; 12 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.v, align 64, !tbaa !895
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.y = load i32, ptr %i.o, align 64, !tbaa !982 ; 2 uses
  store i32 %i.y, ptr %i.x, align 64, !tbaa !982
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 68
  %i.aa = load i32, ptr %i.p, align 4, !tbaa !983 ; 2 uses
  %i.ab = sub i32 %i.y, %i.aa
  %i.ac = lshr i32 %i.ab, 1
  %i.ad = add i32 %i.ac, %i.aa                    ; 2 uses
  store i32 %i.ad, ptr %i.o, align 64, !tbaa !982
  store i32 %i.ad, ptr %i.z, align 4, !tbaa !983
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.af = load i64, ptr %i.q, align 8, !tbaa !984
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !984
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ag, ptr noundef nonnull align 16 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !5990
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 96 ; 2 uses
  store ptr null, ptr %i.ah, align 32, !tbaa !5992
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.aj = load i64, ptr %i.s, align 8, !tbaa !1361
  %i.ak = lshr i64 %i.aj, 1                       ; 2 uses
  store i64 %i.ak, ptr %i.s, align 8, !tbaa !1361
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !1361
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  store i32 2, ptr %i.al, align 16, !tbaa !1359
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 116
  %i.an = load i8, ptr %i.t, align 4, !tbaa !1360
  store i8 %i.an, ptr %i.am, align 4, !tbaa !1360
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.ap = load i64, ptr %4, align 8, !tbaa !1362
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !1362
  %i.aq = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !16685 ; 6 uses
  %i.ar = load ptr, ptr %i.u, align 32, !tbaa !1376
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !1366
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 2, ptr %i.as, align 8, !tbaa !1367
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.au = load i64, ptr %4, align 8, !tbaa !1362
  store i64 %i.au, ptr %i.at, align 8, !tbaa !1362
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i8 0, ptr %i.av, align 8, !tbaa !1378
  store ptr %i.aq, ptr %i.u, align 32, !tbaa !5992
  store ptr %i.aq, ptr %i.ah, align 32, !tbaa !5992
  %i.aw = load ptr, ptr %3, align 8, !tbaa !1379
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(128) %i.v, ptr noundef nonnull align 8 dereferenceable(128) %i.aw), !inline_history !16685
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !984
  %i.ay = load i32, ptr %2, align 8, !tbaa !982
  %i.az = load i32, ptr %i.d, align 4, !tbaa !983
  %i.ba = sub i32 %i.ay, %i.az
  %i.bb = zext i32 %i.ba to i64
  %i.bc = icmp ult i64 %i.ax, %i.bb
  br i1 %i.bc, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.bd = load i64, ptr %0, align 8, !tbaa !1361  ; 2 uses
  %i.be = icmp ugt i64 %i.bd, 1
  br i1 %i.be, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, label %bb.g

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge: ; preds = %bb.f, %bb.i
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !16686

bb.g:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i64 %i.bd, 0
  br i1 %.not.i8, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = load i8, ptr %i.n, align 4, !tbaa !1360 ; 2 uses
  %.not4.i9 = icmp eq i8 %i.bf, 0
  br i1 %.not4.i9, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = add i8 %i.bf, -1
  store i8 %i.bg, ptr %i.n, align 4, !tbaa !1360
  store i64 0, ptr %0, align 8, !tbaa !1361
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::range_vector.394", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !984
  %i.c = load i32, ptr %2, align 8, !tbaa !982    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !983  ; 4 uses
  %i.f = sub i32 %i.c, %i.e
  %i.g = zext i32 %i.f to i64
  %i.h = icmp ult i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.j = load i8, ptr %i.i, align 4, !tbaa !1360
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = icmp ult i32 %i.e, %i.c
  br i1 %i.k, label %.lr.ph.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !5212 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !5247, !noalias !16706 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1321, !noalias !16706
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 7 uses
  %i.s = zext i32 %i.e to i64
  %wide.trip.count.i.i.i.i.i.i = zext i32 %i.c to i64
  %scevgep81 = getelementptr inbounds nuw i8, ptr %1, i64 96
  br label %bb.d

bb.d:                                             ; preds = %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %indvar78 = phi i32 [ %indvar.next79, %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %6 = add i32 %i.e, %indvar78
  %7 = mul i32 %6, 7
  %8 = zext i32 %7 to i64
  %i.t = mul i64 %indvars.iv.i.i.i.i.i.i, 7
  %i.u = and i64 %i.t, 4294967295
  %i.v = getelementptr [8 x i8], ptr %i.o, i64 %i.u ; 7 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.i.i.i.i.i
  %i.x = load i32, ptr %i.w, align 4, !tbaa !913  ; 3 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d
  %wide.trip.count.i.i.i.i.i.i.i = zext nneg i32 %i.x to i64 ; 6 uses
  %min.iters.check86 = icmp ult i32 %i.x, 4
  br i1 %min.iters.check86, label %scalar.ph85.preheader, label %vector.memcheck77

vector.memcheck77:                                ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.z = add nuw nsw i64 %wide.trip.count.i.i.i.i.i.i.i, %8
  %i.aa = shl nuw nsw i64 %i.z, 3
  %scevgep80 = getelementptr i8, ptr %i.o, i64 %i.aa
  %bound082 = icmp ult ptr %i.v, %scevgep81
  %bound183 = icmp ult ptr %i.r, %scevgep80
  %found.conflict84 = and i1 %bound082, %bound183
  br i1 %found.conflict84, label %scalar.ph85.preheader, label %vector.ph87

vector.ph87:                                      ; preds = %vector.memcheck77
  %n.vec88 = and i64 %wide.trip.count.i.i.i.i.i.i.i, 2147483644 ; 3 uses
  %i.ab = load <1 x double>, ptr %i.r, align 8
  %broadcast.splat94 = shufflevector <1 x double> %i.ab, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph87
  %index90 = phi i64 [ 0, %vector.ph87 ], [ %index.next95, %vector.body89 ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %index90 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %wide.load91 = load <2 x double>, ptr %i.ac, align 8, !tbaa !886, !alias.scope !16707, !noalias !16708
  %wide.load92 = load <2 x double>, ptr %i.ad, align 8, !tbaa !886, !alias.scope !16707, !noalias !16708
  %i.ae = fmul <2 x double> %broadcast.splat94, %wide.load91
  %i.af = fmul <2 x double> %broadcast.splat94, %wide.load92
  store <2 x double> %i.ae, ptr %i.ac, align 8, !tbaa !886, !alias.scope !16707, !noalias !16708
  store <2 x double> %i.af, ptr %i.ad, align 8, !tbaa !886, !alias.scope !16707, !noalias !16708
  %index.next95 = add nuw i64 %index90, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next95, %n.vec88
  br i1 %i.ag, label %middle.block96, label %vector.body89, !llvm.loop !16692

middle.block96:                                   ; preds = %vector.body89
  %cmp.n97 = icmp eq i64 %n.vec88, %wide.trip.count.i.i.i.i.i.i.i
  br i1 %cmp.n97, label %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i, label %scalar.ph85.preheader

scalar.ph85.preheader:                            ; preds = %vector.memcheck77, %.lr.ph.i.i.i.i.i.i.i, %middle.block96
  %indvars.iv.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck77 ], [ 0, %.lr.ph.i.i.i.i.i.i.i ], [ %n.vec88, %middle.block96 ] ; 3 uses
  %xtraiter100 = and i64 %wide.trip.count.i.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %scalar.ph85.prol.loopexit, label %scalar.ph85.prol

scalar.ph85.prol:                                 ; preds = %scalar.ph85.preheader, %scalar.ph85.prol
  %indvars.iv.i.i.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.prol, %scalar.ph85.prol ], [ %indvars.iv.i.i.i.i.i.i.i.ph, %scalar.ph85.preheader ] ; 2 uses
  %prol.iter102 = phi i64 [ %prol.iter102.next, %scalar.ph85.prol ], [ 0, %scalar.ph85.preheader ]
  %i.ah = load double, ptr %i.r, align 8, !tbaa !886
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i.i.i.i.i.i.i.prol ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !886
  %i.ak = fmul double %i.ah, %i.aj
  store double %i.ak, ptr %i.ai, align 8, !tbaa !886
  %indvars.iv.next.i.i.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter102.next = add i64 %prol.iter102, 1   ; 2 uses
  %prol.iter102.cmp.not = icmp eq i64 %prol.iter102.next, %xtraiter100
  br i1 %prol.iter102.cmp.not, label %scalar.ph85.prol.loopexit, label %scalar.ph85.prol, !llvm.loop !16693

scalar.ph85.prol.loopexit:                        ; preds = %scalar.ph85.prol, %scalar.ph85.preheader
  %indvars.iv.i.i.i.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i.i.i.ph, %scalar.ph85.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i.prol, %scalar.ph85.prol ]
  %i.al = sub nsw i64 %indvars.iv.i.i.i.i.i.i.i.ph, %wide.trip.count.i.i.i.i.i.i.i
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i, label %scalar.ph85

scalar.ph85:                                      ; preds = %scalar.ph85.prol.loopexit, %scalar.ph85
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.3, %scalar.ph85 ], [ %indvars.iv.i.i.i.i.i.i.i.unr, %scalar.ph85.prol.loopexit ] ; 5 uses
  %i.an = load double, ptr %i.r, align 8, !tbaa !886
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i.i.i.i.i.i.i ; 2 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !886
  %i.aq = fmul double %i.an, %i.ap
  store double %i.aq, ptr %i.ao, align 8, !tbaa !886
  %i.ar = load double, ptr %i.r, align 8, !tbaa !886
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !886
  %i.av = fmul double %i.ar, %i.au
  store double %i.av, ptr %i.at, align 8, !tbaa !886
  %i.aw = load double, ptr %i.r, align 8, !tbaa !886
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !886
  %i.ba = fmul double %i.aw, %i.az
  store double %i.ba, ptr %i.ay, align 8, !tbaa !886
  %i.bb = load double, ptr %i.r, align 8, !tbaa !886
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !886
  %i.bf = fmul double %i.bb, %i.be
  store double %i.bf, ptr %i.bd, align 8, !tbaa !886
  %indvars.iv.next.i.i.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i.3, %wide.trip.count.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i, label %scalar.ph85, !llvm.loop !16694

_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i: ; preds = %scalar.ph85.prol.loopexit, %scalar.ph85, %middle.block96, %bb.d
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i
  %indvar.next79 = add i32 %indvar78, 1
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %bb.d, !llvm.loop !16695

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 20 uses
  store i8 0, ptr %i.bg, align 1, !tbaa !908
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !1417
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 116
  br label %bb.f

bb.f:                                             ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit, %bb.e
  %i.bn = phi i8 [ %i.os, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 0, %bb.e ] ; 3 uses
  %i.bo = phi i8 [ %i.ot, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 1, %bb.e ] ; 13 uses
  %i.bp = phi i8 [ %i.ou, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 0, %bb.e ] ; 9 uses
  %i.bq = load i8, ptr %i.i, align 4, !tbaa !1360 ; 10 uses
  %i.br = icmp ult i8 %i.bo, 8
  br i1 %i.br, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.phi.trans.insert.i = zext i8 %i.bp to i64
  %.phi.trans.insert6.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.phi.trans.insert.i
  %.pre.i = load i8, ptr %.phi.trans.insert6.i, align 1, !tbaa !908
  %i.bs = icmp ult i8 %.pre.i, %i.bq
  br i1 %i.bs, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.g:                                             ; preds = %bb.v
  %i.bt = icmp ult i8 %i.kd, %i.bq
  br i1 %i.bt, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1: ; preds = %bb.g
  %i.bu = zext nneg i8 %i.jr to i64               ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.bu ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !984
  %i.by = load i32, ptr %i.bv, align 8, !tbaa !982
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !983
  %i.cb = sub i32 %i.by, %i.ca
  %i.cc = zext i32 %i.cb to i64
  %i.cd = icmp ult i64 %i.bx, %i.cc
  br i1 %i.cd, label %bb.h, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.h:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bu ; 2 uses
  %i.cf = add i8 %i.bp, 2
  %i.cg = and i8 %i.cf, 7                         ; 5 uses
  %i.ch = zext nneg i8 %i.cg to i64               ; 2 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.ch ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !1417
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !982 ; 2 uses
  store i32 %i.cj, ptr %i.bv, align 8, !tbaa !982
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !983 ; 2 uses
  %i.cm = sub i32 %i.cj, %i.cl
  %i.cn = lshr i32 %i.cm, 1
  %i.co = add i32 %i.cn, %i.cl                    ; 2 uses
  store i32 %i.co, ptr %i.ci, align 8, !tbaa !982
  store i32 %i.co, ptr %i.bz, align 4, !tbaa !983
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !984
  store i64 %i.cq, ptr %i.bw, align 8, !tbaa !984
  %i.cr = load i8, ptr %i.ce, align 1, !tbaa !908
  %i.cs = add i8 %i.cr, 1                         ; 3 uses
  store i8 %i.cs, ptr %i.ce, align 1, !tbaa !908
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ch
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !908
  %i.cu = add nuw nsw i8 %i.bo, 2                 ; 3 uses
  %exitcond.not.i.1 = icmp eq i8 %i.cu, 8
  br i1 %exitcond.not.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.i, !llvm.loop !76

bb.i:                                             ; preds = %bb.h
  %i.cv = icmp ult i8 %i.cs, %i.bq
  br i1 %i.cv, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2: ; preds = %bb.i
  %i.cw = zext nneg i8 %i.cg to i64               ; 2 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.cw ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !984
  %i.da = load i32, ptr %i.cx, align 8, !tbaa !982
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 4 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !983
  %i.dd = sub i32 %i.da, %i.dc
  %i.de = zext i32 %i.dd to i64
  %i.df = icmp ult i64 %i.cz, %i.de
  br i1 %i.df, label %bb.j, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cw ; 2 uses
  %i.dh = add i8 %i.bp, 3
  %i.di = and i8 %i.dh, 7                         ; 5 uses
  %i.dj = zext nneg i8 %i.di to i64               ; 2 uses
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.dj ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i64 16, i1 false), !tbaa.struct !1417
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !982 ; 2 uses
  store i32 %i.dl, ptr %i.cx, align 8, !tbaa !982
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !983 ; 2 uses
  %i.do = sub i32 %i.dl, %i.dn
  %i.dp = lshr i32 %i.do, 1
  %i.dq = add i32 %i.dp, %i.dn                    ; 2 uses
  store i32 %i.dq, ptr %i.dk, align 8, !tbaa !982
  store i32 %i.dq, ptr %i.db, align 4, !tbaa !983
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !984
  store i64 %i.ds, ptr %i.cy, align 8, !tbaa !984
  %i.dt = load i8, ptr %i.dg, align 1, !tbaa !908
  %i.du = add i8 %i.dt, 1                         ; 3 uses
  store i8 %i.du, ptr %i.dg, align 1, !tbaa !908
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.dj
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !908
  %i.dw = add nuw nsw i8 %i.bo, 3                 ; 3 uses
  %exitcond.not.i.2 = icmp eq i8 %i.dw, 8
  br i1 %exitcond.not.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.k, !llvm.loop !76

bb.k:                                             ; preds = %bb.j
  %i.dx = icmp ult i8 %i.du, %i.bq
  br i1 %i.dx, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3: ; preds = %bb.k
  %i.dy = zext nneg i8 %i.di to i64               ; 2 uses
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.dy ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !984
  %i.ec = load i32, ptr %i.dz, align 8, !tbaa !982
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 4 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !983
  %i.ef = sub i32 %i.ec, %i.ee
  %i.eg = zext i32 %i.ef to i64
  %i.eh = icmp ult i64 %i.eb, %i.eg
  br i1 %i.eh, label %bb.l, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.l:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.dy ; 2 uses
  %i.ej = and i8 %i.bp, 7                         ; 4 uses
  %i.ek = xor i8 %i.ej, 4                         ; 8 uses
  %i.el = zext nneg i8 %i.ek to i64               ; 2 uses
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.el ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i64 16, i1 false), !tbaa.struct !1417
  %i.en = load i32, ptr %i.em, align 8, !tbaa !982 ; 2 uses
  store i32 %i.en, ptr %i.dz, align 8, !tbaa !982
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !983 ; 2 uses
  %i.eq = sub i32 %i.en, %i.ep
  %i.er = lshr i32 %i.eq, 1
  %i.es = add i32 %i.er, %i.ep                    ; 2 uses
  store i32 %i.es, ptr %i.em, align 8, !tbaa !982
  store i32 %i.es, ptr %i.ed, align 4, !tbaa !983
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !984
  store i64 %i.eu, ptr %i.ea, align 8, !tbaa !984
  %i.ev = load i8, ptr %i.ei, align 1, !tbaa !908
  %i.ew = add i8 %i.ev, 1                         ; 3 uses
  store i8 %i.ew, ptr %i.ei, align 1, !tbaa !908
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.el
  store i8 %i.ew, ptr %i.ex, align 1, !tbaa !908
  %i.ey = add nuw nsw i8 %i.bo, 4                 ; 3 uses
  %exitcond.not.i.3 = icmp eq i8 %i.ey, 8
  br i1 %exitcond.not.i.3, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.m, !llvm.loop !76

bb.m:                                             ; preds = %bb.l
  %i.ez = icmp ult i8 %i.ew, %i.bq
  br i1 %i.ez, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4: ; preds = %bb.m
  %i.fa = zext nneg i8 %i.ek to i64               ; 2 uses
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.fa ; 5 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !984
  %i.fe = load i32, ptr %i.fb, align 8, !tbaa !982
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 4 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !983
  %i.fh = sub i32 %i.fe, %i.fg
  %i.fi = zext i32 %i.fh to i64
  %i.fj = icmp ult i64 %i.fd, %i.fi
  br i1 %i.fj, label %bb.n, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.n:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.fa ; 2 uses
  %i.fl = add nuw nsw i8 %i.ek, 1
  %i.fm = and i8 %i.fl, 7                         ; 5 uses
  %i.fn = zext nneg i8 %i.fm to i64               ; 2 uses
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.fn ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fo, ptr noundef nonnull align 8 dereferenceable(16) %i.fb, i64 16, i1 false), !tbaa.struct !1417
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !982 ; 2 uses
  store i32 %i.fp, ptr %i.fb, align 8, !tbaa !982
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !983 ; 2 uses
  %i.fs = sub i32 %i.fp, %i.fr
  %i.ft = lshr i32 %i.fs, 1
  %i.fu = add i32 %i.ft, %i.fr                    ; 2 uses
  store i32 %i.fu, ptr %i.fo, align 8, !tbaa !982
  store i32 %i.fu, ptr %i.ff, align 4, !tbaa !983
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !984
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a

bb.s:                                             ; preds = %bb.r
  %i.if = icmp ult i8 %i.ic, %i.bq
  br i1 %i.if, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7: ; preds = %bb.s
  %i.ig = zext nneg i8 %i.hq to i64               ; 2 uses
  %i.ih = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.ig ; 5 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8 ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !984
  %i.ik = load i32, ptr %i.ih, align 8, !tbaa !982
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 4 ; 2 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !983
  %i.in = sub i32 %i.ik, %i.im
  %i.io = zext i32 %i.in to i64
  %i.ip = icmp ult i64 %i.ij, %i.io
  br i1 %i.ip, label %bb.t, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.t:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7
  %i.iq = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ig ; 2 uses
  %i.ir = zext nneg i8 %i.ej to i64               ; 2 uses
  %i.is = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.ir ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.is, ptr noundef nonnull align 8 dereferenceable(16) %i.ih, i64 16, i1 false), !tbaa.struct !1417
  %i.it = load i32, ptr %i.is, align 8, !tbaa !982 ; 2 uses
  store i32 %i.it, ptr %i.ih, align 8, !tbaa !982
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !983 ; 2 uses
  %i.iw = sub i32 %i.it, %i.iv
  %i.ix = lshr i32 %i.iw, 1
  %i.iy = add i32 %i.ix, %i.iv                    ; 2 uses
  store i32 %i.iy, ptr %i.is, align 8, !tbaa !982
  store i32 %i.iy, ptr %i.il, align 4, !tbaa !983
  %i.iz = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !984
  store i64 %i.ja, ptr %i.ii, align 8, !tbaa !984
  %i.jb = load i8, ptr %i.iq, align 1, !tbaa !908
  %i.jc = add i8 %i.jb, 1                         ; 2 uses
  store i8 %i.jc, ptr %i.iq, align 1, !tbaa !908
  %i.jd = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ir
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !908
  %exitcond.not.i.7 = icmp eq i8 %i.bo, 0
  br i1 %exitcond.not.i.7, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.u, !llvm.loop !76

bb.u:                                             ; preds = %bb.t
  %i.je = or disjoint i8 %i.bo, 8
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i: ; preds = %.lr.ph.i
  %i.jf = zext i8 %i.bp to i64                    ; 2 uses
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.jf ; 5 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8 ; 2 uses
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !984
  %i.jj = load i32, ptr %i.jg, align 8, !tbaa !982
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 4 ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !983
  %i.jm = sub i32 %i.jj, %i.jl
  %i.jn = zext i32 %i.jm to i64
  %i.jo = icmp ult i64 %i.ji, %i.jn
  br i1 %i.jo, label %bb.v, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.v:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i
  %i.jp = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.jf ; 2 uses
  %i.jq = add nuw i8 %i.bp, 1
  %i.jr = and i8 %i.jq, 7                         ; 5 uses
  %i.js = zext nneg i8 %i.jr to i64               ; 2 uses
  %i.jt = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.js ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jt, ptr noundef nonnull align 8 dereferenceable(16) %i.jg, i64 16, i1 false), !tbaa.struct !1417
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !982 ; 2 uses
  store i32 %i.ju, ptr %i.jg, align 8, !tbaa !982
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !983 ; 2 uses
  %i.jx = sub i32 %i.ju, %i.jw
  %i.jy = lshr i32 %i.jx, 1
  %i.jz = add i32 %i.jy, %i.jw                    ; 2 uses
  store i32 %i.jz, ptr %i.jt, align 8, !tbaa !982
  store i32 %i.jz, ptr %i.jk, align 4, !tbaa !983
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !984
  store i64 %i.kb, ptr %i.jh, align 8, !tbaa !984
  %i.kc = load i8, ptr %i.jp, align 1, !tbaa !908
  %i.kd = add i8 %i.kc, 1                         ; 3 uses
  store i8 %i.kd, ptr %i.jp, align 1, !tbaa !908
  %i.ke = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.js
  store i8 %i.kd, ptr %i.ke, align 1, !tbaa !908
  %i.kf = add nuw nsw i8 %i.bo, 1                 ; 3 uses
  %exitcond.not.i = icmp eq i8 %i.kf, 8
  br i1 %exitcond.not.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.g, !llvm.loop !76

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit: ; preds = %bb.g, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1, %bb.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2, %bb.k, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3, %bb.m, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4, %bb.o, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5, %bb.q, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6, %bb.s, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7, %bb.u, %.lr.ph.i, %bb.f
  %i.kg = phi i8 [ %i.bo, %bb.f ], [ %i.bo, %.lr.ph.i ], [ %i.bo, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i ], [ %i.kf, %bb.g ], [ %i.kf, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1 ], [ %i.cu, %bb.i ], [ %i.cu, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2 ], [ %i.dw, %bb.k ], [ %i.dw, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3 ], [ %i.ey, %bb.m ], [ %i.ey, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4 ], [ %i.ga, %bb.o ], [ %i.ga, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5 ], [ %i.hc, %bb.q ], [ %i.hc, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6 ], [ %i.ie, %bb.s ], [ %i.ie, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7 ], [ %i.je, %bb.u ] ; 6 uses
  %i.kh = phi i8 [ %i.bp, %bb.f ], [ %i.bp, %.lr.ph.i ], [ %i.bp, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i ], [ %i.jr, %bb.g ], [ %i.jr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1 ], [ %i.cg, %bb.i ], [ %i.cg, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2 ], [ %i.di, %bb.k ], [ %i.di, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3 ], [ %i.ek, %bb.m ], [ %i.ek, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4 ], [ %i.fm, %bb.o ], [ %i.fm, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5 ], [ %i.go, %bb.q ], [ %i.go, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6 ], [ %i.hq, %bb.s ], [ %i.hq, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7 ], [ %i.ej, %bb.u ] ; 6 uses
  %i.ki = load ptr, ptr %i.bi, align 32, !tbaa !5992
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  %i.kk = load atomic i8, ptr %i.kj monotonic, align 1, !range !972, !noundef !1253
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %bb.w, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.v
  %.lcssa = phi i8 [ %i.jr, %bb.v ], [ %i.cg, %bb.h ], [ %i.di, %bb.j ], [ %i.ek, %bb.l ], [ %i.fm, %bb.n ], [ %i.go, %bb.p ], [ %i.hq, %bb.r ], [ %i.ej, %bb.t ] ; 2 uses
  %i.km = load ptr, ptr %i.bi, align 32, !tbaa !5992
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  %i.ko = load atomic i8, ptr %i.kn monotonic, align 1, !range !972, !noundef !1253
  %i.kp = trunc nuw i8 %i.ko to i1
  br i1 %i.kp, label %.thread73, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

.thread73:                                        ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread
  %i.kq = add i8 %i.bq, 1
  store i8 %i.kq, ptr %i.i, align 4, !tbaa !1360
  br label %.noexc

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %i.kr = phi i8 [ %.lcssa, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread ], [ %i.kh, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit ] ; 2 uses
  %i.ks = phi i8 [ 8, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread ], [ %i.kg, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit ]
  %.pre = zext i8 %i.kr to i64
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

bb.w:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %i.kt = add i8 %i.bq, 1                         ; 2 uses
  store i8 %i.kt, ptr %i.i, align 4, !tbaa !1360
  %i.ku = icmp ugt i8 %i.kg, 1
  br i1 %i.ku, label %.noexc, label %bb.x

.noexc:                                           ; preds = %.thread73, %bb.w
  %i.kv = phi i8 [ 8, %.thread73 ], [ %i.kg, %bb.w ]
  %i.kw = phi i8 [ %.lcssa, %.thread73 ], [ %i.kh, %bb.w ]
  %i.kx = zext nneg i8 %i.bn to i64               ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.kx
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !908
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !1348
  %i.la = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !16696 ; 10 uses
  %i.lb = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.kx
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.lc, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.la, align 64, !tbaa !895
  %i.ld = getelementptr inbounds nuw i8, ptr %i.la, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.ld, ptr noundef nonnull align 8 dereferenceable(16) %i.lb, i64 16, i1 false), !tbaa.struct !1417
  %i.le = getelementptr inbounds nuw i8, ptr %i.la, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.le, ptr noundef nonnull align 16 dereferenceable(16) %i.bj, i64 16, i1 false), !tbaa.struct !5990
  %i.lf = getelementptr inbounds nuw i8, ptr %i.la, i64 96 ; 2 uses
  store ptr null, ptr %i.lf, align 32, !tbaa !5992
  %i.lg = getelementptr inbounds nuw i8, ptr %i.la, i64 104
  %i.lh = load i64, ptr %i.bl, align 8, !tbaa !1361
  %i.li = lshr i64 %i.lh, 1                       ; 2 uses
  store i64 %i.li, ptr %i.bl, align 8, !tbaa !1361
  store i64 %i.li, ptr %i.lg, align 8, !tbaa !1361
  %i.lj = getelementptr inbounds nuw i8, ptr %i.la, i64 112
  store i32 2, ptr %i.lj, align 16, !tbaa !1359
  %i.lk = getelementptr inbounds nuw i8, ptr %i.la, i64 116
  %i.ll = load i8, ptr %i.bm, align 4, !tbaa !1360
  %i.lm = getelementptr inbounds nuw i8, ptr %i.la, i64 120
  %i.ln = load i64, ptr %4, align 8, !tbaa !1362
  store i64 %i.ln, ptr %i.lm, align 8, !tbaa !1362
  %i.lo = sub i8 %i.ll, %i.kz
  store i8 %i.lo, ptr %i.lk, align 4, !tbaa !1360
  %i.lp = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !16696 ; 6 uses
  %i.lq = load ptr, ptr %i.bi, align 32, !tbaa !1376
  store ptr %i.lq, ptr %i.lp, align 8, !tbaa !1366
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  store i32 2, ptr %i.lr, align 8, !tbaa !1367
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %i.lt = load i64, ptr %4, align 8, !tbaa !1362
  store i64 %i.lt, ptr %i.ls, align 8, !tbaa !1362
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lp, i64 24
  store i8 0, ptr %i.lu, align 8, !tbaa !1378
  store ptr %i.lp, ptr %i.bi, align 32, !tbaa !5992
  store ptr %i.lp, ptr %i.lf, align 32, !tbaa !5992
  %i.lv = load ptr, ptr %3, align 8, !tbaa !1379
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(128) %i.la, ptr noundef nonnull align 8 dereferenceable(128) %i.lv), !inline_history !16696
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.lw = add i8 %i.kv, -1
  %i.lx = add nuw nsw i8 %i.bn, 1
  %i.ly = and i8 %i.lx, 7
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

bb.x:                                             ; preds = %bb.w
  %i.lz = zext i8 %i.kh to i64                    ; 4 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.lz
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !908
  %i.mc = icmp ult i8 %i.mb, %i.kt
  br i1 %i.mc, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit: ; preds = %bb.x
  %i.md = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.lz ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !984
  %i.mg = load i32, ptr %i.md, align 8, !tbaa !982
  %i.mh = getelementptr inbounds nuw i8, ptr %i.md, i64 4
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !983
  %i.mj = sub i32 %i.mg, %i.mi
  %i.mk = zext i32 %i.mj to i64
  %i.ml = icmp ult i64 %i.mf, %i.mk
  br i1 %i.ml, label %thread-pre-split33, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.x, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit
  %i.mm = phi i8 [ %i.kr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.kh, %bb.x ], [ %i.kh, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.mn = phi i8 [ %i.ks, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.kg, %bb.x ], [ %i.kg, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %.pre-phi = phi i64 [ %.pre, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.lz, %bb.x ], [ %i.lz, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.mo = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %.pre-phi ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 4
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !983 ; 3 uses
  %i.mr = load i32, ptr %i.mo, align 8, !tbaa !982 ; 2 uses
  %i.ms = icmp ult i32 %i.mq, %i.mr
  br i1 %i.ms, label %.lr.ph.i.i.i.i.i.i15, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit26

.lr.ph.i.i.i.i.i.i15:                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread
  %i.mt = load ptr, ptr %i.bj, align 16, !tbaa !5212 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !5247, !noalias !16709 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mt, i64 24
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !1321, !noalias !16709
  %i.my = zext i32 %i.mq to i64
  %wide.trip.count.i.i.i.i.i.i16 = zext i32 %i.mr to i64
  br label %bb.y

bb.y:                                             ; preds = %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18, %.lr.ph.i.i.i.i.i.i15
  %indvar = phi i32 [ %indvar.next, %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18 ], [ 0, %.lr.ph.i.i.i.i.i.i15 ] ; 2 uses
  %indvars.iv.i.i.i.i.i.i17 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i19, %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18 ], [ %i.my, %.lr.ph.i.i.i.i.i.i15 ] ; 3 uses
  %9 = add i32 %i.mq, %indvar
  %10 = mul i32 %9, 7
  %11 = zext i32 %10 to i64
  %i.mz = mul i64 %indvars.iv.i.i.i.i.i.i17, 7
  %i.na = and i64 %i.mz, 4294967295
  %i.nb = getelementptr [8 x i8], ptr %i.mv, i64 %i.na ; 7 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.i.i.i.i.i.i17
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !913 ; 3 uses
  %i.ne = icmp sgt i32 %i.nd, 0
  br i1 %i.ne, label %.lr.ph.i.i.i.i.i.i.i21, label %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18

.lr.ph.i.i.i.i.i.i.i21:                           ; preds = %bb.y
  %wide.trip.count.i.i.i.i.i.i.i22 = zext nneg i32 %i.nd to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.nd, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i21
  %i.nf = add nuw nsw i64 %wide.trip.count.i.i.i.i.i.i.i22, %11
  %i.ng = shl nuw nsw i64 %i.nf, 3
  %scevgep = getelementptr i8, ptr %i.mv, i64 %i.ng
  %bound0 = icmp ult ptr %i.nb, %i.bi
  %bound1 = icmp ult ptr %i.bk, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i.i.i.i.i.i22, 2147483644 ; 3 uses
  %i.nh = load <1 x double>, ptr %i.bk, align 8
  %broadcast.splat = shufflevector <1 x double> %i.nh, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %index ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ni, align 8, !tbaa !886, !alias.scope !16710, !noalias !16711
  %wide.load76 = load <2 x double>, ptr %i.nj, align 8, !tbaa !886, !alias.scope !16710, !noalias !16711
  %i.nk = fmul <2 x double> %broadcast.splat, %wide.load
  %i.nl = fmul <2 x double> %broadcast.splat, %wide.load76
  store <2 x double> %i.nk, ptr %i.ni, align 8, !tbaa !886, !alias.scope !16710, !noalias !16711
  store <2 x double> %i.nl, ptr %i.nj, align 8, !tbaa !886, !alias.scope !16710, !noalias !16711
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nm = icmp eq i64 %index.next, %n.vec
  br i1 %i.nm, label %middle.block, label %vector.body, !llvm.loop !16702

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i.i.i.i.i22
  br i1 %cmp.n, label %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i21, %middle.block
  %indvars.iv.i.i.i.i.i.i.i23.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i21 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i.i.i.i22, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.i.i.i.i23.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i24.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.i.i.i.i23.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.nn = load double, ptr %i.bk, align 8, !tbaa !886
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %indvars.iv.i.i.i.i.i.i.i23.prol ; 2 uses
  %i.np = load double, ptr %i.no, align 8, !tbaa !886
  %i.nq = fmul double %i.nn, %i.np
  store double %i.nq, ptr %i.no, align 8, !tbaa !886
  %indvars.iv.next.i.i.i.i.i.i.i24.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i23.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !16703

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.i.i.i.i23.unr = phi i64 [ %indvars.iv.i.i.i.i.i.i.i23.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i24.prol, %scalar.ph.prol ]
  %i.nr = sub nsw i64 %indvars.iv.i.i.i.i.i.i.i23.ph, %wide.trip.count.i.i.i.i.i.i.i22
  %i.ns = icmp ugt i64 %i.nr, -4
  br i1 %i.ns, label %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i.i.i.i.i23 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i24.3, %scalar.ph ], [ %indvars.iv.i.i.i.i.i.i.i23.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.nt = load double, ptr %i.bk, align 8, !tbaa !886
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %indvars.iv.i.i.i.i.i.i.i23 ; 2 uses
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !886
  %i.nw = fmul double %i.nt, %i.nv
  store double %i.nw, ptr %i.nu, align 8, !tbaa !886
  %i.nx = load double, ptr %i.bk, align 8, !tbaa !886
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %indvars.iv.i.i.i.i.i.i.i23
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 8 ; 2 uses
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !886
  %i.ob = fmul double %i.nx, %i.oa
  store double %i.ob, ptr %i.nz, align 8, !tbaa !886
  %i.oc = load double, ptr %i.bk, align 8, !tbaa !886
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %indvars.iv.i.i.i.i.i.i.i23
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 16 ; 2 uses
  %i.of = load double, ptr %i.oe, align 8, !tbaa !886
  %i.og = fmul double %i.oc, %i.of
  store double %i.og, ptr %i.oe, align 8, !tbaa !886
  %i.oh = load double, ptr %i.bk, align 8, !tbaa !886
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %indvars.iv.i.i.i.i.i.i.i23
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 24 ; 2 uses
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !886
  %i.ol = fmul double %i.oh, %i.ok
  store double %i.ol, ptr %i.oj, align 8, !tbaa !886
  %indvars.iv.next.i.i.i.i.i.i.i24.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i23, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i25.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i24.3, %wide.trip.count.i.i.i.i.i.i.i22
  br i1 %exitcond.not.i.i.i.i.i.i.i25.3, label %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18, label %scalar.ph, !llvm.loop !16704

_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.y
  %indvars.iv.next.i.i.i.i.i.i19 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i17, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i20 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i19, %wide.trip.count.i.i.i.i.i.i16
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond.not.i.i.i.i.i.i20, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit26, label %bb.y, !llvm.loop !16695

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit26: ; preds = %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread
  %i.om = add i8 %i.mn, -1
  %i.on = add nuw i8 %i.mm, 7
  %i.oo = and i8 %i.on, 7
  br label %thread-pre-split33

thread-pre-split33:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit26
  %i.op = phi i8 [ %i.om, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit26 ], [ %i.kg, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.oq = phi i8 [ %i.oo, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit26 ], [ %i.kh, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.or = icmp eq i8 %i.op, 0
  br i1 %i.or, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit32, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %.noexc, %thread-pre-split33
  %i.os = phi i8 [ %i.ly, %.noexc ], [ %i.bn, %thread-pre-split33 ]
  %i.ot = phi i8 [ %i.lw, %.noexc ], [ %i.op, %thread-pre-split33 ]
  %i.ou = phi i8 [ %i.kw, %.noexc ], [ %i.oq, %thread-pre-split33 ]
  %i.ov = load ptr, ptr %3, align 8, !tbaa !1379  ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 15
  %i.ox = load atomic i8, ptr %i.ow monotonic, align 1
  %i.oy = icmp eq i8 %i.ox, -1
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  %i.pa = load ptr, ptr %i.oz, align 8
  %.0.i.i = select i1 %i.oy, ptr %i.pa, ptr %i.ov
  %i.pb = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.pb, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit32, label %bb.f, !llvm.loop !16705

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit32: ; preds = %thread-pre-split33, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSC_RSE_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !1344
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !1345
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !908
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !983
  %i.g = load i32, ptr %0, align 8, !tbaa !982
  %.not.i = icmp ult i32 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSC_RSE_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr null, ptr %3, align 8, !tbaa !1348
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 128)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !895
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1417
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !5993
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 2 uses
  store ptr null, ptr %i.l, align 32, !tbaa !5995
  %i.m = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store i32 0, ptr %i.p, align 16, !tbaa !1359
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 116
  store i8 5, ptr %i.q, align 4, !tbaa !1360
  %i.r = shl nsw i64 %i.o, 1
  %i.s = and i64 %i.r, 9223372036854775806
  store i64 %i.s, ptr %i.n, align 8, !tbaa !1361
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.u = load i64, ptr %3, align 8, !tbaa !1362
  store i64 %i.u, ptr %i.t, align 8, !tbaa !1362
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !1366
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !1367
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.w, align 8, !tbaa !1370
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.x, align 8, !tbaa !1018
  store ptr %4, ptr %i.l, align 32, !tbaa !5995
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSC_RSE_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSC_RSE_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.z = load atomic i8, ptr %i.y monotonic, align 1
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSC_RSE_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #32
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSC_RSE_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %i.ad
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(128) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 64) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !1374 ; 2 uses
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
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1361
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 8, !tbaa !1361
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !1375
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 32, !tbaa !5995
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 32, !tbaa !5995
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !1360
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !1360
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 64 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 32, !tbaa !5995 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1362
end_hunk_1
