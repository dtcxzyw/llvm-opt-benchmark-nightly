Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/PotentialFlow?download=true
inline.NumInlined: 97346
inline.NumDeleted: 30608
loop-unroll.NumCompletelyUnrolled: 352
loop-unroll.NumRuntimeUnrolled: 294
loop-unroll.NumUnrolled: 1395
begin_hunk_0_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = atomicrmw sub ptr %i.o, i32 1 seq_cst, align 4
  %i.q = add i32 %i.p, -1
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.t = atomicrmw sub ptr %i.s, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v)
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(128) %0, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINSC_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.v = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !16766 ; 12 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEEE, i64 16), ptr %i.v, align 64, !tbaa !895
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ag, ptr noundef nonnull align 16 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !6011
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 96 ; 2 uses
  store ptr null, ptr %i.ah, align 32, !tbaa !6013
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
  %i.aq = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !16767 ; 6 uses
  %i.ar = load ptr, ptr %i.u, align 32, !tbaa !1376
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !1366
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 2, ptr %i.as, align 8, !tbaa !1367
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.au = load i64, ptr %4, align 8, !tbaa !1362
  store i64 %i.au, ptr %i.at, align 8, !tbaa !1362
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i8 0, ptr %i.av, align 8, !tbaa !1378
  store ptr %i.aq, ptr %i.u, align 32, !tbaa !6013
  store ptr %i.aq, ptr %i.ah, align 32, !tbaa !6013
  %i.aw = load ptr, ptr %3, align 8, !tbaa !1379
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(128) %i.v, ptr noundef nonnull align 8 dereferenceable(128) %i.aw), !inline_history !16767
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
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !16768

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
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINSE_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINSE_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::range_vector.394", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !984
  %i.c = load i32, ptr %2, align 8, !tbaa !982    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !983  ; 3 uses
  %i.f = sub i32 %i.c, %i.e
  %i.g = zext i32 %i.f to i64
  %i.h = icmp ult i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.j = load i8, ptr %i.i, align 4, !tbaa !1360
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = icmp ult i32 %i.e, %i.c
  br i1 %i.k, label %.lr.ph.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !5230 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !5247, !noalias !16776
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1321, !noalias !16776
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1321, !noalias !16776
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !5231
  %i.v = zext i32 %i.e to i64
  %wide.trip.count.i.i.i.i.i.i = zext i32 %i.c to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE8getValueEjj.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE8getValueEjj.exit.i.i.i.i.i.i ] ; 6 uses
  %i.w = mul i64 %indvars.iv.i.i.i.i.i.i, 7
  %i.x = and i64 %i.w, 4294967295                 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.x
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.x ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i.i.i.i.i.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !913 ; 3 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE4findEj.exit.i.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = zext i32 %i.ab to i64
  br label %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.e
  %.017.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ad, %bb.e ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.112.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.z, %bb.e ] ; 2 uses
  %i.ae = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !913
  %i.ah = zext i32 %i.ag to i64
  %i.ai = icmp samesign ugt i64 %indvars.iv.i.i.i.i.i.i, %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ak = xor i64 %i.ae, -1
  %i.al = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i, %i.ak
  %.112.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ai, ptr %i.aj, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ai, i64 %i.al, i64 %i.ae ; 2 uses
  %i.am = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.am, label %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt11lower_boundIPKjjET_S2_S2_RKT0_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !610

_ZSt11lower_boundIPKjjET_S2_S2_RKT0_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.an = ptrtoint ptr %i.z to i64
  %i.ao = ptrtoint ptr %.112.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ap = sub i64 %i.ao, %i.an
  %i.aq = lshr exact i64 %i.ap, 2
  %i.ar = trunc i64 %i.aq to i32
  br label %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE4findEj.exit.i.i.i.i.i.i.i.i

_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE4findEj.exit.i.i.i.i.i.i.i.i: ; preds = %_ZSt11lower_boundIPKjjET_S2_S2_RKT0_.exit.i.i.i.i.i.i.i.i.i, %bb.d
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ar, %_ZSt11lower_boundIPKjjET_S2_S2_RKT0_.exit.i.i.i.i.i.i.i.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.as = icmp ult i32 %.0.i.i.i.i.i.i.i.i.i, %i.ab
  br i1 %i.as, label %bb.f, label %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE8getValueEjj.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE4findEj.exit.i.i.i.i.i.i.i.i
  %i.at = zext i32 %.0.i.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !913
  %i.aw = zext i32 %i.av to i64
  %i.ax = icmp eq i64 %indvars.iv.i.i.i.i.i.i, %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.at
  %spec.select.i.i.i.i.i.i.i = select i1 %i.ax, ptr %i.ay, ptr @_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10sZeroValueE
  br label %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE8getValueEjj.exit.i.i.i.i.i.i

_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE8getValueEjj.exit.i.i.i.i.i.i: ; preds = %bb.f, %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE4findEj.exit.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi ptr [ @_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10sZeroValueE, %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE4findEj.exit.i.i.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i.i, %bb.f ]
  %i.az = load double, ptr %.0.i.i.i.i.i.i.i.i, align 8, !tbaa !886
  %i.ba = fdiv double 1.000000e+00, %i.az
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i.i.i.i.i.i
  store double %i.ba, ptr %i.bb, align 8, !tbaa !886
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %bb.d, !llvm.loop !16771

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 20 uses
  store i8 0, ptr %i.bc, align 1, !tbaa !908
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !1417
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 116
  br label %bb.h

bb.h:                                             ; preds = %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i, %bb.g
  %i.bj = phi i8 [ %i.ok, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i ], [ 0, %bb.g ] ; 3 uses
  %i.bk = phi i8 [ %i.ol, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i ], [ 1, %bb.g ] ; 13 uses
  %i.bl = phi i8 [ %i.om, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i ], [ 0, %bb.g ] ; 9 uses
  %i.bm = load i8, ptr %i.i, align 4, !tbaa !1360 ; 10 uses
  %i.bn = icmp ult i8 %i.bk, 8
  br i1 %i.bn, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.h
  %.phi.trans.insert.i = zext i8 %i.bl to i64
  %.phi.trans.insert6.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.phi.trans.insert.i
  %.pre.i = load i8, ptr %.phi.trans.insert6.i, align 1, !tbaa !908
  %i.bo = icmp ult i8 %.pre.i, %i.bm
  br i1 %i.bo, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.i:                                             ; preds = %bb.x
  %i.bp = icmp ult i8 %i.jz, %i.bm
  br i1 %i.bp, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1: ; preds = %bb.i
  %i.bq = zext nneg i8 %i.jn to i64               ; 2 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bq ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !984
  %i.bu = load i32, ptr %i.br, align 8, !tbaa !982
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 4 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !983
  %i.bx = sub i32 %i.bu, %i.bw
  %i.by = zext i32 %i.bx to i64
  %i.bz = icmp ult i64 %i.bt, %i.by
  br i1 %i.bz, label %bb.j, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bq ; 2 uses
  %i.cb = add i8 %i.bl, 2
  %i.cc = and i8 %i.cb, 7                         ; 5 uses
  %i.cd = zext nneg i8 %i.cc to i64               ; 2 uses
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.cd ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !tbaa.struct !1417
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !982 ; 2 uses
  store i32 %i.cf, ptr %i.br, align 8, !tbaa !982
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !983 ; 2 uses
  %i.ci = sub i32 %i.cf, %i.ch
  %i.cj = lshr i32 %i.ci, 1
  %i.ck = add i32 %i.cj, %i.ch                    ; 2 uses
  store i32 %i.ck, ptr %i.ce, align 8, !tbaa !982
  store i32 %i.ck, ptr %i.bv, align 4, !tbaa !983
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !984
  store i64 %i.cm, ptr %i.bs, align 8, !tbaa !984
  %i.cn = load i8, ptr %i.ca, align 1, !tbaa !908
  %i.co = add i8 %i.cn, 1                         ; 3 uses
  store i8 %i.co, ptr %i.ca, align 1, !tbaa !908
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.cd
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !908
  %i.cq = add nuw nsw i8 %i.bk, 2                 ; 3 uses
  %exitcond.not.i.1 = icmp eq i8 %i.cq, 8
  br i1 %exitcond.not.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.k, !llvm.loop !76

