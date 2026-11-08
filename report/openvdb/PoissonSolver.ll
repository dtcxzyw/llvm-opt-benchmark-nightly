Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/PoissonSolver?download=true
inline.NumInlined: 42562
inline.NumDeleted: 14020
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 535
begin_hunk_0_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE:bb.a
_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.f, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.g, %bb.h
  %i.as = inttoptr i64 %i.z to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.as, ptr noundef nonnull align 64 dereferenceable(144) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !2172 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i64, ptr %i.c, align 8, !tbaa !752
  %i.e = load ptr, ptr %0, align 64, !tbaa !412
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(144) dereferenceable(144) %0) #22, !inline_history !228
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = atomicrmw add ptr %i.g, i32 -1 seq_cst, align 4
  %i.i = add i32 %i.h, -1
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.k, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.k = load ptr, ptr %.019.i.i, align 8, !tbaa !756 ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !752
  %i.n = inttoptr i64 %i.m to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = atomicrmw add ptr %i.o, i32 -1 seq_cst, align 4
  %i.q = add i32 %i.p, -1
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.t = atomicrmw add ptr %i.s, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v)
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(144) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !478
  %i.c = load i32, ptr %2, align 8, !tbaa !476
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !477
  %i.f = sub i32 %i.c, %i.e
  %i.g = zext i32 %i.f to i64
  %i.h = icmp ult i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %0, align 8, !tbaa !751    ; 2 uses
  %i.j = icmp ugt i64 %i.i, 1
  br i1 %i.j, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4, !tbaa !750   ; 2 uses
  %.not4.i = icmp eq i8 %i.l, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add i8 %i.l, -1
  store i8 %i.m, ptr %i.k, align 4, !tbaa !750
  store i64 0, ptr %0, align 8, !tbaa !751
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit: ; preds = %bb.b, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !736
  %i.v = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !6243 ; 12 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEEE, i64 16), ptr %i.v, align 64, !tbaa !412
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.y = load i32, ptr %i.o, align 64, !tbaa !476 ; 2 uses
  store i32 %i.y, ptr %i.x, align 64, !tbaa !476
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 68
  %i.aa = load i32, ptr %i.p, align 4, !tbaa !477 ; 2 uses
  %i.ab = sub i32 %i.y, %i.aa
  %i.ac = lshr i32 %i.ab, 1
  %i.ad = add i32 %i.ac, %i.aa                    ; 2 uses
  store i32 %i.ad, ptr %i.o, align 64, !tbaa !476
  store i32 %i.ad, ptr %i.z, align 4, !tbaa !477
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.af = load i64, ptr %i.q, align 8, !tbaa !478
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !478
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ag, ptr noundef nonnull align 16 dereferenceable(32) %i.r, i64 32, i1 false), !tbaa.struct !2170
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 112 ; 2 uses
  store ptr null, ptr %i.ah, align 16, !tbaa !2172
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.aj = load i64, ptr %i.s, align 8, !tbaa !751
  %i.ak = lshr i64 %i.aj, 1                       ; 2 uses
  store i64 %i.ak, ptr %i.s, align 8, !tbaa !751
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !751
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  store i32 2, ptr %i.al, align 64, !tbaa !749
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 132
  %i.an = load i8, ptr %i.t, align 4, !tbaa !750
  store i8 %i.an, ptr %i.am, align 4, !tbaa !750
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  %i.ap = load i64, ptr %4, align 8, !tbaa !752
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !752
  %i.aq = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !6244 ; 6 uses
  %i.ar = load ptr, ptr %i.u, align 16, !tbaa !766
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !756
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 2, ptr %i.as, align 8, !tbaa !757
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.au = load i64, ptr %4, align 8, !tbaa !752
  store i64 %i.au, ptr %i.at, align 8, !tbaa !752
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i8 0, ptr %i.av, align 8, !tbaa !768
  store ptr %i.aq, ptr %i.u, align 16, !tbaa !2172
  store ptr %i.aq, ptr %i.ah, align 16, !tbaa !2172
  %i.aw = load ptr, ptr %3, align 8, !tbaa !769
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(144) %i.v, ptr noundef nonnull align 8 dereferenceable(128) %i.aw), !inline_history !6244
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !478
  %i.ay = load i32, ptr %2, align 8, !tbaa !476
  %i.az = load i32, ptr %i.d, align 4, !tbaa !477
  %i.ba = sub i32 %i.ay, %i.az
  %i.bb = zext i32 %i.ba to i64
  %i.bc = icmp ult i64 %i.ax, %i.bb
  br i1 %i.bc, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.bd = load i64, ptr %0, align 8, !tbaa !751   ; 2 uses
  %i.be = icmp ugt i64 %i.bd, 1
  br i1 %i.be, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, label %bb.g

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge: ; preds = %bb.f, %bb.i
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !6245

