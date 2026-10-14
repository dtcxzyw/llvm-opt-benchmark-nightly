Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/PoissonSolver?download=true
inline.NumInlined: 42562
inline.NumDeleted: 14020
loop-unroll.NumCompletelyUnrolled: 147
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 534
begin_hunk_0_@_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE:bb.a
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
  %i.w = mul i64 %indvars.iv.i.i.i.i.i.i, 7
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
  %6 = load <1 x double>, ptr %i.r, align 8
  %broadcast.splat94 = shufflevector <1 x double> %6, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph87
  %index90 = phi i64 [ 0, %vector.ph87 ], [ %index.next95, %vector.body89 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %index90 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %wide.load91 = load <2 x double>, ptr %i.ae, align 8, !tbaa !501, !alias.scope !6076, !noalias !6077
  %wide.load92 = load <2 x double>, ptr %i.af, align 8, !tbaa !501, !alias.scope !6076, !noalias !6077
  %i.ag = fmul <2 x double> %broadcast.splat94, %wide.load91
  %i.ah = fmul <2 x double> %broadcast.splat94, %wide.load92
  store <2 x double> %i.ag, ptr %i.ae, align 8, !tbaa !501, !alias.scope !6076, !noalias !6077
  store <2 x double> %i.ah, ptr %i.af, align 8, !tbaa !501, !alias.scope !6076, !noalias !6077
  %index.next95 = add nuw i64 %index90, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next95, %n.vec88
  br i1 %i.ai, label %middle.block96, label %vector.body89, !llvm.loop !6061

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
  %i.aj = load double, ptr %i.r, align 8, !tbaa !501
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i.i.i.i.i.i.i.prol ; 2 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !501
  %i.am = fmul double %i.aj, %i.al
  store double %i.am, ptr %i.ak, align 8, !tbaa !501
  %indvars.iv.next.i.i.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter102.next = add i64 %prol.iter102, 1   ; 2 uses
  %prol.iter102.cmp.not = icmp eq i64 %prol.iter102.next, %xtraiter100
  br i1 %prol.iter102.cmp.not, label %scalar.ph85.prol.loopexit, label %scalar.ph85.prol, !llvm.loop !6062

scalar.ph85.prol.loopexit:                        ; preds = %scalar.ph85.prol, %scalar.ph85.preheader
  %indvars.iv.i.i.i.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i.i.i.ph, %scalar.ph85.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i.prol, %scalar.ph85.prol ]
  %i.an = sub nsw i64 %indvars.iv.i.i.i.i.i.i.i.ph, %wide.trip.count.i.i.i.i.i.i.i
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i, label %scalar.ph85

scalar.ph85:                                      ; preds = %scalar.ph85.prol.loopexit, %scalar.ph85
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.3, %scalar.ph85 ], [ %indvars.iv.i.i.i.i.i.i.i.unr, %scalar.ph85.prol.loopexit ] ; 5 uses
  %i.ap = load double, ptr %i.r, align 8, !tbaa !501
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i.i.i.i.i.i.i ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !501
  %i.as = fmul double %i.ap, %i.ar
  store double %i.as, ptr %i.aq, align 8, !tbaa !501
  %i.at = load double, ptr %i.r, align 8, !tbaa !501
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !501
  %i.ax = fmul double %i.at, %i.aw
  store double %i.ax, ptr %i.av, align 8, !tbaa !501
  %i.ay = load double, ptr %i.r, align 8, !tbaa !501
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !501
  %i.bc = fmul double %i.ay, %i.bb
  store double %i.bc, ptr %i.ba, align 8, !tbaa !501
  %i.bd = load double, ptr %i.r, align 8, !tbaa !501
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !501
  %i.bh = fmul double %i.bd, %i.bg
  store double %i.bh, ptr %i.bf, align 8, !tbaa !501
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
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 20 uses
  store i8 0, ptr %i.bi, align 1, !tbaa !437
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !737
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 7 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 116
  br label %bb.f

bb.f:                                             ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit, %bb.e
  %i.bp = phi i8 [ %i.ow, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 0, %bb.e ] ; 3 uses
  %i.bq = phi i8 [ %i.ox, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 1, %bb.e ] ; 13 uses
  %i.br = phi i8 [ %i.oy, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 0, %bb.e ] ; 9 uses
  %i.bs = load i8, ptr %i.i, align 4, !tbaa !750  ; 10 uses
  %i.bt = icmp ult i8 %i.bq, 8
  br i1 %i.bt, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.phi.trans.insert.i = zext i8 %i.br to i64
  %.phi.trans.insert6.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.phi.trans.insert.i
  %.pre.i = load i8, ptr %.phi.trans.insert6.i, align 1, !tbaa !437
  %i.bu = icmp ult i8 %.pre.i, %i.bs
  br i1 %i.bu, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.g:                                             ; preds = %bb.v
  %i.bv = icmp ult i8 %i.kf, %i.bs
  br i1 %i.bv, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1: ; preds = %bb.g
  %i.bw = zext nneg i8 %i.jt to i64               ; 2 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bw ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !478
  %i.ca = load i32, ptr %i.bx, align 8, !tbaa !476
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !477
  %i.cd = sub i32 %i.ca, %i.cc
  %i.ce = zext i32 %i.cd to i64
  %i.cf = icmp ult i64 %i.bz, %i.ce
  br i1 %i.cf, label %bb.h, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.h:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bw ; 2 uses
  %i.ch = add i8 %i.br, 2
  %i.ci = and i8 %i.ch, 7                         ; 5 uses
  %i.cj = zext nneg i8 %i.ci to i64               ; 2 uses
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.cj ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false), !tbaa.struct !737
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !476 ; 2 uses
  store i32 %i.cl, ptr %i.bx, align 8, !tbaa !476
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !477 ; 2 uses
  %i.co = sub i32 %i.cl, %i.cn
  %i.cp = lshr i32 %i.co, 1
  %i.cq = add i32 %i.cp, %i.cn                    ; 2 uses
  store i32 %i.cq, ptr %i.ck, align 8, !tbaa !476
  store i32 %i.cq, ptr %i.cb, align 4, !tbaa !477
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !478
  store i64 %i.cs, ptr %i.by, align 8, !tbaa !478
  %i.ct = load i8, ptr %i.cg, align 1, !tbaa !437
  %i.cu = add i8 %i.ct, 1                         ; 3 uses
  store i8 %i.cu, ptr %i.cg, align 1, !tbaa !437
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.cj
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !437
  %i.cw = add nuw nsw i8 %i.bq, 2                 ; 3 uses
  %exitcond.not.i.1 = icmp eq i8 %i.cw, 8
  br i1 %exitcond.not.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.i, !llvm.loop !27

bb.i:                                             ; preds = %bb.h
  %i.cx = icmp ult i8 %i.cu, %i.bs
  br i1 %i.cx, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2: ; preds = %bb.i
  %i.cy = zext nneg i8 %i.ci to i64               ; 2 uses
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.cy ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !478
  %i.dc = load i32, ptr %i.cz, align 8, !tbaa !476
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 4 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !477
  %i.df = sub i32 %i.dc, %i.de
  %i.dg = zext i32 %i.df to i64
  %i.dh = icmp ult i64 %i.db, %i.dg
  br i1 %i.dh, label %bb.j, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2
  %i.di = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.cy ; 2 uses
  %i.dj = add i8 %i.br, 3
  %i.dk = and i8 %i.dj, 7                         ; 5 uses
  %i.dl = zext nneg i8 %i.dk to i64               ; 2 uses
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.dl ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i64 16, i1 false), !tbaa.struct !737
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !476 ; 2 uses
  store i32 %i.dn, ptr %i.cz, align 8, !tbaa !476
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !477 ; 2 uses
  %i.dq = sub i32 %i.dn, %i.dp
  %i.dr = lshr i32 %i.dq, 1
  %i.ds = add i32 %i.dr, %i.dp                    ; 2 uses
  store i32 %i.ds, ptr %i.dm, align 8, !tbaa !476
  store i32 %i.ds, ptr %i.dd, align 4, !tbaa !477
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !478
  store i64 %i.du, ptr %i.da, align 8, !tbaa !478
  %i.dv = load i8, ptr %i.di, align 1, !tbaa !437
  %i.dw = add i8 %i.dv, 1                         ; 3 uses
  store i8 %i.dw, ptr %i.di, align 1, !tbaa !437
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.dl
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !437
  %i.dy = add nuw nsw i8 %i.bq, 3                 ; 3 uses
  %exitcond.not.i.2 = icmp eq i8 %i.dy, 8
  br i1 %exitcond.not.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.k, !llvm.loop !27

bb.k:                                             ; preds = %bb.j
  %i.dz = icmp ult i8 %i.dw, %i.bs
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i: ; preds = %.lr.ph.i
  %i.jh = zext i8 %i.br to i64                    ; 2 uses
  %i.ji = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.jh ; 5 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8 ; 2 uses
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !478
  %i.jl = load i32, ptr %i.ji, align 8, !tbaa !476
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 4 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !477
  %i.jo = sub i32 %i.jl, %i.jn
  %i.jp = zext i32 %i.jo to i64
  %i.jq = icmp ult i64 %i.jk, %i.jp
  br i1 %i.jq, label %bb.v, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.v:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.jh ; 2 uses
  %i.js = add nuw i8 %i.br, 1
  %i.jt = and i8 %i.js, 7                         ; 5 uses
  %i.ju = zext nneg i8 %i.jt to i64               ; 2 uses
  %i.jv = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.ju ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jv, ptr noundef nonnull align 8 dereferenceable(16) %i.ji, i64 16, i1 false), !tbaa.struct !737
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !476 ; 2 uses
  store i32 %i.jw, ptr %i.ji, align 8, !tbaa !476
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !477 ; 2 uses
  %i.jz = sub i32 %i.jw, %i.jy
  %i.ka = lshr i32 %i.jz, 1
  %i.kb = add i32 %i.ka, %i.jy                    ; 2 uses
  store i32 %i.kb, ptr %i.jv, align 8, !tbaa !476
  store i32 %i.kb, ptr %i.jm, align 4, !tbaa !477
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !478
  store i64 %i.kd, ptr %i.jj, align 8, !tbaa !478
  %i.ke = load i8, ptr %i.jr, align 1, !tbaa !437
  %i.kf = add i8 %i.ke, 1                         ; 3 uses
  store i8 %i.kf, ptr %i.jr, align 1, !tbaa !437
  %i.kg = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ju
  store i8 %i.kf, ptr %i.kg, align 1, !tbaa !437
  %i.kh = add nuw nsw i8 %i.bq, 1                 ; 3 uses
  %exitcond.not.i = icmp eq i8 %i.kh, 8
  br i1 %exitcond.not.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.g, !llvm.loop !27

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit: ; preds = %bb.g, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1, %bb.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2, %bb.k, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3, %bb.m, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4, %bb.o, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5, %bb.q, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6, %bb.s, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7, %bb.u, %.lr.ph.i, %bb.f
  %i.ki = phi i8 [ %i.bq, %bb.f ], [ %i.bq, %.lr.ph.i ], [ %i.bq, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i ], [ %i.kh, %bb.g ], [ %i.kh, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1 ], [ %i.cw, %bb.i ], [ %i.cw, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2 ], [ %i.dy, %bb.k ], [ %i.dy, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3 ], [ %i.fa, %bb.m ], [ %i.fa, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4 ], [ %i.gc, %bb.o ], [ %i.gc, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5 ], [ %i.he, %bb.q ], [ %i.he, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6 ], [ %i.ig, %bb.s ], [ %i.ig, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7 ], [ %i.jg, %bb.u ] ; 6 uses
  %i.kj = phi i8 [ %i.br, %bb.f ], [ %i.br, %.lr.ph.i ], [ %i.br, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i ], [ %i.jt, %bb.g ], [ %i.jt, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1 ], [ %i.ci, %bb.i ], [ %i.ci, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2 ], [ %i.dk, %bb.k ], [ %i.dk, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3 ], [ %i.em, %bb.m ], [ %i.em, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4 ], [ %i.fo, %bb.o ], [ %i.fo, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5 ], [ %i.gq, %bb.q ], [ %i.gq, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6 ], [ %i.hs, %bb.s ], [ %i.hs, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7 ], [ %i.el, %bb.u ] ; 6 uses
  %i.kk = load ptr, ptr %i.bk, align 32, !tbaa !2130
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.km = load atomic i8, ptr %i.kl monotonic, align 1, !range !517, !noundef !774
  %i.kn = trunc nuw i8 %i.km to i1
  br i1 %i.kn, label %bb.w, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.v
  %.lcssa = phi i8 [ %i.jt, %bb.v ], [ %i.ci, %bb.h ], [ %i.dk, %bb.j ], [ %i.em, %bb.l ], [ %i.fo, %bb.n ], [ %i.gq, %bb.p ], [ %i.hs, %bb.r ], [ %i.el, %bb.t ] ; 2 uses
  %i.ko = load ptr, ptr %i.bk, align 32, !tbaa !2130
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  %i.kq = load atomic i8, ptr %i.kp monotonic, align 1, !range !517, !noundef !774
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %.thread73, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

.thread73:                                        ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread
  %i.ks = add i8 %i.bs, 1
  store i8 %i.ks, ptr %i.i, align 4, !tbaa !750
  br label %.noexc

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %i.kt = phi i8 [ %.lcssa, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread ], [ %i.kj, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit ] ; 2 uses
  %i.ku = phi i8 [ 8, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread ], [ %i.ki, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit ]
  %.pre = zext i8 %i.kt to i64
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

bb.w:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %i.kv = add i8 %i.bs, 1                         ; 2 uses
  store i8 %i.kv, ptr %i.i, align 4, !tbaa !750
  %i.kw = icmp ugt i8 %i.ki, 1
  br i1 %i.kw, label %.noexc, label %bb.x

.noexc:                                           ; preds = %.thread73, %bb.w
  %i.kx = phi i8 [ 8, %.thread73 ], [ %i.ki, %bb.w ]
  %i.ky = phi i8 [ %.lcssa, %.thread73 ], [ %i.kj, %bb.w ]
  %i.kz = zext nneg i8 %i.bp to i64               ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.kz
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !437
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !736
  %i.lc = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !6065 ; 10 uses
  %i.ld = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.kz
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.le, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.lc, align 64, !tbaa !412
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.lf, ptr noundef nonnull align 8 dereferenceable(16) %i.ld, i64 16, i1 false), !tbaa.struct !737
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.lg, ptr noundef nonnull align 16 dereferenceable(16) %i.bl, i64 16, i1 false), !tbaa.struct !2128
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lc, i64 96 ; 2 uses
  store ptr null, ptr %i.lh, align 32, !tbaa !2130
  %i.li = getelementptr inbounds nuw i8, ptr %i.lc, i64 104
  %i.lj = load i64, ptr %i.bn, align 8, !tbaa !751
  %i.lk = lshr i64 %i.lj, 1                       ; 2 uses
  store i64 %i.lk, ptr %i.bn, align 8, !tbaa !751
  store i64 %i.lk, ptr %i.li, align 8, !tbaa !751
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lc, i64 112
  store i32 2, ptr %i.ll, align 16, !tbaa !749
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lc, i64 116
  %i.ln = load i8, ptr %i.bo, align 4, !tbaa !750
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lc, i64 120
  %i.lp = load i64, ptr %4, align 8, !tbaa !752
  store i64 %i.lp, ptr %i.lo, align 8, !tbaa !752
  %i.lq = sub i8 %i.ln, %i.lb
  store i8 %i.lq, ptr %i.lm, align 4, !tbaa !750
  %i.lr = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !6065 ; 6 uses
  %i.ls = load ptr, ptr %i.bk, align 32, !tbaa !766
  store ptr %i.ls, ptr %i.lr, align 8, !tbaa !756
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  store i32 2, ptr %i.lt, align 8, !tbaa !757
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.lv = load i64, ptr %4, align 8, !tbaa !752
  store i64 %i.lv, ptr %i.lu, align 8, !tbaa !752
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lr, i64 24
  store i8 0, ptr %i.lw, align 8, !tbaa !768
  store ptr %i.lr, ptr %i.bk, align 32, !tbaa !2130
  store ptr %i.lr, ptr %i.lh, align 32, !tbaa !2130
  %i.lx = load ptr, ptr %3, align 8, !tbaa !769
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(128) %i.lc, ptr noundef nonnull align 8 dereferenceable(128) %i.lx), !inline_history !6065
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ly = add i8 %i.kx, -1
  %i.lz = add nuw nsw i8 %i.bp, 1
  %i.ma = and i8 %i.lz, 7
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