bb.k:                                             ; preds = %bb.j
  %i.cr = icmp ult i8 %i.co, %i.bm
  br i1 %i.cr, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2: ; preds = %bb.k
  %i.cs = zext nneg i8 %i.cc to i64               ; 2 uses
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.cs ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !984
  %i.cw = load i32, ptr %i.ct, align 8, !tbaa !982
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 4 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !983
  %i.cz = sub i32 %i.cw, %i.cy
  %i.da = zext i32 %i.cz to i64
  %i.db = icmp ult i64 %i.cv, %i.da
  br i1 %i.db, label %bb.l, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.l:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.cs ; 2 uses
  %i.dd = add i8 %i.bl, 3
  %i.de = and i8 %i.dd, 7                         ; 5 uses
  %i.df = zext nneg i8 %i.de to i64               ; 2 uses
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.df ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i64 16, i1 false), !tbaa.struct !1417
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !982 ; 2 uses
  store i32 %i.dh, ptr %i.ct, align 8, !tbaa !982
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !983 ; 2 uses
  %i.dk = sub i32 %i.dh, %i.dj
  %i.dl = lshr i32 %i.dk, 1
  %i.dm = add i32 %i.dl, %i.dj                    ; 2 uses
  store i32 %i.dm, ptr %i.dg, align 8, !tbaa !982
  store i32 %i.dm, ptr %i.cx, align 4, !tbaa !983
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !984
  store i64 %i.do, ptr %i.cu, align 8, !tbaa !984
  %i.dp = load i8, ptr %i.dc, align 1, !tbaa !908
  %i.dq = add i8 %i.dp, 1                         ; 3 uses
  store i8 %i.dq, ptr %i.dc, align 1, !tbaa !908
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.df
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !908
  %i.ds = add nuw nsw i8 %i.bk, 3                 ; 3 uses
  %exitcond.not.i.2 = icmp eq i8 %i.ds, 8
  br i1 %exitcond.not.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.m, !llvm.loop !76

bb.m:                                             ; preds = %bb.l
  %i.dt = icmp ult i8 %i.dq, %i.bm
  br i1 %i.dt, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3: ; preds = %bb.m
  %i.du = zext nneg i8 %i.de to i64               ; 2 uses
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.du ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !984
  %i.dy = load i32, ptr %i.dv, align 8, !tbaa !982
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 4 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !983
  %i.eb = sub i32 %i.dy, %i.ea
  %i.ec = zext i32 %i.eb to i64
  %i.ed = icmp ult i64 %i.dx, %i.ec
  br i1 %i.ed, label %bb.n, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.n:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.du ; 2 uses
  %i.ef = and i8 %i.bl, 7                         ; 4 uses
  %i.eg = xor i8 %i.ef, 4                         ; 8 uses
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINSE_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.in = zext nneg i8 %i.ef to i64               ; 2 uses
  %i.io = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.in ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.io, ptr noundef nonnull align 8 dereferenceable(16) %i.id, i64 16, i1 false), !tbaa.struct !1417
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !982 ; 2 uses
  store i32 %i.ip, ptr %i.id, align 8, !tbaa !982
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !983 ; 2 uses
  %i.is = sub i32 %i.ip, %i.ir
  %i.it = lshr i32 %i.is, 1
  %i.iu = add i32 %i.it, %i.ir                    ; 2 uses
  store i32 %i.iu, ptr %i.io, align 8, !tbaa !982
  store i32 %i.iu, ptr %i.ih, align 4, !tbaa !983
  %i.iv = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !984
  store i64 %i.iw, ptr %i.ie, align 8, !tbaa !984
  %i.ix = load i8, ptr %i.im, align 1, !tbaa !908
  %i.iy = add i8 %i.ix, 1                         ; 2 uses
  store i8 %i.iy, ptr %i.im, align 1, !tbaa !908
  %i.iz = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.in
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !908
  %exitcond.not.i.7 = icmp eq i8 %i.bk, 0
  br i1 %exitcond.not.i.7, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.w, !llvm.loop !76

bb.w:                                             ; preds = %bb.v
  %i.ja = or disjoint i8 %i.bk, 8
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i: ; preds = %.lr.ph.i
  %i.jb = zext i8 %i.bl to i64                    ; 2 uses
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.jb ; 5 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8 ; 2 uses
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !984
  %i.jf = load i32, ptr %i.jc, align 8, !tbaa !982
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 4 ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !983
  %i.ji = sub i32 %i.jf, %i.jh
  %i.jj = zext i32 %i.ji to i64
  %i.jk = icmp ult i64 %i.je, %i.jj
  br i1 %i.jk, label %bb.x, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.x:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i
  %i.jl = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.jb ; 2 uses
  %i.jm = add nuw i8 %i.bl, 1
  %i.jn = and i8 %i.jm, 7                         ; 5 uses
  %i.jo = zext nneg i8 %i.jn to i64               ; 2 uses
  %i.jp = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.jo ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jp, ptr noundef nonnull align 8 dereferenceable(16) %i.jc, i64 16, i1 false), !tbaa.struct !1417
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !982 ; 2 uses
  store i32 %i.jq, ptr %i.jc, align 8, !tbaa !982
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !983 ; 2 uses
  %i.jt = sub i32 %i.jq, %i.js
  %i.ju = lshr i32 %i.jt, 1
  %i.jv = add i32 %i.ju, %i.js                    ; 2 uses
  store i32 %i.jv, ptr %i.jp, align 8, !tbaa !982
  store i32 %i.jv, ptr %i.jg, align 4, !tbaa !983
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !984
  store i64 %i.jx, ptr %i.jd, align 8, !tbaa !984
  %i.jy = load i8, ptr %i.jl, align 1, !tbaa !908
  %i.jz = add i8 %i.jy, 1                         ; 3 uses
  store i8 %i.jz, ptr %i.jl, align 1, !tbaa !908
  %i.ka = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.jo
  store i8 %i.jz, ptr %i.ka, align 1, !tbaa !908
  %i.kb = add nuw nsw i8 %i.bk, 1                 ; 3 uses
  %exitcond.not.i = icmp eq i8 %i.kb, 8
  br i1 %exitcond.not.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.i, !llvm.loop !76

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit: ; preds = %bb.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1, %bb.k, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2, %bb.m, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3, %bb.o, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4, %bb.q, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5, %bb.s, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6, %bb.u, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7, %bb.w, %.lr.ph.i, %bb.h
  %i.kc = phi i8 [ %i.bk, %bb.h ], [ %i.bk, %.lr.ph.i ], [ %i.bk, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i ], [ %i.kb, %bb.i ], [ %i.kb, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1 ], [ %i.cq, %bb.k ], [ %i.cq, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2 ], [ %i.ds, %bb.m ], [ %i.ds, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3 ], [ %i.eu, %bb.o ], [ %i.eu, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4 ], [ %i.fw, %bb.q ], [ %i.fw, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5 ], [ %i.gy, %bb.s ], [ %i.gy, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6 ], [ %i.ia, %bb.u ], [ %i.ia, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7 ], [ %i.ja, %bb.w ] ; 6 uses
  %i.kd = phi i8 [ %i.bl, %bb.h ], [ %i.bl, %.lr.ph.i ], [ %i.bl, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i ], [ %i.jn, %bb.i ], [ %i.jn, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1 ], [ %i.cc, %bb.k ], [ %i.cc, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2 ], [ %i.de, %bb.m ], [ %i.de, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3 ], [ %i.eg, %bb.o ], [ %i.eg, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4 ], [ %i.fi, %bb.q ], [ %i.fi, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5 ], [ %i.gk, %bb.s ], [ %i.gk, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6 ], [ %i.hm, %bb.u ], [ %i.hm, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7 ], [ %i.ef, %bb.w ] ; 6 uses
  %i.ke = load ptr, ptr %i.be, align 32, !tbaa !6013
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %i.kg = load atomic i8, ptr %i.kf monotonic, align 1, !range !972, !noundef !1253
  %i.kh = trunc nuw i8 %i.kg to i1
  br i1 %i.kh, label %bb.y, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.x
  %.lcssa = phi i8 [ %i.jn, %bb.x ], [ %i.cc, %bb.j ], [ %i.de, %bb.l ], [ %i.eg, %bb.n ], [ %i.fi, %bb.p ], [ %i.gk, %bb.r ], [ %i.hm, %bb.t ], [ %i.ef, %bb.v ] ; 2 uses
  %i.ki = load ptr, ptr %i.be, align 32, !tbaa !6013
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  %i.kk = load atomic i8, ptr %i.kj monotonic, align 1, !range !972, !noundef !1253
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %.thread80, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