bb.g:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i64 %i.bd, 0
  br i1 %.not.i8, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = load i8, ptr %i.n, align 4, !tbaa !750  ; 2 uses
  %.not4.i9 = icmp eq i8 %i.bf, 0
  br i1 %.not4.i9, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = add i8 %i.bf, -1
  store i8 %i.bg, ptr %i.n, align 4, !tbaa !750
  store i64 0, ptr %0, align 8, !tbaa !751
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::range_vector", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !478
  %i.c = load i32, ptr %2, align 8, !tbaa !476    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !477  ; 4 uses
  %i.f = sub i32 %i.c, %i.e
  %i.g = zext i32 %i.f to i64
  %i.h = icmp ult i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.j = load i8, ptr %i.i, align 4, !tbaa !750
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.l = load i32, ptr %i.k, align 4, !tbaa !604  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.n = load i32, ptr %i.m, align 32, !tbaa !603 ; 2 uses
  %i.o = udiv i32 %i.l, %i.n                      ; 4 uses
  %i.p = icmp ult i32 %i.e, %i.c
  br i1 %i.p, label %.lr.ph25.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

.lr.ph25.i.i.i.i.i.i:                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.r = add i32 %i.n, -1
  %i.s = load ptr, ptr %i.q, align 16             ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = load ptr, ptr %i.t, align 8              ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !605
  %6 = mul i32 %i.o, %i.e
  %i.x = zext i32 %i.e to i64
  %i.y = zext i32 %i.r to i64
  %wide.trip.count.i.i.i.i.i.i = zext i32 %i.c to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i, %.lr.ph25.i.i.i.i.i.i
  %indvars.iv30.i.i.i.i.i.i = phi i64 [ %i.x, %.lr.ph25.i.i.i.i.i.i ], [ %indvars.iv.next31.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 4 uses
  %indvars.iv.i.i.i.i.i.i = phi i32 [ %6, %.lr.ph25.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.z = trunc nuw i64 %indvars.iv30.i.i.i.i.i.i to i32
  %i.aa = mul i32 %i.o, %i.z                      ; 2 uses
  %i.ab = icmp eq i64 %indvars.iv30.i.i.i.i.i.i, %i.y
  %i.ac = add i32 %i.aa, %i.o
  %spec.select.i.i.i.i.i.i = select i1 %i.ab, i32 %i.l, i32 %i.ac ; 2 uses
  %i.ad = icmp ult i32 %i.aa, %spec.select.i.i.i.i.i.i
  br i1 %i.ad, label %.lr.ph.preheader.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.d
  %i.ae = zext i32 %indvars.iv.i.i.i.i.i.i to i64 ; 4 uses
  %i.af = zext i32 %spec.select.i.i.i.i.i.i to i64 ; 3 uses
  %i.ag = sub nsw i64 %i.af, %i.ae
  %xtraiter89 = and i64 %i.ag, 3                  ; 2 uses
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %indvars.iv27.i.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next28.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ae, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %.01921.i.i.i.i.i.i.prol = phi double [ %i.al, %.lr.ph.i.i.i.i.i.i.prol ], [ 0.000000e+00, %.lr.ph.preheader.i.i.i.i.i.i ]
  %prol.iter91 = phi i64 [ %prol.iter91.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv27.i.i.i.i.i.i.prol
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !501
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv27.i.i.i.i.i.i.prol
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !501
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.ak, double %.01921.i.i.i.i.i.i.prol) ; 3 uses
  %indvars.iv.next28.i.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv27.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter91.next = add i64 %prol.iter91, 1     ; 2 uses
  %prol.iter91.cmp.not = icmp eq i64 %prol.iter91.next, %xtraiter89
  br i1 %prol.iter91.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !6246

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.preheader.i.i.i.i.i.i
  %indvars.iv27.i.i.i.i.i.i.unr = phi i64 [ %i.ae, %.lr.ph.preheader.i.i.i.i.i.i ], [ %indvars.iv.next28.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01921.i.i.i.i.i.i.unr = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.al, %.lr.ph.i.i.i.i.i.i.prol ]
  %.lcssa.unr = phi double [ poison, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.al, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.am = sub nsw i64 %i.ae, %i.af
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.d
  %.019.lcssa.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.d ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bi, %.lr.ph.i.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv30.i.i.i.i.i.i
  store double %.019.lcssa.i.i.i.i.i.i, ptr %i.ao, align 8, !tbaa !501
  %indvars.iv.next31.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv30.i.i.i.i.i.i, 1 ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i = add i32 %indvars.iv.i.i.i.i.i.i, %i.o
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next31.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %bb.d, !llvm.loop !6247

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %indvars.iv27.i.i.i.i.i.i = phi i64 [ %indvars.iv.next28.i.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv27.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.01921.i.i.i.i.i.i = phi double [ %i.bi, %.lr.ph.i.i.i.i.i.i ], [ %.01921.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv27.i.i.i.i.i.i
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !501
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv27.i.i.i.i.i.i
  %i.as = load double, ptr %i.ar, align 8, !tbaa !501
  %i.at = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.as, double %.01921.i.i.i.i.i.i)
  %indvars.iv.next28.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv27.i.i.i.i.i.i, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next28.i.i.i.i.i.i
  %i.av = load double, ptr %i.au, align 8, !tbaa !501
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next28.i.i.i.i.i.i
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !501
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.av, double %i.ax, double %i.at)
  %indvars.iv.next28.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv27.i.i.i.i.i.i, 2 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next28.i.i.i.i.i.i.1
  %i.ba = load double, ptr %i.az, align 8, !tbaa !501
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next28.i.i.i.i.i.i.1
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !501
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.bc, double %i.ay)
  %indvars.iv.next28.i.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv27.i.i.i.i.i.i, 3 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next28.i.i.i.i.i.i.2
  %i.bf = load double, ptr %i.be, align 8, !tbaa !501
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next28.i.i.i.i.i.i.2
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !501
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bh, double %i.bd) ; 2 uses
  %indvars.iv.next28.i.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv27.i.i.i.i.i.i, 4 ; 2 uses
  %i.bj = icmp samesign ult i64 %indvars.iv.next28.i.i.i.i.i.i.3, %i.af
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !6248

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 20 uses
  store i8 0, ptr %i.bk, align 1, !tbaa !437
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !737
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 132
  br label %bb.f

bb.f:                                             ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit, %bb.e
  %i.bu = phi i8 [ %i.pa, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 0, %bb.e ] ; 3 uses
  %i.bv = phi i8 [ %i.pb, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 1, %bb.e ] ; 13 uses
  %i.bw = phi i8 [ %i.pc, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 0, %bb.e ] ; 9 uses
  %i.bx = load i8, ptr %i.i, align 4, !tbaa !750  ; 10 uses
  %i.by = icmp ult i8 %i.bv, 8
  br i1 %i.by, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.phi.trans.insert.i = zext i8 %i.bw to i64
  %.phi.trans.insert6.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.phi.trans.insert.i
  %.pre.i = load i8, ptr %.phi.trans.insert6.i, align 1, !tbaa !437
  %i.bz = icmp ult i8 %.pre.i, %i.bx
  br i1 %i.bz, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.g:                                             ; preds = %bb.v
  %i.ca = icmp ult i8 %i.kk, %i.bx
  br i1 %i.ca, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1: ; preds = %bb.g
  %i.cb = zext nneg i8 %i.jy to i64               ; 2 uses
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.cb ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !478
  %i.cf = load i32, ptr %i.cc, align 8, !tbaa !476
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 4 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !477
  %i.ci = sub i32 %i.cf, %i.ch
  %i.cj = zext i32 %i.ci to i64
  %i.ck = icmp ult i64 %i.ce, %i.cj
  br i1 %i.ck, label %bb.h, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.h:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.cb ; 2 uses
  %i.cm = add i8 %i.bw, 2
  %i.cn = and i8 %i.cm, 7                         ; 5 uses
  %i.co = zext nneg i8 %i.cn to i64               ; 2 uses
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.co ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false), !tbaa.struct !737
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !476 ; 2 uses
  store i32 %i.cq, ptr %i.cc, align 8, !tbaa !476
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !477 ; 2 uses
  %i.ct = sub i32 %i.cq, %i.cs
  %i.cu = lshr i32 %i.ct, 1
  %i.cv = add i32 %i.cu, %i.cs                    ; 2 uses
  store i32 %i.cv, ptr %i.cp, align 8, !tbaa !476
  store i32 %i.cv, ptr %i.cg, align 4, !tbaa !477
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !478
  store i64 %i.cx, ptr %i.cd, align 8, !tbaa !478
  %i.cy = load i8, ptr %i.cl, align 1, !tbaa !437
  %i.cz = add i8 %i.cy, 1                         ; 3 uses
  store i8 %i.cz, ptr %i.cl, align 1, !tbaa !437
  %i.da = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.co
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !437
  %i.db = add nuw nsw i8 %i.bv, 2                 ; 3 uses
  %exitcond.not.i.1 = icmp eq i8 %i.db, 8
  br i1 %exitcond.not.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.i, !llvm.loop !27