bb.x:                                             ; preds = %bb.w
  %i.mb = zext i8 %i.kj to i64                    ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.mb
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !437
  %i.me = icmp ult i8 %i.md, %i.kv
  br i1 %i.me, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit: ; preds = %bb.x
  %i.mf = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.mb ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !478
  %i.mi = load i32, ptr %i.mf, align 8, !tbaa !476
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mf, i64 4
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !477
  %i.ml = sub i32 %i.mi, %i.mk
  %i.mm = zext i32 %i.ml to i64
  %i.mn = icmp ult i64 %i.mh, %i.mm
  br i1 %i.mn, label %thread-pre-split33, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.x, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit
  %i.mo = phi i8 [ %i.kt, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.kj, %bb.x ], [ %i.kj, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.mp = phi i8 [ %i.ku, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.ki, %bb.x ], [ %i.ki, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %.pre-phi = phi i64 [ %.pre, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.mb, %bb.x ], [ %i.mb, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.mq = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %.pre-phi ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !477 ; 3 uses
  %i.mt = load i32, ptr %i.mq, align 8, !tbaa !476 ; 2 uses
  %i.mu = icmp ult i32 %i.ms, %i.mt
  br i1 %i.mu, label %.lr.ph.i.i.i.i.i.i15, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit26

.lr.ph.i.i.i.i.i.i15:                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread
  %i.mv = load ptr, ptr %i.bl, align 16, !tbaa !481 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !573, !noalias !6078 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !574, !noalias !6078
  %i.na = zext i32 %i.ms to i64
  %wide.trip.count.i.i.i.i.i.i16 = zext i32 %i.mt to i64
  br label %bb.y

bb.y:                                             ; preds = %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18, %.lr.ph.i.i.i.i.i.i15
  %indvar = phi i32 [ %indvar.next, %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18 ], [ 0, %.lr.ph.i.i.i.i.i.i15 ] ; 2 uses
  %indvars.iv.i.i.i.i.i.i17 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i19, %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18 ], [ %i.na, %.lr.ph.i.i.i.i.i.i15 ] ; 3 uses
  %i.nb = add i32 %i.ms, %indvar
  %i.nc = mul i32 %i.nb, 7
  %i.nd = zext i32 %i.nc to i64
  %i.ne = mul i64 %indvars.iv.i.i.i.i.i.i17, 7
  %i.nf = and i64 %i.ne, 4294967295
  %i.ng = getelementptr [8 x i8], ptr %i.mx, i64 %i.nf ; 7 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %indvars.iv.i.i.i.i.i.i17
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !410 ; 3 uses
  %i.nj = icmp sgt i32 %i.ni, 0
  br i1 %i.nj, label %.lr.ph.i.i.i.i.i.i.i21, label %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18

.lr.ph.i.i.i.i.i.i.i21:                           ; preds = %bb.y
  %wide.trip.count.i.i.i.i.i.i.i22 = zext nneg i32 %i.ni to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.ni, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i21
  %i.nk = add nuw nsw i64 %wide.trip.count.i.i.i.i.i.i.i22, %i.nd
  %i.nl = shl nuw nsw i64 %i.nk, 3
  %scevgep = getelementptr i8, ptr %i.mx, i64 %i.nl
  %bound0 = icmp ult ptr %i.ng, %i.bk
  %bound1 = icmp ult ptr %i.bm, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i.i.i.i.i.i22, 2147483644 ; 3 uses
  %7 = load <1 x double>, ptr %i.bm, align 8
  %broadcast.splat = shufflevector <1 x double> %7, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %index ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.nm, align 8, !tbaa !501, !alias.scope !6079, !noalias !6080
  %wide.load76 = load <2 x double>, ptr %i.nn, align 8, !tbaa !501, !alias.scope !6079, !noalias !6080
  %i.no = fmul <2 x double> %broadcast.splat, %wide.load
  %i.np = fmul <2 x double> %broadcast.splat, %wide.load76
  store <2 x double> %i.no, ptr %i.nm, align 8, !tbaa !501, !alias.scope !6079, !noalias !6080
  store <2 x double> %i.np, ptr %i.nn, align 8, !tbaa !501, !alias.scope !6079, !noalias !6080
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nq = icmp eq i64 %index.next, %n.vec
  br i1 %i.nq, label %middle.block, label %vector.body, !llvm.loop !6071

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
  %i.nr = load double, ptr %i.bm, align 8, !tbaa !501
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %indvars.iv.i.i.i.i.i.i.i23.prol ; 2 uses
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !501
  %i.nu = fmul double %i.nr, %i.nt
  store double %i.nu, ptr %i.ns, align 8, !tbaa !501
  %indvars.iv.next.i.i.i.i.i.i.i24.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i23.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !6072

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.i.i.i.i23.unr = phi i64 [ %indvars.iv.i.i.i.i.i.i.i23.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i24.prol, %scalar.ph.prol ]
  %i.nv = sub nsw i64 %indvars.iv.i.i.i.i.i.i.i23.ph, %wide.trip.count.i.i.i.i.i.i.i22
  %i.nw = icmp ugt i64 %i.nv, -4
  br i1 %i.nw, label %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i.i.i.i.i23 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i24.3, %scalar.ph ], [ %indvars.iv.i.i.i.i.i.i.i23.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.nx = load double, ptr %i.bm, align 8, !tbaa !501
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %indvars.iv.i.i.i.i.i.i.i23 ; 2 uses
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !501
  %i.oa = fmul double %i.nx, %i.nz
  store double %i.oa, ptr %i.ny, align 8, !tbaa !501
  %i.ob = load double, ptr %i.bm, align 8, !tbaa !501
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %indvars.iv.i.i.i.i.i.i.i23
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 8 ; 2 uses
  %i.oe = load double, ptr %i.od, align 8, !tbaa !501
  %i.of = fmul double %i.ob, %i.oe
  store double %i.of, ptr %i.od, align 8, !tbaa !501
  %i.og = load double, ptr %i.bm, align 8, !tbaa !501
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %indvars.iv.i.i.i.i.i.i.i23
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 16 ; 2 uses
  %i.oj = load double, ptr %i.oi, align 8, !tbaa !501
  %i.ok = fmul double %i.og, %i.oj
  store double %i.ok, ptr %i.oi, align 8, !tbaa !501
  %i.ol = load double, ptr %i.bm, align 8, !tbaa !501
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %indvars.iv.i.i.i.i.i.i.i23
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 24 ; 2 uses
  %i.oo = load double, ptr %i.on, align 8, !tbaa !501
  %i.op = fmul double %i.ol, %i.oo
  store double %i.op, ptr %i.on, align 8, !tbaa !501
  %indvars.iv.next.i.i.i.i.i.i.i24.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i23, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i25.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i24.3, %wide.trip.count.i.i.i.i.i.i.i22
  br i1 %exitcond.not.i.i.i.i.i.i.i25.3, label %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18, label %scalar.ph, !llvm.loop !6073

_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.y
  %indvars.iv.next.i.i.i.i.i.i19 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i17, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i20 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i19, %wide.trip.count.i.i.i.i.i.i16
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond.not.i.i.i.i.i.i20, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit26, label %bb.y, !llvm.loop !6064

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit26: ; preds = %_ZN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE9RowEditor5scaleIdEEvRKT_.exit.i.i.i.i.i.i18, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread
  %i.oq = add i8 %i.mp, -1
  %i.or = add nuw i8 %i.mo, 7
  %i.os = and i8 %i.or, 7
  br label %thread-pre-split33

thread-pre-split33:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit26
  %i.ot = phi i8 [ %i.oq, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit26 ], [ %i.ki, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.ou = phi i8 [ %i.os, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg19SparseStencilMatrixIdLj7EE10RowScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit26 ], [ %i.kj, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.ov = icmp eq i8 %i.ot, 0
  br i1 %i.ov, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit32, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %.noexc, %thread-pre-split33
  %i.ow = phi i8 [ %i.ma, %.noexc ], [ %i.bp, %thread-pre-split33 ]
  %i.ox = phi i8 [ %i.ly, %.noexc ], [ %i.ot, %thread-pre-split33 ]
  %i.oy = phi i8 [ %i.ky, %.noexc ], [ %i.ou, %thread-pre-split33 ]
  %i.oz = load ptr, ptr %3, align 8, !tbaa !769   ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 15
  %i.pb = load atomic i8, ptr %i.pa monotonic, align 1
  %i.pc = icmp eq i8 %i.pb, -1
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  %i.pe = load ptr, ptr %i.pd, align 8
  %.0.i.i = select i1 %i.pc, ptr %i.pe, ptr %i.oz
  %i.pf = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.pf, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit32, label %bb.f, !llvm.loop !6074

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit32: ; preds = %thread-pre-split33, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !756
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !757
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.w, align 8, !tbaa !760
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.x, align 8, !tbaa !560
  store ptr %4, ptr %i.l, align 32, !tbaa !2133
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
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
  call void @__clang_call_terminate(ptr %i.ac) #30
end_hunk_1
begin_hunk_2_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.t = atomicrmw sub ptr %i.s, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v)
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(128) %0, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.v = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !6081 ; 12 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.v, align 64, !tbaa !412
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ag, ptr noundef nonnull align 16 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !2131
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 96 ; 2 uses
  store ptr null, ptr %i.ah, align 32, !tbaa !2133
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
  %i.aq = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !6082 ; 6 uses
  %i.ar = load ptr, ptr %i.u, align 32, !tbaa !766
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !756
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 2, ptr %i.as, align 8, !tbaa !757
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.au = load i64, ptr %4, align 8, !tbaa !752
  store i64 %i.au, ptr %i.at, align 8, !tbaa !752
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i8 0, ptr %i.av, align 8, !tbaa !768
  store ptr %i.aq, ptr %i.u, align 32, !tbaa !2133
  store ptr %i.aq, ptr %i.ah, align 32, !tbaa !2133
  %i.aw = load ptr, ptr %3, align 8, !tbaa !769
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(128) %i.v, ptr noundef nonnull align 8 dereferenceable(128) %i.aw), !inline_history !6082
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
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !6083

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
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = icmp ult i32 %i.e, %i.c
  br i1 %i.k, label %.lr.ph.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 7 uses
  %i.n = load ptr, ptr %i.l, align 16, !tbaa !487 ; 8 uses
  %i.o = zext i32 %i.e to i64                     ; 6 uses
  %wide.trip.count.i.i.i.i.i.i = zext i32 %i.c to i64 ; 5 uses
  %i.p = sub nsw i64 %wide.trip.count.i.i.i.i.i.i, %i.o ; 3 uses
  %min.iters.check78 = icmp ult i64 %i.p, 8
  br i1 %min.iters.check78, label %scalar.ph77.preheader, label %vector.memcheck79

vector.memcheck79:                                ; preds = %.lr.ph.i.i.i.i.i.i
  %i.q = shl nuw nsw i64 %i.o, 3
  %i.r = getelementptr nuw i8, ptr %i.n, i64 %i.q
  %i.s = shl nuw nsw i64 %wide.trip.count.i.i.i.i.i.i, 3
  %i.t = getelementptr i8, ptr %i.n, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96
  %bound080 = icmp ult ptr %i.r, %i.u
  %bound181 = icmp ult ptr %i.m, %i.t
  %found.conflict82 = and i1 %bound080, %bound181
  br i1 %found.conflict82, label %scalar.ph77.preheader, label %vector.ph83

vector.ph83:                                      ; preds = %vector.memcheck79
  %n.vec84 = and i64 %i.p, -4                     ; 3 uses
  %i.v = add nsw i64 %n.vec84, %i.o
  %6 = load <1 x double>, ptr %i.m, align 8
  %broadcast.splat90 = shufflevector <1 x double> %6, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep99 = getelementptr [8 x i8], ptr %i.n, i64 %i.o
  br label %vector.body85

vector.body85:                                    ; preds = %vector.body85, %vector.ph83
  %index86 = phi i64 [ 0, %vector.ph83 ], [ %index.next91, %vector.body85 ] ; 2 uses
  %gep100 = getelementptr [8 x i8], ptr %invariant.gep99, i64 %index86 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %gep100, i64 16 ; 2 uses
  %wide.load87 = load <2 x double>, ptr %gep100, align 8, !tbaa !501, !alias.scope !6098, !noalias !6099
  %wide.load88 = load <2 x double>, ptr %i.w, align 8, !tbaa !501, !alias.scope !6098, !noalias !6099
  %i.x = fmul <2 x double> %broadcast.splat90, %wide.load87
  %i.y = fmul <2 x double> %broadcast.splat90, %wide.load88
  store <2 x double> %i.x, ptr %gep100, align 8, !tbaa !501, !alias.scope !6098, !noalias !6099
  store <2 x double> %i.y, ptr %i.w, align 8, !tbaa !501, !alias.scope !6098, !noalias !6099
  %index.next91 = add nuw i64 %index86, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next91, %n.vec84
  br i1 %i.z, label %middle.block92, label %vector.body85, !llvm.loop !6087

middle.block92:                                   ; preds = %vector.body85
  %cmp.n93 = icmp eq i64 %i.p, %n.vec84
  br i1 %cmp.n93, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %scalar.ph77.preheader

scalar.ph77.preheader:                            ; preds = %vector.memcheck79, %.lr.ph.i.i.i.i.i.i, %middle.block92
  %indvars.iv.i.i.i.i.i.i.ph = phi i64 [ %i.o, %vector.memcheck79 ], [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %middle.block92 ] ; 4 uses
  %i.aa = sub nsw i64 %wide.trip.count.i.i.i.i.i.i, %indvars.iv.i.i.i.i.i.i.ph
  %xtraiter96 = and i64 %i.aa, 3                  ; 2 uses
  %lcmp.mod97.not = icmp eq i64 %xtraiter96, 0
  br i1 %lcmp.mod97.not, label %scalar.ph77.prol.loopexit, label %scalar.ph77.prol

scalar.ph77.prol:                                 ; preds = %scalar.ph77.preheader, %scalar.ph77.prol
  %indvars.iv.i.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.prol, %scalar.ph77.prol ], [ %indvars.iv.i.i.i.i.i.i.ph, %scalar.ph77.preheader ] ; 2 uses
  %prol.iter98 = phi i64 [ %prol.iter98.next, %scalar.ph77.prol ], [ 0, %scalar.ph77.preheader ]
  %i.ab = load double, ptr %i.m, align 8, !tbaa !488
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.i.i.i.i.i.prol ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !501
  %i.ae = fmul double %i.ab, %i.ad
  store double %i.ae, ptr %i.ac, align 8, !tbaa !501
  %indvars.iv.next.i.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter98.next = add i64 %prol.iter98, 1     ; 2 uses
  %prol.iter98.cmp.not = icmp eq i64 %prol.iter98.next, %xtraiter96
  br i1 %prol.iter98.cmp.not, label %scalar.ph77.prol.loopexit, label %scalar.ph77.prol, !llvm.loop !6088

scalar.ph77.prol.loopexit:                        ; preds = %scalar.ph77.prol, %scalar.ph77.preheader
  %indvars.iv.i.i.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i.i.ph, %scalar.ph77.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.prol, %scalar.ph77.prol ]
  %i.af = sub nsw i64 %indvars.iv.i.i.i.i.i.i.ph, %wide.trip.count.i.i.i.i.i.i
  %i.ag = icmp ugt i64 %i.af, -4
  br i1 %i.ag, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %scalar.ph77

scalar.ph77:                                      ; preds = %scalar.ph77.prol.loopexit, %scalar.ph77
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.3, %scalar.ph77 ], [ %indvars.iv.i.i.i.i.i.i.unr, %scalar.ph77.prol.loopexit ] ; 5 uses
  %i.ah = load double, ptr %i.m, align 8, !tbaa !488
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.i.i.i.i.i ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !501
  %i.ak = fmul double %i.ah, %i.aj
  store double %i.ak, ptr %i.ai, align 8, !tbaa !501
  %i.al = load double, ptr %i.m, align 8, !tbaa !488
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !501
  %i.ap = fmul double %i.al, %i.ao
  store double %i.ap, ptr %i.an, align 8, !tbaa !501
  %i.aq = load double, ptr %i.m, align 8, !tbaa !488
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !501
  %i.au = fmul double %i.aq, %i.at
  store double %i.au, ptr %i.as, align 8, !tbaa !501
  %i.av = load double, ptr %i.m, align 8, !tbaa !488
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !501
  %i.az = fmul double %i.av, %i.ay
  store double %i.az, ptr %i.ax, align 8, !tbaa !501
  %indvars.iv.next.i.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.3, %wide.trip.count.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %scalar.ph77, !llvm.loop !6089

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 20 uses
  store i8 0, ptr %i.ba, align 1, !tbaa !437
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !737
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 116
  br label %bb.e

bb.e:                                             ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit, %bb.d
  %i.bh = phi i8 [ %i.od, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 0, %bb.d ] ; 3 uses
  %i.bi = phi i8 [ %i.oe, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 1, %bb.d ] ; 13 uses
  %i.bj = phi i8 [ %i.of, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 0, %bb.d ] ; 9 uses
  %i.bk = load i8, ptr %i.i, align 4, !tbaa !750  ; 10 uses
  %i.bl = icmp ult i8 %i.bi, 8
  br i1 %i.bl, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.phi.trans.insert.i = zext i8 %i.bj to i64
  %.phi.trans.insert6.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.phi.trans.insert.i
  %.pre.i = load i8, ptr %.phi.trans.insert6.i, align 1, !tbaa !437
  %i.bm = icmp ult i8 %.pre.i, %i.bk
  br i1 %i.bm, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.f:                                             ; preds = %bb.u
  %i.bn = icmp ult i8 %i.jx, %i.bk
  br i1 %i.bn, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1: ; preds = %bb.f
  %i.bo = zext nneg i8 %i.jl to i64               ; 2 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bo ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !478
  %i.bs = load i32, ptr %i.bp, align 8, !tbaa !476
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !477
  %i.bv = sub i32 %i.bs, %i.bu
  %i.bw = zext i32 %i.bv to i64
  %i.bx = icmp ult i64 %i.br, %i.bw
  br i1 %i.bx, label %bb.g, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.g:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1
  %i.by = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bo ; 2 uses
  %i.bz = add i8 %i.bj, 2
  %i.ca = and i8 %i.bz, 7                         ; 5 uses
  %i.cb = zext nneg i8 %i.ca to i64               ; 2 uses
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.cb ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false), !tbaa.struct !737
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !476 ; 2 uses
  store i32 %i.cd, ptr %i.bp, align 8, !tbaa !476
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !477 ; 2 uses
  %i.cg = sub i32 %i.cd, %i.cf
  %i.ch = lshr i32 %i.cg, 1
  %i.ci = add i32 %i.ch, %i.cf                    ; 2 uses
  store i32 %i.ci, ptr %i.cc, align 8, !tbaa !476
  store i32 %i.ci, ptr %i.bt, align 4, !tbaa !477
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !478
  store i64 %i.ck, ptr %i.bq, align 8, !tbaa !478
  %i.cl = load i8, ptr %i.by, align 1, !tbaa !437
  %i.cm = add i8 %i.cl, 1                         ; 3 uses
  store i8 %i.cm, ptr %i.by, align 1, !tbaa !437
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cb
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !437
  %i.co = add nuw nsw i8 %i.bi, 2                 ; 3 uses
  %exitcond.not.i.1 = icmp eq i8 %i.co, 8
  br i1 %exitcond.not.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.h, !llvm.loop !27