.thread80:                                        ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread
  %i.km = add i8 %i.bm, 1
  store i8 %i.km, ptr %i.i, align 4, !tbaa !1360
  br label %.noexc

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %i.kn = phi i8 [ %.lcssa, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread ], [ %i.kd, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit ] ; 2 uses
  %i.ko = phi i8 [ 8, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread ], [ %i.kc, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit ]
  %.pre = zext i8 %i.kn to i64
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

bb.y:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %i.kp = add i8 %i.bm, 1                         ; 2 uses
  store i8 %i.kp, ptr %i.i, align 4, !tbaa !1360
  %i.kq = icmp ugt i8 %i.kc, 1
  br i1 %i.kq, label %.noexc, label %bb.z

.noexc:                                           ; preds = %.thread80, %bb.y
  %i.kr = phi i8 [ 8, %.thread80 ], [ %i.kc, %bb.y ]
  %i.ks = phi i8 [ %.lcssa, %.thread80 ], [ %i.kd, %bb.y ]
  %i.kt = zext nneg i8 %i.bj to i64               ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.kt
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !908
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !1348
  %i.kw = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !16772 ; 10 uses
  %i.kx = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.kt
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ky, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEEE, i64 16), ptr %i.kw, align 64, !tbaa !895
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.kz, ptr noundef nonnull align 8 dereferenceable(16) %i.kx, i64 16, i1 false), !tbaa.struct !1417
  %i.la = getelementptr inbounds nuw i8, ptr %i.kw, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.la, ptr noundef nonnull align 16 dereferenceable(16) %i.bf, i64 16, i1 false), !tbaa.struct !6011
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kw, i64 96 ; 2 uses
  store ptr null, ptr %i.lb, align 32, !tbaa !6013
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kw, i64 104
  %i.ld = load i64, ptr %i.bh, align 8, !tbaa !1361
  %i.le = lshr i64 %i.ld, 1                       ; 2 uses
  store i64 %i.le, ptr %i.bh, align 8, !tbaa !1361
  store i64 %i.le, ptr %i.lc, align 8, !tbaa !1361
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kw, i64 112
  store i32 2, ptr %i.lf, align 16, !tbaa !1359
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kw, i64 116
  %i.lh = load i8, ptr %i.bi, align 4, !tbaa !1360
  %i.li = getelementptr inbounds nuw i8, ptr %i.kw, i64 120
  %i.lj = load i64, ptr %4, align 8, !tbaa !1362
  store i64 %i.lj, ptr %i.li, align 8, !tbaa !1362
  %i.lk = sub i8 %i.lh, %i.kv
  store i8 %i.lk, ptr %i.lg, align 4, !tbaa !1360
  %i.ll = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !16772 ; 6 uses
  %i.lm = load ptr, ptr %i.be, align 32, !tbaa !1376
  store ptr %i.lm, ptr %i.ll, align 8, !tbaa !1366
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  store i32 2, ptr %i.ln, align 8, !tbaa !1367
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.lp = load i64, ptr %4, align 8, !tbaa !1362
  store i64 %i.lp, ptr %i.lo, align 8, !tbaa !1362
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  store i8 0, ptr %i.lq, align 8, !tbaa !1378
  store ptr %i.ll, ptr %i.be, align 32, !tbaa !6013
  store ptr %i.ll, ptr %i.lb, align 32, !tbaa !6013
  %i.lr = load ptr, ptr %3, align 8, !tbaa !1379
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(128) %i.kw, ptr noundef nonnull align 8 dereferenceable(128) %i.lr), !inline_history !16772
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ls = add i8 %i.kr, -1
  %i.lt = add nuw nsw i8 %i.bj, 1
  %i.lu = and i8 %i.lt, 7
  br label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.lv = zext i8 %i.kd to i64                    ; 4 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.lv
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !908
  %i.ly = icmp ult i8 %i.lx, %i.kp
  br i1 %i.ly, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit: ; preds = %bb.z
  %i.lz = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.lv ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !984
  %i.mc = load i32, ptr %i.lz, align 8, !tbaa !982
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  %i.me = load i32, ptr %i.md, align 4, !tbaa !983
  %i.mf = sub i32 %i.mc, %i.me
  %i.mg = zext i32 %i.mf to i64
  %i.mh = icmp ult i64 %i.mb, %i.mg
  br i1 %i.mh, label %thread-pre-split40, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.z, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit
  %i.mi = phi i8 [ %i.kn, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.kd, %bb.z ], [ %i.kd, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.mj = phi i8 [ %i.ko, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.kc, %bb.z ], [ %i.kc, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %.pre-phi = phi i64 [ %.pre, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.lv, %bb.z ], [ %i.lv, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.mk = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %.pre-phi ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 4
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !983 ; 2 uses
  %i.mn = load i32, ptr %i.mk, align 8, !tbaa !982 ; 2 uses
  %i.mo = icmp ult i32 %i.mm, %i.mn
  br i1 %i.mo, label %.lr.ph.i.i.i.i.i.i15, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEE8run_bodyERS4_.exit33

.lr.ph.i.i.i.i.i.i15:                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread
  %i.mp = load ptr, ptr %i.bf, align 16, !tbaa !5230 ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !5247, !noalias !16777
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !1321, !noalias !16777
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mp, i64 24
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !1321, !noalias !16777
  %i.mw = load ptr, ptr %i.bg, align 8, !tbaa !5231
  %i.mx = zext i32 %i.mm to i64
  %wide.trip.count.i.i.i.i.i.i16 = zext i32 %i.mn to i64
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE8getValueEjj.exit.i.i.i.i.i.i28, %.lr.ph.i.i.i.i.i.i15
  %indvars.iv.i.i.i.i.i.i17 = phi i64 [ %i.mx, %.lr.ph.i.i.i.i.i.i15 ], [ %indvars.iv.next.i.i.i.i.i.i30, %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE8getValueEjj.exit.i.i.i.i.i.i28 ] ; 6 uses
  %i.my = mul i64 %indvars.iv.i.i.i.i.i.i17, 7
  %i.mz = and i64 %i.my, 4294967295               ; 2 uses
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %i.mz
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.mz ; 3 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv.i.i.i.i.i.i17
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !913 ; 3 uses
  %i.ne = icmp eq i32 %i.nd, 0
  br i1 %i.ne, label %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE4findEj.exit.i.i.i.i.i.i.i.i26, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.nf = zext i32 %i.nd to i64
  br label %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i18

_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i18: ; preds = %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i18, %bb.ab
  %.017.i.i.i.i.i.i.i.i.i.i.i19 = phi i64 [ %.1.i.i.i.i.i.i.i.i.i.i.i24, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i18 ], [ %i.nf, %bb.ab ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i20 = phi ptr [ %.112.i.i.i.i.i.i.i.i.i.i.i23, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i18 ], [ %i.nb, %bb.ab ] ; 2 uses
  %i.ng = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i19, 1 ; 3 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i20, i64 %i.ng ; 2 uses
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !913
  %i.nj = zext i32 %i.ni to i64
  %i.nk = icmp samesign ugt i64 %indvars.iv.i.i.i.i.i.i17, %i.nj ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  %i.nm = xor i64 %i.ng, -1
  %i.nn = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i19, %i.nm
  %.112.i.i.i.i.i.i.i.i.i.i.i23 = select i1 %i.nk, ptr %i.nl, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i20 ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i24 = select i1 %i.nk, i64 %i.nn, i64 %i.ng ; 2 uses
  %i.no = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i24, 0
  br i1 %i.no, label %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i18, label %_ZSt11lower_boundIPKjjET_S2_S2_RKT0_.exit.i.i.i.i.i.i.i.i.i25, !llvm.loop !610

_ZSt11lower_boundIPKjjET_S2_S2_RKT0_.exit.i.i.i.i.i.i.i.i.i25: ; preds = %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i18
  %i.np = ptrtoint ptr %i.nb to i64
  %i.nq = ptrtoint ptr %.112.i.i.i.i.i.i.i.i.i.i.i23 to i64
  %i.nr = sub i64 %i.nq, %i.np
  %i.ns = lshr exact i64 %i.nr, 2
  %i.nt = trunc i64 %i.ns to i32
  br label %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE4findEj.exit.i.i.i.i.i.i.i.i26

_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE4findEj.exit.i.i.i.i.i.i.i.i26: ; preds = %_ZSt11lower_boundIPKjjET_S2_S2_RKT0_.exit.i.i.i.i.i.i.i.i.i25, %bb.aa
  %.0.i.i.i.i.i.i.i.i.i27 = phi i32 [ %i.nt, %_ZSt11lower_boundIPKjjET_S2_S2_RKT0_.exit.i.i.i.i.i.i.i.i.i25 ], [ 0, %bb.aa ] ; 2 uses
  %i.nu = icmp ult i32 %.0.i.i.i.i.i.i.i.i.i27, %i.nd
  br i1 %i.nu, label %bb.ac, label %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE8getValueEjj.exit.i.i.i.i.i.i28

bb.ac:                                            ; preds = %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE4findEj.exit.i.i.i.i.i.i.i.i26
  %i.nv = zext i32 %.0.i.i.i.i.i.i.i.i.i27 to i64 ; 2 uses
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %i.nv
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !913
  %i.ny = zext i32 %i.nx to i64
  %i.nz = icmp eq i64 %indvars.iv.i.i.i.i.i.i17, %i.ny
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %i.nv
  %spec.select.i.i.i.i.i.i.i32 = select i1 %i.nz, ptr %i.oa, ptr @_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10sZeroValueE
  br label %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE8getValueEjj.exit.i.i.i.i.i.i28

_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE8getValueEjj.exit.i.i.i.i.i.i28: ; preds = %bb.ac, %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE4findEj.exit.i.i.i.i.i.i.i.i26
  %.0.i.i.i.i.i.i.i.i29 = phi ptr [ @_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10sZeroValueE, %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE4findEj.exit.i.i.i.i.i.i.i.i26 ], [ %spec.select.i.i.i.i.i.i.i32, %bb.ac ]
  %i.ob = load double, ptr %.0.i.i.i.i.i.i.i.i29, align 8, !tbaa !886
  %i.oc = fdiv double 1.000000e+00, %i.ob
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %indvars.iv.i.i.i.i.i.i17
  store double %i.oc, ptr %i.od, align 8, !tbaa !886
  %indvars.iv.next.i.i.i.i.i.i30 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i17, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i31 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i30, %wide.trip.count.i.i.i.i.i.i16
  br i1 %exitcond.not.i.i.i.i.i.i31, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEE8run_bodyERS4_.exit33, label %bb.aa, !llvm.loop !16771

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEE8run_bodyERS4_.exit33: ; preds = %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE8getValueEjj.exit.i.i.i.i.i.i28, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread
  %i.oe = add i8 %i.mj, -1
  %i.of = add nuw i8 %i.mi, 7
  %i.og = and i8 %i.of, 7
  br label %thread-pre-split40

thread-pre-split40:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEE8run_bodyERS4_.exit33
  %i.oh = phi i8 [ %i.oe, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEE8run_bodyERS4_.exit33 ], [ %i.kc, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.oi = phi i8 [ %i.og, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEE8run_bodyERS4_.exit33 ], [ %i.kd, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.oj = icmp eq i8 %i.oh, 0
  br i1 %i.oj, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit39, label %bb.ad

bb.ad:                                            ; preds = %.noexc, %thread-pre-split40
  %i.ok = phi i8 [ %i.lu, %.noexc ], [ %i.bj, %thread-pre-split40 ]
  %i.ol = phi i8 [ %i.ls, %.noexc ], [ %i.oh, %thread-pre-split40 ]
  %i.om = phi i8 [ %i.ks, %.noexc ], [ %i.oi, %thread-pre-split40 ]
  %i.on = load ptr, ptr %3, align 8, !tbaa !1379  ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 15
  %i.op = load atomic i8, ptr %i.oo monotonic, align 1
  %i.oq = icmp eq i8 %i.op, -1
  br i1 %i.oq, label %bb.ae, label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.or = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !908
  br label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i = phi ptr [ %i.os, %bb.ae ], [ %i.on, %bb.ad ]
  %i.ot = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.ot, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit39, label %bb.h, !llvm.loop !16775

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit39: ; preds = %thread-pre-split40, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE8getValueEjj.exit.i.i.i.i.i.i, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE7ApplyOpEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE7ApplyOpEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr null, ptr %3, align 8, !tbaa !1348
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 192)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE7ApplyOpEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !895
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1417
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !6014
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !6016
  %i.m = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  store i32 0, ptr %i.p, align 8, !tbaa !1359
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 124
  store i8 5, ptr %i.q, align 4, !tbaa !1360
  %i.r = shl nsw i64 %i.o, 1
  %i.s = and i64 %i.r, 9223372036854775806
  store i64 %i.s, ptr %i.n, align 16, !tbaa !1361
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.u = load i64, ptr %3, align 8, !tbaa !1362
  store i64 %i.u, ptr %i.t, align 64, !tbaa !1362
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !1366
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !1367
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.w, align 8, !tbaa !1370
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.x, align 8, !tbaa !1018
  store ptr %4, ptr %i.l, align 8, !tbaa !6016
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE7ApplyOpEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE7ApplyOpEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.z = load atomic i8, ptr %i.y monotonic, align 1
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE7ApplyOpEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #32
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE7ApplyOpEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %i.ad
}
end_hunk_1
begin_hunk_2_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE:bb.a
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.t = atomicrmw sub ptr %i.s, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v)
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(136) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !1348
  %i.v = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !16799 ; 12 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.v, align 64, !tbaa !895
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ag, ptr noundef nonnull align 16 dereferenceable(24) %i.r, i64 24, i1 false), !tbaa.struct !6026
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 104 ; 2 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !6028
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  %i.aj = load i64, ptr %i.s, align 16, !tbaa !1361
  %i.ak = lshr i64 %i.aj, 1                       ; 2 uses
  store i64 %i.ak, ptr %i.s, align 16, !tbaa !1361
  store i64 %i.ak, ptr %i.ai, align 16, !tbaa !1361
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  store i32 2, ptr %i.al, align 8, !tbaa !1359
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 124
  %i.an = load i8, ptr %i.t, align 4, !tbaa !1360
  store i8 %i.an, ptr %i.am, align 4, !tbaa !1360
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  %i.ap = load i64, ptr %4, align 8, !tbaa !1362
  store i64 %i.ap, ptr %i.ao, align 64, !tbaa !1362
  %i.aq = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !16800 ; 6 uses
  %i.ar = load ptr, ptr %i.u, align 8, !tbaa !1376
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !1366
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 2, ptr %i.as, align 8, !tbaa !1367
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.au = load i64, ptr %4, align 8, !tbaa !1362
  store i64 %i.au, ptr %i.at, align 8, !tbaa !1362
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i8 0, ptr %i.av, align 8, !tbaa !1378
  store ptr %i.aq, ptr %i.u, align 8, !tbaa !6028
  store ptr %i.aq, ptr %i.ah, align 8, !tbaa !6028
  %i.aw = load ptr, ptr %3, align 8, !tbaa !1379
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(136) %i.v, ptr noundef nonnull align 8 dereferenceable(128) %i.aw), !inline_history !16800
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
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !16801

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
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::range_vector.394", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !984
  %i.c = load i32, ptr %2, align 8, !tbaa !982    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !983  ; 3 uses
  %i.f = sub i32 %i.c, %i.e
  %i.g = zext i32 %i.f to i64
  %i.h = icmp ult i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.j = load i8, ptr %i.i, align 4, !tbaa !1360
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = icmp ult i32 %i.e, %i.c
  br i1 %i.k, label %.lr.ph.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !5261 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !5247, !noalias !16812
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1321, !noalias !16812
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1321, !noalias !16812
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !5262 ; 5 uses
  %i.v = load i32, ptr %i.m, align 8, !tbaa !5210
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.x = load ptr, ptr %i.w, align 32, !tbaa !5263
  %i.y = zext i32 %i.e to i64
  %wide.trip.count.i.i.i.i.i.i = zext i32 %i.c to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i ] ; 4 uses
  %i.z = mul i64 %indvars.iv.i.i.i.i.i.i, 7
  %i.aa = and i64 %i.z, 4294967295                ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aa ; 5 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.aa ; 5 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i.i.i.i.i.i
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !913
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.ae, i32 %i.v) ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d
  %wide.trip.count.i.i.i.i.i.i.i = zext i32 %.sroa.speculated.i.i.i.i.i.i.i to i64 ; 2 uses
  %xtraiter92 = and i64 %wide.trip.count.i.i.i.i.i.i.i, 3 ; 3 uses
  %i.af = icmp ult i32 %.sroa.speculated.i.i.i.i.i.i.i, 4
  br i1 %i.af, label %.epil.preheader91, label %.lr.ph.i.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.i.new:                         ; preds = %.lr.ph.i.i.i.i.i.i.i
  %unroll_iter97 = and i64 %wide.trip.count.i.i.i.i.i.i.i, 4294967292
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.new
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.i.i.i.3, %bb.e ] ; 6 uses
  %.0810.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %.lr.ph.i.i.i.i.i.i.i.new ], [ %i.bl, %bb.e ]
  %niter98 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.new ], [ %niter98.next.3, %bb.e ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !886
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !913
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !886
  %i.an = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.am, double %.0810.i.i.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i.i.i.i.i.i
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !886
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.i.i.i.i.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !913
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !886
  %i.av = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.au, double %i.an)
  %indvars.iv.next.i.i.i.i.i.i.i.1 = or disjoint i64 %indvars.iv.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !886
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !913
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !886
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.bc, double %i.av)
  %indvars.iv.next.i.i.i.i.i.i.i.2 = or disjoint i64 %indvars.iv.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i.i.i.i.i.i.2
  %i.bf = load double, ptr %i.be, align 8, !tbaa !886
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.i.i.i.i.i.2
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !913
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !886
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bk, double %i.bd) ; 3 uses
  %indvars.iv.next.i.i.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter98.next.3 = add i64 %niter98, 4           ; 2 uses
  %niter98.ncmp.3 = icmp eq i64 %niter98.next.3, %unroll_iter97
  br i1 %niter98.ncmp.3, label %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i.loopexit.unr-lcssa, label %bb.e, !llvm.loop !16804