bb.i:                                             ; preds = %bb.h
  %i.dc = icmp ult i8 %i.cz, %i.bx
  br i1 %i.dc, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2: ; preds = %bb.i
  %i.dd = zext nneg i8 %i.cn to i64               ; 2 uses
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.dd ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !478
  %i.dh = load i32, ptr %i.de, align 8, !tbaa !476
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 4 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !477
  %i.dk = sub i32 %i.dh, %i.dj
  %i.dl = zext i32 %i.dk to i64
  %i.dm = icmp ult i64 %i.dg, %i.dl
  br i1 %i.dm, label %bb.j, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.dd ; 2 uses
  %i.do = add i8 %i.bw, 3
  %i.dp = and i8 %i.do, 7                         ; 5 uses
  %i.dq = zext nneg i8 %i.dp to i64               ; 2 uses
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.dq ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !tbaa.struct !737
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !476 ; 2 uses
  store i32 %i.ds, ptr %i.de, align 8, !tbaa !476
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !477 ; 2 uses
  %i.dv = sub i32 %i.ds, %i.du
  %i.dw = lshr i32 %i.dv, 1
  %i.dx = add i32 %i.dw, %i.du                    ; 2 uses
  store i32 %i.dx, ptr %i.dr, align 8, !tbaa !476
  store i32 %i.dx, ptr %i.di, align 4, !tbaa !477
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !478
  store i64 %i.dz, ptr %i.df, align 8, !tbaa !478
  %i.ea = load i8, ptr %i.dn, align 1, !tbaa !437
  %i.eb = add i8 %i.ea, 1                         ; 3 uses
  store i8 %i.eb, ptr %i.dn, align 1, !tbaa !437
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.dq
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !437
  %i.ed = add nuw nsw i8 %i.bv, 3                 ; 3 uses
  %exitcond.not.i.2 = icmp eq i8 %i.ed, 8
  br i1 %exitcond.not.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.k, !llvm.loop !27