bb.h:                                             ; preds = %bb.g
  %i.cp = icmp ult i8 %i.cm, %i.bk
  br i1 %i.cp, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2: ; preds = %bb.h
  %i.cq = zext nneg i8 %i.ca to i64               ; 2 uses
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.cq ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !478
  %i.cu = load i32, ptr %i.cr, align 8, !tbaa !476
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 4 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !477
  %i.cx = sub i32 %i.cu, %i.cw
  %i.cy = zext i32 %i.cx to i64
  %i.cz = icmp ult i64 %i.ct, %i.cy
  br i1 %i.cz, label %bb.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.i:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2
  %i.da = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cq ; 2 uses
  %i.db = add i8 %i.bj, 3
  %i.dc = and i8 %i.db, 7                         ; 5 uses
  %i.dd = zext nneg i8 %i.dc to i64               ; 2 uses
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.dd ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i64 16, i1 false), !tbaa.struct !737
  %i.df = load i32, ptr %i.de, align 8, !tbaa !476 ; 2 uses
  store i32 %i.df, ptr %i.cr, align 8, !tbaa !476
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !477 ; 2 uses
  %i.di = sub i32 %i.df, %i.dh
  %i.dj = lshr i32 %i.di, 1
  %i.dk = add i32 %i.dj, %i.dh                    ; 2 uses
  store i32 %i.dk, ptr %i.de, align 8, !tbaa !476
  store i32 %i.dk, ptr %i.cv, align 4, !tbaa !477
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !478
  store i64 %i.dm, ptr %i.cs, align 8, !tbaa !478
  %i.dn = load i8, ptr %i.da, align 1, !tbaa !437
  %i.do = add i8 %i.dn, 1                         ; 3 uses
  store i8 %i.do, ptr %i.da, align 1, !tbaa !437
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.dd
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !437
  %i.dq = add nuw nsw i8 %i.bi, 3                 ; 3 uses
  %exitcond.not.i.2 = icmp eq i8 %i.dq, 8
  br i1 %exitcond.not.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.j, !llvm.loop !27

bb.j:                                             ; preds = %bb.i
  %i.dr = icmp ult i8 %i.do, %i.bk
  br i1 %i.dr, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3: ; preds = %bb.j
  %i.ds = zext nneg i8 %i.dc to i64               ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !477 ; 2 uses
  %i.iq = sub i32 %i.in, %i.ip
  %i.ir = lshr i32 %i.iq, 1
  %i.is = add i32 %i.ir, %i.ip                    ; 2 uses
  store i32 %i.is, ptr %i.im, align 8, !tbaa !476
  store i32 %i.is, ptr %i.if, align 4, !tbaa !477
  %i.it = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !478
  store i64 %i.iu, ptr %i.ic, align 8, !tbaa !478
  %i.iv = load i8, ptr %i.ik, align 1, !tbaa !437
  %i.iw = add i8 %i.iv, 1                         ; 2 uses
  store i8 %i.iw, ptr %i.ik, align 1, !tbaa !437
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.il
  store i8 %i.iw, ptr %i.ix, align 1, !tbaa !437
  %exitcond.not.i.7 = icmp eq i8 %i.bi, 0
  br i1 %exitcond.not.i.7, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.t, !llvm.loop !27

bb.t:                                             ; preds = %bb.s
  %i.iy = or disjoint i8 %i.bi, 8
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i: ; preds = %.lr.ph.i
  %i.iz = zext i8 %i.bj to i64                    ; 2 uses
  %i.ja = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.iz ; 5 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 2 uses
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !478
  %i.jd = load i32, ptr %i.ja, align 8, !tbaa !476
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 4 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !477
  %i.jg = sub i32 %i.jd, %i.jf
  %i.jh = zext i32 %i.jg to i64
  %i.ji = icmp ult i64 %i.jc, %i.jh
  br i1 %i.ji, label %bb.u, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.u:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.iz ; 2 uses
  %i.jk = add nuw i8 %i.bj, 1
  %i.jl = and i8 %i.jk, 7                         ; 5 uses
  %i.jm = zext nneg i8 %i.jl to i64               ; 2 uses
  %i.jn = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.jm ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jn, ptr noundef nonnull align 8 dereferenceable(16) %i.ja, i64 16, i1 false), !tbaa.struct !737
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !476 ; 2 uses
  store i32 %i.jo, ptr %i.ja, align 8, !tbaa !476
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 4
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !477 ; 2 uses
  %i.jr = sub i32 %i.jo, %i.jq
  %i.js = lshr i32 %i.jr, 1
  %i.jt = add i32 %i.js, %i.jq                    ; 2 uses
  store i32 %i.jt, ptr %i.jn, align 8, !tbaa !476
  store i32 %i.jt, ptr %i.je, align 4, !tbaa !477
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !478
  store i64 %i.jv, ptr %i.jb, align 8, !tbaa !478
  %i.jw = load i8, ptr %i.jj, align 1, !tbaa !437
  %i.jx = add i8 %i.jw, 1                         ; 3 uses
  store i8 %i.jx, ptr %i.jj, align 1, !tbaa !437
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.jm
  store i8 %i.jx, ptr %i.jy, align 1, !tbaa !437
  %i.jz = add nuw nsw i8 %i.bi, 1                 ; 3 uses
  %exitcond.not.i = icmp eq i8 %i.jz, 8
  br i1 %exitcond.not.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.f, !llvm.loop !27

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit: ; preds = %bb.f, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1, %bb.h, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2, %bb.j, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3, %bb.l, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4, %bb.n, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5, %bb.p, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6, %bb.r, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7, %bb.t, %.lr.ph.i, %bb.e
  %i.ka = phi i8 [ %i.bi, %bb.e ], [ %i.bi, %.lr.ph.i ], [ %i.bi, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i ], [ %i.jz, %bb.f ], [ %i.jz, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1 ], [ %i.co, %bb.h ], [ %i.co, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2 ], [ %i.dq, %bb.j ], [ %i.dq, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3 ], [ %i.es, %bb.l ], [ %i.es, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4 ], [ %i.fu, %bb.n ], [ %i.fu, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5 ], [ %i.gw, %bb.p ], [ %i.gw, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6 ], [ %i.hy, %bb.r ], [ %i.hy, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7 ], [ %i.iy, %bb.t ] ; 6 uses
  %i.kb = phi i8 [ %i.bj, %bb.e ], [ %i.bj, %.lr.ph.i ], [ %i.bj, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i ], [ %i.jl, %bb.f ], [ %i.jl, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1 ], [ %i.ca, %bb.h ], [ %i.ca, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2 ], [ %i.dc, %bb.j ], [ %i.dc, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3 ], [ %i.ee, %bb.l ], [ %i.ee, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.4 ], [ %i.fg, %bb.n ], [ %i.fg, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.5 ], [ %i.gi, %bb.p ], [ %i.gi, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.6 ], [ %i.hk, %bb.r ], [ %i.hk, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.7 ], [ %i.ed, %bb.t ] ; 6 uses
  %i.kc = load ptr, ptr %i.bc, align 32, !tbaa !2133
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  %i.ke = load atomic i8, ptr %i.kd monotonic, align 1, !range !517, !noundef !774
  %i.kf = trunc nuw i8 %i.ke to i1
  br i1 %i.kf, label %bb.v, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.u
  %.lcssa = phi i8 [ %i.jl, %bb.u ], [ %i.ca, %bb.g ], [ %i.dc, %bb.i ], [ %i.ee, %bb.k ], [ %i.fg, %bb.m ], [ %i.gi, %bb.o ], [ %i.hk, %bb.q ], [ %i.ed, %bb.s ] ; 2 uses
  %i.kg = load ptr, ptr %i.bc, align 32, !tbaa !2133
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  %i.ki = load atomic i8, ptr %i.kh monotonic, align 1, !range !517, !noundef !774
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %.thread65, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

.thread65:                                        ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread
  %i.kk = add i8 %i.bk, 1
  store i8 %i.kk, ptr %i.i, align 4, !tbaa !750
  br label %.noexc

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %i.kl = phi i8 [ %.lcssa, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread ], [ %i.kb, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit ] ; 2 uses
  %i.km = phi i8 [ 8, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread ], [ %i.ka, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit ]
  %.pre = zext i8 %i.kl to i64
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

bb.v:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %i.kn = add i8 %i.bk, 1                         ; 2 uses
  store i8 %i.kn, ptr %i.i, align 4, !tbaa !750
  %i.ko = icmp ugt i8 %i.ka, 1
  br i1 %i.ko, label %.noexc, label %bb.w

.noexc:                                           ; preds = %.thread65, %bb.v
  %i.kp = phi i8 [ 8, %.thread65 ], [ %i.ka, %bb.v ]
  %i.kq = phi i8 [ %.lcssa, %.thread65 ], [ %i.kb, %bb.v ]
  %i.kr = zext nneg i8 %i.bh to i64               ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.kr
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !437
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !736
  %i.ku = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !6090 ; 10 uses
  %i.kv = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.kr
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.kw, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.ku, align 64, !tbaa !412
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.kx, ptr noundef nonnull align 8 dereferenceable(16) %i.kv, i64 16, i1 false), !tbaa.struct !737
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ky, ptr noundef nonnull align 16 dereferenceable(16) %i.bd, i64 16, i1 false), !tbaa.struct !2131
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ku, i64 96 ; 2 uses
  store ptr null, ptr %i.kz, align 32, !tbaa !2133
  %i.la = getelementptr inbounds nuw i8, ptr %i.ku, i64 104
  %i.lb = load i64, ptr %i.bf, align 8, !tbaa !751
  %i.lc = lshr i64 %i.lb, 1                       ; 2 uses
  store i64 %i.lc, ptr %i.bf, align 8, !tbaa !751
  store i64 %i.lc, ptr %i.la, align 8, !tbaa !751
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ku, i64 112
  store i32 2, ptr %i.ld, align 16, !tbaa !749
  %i.le = getelementptr inbounds nuw i8, ptr %i.ku, i64 116
  %i.lf = load i8, ptr %i.bg, align 4, !tbaa !750
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ku, i64 120
  %i.lh = load i64, ptr %4, align 8, !tbaa !752
  store i64 %i.lh, ptr %i.lg, align 8, !tbaa !752
  %i.li = sub i8 %i.lf, %i.kt
  store i8 %i.li, ptr %i.le, align 4, !tbaa !750
  %i.lj = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !6090 ; 6 uses
  %i.lk = load ptr, ptr %i.bc, align 32, !tbaa !766
  store ptr %i.lk, ptr %i.lj, align 8, !tbaa !756
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  store i32 2, ptr %i.ll, align 8, !tbaa !757
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.ln = load i64, ptr %4, align 8, !tbaa !752
  store i64 %i.ln, ptr %i.lm, align 8, !tbaa !752
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  store i8 0, ptr %i.lo, align 8, !tbaa !768
  store ptr %i.lj, ptr %i.bc, align 32, !tbaa !2133
  store ptr %i.lj, ptr %i.kz, align 32, !tbaa !2133
  %i.lp = load ptr, ptr %3, align 8, !tbaa !769
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(128) %i.ku, ptr noundef nonnull align 8 dereferenceable(128) %i.lp), !inline_history !6090
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.lq = add i8 %i.kp, -1
  %i.lr = add nuw nsw i8 %i.bh, 1
  %i.ls = and i8 %i.lr, 7
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