_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %bb.e
  %lcmp.mod94.not = icmp eq i64 %xtraiter92, 0
  br i1 %lcmp.mod94.not, label %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i, label %.epil.preheader91

.epil.preheader91:                                ; preds = %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.3, %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.0810.i.i.i.i.i.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bl, %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod96 = icmp ne i64 %xtraiter92, 0
  tail call void @llvm.assume(i1 %lcmp.mod96)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader91
  %indvars.iv.i.i.i.i.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.i.i.i.i.epil.init, %.epil.preheader91 ], [ %indvars.iv.next.i.i.i.i.i.i.i.epil, %bb.f ] ; 3 uses
  %.0810.i.i.i.i.i.i.i.epil = phi double [ %.0810.i.i.i.i.i.i.i.epil.init, %.epil.preheader91 ], [ %i.bt, %bb.f ]
  %epil.iter93 = phi i64 [ 0, %.epil.preheader91 ], [ %epil.iter93.next, %bb.f ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i.i.i.i.i.i.i.epil
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !886
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.i.i.i.i.i.i.i.epil
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !913
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !886
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.bs, double %.0810.i.i.i.i.i.i.i.epil) ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i.epil, 1
  %epil.iter93.next = add i64 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i64 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i, label %bb.f, !llvm.loop !16805