bb.k:                                             ; preds = %bb.j
  %i.ee = icmp ult i8 %i.eb, %i.bx
  br i1 %i.ee, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3: ; preds = %bb.k
  %i.ef = zext nneg i8 %i.dp to i64               ; 2 uses
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.ef ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !478
  %i.ej = load i32, ptr %i.eg, align 8, !tbaa !476
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 4 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !477
  %i.em = sub i32 %i.ej, %i.el
  %i.en = zext i32 %i.em to i64
  %i.eo = icmp ult i64 %i.ei, %i.en
  br i1 %i.eo, label %bb.l, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.l:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ef ; 2 uses
  %i.eq = and i8 %i.bw, 7                         ; 4 uses
  %i.er = xor i8 %i.eq, 4                         ; 8 uses
  %i.es = zext nneg i8 %i.er to i64               ; 2 uses
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.es ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.et, ptr noundef nonnull align 8 dereferenceable(16) %i.eg, i64 16, i1 false), !tbaa.struct !737
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !476 ; 2 uses
  store i32 %i.eu, ptr %i.eg, align 8, !tbaa !476
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !477 ; 2 uses
  %i.ex = sub i32 %i.eu, %i.ew
  %i.ey = lshr i32 %i.ex, 1
  %i.ez = add i32 %i.ey, %i.ew                    ; 2 uses
  store i32 %i.ez, ptr %i.et, align 8, !tbaa !476
  store i32 %i.ez, ptr %i.ek, align 4, !tbaa !477
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !478
  store i64 %i.fb, ptr %i.eh, align 8, !tbaa !478
  %i.fc = load i8, ptr %i.ep, align 1, !tbaa !437
  %i.fd = add i8 %i.fc, 1                         ; 3 uses
  store i8 %i.fd, ptr %i.ep, align 1, !tbaa !437
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.es
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !437
  %i.ff = add nuw nsw i8 %i.bv, 4                 ; 3 uses
  %exitcond.not.i.3 = icmp eq i8 %i.ff, 8
  br i1 %exitcond.not.i.3, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.m, !llvm.loop !27

bb.m:                                             ; preds = %bb.l
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
bb.s:                                             ; preds = %bb.r
  %i.im = icmp ult i8 %i.ij, %i.bx
  br i1 %i.im, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7: ; preds = %bb.s
  %i.in = zext nneg i8 %i.hx to i64               ; 2 uses
  %i.io = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.in ; 5 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 2 uses
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !478
  %i.ir = load i32, ptr %i.io, align 8, !tbaa !476
  %i.is = getelementptr inbounds nuw i8, ptr %i.io, i64 4 ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !477
  %i.iu = sub i32 %i.ir, %i.it
  %i.iv = zext i32 %i.iu to i64
  %i.iw = icmp ult i64 %i.iq, %i.iv
  br i1 %i.iw, label %bb.t, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.t:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7
  %i.ix = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.in ; 2 uses
  %i.iy = zext nneg i8 %i.eq to i64               ; 2 uses
  %i.iz = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.iy ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iz, ptr noundef nonnull align 8 dereferenceable(16) %i.io, i64 16, i1 false), !tbaa.struct !737
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !476 ; 2 uses
  store i32 %i.ja, ptr %i.io, align 8, !tbaa !476
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !477 ; 2 uses
  %i.jd = sub i32 %i.ja, %i.jc
  %i.je = lshr i32 %i.jd, 1
  %i.jf = add i32 %i.je, %i.jc                    ; 2 uses
  store i32 %i.jf, ptr %i.iz, align 8, !tbaa !476
  store i32 %i.jf, ptr %i.is, align 4, !tbaa !477
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !478
  store i64 %i.jh, ptr %i.ip, align 8, !tbaa !478
  %i.ji = load i8, ptr %i.ix, align 1, !tbaa !437
  %i.jj = add i8 %i.ji, 1                         ; 2 uses
  store i8 %i.jj, ptr %i.ix, align 1, !tbaa !437
  %i.jk = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.iy
  store i8 %i.jj, ptr %i.jk, align 1, !tbaa !437
  %exitcond.not.i.7 = icmp eq i8 %i.bv, 0
  br i1 %exitcond.not.i.7, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.u, !llvm.loop !27