bb.w:                                             ; preds = %bb.v
  %i.lt = zext i8 %i.kb to i64                    ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.lt
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !437
  %i.lw = icmp ult i8 %i.lv, %i.kn
  br i1 %i.lw, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit: ; preds = %bb.w
  %i.lx = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.lt ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !478
  %i.ma = load i32, ptr %i.lx, align 8, !tbaa !476
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 4
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !477
  %i.md = sub i32 %i.ma, %i.mc
  %i.me = zext i32 %i.md to i64
  %i.mf = icmp ult i64 %i.lz, %i.me
  br i1 %i.mf, label %thread-pre-split27, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.w, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit
  %i.mg = phi i8 [ %i.kl, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.kb, %bb.w ], [ %i.kb, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.mh = phi i8 [ %i.km, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.ka, %bb.w ], [ %i.ka, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %.pre-phi = phi i64 [ %.pre, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.lt, %bb.w ], [ %i.lt, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.mi = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.pre-phi ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !477 ; 2 uses
  %i.ml = load i32, ptr %i.mi, align 8, !tbaa !476 ; 2 uses
  %i.mm = icmp ult i32 %i.mk, %i.ml
  br i1 %i.mm, label %.lr.ph.i.i.i.i.i.i15, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit20

.lr.ph.i.i.i.i.i.i15:                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread
  %i.mn = load ptr, ptr %i.bd, align 16, !tbaa !487 ; 8 uses
  %i.mo = zext i32 %i.mk to i64                   ; 6 uses
  %wide.trip.count.i.i.i.i.i.i16 = zext i32 %i.ml to i64 ; 5 uses
  %i.mp = sub nsw i64 %wide.trip.count.i.i.i.i.i.i16, %i.mo ; 3 uses
  %min.iters.check = icmp ult i64 %i.mp, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i15
  %i.mq = shl nuw nsw i64 %i.mo, 3
  %scevgep = getelementptr nuw i8, ptr %i.mn, i64 %i.mq
  %i.mr = shl nuw nsw i64 %wide.trip.count.i.i.i.i.i.i16, 3
  %scevgep68 = getelementptr i8, ptr %i.mn, i64 %i.mr
  %bound0 = icmp ult ptr %scevgep, %i.bc
  %bound1 = icmp ult ptr %i.be, %scevgep68
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.mp, -4                      ; 3 uses
  %i.ms = add nsw i64 %n.vec, %i.mo
  %7 = load <1 x double>, ptr %i.be, align 8
  %broadcast.splat = shufflevector <1 x double> %7, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.mn, i64 %i.mo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !501, !alias.scope !6100, !noalias !6101
  %wide.load69 = load <2 x double>, ptr %i.mt, align 8, !tbaa !501, !alias.scope !6100, !noalias !6101
  %i.mu = fmul <2 x double> %broadcast.splat, %wide.load
  %i.mv = fmul <2 x double> %broadcast.splat, %wide.load69
  store <2 x double> %i.mu, ptr %gep, align 8, !tbaa !501, !alias.scope !6100, !noalias !6101
  store <2 x double> %i.mv, ptr %i.mt, align 8, !tbaa !501, !alias.scope !6100, !noalias !6101
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.mw = icmp eq i64 %index.next, %n.vec
  br i1 %i.mw, label %middle.block, label %vector.body, !llvm.loop !6094

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mp, %n.vec
  br i1 %cmp.n, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit20, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i15, %middle.block
  %indvars.iv.i.i.i.i.i.i17.ph = phi i64 [ %i.mo, %vector.memcheck ], [ %i.mo, %.lr.ph.i.i.i.i.i.i15 ], [ %i.ms, %middle.block ] ; 4 uses
  %i.mx = sub nsw i64 %wide.trip.count.i.i.i.i.i.i16, %indvars.iv.i.i.i.i.i.i17.ph
  %xtraiter = and i64 %i.mx, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.i.i.i17.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.i18.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.i.i.i17.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.my = load double, ptr %i.be, align 8, !tbaa !488
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %indvars.iv.i.i.i.i.i.i17.prol ; 2 uses
  %i.na = load double, ptr %i.mz, align 8, !tbaa !501
  %i.nb = fmul double %i.my, %i.na
  store double %i.nb, ptr %i.mz, align 8, !tbaa !501
  %indvars.iv.next.i.i.i.i.i.i18.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i17.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !6095

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.i.i.i17.unr = phi i64 [ %indvars.iv.i.i.i.i.i.i17.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.i.i18.prol, %scalar.ph.prol ]
  %i.nc = sub nsw i64 %indvars.iv.i.i.i.i.i.i17.ph, %wide.trip.count.i.i.i.i.i.i16
  %i.nd = icmp ugt i64 %i.nc, -4
  br i1 %i.nd, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit20, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i.i.i.i17 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i18.3, %scalar.ph ], [ %indvars.iv.i.i.i.i.i.i17.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ne = load double, ptr %i.be, align 8, !tbaa !488
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %indvars.iv.i.i.i.i.i.i17 ; 2 uses
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !501
  %i.nh = fmul double %i.ne, %i.ng
  store double %i.nh, ptr %i.nf, align 8, !tbaa !501
  %i.ni = load double, ptr %i.be, align 8, !tbaa !488
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %indvars.iv.i.i.i.i.i.i17
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8 ; 2 uses
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !501
  %i.nm = fmul double %i.ni, %i.nl
  store double %i.nm, ptr %i.nk, align 8, !tbaa !501
  %i.nn = load double, ptr %i.be, align 8, !tbaa !488
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %indvars.iv.i.i.i.i.i.i17
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 16 ; 2 uses
  %i.nq = load double, ptr %i.np, align 8, !tbaa !501
  %i.nr = fmul double %i.nn, %i.nq
  store double %i.nr, ptr %i.np, align 8, !tbaa !501
  %i.ns = load double, ptr %i.be, align 8, !tbaa !488
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %indvars.iv.i.i.i.i.i.i17
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 24 ; 2 uses
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !501
  %i.nw = fmul double %i.ns, %i.nv
  store double %i.nw, ptr %i.nu, align 8, !tbaa !501
  %indvars.iv.next.i.i.i.i.i.i18.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i17, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i19.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i18.3, %wide.trip.count.i.i.i.i.i.i16
  br i1 %exitcond.not.i.i.i.i.i.i19.3, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit20, label %scalar.ph, !llvm.loop !6096

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit20: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread
  %i.nx = add i8 %i.mh, -1
  %i.ny = add nuw i8 %i.mg, 7
  %i.nz = and i8 %i.ny, 7
  br label %thread-pre-split27

thread-pre-split27:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit20
  %i.oa = phi i8 [ %i.nx, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit20 ], [ %i.ka, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.ob = phi i8 [ %i.nz, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit20 ], [ %i.kb, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.oc = icmp eq i8 %i.oa, 0
  br i1 %i.oc, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit26, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %.noexc, %thread-pre-split27
  %i.od = phi i8 [ %i.ls, %.noexc ], [ %i.bh, %thread-pre-split27 ]
  %i.oe = phi i8 [ %i.lq, %.noexc ], [ %i.oa, %thread-pre-split27 ]
  %i.of = phi i8 [ %i.kq, %.noexc ], [ %i.ob, %thread-pre-split27 ]
  %i.og = load ptr, ptr %3, align 8, !tbaa !769   ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 15
  %i.oi = load atomic i8, ptr %i.oh monotonic, align 1
  %i.oj = icmp eq i8 %i.oi, -1
  %i.ok = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %i.ol = load ptr, ptr %i.ok, align 8
  %.0.i.i = select i1 %i.oj, ptr %i.ol, ptr %i.og
  %i.om = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.om, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit26, label %bb.e, !llvm.loop !6097

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit26: ; preds = %thread-pre-split27, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE7ScaleOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %scalar.ph77.prol.loopexit, %scalar.ph77, %middle.block92, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal6FillOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSB_RSD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal6FillOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSB_RSD_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !736
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 128)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal6FillOpIdEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !412
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !737
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !2131
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 2 uses
  store ptr null, ptr %i.l, align 32, !tbaa !2135
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
  store ptr %4, ptr %i.l, align 32, !tbaa !2135
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal6FillOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSB_RSD_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal6FillOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSB_RSD_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.z = load atomic i8, ptr %i.y monotonic, align 1
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal6FillOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSB_RSD_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #30
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal6FillOpIdEEKNS1_16auto_partitionerEE3runERKS4_RKSB_RSD_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
end_hunk_3
begin_hunk_4_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !501
  %i.az = fadd double %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv42.i.i.i.i.i.i
  store double %i.az, ptr %i.ba, align 8, !tbaa !501
  %indvars.iv.next43.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv42.i.i.i.i.i.i, 1 ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next43.i.i.i.i.i.i
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !501
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next43.i.i.i.i.i.i
  %i.be = load double, ptr %i.bd, align 8, !tbaa !501
  %i.bf = fadd double %i.bc, %i.be
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next43.i.i.i.i.i.i
  store double %i.bf, ptr %i.bg, align 8, !tbaa !501
  %indvars.iv.next43.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv42.i.i.i.i.i.i, 2 ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next43.i.i.i.i.i.i.1
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !501
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next43.i.i.i.i.i.i.1
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !501
  %i.bl = fadd double %i.bi, %i.bk
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next43.i.i.i.i.i.i.1
  store double %i.bl, ptr %i.bm, align 8, !tbaa !501
  %indvars.iv.next43.i.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv42.i.i.i.i.i.i, 3 ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next43.i.i.i.i.i.i.2
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !501
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next43.i.i.i.i.i.i.2
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !501
  %i.br = fadd double %i.bo, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next43.i.i.i.i.i.i.2
  store double %i.br, ptr %i.bs, align 8, !tbaa !501
  %indvars.iv.next43.i.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv42.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond46.not.i.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next43.i.i.i.i.i.i.3, %wide.trip.count45.i.i.i.i.i.i
  br i1 %exitcond46.not.i.i.i.i.i.i.3, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %scalar.ph221, !llvm.loop !6209

bb.e:                                             ; preds = %bb.c
  %i.bt = fcmp oeq double %i.l, -1.000000e+00
  %i.bu = icmp ult i32 %i.e, %i.c                 ; 2 uses
  br i1 %i.bt, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.bu, label %.lr.ph31.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

.lr.ph31.i.i.i.i.i.i:                             ; preds = %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !599 ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.by = load ptr, ptr %i.bx, align 32, !tbaa !600 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !601 ; 7 uses
  %i.cb = zext i32 %i.e to i64                    ; 5 uses
  %wide.trip.count40.i.i.i.i.i.i = zext i32 %i.c to i64 ; 4 uses
  %i.cc = sub nsw i64 %wide.trip.count40.i.i.i.i.i.i, %i.cb ; 3 uses
  %min.iters.check204 = icmp ult i64 %i.cc, 10
  br i1 %min.iters.check204, label %scalar.ph203.preheader, label %vector.memcheck199

vector.memcheck199:                               ; preds = %.lr.ph31.i.i.i.i.i.i
  %i.cd = ptrtoaddr ptr %i.ca to i64              ; 2 uses
  %i.ce = ptrtoaddr ptr %i.by to i64
  %i.cf = ptrtoaddr ptr %i.bw to i64
  %i.cg = sub i64 %i.cf, %i.cd
  %diff.check200 = icmp ugt i64 %i.cg, -32
  %i.ch = sub i64 %i.ce, %i.cd
  %diff.check201 = icmp ugt i64 %i.ch, -32
  %conflict.rdx202 = or i1 %diff.check200, %diff.check201
  br i1 %conflict.rdx202, label %scalar.ph203.preheader, label %vector.ph205

vector.ph205:                                     ; preds = %vector.memcheck199
  %n.vec206 = and i64 %i.cc, -4                   ; 3 uses
  %i.ci = add nsw i64 %n.vec206, %i.cb
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph205
  %index208 = phi i64 [ 0, %vector.ph205 ], [ %index.next213, %vector.body207 ] ; 2 uses
  %i.cj = add nuw i64 %index208, %i.cb            ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %wide.load209 = load <2 x double>, ptr %i.ck, align 8, !tbaa !501
  %wide.load210 = load <2 x double>, ptr %i.cl, align 8, !tbaa !501
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cj ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %wide.load211 = load <2 x double>, ptr %i.cm, align 8, !tbaa !501
  %wide.load212 = load <2 x double>, ptr %i.cn, align 8, !tbaa !501
  %i.co = fsub <2 x double> %wide.load211, %wide.load209
  %i.cp = fsub <2 x double> %wide.load212, %wide.load210
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cj ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store <2 x double> %i.co, ptr %i.cq, align 8, !tbaa !501
  store <2 x double> %i.cp, ptr %i.cr, align 8, !tbaa !501
  %index.next213 = add nuw i64 %index208, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next213, %n.vec206
  br i1 %i.cs, label %middle.block214, label %vector.body207, !llvm.loop !6210

middle.block214:                                  ; preds = %vector.body207
  %cmp.n215 = icmp eq i64 %i.cc, %n.vec206
  br i1 %cmp.n215, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %scalar.ph203.preheader

scalar.ph203.preheader:                           ; preds = %vector.memcheck199, %.lr.ph31.i.i.i.i.i.i, %middle.block214
  %indvars.iv37.i.i.i.i.i.i.ph = phi i64 [ %i.cb, %vector.memcheck199 ], [ %i.cb, %.lr.ph31.i.i.i.i.i.i ], [ %i.ci, %middle.block214 ] ; 4 uses
  %i.ct = sub nsw i64 %wide.trip.count40.i.i.i.i.i.i, %indvars.iv37.i.i.i.i.i.i.ph
  %xtraiter248 = and i64 %i.ct, 3                 ; 2 uses
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  br i1 %lcmp.mod249.not, label %scalar.ph203.prol.loopexit, label %scalar.ph203.prol

scalar.ph203.prol:                                ; preds = %scalar.ph203.preheader, %scalar.ph203.prol
  %indvars.iv37.i.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next38.i.i.i.i.i.i.prol, %scalar.ph203.prol ], [ %indvars.iv37.i.i.i.i.i.i.ph, %scalar.ph203.preheader ] ; 4 uses
  %prol.iter250 = phi i64 [ %prol.iter250.next, %scalar.ph203.prol ], [ 0, %scalar.ph203.preheader ]
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv37.i.i.i.i.i.i.prol
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !501
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv37.i.i.i.i.i.i.prol
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !501
  %i.cy = fsub double %i.cx, %i.cv
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv37.i.i.i.i.i.i.prol
  store double %i.cy, ptr %i.cz, align 8, !tbaa !501
  %indvars.iv.next38.i.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv37.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter250.next = add i64 %prol.iter250, 1   ; 2 uses
  %prol.iter250.cmp.not = icmp eq i64 %prol.iter250.next, %xtraiter248
  br i1 %prol.iter250.cmp.not, label %scalar.ph203.prol.loopexit, label %scalar.ph203.prol, !llvm.loop !6211

scalar.ph203.prol.loopexit:                       ; preds = %scalar.ph203.prol, %scalar.ph203.preheader
  %indvars.iv37.i.i.i.i.i.i.unr = phi i64 [ %indvars.iv37.i.i.i.i.i.i.ph, %scalar.ph203.preheader ], [ %indvars.iv.next38.i.i.i.i.i.i.prol, %scalar.ph203.prol ]
  %i.da = sub nsw i64 %indvars.iv37.i.i.i.i.i.i.ph, %wide.trip.count40.i.i.i.i.i.i
  %i.db = icmp ugt i64 %i.da, -4
  br i1 %i.db, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %scalar.ph203

scalar.ph203:                                     ; preds = %scalar.ph203.prol.loopexit, %scalar.ph203
  %indvars.iv37.i.i.i.i.i.i = phi i64 [ %indvars.iv.next38.i.i.i.i.i.i.3, %scalar.ph203 ], [ %indvars.iv37.i.i.i.i.i.i.unr, %scalar.ph203.prol.loopexit ] ; 7 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv37.i.i.i.i.i.i
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !501
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv37.i.i.i.i.i.i
  %i.df = load double, ptr %i.de, align 8, !tbaa !501
  %i.dg = fsub double %i.df, %i.dd
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv37.i.i.i.i.i.i
  store double %i.dg, ptr %i.dh, align 8, !tbaa !501
  %indvars.iv.next38.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv37.i.i.i.i.i.i, 1 ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.next38.i.i.i.i.i.i
  %i.dj = load double, ptr %i.di, align 8, !tbaa !501
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next38.i.i.i.i.i.i
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !501
  %i.dm = fsub double %i.dl, %i.dj
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.next38.i.i.i.i.i.i
  store double %i.dm, ptr %i.dn, align 8, !tbaa !501
  %indvars.iv.next38.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv37.i.i.i.i.i.i, 2 ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.next38.i.i.i.i.i.i.1
  %i.dp = load double, ptr %i.do, align 8, !tbaa !501
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next38.i.i.i.i.i.i.1
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !501
  %i.ds = fsub double %i.dr, %i.dp
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.next38.i.i.i.i.i.i.1
  store double %i.ds, ptr %i.dt, align 8, !tbaa !501
  %indvars.iv.next38.i.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv37.i.i.i.i.i.i, 3 ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.next38.i.i.i.i.i.i.2
  %i.dv = load double, ptr %i.du, align 8, !tbaa !501
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next38.i.i.i.i.i.i.2
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !501
  %i.dy = fsub double %i.dx, %i.dv
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.next38.i.i.i.i.i.i.2
  store double %i.dy, ptr %i.dz, align 8, !tbaa !501
  %indvars.iv.next38.i.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv37.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond41.not.i.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next38.i.i.i.i.i.i.3, %wide.trip.count40.i.i.i.i.i.i
  br i1 %exitcond41.not.i.i.i.i.i.i.3, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %scalar.ph203, !llvm.loop !6212

bb.g:                                             ; preds = %bb.e
  br i1 %i.bu, label %.lr.ph.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.g
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !599 ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ed = load ptr, ptr %i.ec, align 32, !tbaa !600 ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !601 ; 6 uses
  %i.eg = zext i32 %i.e to i64                    ; 6 uses
  %wide.trip.count.i.i.i.i.i.i = zext i32 %i.c to i64 ; 5 uses
  %i.eh = sub nsw i64 %wide.trip.count.i.i.i.i.i.i, %i.eg ; 3 uses
  %min.iters.check172 = icmp ult i64 %i.eh, 14
  br i1 %min.iters.check172, label %scalar.ph171.preheader, label %vector.memcheck173

vector.memcheck173:                               ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ei = shl nuw nsw i64 %i.eg, 3                ; 3 uses
  %i.ej = getelementptr nuw i8, ptr %i.ef, i64 %i.ei ; 3 uses
  %i.ek = shl nuw nsw i64 %wide.trip.count.i.i.i.i.i.i, 3 ; 3 uses
  %i.el = getelementptr i8, ptr %i.ef, i64 %i.ek  ; 3 uses
  %i.em = getelementptr nuw i8, ptr %i.eb, i64 %i.ei
  %i.en = getelementptr i8, ptr %i.eb, i64 %i.ek
  %i.eo = getelementptr nuw i8, ptr %i.ed, i64 %i.ei
  %i.ep = getelementptr i8, ptr %i.ed, i64 %i.ek
  %bound0174 = icmp ult ptr %i.ej, %i.ea
  %bound1175 = icmp ult ptr %i.k, %i.el
  %found.conflict176 = and i1 %bound0174, %bound1175
  %bound0177 = icmp ult ptr %i.ej, %i.en
  %bound1178 = icmp ult ptr %i.em, %i.el
  %found.conflict179 = and i1 %bound0177, %bound1178
  %conflict.rdx180 = or i1 %found.conflict176, %found.conflict179
  %bound0181 = icmp ult ptr %i.ej, %i.ep
  %bound1182 = icmp ult ptr %i.eo, %i.el
  %found.conflict183 = and i1 %bound0181, %bound1182
  %conflict.rdx184 = or i1 %conflict.rdx180, %found.conflict183
  br i1 %conflict.rdx184, label %scalar.ph171.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %vector.memcheck173
  %n.vec186 = and i64 %i.eh, -4                   ; 3 uses
  %i.eq = add nsw i64 %n.vec186, %i.eg
  %6 = load <1 x double>, ptr %i.k, align 16
  %broadcast.splat194 = shufflevector <1 x double> %6, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph185
  %index188 = phi i64 [ 0, %vector.ph185 ], [ %index.next195, %vector.body187 ] ; 2 uses
  %i.er = add nuw i64 %index188, %i.eg            ; 3 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.er ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %wide.load189 = load <2 x double>, ptr %i.es, align 8, !tbaa !501, !alias.scope !6235
  %wide.load190 = load <2 x double>, ptr %i.et, align 8, !tbaa !501, !alias.scope !6235
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.er ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load191 = load <2 x double>, ptr %i.eu, align 8, !tbaa !501, !alias.scope !6236
  %wide.load192 = load <2 x double>, ptr %i.ev, align 8, !tbaa !501, !alias.scope !6236
  %i.ew = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat194, <2 x double> %wide.load189, <2 x double> %wide.load191)
  %i.ex = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat194, <2 x double> %wide.load190, <2 x double> %wide.load192)
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.er ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store <2 x double> %i.ew, ptr %i.ey, align 8, !tbaa !501, !alias.scope !6237, !noalias !6238
  store <2 x double> %i.ex, ptr %i.ez, align 8, !tbaa !501, !alias.scope !6237, !noalias !6238
  %index.next195 = add nuw i64 %index188, 4       ; 2 uses
  %i.fa = icmp eq i64 %index.next195, %n.vec186
  br i1 %i.fa, label %middle.block196, label %vector.body187, !llvm.loop !6218

middle.block196:                                  ; preds = %vector.body187
  %cmp.n197 = icmp eq i64 %i.eh, %n.vec186
  br i1 %cmp.n197, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %scalar.ph171.preheader

scalar.ph171.preheader:                           ; preds = %vector.memcheck173, %.lr.ph.i.i.i.i.i.i, %middle.block196
  %indvars.iv.i.i.i.i.i.i.ph = phi i64 [ %i.eg, %vector.memcheck173 ], [ %i.eg, %.lr.ph.i.i.i.i.i.i ], [ %i.eq, %middle.block196 ] ; 7 uses
  %i.fb = sub nsw i64 %wide.trip.count.i.i.i.i.i.i, %indvars.iv.i.i.i.i.i.i.ph
  %xtraiter245 = and i64 %i.fb, 1
  %lcmp.mod246.not = icmp eq i64 %xtraiter245, 0
  br i1 %lcmp.mod246.not, label %scalar.ph171.prol.loopexit, label %scalar.ph171.prol

scalar.ph171.prol:                                ; preds = %scalar.ph171.preheader
  %i.fc = load double, ptr %i.k, align 16, !tbaa !598
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.i.i.i.i.i.i.ph
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !501
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv.i.i.i.i.i.i.ph
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !501
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.fe, double %i.fg)
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.i.i.i.i.i.i.ph
  store double %i.fh, ptr %i.fi, align 8, !tbaa !501
  %indvars.iv.next.i.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.ph, 1
  br label %scalar.ph171.prol.loopexit

scalar.ph171.prol.loopexit:                       ; preds = %scalar.ph171.prol, %scalar.ph171.preheader
  %indvars.iv.i.i.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i.i.ph, %scalar.ph171.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.prol, %scalar.ph171.prol ]
  %i.fj = add nsw i64 %wide.trip.count.i.i.i.i.i.i, -1
  %i.fk = icmp eq i64 %indvars.iv.i.i.i.i.i.i.ph, %i.fj
  br i1 %i.fk, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %scalar.ph171

scalar.ph171:                                     ; preds = %scalar.ph171.prol.loopexit, %scalar.ph171
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.1, %scalar.ph171 ], [ %indvars.iv.i.i.i.i.i.i.unr, %scalar.ph171.prol.loopexit ] ; 5 uses
  %i.fl = load double, ptr %i.k, align 16, !tbaa !598
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.i.i.i.i.i.i
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !501
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv.i.i.i.i.i.i
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !501
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.fl, double %i.fn, double %i.fp)
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.i.i.i.i.i.i
  store double %i.fq, ptr %i.fr, align 8, !tbaa !501
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 3 uses
  %i.fs = load double, ptr %i.k, align 16, !tbaa !598
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !501
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !501
  %i.fx = tail call double @llvm.fmuladd.f64(double %i.fs, double %i.fu, double %i.fw)
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.next.i.i.i.i.i.i
  store double %i.fx, ptr %i.fy, align 8, !tbaa !501
  %indvars.iv.next.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.1, %wide.trip.count.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %scalar.ph171, !llvm.loop !6219

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 20 uses
  store i8 0, ptr %i.fz, align 1, !tbaa !437
  %i.ga = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ga, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !737
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 7 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 132
  br label %bb.i