_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i: ; preds = %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %bb.f, %bb.d
  %.08.lcssa.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.d ], [ %i.bl, %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.bt, %bb.f ]
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.i.i.i.i.i.i
  store double %.08.lcssa.i.i.i.i.i.i.i, ptr %i.bu, align 8, !tbaa !886
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %bb.d, !llvm.loop !16806

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 20 uses
  store i8 0, ptr %i.bv, align 1, !tbaa !908
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !1417
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 124
  br label %bb.h

bb.h:                                             ; preds = %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i, %bb.g
  %i.cd = phi i8 [ %i.pw, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i ], [ 0, %bb.g ] ; 3 uses
  %i.ce = phi i8 [ %i.px, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i ], [ 1, %bb.g ] ; 13 uses
  %i.cf = phi i8 [ %i.py, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i ], [ 0, %bb.g ] ; 9 uses
  %i.cg = load i8, ptr %i.i, align 4, !tbaa !1360 ; 10 uses
  %i.ch = icmp ult i8 %i.ce, 8
  br i1 %i.ch, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.h
  %.phi.trans.insert.i = zext i8 %i.cf to i64
  %.phi.trans.insert6.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.phi.trans.insert.i
  %.pre.i = load i8, ptr %.phi.trans.insert6.i, align 1, !tbaa !908
  %i.ci = icmp ult i8 %.pre.i, %i.cg
  br i1 %i.ci, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.i:                                             ; preds = %bb.x
  %i.cj = icmp ult i8 %i.kt, %i.cg
  br i1 %i.cj, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1: ; preds = %bb.i
  %i.ck = zext nneg i8 %i.kh to i64               ; 2 uses
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.ck ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !984
  %i.co = load i32, ptr %i.cl, align 8, !tbaa !982
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 4 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !983
  %i.cr = sub i32 %i.co, %i.cq
  %i.cs = zext i32 %i.cr to i64
  %i.ct = icmp ult i64 %i.cn, %i.cs
  br i1 %i.ct, label %bb.j, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.ck ; 2 uses
  %i.cv = add i8 %i.cf, 2
  %i.cw = and i8 %i.cv, 7                         ; 5 uses
  %i.cx = zext nneg i8 %i.cw to i64               ; 2 uses
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.cx ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !tbaa.struct !1417
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !982 ; 2 uses
  store i32 %i.cz, ptr %i.cl, align 8, !tbaa !982
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !983 ; 2 uses
  %i.dc = sub i32 %i.cz, %i.db
  %i.dd = lshr i32 %i.dc, 1
  %i.de = add i32 %i.dd, %i.db                    ; 2 uses
  store i32 %i.de, ptr %i.cy, align 8, !tbaa !982
  store i32 %i.de, ptr %i.cp, align 4, !tbaa !983
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !984
  store i64 %i.dg, ptr %i.cm, align 8, !tbaa !984
  %i.dh = load i8, ptr %i.cu, align 1, !tbaa !908
  %i.di = add i8 %i.dh, 1                         ; 3 uses
  store i8 %i.di, ptr %i.cu, align 1, !tbaa !908
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cx
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !908
  %i.dk = add nuw nsw i8 %i.ce, 2                 ; 3 uses
  %exitcond.not.i.1 = icmp eq i8 %i.dk, 8
  br i1 %exitcond.not.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.k, !llvm.loop !76