bb.u:                                             ; preds = %bb.t
  %i.jl = or disjoint i8 %i.bv, 8
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i: ; preds = %.lr.ph.i
  %i.jm = zext i8 %i.bw to i64                    ; 2 uses
  %i.jn = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.jm ; 5 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8 ; 2 uses
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !478
  %i.jq = load i32, ptr %i.jn, align 8, !tbaa !476
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 4 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !477
  %i.jt = sub i32 %i.jq, %i.js
  %i.ju = zext i32 %i.jt to i64
  %i.jv = icmp ult i64 %i.jp, %i.ju
  br i1 %i.jv, label %bb.v, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.v:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.jm ; 2 uses
  %i.jx = add nuw i8 %i.bw, 1
  %i.jy = and i8 %i.jx, 7                         ; 5 uses
  %i.jz = zext nneg i8 %i.jy to i64               ; 2 uses
  %i.ka = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.jz ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ka, ptr noundef nonnull align 8 dereferenceable(16) %i.jn, i64 16, i1 false), !tbaa.struct !737
  %i.kb = load i32, ptr %i.ka, align 8, !tbaa !476 ; 2 uses
  store i32 %i.kb, ptr %i.jn, align 8, !tbaa !476
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 4
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !477 ; 2 uses
  %i.ke = sub i32 %i.kb, %i.kd
  %i.kf = lshr i32 %i.ke, 1
  %i.kg = add i32 %i.kf, %i.kd                    ; 2 uses
  store i32 %i.kg, ptr %i.ka, align 8, !tbaa !476
  store i32 %i.kg, ptr %i.jr, align 4, !tbaa !477
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !478
  store i64 %i.ki, ptr %i.jo, align 8, !tbaa !478
  %i.kj = load i8, ptr %i.jw, align 1, !tbaa !437
  %i.kk = add i8 %i.kj, 1                         ; 3 uses
  store i8 %i.kk, ptr %i.jw, align 1, !tbaa !437
  %i.kl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.jz
  store i8 %i.kk, ptr %i.kl, align 1, !tbaa !437
  %i.km = add nuw nsw i8 %i.bv, 1                 ; 3 uses
  %exitcond.not.i = icmp eq i8 %i.km, 8
  br i1 %exitcond.not.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.g, !llvm.loop !27

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit: ; preds = %bb.g, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1, %bb.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2, %bb.k, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3, %bb.m, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4, %bb.o, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5, %bb.q, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6, %bb.s, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7, %bb.u, %.lr.ph.i, %bb.f
  %i.kn = phi i8 [ %i.bv, %bb.f ], [ %i.bv, %.lr.ph.i ], [ %i.bv, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i ], [ %i.km, %bb.g ], [ %i.km, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1 ], [ %i.db, %bb.i ], [ %i.db, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2 ], [ %i.ed, %bb.k ], [ %i.ed, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3 ], [ %i.ff, %bb.m ], [ %i.ff, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4 ], [ %i.gh, %bb.o ], [ %i.gh, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5 ], [ %i.hj, %bb.q ], [ %i.hj, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6 ], [ %i.il, %bb.s ], [ %i.il, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7 ], [ %i.jl, %bb.u ] ; 6 uses
  %i.ko = phi i8 [ %i.bw, %bb.f ], [ %i.bw, %.lr.ph.i ], [ %i.bw, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i ], [ %i.jy, %bb.g ], [ %i.jy, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1 ], [ %i.cn, %bb.i ], [ %i.cn, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2 ], [ %i.dp, %bb.k ], [ %i.dp, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3 ], [ %i.er, %bb.m ], [ %i.er, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4 ], [ %i.ft, %bb.o ], [ %i.ft, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5 ], [ %i.gv, %bb.q ], [ %i.gv, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6 ], [ %i.hx, %bb.s ], [ %i.hx, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7 ], [ %i.eq, %bb.u ] ; 6 uses
  %i.kp = load ptr, ptr %i.bm, align 16, !tbaa !2172
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kr = load atomic i8, ptr %i.kq monotonic, align 1, !range !517, !noundef !774
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %bb.w, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.v
  %.lcssa87 = phi i8 [ %i.jy, %bb.v ], [ %i.cn, %bb.h ], [ %i.dp, %bb.j ], [ %i.er, %bb.l ], [ %i.ft, %bb.n ], [ %i.gv, %bb.p ], [ %i.hx, %bb.r ], [ %i.eq, %bb.t ] ; 2 uses
  %i.kt = load ptr, ptr %i.bm, align 16, !tbaa !2172
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  %i.kv = load atomic i8, ptr %i.ku monotonic, align 1, !range !517, !noundef !774
  %i.kw = trunc nuw i8 %i.kv to i1
  br i1 %i.kw, label %.thread79, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

.thread79:                                        ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread
  %i.kx = add i8 %i.bx, 1
  store i8 %i.kx, ptr %i.i, align 4, !tbaa !750
  br label %.noexc

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %i.ky = phi i8 [ %.lcssa87, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread ], [ %i.ko, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit ] ; 2 uses
  %i.kz = phi i8 [ 8, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread ], [ %i.kn, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit ]
  %.pre = zext i8 %i.ky to i64
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

bb.w:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %i.la = add i8 %i.bx, 1                         ; 2 uses
  store i8 %i.la, ptr %i.i, align 4, !tbaa !750
  %i.lb = icmp ugt i8 %i.kn, 1
  br i1 %i.lb, label %.noexc, label %bb.x