bb.i:                                             ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit, %bb.h
  %i.gi = phi i8 [ %i.xv, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 0, %bb.h ] ; 3 uses
  %i.gj = phi i8 [ %i.xw, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 1, %bb.h ] ; 13 uses
  %i.gk = phi i8 [ %i.xx, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 0, %bb.h ] ; 9 uses
  %i.gl = load i8, ptr %i.i, align 4, !tbaa !750  ; 10 uses
  %i.gm = icmp ult i8 %i.gj, 8
  br i1 %i.gm, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.i
  %.phi.trans.insert.i = zext i8 %i.gk to i64
  %.phi.trans.insert6.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.phi.trans.insert.i
  %.pre.i = load i8, ptr %.phi.trans.insert6.i, align 1, !tbaa !437
  %i.gn = icmp ult i8 %.pre.i, %i.gl
  br i1 %i.gn, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.j:                                             ; preds = %bb.y
  %i.go = icmp ult i8 %i.oy, %i.gl
  br i1 %i.go, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1: ; preds = %bb.j
  %i.gp = zext nneg i8 %i.om to i64               ; 2 uses
  %i.gq = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %i.gp ; 5 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !478
  %i.gt = load i32, ptr %i.gq, align 8, !tbaa !476
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 4 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !477
  %i.gw = sub i32 %i.gt, %i.gv
  %i.gx = zext i32 %i.gw to i64
  %i.gy = icmp ult i64 %i.gs, %i.gx
  br i1 %i.gy, label %bb.k, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.k:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.1
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.gp ; 2 uses
  %i.ha = add i8 %i.gk, 2
  %i.hb = and i8 %i.ha, 7                         ; 5 uses
  %i.hc = zext nneg i8 %i.hb to i64               ; 2 uses
  %i.hd = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %i.hc ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hd, ptr noundef nonnull align 8 dereferenceable(16) %i.gq, i64 16, i1 false), !tbaa.struct !737
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !476 ; 2 uses
  store i32 %i.he, ptr %i.gq, align 8, !tbaa !476
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !477 ; 2 uses
  %i.hh = sub i32 %i.he, %i.hg
  %i.hi = lshr i32 %i.hh, 1
  %i.hj = add i32 %i.hi, %i.hg                    ; 2 uses
  store i32 %i.hj, ptr %i.hd, align 8, !tbaa !476
  store i32 %i.hj, ptr %i.gu, align 4, !tbaa !477
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !478
  store i64 %i.hl, ptr %i.gr, align 8, !tbaa !478
  %i.hm = load i8, ptr %i.gz, align 1, !tbaa !437
  %i.hn = add i8 %i.hm, 1                         ; 3 uses
  store i8 %i.hn, ptr %i.gz, align 1, !tbaa !437
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.hc
  store i8 %i.hn, ptr %i.ho, align 1, !tbaa !437
  %i.hp = add nuw nsw i8 %i.gj, 2                 ; 3 uses
  %exitcond.not.i.1 = icmp eq i8 %i.hp, 8
  br i1 %exitcond.not.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.l, !llvm.loop !27

bb.l:                                             ; preds = %bb.k
  %i.hq = icmp ult i8 %i.hn, %i.gl
  br i1 %i.hq, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2: ; preds = %bb.l
  %i.hr = zext nneg i8 %i.hb to i64               ; 2 uses
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %i.hr ; 5 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !478
  %i.hv = load i32, ptr %i.hs, align 8, !tbaa !476
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 4 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !477
  %i.hy = sub i32 %i.hv, %i.hx
  %i.hz = zext i32 %i.hy to i64
  %i.ia = icmp ult i64 %i.hu, %i.hz
  br i1 %i.ia, label %bb.m, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

bb.m:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.2
  %i.ib = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.hr ; 2 uses
  %i.ic = add i8 %i.gk, 3
  %i.id = and i8 %i.ic, 7                         ; 5 uses
  %i.ie = zext nneg i8 %i.id to i64               ; 2 uses
  %i.if = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %i.ie ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.if, ptr noundef nonnull align 8 dereferenceable(16) %i.hs, i64 16, i1 false), !tbaa.struct !737
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !476 ; 2 uses
  store i32 %i.ig, ptr %i.hs, align 8, !tbaa !476
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !477 ; 2 uses
  %i.ij = sub i32 %i.ig, %i.ii
  %i.ik = lshr i32 %i.ij, 1
  %i.il = add i32 %i.ik, %i.ii                    ; 2 uses
  store i32 %i.il, ptr %i.if, align 8, !tbaa !476
  store i32 %i.il, ptr %i.hw, align 4, !tbaa !477
  %i.im = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.in = load i64, ptr %i.im, align 8, !tbaa !478
  store i64 %i.in, ptr %i.ht, align 8, !tbaa !478
  %i.io = load i8, ptr %i.ib, align 1, !tbaa !437
  %i.ip = add i8 %i.io, 1                         ; 3 uses
  store i8 %i.ip, ptr %i.ib, align 1, !tbaa !437
  %i.iq = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.ie
  store i8 %i.ip, ptr %i.iq, align 1, !tbaa !437
  %i.ir = add nuw nsw i8 %i.gj, 3                 ; 3 uses
  %exitcond.not.i.2 = icmp eq i8 %i.ir, 8
  br i1 %exitcond.not.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, label %bb.n, !llvm.loop !27

bb.n:                                             ; preds = %bb.m
  %i.is = icmp ult i8 %i.ip, %i.gl
  br i1 %i.is, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.i.3: ; preds = %bb.n
end_hunk_4
begin_hunk_5_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %indvars.iv42.i.i.i.i.i.i27
  %i.sv = load double, ptr %i.su, align 8, !tbaa !501
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %indvars.iv42.i.i.i.i.i.i27
  %i.sx = load double, ptr %i.sw, align 8, !tbaa !501
  %i.sy = fadd double %i.sv, %i.sx
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.rs, i64 %indvars.iv42.i.i.i.i.i.i27
  store double %i.sy, ptr %i.sz, align 8, !tbaa !501
  %indvars.iv.next43.i.i.i.i.i.i28 = add nuw nsw i64 %indvars.iv42.i.i.i.i.i.i27, 1 ; 3 uses
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %indvars.iv.next43.i.i.i.i.i.i28
  %i.tb = load double, ptr %i.ta, align 8, !tbaa !501
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %indvars.iv.next43.i.i.i.i.i.i28
  %i.td = load double, ptr %i.tc, align 8, !tbaa !501
  %i.te = fadd double %i.tb, %i.td
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.rs, i64 %indvars.iv.next43.i.i.i.i.i.i28
  store double %i.te, ptr %i.tf, align 8, !tbaa !501
  %indvars.iv.next43.i.i.i.i.i.i28.1 = add nuw nsw i64 %indvars.iv42.i.i.i.i.i.i27, 2 ; 3 uses
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %indvars.iv.next43.i.i.i.i.i.i28.1
  %i.th = load double, ptr %i.tg, align 8, !tbaa !501
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %indvars.iv.next43.i.i.i.i.i.i28.1
  %i.tj = load double, ptr %i.ti, align 8, !tbaa !501
  %i.tk = fadd double %i.th, %i.tj
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.rs, i64 %indvars.iv.next43.i.i.i.i.i.i28.1
  store double %i.tk, ptr %i.tl, align 8, !tbaa !501
  %indvars.iv.next43.i.i.i.i.i.i28.2 = add nuw nsw i64 %indvars.iv42.i.i.i.i.i.i27, 3 ; 3 uses
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %indvars.iv.next43.i.i.i.i.i.i28.2
  %i.tn = load double, ptr %i.tm, align 8, !tbaa !501
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %indvars.iv.next43.i.i.i.i.i.i28.2
  %i.tp = load double, ptr %i.to, align 8, !tbaa !501
  %i.tq = fadd double %i.tn, %i.tp
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.rs, i64 %indvars.iv.next43.i.i.i.i.i.i28.2
  store double %i.tq, ptr %i.tr, align 8, !tbaa !501
  %indvars.iv.next43.i.i.i.i.i.i28.3 = add nuw nsw i64 %indvars.iv42.i.i.i.i.i.i27, 4 ; 2 uses
  %exitcond46.not.i.i.i.i.i.i29.3 = icmp eq i64 %indvars.iv.next43.i.i.i.i.i.i28.3, %wide.trip.count45.i.i.i.i.i.i26
  br i1 %exitcond46.not.i.i.i.i.i.i29.3, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30, label %scalar.ph, !llvm.loop !6223

bb.ac:                                            ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread
  %i.ts = fcmp oeq double %i.rk, -1.000000e+00
  %i.tt = getelementptr inbounds nuw i8, ptr %i.rj, i64 4
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !477 ; 3 uses
  %i.tv = load i32, ptr %i.rj, align 8, !tbaa !476 ; 3 uses
  %i.tw = icmp ult i32 %i.tu, %i.tv               ; 2 uses
  br i1 %i.ts, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.tw, label %.lr.ph31.i.i.i.i.i.i20, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30

.lr.ph31.i.i.i.i.i.i20:                           ; preds = %bb.ad
  %i.tx = load ptr, ptr %i.gd, align 8, !tbaa !599 ; 7 uses
  %i.ty = load ptr, ptr %i.ge, align 32, !tbaa !600 ; 7 uses
  %i.tz = load ptr, ptr %i.gf, align 8, !tbaa !601 ; 7 uses
  %i.ua = zext i32 %i.tu to i64                   ; 5 uses
  %wide.trip.count40.i.i.i.i.i.i21 = zext i32 %i.tv to i64 ; 4 uses
  %i.ub = sub nsw i64 %wide.trip.count40.i.i.i.i.i.i21, %i.ua ; 3 uses
  %min.iters.check112 = icmp ult i64 %i.ub, 6
  br i1 %min.iters.check112, label %scalar.ph111.preheader, label %vector.memcheck107

vector.memcheck107:                               ; preds = %.lr.ph31.i.i.i.i.i.i20
  %i.uc = ptrtoaddr ptr %i.tz to i64              ; 2 uses
  %i.ud = ptrtoaddr ptr %i.ty to i64
  %i.ue = ptrtoaddr ptr %i.tx to i64
  %i.uf = sub i64 %i.ue, %i.uc
  %diff.check108 = icmp ugt i64 %i.uf, -32
  %i.ug = sub i64 %i.ud, %i.uc
  %diff.check109 = icmp ugt i64 %i.ug, -32
  %conflict.rdx110 = or i1 %diff.check108, %diff.check109
  br i1 %conflict.rdx110, label %scalar.ph111.preheader, label %vector.ph113

vector.ph113:                                     ; preds = %vector.memcheck107
  %n.vec114 = and i64 %i.ub, -4                   ; 3 uses
  %i.uh = add nsw i64 %n.vec114, %i.ua
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph113
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next121, %vector.body115 ] ; 2 uses
  %i.ui = add nuw i64 %index116, %i.ua            ; 3 uses
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %i.ui ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 16
  %wide.load117 = load <2 x double>, ptr %i.uj, align 8, !tbaa !501
  %wide.load118 = load <2 x double>, ptr %i.uk, align 8, !tbaa !501
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %i.ui ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 16
  %wide.load119 = load <2 x double>, ptr %i.ul, align 8, !tbaa !501
  %wide.load120 = load <2 x double>, ptr %i.um, align 8, !tbaa !501
  %i.un = fsub <2 x double> %wide.load119, %wide.load117
  %i.uo = fsub <2 x double> %wide.load120, %wide.load118
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %i.ui ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  store <2 x double> %i.un, ptr %i.up, align 8, !tbaa !501
  store <2 x double> %i.uo, ptr %i.uq, align 8, !tbaa !501
  %index.next121 = add nuw i64 %index116, 4       ; 2 uses
  %i.ur = icmp eq i64 %index.next121, %n.vec114
  br i1 %i.ur, label %middle.block122, label %vector.body115, !llvm.loop !6224

middle.block122:                                  ; preds = %vector.body115
  %cmp.n123 = icmp eq i64 %i.ub, %n.vec114
  br i1 %cmp.n123, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30, label %scalar.ph111.preheader

scalar.ph111.preheader:                           ; preds = %vector.memcheck107, %.lr.ph31.i.i.i.i.i.i20, %middle.block122
  %indvars.iv37.i.i.i.i.i.i22.ph = phi i64 [ %i.ua, %vector.memcheck107 ], [ %i.ua, %.lr.ph31.i.i.i.i.i.i20 ], [ %i.uh, %middle.block122 ] ; 4 uses
  %i.us = sub nsw i64 %wide.trip.count40.i.i.i.i.i.i21, %indvars.iv37.i.i.i.i.i.i22.ph
  %xtraiter240 = and i64 %i.us, 3                 ; 2 uses
  %lcmp.mod241.not = icmp eq i64 %xtraiter240, 0
  br i1 %lcmp.mod241.not, label %scalar.ph111.prol.loopexit, label %scalar.ph111.prol

scalar.ph111.prol:                                ; preds = %scalar.ph111.preheader, %scalar.ph111.prol
  %indvars.iv37.i.i.i.i.i.i22.prol = phi i64 [ %indvars.iv.next38.i.i.i.i.i.i23.prol, %scalar.ph111.prol ], [ %indvars.iv37.i.i.i.i.i.i22.ph, %scalar.ph111.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph111.prol ], [ 0, %scalar.ph111.preheader ]
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %indvars.iv37.i.i.i.i.i.i22.prol
  %i.uu = load double, ptr %i.ut, align 8, !tbaa !501
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %indvars.iv37.i.i.i.i.i.i22.prol
  %i.uw = load double, ptr %i.uv, align 8, !tbaa !501
  %i.ux = fsub double %i.uw, %i.uu
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %indvars.iv37.i.i.i.i.i.i22.prol
  store double %i.ux, ptr %i.uy, align 8, !tbaa !501
  %indvars.iv.next38.i.i.i.i.i.i23.prol = add nuw nsw i64 %indvars.iv37.i.i.i.i.i.i22.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter240
  br i1 %prol.iter.cmp.not, label %scalar.ph111.prol.loopexit, label %scalar.ph111.prol, !llvm.loop !6225

scalar.ph111.prol.loopexit:                       ; preds = %scalar.ph111.prol, %scalar.ph111.preheader
  %indvars.iv37.i.i.i.i.i.i22.unr = phi i64 [ %indvars.iv37.i.i.i.i.i.i22.ph, %scalar.ph111.preheader ], [ %indvars.iv.next38.i.i.i.i.i.i23.prol, %scalar.ph111.prol ]
  %i.uz = sub nsw i64 %indvars.iv37.i.i.i.i.i.i22.ph, %wide.trip.count40.i.i.i.i.i.i21
  %i.va = icmp ugt i64 %i.uz, -4
  br i1 %i.va, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30, label %scalar.ph111

scalar.ph111:                                     ; preds = %scalar.ph111.prol.loopexit, %scalar.ph111
  %indvars.iv37.i.i.i.i.i.i22 = phi i64 [ %indvars.iv.next38.i.i.i.i.i.i23.3, %scalar.ph111 ], [ %indvars.iv37.i.i.i.i.i.i22.unr, %scalar.ph111.prol.loopexit ] ; 7 uses
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %indvars.iv37.i.i.i.i.i.i22
  %i.vc = load double, ptr %i.vb, align 8, !tbaa !501
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %indvars.iv37.i.i.i.i.i.i22
  %i.ve = load double, ptr %i.vd, align 8, !tbaa !501
  %i.vf = fsub double %i.ve, %i.vc
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %indvars.iv37.i.i.i.i.i.i22
  store double %i.vf, ptr %i.vg, align 8, !tbaa !501
  %indvars.iv.next38.i.i.i.i.i.i23 = add nuw nsw i64 %indvars.iv37.i.i.i.i.i.i22, 1 ; 3 uses
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %indvars.iv.next38.i.i.i.i.i.i23
  %i.vi = load double, ptr %i.vh, align 8, !tbaa !501
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %indvars.iv.next38.i.i.i.i.i.i23
  %i.vk = load double, ptr %i.vj, align 8, !tbaa !501
  %i.vl = fsub double %i.vk, %i.vi
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %indvars.iv.next38.i.i.i.i.i.i23
  store double %i.vl, ptr %i.vm, align 8, !tbaa !501
  %indvars.iv.next38.i.i.i.i.i.i23.1 = add nuw nsw i64 %indvars.iv37.i.i.i.i.i.i22, 2 ; 3 uses
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %indvars.iv.next38.i.i.i.i.i.i23.1
  %i.vo = load double, ptr %i.vn, align 8, !tbaa !501
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %indvars.iv.next38.i.i.i.i.i.i23.1
  %i.vq = load double, ptr %i.vp, align 8, !tbaa !501
  %i.vr = fsub double %i.vq, %i.vo
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %indvars.iv.next38.i.i.i.i.i.i23.1
  store double %i.vr, ptr %i.vs, align 8, !tbaa !501
  %indvars.iv.next38.i.i.i.i.i.i23.2 = add nuw nsw i64 %indvars.iv37.i.i.i.i.i.i22, 3 ; 3 uses
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %indvars.iv.next38.i.i.i.i.i.i23.2
  %i.vu = load double, ptr %i.vt, align 8, !tbaa !501
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %indvars.iv.next38.i.i.i.i.i.i23.2
  %i.vw = load double, ptr %i.vv, align 8, !tbaa !501
  %i.vx = fsub double %i.vw, %i.vu
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %indvars.iv.next38.i.i.i.i.i.i23.2
  store double %i.vx, ptr %i.vy, align 8, !tbaa !501
  %indvars.iv.next38.i.i.i.i.i.i23.3 = add nuw nsw i64 %indvars.iv37.i.i.i.i.i.i22, 4 ; 2 uses
  %exitcond41.not.i.i.i.i.i.i24.3 = icmp eq i64 %indvars.iv.next38.i.i.i.i.i.i23.3, %wide.trip.count40.i.i.i.i.i.i21
  br i1 %exitcond41.not.i.i.i.i.i.i24.3, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30, label %scalar.ph111, !llvm.loop !6226

bb.ae:                                            ; preds = %bb.ac
  br i1 %i.tw, label %.lr.ph.i.i.i.i.i.i15, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30

.lr.ph.i.i.i.i.i.i15:                             ; preds = %bb.ae
  %i.vz = load ptr, ptr %i.gd, align 8, !tbaa !599 ; 6 uses
  %i.wa = load ptr, ptr %i.ge, align 32, !tbaa !600 ; 6 uses
  %i.wb = load ptr, ptr %i.gf, align 8, !tbaa !601 ; 6 uses
  %i.wc = zext i32 %i.tu to i64                   ; 6 uses
  %wide.trip.count.i.i.i.i.i.i16 = zext i32 %i.tv to i64 ; 5 uses
  %i.wd = sub nsw i64 %wide.trip.count.i.i.i.i.i.i16, %i.wc ; 3 uses
  %min.iters.check140 = icmp ult i64 %i.wd, 6
  br i1 %min.iters.check140, label %scalar.ph139.preheader, label %vector.memcheck125

