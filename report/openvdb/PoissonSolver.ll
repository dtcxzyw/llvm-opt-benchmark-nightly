Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/PoissonSolver?download=true
inline.NumInlined: 42562
inline.NumDeleted: 14020
loop-unroll.NumCompletelyUnrolled: 147
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 534
begin_hunk_0_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE:bb.a
  %i.q = add i32 %i.p, -1
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.t = atomicrmw sub ptr %i.s, i64 1 seq_cst, align 8
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
define linkonce_odr void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !736
  %i.v = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !6053 ; 12 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.v, align 64, !tbaa !412
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ag, ptr noundef nonnull align 16 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !2128
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 96 ; 2 uses
  store ptr null, ptr %i.ah, align 32, !tbaa !2130
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.aj = load i64, ptr %i.s, align 8, !tbaa !751
  %i.ak = lshr i64 %i.aj, 1                       ; 2 uses
  store i64 %i.ak, ptr %i.s, align 8, !tbaa !751
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !751
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  store i32 2, ptr %i.al, align 16, !tbaa !749
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 116
  %i.an = load i8, ptr %i.t, align 4, !tbaa !750
  store i8 %i.an, ptr %i.am, align 4, !tbaa !750
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.ap = load i64, ptr %4, align 8, !tbaa !752
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !752
  %i.aq = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !6054 ; 6 uses
  %i.ar = load ptr, ptr %i.u, align 32, !tbaa !766
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !756
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 2, ptr %i.as, align 8, !tbaa !757
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.au = load i64, ptr %4, align 8, !tbaa !752
  store i64 %i.au, ptr %i.at, align 8, !tbaa !752
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i8 0, ptr %i.av, align 8, !tbaa !768
  store ptr %i.aq, ptr %i.u, align 32, !tbaa !2130
  store ptr %i.aq, ptr %i.ah, align 32, !tbaa !2130
  %i.aw = load ptr, ptr %3, align 8, !tbaa !769
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(128) %i.v, ptr noundef nonnull align 8 dereferenceable(128) %i.aw), !inline_history !6054
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
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !6055

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
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.k = icmp ult i32 %i.e, %i.c
  br i1 %i.k, label %.lr.ph.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !481 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !573, !noalias !6075 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !574, !noalias !6075
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 7 uses
  %i.s = zext i32 %i.e to i64
  %wide.trip.count.i.i.i.i.i.i = zext i32 %i.c to i64
  %scevgep81 = getelementptr inbounds nuw i8, ptr %1, i64 96
  br label %bb.d

bb.d:                                             ; preds = %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %indvar78 = phi i32 [ %indvar.next79, %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.t = add i32 %i.e, %indvar78
  %i.u = mul i32 %i.t, 7
  %i.v = zext i32 %i.u to i64
  %i.w = mul nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 7
  %i.x = and i64 %i.w, 4294967295
  %i.y = getelementptr [8 x i8], ptr %i.o, i64 %i.x ; 7 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.i.i.i.i.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !410 ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d
  %wide.trip.count.i.i.i.i.i.i.i = zext nneg i32 %i.aa to i64 ; 6 uses
  %min.iters.check86 = icmp ult i32 %i.aa, 4
  br i1 %min.iters.check86, label %scalar.ph85.preheader, label %vector.memcheck77

vector.memcheck77:                                ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ac = add nuw nsw i64 %wide.trip.count.i.i.i.i.i.i.i, %i.v
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %scevgep80 = getelementptr i8, ptr %i.o, i64 %i.ad
  %bound082 = icmp ult ptr %i.y, %scevgep81
  %bound183 = icmp ult ptr %i.r, %scevgep80
  %found.conflict84 = and i1 %bound082, %bound183
  br i1 %found.conflict84, label %scalar.ph85.preheader, label %vector.ph87

vector.ph87:                                      ; preds = %vector.memcheck77
  %n.vec88 = and i64 %wide.trip.count.i.i.i.i.i.i.i, 2147483644 ; 3 uses
  %i.ae = load double, ptr %i.r, align 8, !tbaa !501, !alias.scope !6076
  %broadcast.splatinsert93 = insertelement <2 x double> poison, double %i.ae, i64 0
  %broadcast.splat94 = shufflevector <2 x double> %broadcast.splatinsert93, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph87
  %index90 = phi i64 [ 0, %vector.ph87 ], [ %index.next95, %vector.body89 ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %index90 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %wide.load91 = load <2 x double>, ptr %i.af, align 8, !tbaa !501, !alias.scope !6077, !noalias !6076
  %wide.load92 = load <2 x double>, ptr %i.ag, align 8, !tbaa !501, !alias.scope !6077, !noalias !6076
  %i.ah = fmul <2 x double> %broadcast.splat94, %wide.load91
  %i.ai = fmul <2 x double> %broadcast.splat94, %wide.load92
  store <2 x double> %i.ah, ptr %i.af, align 8, !tbaa !501, !alias.scope !6077, !noalias !6076
  store <2 x double> %i.ai, ptr %i.ag, align 8, !tbaa !501, !alias.scope !6077, !noalias !6076
  %index.next95 = add nuw i64 %index90, 4         ; 2 uses
  %i.aj = icmp eq i64 %index.next95, %n.vec88
  br i1 %i.aj, label %middle.block96, label %vector.body89, !llvm.loop !6061

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
  %i.ak = load double, ptr %i.r, align 8, !tbaa !501
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i.i.i.i.i.i.i.prol ; 2 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !501
  %i.an = fmul double %i.ak, %i.am
  store double %i.an, ptr %i.al, align 8, !tbaa !501
  %indvars.iv.next.i.i.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter102.next = add i64 %prol.iter102, 1   ; 2 uses
  %prol.iter102.cmp.not = icmp eq i64 %prol.iter102.next, %xtraiter100
  br i1 %prol.iter102.cmp.not, label %scalar.ph85.prol.loopexit, label %scalar.ph85.prol, !llvm.loop !6062

scalar.ph85.prol.loopexit:                        ; preds = %scalar.ph85.prol, %scalar.ph85.preheader
  %indvars.iv.i.i.i.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i.i.i.ph, %scalar.ph85.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i.prol, %scalar.ph85.prol ]
  %i.ao = sub nsw i64 %indvars.iv.i.i.i.i.i.i.i.ph, %wide.trip.count.i.i.i.i.i.i.i
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i, label %scalar.ph85

scalar.ph85:                                      ; preds = %scalar.ph85.prol.loopexit, %scalar.ph85
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.3, %scalar.ph85 ], [ %indvars.iv.i.i.i.i.i.i.i.unr, %scalar.ph85.prol.loopexit ] ; 5 uses
  %i.aq = load double, ptr %i.r, align 8, !tbaa !501
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i.i.i.i.i.i.i ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !501
  %i.at = fmul double %i.aq, %i.as
  store double %i.at, ptr %i.ar, align 8, !tbaa !501
  %i.au = load double, ptr %i.r, align 8, !tbaa !501
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !501
  %i.ay = fmul double %i.au, %i.ax
  store double %i.ay, ptr %i.aw, align 8, !tbaa !501
  %i.az = load double, ptr %i.r, align 8, !tbaa !501
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !501
  %i.bd = fmul double %i.az, %i.bc
  store double %i.bd, ptr %i.bb, align 8, !tbaa !501
  %i.be = load double, ptr %i.r, align 8, !tbaa !501
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !501
  %i.bi = fmul double %i.be, %i.bh
  store double %i.bi, ptr %i.bg, align 8, !tbaa !501
  %indvars.iv.next.i.i.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i.3, %wide.trip.count.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i, label %scalar.ph85, !llvm.loop !6063

_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i: ; preds = %scalar.ph85.prol.loopexit, %scalar.ph85, %middle.block96, %bb.d
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i
  %indvar.next79 = add i32 %indvar78, 1
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %bb.d, !llvm.loop !6064

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 20 uses
  store i8 0, ptr %i.bj, align 1, !tbaa !437
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !737
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 7 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 116
  br label %bb.f

bb.f:                                             ; preds = %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i, %bb.e
  %i.bq = phi i8 [ %i.oy, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i ], [ 0, %bb.e ] ; 3 uses
  %i.br = phi i8 [ %i.oz, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i ], [ 1, %bb.e ] ; 13 uses
  %i.bs = phi i8 [ %i.pa, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i ], [ 0, %bb.e ] ; 9 uses
  %i.bt = load i8, ptr %i.i, align 4, !tbaa !750  ; 10 uses
  %i.bu = icmp ult i8 %i.br, 8
  br i1 %i.bu, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.phi.trans.insert.i = zext i8 %i.bs to i64
  %.phi.trans.insert6.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.phi.trans.insert.i
  %.pre.i = load i8, ptr %.phi.trans.insert6.i, align 1, !tbaa !437
  %i.bv = icmp ult i8 %.pre.i, %i.bt
  br i1 %i.bv, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.g:                                             ; preds = %bb.v
  %i.bw = icmp ult i8 %i.kg, %i.bt
  br i1 %i.bw, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1: ; preds = %bb.g
  %i.bx = zext nneg i8 %i.ju to i64               ; 2 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.bx ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !478
  %i.cb = load i32, ptr %i.by, align 8, !tbaa !476
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !477
  %i.ce = sub i32 %i.cb, %i.cd
  %i.cf = zext i32 %i.ce to i64
  %i.cg = icmp ult i64 %i.ca, %i.cf
  br i1 %i.cg, label %bb.h, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.h:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bx ; 2 uses
  %i.ci = add i8 %i.bs, 2
  %i.cj = and i8 %i.ci, 7                         ; 5 uses
  %i.ck = zext nneg i8 %i.cj to i64               ; 2 uses
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.ck ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !737
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !476 ; 2 uses
  store i32 %i.cm, ptr %i.by, align 8, !tbaa !476
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !477 ; 2 uses
  %i.cp = sub i32 %i.cm, %i.co
  %i.cq = lshr i32 %i.cp, 1
  %i.cr = add i32 %i.cq, %i.co                    ; 2 uses
  store i32 %i.cr, ptr %i.cl, align 8, !tbaa !476
  store i32 %i.cr, ptr %i.cc, align 4, !tbaa !477
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !478
  store i64 %i.ct, ptr %i.bz, align 8, !tbaa !478
  %i.cu = load i8, ptr %i.ch, align 1, !tbaa !437
  %i.cv = add i8 %i.cu, 1                         ; 3 uses
  store i8 %i.cv, ptr %i.ch, align 1, !tbaa !437
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ck
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !437
  %i.cx = add nuw nsw i8 %i.br, 2                 ; 3 uses
  %exitcond.not.i.1 = icmp eq i8 %i.cx, 8
  br i1 %exitcond.not.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.i, !llvm.loop !27