bb.k:                                             ; preds = %bb.j
  %i.dl = icmp ult i8 %i.di, %i.cg
  br i1 %i.dl, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2: ; preds = %bb.k
  %i.dm = zext nneg i8 %i.cw to i64               ; 2 uses
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.dm ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !984
  %i.dq = load i32, ptr %i.dn, align 8, !tbaa !982
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 4 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !983
  %i.dt = sub i32 %i.dq, %i.ds
  %i.du = zext i32 %i.dt to i64
  %i.dv = icmp ult i64 %i.dp, %i.du
  br i1 %i.dv, label %bb.l, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.l:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.dm ; 2 uses
  %i.dx = add i8 %i.cf, 3
  %i.dy = and i8 %i.dx, 7                         ; 5 uses
  %i.dz = zext nneg i8 %i.dy to i64               ; 2 uses
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.dz ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i64 16, i1 false), !tbaa.struct !1417
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !982 ; 2 uses
  store i32 %i.eb, ptr %i.dn, align 8, !tbaa !982
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
end_hunk_2
begin_hunk_3_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ji, ptr noundef nonnull align 8 dereferenceable(16) %i.ix, i64 16, i1 false), !tbaa.struct !1417
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !982 ; 2 uses
  store i32 %i.jj, ptr %i.ix, align 8, !tbaa !982
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !983 ; 2 uses
  %i.jm = sub i32 %i.jj, %i.jl
  %i.jn = lshr i32 %i.jm, 1
  %i.jo = add i32 %i.jn, %i.jl                    ; 2 uses
  store i32 %i.jo, ptr %i.ji, align 8, !tbaa !982
  store i32 %i.jo, ptr %i.jb, align 4, !tbaa !983
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !984
  store i64 %i.jq, ptr %i.iy, align 8, !tbaa !984
  %i.jr = load i8, ptr %i.jg, align 1, !tbaa !908
  %i.js = add i8 %i.jr, 1                         ; 2 uses
  store i8 %i.js, ptr %i.jg, align 1, !tbaa !908
  %i.jt = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.jh
  store i8 %i.js, ptr %i.jt, align 1, !tbaa !908
  %exitcond.not.i.7 = icmp eq i8 %i.ce, 0
  br i1 %exitcond.not.i.7, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.w, !llvm.loop !76

bb.w:                                             ; preds = %bb.v
  %i.ju = or disjoint i8 %i.ce, 8
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i: ; preds = %.lr.ph.i
  %i.jv = zext i8 %i.cf to i64                    ; 2 uses
  %i.jw = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.jv ; 5 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8 ; 2 uses
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !984
  %i.jz = load i32, ptr %i.jw, align 8, !tbaa !982
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 4 ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !983
  %i.kc = sub i32 %i.jz, %i.kb
  %i.kd = zext i32 %i.kc to i64
  %i.ke = icmp ult i64 %i.jy, %i.kd
  br i1 %i.ke, label %bb.x, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.x:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i
  %i.kf = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.jv ; 2 uses
  %i.kg = add nuw i8 %i.cf, 1
  %i.kh = and i8 %i.kg, 7                         ; 5 uses
  %i.ki = zext nneg i8 %i.kh to i64               ; 2 uses
  %i.kj = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.ki ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kj, ptr noundef nonnull align 8 dereferenceable(16) %i.jw, i64 16, i1 false), !tbaa.struct !1417
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !982 ; 2 uses
  store i32 %i.kk, ptr %i.jw, align 8, !tbaa !982
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !983 ; 2 uses
  %i.kn = sub i32 %i.kk, %i.km
  %i.ko = lshr i32 %i.kn, 1
  %i.kp = add i32 %i.ko, %i.km                    ; 2 uses
  store i32 %i.kp, ptr %i.kj, align 8, !tbaa !982
  store i32 %i.kp, ptr %i.ka, align 4, !tbaa !983
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !984
  store i64 %i.kr, ptr %i.jx, align 8, !tbaa !984
  %i.ks = load i8, ptr %i.kf, align 1, !tbaa !908
  %i.kt = add i8 %i.ks, 1                         ; 3 uses
  store i8 %i.kt, ptr %i.kf, align 1, !tbaa !908
  %i.ku = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.ki
  store i8 %i.kt, ptr %i.ku, align 1, !tbaa !908
  %i.kv = add nuw nsw i8 %i.ce, 1                 ; 3 uses
  %exitcond.not.i = icmp eq i8 %i.kv, 8
  br i1 %exitcond.not.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.i, !llvm.loop !76

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit: ; preds = %bb.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1, %bb.k, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2, %bb.m, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3, %bb.o, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4, %bb.q, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5, %bb.s, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6, %bb.u, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7, %bb.w, %.lr.ph.i, %bb.h
  %i.kw = phi i8 [ %i.ce, %bb.h ], [ %i.ce, %.lr.ph.i ], [ %i.ce, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i ], [ %i.kv, %bb.i ], [ %i.kv, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1 ], [ %i.dk, %bb.k ], [ %i.dk, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2 ], [ %i.em, %bb.m ], [ %i.em, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3 ], [ %i.fo, %bb.o ], [ %i.fo, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4 ], [ %i.gq, %bb.q ], [ %i.gq, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5 ], [ %i.hs, %bb.s ], [ %i.hs, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6 ], [ %i.iu, %bb.u ], [ %i.iu, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7 ], [ %i.ju, %bb.w ] ; 6 uses
  %i.kx = phi i8 [ %i.cf, %bb.h ], [ %i.cf, %.lr.ph.i ], [ %i.cf, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i ], [ %i.kh, %bb.i ], [ %i.kh, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1 ], [ %i.cw, %bb.k ], [ %i.cw, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2 ], [ %i.dy, %bb.m ], [ %i.dy, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3 ], [ %i.fa, %bb.o ], [ %i.fa, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4 ], [ %i.gc, %bb.q ], [ %i.gc, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5 ], [ %i.he, %bb.s ], [ %i.he, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6 ], [ %i.ig, %bb.u ], [ %i.ig, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7 ], [ %i.ez, %bb.w ] ; 6 uses
  %i.ky = load ptr, ptr %i.bx, align 8, !tbaa !6028
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 24
  %i.la = load atomic i8, ptr %i.kz monotonic, align 1, !range !972, !noundef !1253
  %i.lb = trunc nuw i8 %i.la to i1
  br i1 %i.lb, label %bb.y, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.x
  %.lcssa87 = phi i8 [ %i.kh, %bb.x ], [ %i.cw, %bb.j ], [ %i.dy, %bb.l ], [ %i.fa, %bb.n ], [ %i.gc, %bb.p ], [ %i.he, %bb.r ], [ %i.ig, %bb.t ], [ %i.ez, %bb.v ] ; 2 uses
  %i.lc = load ptr, ptr %i.bx, align 8, !tbaa !6028
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  %i.le = load atomic i8, ptr %i.ld monotonic, align 1, !range !972, !noundef !1253
  %i.lf = trunc nuw i8 %i.le to i1
  br i1 %i.lf, label %.thread79, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