vector.memcheck125:                               ; preds = %.lr.ph.i.i.i.i.i.i15
  %i.we = shl nuw nsw i64 %i.wc, 3                ; 3 uses
  %scevgep = getelementptr nuw i8, ptr %i.wb, i64 %i.we ; 3 uses
  %i.wf = shl nuw nsw i64 %wide.trip.count.i.i.i.i.i.i16, 3 ; 3 uses
  %scevgep126 = getelementptr i8, ptr %i.wb, i64 %i.wf ; 3 uses
  %scevgep127 = getelementptr nuw i8, ptr %i.vz, i64 %i.we
  %scevgep128 = getelementptr i8, ptr %i.vz, i64 %i.wf
  %scevgep129 = getelementptr nuw i8, ptr %i.wa, i64 %i.we
  %scevgep130 = getelementptr i8, ptr %i.wa, i64 %i.wf
  %bound0 = icmp ult ptr %scevgep, %i.gd
  %bound1 = icmp ult ptr %i.gc, %scevgep126
  %found.conflict = and i1 %bound0, %bound1
  %bound0131 = icmp ult ptr %scevgep, %scevgep128
  %bound1132 = icmp ult ptr %scevgep127, %scevgep126
  %found.conflict133 = and i1 %bound0131, %bound1132
  %conflict.rdx134 = or i1 %found.conflict, %found.conflict133
  %bound0135 = icmp ult ptr %scevgep, %scevgep130
  %bound1136 = icmp ult ptr %scevgep129, %scevgep126
  %found.conflict137 = and i1 %bound0135, %bound1136
  %conflict.rdx138 = or i1 %conflict.rdx134, %found.conflict137
  br i1 %conflict.rdx138, label %scalar.ph139.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %vector.memcheck125
  %n.vec142 = and i64 %i.wd, -4                   ; 3 uses
  %i.wg = add nsw i64 %n.vec142, %i.wc
  %7 = load <1 x double>, ptr %i.gc, align 16
  %broadcast.splat = shufflevector <1 x double> %7, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next149, %vector.body143 ] ; 2 uses
  %i.wh = add nuw i64 %index144, %i.wc            ; 3 uses
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.vz, i64 %i.wh ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  %wide.load145 = load <2 x double>, ptr %i.wi, align 8, !tbaa !501, !alias.scope !6239
  %wide.load146 = load <2 x double>, ptr %i.wj, align 8, !tbaa !501, !alias.scope !6239
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %i.wa, i64 %i.wh ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 16
  %wide.load147 = load <2 x double>, ptr %i.wk, align 8, !tbaa !501, !alias.scope !6240
  %wide.load148 = load <2 x double>, ptr %i.wl, align 8, !tbaa !501, !alias.scope !6240
  %i.wm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load145, <2 x double> %wide.load147)
  %i.wn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load146, <2 x double> %wide.load148)
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %i.wb, i64 %i.wh ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 16
  store <2 x double> %i.wm, ptr %i.wo, align 8, !tbaa !501, !alias.scope !6241, !noalias !6242
  store <2 x double> %i.wn, ptr %i.wp, align 8, !tbaa !501, !alias.scope !6241, !noalias !6242
  %index.next149 = add nuw i64 %index144, 4       ; 2 uses
  %i.wq = icmp eq i64 %index.next149, %n.vec142
  br i1 %i.wq, label %middle.block150, label %vector.body143, !llvm.loop !6232

middle.block150:                                  ; preds = %vector.body143
  %cmp.n151 = icmp eq i64 %i.wd, %n.vec142
  br i1 %cmp.n151, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30, label %scalar.ph139.preheader

scalar.ph139.preheader:                           ; preds = %vector.memcheck125, %.lr.ph.i.i.i.i.i.i15, %middle.block150
  %indvars.iv.i.i.i.i.i.i17.ph = phi i64 [ %i.wc, %vector.memcheck125 ], [ %i.wc, %.lr.ph.i.i.i.i.i.i15 ], [ %i.wg, %middle.block150 ] ; 7 uses
  %i.wr = sub nsw i64 %wide.trip.count.i.i.i.i.i.i16, %indvars.iv.i.i.i.i.i.i17.ph
  %xtraiter = and i64 %i.wr, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph139.prol.loopexit, label %scalar.ph139.prol

scalar.ph139.prol:                                ; preds = %scalar.ph139.preheader
  %i.ws = load double, ptr %i.gc, align 16, !tbaa !598
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.vz, i64 %indvars.iv.i.i.i.i.i.i17.ph
  %i.wu = load double, ptr %i.wt, align 8, !tbaa !501
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.wa, i64 %indvars.iv.i.i.i.i.i.i17.ph
  %i.ww = load double, ptr %i.wv, align 8, !tbaa !501
  %i.wx = call double @llvm.fmuladd.f64(double %i.ws, double %i.wu, double %i.ww)
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.wb, i64 %indvars.iv.i.i.i.i.i.i17.ph
  store double %i.wx, ptr %i.wy, align 8, !tbaa !501
  %indvars.iv.next.i.i.i.i.i.i18.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i17.ph, 1
  br label %scalar.ph139.prol.loopexit

scalar.ph139.prol.loopexit:                       ; preds = %scalar.ph139.prol, %scalar.ph139.preheader
  %indvars.iv.i.i.i.i.i.i17.unr = phi i64 [ %indvars.iv.i.i.i.i.i.i17.ph, %scalar.ph139.preheader ], [ %indvars.iv.next.i.i.i.i.i.i18.prol, %scalar.ph139.prol ]
  %i.wz = add nsw i64 %wide.trip.count.i.i.i.i.i.i16, -1
  %i.xa = icmp eq i64 %indvars.iv.i.i.i.i.i.i17.ph, %i.wz
  br i1 %i.xa, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30, label %scalar.ph139

scalar.ph139:                                     ; preds = %scalar.ph139.prol.loopexit, %scalar.ph139
  %indvars.iv.i.i.i.i.i.i17 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i18.1, %scalar.ph139 ], [ %indvars.iv.i.i.i.i.i.i17.unr, %scalar.ph139.prol.loopexit ] ; 5 uses
  %i.xb = load double, ptr %i.gc, align 16, !tbaa !598
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.vz, i64 %indvars.iv.i.i.i.i.i.i17
  %i.xd = load double, ptr %i.xc, align 8, !tbaa !501
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %i.wa, i64 %indvars.iv.i.i.i.i.i.i17
  %i.xf = load double, ptr %i.xe, align 8, !tbaa !501
  %i.xg = call double @llvm.fmuladd.f64(double %i.xb, double %i.xd, double %i.xf)
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.wb, i64 %indvars.iv.i.i.i.i.i.i17
  store double %i.xg, ptr %i.xh, align 8, !tbaa !501
  %indvars.iv.next.i.i.i.i.i.i18 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i17, 1 ; 3 uses
  %i.xi = load double, ptr %i.gc, align 16, !tbaa !598
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.vz, i64 %indvars.iv.next.i.i.i.i.i.i18
  %i.xk = load double, ptr %i.xj, align 8, !tbaa !501
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.wa, i64 %indvars.iv.next.i.i.i.i.i.i18
  %i.xm = load double, ptr %i.xl, align 8, !tbaa !501
  %i.xn = call double @llvm.fmuladd.f64(double %i.xi, double %i.xk, double %i.xm)
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %i.wb, i64 %indvars.iv.next.i.i.i.i.i.i18
  store double %i.xn, ptr %i.xo, align 8, !tbaa !501
  %indvars.iv.next.i.i.i.i.i.i18.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i17, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i19.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i18.1, %wide.trip.count.i.i.i.i.i.i16
  br i1 %exitcond.not.i.i.i.i.i.i19.1, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30, label %scalar.ph139, !llvm.loop !6233

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30: ; preds = %scalar.ph139.prol.loopexit, %scalar.ph139, %scalar.ph111.prol.loopexit, %scalar.ph111, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block150, %middle.block122, %middle.block, %bb.ae, %bb.ad, %bb.ab
  %i.xp = add i8 %i.ri, -1
  %i.xq = add i8 %i.rh, 7
  %i.xr = and i8 %i.xq, 7
  br label %thread-pre-split37

thread-pre-split37:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30
  %i.xs = phi i8 [ %i.xp, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30 ], [ %i.pb, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.xt = phi i8 [ %i.xr, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit30 ], [ %i.pc, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.xu = icmp eq i8 %i.xs, 0
  br i1 %i.xu, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit36, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %.noexc, %thread-pre-split37
  %i.xv = phi i8 [ %i.qt, %.noexc ], [ %i.gi, %thread-pre-split37 ]
  %i.xw = phi i8 [ %i.qr, %.noexc ], [ %i.xs, %thread-pre-split37 ]
  %i.xx = phi i8 [ %i.pr, %.noexc ], [ %i.xt, %thread-pre-split37 ]
  %i.xy = load ptr, ptr %3, align 8, !tbaa !769   ; 3 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 15
  %i.ya = load atomic i8, ptr %i.xz monotonic, align 1
  %i.yb = icmp eq i8 %i.ya, -1
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xy, i64 16
  %i.yd = load ptr, ptr %i.yc, align 8
  %.0.i.i = select i1 %i.yb, ptr %i.yd, ptr %i.xy
  %i.ye = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.ye, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit36, label %bb.i, !llvm.loop !6234

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit36: ; preds = %thread-pre-split37, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg8internal8LinearOpIdEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %scalar.ph171.prol.loopexit, %scalar.ph171, %scalar.ph203.prol.loopexit, %scalar.ph203, %scalar.ph221.prol.loopexit, %scalar.ph221, %middle.block196, %middle.block214, %middle.block232, %bb.g, %bb.f, %bb.d, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit36
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_012RuntimeErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_09ExceptionE, i64 16), ptr %0, align 8, !tbaa !412
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !587  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN7openvdb5v13_09ExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !437
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #31, !inline_history !616
  br label %_ZN7openvdb5v13_09ExceptionD2Ev.exit

_ZN7openvdb5v13_09ExceptionD2Ev.exit:             ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #22, !inline_history !616
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEE3runERKS4_RKSB_RSD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEE3runERKS4_RKSB_RSD_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !736
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 192)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04math3pcg6VectorIdE25DeterministicDotProductOpEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !412
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !737
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !2170
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 112 ; 2 uses
  store ptr null, ptr %i.l, align 16, !tbaa !2172
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
  store i64 1, ptr %i.x, align 8, !tbaa !560
  store ptr %4, ptr %i.l, align 16, !tbaa !2172
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_5
begin_hunk_6_@_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EE4nextEj:bb.a

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph
  %i.s = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.d
  %.016.lcssa.i.i.i.i = phi i32 [ %i.f, %bb.d ], [ %i.s, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ %i.r, %.critedge.loopexit.i.i.i.i ]
  %i.t = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.u = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = or disjoint i32 %i.t, %i.v
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE4nextEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE4nextEv.exit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader, %bb.b, %bb.c, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ 32768, %bb.b ], [ %i.e, %bb.c ], [ %i.w, %.critedge.i.i.i.i ], [ 32768, %.lr.ph.i.i.i.i.preheader ], [ 32768, %.lr.ph.i.i.i.i ] ; 2 uses
  store i32 %.118.i.i.i.i, ptr %i.a, align 8, !tbaa !695
  %i.x = icmp ne i32 %.118.i.i.i.i, 32768
  br label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EEENSQ_IJSB_EEELm1ELj3EE4nextEj.exit

bb.e:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !2921
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 5 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !2922 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %i.ab
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %i.ac) #32 ; 2 uses
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !2922
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.promoted.i.i.i.i = phi ptr [ %i.ad, %bb.f ], [ %i.ac, %bb.e ] ; 2 uses
  %.not2.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i, %i.ab
  br i1 %.not2.i.i.i.i, label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EEENSQ_IJSB_EEELm1ELj3EE4nextEj.exit, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %bb.g, %bb.h
  %i.ae = phi ptr [ %i.ah, %bb.h ], [ %.promoted.i.i.i.i, %bb.g ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2787
  %.not1.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not1.i.i.i.i, label %bb.h, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i2
  %i.ah = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %i.ae) #32 ; 3 uses
  store ptr %i.ah, ptr %i.z, align 8, !tbaa !2922
  %.not.i.i.i.i3 = icmp eq ptr %i.ah, %i.ab
  br i1 %.not.i.i.i.i3, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i, label %.lr.ph.i.i.i.i2, !llvm.loop !335

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i2
  %i.ai = phi ptr [ %i.ab, %bb.h ], [ %i.ae, %.lr.ph.i.i.i.i2 ]
  %i.aj = icmp ne ptr %i.ai, %i.ab
  br label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EEENSQ_IJSB_EEELm1ELj3EE4nextEj.exit

_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EEENSQ_IJSB_EEELm1ELj3EE4nextEj.exit: ; preds = %bb.a, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i, %bb.g, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE4nextEv.exit
  %i.ak = phi i1 [ %i.x, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE4nextEv.exit ], [ false, %bb.a ], [ %i.aj, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i ], [ false, %bb.g ]
  ret i1 %i.ak
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7addTileEjRKNS0_4math5CoordERKdb(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 6 uses
  %6 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>::Tile", align 8 ; 8 uses
  %i.a = icmp ult i32 %1, 4
  br i1 %i.a, label %bb.b, label %bb.af

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i32, ptr %2, align 4, !tbaa !410
  %i.d = load i32, ptr %i.b, align 8, !tbaa !410
  %i.e = sub nsw i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !410
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !410
  %i.j = sub nsw i32 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !410
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !410
  %i.o = sub nsw i32 %i.l, %i.n
  %i.p = and i32 %i.e, -4096                      ; 13 uses
  %i.q = and i32 %i.j, -4096                      ; 13 uses
  %i.r = and i32 %i.o, -4096                      ; 7 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.q to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32
  %.sroa.0.0.insert.ext.i12.i = zext i32 %i.p to i64
  %.sroa.0.0.insert.insert.i13.i = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0.0.insert.ext.i12.i
  store i64 %.sroa.0.0.insert.insert.i13.i, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.r, ptr %.sroa.2.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !634  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %.not12.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.b ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.u, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.w = load i32, ptr %i.v, align 4, !tbaa !410  ; 2 uses
  %i.x = icmp slt i32 %i.w, %i.p
  br i1 %i.x, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = icmp sgt i32 %i.w, %i.p
  br i1 %i.y, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !410 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, %i.q
  br i1 %i.ab, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp sgt i32 %i.aa, %i.q
  br i1 %i.ac, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !410
  %i.af = icmp slt i32 %i.ae, %i.r
  br i1 %i.af, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.e, %bb.c
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.e ], [ 16, %bb.c ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.e ], [ %.014.i.i.i.i, %bb.c ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 11 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !667 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !319

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ah = icmp eq ptr %.19.i.i.i.i, %i.u
  br i1 %i.ah, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !410 ; 2 uses
  %i.ak = icmp slt i32 %i.p, %i.aj
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = icmp sgt i32 %i.p, %i.aj
  br i1 %i.al, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.an = load i32, ptr %i.am, align 4, !tbaa !410 ; 2 uses
  %i.ao = icmp slt i32 %i.q, %i.an
  br i1 %i.ao, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = icmp sgt i32 %i.q, %i.an
  br i1 %i.ap, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !410
  %i.as = icmp slt i32 %i.r, %i.ar
  br i1 %i.as, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %.not37 = icmp eq i32 %1, 3
  br i1 %.not37, label %.lr.ph.i.i.i.i51, label %vector.ph113

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread: ; preds = %bb.b
  %.not3788 = icmp eq i32 %1, 3
  br i1 %.not3788, label %.thread, label %vector.ph113

.thread:                                          ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.at = zext i1 %4 to i8
  %i.au = load double, ptr %3, align 8, !tbaa !501
  store double %i.au, ptr %6, align 8, !tbaa !2821
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %i.at, ptr %i.av, align 8, !tbaa !2822
  br label %.critedge.i66

vector.ph113:                                     ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %i.aw = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.aw, i8 0, i64 270336, i1 false)
  %i.ay = load i32, ptr %i.k, align 4, !tbaa !410
  %i.az = load <2 x i32>, ptr %2, align 4, !tbaa !410
  %i.ba = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.ay, i64 2
  %i.bb = shufflevector <2 x i32> %i.az, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bc = shufflevector <4 x i32> %i.bb, <4 x i32> %i.ba, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bd = and <4 x i32> %i.bc, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.bd, ptr %i.ax, align 8, !tbaa !410
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48
  %7 = load <1 x double>, ptr %i.be, align 8
  %broadcast.splat115 = shufflevector <1 x double> %7, <1 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph113
  %index117 = phi i64 [ 0, %vector.ph113 ], [ %index.next118.3, %vector.body116 ] ; 5 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index117 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <2 x double> %broadcast.splat115, ptr %i.bf, align 8, !tbaa !437
  store <2 x double> %broadcast.splat115, ptr %i.bg, align 8, !tbaa !437
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index117 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  store <2 x double> %broadcast.splat115, ptr %i.bi, align 8, !tbaa !437
  store <2 x double> %broadcast.splat115, ptr %i.bj, align 8, !tbaa !437
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index117 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  store <2 x double> %broadcast.splat115, ptr %i.bl, align 8, !tbaa !437
  store <2 x double> %broadcast.splat115, ptr %i.bm, align 8, !tbaa !437
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index117 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 96
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 112
  store <2 x double> %broadcast.splat115, ptr %i.bo, align 8, !tbaa !437
  store <2 x double> %broadcast.splat115, ptr %i.bp, align 8, !tbaa !437
  %index.next118.3 = add nuw nsw i64 %index117, 16 ; 2 uses
  %i.bq = icmp eq i64 %index.next118.3, 32768
  br i1 %i.bq, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body116, !llvm.loop !7611

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body116
  %i.br = load ptr, ptr %i.s, align 8, !tbaa !634 ; 2 uses
  %.not12.i.i.i.i39 = icmp eq ptr %i.br, null
  br i1 %.not12.i.i.i.i39, label %.critedge.i, label %.lr.ph.i.i.i.i40