bb.i:                                             ; preds = %bb.h
  %i.cy = icmp ult i8 %i.cv, %i.bt
  br i1 %i.cy, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2: ; preds = %bb.i
  %i.cz = zext nneg i8 %i.cj to i64               ; 2 uses
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.cz ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !478
  %i.dd = load i32, ptr %i.da, align 8, !tbaa !476
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !477
  %i.dg = sub i32 %i.dd, %i.df
  %i.dh = zext i32 %i.dg to i64
  %i.di = icmp ult i64 %i.dc, %i.dh
  br i1 %i.di, label %bb.j, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cz ; 2 uses
  %i.dk = add i8 %i.bs, 3
  %i.dl = and i8 %i.dk, 7                         ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.iv = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.iu ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iv, ptr noundef nonnull align 8 dereferenceable(16) %i.ik, i64 16, i1 false), !tbaa.struct !737
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !476 ; 2 uses
  store i32 %i.iw, ptr %i.ik, align 8, !tbaa !476
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !477 ; 2 uses
  %i.iz = sub i32 %i.iw, %i.iy
  %i.ja = lshr i32 %i.iz, 1
  %i.jb = add i32 %i.ja, %i.iy                    ; 2 uses
  store i32 %i.jb, ptr %i.iv, align 8, !tbaa !476
  store i32 %i.jb, ptr %i.io, align 4, !tbaa !477
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !478
  store i64 %i.jd, ptr %i.il, align 8, !tbaa !478
  %i.je = load i8, ptr %i.it, align 1, !tbaa !437
  %i.jf = add i8 %i.je, 1                         ; 2 uses
  store i8 %i.jf, ptr %i.it, align 1, !tbaa !437
  %i.jg = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.iu
  store i8 %i.jf, ptr %i.jg, align 1, !tbaa !437
  %exitcond.not.i.7 = icmp eq i8 %i.br, 0
  br i1 %exitcond.not.i.7, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.u, !llvm.loop !27

bb.u:                                             ; preds = %bb.t
  %i.jh = or disjoint i8 %i.br, 8
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i: ; preds = %.lr.ph.i
  %i.ji = zext i8 %i.bs to i64                    ; 2 uses
  %i.jj = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.ji ; 5 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8 ; 2 uses
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !478
  %i.jm = load i32, ptr %i.jj, align 8, !tbaa !476
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 4 ; 2 uses
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !477
  %i.jp = sub i32 %i.jm, %i.jo
  %i.jq = zext i32 %i.jp to i64
  %i.jr = icmp ult i64 %i.jl, %i.jq
  br i1 %i.jr, label %bb.v, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.v:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ji ; 2 uses
  %i.jt = add nuw i8 %i.bs, 1
  %i.ju = and i8 %i.jt, 7                         ; 5 uses
  %i.jv = zext nneg i8 %i.ju to i64               ; 2 uses
  %i.jw = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.jv ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jw, ptr noundef nonnull align 8 dereferenceable(16) %i.jj, i64 16, i1 false), !tbaa.struct !737
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !476 ; 2 uses
  store i32 %i.jx, ptr %i.jj, align 8, !tbaa !476
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !477 ; 2 uses
  %i.ka = sub i32 %i.jx, %i.jz
  %i.kb = lshr i32 %i.ka, 1
  %i.kc = add i32 %i.kb, %i.jz                    ; 2 uses
  store i32 %i.kc, ptr %i.jw, align 8, !tbaa !476
  store i32 %i.kc, ptr %i.jn, align 4, !tbaa !477
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !478
  store i64 %i.ke, ptr %i.jk, align 8, !tbaa !478
  %i.kf = load i8, ptr %i.js, align 1, !tbaa !437
  %i.kg = add i8 %i.kf, 1                         ; 3 uses
  store i8 %i.kg, ptr %i.js, align 1, !tbaa !437
  %i.kh = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.jv
  store i8 %i.kg, ptr %i.kh, align 1, !tbaa !437
  %i.ki = add nuw nsw i8 %i.br, 1                 ; 3 uses
  %exitcond.not.i = icmp eq i8 %i.ki, 8
  br i1 %exitcond.not.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.g, !llvm.loop !27

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit: ; preds = %bb.g, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1, %bb.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2, %bb.k, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3, %bb.m, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4, %bb.o, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5, %bb.q, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6, %bb.s, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7, %bb.u, %.lr.ph.i, %bb.f
  %i.kj = phi i8 [ %i.br, %bb.f ], [ %i.br, %.lr.ph.i ], [ %i.br, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i ], [ %i.ki, %bb.g ], [ %i.ki, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1 ], [ %i.cx, %bb.i ], [ %i.cx, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2 ], [ %i.dz, %bb.k ], [ %i.dz, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3 ], [ %i.fb, %bb.m ], [ %i.fb, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4 ], [ %i.gd, %bb.o ], [ %i.gd, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5 ], [ %i.hf, %bb.q ], [ %i.hf, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6 ], [ %i.ih, %bb.s ], [ %i.ih, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7 ], [ %i.jh, %bb.u ] ; 6 uses
  %i.kk = phi i8 [ %i.bs, %bb.f ], [ %i.bs, %.lr.ph.i ], [ %i.bs, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i ], [ %i.ju, %bb.g ], [ %i.ju, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1 ], [ %i.cj, %bb.i ], [ %i.cj, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2 ], [ %i.dl, %bb.k ], [ %i.dl, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3 ], [ %i.en, %bb.m ], [ %i.en, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4 ], [ %i.fp, %bb.o ], [ %i.fp, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5 ], [ %i.gr, %bb.q ], [ %i.gr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6 ], [ %i.ht, %bb.s ], [ %i.ht, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7 ], [ %i.em, %bb.u ] ; 6 uses
  %i.kl = load ptr, ptr %i.bl, align 32, !tbaa !2130
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  %i.kn = load atomic i8, ptr %i.km monotonic, align 1, !range !517, !noundef !774
  %i.ko = trunc nuw i8 %i.kn to i1
  br i1 %i.ko, label %bb.w, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.v
  %.lcssa = phi i8 [ %i.ju, %bb.v ], [ %i.cj, %bb.h ], [ %i.dl, %bb.j ], [ %i.en, %bb.l ], [ %i.fp, %bb.n ], [ %i.gr, %bb.p ], [ %i.ht, %bb.r ], [ %i.em, %bb.t ] ; 2 uses
  %i.kp = load ptr, ptr %i.bl, align 32, !tbaa !2130
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kr = load atomic i8, ptr %i.kq monotonic, align 1, !range !517, !noundef !774
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %.thread73, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

.thread73:                                        ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread
  %i.kt = add i8 %i.bt, 1
  store i8 %i.kt, ptr %i.i, align 4, !tbaa !750
  br label %.noexc

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %i.ku = phi i8 [ %.lcssa, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread ], [ %i.kk, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit ] ; 2 uses
  %i.kv = phi i8 [ 8, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread ], [ %i.kj, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit ]
  %.pre = zext i8 %i.ku to i64
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

bb.w:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %i.kw = add i8 %i.bt, 1                         ; 2 uses
  store i8 %i.kw, ptr %i.i, align 4, !tbaa !750
  %i.kx = icmp ugt i8 %i.kj, 1
  br i1 %i.kx, label %.noexc, label %bb.x