.thread79:                                        ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread
  %i.lg = add i8 %i.cg, 1
  store i8 %i.lg, ptr %i.i, align 4, !tbaa !1360
  br label %.noexc

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %i.lh = phi i8 [ %.lcssa87, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread ], [ %i.kx, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit ] ; 2 uses
  %i.li = phi i8 [ 8, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread ], [ %i.kw, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit ]
  %.pre = zext i8 %i.lh to i64
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

bb.y:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %i.lj = add i8 %i.cg, 1                         ; 2 uses
  store i8 %i.lj, ptr %i.i, align 4, !tbaa !1360
  %i.lk = icmp ugt i8 %i.kw, 1
  br i1 %i.lk, label %.noexc, label %bb.z

.noexc:                                           ; preds = %.thread79, %bb.y
  %i.ll = phi i8 [ 8, %.thread79 ], [ %i.kw, %bb.y ]
  %i.lm = phi i8 [ %.lcssa87, %.thread79 ], [ %i.kx, %bb.y ]
  %i.ln = zext nneg i8 %i.cd to i64               ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.ln
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !908
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !1348
  %i.lq = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !16807 ; 10 uses
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.ln
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ls, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.lq, align 64, !tbaa !895
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.lt, ptr noundef nonnull align 8 dereferenceable(16) %i.lr, i64 16, i1 false), !tbaa.struct !1417
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.lu, ptr noundef nonnull align 16 dereferenceable(24) %i.by, i64 24, i1 false), !tbaa.struct !6026
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lq, i64 104 ; 2 uses
  store ptr null, ptr %i.lv, align 8, !tbaa !6028
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lq, i64 112
  %i.lx = load i64, ptr %i.cb, align 16, !tbaa !1361
  %i.ly = lshr i64 %i.lx, 1                       ; 2 uses
  store i64 %i.ly, ptr %i.cb, align 16, !tbaa !1361
  store i64 %i.ly, ptr %i.lw, align 16, !tbaa !1361
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lq, i64 120
  store i32 2, ptr %i.lz, align 8, !tbaa !1359
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lq, i64 124
  %i.mb = load i8, ptr %i.cc, align 4, !tbaa !1360
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lq, i64 128
  %i.md = load i64, ptr %4, align 8, !tbaa !1362
  store i64 %i.md, ptr %i.mc, align 64, !tbaa !1362
  %i.me = sub i8 %i.mb, %i.lp
  store i8 %i.me, ptr %i.ma, align 4, !tbaa !1360
  %i.mf = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !16807 ; 6 uses
  %i.mg = load ptr, ptr %i.bx, align 8, !tbaa !1376
  store ptr %i.mg, ptr %i.mf, align 8, !tbaa !1366
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  store i32 2, ptr %i.mh, align 8, !tbaa !1367
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mj = load i64, ptr %4, align 8, !tbaa !1362
  store i64 %i.mj, ptr %i.mi, align 8, !tbaa !1362
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mf, i64 24
  store i8 0, ptr %i.mk, align 8, !tbaa !1378
  store ptr %i.mf, ptr %i.bx, align 8, !tbaa !6028
  store ptr %i.mf, ptr %i.lv, align 8, !tbaa !6028
  %i.ml = load ptr, ptr %3, align 8, !tbaa !1379
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(136) %i.lq, ptr noundef nonnull align 8 dereferenceable(128) %i.ml), !inline_history !16807
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.mm = add i8 %i.ll, -1
  %i.mn = add nuw nsw i8 %i.cd, 1
  %i.mo = and i8 %i.mn, 7
  br label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.mp = zext i8 %i.kx to i64                    ; 4 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.mp
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !908
  %i.ms = icmp ult i8 %i.mr, %i.lj
  br i1 %i.ms, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit: ; preds = %bb.z
  %i.mt = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.mp ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !984
  %i.mw = load i32, ptr %i.mt, align 8, !tbaa !982
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 4
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !983
  %i.mz = sub i32 %i.mw, %i.my
  %i.na = zext i32 %i.mz to i64
  %i.nb = icmp ult i64 %i.mv, %i.na
  br i1 %i.nb, label %thread-pre-split37, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.z, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit
  %i.nc = phi i8 [ %i.lh, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.kx, %bb.z ], [ %i.kx, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.nd = phi i8 [ %i.li, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.kw, %bb.z ], [ %i.kw, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %.pre-phi = phi i64 [ %.pre, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.mp, %bb.z ], [ %i.mp, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.ne = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %.pre-phi ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 4
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !983 ; 2 uses
  %i.nh = load i32, ptr %i.ne, align 8, !tbaa !982 ; 2 uses
  %i.ni = icmp ult i32 %i.ng, %i.nh
  br i1 %i.ni, label %.lr.ph.i.i.i.i.i.i15, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30

.lr.ph.i.i.i.i.i.i15:                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread
  %i.nj = load ptr, ptr %i.by, align 16, !tbaa !5261 ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !5247, !noalias !16813
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !1321, !noalias !16813
  %i.no = getelementptr inbounds nuw i8, ptr %i.nj, i64 24
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !1321, !noalias !16813
  %i.nq = load ptr, ptr %i.bz, align 8, !tbaa !5262 ; 5 uses
  %i.nr = load i32, ptr %i.nj, align 8, !tbaa !5210
  %i.ns = load ptr, ptr %i.ca, align 32, !tbaa !5263
  %i.nt = zext i32 %i.ng to i64
  %wide.trip.count.i.i.i.i.i.i16 = zext i32 %i.nh to i64
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i26, %.lr.ph.i.i.i.i.i.i15
  %indvars.iv.i.i.i.i.i.i17 = phi i64 [ %i.nt, %.lr.ph.i.i.i.i.i.i15 ], [ %indvars.iv.next.i.i.i.i.i.i28, %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i26 ] ; 4 uses
  %i.nu = mul i64 %indvars.iv.i.i.i.i.i.i17, 7
  %i.nv = and i64 %i.nu, 4294967295               ; 2 uses
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %i.nv ; 5 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %i.nv ; 5 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %indvars.iv.i.i.i.i.i.i17
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !913
  %.sroa.speculated.i.i.i.i.i.i.i18 = call i32 @llvm.umin.i32(i32 %i.nz, i32 %i.nr) ; 3 uses
  %.not.i.i.i.i.i.i.i19 = icmp eq i32 %.sroa.speculated.i.i.i.i.i.i.i18, 0
  br i1 %.not.i.i.i.i.i.i.i19, label %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i26, label %.lr.ph.i.i.i.i.i.i.i20

.lr.ph.i.i.i.i.i.i.i20:                           ; preds = %bb.aa
  %wide.trip.count.i.i.i.i.i.i.i21 = zext i32 %.sroa.speculated.i.i.i.i.i.i.i18 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i.i.i.i21, 3 ; 3 uses
  %i.oa = icmp ult i32 %.sroa.speculated.i.i.i.i.i.i.i18, 4
  br i1 %i.oa, label %.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i20.new

.lr.ph.i.i.i.i.i.i.i20.new:                       ; preds = %.lr.ph.i.i.i.i.i.i.i20
  %unroll_iter = and i64 %wide.trip.count.i.i.i.i.i.i.i21, 4294967292
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph.i.i.i.i.i.i.i20.new
  %indvars.iv.i.i.i.i.i.i.i22 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i20.new ], [ %indvars.iv.next.i.i.i.i.i.i.i24.3, %bb.ab ] ; 6 uses
  %.0810.i.i.i.i.i.i.i23 = phi double [ 0.000000e+00, %.lr.ph.i.i.i.i.i.i.i20.new ], [ %i.pg, %bb.ab ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i20.new ], [ %niter.next.3, %bb.ab ]
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %indvars.iv.i.i.i.i.i.i.i22
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !886
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %indvars.iv.i.i.i.i.i.i.i22
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !913
  %i.of = zext i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %i.of
  %i.oh = load double, ptr %i.og, align 8, !tbaa !886
  %i.oi = call double @llvm.fmuladd.f64(double %i.oc, double %i.oh, double %.0810.i.i.i.i.i.i.i23)
  %indvars.iv.next.i.i.i.i.i.i.i24 = or disjoint i64 %indvars.iv.i.i.i.i.i.i.i22, 1 ; 2 uses
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %indvars.iv.next.i.i.i.i.i.i.i24
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !886
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %indvars.iv.next.i.i.i.i.i.i.i24
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !913
  %i.on = zext i32 %i.om to i64
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %i.on
  %i.op = load double, ptr %i.oo, align 8, !tbaa !886
  %i.oq = call double @llvm.fmuladd.f64(double %i.ok, double %i.op, double %i.oi)
  %indvars.iv.next.i.i.i.i.i.i.i24.1 = or disjoint i64 %indvars.iv.i.i.i.i.i.i.i22, 2 ; 2 uses
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %indvars.iv.next.i.i.i.i.i.i.i24.1
  %i.os = load double, ptr %i.or, align 8, !tbaa !886
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %indvars.iv.next.i.i.i.i.i.i.i24.1
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !913
  %i.ov = zext i32 %i.ou to i64
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %i.ov
  %i.ox = load double, ptr %i.ow, align 8, !tbaa !886
  %i.oy = call double @llvm.fmuladd.f64(double %i.os, double %i.ox, double %i.oq)
  %indvars.iv.next.i.i.i.i.i.i.i24.2 = or disjoint i64 %indvars.iv.i.i.i.i.i.i.i22, 3 ; 2 uses
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %indvars.iv.next.i.i.i.i.i.i.i24.2
  %i.pa = load double, ptr %i.oz, align 8, !tbaa !886
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %indvars.iv.next.i.i.i.i.i.i.i24.2
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !913
  %i.pd = zext i32 %i.pc to i64
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %i.pd
  %i.pf = load double, ptr %i.pe, align 8, !tbaa !886
  %i.pg = call double @llvm.fmuladd.f64(double %i.pa, double %i.pf, double %i.oy) ; 3 uses
  %indvars.iv.next.i.i.i.i.i.i.i24.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i22, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i26.loopexit.unr-lcssa, label %bb.ab, !llvm.loop !16804

_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i26.loopexit.unr-lcssa: ; preds = %bb.ab
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i26, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i26.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i20
  %indvars.iv.i.i.i.i.i.i.i22.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i20 ], [ %indvars.iv.next.i.i.i.i.i.i.i24.3, %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i26.loopexit.unr-lcssa ]
  %.0810.i.i.i.i.i.i.i23.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i.i.i.i.i.i20 ], [ %i.pg, %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i26.loopexit.unr-lcssa ]
  %lcmp.mod90 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod90)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.epil.preheader
  %indvars.iv.i.i.i.i.i.i.i22.epil = phi i64 [ %indvars.iv.i.i.i.i.i.i.i22.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i24.epil, %bb.ac ] ; 3 uses
  %.0810.i.i.i.i.i.i.i23.epil = phi double [ %.0810.i.i.i.i.i.i.i23.epil.init, %.epil.preheader ], [ %i.po, %bb.ac ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ac ]
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %indvars.iv.i.i.i.i.i.i.i22.epil
  %i.pi = load double, ptr %i.ph, align 8, !tbaa !886
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %indvars.iv.i.i.i.i.i.i.i22.epil
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !913
  %i.pl = zext i32 %i.pk to i64
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %i.pl
  %i.pn = load double, ptr %i.pm, align 8, !tbaa !886
  %i.po = call double @llvm.fmuladd.f64(double %i.pi, double %i.pn, double %.0810.i.i.i.i.i.i.i23.epil) ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i.i24.epil = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i22.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i26, label %bb.ac, !llvm.loop !16810