.lr.ph.i.i.i.i40:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44
  %.014.i.i.i.i41 = phi ptr [ %.1.i.i.i.i47, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44 ], [ %i.br, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i42 = phi ptr [ %.19.i.i.i.i46, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44 ], [ %i.u, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 32
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !410 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.p
  br i1 %i.bu, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i40
  %i.bv = icmp sgt i32 %i.bt, %i.p
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 36
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !410 ; 2 uses
  %i.by = icmp slt i32 %i.bx, %i.q
  br i1 %i.by, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = icmp sgt i32 %i.bx, %i.q
  br i1 %i.bz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43: ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 40
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !410
  %i.cc = icmp slt i32 %i.cb, %i.r
  br i1 %i.cc, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43, %bb.k, %.lr.ph.i.i.i.i40
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43, %bb.l, %bb.j
  %.sink.i.i.i.i45 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49 ], [ 16, %bb.l ], [ 16, %bb.j ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43 ]
  %.19.i.i.i.i46 = phi ptr [ %.0813.i.i.i.i42, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49 ], [ %.014.i.i.i.i41, %bb.l ], [ %.014.i.i.i.i41, %bb.j ], [ %.014.i.i.i.i41, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43 ] ; 9 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 %.sink.i.i.i.i45
  %.1.i.i.i.i47 = load ptr, ptr %i.cd, align 8, !tbaa !667 ; 2 uses
  %.not.i.i.i.i48 = icmp eq ptr %.1.i.i.i.i47, null
  br i1 %.not.i.i.i.i48, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i40, !llvm.loop !319

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44
  %i.ce = icmp eq ptr %.19.i.i.i.i46, %i.u
  br i1 %i.ce, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i46, i64 32
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !410 ; 2 uses
  %i.ch = icmp slt i32 %i.p, %i.cg
  br i1 %i.ch, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ci = icmp sgt i32 %i.p, %i.cg
  br i1 %i.ci, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i46, i64 36
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !410 ; 2 uses
  %i.cl = icmp slt i32 %i.q, %i.ck
  br i1 %i.cl, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = icmp sgt i32 %i.q, %i.ck
  br i1 %i.cm, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i46, i64 40
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !410
  %i.cp = icmp slt i32 %i.r, %i.co
  br i1 %i.cp, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.o, %bb.m, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.u, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i46, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i46, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i46, %bb.m ], [ %.19.i.i.i.i46, %bb.o ]
  %i.cq = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(270352) %i.aw) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %bb.n, %bb.p, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %.critedge.i
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE7addTileEjRKNS0_4math5CoordERKdb(ptr noundef nonnull align 8 dereferenceable(270352) %i.aw, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4)
  br label %bb.ae

.lr.ph.i.i.i.i51:                                 ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.cr = zext i1 %4 to i8
  %i.cs = load double, ptr %3, align 8, !tbaa !501
  store double %i.cs, ptr %6, align 8, !tbaa !2821
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %i.cr, ptr %i.ct, align 8, !tbaa !2822
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55, %.lr.ph.i.i.i.i51
  %.014.i.i.i.i52 = phi ptr [ %i.t, %.lr.ph.i.i.i.i51 ], [ %.1.i.i.i.i58, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55 ] ; 7 uses
  %.0813.i.i.i.i53 = phi ptr [ %i.u, %.lr.ph.i.i.i.i51 ], [ %.19.i.i.i.i57, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 32
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !410 ; 2 uses
  %i.cw = icmp slt i32 %i.cv, %i.p
  br i1 %i.cw, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = icmp sgt i32 %i.cv, %i.p
  br i1 %i.cx, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 36
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !410 ; 2 uses
  %i.da = icmp slt i32 %i.cz, %i.q
  br i1 %i.da, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = icmp sgt i32 %i.cz, %i.q
  br i1 %i.db, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54: ; preds = %bb.t
  %i.dc = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 40
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !410
  %i.de = icmp slt i32 %i.dd, %i.r
  br i1 %i.de, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54, %bb.s, %bb.q
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54, %bb.t, %bb.r
  %.sink.i.i.i.i56 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68 ], [ 16, %bb.t ], [ 16, %bb.r ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54 ]
  %.19.i.i.i.i57 = phi ptr [ %.0813.i.i.i.i53, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68 ], [ %.014.i.i.i.i52, %bb.t ], [ %.014.i.i.i.i52, %bb.r ], [ %.014.i.i.i.i52, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54 ] ; 9 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 %.sink.i.i.i.i56
  %.1.i.i.i.i58 = load ptr, ptr %i.df, align 8, !tbaa !667 ; 2 uses
  %.not.i.i.i.i59 = icmp eq ptr %.1.i.i.i.i58, null
  br i1 %.not.i.i.i.i59, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60, label %bb.q, !llvm.loop !319

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55
  %i.dg = icmp eq ptr %.19.i.i.i.i57, %i.u
  br i1 %i.dg, label %.critedge.i66, label %bb.u

bb.u:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60
  %i.dh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i57, i64 32
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !410 ; 2 uses
  %i.dj = icmp slt i32 %i.p, %i.di
  br i1 %i.dj, label %.critedge.i66, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dk = icmp sgt i32 %i.p, %i.di
  br i1 %i.dk, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i57, i64 36
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !410 ; 2 uses
  %i.dn = icmp slt i32 %i.q, %i.dm
  br i1 %i.dn, label %.critedge.i66, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.do = icmp sgt i32 %i.q, %i.dm
  br i1 %i.do, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61: ; preds = %bb.x
  %i.dp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i57, i64 40
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !410
  %i.dr = icmp slt i32 %i.r, %i.dq
  br i1 %i.dr, label %.critedge.i66, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i66:                                    ; preds = %.thread, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61, %bb.w, %bb.u, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60
  %.08.lcssa.i.i.i20.i67 = phi ptr [ %i.u, %.thread ], [ %.19.i.i.i.i57, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61 ], [ %.19.i.i.i.i57, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60 ], [ %.19.i.i.i.i57, %bb.u ], [ %.19.i.i.i.i57, %bb.w ]
  %i.ds = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_NSD_4TileEEEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i67, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(9) %6) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %bb.v, %bb.x, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61, %.critedge.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.ae

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.i, %bb.g, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 5 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !2787 ; 4 uses
end_hunk_6
begin_hunk_7_@_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE12readTopologyERSib:bb.a
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #30
  unreachable

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.sroa.01.05.i = phi ptr [ %i.t, %bb.d ], [ %i.k, %bb.a ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !2789 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EED2Ev(ptr noundef nonnull align 8 dead_on_return(270352) dereferenceable(270352) %i.r) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 270352) #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.t = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.05.i) #32 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.l
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !326

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE5clearEv.exit: ; preds = %._crit_edge.i
  store ptr null, ptr %i.m, align 8, !tbaa !634
  store ptr %i.l, ptr %i.j, align 8, !tbaa !512
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.l, ptr %i.u, align 8, !tbaa !635
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.v, align 8, !tbaa !636
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.x = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.w, i64 noundef 8) ; 0 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !412
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.aa
  tail call void @_ZN7openvdb5v13_02io25setGridBackgroundValuePtrERSt8ios_basePKv(ptr noundef nonnull align 8 dereferenceable(216) %i.ab, ptr noundef nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 0, ptr %i.b, align 4, !tbaa !410
  %i.ac = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 4) ; 0 uses
  %i.ad = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i64 noundef 4) ; 0 uses
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !410
  %i.af = icmp ne i32 %i.ae, 0                    ; 2 uses
  %i.ag = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ah = icmp ne i32 %i.ag, 0
  %or.cond.not = select i1 %i.af, i1 true, i1 %i.ah ; 2 uses
  br i1 %or.cond.not, label %bb.e, label %bb.u

bb.e:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  br i1 %i.af, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.f

.preheader.loopexit:                              ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %.pre = load i32, ptr %i.b, align 4, !tbaa !410
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.e
  %i.an = phi i32 [ %.pre, %.preheader.loopexit ], [ %i.ag, %bb.e ]
  %.not48 = icmp eq i32 %i.an, 0
  br i1 %.not48, label %._crit_edge, label %.lr.ph47

.lr.ph47:                                         ; preds = %.preheader
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %vector.ph

bb.f:                                             ; preds = %.lr.ph, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %.02345 = phi i32 [ 0, %.lr.ph ], [ %i.ca, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit ]
  %i.as = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.c, i64 noundef 12) ; 0 uses
  %i.at = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.d, i64 noundef 8) ; 0 uses
  %i.au = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.e, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.av = load i32, ptr %i.c, align 8, !tbaa !410 ; 5 uses
  store i32 %i.av, ptr %3, align 4, !tbaa !410
  %i.aw = load i32, ptr %i.aj, align 4, !tbaa !410 ; 5 uses
  store i32 %i.aw, ptr %i.ai, align 4, !tbaa !410
  %i.ax = load i32, ptr %i.al, align 8, !tbaa !410 ; 3 uses
  store i32 %i.ax, ptr %i.ak, align 4, !tbaa !410
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ay = load i8, ptr %i.e, align 1, !tbaa !444, !range !517, !noundef !774
  %i.az = load double, ptr %i.d, align 8, !tbaa !501
  store double %i.az, ptr %4, align 8, !tbaa !2821
  store i8 %i.ay, ptr %i.am, align 8, !tbaa !2822
  %i.ba = load ptr, ptr %i.m, align 8, !tbaa !634 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not12.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.ba, %bb.f ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.l, %bb.f ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !410 ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %i.av
  br i1 %i.bd, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.be = icmp sgt i32 %i.bc, %i.av
  br i1 %i.be, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !410 ; 2 uses
  %i.bh = icmp slt i32 %i.bg, %i.aw
  br i1 %i.bh, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = icmp sgt i32 %i.bg, %i.aw
  br i1 %i.bi, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !410
  %i.bl = icmp slt i32 %i.bk, %i.ax
  br i1 %i.bl, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.h, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.i, %bb.g
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.i ], [ 16, %bb.g ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.i ], [ %.014.i.i.i.i, %bb.g ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 9 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.bm, align 8, !tbaa !667 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !319

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.bn = icmp eq ptr %.19.i.i.i.i, %i.l
  br i1 %i.bn, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !410 ; 2 uses
  %i.bq = icmp slt i32 %i.av, %i.bp
  br i1 %i.bq, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = icmp sgt i32 %i.av, %i.bp
  br i1 %i.br, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !410 ; 2 uses
  %i.bu = icmp slt i32 %i.aw, %i.bt
  br i1 %i.bu, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = icmp sgt i32 %i.aw, %i.bt
  br i1 %i.bv, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !410
  %i.by = icmp slt i32 %i.ax, %i.bx
  br i1 %i.by, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.l, %bb.j, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %bb.f
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.l, %bb.f ], [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i, %bb.j ], [ %.19.i.i.i.i, %bb.l ]
  %i.bz = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJS3_NSD_4TileEEEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(9) %4) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %bb.k, %bb.m, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ca = add nuw i32 %.02345, 1                  ; 2 uses
  %i.cb = load i32, ptr %i.a, align 4, !tbaa !410
  %i.cc = icmp ult i32 %i.ca, %i.cb
  br i1 %i.cc, label %bb.f, label %.preheader.loopexit, !llvm.loop !8268

._crit_edge:                                      ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %bb.u

vector.ph:                                        ; preds = %.lr.ph47, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %.02446 = phi i32 [ 0, %.lr.ph47 ], [ %i.eb, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit ]
  %i.cd = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.c, i64 noundef 12) ; 0 uses
  %i.ce = load i32, ptr %i.ap, align 8, !tbaa !410
  %i.cf = load <2 x i32>, ptr %i.c, align 8, !tbaa !410
  %i.cg = call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 8 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 270336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.cg, i8 0, i64 270336, i1 false)
  %i.ci = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.ce, i64 2
  %i.cj = shufflevector <2 x i32> %i.cf, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ck = shufflevector <4 x i32> %i.cj, <4 x i32> %i.ci, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cl = and <4 x i32> %i.ck, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.cl, ptr %i.ch, align 8, !tbaa !410
  %6 = load <1 x double>, ptr %i.w, align 8
  %broadcast.splat = shufflevector <1 x double> %6, <1 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %index ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store <2 x double> %broadcast.splat, ptr %i.cm, align 8, !tbaa !437
  store <2 x double> %broadcast.splat, ptr %i.cn, align 8, !tbaa !437
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %index ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  store <2 x double> %broadcast.splat, ptr %i.cp, align 8, !tbaa !437
  store <2 x double> %broadcast.splat, ptr %i.cq, align 8, !tbaa !437
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %index ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 80
  store <2 x double> %broadcast.splat, ptr %i.cs, align 8, !tbaa !437
  store <2 x double> %broadcast.splat, ptr %i.ct, align 8, !tbaa !437
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %index ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 96
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 112
  store <2 x double> %broadcast.splat, ptr %i.cv, align 8, !tbaa !437
  store <2 x double> %broadcast.splat, ptr %i.cw, align 8, !tbaa !437
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.cx = icmp eq i64 %index.next.3, 32768
  br i1 %i.cx, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit, label %vector.body, !llvm.loop !8269

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(270352) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.cy = load i32, ptr %i.c, align 8, !tbaa !410 ; 5 uses
  store i32 %i.cy, ptr %5, align 4, !tbaa !410
  %i.cz = load i32, ptr %i.ao, align 4, !tbaa !410 ; 5 uses
  store i32 %i.cz, ptr %i.aq, align 4, !tbaa !410
  %i.da = load i32, ptr %i.ap, align 8, !tbaa !410 ; 3 uses
  store i32 %i.da, ptr %i.ar, align 4, !tbaa !410
  %i.db = load ptr, ptr %i.m, align 8, !tbaa !634 ; 2 uses
  %.not12.i.i.i.i26 = icmp eq ptr %i.db, null
  br i1 %.not12.i.i.i.i26, label %.critedge.i42, label %.lr.ph.i.i.i.i27

.lr.ph.i.i.i.i27:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31
  %.014.i.i.i.i28 = phi ptr [ %.1.i.i.i.i34, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31 ], [ %i.db, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i29 = phi ptr [ %.19.i.i.i.i33, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31 ], [ %i.l, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 32
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !410 ; 2 uses
  %i.de = icmp slt i32 %i.dd, %i.cy
  br i1 %i.de, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i27
  %i.df = icmp sgt i32 %i.dd, %i.cy
  br i1 %i.df, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dg = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 36
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !410 ; 2 uses
  %i.di = icmp slt i32 %i.dh, %i.cz
  br i1 %i.di, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dj = icmp sgt i32 %i.dh, %i.cz
  br i1 %i.dj, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30: ; preds = %bb.p
  %i.dk = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 40
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !410
  %i.dm = icmp slt i32 %i.dl, %i.da
  br i1 %i.dm, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30, %bb.o, %.lr.ph.i.i.i.i27
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30, %bb.p, %bb.n
  %.sink.i.i.i.i32 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44 ], [ 16, %bb.p ], [ 16, %bb.n ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30 ]
  %.19.i.i.i.i33 = phi ptr [ %.0813.i.i.i.i29, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44 ], [ %.014.i.i.i.i28, %bb.p ], [ %.014.i.i.i.i28, %bb.n ], [ %.014.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30 ] ; 9 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 %.sink.i.i.i.i32
  %.1.i.i.i.i34 = load ptr, ptr %i.dn, align 8, !tbaa !667 ; 2 uses
  %.not.i.i.i.i35 = icmp eq ptr %.1.i.i.i.i34, null
  br i1 %.not.i.i.i.i35, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36, label %.lr.ph.i.i.i.i27, !llvm.loop !319

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31
  %i.do = icmp eq ptr %.19.i.i.i.i33, %i.l
  br i1 %i.do, label %.critedge.i42, label %bb.q

bb.q:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36
  %i.dp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33, i64 32
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !410 ; 2 uses
  %i.dr = icmp slt i32 %i.cy, %i.dq
  br i1 %i.dr, label %.critedge.i42, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ds = icmp sgt i32 %i.cy, %i.dq
  br i1 %i.ds, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dt = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33, i64 36
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !410 ; 2 uses
  %i.dv = icmp slt i32 %i.cz, %i.du
  br i1 %i.dv, label %.critedge.i42, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dw = icmp sgt i32 %i.cz, %i.du
  br i1 %i.dw, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37: ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33, i64 40
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !410
  %i.dz = icmp slt i32 %i.da, %i.dy
  br i1 %i.dz, label %.critedge.i42, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i42:                                    ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37, %bb.s, %bb.q, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i43 = phi ptr [ %i.l, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i33, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37 ], [ %.19.i.i.i.i33, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36 ], [ %.19.i.i.i.i33, %bb.q ], [ %.19.i.i.i.i33, %bb.s ]
  %i.ea = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJS3_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i43, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(270352) %i.cg) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %bb.r, %bb.t, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37, %.critedge.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.eb = add nuw i32 %.02446, 1                  ; 2 uses
  %i.ec = load i32, ptr %i.b, align 4, !tbaa !410
  %i.ed = icmp ult i32 %i.eb, %i.ec
  br i1 %i.ed, label %vector.ph, label %._crit_edge, !llvm.loop !8270

bb.u:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE5clearEv.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i1 %or.cond.not
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(270352) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>::ChildIter", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !412
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  tail call void @_ZN7openvdb5v13_02io18checkFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.d)
  %i.e = load ptr, ptr %1, align 8, !tbaa !412
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = tail call noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.h)
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !412
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = tail call noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.m)
  %i.o = load double, ptr %i.n, align 8, !tbaa !501
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.p = phi double [ %i.o, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 262144 ; 10 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(4096) %i.q, i64 noundef 4096) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 266240 ; 2 uses
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(4096) %i.s, i64 noundef 4096) ; 0 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !412
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
  %i.y = tail call noundef i32 @_ZN7openvdb5v13_02io16getFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.x)
  %i.z = icmp ult i32 %i.y, 222                   ; 2 uses
  br i1 %i.z, label %vector.body, label %bb.d

vector.body:                                      ; preds = %bb.c, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %bb.c ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.ag, %vector.body ], [ zeroinitializer, %bb.c ]
  %vec.phi201 = phi <2 x i32> [ %i.ah, %vector.body ], [ zeroinitializer, %bb.c ]
  %i.aa = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !518
  %wide.load202 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !518
  %i.ac = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.ad = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load202)
  %i.ae = trunc nuw nsw <2 x i64> %i.ac to <2 x i32>
  %i.af = trunc nuw nsw <2 x i64> %i.ad to <2 x i32>
  %i.ag = add <2 x i32> %vec.phi, %i.ae           ; 2 uses
  %i.ah = add <2 x i32> %vec.phi201, %i.af        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, 512
  br i1 %i.ai, label %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8countOffEv.exit, label %vector.body, !llvm.loop !8271

_ZNK7openvdb5v13_04util8NodeMaskILj5EE8countOffEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.ah, %i.ag
  %i.aj = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.ak = sub i32 32768, %i.aj
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8countOffEv.exit
  %i.al = phi i32 [ %i.ak, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8countOffEv.exit ], [ 32768, %bb.c ] ; 2 uses
  %i.am = zext i32 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.an) #29 ; 5 uses
  invoke void @_ZN7openvdb5v13_02io20readCompressedValuesIdNS0_4util8NodeMaskILj5EEEEEvRSiPT_jRKT0_b(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ao, i32 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(4096) %i.s, i1 noundef zeroext %2)
          to label %bb.e unwind label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit56