.noexc:                                           ; preds = %.thread73, %bb.w
  %i.ky = phi i8 [ 8, %.thread73 ], [ %i.kj, %bb.w ]
  %i.kz = phi i8 [ %.lcssa, %.thread73 ], [ %i.kk, %bb.w ]
  %i.la = zext nneg i8 %i.bq to i64               ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.la
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !437
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !736
  %i.ld = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !6065 ; 10 uses
  %i.le = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.la
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.lf, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.ld, align 64, !tbaa !412
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.lg, ptr noundef nonnull align 8 dereferenceable(16) %i.le, i64 16, i1 false), !tbaa.struct !737
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.lh, ptr noundef nonnull align 16 dereferenceable(16) %i.bm, i64 16, i1 false), !tbaa.struct !2128
  %i.li = getelementptr inbounds nuw i8, ptr %i.ld, i64 96 ; 2 uses
  store ptr null, ptr %i.li, align 32, !tbaa !2130
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ld, i64 104
  %i.lk = load i64, ptr %i.bo, align 8, !tbaa !751
  %i.ll = lshr i64 %i.lk, 1                       ; 2 uses
  store i64 %i.ll, ptr %i.bo, align 8, !tbaa !751
  store i64 %i.ll, ptr %i.lj, align 8, !tbaa !751
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ld, i64 112
  store i32 2, ptr %i.lm, align 16, !tbaa !749
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ld, i64 116
  %i.lo = load i8, ptr %i.bp, align 4, !tbaa !750
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ld, i64 120
  %i.lq = load i64, ptr %4, align 8, !tbaa !752
  store i64 %i.lq, ptr %i.lp, align 8, !tbaa !752
  %i.lr = sub i8 %i.lo, %i.lc
  store i8 %i.lr, ptr %i.ln, align 4, !tbaa !750
  %i.ls = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !6065 ; 6 uses
  %i.lt = load ptr, ptr %i.bl, align 32, !tbaa !766
  store ptr %i.lt, ptr %i.ls, align 8, !tbaa !756
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store i32 2, ptr %i.lu, align 8, !tbaa !757
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.lw = load i64, ptr %4, align 8, !tbaa !752
  store i64 %i.lw, ptr %i.lv, align 8, !tbaa !752
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ls, i64 24
  store i8 0, ptr %i.lx, align 8, !tbaa !768
  store ptr %i.ls, ptr %i.bl, align 32, !tbaa !2130
  store ptr %i.ls, ptr %i.li, align 32, !tbaa !2130
  %i.ly = load ptr, ptr %3, align 8, !tbaa !769
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(128) %i.ld, ptr noundef nonnull align 8 dereferenceable(128) %i.ly), !inline_history !6065
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.lz = add i8 %i.ky, -1
  %i.ma = add nuw nsw i8 %i.bq, 1
  %i.mb = and i8 %i.ma, 7
  br label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.mc = zext i8 %i.kk to i64                    ; 4 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.mc
  %i.me = load i8, ptr %i.md, align 1, !tbaa !437
  %i.mf = icmp ult i8 %i.me, %i.kw
  br i1 %i.mf, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit: ; preds = %bb.x
  %i.mg = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.mc ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !478
  %i.mj = load i32, ptr %i.mg, align 8, !tbaa !476
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mg, i64 4
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !477
  %i.mm = sub i32 %i.mj, %i.ml
  %i.mn = zext i32 %i.mm to i64
  %i.mo = icmp ult i64 %i.mi, %i.mn
  br i1 %i.mo, label %thread-pre-split33, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.x, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit
  %i.mp = phi i8 [ %i.ku, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.kk, %bb.x ], [ %i.kk, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.mq = phi i8 [ %i.kv, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.kj, %bb.x ], [ %i.kj, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %.pre-phi = phi i64 [ %.pre, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.mc, %bb.x ], [ %i.mc, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.mr = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %.pre-phi ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !477 ; 3 uses
  %i.mu = load i32, ptr %i.mr, align 8, !tbaa !476 ; 2 uses
  %i.mv = icmp ult i32 %i.mt, %i.mu
  br i1 %i.mv, label %.lr.ph.i.i.i.i.i.i15, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit26

.lr.ph.i.i.i.i.i.i15:                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread
  %i.mw = load ptr, ptr %i.bm, align 16, !tbaa !481 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !573, !noalias !6078 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !574, !noalias !6078
  %i.nb = zext i32 %i.mt to i64
  %wide.trip.count.i.i.i.i.i.i16 = zext i32 %i.mu to i64
  br label %bb.y

bb.y:                                             ; preds = %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18, %.lr.ph.i.i.i.i.i.i15
  %indvar = phi i32 [ %indvar.next, %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18 ], [ 0, %.lr.ph.i.i.i.i.i.i15 ] ; 2 uses
  %indvars.iv.i.i.i.i.i.i17 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i19, %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18 ], [ %i.nb, %.lr.ph.i.i.i.i.i.i15 ] ; 3 uses
  %i.nc = add i32 %i.mt, %indvar
  %i.nd = mul i32 %i.nc, 7
  %i.ne = zext i32 %i.nd to i64
  %i.nf = mul nuw nsw i64 %indvars.iv.i.i.i.i.i.i17, 7
  %i.ng = and i64 %i.nf, 4294967295
  %i.nh = getelementptr [8 x i8], ptr %i.my, i64 %i.ng ; 7 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %indvars.iv.i.i.i.i.i.i17
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !410 ; 3 uses
  %i.nk = icmp sgt i32 %i.nj, 0
  br i1 %i.nk, label %.lr.ph.i.i.i.i.i.i.i21, label %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18

.lr.ph.i.i.i.i.i.i.i21:                           ; preds = %bb.y
  %wide.trip.count.i.i.i.i.i.i.i22 = zext nneg i32 %i.nj to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.nj, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i21
  %i.nl = add nuw nsw i64 %wide.trip.count.i.i.i.i.i.i.i22, %i.ne
  %i.nm = shl nuw nsw i64 %i.nl, 3
  %scevgep = getelementptr i8, ptr %i.my, i64 %i.nm
  %bound0 = icmp ult ptr %i.nh, %i.bl
  %bound1 = icmp ult ptr %i.bn, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i.i.i.i.i.i22, 2147483644 ; 3 uses
  %i.nn = load double, ptr %i.bn, align 8, !tbaa !501, !alias.scope !6079
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.nn, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %index ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.no, align 8, !tbaa !501, !alias.scope !6080, !noalias !6079
  %wide.load76 = load <2 x double>, ptr %i.np, align 8, !tbaa !501, !alias.scope !6080, !noalias !6079
  %i.nq = fmul <2 x double> %broadcast.splat, %wide.load
  %i.nr = fmul <2 x double> %broadcast.splat, %wide.load76
  store <2 x double> %i.nq, ptr %i.no, align 8, !tbaa !501, !alias.scope !6080, !noalias !6079
  store <2 x double> %i.nr, ptr %i.np, align 8, !tbaa !501, !alias.scope !6080, !noalias !6079
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ns = icmp eq i64 %index.next, %n.vec
  br i1 %i.ns, label %middle.block, label %vector.body, !llvm.loop !6071

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
  %i.nt = load double, ptr %i.bn, align 8, !tbaa !501
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %indvars.iv.i.i.i.i.i.i.i23.prol ; 2 uses
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !501
  %i.nw = fmul double %i.nt, %i.nv
  store double %i.nw, ptr %i.nu, align 8, !tbaa !501
  %indvars.iv.next.i.i.i.i.i.i.i24.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i23.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !6072

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.i.i.i.i23.unr = phi i64 [ %indvars.iv.i.i.i.i.i.i.i23.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i24.prol, %scalar.ph.prol ]
  %i.nx = sub nsw i64 %indvars.iv.i.i.i.i.i.i.i23.ph, %wide.trip.count.i.i.i.i.i.i.i22
  %i.ny = icmp ugt i64 %i.nx, -4
  br i1 %i.ny, label %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i.i.i.i.i23 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i24.3, %scalar.ph ], [ %indvars.iv.i.i.i.i.i.i.i23.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.nz = load double, ptr %i.bn, align 8, !tbaa !501
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %indvars.iv.i.i.i.i.i.i.i23 ; 2 uses
  %i.ob = load double, ptr %i.oa, align 8, !tbaa !501
  %i.oc = fmul double %i.nz, %i.ob
  store double %i.oc, ptr %i.oa, align 8, !tbaa !501
  %i.od = load double, ptr %i.bn, align 8, !tbaa !501
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %indvars.iv.i.i.i.i.i.i.i23
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 8 ; 2 uses
  %i.og = load double, ptr %i.of, align 8, !tbaa !501
  %i.oh = fmul double %i.od, %i.og
  store double %i.oh, ptr %i.of, align 8, !tbaa !501
  %i.oi = load double, ptr %i.bn, align 8, !tbaa !501
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %indvars.iv.i.i.i.i.i.i.i23
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 16 ; 2 uses
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !501
  %i.om = fmul double %i.oi, %i.ol
  store double %i.om, ptr %i.ok, align 8, !tbaa !501
  %i.on = load double, ptr %i.bn, align 8, !tbaa !501
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %indvars.iv.i.i.i.i.i.i.i23
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 24 ; 2 uses
  %i.oq = load double, ptr %i.op, align 8, !tbaa !501
  %i.or = fmul double %i.on, %i.oq
  store double %i.or, ptr %i.op, align 8, !tbaa !501
  %indvars.iv.next.i.i.i.i.i.i.i24.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i23, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i25.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i24.3, %wide.trip.count.i.i.i.i.i.i.i22
  br i1 %exitcond.not.i.i.i.i.i.i.i25.3, label %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18, label %scalar.ph, !llvm.loop !6073

_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.y
  %indvars.iv.next.i.i.i.i.i.i19 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i17, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i20 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i19, %wide.trip.count.i.i.i.i.i.i16
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond.not.i.i.i.i.i.i20, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit26, label %bb.y, !llvm.loop !6064

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit26: ; preds = %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread
  %i.os = add i8 %i.mq, -1
  %i.ot = add nuw i8 %i.mp, 7
  %i.ou = and i8 %i.ot, 7
  br label %thread-pre-split33

thread-pre-split33:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit26
  %i.ov = phi i8 [ %i.os, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit26 ], [ %i.kj, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.ow = phi i8 [ %i.ou, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit26 ], [ %i.kk, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.ox = icmp eq i8 %i.ov, 0
  br i1 %i.ox, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit32, label %bb.z

bb.z:                                             ; preds = %.noexc, %thread-pre-split33
  %i.oy = phi i8 [ %i.mb, %.noexc ], [ %i.bq, %thread-pre-split33 ]
  %i.oz = phi i8 [ %i.lz, %.noexc ], [ %i.ov, %thread-pre-split33 ]
  %i.pa = phi i8 [ %i.kz, %.noexc ], [ %i.ow, %thread-pre-split33 ]
  %i.pb = load ptr, ptr %3, align 8, !tbaa !769   ; 3 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 15
  %i.pd = load atomic i8, ptr %i.pc monotonic, align 1
  %i.pe = icmp eq i8 %i.pd, -1
  br i1 %i.pe, label %bb.aa, label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !437
  br label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i: ; preds = %bb.aa, %bb.z
  %.0.i.i = phi ptr [ %i.pg, %bb.aa ], [ %i.pb, %bb.z ]
  %i.ph = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.ph, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit32, label %bb.f, !llvm.loop !6074

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit32: ; preds = %thread-pre-split33, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSC_RSE_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSC_RSE_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !736
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 128)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !412
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !737
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !2131
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 2 uses
  store ptr null, ptr %i.l, align 32, !tbaa !2133
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
end_hunk_1
begin_hunk_2_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE:bb.a
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
define linkonce_odr void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINSC_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !736
  %i.v = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !6156 ; 12 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEEE, i64 16), ptr %i.v, align 64, !tbaa !412
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ag, ptr noundef nonnull align 16 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !2149
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 96 ; 2 uses
  store ptr null, ptr %i.ah, align 32, !tbaa !2151
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.aj = load i64, ptr %i.s, align 8, !tbaa !751
  %i.ak = lshr i64 %i.aj, 1                       ; 2 uses
  store i64 %i.ak, ptr %i.s, align 8, !tbaa !751
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !751
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  store i32 2, ptr %i.al, align 16, !tbaa !749
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 116
  %i.an = load i8, ptr %i.t, align 4, !tbaa !750
  store i8 %i.an, ptr %i.am, align 4, !tbaa !750
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.ap = load i64, ptr %4, align 8, !tbaa !752
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !752
  %i.aq = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !6157 ; 6 uses
  %i.ar = load ptr, ptr %i.u, align 32, !tbaa !766
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !756
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 2, ptr %i.as, align 8, !tbaa !757
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.au = load i64, ptr %4, align 8, !tbaa !752
  store i64 %i.au, ptr %i.at, align 8, !tbaa !752
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i8 0, ptr %i.av, align 8, !tbaa !768
  store ptr %i.aq, ptr %i.u, align 32, !tbaa !2151
  store ptr %i.aq, ptr %i.ah, align 32, !tbaa !2151
  %i.aw = load ptr, ptr %3, align 8, !tbaa !769
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(128) %i.v, ptr noundef nonnull align 8 dereferenceable(128) %i.aw), !inline_history !6157
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
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !6158

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
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINSE_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINSE_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::range_vector", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !478
  %i.c = load i32, ptr %2, align 8, !tbaa !476    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !477  ; 3 uses
  %i.f = sub i32 %i.c, %i.e
  %i.g = zext i32 %i.f to i64
  %i.h = icmp ult i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.j = load i8, ptr %i.i, align 4, !tbaa !750
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = icmp ult i32 %i.e, %i.c
  br i1 %i.k, label %.lr.ph.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !499 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !573, !noalias !6166
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !574, !noalias !6166
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !574, !noalias !6166
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !500
  %i.v = zext i32 %i.e to i64
  %wide.trip.count.i.i.i.i.i.i = zext i32 %i.c to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE8getValueEjj.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE8getValueEjj.exit.i.i.i.i.i.i ] ; 6 uses
  %i.w = mul nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 7
  %i.x = and i64 %i.w, 4294967295                 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.x
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.x ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i.i.i.i.i.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !410 ; 3 uses
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
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !410
  %i.ah = zext i32 %i.ag to i64
  %i.ai = icmp samesign ugt i64 %indvars.iv.i.i.i.i.i.i, %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ak = xor i64 %i.ae, -1
  %i.al = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i, %i.ak
  %.112.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ai, ptr %i.aj, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ai, i64 %i.al, i64 %i.ae ; 2 uses
  %i.am = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.am, label %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt11lower_boundIPKjjET_S2_S2_RKT0_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !12

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
  %i.av = load i32, ptr %i.au, align 4, !tbaa !410
  %i.aw = zext i32 %i.av to i64
  %i.ax = icmp eq i64 %indvars.iv.i.i.i.i.i.i, %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.at
  %spec.select.i.i.i.i.i.i.i = select i1 %i.ax, ptr %i.ay, ptr @_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10sZeroValueE
  br label %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE8getValueEjj.exit.i.i.i.i.i.i