_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i26: ; preds = %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i26.loopexit.unr-lcssa, %bb.ac, %bb.aa
  %.08.lcssa.i.i.i.i.i.i.i27 = phi double [ 0.000000e+00, %bb.aa ], [ %i.pg, %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i26.loopexit.unr-lcssa ], [ %i.po, %bb.ac ]
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.ns, i64 %indvars.iv.i.i.i.i.i.i17
  store double %.08.lcssa.i.i.i.i.i.i.i27, ptr %i.pp, align 8, !tbaa !886
  %indvars.iv.next.i.i.i.i.i.i28 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i17, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i29 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i28, %wide.trip.count.i.i.i.i.i.i16
  br i1 %exitcond.not.i.i.i.i.i.i29, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30, label %bb.aa, !llvm.loop !16806

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30: ; preds = %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i26, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread
  %i.pq = add i8 %i.nd, -1
  %i.pr = add nuw i8 %i.nc, 7
  %i.ps = and i8 %i.pr, 7
  br label %thread-pre-split37

thread-pre-split37:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30
  %i.pt = phi i8 [ %i.pq, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30 ], [ %i.kw, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.pu = phi i8 [ %i.ps, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30 ], [ %i.kx, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.pv = icmp eq i8 %i.pt, 0
  br i1 %i.pv, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit36, label %bb.ad

bb.ad:                                            ; preds = %.noexc, %thread-pre-split37
  %i.pw = phi i8 [ %i.mo, %.noexc ], [ %i.cd, %thread-pre-split37 ]
  %i.px = phi i8 [ %i.mm, %.noexc ], [ %i.pt, %thread-pre-split37 ]
  %i.py = phi i8 [ %i.lm, %.noexc ], [ %i.pu, %thread-pre-split37 ]
  %i.pz = load ptr, ptr %3, align 8, !tbaa !1379  ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 15
  %i.qb = load atomic i8, ptr %i.qa monotonic, align 1
  %i.qc = icmp eq i8 %i.qb, -1
  br i1 %i.qc, label %bb.ae, label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !908
  br label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i = phi ptr [ %i.qe, %bb.ae ], [ %i.pz, %bb.ad ]
  %i.qf = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.qf, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit36, label %bb.h, !llvm.loop !16811

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit36: ; preds = %thread-pre-split37, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSB_RSD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSB_RSD_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr null, ptr %3, align 8, !tbaa !1348
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 192)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !895
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1417
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !6029
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 112 ; 2 uses
  store ptr null, ptr %i.l, align 16, !tbaa !6031
  %i.m = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  store i32 0, ptr %i.p, align 64, !tbaa !1359
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 132
  store i8 5, ptr %i.q, align 4, !tbaa !1360
  %i.r = shl nsw i64 %i.o, 1
  %i.s = and i64 %i.r, 9223372036854775806
  store i64 %i.s, ptr %i.n, align 8, !tbaa !1361
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.u = load i64, ptr %3, align 8, !tbaa !1362
  store i64 %i.u, ptr %i.t, align 8, !tbaa !1362
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !1366
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !1367
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.w, align 8, !tbaa !1370
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
end_hunk_3