.noexc:                                           ; preds = %.thread79, %bb.w
  %i.lc = phi i8 [ 8, %.thread79 ], [ %i.kn, %bb.w ]
  %i.ld = phi i8 [ %.lcssa87, %.thread79 ], [ %i.ko, %bb.w ]
  %i.le = zext nneg i8 %i.bu to i64               ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.le
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !437
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !736
  %i.lh = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !6249 ; 10 uses
  %i.li = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.le
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.lj, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEEE, i64 16), ptr %i.lh, align 64, !tbaa !412
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.lk, ptr noundef nonnull align 8 dereferenceable(16) %i.li, i64 16, i1 false), !tbaa.struct !737
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ll, ptr noundef nonnull align 16 dereferenceable(32) %i.bp, i64 32, i1 false), !tbaa.struct !2170
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lh, i64 112 ; 2 uses
  store ptr null, ptr %i.lm, align 16, !tbaa !2172
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lh, i64 120
  %i.lo = load i64, ptr %i.bs, align 8, !tbaa !751
  %i.lp = lshr i64 %i.lo, 1                       ; 2 uses
  store i64 %i.lp, ptr %i.bs, align 8, !tbaa !751
  store i64 %i.lp, ptr %i.ln, align 8, !tbaa !751
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lh, i64 128
  store i32 2, ptr %i.lq, align 64, !tbaa !749
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lh, i64 132
  %i.ls = load i8, ptr %i.bt, align 4, !tbaa !750
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lh, i64 136
  %i.lu = load i64, ptr %4, align 8, !tbaa !752
  store i64 %i.lu, ptr %i.lt, align 8, !tbaa !752
  %i.lv = sub i8 %i.ls, %i.lg
  store i8 %i.lv, ptr %i.lr, align 4, !tbaa !750
  %i.lw = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !6249 ; 6 uses
  %i.lx = load ptr, ptr %i.bm, align 16, !tbaa !766
  store ptr %i.lx, ptr %i.lw, align 8, !tbaa !756
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  store i32 2, ptr %i.ly, align 8, !tbaa !757
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.ma = load i64, ptr %4, align 8, !tbaa !752
  store i64 %i.ma, ptr %i.lz, align 8, !tbaa !752
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lw, i64 24
  store i8 0, ptr %i.mb, align 8, !tbaa !768
  store ptr %i.lw, ptr %i.bm, align 16, !tbaa !2172
  store ptr %i.lw, ptr %i.lm, align 16, !tbaa !2172
  %i.mc = load ptr, ptr %3, align 8, !tbaa !769
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(144) %i.lh, ptr noundef nonnull align 8 dereferenceable(128) %i.mc), !inline_history !6249
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.md = add i8 %i.lc, -1
  %i.me = add nuw nsw i8 %i.bu, 1
  %i.mf = and i8 %i.me, 7
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