_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE8getValueEjj.exit.i.i.i.i.i.i: ; preds = %bb.f, %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE4findEj.exit.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi ptr [ @_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10sZeroValueE, %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE4findEj.exit.i.i.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i.i, %bb.f ]
  %i.az = load double, ptr %.0.i.i.i.i.i.i.i.i, align 8, !tbaa !501
  %i.ba = fdiv double 1.000000e+00, %i.az
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i.i.i.i.i.i
  store double %i.ba, ptr %i.bb, align 8, !tbaa !501
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %bb.d, !llvm.loop !6161

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 20 uses
  store i8 0, ptr %i.bc, align 1, !tbaa !437
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !737
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
  %i.bm = load i8, ptr %i.i, align 4, !tbaa !750  ; 10 uses
  %i.bn = icmp ult i8 %i.bk, 8
  br i1 %i.bn, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.h
  %.phi.trans.insert.i = zext i8 %i.bl to i64
  %.phi.trans.insert6.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.phi.trans.insert.i
  %.pre.i = load i8, ptr %.phi.trans.insert6.i, align 1, !tbaa !437
  %i.bo = icmp ult i8 %.pre.i, %i.bm
  br i1 %i.bo, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.i:                                             ; preds = %bb.x
  %i.bp = icmp ult i8 %i.jz, %i.bm
  br i1 %i.bp, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1: ; preds = %bb.i
  %i.bq = zext nneg i8 %i.jn to i64               ; 2 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bq ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !478
  %i.bu = load i32, ptr %i.br, align 8, !tbaa !476
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 4 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !477
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !tbaa.struct !737
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !476 ; 2 uses
  store i32 %i.cf, ptr %i.br, align 8, !tbaa !476
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !477 ; 2 uses
  %i.ci = sub i32 %i.cf, %i.ch
  %i.cj = lshr i32 %i.ci, 1
  %i.ck = add i32 %i.cj, %i.ch                    ; 2 uses
  store i32 %i.ck, ptr %i.ce, align 8, !tbaa !476
  store i32 %i.ck, ptr %i.bv, align 4, !tbaa !477
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !478
  store i64 %i.cm, ptr %i.bs, align 8, !tbaa !478
  %i.cn = load i8, ptr %i.ca, align 1, !tbaa !437
  %i.co = add i8 %i.cn, 1                         ; 3 uses
  store i8 %i.co, ptr %i.ca, align 1, !tbaa !437
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.cd
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !437
  %i.cq = add nuw nsw i8 %i.bk, 2                 ; 3 uses
  %exitcond.not.i.1 = icmp eq i8 %i.cq, 8
  br i1 %exitcond.not.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.k, !llvm.loop !27

bb.k:                                             ; preds = %bb.j
  %i.cr = icmp ult i8 %i.co, %i.bm
  br i1 %i.cr, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2: ; preds = %bb.k
  %i.cs = zext nneg i8 %i.cc to i64               ; 2 uses
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.cs ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !478
  %i.cw = load i32, ptr %i.ct, align 8, !tbaa !476
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 4 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !477
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i64 16, i1 false), !tbaa.struct !737
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !476 ; 2 uses
  store i32 %i.dh, ptr %i.ct, align 8, !tbaa !476
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !477 ; 2 uses
  %i.dk = sub i32 %i.dh, %i.dj
  %i.dl = lshr i32 %i.dk, 1
  %i.dm = add i32 %i.dl, %i.dj                    ; 2 uses
  store i32 %i.dm, ptr %i.dg, align 8, !tbaa !476
  store i32 %i.dm, ptr %i.cx, align 4, !tbaa !477
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !478
  store i64 %i.do, ptr %i.cu, align 8, !tbaa !478
  %i.dp = load i8, ptr %i.dc, align 1, !tbaa !437
  %i.dq = add i8 %i.dp, 1                         ; 3 uses
  store i8 %i.dq, ptr %i.dc, align 1, !tbaa !437
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.df
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !437
  %i.ds = add nuw nsw i8 %i.bk, 3                 ; 3 uses
  %exitcond.not.i.2 = icmp eq i8 %i.ds, 8
  br i1 %exitcond.not.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.m, !llvm.loop !27

bb.m:                                             ; preds = %bb.l
  %i.dt = icmp ult i8 %i.dq, %i.bm
  br i1 %i.dt, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3: ; preds = %bb.m
  %i.du = zext nneg i8 %i.de to i64               ; 2 uses
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.du ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !478
  %i.dy = load i32, ptr %i.dv, align 8, !tbaa !476
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 4 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !477
  %i.eb = sub i32 %i.dy, %i.ea
  %i.ec = zext i32 %i.eb to i64
  %i.ed = icmp ult i64 %i.dx, %i.ec
  br i1 %i.ed, label %bb.n, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.n:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.du ; 2 uses
  %i.ef = and i8 %i.bl, 7                         ; 4 uses
  %i.eg = xor i8 %i.ef, 4                         ; 8 uses