end_hunk_7
begin_hunk_8_@_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE4fillERKNS0_4math9CoordBBoxERKdb:bb.a
  %i.y = phi i32 [ %i.ai, %._crit_edge144 ], [ %i.h, %.lr.ph148.split.preheader ] ; 6 uses
  %i.z = phi i32 [ %i.aj, %._crit_edge144 ], [ %i.h, %.lr.ph148.split.preheader ] ; 2 uses
  %i.aa = phi i32 [ %i.ak, %._crit_edge144 ], [ %i.m, %.lr.ph148.split.preheader ] ; 3 uses
  %i.ab = phi i32 [ %i.al, %._crit_edge144 ], [ %i.m, %.lr.ph148.split.preheader ] ; 3 uses
  %i.ac = phi i32 [ %i.am, %._crit_edge144 ], [ %i.h, %.lr.ph148.split.preheader ] ; 2 uses
  %.0147 = phi i32 [ %i.an, %._crit_edge144 ], [ %i.a, %.lr.ph148.split.preheader ] ; 9 uses
  %.sroa.097.0146 = phi i64 [ %.sroa.097.1.lcssa, %._crit_edge144 ], [ 0, %.lr.ph148.split.preheader ] ; 4 uses
  %i.ad = load i32, ptr %i.e, align 4, !tbaa !410 ; 2 uses
  %.not42139 = icmp sgt i32 %i.ad, %i.ac
  br i1 %.not42139, label %._crit_edge144, label %.lr.ph143

.lr.ph143:                                        ; preds = %.lr.ph148.split
  %i.ae = and i32 %.0147, -4096                   ; 2 uses
  %i.af = load i32, ptr %i.j, align 4, !tbaa !410
  %i.ag = icmp sgt i32 %i.af, %i.ab
  br i1 %i.ag, label %.lr.ph143.split.us, label %.lr.ph143.split.preheader

.lr.ph143.split.preheader:                        ; preds = %.lr.ph143
  %.sroa.0.0.insert.ext.i12.i.i = zext i32 %.0147 to i64
  br label %.lr.ph143.split

.lr.ph143.split.us:                               ; preds = %.lr.ph143
  %.sroa.097.4.extract.shift.us = lshr i64 %.sroa.097.0146, 32
  %.sroa.097.4.extract.trunc.us = trunc nuw i64 %.sroa.097.4.extract.shift.us to i32
  %.not42.us.not = icmp sle i32 %i.y, %.sroa.097.4.extract.trunc.us
  call void @llvm.assume(i1 %.not42.us.not)
  br label %._crit_edge144

._crit_edge144.loopexit:                          ; preds = %bb.c
  %.pre158 = load i32, ptr %i.b, align 4, !tbaa !410
  br label %._crit_edge144

._crit_edge144:                                   ; preds = %.lr.ph143.split.us, %._crit_edge144.loopexit, %.lr.ph148.split
  %i.ah = phi i32 [ %i.x, %.lr.ph148.split ], [ %i.x, %.lr.ph143.split.us ], [ %.pre158, %._crit_edge144.loopexit ] ; 2 uses
  %i.ai = phi i32 [ %i.y, %.lr.ph148.split ], [ %i.y, %.lr.ph143.split.us ], [ %i.at, %._crit_edge144.loopexit ]
  %i.aj = phi i32 [ %i.z, %.lr.ph148.split ], [ %i.y, %.lr.ph143.split.us ], [ %i.au, %._crit_edge144.loopexit ]
  %i.ak = phi i32 [ %i.aa, %.lr.ph148.split ], [ %i.aa, %.lr.ph143.split.us ], [ %i.av, %._crit_edge144.loopexit ]
  %i.al = phi i32 [ %i.ab, %.lr.ph148.split ], [ %i.ab, %.lr.ph143.split.us ], [ %i.av, %._crit_edge144.loopexit ]
  %i.am = phi i32 [ %i.ac, %.lr.ph148.split ], [ %i.y, %.lr.ph143.split.us ], [ %i.au, %._crit_edge144.loopexit ]
  %.sroa.097.1.lcssa = phi i64 [ %.sroa.097.0146, %.lr.ph148.split ], [ %.sroa.097.0146, %.lr.ph143.split.us ], [ %.sroa.097.2.lcssa, %._crit_edge144.loopexit ] ; 2 uses
  %.sroa.097.0.extract.trunc = trunc i64 %.sroa.097.1.lcssa to i32 ; 2 uses
  %i.an = add nsw i32 %.sroa.097.0.extract.trunc, 1
  %.not.not = icmp sgt i32 %i.ah, %.sroa.097.0.extract.trunc
  br i1 %.not.not, label %.lr.ph148.split, label %_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit.thread, !llvm.loop !8403

.lr.ph143.split:                                  ; preds = %.lr.ph143.split.preheader, %bb.c
  %i.ao = phi i32 [ %i.at, %bb.c ], [ %i.y, %.lr.ph143.split.preheader ]
  %i.ap = phi i32 [ %i.au, %bb.c ], [ %i.z, %.lr.ph143.split.preheader ]
  %i.aq = phi i32 [ %i.av, %bb.c ], [ %i.aa, %.lr.ph143.split.preheader ] ; 3 uses
  %.037141 = phi i32 [ %i.aw, %bb.c ], [ %i.ad, %.lr.ph143.split.preheader ] ; 8 uses
  %.sroa.097.1140 = phi i64 [ %.sroa.097.2.lcssa, %bb.c ], [ %.sroa.097.0146, %.lr.ph143.split.preheader ]
  %i.ar = load i32, ptr %i.j, align 4, !tbaa !410 ; 2 uses
  %.not43134 = icmp sgt i32 %i.ar, %i.aq
  br i1 %.not43134, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph143.split
  %i.as = and i32 %.037141, -4096                 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.aw
  %.sroa.2.0.insert.ext.i.i.le = zext i32 %i.bi to i64
  %.sroa.2.0.insert.shift.i.i.le = shl nuw i64 %.sroa.2.0.insert.ext.i.i.le, 32
  %.sroa.0.0.insert.ext.i.i.le = zext i32 %i.bh to i64
  %.sroa.0.0.insert.insert.i.i.le = or disjoint i64 %.sroa.2.0.insert.shift.i.i.le, %.sroa.0.0.insert.ext.i.i.le
  %.pre = load i32, ptr %i.g, align 4, !tbaa !410 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %.lr.ph143.split
  %i.at = phi i32 [ %.pre, %._crit_edge ], [ %i.ao, %.lr.ph143.split ] ; 2 uses
  %i.au = phi i32 [ %.pre, %._crit_edge ], [ %i.ap, %.lr.ph143.split ] ; 4 uses
  %i.av = phi i32 [ %i.ix, %._crit_edge ], [ %i.aq, %.lr.ph143.split ] ; 3 uses
  %.sroa.097.2.lcssa = phi i64 [ %.sroa.0.0.insert.insert.i.i.le, %._crit_edge ], [ %.sroa.097.1140, %.lr.ph143.split ] ; 3 uses
  %.sroa.097.4.extract.shift = lshr i64 %.sroa.097.2.lcssa, 32
  %.sroa.097.4.extract.trunc = trunc nuw i64 %.sroa.097.4.extract.shift to i32 ; 2 uses
  %i.aw = add nsw i32 %.sroa.097.4.extract.trunc, 1
  %.not42.not = icmp sgt i32 %i.au, %.sroa.097.4.extract.trunc
  br i1 %.not42.not, label %.lr.ph143.split, label %._crit_edge144.loopexit, !llvm.loop !8404

bb.d:                                             ; preds = %.lr.ph, %bb.aw
  %i.ax = phi i32 [ %i.aq, %.lr.ph ], [ %i.ix, %bb.aw ]
  %.038135 = phi i32 [ %i.ar, %.lr.ph ], [ %i.iw, %bb.aw ] ; 8 uses
  %i.ay = load i32, ptr %i.o, align 8, !tbaa !410
  %i.az = sub nsw i32 %.0147, %i.ay               ; 2 uses
  %i.ba = load i32, ptr %i.p, align 4, !tbaa !410
  %i.bb = sub nsw i32 %.037141, %i.ba             ; 2 uses
  %i.bc = load i32, ptr %i.q, align 8, !tbaa !410
  %i.bd = sub nsw i32 %.038135, %i.bc             ; 2 uses
  %i.be = and i32 %i.az, -4096                    ; 10 uses
  %i.bf = and i32 %i.bb, -4096                    ; 10 uses
  %i.bg = and i32 %i.bd, -4096                    ; 6 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.bf to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32 ; 2 uses
  %i.bh = or i32 %i.az, 4095                      ; 3 uses
  %i.bi = or i32 %i.bb, 4095                      ; 3 uses
  %i.bj = or i32 %i.bd, 4095                      ; 4 uses
  %i.bk = icmp ne i32 %.0147, %i.be
  %i.bl = icmp ne i32 %.037141, %i.bf
  %or.cond.not128 = or i1 %i.bk, %i.bl
  %i.bm = icmp ne i32 %.038135, %i.bg
  %or.cond123 = select i1 %or.cond.not128, i1 true, i1 %i.bm
  br i1 %or.cond123, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !410
  %i.bo = icmp slt i32 %i.bn, %i.bh
  br i1 %i.bo, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = load i32, ptr %i.g, align 4, !tbaa !410
  %i.bq = icmp slt i32 %i.bp, %i.bi
  %i.br = icmp slt i32 %i.ax, %i.bj
  %or.cond124 = select i1 %i.bq, i1 true, i1 %i.br
  br i1 %or.cond124, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, label %bb.af

_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread: ; preds = %bb.e, %bb.f, %bb.d
  %i.bs = load ptr, ptr %i.s, align 8, !tbaa !634 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.bs, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !410 ; 2 uses
  %i.bv = icmp slt i32 %i.bu, %i.be
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bw = icmp sgt i32 %i.bu, %i.be
  br i1 %i.bw, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !410 ; 2 uses
  %i.bz = icmp slt i32 %i.by, %i.bf
  br i1 %i.bz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = icmp sgt i32 %i.by, %i.bf
  br i1 %i.ca, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !410
  %i.cd = icmp slt i32 %i.cc, %i.bg
  br i1 %i.cd, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.h, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.i, %bb.g
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.i ], [ 16, %bb.g ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.i ], [ %.014.i.i.i.i, %bb.g ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ce, align 8, !tbaa !667 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !319

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.cf = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.cf, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !410 ; 2 uses
  %i.ci = icmp slt i32 %i.be, %i.ch
  br i1 %i.ci, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cj = icmp sgt i32 %i.be, %i.ch
  br i1 %i.cj, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ck = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !410 ; 2 uses
  %i.cm = icmp slt i32 %i.bf, %i.cl
  br i1 %i.cm, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = icmp sgt i32 %i.bf, %i.cl
  br i1 %i.cn, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.m
  %i.co = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !410
  %i.cq = icmp slt i32 %i.bg, %i.cp
  br i1 %i.cq, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.l, %bb.j, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread
  %i.cr = call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 15 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 270336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.cr, i8 0, i64 270336, i1 false)
  %i.ct = and i32 %.038135, -4096
  store i32 %i.ae, ptr %i.cs, align 8, !tbaa !410
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 270340
  store i32 %i.as, ptr %i.cu, align 4, !tbaa !410
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 270344
  store i32 %i.ct, ptr %i.cv, align 8, !tbaa !410
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 270348
  store i32 0, ptr %i.cw, align 4, !tbaa !2791
  %5 = load <1 x double>, ptr %i.r, align 8
  %broadcast.splat = shufflevector <1 x double> %5, <1 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %index = phi i64 [ 0, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store <2 x double> %broadcast.splat, ptr %i.cx, align 8, !tbaa !437
  store <2 x double> %broadcast.splat, ptr %i.cy, align 8, !tbaa !437
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  store <2 x double> %broadcast.splat, ptr %i.da, align 8, !tbaa !437
  store <2 x double> %broadcast.splat, ptr %i.db, align 8, !tbaa !437
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 80
  store <2 x double> %broadcast.splat, ptr %i.dd, align 8, !tbaa !437
  store <2 x double> %broadcast.splat, ptr %i.de, align 8, !tbaa !437
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 96
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 112
  store <2 x double> %broadcast.splat, ptr %i.dg, align 8, !tbaa !437
  store <2 x double> %broadcast.splat, ptr %i.dh, align 8, !tbaa !437
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.di = icmp eq i64 %index.next.3, 32768
  br i1 %i.di, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body, !llvm.loop !8405

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body
  %i.dj = load ptr, ptr %i.s, align 8, !tbaa !634 ; 2 uses
  %.not12.i.i.i.i46 = icmp eq ptr %i.dj, null
  br i1 %.not12.i.i.i.i46, label %.critedge.i, label %.lr.ph.i.i.i.i47

.lr.ph.i.i.i.i47:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51
  %.014.i.i.i.i48 = phi ptr [ %.1.i.i.i.i54, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51 ], [ %i.dj, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i49 = phi ptr [ %.19.i.i.i.i53, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51 ], [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 32
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !410 ; 2 uses
  %i.dm = icmp slt i32 %i.dl, %i.be
  br i1 %i.dm, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i47
  %i.dn = icmp sgt i32 %i.dl, %i.be
  br i1 %i.dn, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.do = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 36
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !410 ; 2 uses
  %i.dq = icmp slt i32 %i.dp, %i.bf
  br i1 %i.dq, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dr = icmp sgt i32 %i.dp, %i.bf
  br i1 %i.dr, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50: ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 40
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !410
  %i.du = icmp slt i32 %i.dt, %i.bg
  br i1 %i.du, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50, %bb.o, %.lr.ph.i.i.i.i47
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50, %bb.p, %bb.n
  %.sink.i.i.i.i52 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56 ], [ 16, %bb.p ], [ 16, %bb.n ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50 ]
  %.19.i.i.i.i53 = phi ptr [ %.0813.i.i.i.i49, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56 ], [ %.014.i.i.i.i48, %bb.p ], [ %.014.i.i.i.i48, %bb.n ], [ %.014.i.i.i.i48, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50 ] ; 9 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 %.sink.i.i.i.i52
  %.1.i.i.i.i54 = load ptr, ptr %i.dv, align 8, !tbaa !667 ; 2 uses
  %.not.i.i.i.i55 = icmp eq ptr %.1.i.i.i.i54, null
  br i1 %.not.i.i.i.i55, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i47, !llvm.loop !319

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51
  %i.dw = icmp eq ptr %.19.i.i.i.i53, %i.t
  br i1 %i.dw, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i53, i64 32
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !410 ; 2 uses
  %i.dz = icmp slt i32 %i.be, %i.dy
  br i1 %i.dz, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ea = icmp sgt i32 %i.be, %i.dy
  br i1 %i.ea, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i53, i64 36
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !410 ; 2 uses
  %i.ed = icmp slt i32 %i.bf, %i.ec
  br i1 %i.ed, label %.critedge.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ee = icmp sgt i32 %i.bf, %i.ec
  br i1 %i.ee, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.t
  %i.ef = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i53, i64 40
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !410
  %i.eh = icmp slt i32 %i.bg, %i.eg
  br i1 %i.eh, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.s, %bb.q, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i53, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i53, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i53, %bb.q ], [ %.19.i.i.i.i53, %bb.s ]
  %i.ei = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #29 ; 9 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32 ; 3 uses
  %.sroa.080.sroa.0.0.insert.ext = zext i32 %i.be to i64
  %.sroa.080.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.080.sroa.0.0.insert.ext
  store i64 %.sroa.080.sroa.0.0.insert.insert, ptr %i.ej, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 40 ; 2 uses
  store i32 %i.bg, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !437
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  store ptr %i.cr, ptr %i.ek, align 8, !tbaa !2787
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 56
  store double 0.000000e+00, ptr %i.el, align 8, !tbaa !2821
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  store i8 0, ptr %i.em, align 8, !tbaa !2822
  %i.en = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISF_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %i.ej)
          to label %bb.u unwind label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.u:                                             ; preds = %.critedge.i
  %i.eo = extractvalue { ptr, ptr } %i.en, 1      ; 6 uses
  %.not.i = icmp eq ptr %i.eo, null
  br i1 %.not.i, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ep = extractvalue { ptr, ptr } %i.en, 0
  %.not.i.i.i = icmp ne ptr %i.ep, null
  %i.eq = icmp eq ptr %i.eo, %i.t
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 true, i1 %i.eq
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.es = load i32, ptr %i.ej, align 8, !tbaa !410 ; 2 uses
  %i.et = load i32, ptr %i.er, align 4, !tbaa !410 ; 2 uses
  %i.eu = icmp slt i32 %i.es, %i.et
  br i1 %i.eu, label %.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ev = icmp sgt i32 %i.es, %i.et
  br i1 %i.ev, label %.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ei, i64 36
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !410 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 36
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !410 ; 2 uses
  %i.fa = icmp slt i32 %i.ex, %i.ez
  br i1 %i.fa, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fb = icmp sgt i32 %i.ex, %i.ez
  br i1 %i.fb, label %.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fc = load i32, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !410
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !410
  %i.ff = icmp slt i32 %i.fc, %i.fe
  br label %.thread.i

.thread.i:                                        ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %i.fg = phi i1 [ false, %bb.z ], [ true, %bb.v ], [ true, %bb.w ], [ false, %bb.x ], [ true, %bb.y ], [ %i.ff, %bb.aa ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fg, ptr noundef nonnull %i.ei, ptr noundef nonnull %i.eo, ptr noundef nonnull align 8 dereferenceable(32) %i.t) #22
  %i.fh = load i64, ptr %i.u, align 8, !tbaa !636
  %i.fi = add i64 %i.fh, 1
  store i64 %i.fi, ptr %i.u, align 8, !tbaa !636
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

common.resume:                                    ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i64, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i
  %.lcssa.sink = phi ptr [ %i.hp, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i64 ], [ %i.ei, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.iq, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i64 ], [ %i.fj, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa.sink, i64 noundef 72) #31
  resume { ptr, i32 } %common.resume.op

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge.i
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.ab:                                            ; preds = %bb.u
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef 72) #31
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.m, %bb.k, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 3 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !2787 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.ac, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

bb.ac:                                            ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.fo = call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 12 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.fq = load i8, ptr %i.fp, align 8, !tbaa !2822, !range !517, !noundef !774
  %i.fr = trunc nuw i8 %i.fq to i1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 270336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.fo, i8 0, i64 270336, i1 false)
  %i.ft = and i32 %.038135, -4096
  store i32 %i.ae, ptr %i.fs, align 8, !tbaa !410
end_hunk_8