bb.x:                                             ; preds = %bb.w
  %i.mg = zext i8 %i.ko to i64                    ; 4 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.mg
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !437
  %i.mj = icmp ult i8 %i.mi, %i.la
  br i1 %i.mj, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit: ; preds = %bb.x
  %i.mk = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.mg ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !478
  %i.mn = load i32, ptr %i.mk, align 8, !tbaa !476
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 4
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !477
  %i.mq = sub i32 %i.mn, %i.mp
  %i.mr = zext i32 %i.mq to i64
  %i.ms = icmp ult i64 %i.mm, %i.mr
  br i1 %i.ms, label %thread-pre-split37, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.x, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit
  %i.mt = phi i8 [ %i.ky, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.ko, %bb.x ], [ %i.ko, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.mu = phi i8 [ %i.kz, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.kn, %bb.x ], [ %i.kn, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %.pre-phi = phi i64 [ %.pre, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.mg, %bb.x ], [ %i.mg, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.mv = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %.pre-phi ; 2 uses
  %i.mw = load i32, ptr %i.bn, align 4, !tbaa !604 ; 2 uses
  %i.mx = load i32, ptr %i.bo, align 32, !tbaa !603 ; 2 uses
  %i.my = udiv i32 %i.mw, %i.mx                   ; 4 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mv, i64 4
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !477 ; 3 uses
  %i.nb = load i32, ptr %i.mv, align 8, !tbaa !476 ; 2 uses
  %i.nc = icmp ult i32 %i.na, %i.nb
  br i1 %i.nc, label %.lr.ph25.i.i.i.i.i.i15, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30

.lr.ph25.i.i.i.i.i.i15:                           ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread
  %i.nd = add i32 %i.mx, -1
  %i.ne = load ptr, ptr %i.bp, align 16           ; 5 uses
  %i.nf = load ptr, ptr %i.bq, align 8            ; 5 uses
  %i.ng = load ptr, ptr %i.br, align 8, !tbaa !605
  %7 = mul i32 %i.na, %i.my
  %i.nh = zext i32 %i.na to i64
  %i.ni = zext i32 %i.nd to i64
  %wide.trip.count.i.i.i.i.i.i16 = zext i32 %i.nb to i64
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge.i.i.i.i.i.i20, %.lr.ph25.i.i.i.i.i.i15
  %indvars.iv30.i.i.i.i.i.i17 = phi i64 [ %i.nh, %.lr.ph25.i.i.i.i.i.i15 ], [ %indvars.iv.next31.i.i.i.i.i.i22, %._crit_edge.i.i.i.i.i.i20 ] ; 4 uses
  %indvars.iv.i.i.i.i.i.i18 = phi i32 [ %7, %.lr.ph25.i.i.i.i.i.i15 ], [ %indvars.iv.next.i.i.i.i.i.i23, %._crit_edge.i.i.i.i.i.i20 ] ; 2 uses
  %i.nj = trunc nuw i64 %indvars.iv30.i.i.i.i.i.i17 to i32
  %i.nk = mul i32 %i.my, %i.nj                    ; 2 uses
  %i.nl = icmp eq i64 %indvars.iv30.i.i.i.i.i.i17, %i.ni
  %i.nm = add i32 %i.nk, %i.my
  %spec.select.i.i.i.i.i.i19 = select i1 %i.nl, i32 %i.mw, i32 %i.nm ; 2 uses
  %i.nn = icmp ult i32 %i.nk, %spec.select.i.i.i.i.i.i19
  br i1 %i.nn, label %.lr.ph.preheader.i.i.i.i.i.i25, label %._crit_edge.i.i.i.i.i.i20

.lr.ph.preheader.i.i.i.i.i.i25:                   ; preds = %bb.y
  %i.no = zext i32 %indvars.iv.i.i.i.i.i.i18 to i64 ; 4 uses
  %i.np = zext i32 %spec.select.i.i.i.i.i.i19 to i64 ; 3 uses
  %i.nq = sub nsw i64 %i.np, %i.no
  %xtraiter = and i64 %i.nq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i.i26.prol

.lr.ph.i.i.i.i.i.i26.prol:                        ; preds = %.lr.ph.preheader.i.i.i.i.i.i25, %.lr.ph.i.i.i.i.i.i26.prol
  %indvars.iv27.i.i.i.i.i.i27.prol = phi i64 [ %indvars.iv.next28.i.i.i.i.i.i29.prol, %.lr.ph.i.i.i.i.i.i26.prol ], [ %i.no, %.lr.ph.preheader.i.i.i.i.i.i25 ] ; 3 uses
  %.01921.i.i.i.i.i.i28.prol = phi double [ %i.nv, %.lr.ph.i.i.i.i.i.i26.prol ], [ 0.000000e+00, %.lr.ph.preheader.i.i.i.i.i.i25 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i26.prol ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i25 ]
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %indvars.iv27.i.i.i.i.i.i27.prol
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !501
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %indvars.iv27.i.i.i.i.i.i27.prol
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !501
  %i.nv = call double @llvm.fmuladd.f64(double %i.ns, double %i.nu, double %.01921.i.i.i.i.i.i28.prol) ; 3 uses
  %indvars.iv.next28.i.i.i.i.i.i29.prol = add nuw nsw i64 %indvars.iv27.i.i.i.i.i.i27.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i.i26.prol, !llvm.loop !6250

.lr.ph.i.i.i.i.i.i26.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i26.prol, %.lr.ph.preheader.i.i.i.i.i.i25
  %indvars.iv27.i.i.i.i.i.i27.unr = phi i64 [ %i.no, %.lr.ph.preheader.i.i.i.i.i.i25 ], [ %indvars.iv.next28.i.i.i.i.i.i29.prol, %.lr.ph.i.i.i.i.i.i26.prol ]
  %.01921.i.i.i.i.i.i28.unr = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i.i.i.i.i25 ], [ %i.nv, %.lr.ph.i.i.i.i.i.i26.prol ]
  %.lcssa88.unr = phi double [ poison, %.lr.ph.preheader.i.i.i.i.i.i25 ], [ %i.nv, %.lr.ph.i.i.i.i.i.i26.prol ]
  %i.nw = sub nsw i64 %i.no, %i.np
  %i.nx = icmp ugt i64 %i.nw, -4
  br i1 %i.nx, label %._crit_edge.i.i.i.i.i.i20, label %.lr.ph.i.i.i.i.i.i26

._crit_edge.i.i.i.i.i.i20:                        ; preds = %.lr.ph.i.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i.i26, %bb.y
  %.019.lcssa.i.i.i.i.i.i21 = phi double [ 0.000000e+00, %bb.y ], [ %.lcssa88.unr, %.lr.ph.i.i.i.i.i.i26.prol.loopexit ], [ %i.os, %.lr.ph.i.i.i.i.i.i26 ]
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %indvars.iv30.i.i.i.i.i.i17
  store double %.019.lcssa.i.i.i.i.i.i21, ptr %i.ny, align 8, !tbaa !501
  %indvars.iv.next31.i.i.i.i.i.i22 = add nuw nsw i64 %indvars.iv30.i.i.i.i.i.i17, 1 ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i23 = add i32 %indvars.iv.i.i.i.i.i.i18, %i.my
  %exitcond.not.i.i.i.i.i.i24 = icmp eq i64 %indvars.iv.next31.i.i.i.i.i.i22, %wide.trip.count.i.i.i.i.i.i16
  br i1 %exitcond.not.i.i.i.i.i.i24, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30, label %bb.y, !llvm.loop !6247

.lr.ph.i.i.i.i.i.i26:                             ; preds = %.lr.ph.i.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i.i26
  %indvars.iv27.i.i.i.i.i.i27 = phi i64 [ %indvars.iv.next28.i.i.i.i.i.i29.3, %.lr.ph.i.i.i.i.i.i26 ], [ %indvars.iv27.i.i.i.i.i.i27.unr, %.lr.ph.i.i.i.i.i.i26.prol.loopexit ] ; 6 uses
  %.01921.i.i.i.i.i.i28 = phi double [ %i.os, %.lr.ph.i.i.i.i.i.i26 ], [ %.01921.i.i.i.i.i.i28.unr, %.lr.ph.i.i.i.i.i.i26.prol.loopexit ]
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %indvars.iv27.i.i.i.i.i.i27
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !501
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %indvars.iv27.i.i.i.i.i.i27
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !501
  %i.od = call double @llvm.fmuladd.f64(double %i.oa, double %i.oc, double %.01921.i.i.i.i.i.i28)
  %indvars.iv.next28.i.i.i.i.i.i29 = add nuw nsw i64 %indvars.iv27.i.i.i.i.i.i27, 1 ; 2 uses
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %indvars.iv.next28.i.i.i.i.i.i29
  %i.of = load double, ptr %i.oe, align 8, !tbaa !501
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %indvars.iv.next28.i.i.i.i.i.i29
  %i.oh = load double, ptr %i.og, align 8, !tbaa !501
  %i.oi = call double @llvm.fmuladd.f64(double %i.of, double %i.oh, double %i.od)
  %indvars.iv.next28.i.i.i.i.i.i29.1 = add nuw nsw i64 %indvars.iv27.i.i.i.i.i.i27, 2 ; 2 uses
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %indvars.iv.next28.i.i.i.i.i.i29.1
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !501
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %indvars.iv.next28.i.i.i.i.i.i29.1
  %i.om = load double, ptr %i.ol, align 8, !tbaa !501
  %i.on = call double @llvm.fmuladd.f64(double %i.ok, double %i.om, double %i.oi)
  %indvars.iv.next28.i.i.i.i.i.i29.2 = add nuw nsw i64 %indvars.iv27.i.i.i.i.i.i27, 3 ; 2 uses
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %indvars.iv.next28.i.i.i.i.i.i29.2
  %i.op = load double, ptr %i.oo, align 8, !tbaa !501
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %indvars.iv.next28.i.i.i.i.i.i29.2
  %i.or = load double, ptr %i.oq, align 8, !tbaa !501
  %i.os = call double @llvm.fmuladd.f64(double %i.op, double %i.or, double %i.on) ; 2 uses
  %indvars.iv.next28.i.i.i.i.i.i29.3 = add nuw nsw i64 %indvars.iv27.i.i.i.i.i.i27, 4 ; 2 uses
  %i.ot = icmp samesign ult i64 %indvars.iv.next28.i.i.i.i.i.i29.3, %i.np
  br i1 %i.ot, label %.lr.ph.i.i.i.i.i.i26, label %._crit_edge.i.i.i.i.i.i20, !llvm.loop !6248

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30: ; preds = %._crit_edge.i.i.i.i.i.i20, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread
  %i.ou = add i8 %i.mu, -1
  %i.ov = add nuw i8 %i.mt, 7
  %i.ow = and i8 %i.ov, 7
  br label %thread-pre-split37

thread-pre-split37:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30
  %i.ox = phi i8 [ %i.ou, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30 ], [ %i.kn, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.oy = phi i8 [ %i.ow, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30 ], [ %i.ko, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.oz = icmp eq i8 %i.ox, 0
  br i1 %i.oz, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit36, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %.noexc, %thread-pre-split37
  %i.pa = phi i8 [ %i.mf, %.noexc ], [ %i.bu, %thread-pre-split37 ]
  %i.pb = phi i8 [ %i.md, %.noexc ], [ %i.ox, %thread-pre-split37 ]
  %i.pc = phi i8 [ %i.ld, %.noexc ], [ %i.oy, %thread-pre-split37 ]
  %i.pd = load ptr, ptr %3, align 8, !tbaa !769   ; 3 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 15
  %i.pf = load atomic i8, ptr %i.pe monotonic, align 1
  %i.pg = icmp eq i8 %i.pf, -1
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  %i.pi = load ptr, ptr %i.ph, align 8
  %.0.i.i = select i1 %i.pg, ptr %i.pi, ptr %i.pd
  %i.pj = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.pj, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit36, label %bb.f, !llvm.loop !6251

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit36: ; preds = %thread-pre-split37, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal6CopyOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSB_RSD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !732
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !733
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !437
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !477
  %i.g = load i32, ptr %0, align 8, !tbaa !476
  %.not.i = icmp ult i32 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal6CopyOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSB_RSD_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !736
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 128)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal6CopyOpIdEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !412
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !737
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !2173
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 2 uses
  store ptr null, ptr %i.l, align 32, !tbaa !2175
  %i.m = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store i32 0, ptr %i.p, align 16, !tbaa !749
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 116
  store i8 5, ptr %i.q, align 4, !tbaa !750
  %i.r = shl nsw i64 %i.o, 1
  %i.s = and i64 %i.r, 9223372036854775806
  store i64 %i.s, ptr %i.n, align 8, !tbaa !751
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.u = load i64, ptr %3, align 8, !tbaa !752
  store i64 %i.u, ptr %i.t, align 8, !tbaa !752
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !756
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !757
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.w, align 8, !tbaa !760
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.x, align 8, !tbaa !560
  store ptr %4, ptr %i.l, align 32, !tbaa !2175
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal6CopyOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSB_RSD_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal6CopyOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSB_RSD_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.z = load atomic i8, ptr %i.y monotonic, align 1
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal6CopyOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSB_RSD_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #30
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal6CopyOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSB_RSD_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.ad
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal6CopyOpIdEEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(128) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 64) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal6CopyOpIdEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !764  ; 2 uses
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
  %i.h = load i64, ptr %i.g, align 8, !tbaa !751
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal6CopyOpIdEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 8, !tbaa !751
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
end_hunk_1