end_hunk_2
begin_hunk_3_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINSE_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.in = zext nneg i8 %i.ef to i64               ; 2 uses
  %i.io = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.in ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.io, ptr noundef nonnull align 8 dereferenceable(16) %i.id, i64 16, i1 false), !tbaa.struct !737
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !476 ; 2 uses
  store i32 %i.ip, ptr %i.id, align 8, !tbaa !476
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !477 ; 2 uses
  %i.is = sub i32 %i.ip, %i.ir
  %i.it = lshr i32 %i.is, 1
  %i.iu = add i32 %i.it, %i.ir                    ; 2 uses
  store i32 %i.iu, ptr %i.io, align 8, !tbaa !476
  store i32 %i.iu, ptr %i.ih, align 4, !tbaa !477
  %i.iv = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !478
  store i64 %i.iw, ptr %i.ie, align 8, !tbaa !478
  %i.ix = load i8, ptr %i.im, align 1, !tbaa !437
  %i.iy = add i8 %i.ix, 1                         ; 2 uses
  store i8 %i.iy, ptr %i.im, align 1, !tbaa !437
  %i.iz = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.in
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !437
  %exitcond.not.i.7 = icmp eq i8 %i.bk, 0
  br i1 %exitcond.not.i.7, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.w, !llvm.loop !27

bb.w:                                             ; preds = %bb.v
  %i.ja = or disjoint i8 %i.bk, 8
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i: ; preds = %.lr.ph.i
  %i.jb = zext i8 %i.bl to i64                    ; 2 uses
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.jb ; 5 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8 ; 2 uses
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !478
  %i.jf = load i32, ptr %i.jc, align 8, !tbaa !476
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 4 ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !477
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jp, ptr noundef nonnull align 8 dereferenceable(16) %i.jc, i64 16, i1 false), !tbaa.struct !737
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !476 ; 2 uses
  store i32 %i.jq, ptr %i.jc, align 8, !tbaa !476
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !477 ; 2 uses
  %i.jt = sub i32 %i.jq, %i.js
  %i.ju = lshr i32 %i.jt, 1
  %i.jv = add i32 %i.ju, %i.js                    ; 2 uses
  store i32 %i.jv, ptr %i.jp, align 8, !tbaa !476
  store i32 %i.jv, ptr %i.jg, align 4, !tbaa !477
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !478
  store i64 %i.jx, ptr %i.jd, align 8, !tbaa !478
  %i.jy = load i8, ptr %i.jl, align 1, !tbaa !437
  %i.jz = add i8 %i.jy, 1                         ; 3 uses
  store i8 %i.jz, ptr %i.jl, align 1, !tbaa !437
  %i.ka = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.jo
  store i8 %i.jz, ptr %i.ka, align 1, !tbaa !437
  %i.kb = add nuw nsw i8 %i.bk, 1                 ; 3 uses
  %exitcond.not.i = icmp eq i8 %i.kb, 8
  br i1 %exitcond.not.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.i, !llvm.loop !27

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit: ; preds = %bb.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1, %bb.k, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2, %bb.m, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3, %bb.o, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4, %bb.q, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5, %bb.s, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6, %bb.u, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7, %bb.w, %.lr.ph.i, %bb.h
  %i.kc = phi i8 [ %i.bk, %bb.h ], [ %i.bk, %.lr.ph.i ], [ %i.bk, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i ], [ %i.kb, %bb.i ], [ %i.kb, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1 ], [ %i.cq, %bb.k ], [ %i.cq, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2 ], [ %i.ds, %bb.m ], [ %i.ds, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3 ], [ %i.eu, %bb.o ], [ %i.eu, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4 ], [ %i.fw, %bb.q ], [ %i.fw, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5 ], [ %i.gy, %bb.s ], [ %i.gy, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6 ], [ %i.ia, %bb.u ], [ %i.ia, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7 ], [ %i.ja, %bb.w ] ; 6 uses
  %i.kd = phi i8 [ %i.bl, %bb.h ], [ %i.bl, %.lr.ph.i ], [ %i.bl, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i ], [ %i.jn, %bb.i ], [ %i.jn, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1 ], [ %i.cc, %bb.k ], [ %i.cc, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2 ], [ %i.de, %bb.m ], [ %i.de, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3 ], [ %i.eg, %bb.o ], [ %i.eg, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4 ], [ %i.fi, %bb.q ], [ %i.fi, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5 ], [ %i.gk, %bb.s ], [ %i.gk, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6 ], [ %i.hm, %bb.u ], [ %i.hm, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7 ], [ %i.ef, %bb.w ] ; 6 uses
  %i.ke = load ptr, ptr %i.be, align 32, !tbaa !2151
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %i.kg = load atomic i8, ptr %i.kf monotonic, align 1, !range !517, !noundef !774
  %i.kh = trunc nuw i8 %i.kg to i1
  br i1 %i.kh, label %bb.y, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.x
  %.lcssa = phi i8 [ %i.jn, %bb.x ], [ %i.cc, %bb.j ], [ %i.de, %bb.l ], [ %i.eg, %bb.n ], [ %i.fi, %bb.p ], [ %i.gk, %bb.r ], [ %i.hm, %bb.t ], [ %i.ef, %bb.v ] ; 2 uses
  %i.ki = load ptr, ptr %i.be, align 32, !tbaa !2151
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  %i.kk = load atomic i8, ptr %i.kj monotonic, align 1, !range !517, !noundef !774
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %.thread80, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

.thread80:                                        ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread
  %i.km = add i8 %i.bm, 1
  store i8 %i.km, ptr %i.i, align 4, !tbaa !750
  br label %.noexc

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %i.kn = phi i8 [ %.lcssa, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread ], [ %i.kd, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit ] ; 2 uses
  %i.ko = phi i8 [ 8, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread ], [ %i.kc, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit ]
  %.pre = zext i8 %i.kn to i64
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

bb.y:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %i.kp = add i8 %i.bm, 1                         ; 2 uses
  store i8 %i.kp, ptr %i.i, align 4, !tbaa !750
  %i.kq = icmp ugt i8 %i.kc, 1
  br i1 %i.kq, label %.noexc, label %bb.z

.noexc:                                           ; preds = %.thread80, %bb.y
  %i.kr = phi i8 [ 8, %.thread80 ], [ %i.kc, %bb.y ]
  %i.ks = phi i8 [ %.lcssa, %.thread80 ], [ %i.kd, %bb.y ]
  %i.kt = zext nneg i8 %i.bj to i64               ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.kt
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !437
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !736
  %i.kw = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !6162 ; 10 uses
  %i.kx = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.kt
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ky, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEEE, i64 16), ptr %i.kw, align 64, !tbaa !412
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.kz, ptr noundef nonnull align 8 dereferenceable(16) %i.kx, i64 16, i1 false), !tbaa.struct !737
  %i.la = getelementptr inbounds nuw i8, ptr %i.kw, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.la, ptr noundef nonnull align 16 dereferenceable(16) %i.bf, i64 16, i1 false), !tbaa.struct !2149
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kw, i64 96 ; 2 uses
  store ptr null, ptr %i.lb, align 32, !tbaa !2151
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kw, i64 104
  %i.ld = load i64, ptr %i.bh, align 8, !tbaa !751
  %i.le = lshr i64 %i.ld, 1                       ; 2 uses
  store i64 %i.le, ptr %i.bh, align 8, !tbaa !751
  store i64 %i.le, ptr %i.lc, align 8, !tbaa !751
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kw, i64 112
  store i32 2, ptr %i.lf, align 16, !tbaa !749
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kw, i64 116
  %i.lh = load i8, ptr %i.bi, align 4, !tbaa !750
  %i.li = getelementptr inbounds nuw i8, ptr %i.kw, i64 120
  %i.lj = load i64, ptr %4, align 8, !tbaa !752
  store i64 %i.lj, ptr %i.li, align 8, !tbaa !752
  %i.lk = sub i8 %i.lh, %i.kv
  store i8 %i.lk, ptr %i.lg, align 4, !tbaa !750
  %i.ll = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !6162 ; 6 uses
  %i.lm = load ptr, ptr %i.be, align 32, !tbaa !766
  store ptr %i.lm, ptr %i.ll, align 8, !tbaa !756
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  store i32 2, ptr %i.ln, align 8, !tbaa !757
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.lp = load i64, ptr %4, align 8, !tbaa !752
  store i64 %i.lp, ptr %i.lo, align 8, !tbaa !752
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  store i8 0, ptr %i.lq, align 8, !tbaa !768
  store ptr %i.ll, ptr %i.be, align 32, !tbaa !2151
  store ptr %i.ll, ptr %i.lb, align 32, !tbaa !2151
  %i.lr = load ptr, ptr %3, align 8, !tbaa !769
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(128) %i.kw, ptr noundef nonnull align 8 dereferenceable(128) %i.lr), !inline_history !6162
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ls = add i8 %i.kr, -1
  %i.lt = add nuw nsw i8 %i.bj, 1
  %i.lu = and i8 %i.lt, 7
  br label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.lv = zext i8 %i.kd to i64                    ; 4 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.lv
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !437
  %i.ly = icmp ult i8 %i.lx, %i.kp
  br i1 %i.ly, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit: ; preds = %bb.z
  %i.lz = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.lv ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !478
  %i.mc = load i32, ptr %i.lz, align 8, !tbaa !476
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  %i.me = load i32, ptr %i.md, align 4, !tbaa !477
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
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !477 ; 2 uses
  %i.mn = load i32, ptr %i.mk, align 8, !tbaa !476 ; 2 uses
  %i.mo = icmp ult i32 %i.mm, %i.mn
  br i1 %i.mo, label %.lr.ph.i.i.i.i.i.i15, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEE8run_bodyERS4_.exit33

.lr.ph.i.i.i.i.i.i15:                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread
  %i.mp = load ptr, ptr %i.bf, align 16, !tbaa !499 ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !573, !noalias !6167
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !574, !noalias !6167
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mp, i64 24
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !574, !noalias !6167
  %i.mw = load ptr, ptr %i.bg, align 8, !tbaa !500
  %i.mx = zext i32 %i.mm to i64
  %wide.trip.count.i.i.i.i.i.i16 = zext i32 %i.mn to i64
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE8getValueEjj.exit.i.i.i.i.i.i28, %.lr.ph.i.i.i.i.i.i15
  %indvars.iv.i.i.i.i.i.i17 = phi i64 [ %i.mx, %.lr.ph.i.i.i.i.i.i15 ], [ %indvars.iv.next.i.i.i.i.i.i30, %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE8getValueEjj.exit.i.i.i.i.i.i28 ] ; 6 uses
  %i.my = mul nuw nsw i64 %indvars.iv.i.i.i.i.i.i17, 7
  %i.mz = and i64 %i.my, 4294967295               ; 2 uses
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %i.mz
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.mz ; 3 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv.i.i.i.i.i.i17
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !410 ; 3 uses
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
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !410
  %i.nj = zext i32 %i.ni to i64
  %i.nk = icmp samesign ugt i64 %indvars.iv.i.i.i.i.i.i17, %i.nj ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  %i.nm = xor i64 %i.ng, -1
  %i.nn = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i19, %i.nm
  %.112.i.i.i.i.i.i.i.i.i.i.i23 = select i1 %i.nk, ptr %i.nl, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i20 ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i24 = select i1 %i.nk, i64 %i.nn, i64 %i.ng ; 2 uses
  %i.no = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i24, 0
  br i1 %i.no, label %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i18, label %_ZSt11lower_boundIPKjjET_S2_S2_RKT0_.exit.i.i.i.i.i.i.i.i.i25, !llvm.loop !12

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
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !410
  %i.ny = zext i32 %i.nx to i64
  %i.nz = icmp eq i64 %indvars.iv.i.i.i.i.i.i17, %i.ny
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %i.nv
  %spec.select.i.i.i.i.i.i.i32 = select i1 %i.nz, ptr %i.oa, ptr @_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10sZeroValueE
  br label %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE8getValueEjj.exit.i.i.i.i.i.i28

_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE8getValueEjj.exit.i.i.i.i.i.i28: ; preds = %bb.ac, %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE4findEj.exit.i.i.i.i.i.i.i.i26
  %.0.i.i.i.i.i.i.i.i29 = phi ptr [ @_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10sZeroValueE, %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE4findEj.exit.i.i.i.i.i.i.i.i26 ], [ %spec.select.i.i.i.i.i.i.i32, %bb.ac ]
  %i.ob = load double, ptr %.0.i.i.i.i.i.i.i.i29, align 8, !tbaa !501
  %i.oc = fdiv double 1.000000e+00, %i.ob
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %indvars.iv.i.i.i.i.i.i17
  store double %i.oc, ptr %i.od, align 8, !tbaa !501
  %indvars.iv.next.i.i.i.i.i.i30 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i17, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i31 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i30, %wide.trip.count.i.i.i.i.i.i16
  br i1 %exitcond.not.i.i.i.i.i.i31, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEE8run_bodyERS4_.exit33, label %bb.aa, !llvm.loop !6161

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
  %i.on = load ptr, ptr %3, align 8, !tbaa !769   ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 15
  %i.op = load atomic i8, ptr %i.oo monotonic, align 1
  %i.oq = icmp eq i8 %i.op, -1
  br i1 %i.oq, label %bb.ae, label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.or = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !437
  br label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i = phi ptr [ %i.os, %bb.ae ], [ %i.on, %bb.ad ]
  %i.ot = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.ot, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit39, label %bb.h, !llvm.loop !6165

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit39: ; preds = %thread-pre-split40, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE6InitOpEKNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE8getValueEjj.exit.i.i.i.i.i.i, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE7ApplyOpEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE7ApplyOpEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !736
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 192)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE7ApplyOpEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !412
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !737
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !2152
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !2154
  %i.m = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  store i32 0, ptr %i.p, align 8, !tbaa !749
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 124
  store i8 5, ptr %i.q, align 4, !tbaa !750
  %i.r = shl nsw i64 %i.o, 1
  %i.s = and i64 %i.r, 9223372036854775806
  store i64 %i.s, ptr %i.n, align 16, !tbaa !751
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.u = load i64, ptr %3, align 8, !tbaa !752
  store i64 %i.u, ptr %i.t, align 64, !tbaa !752
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !756
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !757
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.w, align 8, !tbaa !760
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.x, align 8, !tbaa !560
  store ptr %4, ptr %i.l, align 8, !tbaa !2154
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
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
  call void @__clang_call_terminate(ptr %i.ac) #30
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg20JacobiPreconditionerINS8_19SparseStencilMatrixIdLj7EEEE7ApplyOpEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.ad
}
end_hunk_3
begin_hunk_4_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE:bb.a
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
define linkonce_odr void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !736
  %i.v = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !6189 ; 12 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.v, align 64, !tbaa !412
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ag, ptr noundef nonnull align 16 dereferenceable(24) %i.r, i64 24, i1 false), !tbaa.struct !2164
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 104 ; 2 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !2166
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  %i.aj = load i64, ptr %i.s, align 16, !tbaa !751
  %i.ak = lshr i64 %i.aj, 1                       ; 2 uses
  store i64 %i.ak, ptr %i.s, align 16, !tbaa !751
  store i64 %i.ak, ptr %i.ai, align 16, !tbaa !751
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  store i32 2, ptr %i.al, align 8, !tbaa !749
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 124
  %i.an = load i8, ptr %i.t, align 4, !tbaa !750
  store i8 %i.an, ptr %i.am, align 4, !tbaa !750
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  %i.ap = load i64, ptr %4, align 8, !tbaa !752
  store i64 %i.ap, ptr %i.ao, align 64, !tbaa !752
  %i.aq = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !6190 ; 6 uses
  %i.ar = load ptr, ptr %i.u, align 8, !tbaa !766
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !756
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 2, ptr %i.as, align 8, !tbaa !757
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.au = load i64, ptr %4, align 8, !tbaa !752
  store i64 %i.au, ptr %i.at, align 8, !tbaa !752
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i8 0, ptr %i.av, align 8, !tbaa !768
  store ptr %i.aq, ptr %i.u, align 8, !tbaa !2166
  store ptr %i.aq, ptr %i.ah, align 8, !tbaa !2166
  %i.aw = load ptr, ptr %3, align 8, !tbaa !769
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(136) %i.v, ptr noundef nonnull align 8 dereferenceable(128) %i.aw), !inline_history !6190
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
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !6191

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
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::range_vector", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !478
  %i.c = load i32, ptr %2, align 8, !tbaa !476    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !477  ; 3 uses
  %i.f = sub i32 %i.c, %i.e
  %i.g = zext i32 %i.f to i64
  %i.h = icmp ult i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.j = load i8, ptr %i.i, align 4, !tbaa !750
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = icmp ult i32 %i.e, %i.c
  br i1 %i.k, label %.lr.ph.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !594 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !573, !noalias !6202
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !574, !noalias !6202
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !574, !noalias !6202
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !595  ; 5 uses
  %i.v = load i32, ptr %i.m, align 8, !tbaa !474
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.x = load ptr, ptr %i.w, align 32, !tbaa !596
  %i.y = zext i32 %i.e to i64
  %wide.trip.count.i.i.i.i.i.i = zext i32 %i.c to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i ] ; 4 uses
  %i.z = mul nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 7
  %i.aa = and i64 %i.z, 4294967295                ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aa ; 5 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.aa ; 5 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i.i.i.i.i.i
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !410
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
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !501
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !410
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !501
  %i.an = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.am, double %.0810.i.i.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i.i.i.i.i.i
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !501
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.i.i.i.i.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !410
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !501
  %i.av = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.au, double %i.an)
  %indvars.iv.next.i.i.i.i.i.i.i.1 = or disjoint i64 %indvars.iv.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !501
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !410
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !501
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.bc, double %i.av)
  %indvars.iv.next.i.i.i.i.i.i.i.2 = or disjoint i64 %indvars.iv.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i.i.i.i.i.i.2
  %i.bf = load double, ptr %i.be, align 8, !tbaa !501
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.i.i.i.i.i.2
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !410
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !501
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bk, double %i.bd) ; 3 uses
  %indvars.iv.next.i.i.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter98.next.3 = add i64 %niter98, 4           ; 2 uses
  %niter98.ncmp.3 = icmp eq i64 %niter98.next.3, %unroll_iter97
  br i1 %niter98.ncmp.3, label %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i.loopexit.unr-lcssa, label %bb.e, !llvm.loop !6194

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
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !501
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.i.i.i.i.i.i.i.epil
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !410
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !501
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.bs, double %.0810.i.i.i.i.i.i.i.epil) ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i.epil, 1
  %epil.iter93.next = add i64 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i64 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i, label %bb.f, !llvm.loop !6195

_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i: ; preds = %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %bb.f, %bb.d
  %.08.lcssa.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.d ], [ %i.bl, %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.bt, %bb.f ]
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.i.i.i.i.i.i
  store double %.08.lcssa.i.i.i.i.i.i.i, ptr %i.bu, align 8, !tbaa !501
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %bb.d, !llvm.loop !6196

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 20 uses
  store i8 0, ptr %i.bv, align 1, !tbaa !437
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !737
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
  %i.cg = load i8, ptr %i.i, align 4, !tbaa !750  ; 10 uses
  %i.ch = icmp ult i8 %i.ce, 8
  br i1 %i.ch, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.h
  %.phi.trans.insert.i = zext i8 %i.cf to i64
  %.phi.trans.insert6.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.phi.trans.insert.i
  %.pre.i = load i8, ptr %.phi.trans.insert6.i, align 1, !tbaa !437
  %i.ci = icmp ult i8 %.pre.i, %i.cg
  br i1 %i.ci, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.i:                                             ; preds = %bb.x
  %i.cj = icmp ult i8 %i.kt, %i.cg
  br i1 %i.cj, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1: ; preds = %bb.i
  %i.ck = zext nneg i8 %i.kh to i64               ; 2 uses
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.ck ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !478
  %i.co = load i32, ptr %i.cl, align 8, !tbaa !476
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 4 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !477
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !tbaa.struct !737
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !476 ; 2 uses
  store i32 %i.cz, ptr %i.cl, align 8, !tbaa !476
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !477 ; 2 uses
  %i.dc = sub i32 %i.cz, %i.db
  %i.dd = lshr i32 %i.dc, 1
  %i.de = add i32 %i.dd, %i.db                    ; 2 uses
  store i32 %i.de, ptr %i.cy, align 8, !tbaa !476
  store i32 %i.de, ptr %i.cp, align 4, !tbaa !477
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !478
  store i64 %i.dg, ptr %i.cm, align 8, !tbaa !478
  %i.dh = load i8, ptr %i.cu, align 1, !tbaa !437
  %i.di = add i8 %i.dh, 1                         ; 3 uses
  store i8 %i.di, ptr %i.cu, align 1, !tbaa !437
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cx
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !437
  %i.dk = add nuw nsw i8 %i.ce, 2                 ; 3 uses
  %exitcond.not.i.1 = icmp eq i8 %i.dk, 8
  br i1 %exitcond.not.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.k, !llvm.loop !27

bb.k:                                             ; preds = %bb.j
  %i.dl = icmp ult i8 %i.di, %i.cg
  br i1 %i.dl, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2: ; preds = %bb.k
  %i.dm = zext nneg i8 %i.cw to i64               ; 2 uses
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.dm ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !478
  %i.dq = load i32, ptr %i.dn, align 8, !tbaa !476
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 4 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !477
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i64 16, i1 false), !tbaa.struct !737
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !476 ; 2 uses
  store i32 %i.eb, ptr %i.dn, align 8, !tbaa !476
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
end_hunk_4
begin_hunk_5_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ji, ptr noundef nonnull align 8 dereferenceable(16) %i.ix, i64 16, i1 false), !tbaa.struct !737
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !476 ; 2 uses
  store i32 %i.jj, ptr %i.ix, align 8, !tbaa !476
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !477 ; 2 uses
  %i.jm = sub i32 %i.jj, %i.jl
  %i.jn = lshr i32 %i.jm, 1
  %i.jo = add i32 %i.jn, %i.jl                    ; 2 uses
  store i32 %i.jo, ptr %i.ji, align 8, !tbaa !476
  store i32 %i.jo, ptr %i.jb, align 4, !tbaa !477
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !478
  store i64 %i.jq, ptr %i.iy, align 8, !tbaa !478
  %i.jr = load i8, ptr %i.jg, align 1, !tbaa !437
  %i.js = add i8 %i.jr, 1                         ; 2 uses
  store i8 %i.js, ptr %i.jg, align 1, !tbaa !437
  %i.jt = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.jh
  store i8 %i.js, ptr %i.jt, align 1, !tbaa !437
  %exitcond.not.i.7 = icmp eq i8 %i.ce, 0
  br i1 %exitcond.not.i.7, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.w, !llvm.loop !27

bb.w:                                             ; preds = %bb.v
  %i.ju = or disjoint i8 %i.ce, 8
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i: ; preds = %.lr.ph.i
  %i.jv = zext i8 %i.cf to i64                    ; 2 uses
  %i.jw = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.jv ; 5 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8 ; 2 uses
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !478
  %i.jz = load i32, ptr %i.jw, align 8, !tbaa !476
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 4 ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !477
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kj, ptr noundef nonnull align 8 dereferenceable(16) %i.jw, i64 16, i1 false), !tbaa.struct !737
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !476 ; 2 uses
  store i32 %i.kk, ptr %i.jw, align 8, !tbaa !476
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !477 ; 2 uses
  %i.kn = sub i32 %i.kk, %i.km
  %i.ko = lshr i32 %i.kn, 1
  %i.kp = add i32 %i.ko, %i.km                    ; 2 uses
  store i32 %i.kp, ptr %i.kj, align 8, !tbaa !476
  store i32 %i.kp, ptr %i.ka, align 4, !tbaa !477
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !478
  store i64 %i.kr, ptr %i.jx, align 8, !tbaa !478
  %i.ks = load i8, ptr %i.kf, align 1, !tbaa !437
  %i.kt = add i8 %i.ks, 1                         ; 3 uses
  store i8 %i.kt, ptr %i.kf, align 1, !tbaa !437
  %i.ku = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.ki
  store i8 %i.kt, ptr %i.ku, align 1, !tbaa !437
  %i.kv = add nuw nsw i8 %i.ce, 1                 ; 3 uses
  %exitcond.not.i = icmp eq i8 %i.kv, 8
  br i1 %exitcond.not.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.i, !llvm.loop !27

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit: ; preds = %bb.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1, %bb.k, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2, %bb.m, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3, %bb.o, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4, %bb.q, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5, %bb.s, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6, %bb.u, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7, %bb.w, %.lr.ph.i, %bb.h
  %i.kw = phi i8 [ %i.ce, %bb.h ], [ %i.ce, %.lr.ph.i ], [ %i.ce, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i ], [ %i.kv, %bb.i ], [ %i.kv, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1 ], [ %i.dk, %bb.k ], [ %i.dk, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2 ], [ %i.em, %bb.m ], [ %i.em, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3 ], [ %i.fo, %bb.o ], [ %i.fo, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4 ], [ %i.gq, %bb.q ], [ %i.gq, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5 ], [ %i.hs, %bb.s ], [ %i.hs, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6 ], [ %i.iu, %bb.u ], [ %i.iu, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7 ], [ %i.ju, %bb.w ] ; 6 uses
  %i.kx = phi i8 [ %i.cf, %bb.h ], [ %i.cf, %.lr.ph.i ], [ %i.cf, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i ], [ %i.kh, %bb.i ], [ %i.kh, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1 ], [ %i.cw, %bb.k ], [ %i.cw, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2 ], [ %i.dy, %bb.m ], [ %i.dy, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3 ], [ %i.fa, %bb.o ], [ %i.fa, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4 ], [ %i.gc, %bb.q ], [ %i.gc, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5 ], [ %i.he, %bb.s ], [ %i.he, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6 ], [ %i.ig, %bb.u ], [ %i.ig, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7 ], [ %i.ez, %bb.w ] ; 6 uses
  %i.ky = load ptr, ptr %i.bx, align 8, !tbaa !2166
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 24
  %i.la = load atomic i8, ptr %i.kz monotonic, align 1, !range !517, !noundef !774
  %i.lb = trunc nuw i8 %i.la to i1
  br i1 %i.lb, label %bb.y, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.x
  %.lcssa87 = phi i8 [ %i.kh, %bb.x ], [ %i.cw, %bb.j ], [ %i.dy, %bb.l ], [ %i.fa, %bb.n ], [ %i.gc, %bb.p ], [ %i.he, %bb.r ], [ %i.ig, %bb.t ], [ %i.ez, %bb.v ] ; 2 uses
  %i.lc = load ptr, ptr %i.bx, align 8, !tbaa !2166
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  %i.le = load atomic i8, ptr %i.ld monotonic, align 1, !range !517, !noundef !774
  %i.lf = trunc nuw i8 %i.le to i1
  br i1 %i.lf, label %.thread79, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

.thread79:                                        ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread
  %i.lg = add i8 %i.cg, 1
  store i8 %i.lg, ptr %i.i, align 4, !tbaa !750
  br label %.noexc

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %i.lh = phi i8 [ %.lcssa87, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread ], [ %i.kx, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit ] ; 2 uses
  %i.li = phi i8 [ 8, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread ], [ %i.kw, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit ]
  %.pre = zext i8 %i.lh to i64
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

bb.y:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %i.lj = add i8 %i.cg, 1                         ; 2 uses
  store i8 %i.lj, ptr %i.i, align 4, !tbaa !750
  %i.lk = icmp ugt i8 %i.kw, 1
  br i1 %i.lk, label %.noexc, label %bb.z

.noexc:                                           ; preds = %.thread79, %bb.y
  %i.ll = phi i8 [ 8, %.thread79 ], [ %i.kw, %bb.y ]
  %i.lm = phi i8 [ %.lcssa87, %.thread79 ], [ %i.kx, %bb.y ]
  %i.ln = zext nneg i8 %i.cd to i64               ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.ln
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !437
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !736
  %i.lq = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !6197 ; 10 uses
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.ln
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ls, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.lq, align 64, !tbaa !412
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.lt, ptr noundef nonnull align 8 dereferenceable(16) %i.lr, i64 16, i1 false), !tbaa.struct !737
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.lu, ptr noundef nonnull align 16 dereferenceable(24) %i.by, i64 24, i1 false), !tbaa.struct !2164
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lq, i64 104 ; 2 uses
  store ptr null, ptr %i.lv, align 8, !tbaa !2166
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lq, i64 112
  %i.lx = load i64, ptr %i.cb, align 16, !tbaa !751
  %i.ly = lshr i64 %i.lx, 1                       ; 2 uses
  store i64 %i.ly, ptr %i.cb, align 16, !tbaa !751
  store i64 %i.ly, ptr %i.lw, align 16, !tbaa !751
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lq, i64 120
  store i32 2, ptr %i.lz, align 8, !tbaa !749
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lq, i64 124
  %i.mb = load i8, ptr %i.cc, align 4, !tbaa !750
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lq, i64 128
  %i.md = load i64, ptr %4, align 8, !tbaa !752
  store i64 %i.md, ptr %i.mc, align 64, !tbaa !752
  %i.me = sub i8 %i.mb, %i.lp
  store i8 %i.me, ptr %i.ma, align 4, !tbaa !750
  %i.mf = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !6197 ; 6 uses
  %i.mg = load ptr, ptr %i.bx, align 8, !tbaa !766
  store ptr %i.mg, ptr %i.mf, align 8, !tbaa !756
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  store i32 2, ptr %i.mh, align 8, !tbaa !757
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mj = load i64, ptr %4, align 8, !tbaa !752
  store i64 %i.mj, ptr %i.mi, align 8, !tbaa !752
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mf, i64 24
  store i8 0, ptr %i.mk, align 8, !tbaa !768
  store ptr %i.mf, ptr %i.bx, align 8, !tbaa !2166
  store ptr %i.mf, ptr %i.lv, align 8, !tbaa !2166
  %i.ml = load ptr, ptr %3, align 8, !tbaa !769
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(136) %i.lq, ptr noundef nonnull align 8 dereferenceable(128) %i.ml), !inline_history !6197
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.mm = add i8 %i.ll, -1
  %i.mn = add nuw nsw i8 %i.cd, 1
  %i.mo = and i8 %i.mn, 7
  br label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.mp = zext i8 %i.kx to i64                    ; 4 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.mp
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !437
  %i.ms = icmp ult i8 %i.mr, %i.lj
  br i1 %i.ms, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit: ; preds = %bb.z
  %i.mt = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.mp ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !478
  %i.mw = load i32, ptr %i.mt, align 8, !tbaa !476
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 4
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !477
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
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !477 ; 2 uses
  %i.nh = load i32, ptr %i.ne, align 8, !tbaa !476 ; 2 uses
  %i.ni = icmp ult i32 %i.ng, %i.nh
  br i1 %i.ni, label %.lr.ph.i.i.i.i.i.i15, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30

.lr.ph.i.i.i.i.i.i15:                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread
  %i.nj = load ptr, ptr %i.by, align 16, !tbaa !594 ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !573, !noalias !6203
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !574, !noalias !6203
  %i.no = getelementptr inbounds nuw i8, ptr %i.nj, i64 24
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !574, !noalias !6203
  %i.nq = load ptr, ptr %i.bz, align 8, !tbaa !595 ; 5 uses
  %i.nr = load i32, ptr %i.nj, align 8, !tbaa !474
  %i.ns = load ptr, ptr %i.ca, align 32, !tbaa !596
  %i.nt = zext i32 %i.ng to i64
  %wide.trip.count.i.i.i.i.i.i16 = zext i32 %i.nh to i64
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i26, %.lr.ph.i.i.i.i.i.i15
  %indvars.iv.i.i.i.i.i.i17 = phi i64 [ %i.nt, %.lr.ph.i.i.i.i.i.i15 ], [ %indvars.iv.next.i.i.i.i.i.i28, %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i26 ] ; 4 uses
  %i.nu = mul nuw nsw i64 %indvars.iv.i.i.i.i.i.i17, 7
  %i.nv = and i64 %i.nu, 4294967295               ; 2 uses
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %i.nv ; 5 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %i.nv ; 5 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %indvars.iv.i.i.i.i.i.i17
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !410
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
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !501
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %indvars.iv.i.i.i.i.i.i.i22
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !410
  %i.of = zext i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %i.of
  %i.oh = load double, ptr %i.og, align 8, !tbaa !501
  %i.oi = call double @llvm.fmuladd.f64(double %i.oc, double %i.oh, double %.0810.i.i.i.i.i.i.i23)
  %indvars.iv.next.i.i.i.i.i.i.i24 = or disjoint i64 %indvars.iv.i.i.i.i.i.i.i22, 1 ; 2 uses
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %indvars.iv.next.i.i.i.i.i.i.i24
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !501
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %indvars.iv.next.i.i.i.i.i.i.i24
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !410
  %i.on = zext i32 %i.om to i64
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %i.on
  %i.op = load double, ptr %i.oo, align 8, !tbaa !501
  %i.oq = call double @llvm.fmuladd.f64(double %i.ok, double %i.op, double %i.oi)
  %indvars.iv.next.i.i.i.i.i.i.i24.1 = or disjoint i64 %indvars.iv.i.i.i.i.i.i.i22, 2 ; 2 uses
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %indvars.iv.next.i.i.i.i.i.i.i24.1
  %i.os = load double, ptr %i.or, align 8, !tbaa !501
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %indvars.iv.next.i.i.i.i.i.i.i24.1
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !410
  %i.ov = zext i32 %i.ou to i64
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %i.ov
  %i.ox = load double, ptr %i.ow, align 8, !tbaa !501
  %i.oy = call double @llvm.fmuladd.f64(double %i.os, double %i.ox, double %i.oq)
  %indvars.iv.next.i.i.i.i.i.i.i24.2 = or disjoint i64 %indvars.iv.i.i.i.i.i.i.i22, 3 ; 2 uses
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %indvars.iv.next.i.i.i.i.i.i.i24.2
  %i.pa = load double, ptr %i.oz, align 8, !tbaa !501
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %indvars.iv.next.i.i.i.i.i.i.i24.2
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !410
  %i.pd = zext i32 %i.pc to i64
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %i.pd
  %i.pf = load double, ptr %i.pe, align 8, !tbaa !501
  %i.pg = call double @llvm.fmuladd.f64(double %i.pa, double %i.pf, double %i.oy) ; 3 uses
  %indvars.iv.next.i.i.i.i.i.i.i24.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i22, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i26.loopexit.unr-lcssa, label %bb.ab, !llvm.loop !6194

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
  %i.pi = load double, ptr %i.ph, align 8, !tbaa !501
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %indvars.iv.i.i.i.i.i.i.i22.epil
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !410
  %i.pl = zext i32 %i.pk to i64
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %i.pl
  %i.pn = load double, ptr %i.pm, align 8, !tbaa !501
  %i.po = call double @llvm.fmuladd.f64(double %i.pi, double %i.pn, double %.0810.i.i.i.i.i.i.i23.epil) ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i.i24.epil = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i22.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i26, label %bb.ac, !llvm.loop !6200

_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i26: ; preds = %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i26.loopexit.unr-lcssa, %bb.ac, %bb.aa
  %.08.lcssa.i.i.i.i.i.i.i27 = phi double [ 0.000000e+00, %bb.aa ], [ %i.pg, %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i26.loopexit.unr-lcssa ], [ %i.po, %bb.ac ]
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.ns, i64 %indvars.iv.i.i.i.i.i.i17
  store double %.08.lcssa.i.i.i.i.i.i.i27, ptr %i.pp, align 8, !tbaa !501
  %indvars.iv.next.i.i.i.i.i.i28 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i17, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i29 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i28, %wide.trip.count.i.i.i.i.i.i16
  br i1 %exitcond.not.i.i.i.i.i.i29, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30, label %bb.aa, !llvm.loop !6196

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
  %i.pz = load ptr, ptr %3, align 8, !tbaa !769   ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 15
  %i.qb = load atomic i8, ptr %i.qa monotonic, align 1
  %i.qc = icmp eq i8 %i.qb, -1
  br i1 %i.qc, label %bb.ae, label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !437
  br label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i = phi ptr [ %i.qe, %bb.ae ], [ %i.pz, %bb.ad ]
  %i.qf = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.qf, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit36, label %bb.h, !llvm.loop !6201

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit36: ; preds = %thread-pre-split37, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9VecMultOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %_ZNK7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE7RowBaseINS4_12ConstRowDataEE3dotIdEET_PKS9_j.exit.i.i.i.i.i.i, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSB_RSD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSB_RSD_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !736
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 192)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !412
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !737
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !2167
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 112 ; 2 uses
  store ptr null, ptr %i.l, align 16, !tbaa !2169
  %i.m = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  store i32 0, ptr %i.p, align 64, !tbaa !749
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 132
  store i8 5, ptr %i.q, align 4, !tbaa !750
  %i.r = shl nsw i64 %i.o, 1
  %i.s = and i64 %i.r, 9223372036854775806
  store i64 %i.s, ptr %i.n, align 8, !tbaa !751
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.u = load i64, ptr %3, align 8, !tbaa !752
  store i64 %i.u, ptr %i.t, align 8, !tbaa !752
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !756
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !757
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.w, align 8, !tbaa !760
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
end_hunk_5
