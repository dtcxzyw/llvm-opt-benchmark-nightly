Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/VolumeToSpheres?download=true
inline.NumInlined: 56869
inline.NumDeleted: 18802
loop-unroll.NumCompletelyUnrolled: 220
loop-unroll.NumRuntimeUnrolled: 172
loop-unroll.NumUnrolled: 788
begin_hunk_0_@_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_12start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools12v2s_internal12UpdatePointsEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  store ptr %i.ah, ptr %i.ay, align 8, !tbaa !853
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 88
  store i8 0, ptr %i.az, align 8, !tbaa !850
  store ptr %i.as, ptr %i.u, align 32, !tbaa !835
  store ptr %i.as, ptr %i.ai, align 32, !tbaa !835
  %i.ba = load ptr, ptr %3, align 8, !tbaa !854
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(129) %i.v, ptr noundef nonnull align 8 dereferenceable(128) %i.ba), !inline_history !4639
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !621
  %i.bc = load i64, ptr %2, align 8, !tbaa !619
  %i.bd = load i64, ptr %i.d, align 8, !tbaa !620
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = icmp ult i64 %i.bb, %i.be
  br i1 %i.bf, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.bg = load i64, ptr %0, align 8, !tbaa !838   ; 2 uses
  %i.bh = icmp ugt i64 %i.bg, 1
  br i1 %i.bh, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, label %bb.g

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge: ; preds = %bb.f, %bb.i
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !4640

bb.g:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i64 %i.bg, 0
  br i1 %.not.i8, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = load i8, ptr %i.m, align 4, !tbaa !837  ; 2 uses
  %.not4.i9 = icmp eq i8 %i.bi, 0
  br i1 %.not4.i9, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = add i8 %i.bi, -1
  store i8 %i.bj, ptr %i.m, align 4, !tbaa !837
  store i64 0, ptr %0, align 8, !tbaa !838
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_12start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools12v2s_internal12UpdatePointsEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(129) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools12v2s_internal12UpdatePointsEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 32, !tbaa !835 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load i64, ptr %i.c, align 8, !tbaa !839
  %i.e = load ptr, ptr %0, align 64, !tbaa !523
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(129) dereferenceable(129) %0) #21
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = atomicrmw sub ptr %i.g, i32 1 seq_cst, align 4
  %i.i = add i32 %i.h, -1
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN3tbb6detail2d19fold_treeINS1_19reduction_tree_nodeIN7openvdb5v13_05tools12v2s_internal12UpdatePointsEEEEEvPNS1_4nodeERKNS1_14execution_dataE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.f
  %.019.i = phi ptr [ %i.k, %bb.f ], [ %i.b, %bb.a ] ; 9 uses
  %i.k = load ptr, ptr %.019.i, align 8, !tbaa !815 ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.019.i, i64 88
  %i.m = load i8, ptr %i.l, align 8, !tbaa !850, !range !683, !noundef !616
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %1, align 8, !tbaa !854    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 15
  %i.q = load atomic i8, ptr %i.p monotonic, align 1
  %i.r = icmp eq i8 %i.q, -1
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %.0.i.i.i.i = select i1 %i.r, ptr %i.t, ptr %i.o
  %i.u = tail call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i.i)
  br i1 %i.u, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.019.i, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !4641, !nonnull !616, !align !617 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.019.i, i64 68
  %i.y = load float, ptr %i.x, align 4, !tbaa !735 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 36 ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !735
  %i.ab = fcmp ogt float %i.y, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store float %i.y, ptr %i.z, align 4, !tbaa !735
  %i.ac = getelementptr inbounds nuw i8, ptr %.019.i, i64 72
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !736
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !736
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %.019.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !839
  %i.ah = inttoptr i64 %i.ag to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ah, ptr noundef nonnull %.019.i, i64 noundef 96, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.aj = atomicrmw sub ptr %i.ai, i32 1 seq_cst, align 4
  %i.ak = add i32 %i.aj, -1
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %_ZN3tbb6detail2d19fold_treeINS1_19reduction_tree_nodeIN7openvdb5v13_05tools12v2s_internal12UpdatePointsEEEEEvPNS1_4nodeERKNS1_14execution_dataE.exit, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.am = getelementptr inbounds nuw i8, ptr %.019.i, i64 24
  %i.an = atomicrmw sub ptr %i.am, i64 1 seq_cst, align 8
  %.not.i.i.i = icmp eq i64 %i.an, 1
  br i1 %.not.i.i.i, label %bb.h, label %_ZN3tbb6detail2d19fold_treeINS1_19reduction_tree_nodeIN7openvdb5v13_05tools12v2s_internal12UpdatePointsEEEEEvPNS1_4nodeERKNS1_14execution_dataE.exit

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.019.i, i64 16
  %i.ap = ptrtoint ptr %i.ao to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.ap)
  br label %_ZN3tbb6detail2d19fold_treeINS1_19reduction_tree_nodeIN7openvdb5v13_05tools12v2s_internal12UpdatePointsEEEEEvPNS1_4nodeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19fold_treeINS1_19reduction_tree_nodeIN7openvdb5v13_05tools12v2s_internal12UpdatePointsEEEEEvPNS1_4nodeERKNS1_14execution_dataE.exit: ; preds = %bb.f, %bb.a, %bb.g, %bb.h
  %i.aq = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.aq, ptr noundef nonnull %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret void
}

declare noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_12start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools12v2s_internal12UpdatePointsEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(129) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::range_vector", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !621
  %i.c = load i64, ptr %2, align 8, !tbaa !619    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !620  ; 3 uses
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !837
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !834  ; 7 uses
  %.not18.i.i.i.i.i.i = icmp eq i64 %i.e, %i.c
  br i1 %.not18.i.i.i.i.i.i, label %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools12v2s_internal12UpdatePointsEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 36 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i
  %i.r = phi i64 [ %i.c, %.lr.ph.i.i.i.i.i.i ], [ %i.be, %bb.k ] ; 3 uses
  %.019.i.i.i.i.i.i = phi i64 [ %i.e, %.lr.ph.i.i.i.i.i.i ], [ %i.bf, %bb.k ] ; 5 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !4645, !nonnull !616, !align !617
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !727
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.019.i.i.i.i.i.i ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !548
  %.not17.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not17.i.i.i.i.i.i, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !4646, !nonnull !616, !align !617
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !556
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.019.i.i.i.i.i.i ; 2 uses
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !4647, !nonnull !616, !align !4648 ; 4 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !558
  %i.ab = load <2 x double>, ptr %i.y, align 8, !tbaa !701
  %i.ac = fptrunc <2 x double> %i.ab to <2 x float> ; 2 uses
  %i.ad = extractelement <2 x float> %i.ac, i64 0
  %i.ae = fsub float %i.ad, %i.aa                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ag = load float, ptr %i.af, align 4, !tbaa !558
  %i.ah = extractelement <2 x float> %i.ac, i64 1
  %i.ai = fsub float %i.ah, %i.ag                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !701
  %i.al = fptrunc double %i.ak to float
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.an = load float, ptr %i.am, align 4, !tbaa !558
  %i.ao = fsub float %i.al, %i.an                 ; 2 uses
  %i.ap = fmul float %i.ai, %i.ai
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ae, float %i.ap)
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.ao, float %i.aq)
  %sqrt.i.i.i.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ar) ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.at = load float, ptr %i.as, align 4, !tbaa !558 ; 2 uses
  %i.au = fcmp olt float %sqrt.i.i.i.i.i.i.i, %i.at
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.u, align 1, !tbaa !548
  %.pre23.i.i.i.i.i.i = load i64, ptr %2, align 8, !tbaa !619
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.av = load i8, ptr %i.n, align 8, !tbaa !734, !range !683, !noundef !616
  %i.aw = trunc nuw i8 %i.av to i1
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !4649
  %.pre20.i.i.i.i.i.i = load ptr, ptr %.pre.i.i.i.i.i.i, align 8, !tbaa !551
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %.pre20.i.i.i.i.i.i, i64 %.019.i.i.i.i.i.i ; 3 uses
  br i1 %i.aw, label %._crit_edge21.i.i.i.i.i.i, label %bb.h

._crit_edge21.i.i.i.i.i.i:                        ; preds = %bb.g
  %.pre22.i.i.i.i.i.i = load float, ptr %.phi.trans.insert.i.i.i.i.i.i, align 4, !tbaa !558
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ax = fsub float %sqrt.i.i.i.i.i.i.i, %i.at   ; 2 uses
  %i.ay = load float, ptr %.phi.trans.insert.i.i.i.i.i.i, align 4, !tbaa !558 ; 2 uses
  %i.az = fcmp olt float %i.ax, %i.ay
  %.sroa.speculated.i.i.i.i.i.i = select i1 %i.az, float %i.ax, float %i.ay ; 2 uses
  store float %.sroa.speculated.i.i.i.i.i.i, ptr %.phi.trans.insert.i.i.i.i.i.i, align 4, !tbaa !558
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge21.i.i.i.i.i.i
  %i.ba = phi float [ %.pre22.i.i.i.i.i.i, %._crit_edge21.i.i.i.i.i.i ], [ %.sroa.speculated.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %i.bb = load float, ptr %i.p, align 4, !tbaa !735
  %i.bc = fcmp ogt float %i.ba, %i.bb
  br i1 %i.bc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store float %i.ba, ptr %i.p, align 4, !tbaa !735
  %i.bd = trunc i64 %.019.i.i.i.i.i.i to i32
  store i32 %i.bd, ptr %i.q, align 8, !tbaa !736
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.f, %bb.d
  %i.be = phi i64 [ %.pre23.i.i.i.i.i.i, %bb.f ], [ %i.r, %bb.j ], [ %i.r, %bb.i ], [ %i.r, %bb.d ] ; 2 uses
  %i.bf = add i64 %.019.i.i.i.i.i.i, 1            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bf, %i.be
  br i1 %.not.i.i.i.i.i.i, label %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools12v2s_internal12UpdatePointsEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %bb.d, !llvm.loop !4642

bb.l:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 20 uses
  store i8 0, ptr %i.bg, align 1, !tbaa !548
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !825
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 128
  br label %bb.m

bb.m:                                             ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit, %bb.l
  %i.bn = phi i8 [ %i.on, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 0, %bb.l ] ; 3 uses
  %i.bo = phi i8 [ %i.oo, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 1, %bb.l ] ; 13 uses
  %i.bp = phi i8 [ %i.op, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 0, %bb.l ] ; 9 uses
  %i.bq = load i8, ptr %i.h, align 4, !tbaa !837  ; 10 uses
  %i.br = icmp ult i8 %i.bo, 8
  br i1 %i.br, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.m
  %.phi.trans.insert.i = zext i8 %i.bp to i64
  %.phi.trans.insert6.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.phi.trans.insert.i
  %.pre.i = load i8, ptr %.phi.trans.insert6.i, align 1, !tbaa !548
  %i.bs = icmp ult i8 %.pre.i, %i.bq
  br i1 %i.bs, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

bb.n:                                             ; preds = %bb.ac
  %i.bt = icmp ult i8 %i.jv, %i.bq
  br i1 %i.bt, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.1: ; preds = %bb.n
  %i.bu = zext nneg i8 %i.jj to i64               ; 2 uses
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.bu ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !621
  %i.by = load i64, ptr %i.bv, align 8, !tbaa !619
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !620
  %i.cb = sub i64 %i.by, %i.ca
  %i.cc = icmp ult i64 %i.bx, %i.cb
  br i1 %i.cc, label %bb.o, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

bb.o:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bu ; 2 uses
  %i.ce = add i8 %i.bp, 2
  %i.cf = and i8 %i.ce, 7                         ; 5 uses
  %i.cg = zext nneg i8 %i.cf to i64               ; 2 uses
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.cg ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false), !tbaa.struct !825
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !619 ; 2 uses
  store i64 %i.ci, ptr %i.bv, align 8, !tbaa !619
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !620 ; 2 uses
  %i.cl = sub i64 %i.ci, %i.ck
  %i.cm = lshr i64 %i.cl, 1
  %i.cn = add i64 %i.cm, %i.ck                    ; 2 uses
  store i64 %i.cn, ptr %i.ch, align 8, !tbaa !619
  store i64 %i.cn, ptr %i.bz, align 8, !tbaa !620
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !621
  store i64 %i.cp, ptr %i.bw, align 8, !tbaa !621
  %i.cq = load i8, ptr %i.cd, align 1, !tbaa !548
  %i.cr = add i8 %i.cq, 1                         ; 3 uses
  store i8 %i.cr, ptr %i.cd, align 1, !tbaa !548
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cg
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !548
  %i.ct = add nuw nsw i8 %i.bo, 2                 ; 3 uses
  %exitcond.not.i.1 = icmp eq i8 %i.ct, 8
  br i1 %exitcond.not.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread, label %bb.p, !llvm.loop !20

bb.p:                                             ; preds = %bb.o
  %i.cu = icmp ult i8 %i.cr, %i.bq
  br i1 %i.cu, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.2: ; preds = %bb.p
  %i.cv = zext nneg i8 %i.cf to i64               ; 2 uses
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.cv ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !621
  %i.cz = load i64, ptr %i.cw, align 8, !tbaa !619
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !620
  %i.dc = sub i64 %i.cz, %i.db
  %i.dd = icmp ult i64 %i.cy, %i.dc
  br i1 %i.dd, label %bb.q, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

bb.q:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.2
  %i.de = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cv ; 2 uses
  %i.df = add i8 %i.bp, 3
  %i.dg = and i8 %i.df, 7                         ; 5 uses
  %i.dh = zext nneg i8 %i.dg to i64               ; 2 uses
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.dh ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.di, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i64 24, i1 false), !tbaa.struct !825
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !619 ; 2 uses
  store i64 %i.dj, ptr %i.cw, align 8, !tbaa !619
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !620 ; 2 uses
  %i.dm = sub i64 %i.dj, %i.dl
  %i.dn = lshr i64 %i.dm, 1
  %i.do = add i64 %i.dn, %i.dl                    ; 2 uses
  store i64 %i.do, ptr %i.di, align 8, !tbaa !619
  store i64 %i.do, ptr %i.da, align 8, !tbaa !620
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !621
  store i64 %i.dq, ptr %i.cx, align 8, !tbaa !621
  %i.dr = load i8, ptr %i.de, align 1, !tbaa !548
  %i.ds = add i8 %i.dr, 1                         ; 3 uses
  store i8 %i.ds, ptr %i.de, align 1, !tbaa !548
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.dh
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !548
  %i.du = add nuw nsw i8 %i.bo, 3                 ; 3 uses
  %exitcond.not.i.2 = icmp eq i8 %i.du, 8
  br i1 %exitcond.not.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread, label %bb.r, !llvm.loop !20

bb.r:                                             ; preds = %bb.q
  %i.dv = icmp ult i8 %i.ds, %i.bq
  br i1 %i.dv, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.3, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.3: ; preds = %bb.r
  %i.dw = zext nneg i8 %i.dg to i64               ; 2 uses
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.dw ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !621
  %i.ea = load i64, ptr %i.dx, align 8, !tbaa !619
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !620
  %i.ed = sub i64 %i.ea, %i.ec
  %i.ee = icmp ult i64 %i.dz, %i.ed
  br i1 %i.ee, label %bb.s, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

bb.s:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.3
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.dw ; 2 uses
  %i.eg = and i8 %i.bp, 7                         ; 4 uses
  %i.eh = xor i8 %i.eg, 4                         ; 8 uses
  %i.ei = zext nneg i8 %i.eh to i64               ; 2 uses
  %i.ej = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.ei ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i64 24, i1 false), !tbaa.struct !825
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !619 ; 2 uses
  store i64 %i.ek, ptr %i.dx, align 8, !tbaa !619
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !620 ; 2 uses
  %i.en = sub i64 %i.ek, %i.em
  %i.eo = lshr i64 %i.en, 1
  %i.ep = add i64 %i.eo, %i.em                    ; 2 uses
  store i64 %i.ep, ptr %i.ej, align 8, !tbaa !619
  store i64 %i.ep, ptr %i.eb, align 8, !tbaa !620
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !621
  store i64 %i.er, ptr %i.dy, align 8, !tbaa !621
  %i.es = load i8, ptr %i.ef, align 1, !tbaa !548
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_12start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools12v2s_internal12UpdatePointsEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 8 ; 2 uses
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !620
  %i.jf = sub i64 %i.jc, %i.je
  %i.jg = icmp ult i64 %i.jb, %i.jf
  br i1 %i.jg, label %bb.ac, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

bb.ac:                                            ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.iy ; 2 uses
  %i.ji = add nuw i8 %i.bp, 1
  %i.jj = and i8 %i.ji, 7                         ; 5 uses
  %i.jk = zext nneg i8 %i.jj to i64               ; 2 uses
  %i.jl = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.jk ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jl, ptr noundef nonnull align 8 dereferenceable(24) %i.iz, i64 24, i1 false), !tbaa.struct !825
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !619 ; 2 uses
  store i64 %i.jm, ptr %i.iz, align 8, !tbaa !619
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !620 ; 2 uses
  %i.jp = sub i64 %i.jm, %i.jo
  %i.jq = lshr i64 %i.jp, 1
  %i.jr = add i64 %i.jq, %i.jo                    ; 2 uses
  store i64 %i.jr, ptr %i.jl, align 8, !tbaa !619
  store i64 %i.jr, ptr %i.jd, align 8, !tbaa !620
  %i.js = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !621
  store i64 %i.jt, ptr %i.ja, align 8, !tbaa !621
  %i.ju = load i8, ptr %i.jh, align 1, !tbaa !548
  %i.jv = add i8 %i.ju, 1                         ; 3 uses
  store i8 %i.jv, ptr %i.jh, align 1, !tbaa !548
  %i.jw = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.jk
  store i8 %i.jv, ptr %i.jw, align 1, !tbaa !548
  %i.jx = add nuw nsw i8 %i.bo, 1                 ; 3 uses
  %exitcond.not.i = icmp eq i8 %i.jx, 8
  br i1 %exitcond.not.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread, label %bb.n, !llvm.loop !20

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit: ; preds = %bb.n, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.1, %bb.p, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.2, %bb.r, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.3, %bb.t, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.4, %bb.v, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.5, %bb.x, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.6, %bb.z, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.7, %bb.ab, %.lr.ph.i, %bb.m
  %i.jy = phi i8 [ %i.bo, %bb.m ], [ %i.bo, %.lr.ph.i ], [ %i.bo, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i ], [ %i.jx, %bb.n ], [ %i.jx, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.1 ], [ %i.ct, %bb.p ], [ %i.ct, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.2 ], [ %i.du, %bb.r ], [ %i.du, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.3 ], [ %i.ev, %bb.t ], [ %i.ev, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.4 ], [ %i.fw, %bb.v ], [ %i.fw, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.5 ], [ %i.gx, %bb.x ], [ %i.gx, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.6 ], [ %i.hy, %bb.z ], [ %i.hy, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.7 ], [ %i.ix, %bb.ab ] ; 6 uses
  %i.jz = phi i8 [ %i.bp, %bb.m ], [ %i.bp, %.lr.ph.i ], [ %i.bp, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i ], [ %i.jj, %bb.n ], [ %i.jj, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.1 ], [ %i.cf, %bb.p ], [ %i.cf, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.2 ], [ %i.dg, %bb.r ], [ %i.dg, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.3 ], [ %i.eh, %bb.t ], [ %i.eh, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.4 ], [ %i.fi, %bb.v ], [ %i.fi, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.5 ], [ %i.gj, %bb.x ], [ %i.gj, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.6 ], [ %i.hk, %bb.z ], [ %i.hk, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.7 ], [ %i.eg, %bb.ab ] ; 6 uses
  %i.ka = load ptr, ptr %i.bi, align 32, !tbaa !835
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  %i.kc = load atomic i8, ptr %i.kb monotonic, align 1, !range !683, !noundef !616
  %i.kd = trunc nuw i8 %i.kc to i1
  br i1 %i.kd, label %bb.ad, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.ac
  %.lcssa = phi i8 [ %i.jj, %bb.ac ], [ %i.cf, %bb.o ], [ %i.dg, %bb.q ], [ %i.eh, %bb.s ], [ %i.fi, %bb.u ], [ %i.gj, %bb.w ], [ %i.hk, %bb.y ], [ %i.eg, %bb.aa ] ; 2 uses
  %i.ke = load ptr, ptr %i.bi, align 32, !tbaa !835
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %i.kg = load atomic i8, ptr %i.kf monotonic, align 1, !range !683, !noundef !616
  %i.kh = trunc nuw i8 %i.kg to i1
  br i1 %i.kh, label %.thread80, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge

.thread80:                                        ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread
  %i.ki = add i8 %i.bq, 1
  store i8 %i.ki, ptr %i.h, align 4, !tbaa !837
  br label %.noexc

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit
  %i.kj = phi i8 [ %.lcssa, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread ], [ %i.jz, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit ] ; 2 uses
  %i.kk = phi i8 [ 8, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread ], [ %i.jy, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit ]
  %.pre = zext i8 %i.kj to i64
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

bb.ad:                                            ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit
  %i.kl = add i8 %i.bq, 1                         ; 2 uses
  store i8 %i.kl, ptr %i.h, align 4, !tbaa !837
  %i.km = icmp ugt i8 %i.jy, 1
  br i1 %i.km, label %.noexc, label %bb.ae

.noexc:                                           ; preds = %.thread80, %bb.ad
  %i.kn = phi i8 [ 8, %.thread80 ], [ %i.jy, %bb.ad ]
  %i.ko = phi i8 [ %.lcssa, %.thread80 ], [ %i.jz, %bb.ad ]
  %i.kp = zext nneg i8 %i.bn to i64               ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.kp
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !548
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !824
  %i.ks = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !4643 ; 11 uses
  %i.kt = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.kp
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ku, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools12v2s_internal12UpdatePointsEKNS1_16auto_partitionerEEE, i64 16), ptr %i.ks, align 64, !tbaa !523
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.kv, ptr noundef nonnull align 8 dereferenceable(24) %i.kt, i64 24, i1 false), !tbaa.struct !825
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 88
  %i.kx = load ptr, ptr %i.bj, align 8, !tbaa !834 ; 2 uses
  store ptr %i.kx, ptr %i.kw, align 8, !tbaa !834
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ks, i64 96 ; 2 uses
  store ptr null, ptr %i.ky, align 32, !tbaa !835
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ks, i64 104
  %i.la = load i64, ptr %i.bk, align 8, !tbaa !838
  %i.lb = lshr i64 %i.la, 1                       ; 2 uses
  store i64 %i.lb, ptr %i.bk, align 8, !tbaa !838
  store i64 %i.lb, ptr %i.kz, align 8, !tbaa !838
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ks, i64 112
  store i32 2, ptr %i.lc, align 16, !tbaa !836
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ks, i64 116
  %i.le = load i8, ptr %i.bl, align 4, !tbaa !837
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ks, i64 120
  %i.lg = load i64, ptr %4, align 8, !tbaa !839
  store i64 %i.lg, ptr %i.lf, align 8, !tbaa !839
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ks, i64 128
  store i8 1, ptr %i.lh, align 64, !tbaa !840
  %i.li = sub i8 %i.le, %i.kr
  store i8 %i.li, ptr %i.ld, align 4, !tbaa !837
  store i8 0, ptr %i.bm, align 64, !tbaa !840
  %i.lj = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 96, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !4643 ; 8 uses
  %i.lk = load ptr, ptr %i.bi, align 32, !tbaa !851
  store ptr %i.lk, ptr %i.lj, align 8, !tbaa !815
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  store i32 2, ptr %i.ll, align 8, !tbaa !816
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.ln = load i64, ptr %4, align 8, !tbaa !839
  store i64 %i.ln, ptr %i.lm, align 8, !tbaa !839
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  store i8 0, ptr %i.lo, align 8, !tbaa !852
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lj, i64 80
  store ptr %i.kx, ptr %i.lp, align 8, !tbaa !853
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lj, i64 88
  store i8 0, ptr %i.lq, align 8, !tbaa !850
  store ptr %i.lj, ptr %i.bi, align 32, !tbaa !835
  store ptr %i.lj, ptr %i.ky, align 32, !tbaa !835
  %i.lr = load ptr, ptr %3, align 8, !tbaa !854
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(129) %i.ks, ptr noundef nonnull align 8 dereferenceable(128) %i.lr), !inline_history !4643
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.ls = add i8 %i.kn, -1
  %i.lt = add nuw nsw i8 %i.bn, 1
  %i.lu = and i8 %i.lt, 7
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

bb.ae:                                            ; preds = %bb.ad
  %i.lv = zext i8 %i.jz to i64                    ; 4 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.lv
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !548
  %i.ly = icmp ult i8 %i.lx, %i.kl
  br i1 %i.ly, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit: ; preds = %bb.ae
  %i.lz = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.lv ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !621
  %i.mc = load i64, ptr %i.lz, align 8, !tbaa !619
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.me = load i64, ptr %i.md, align 8, !tbaa !620
  %i.mf = sub i64 %i.mc, %i.me
  %i.mg = icmp ult i64 %i.mb, %i.mf
  br i1 %i.mg, label %thread-pre-split35, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.ae, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit
  %i.mh = phi i8 [ %i.kj, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.jz, %bb.ae ], [ %i.jz, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.mi = phi i8 [ %i.kk, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.jy, %bb.ae ], [ %i.jy, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %.pre-phi = phi i64 [ %.pre, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.lv, %bb.ae ], [ %i.lv, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.mj = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %.pre-phi ; 2 uses
  %i.mk = load ptr, ptr %i.bj, align 8, !tbaa !834 ; 7 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !620 ; 2 uses
  %i.mn = load i64, ptr %i.mj, align 8, !tbaa !619 ; 2 uses
  %.not18.i.i.i.i.i.i15 = icmp eq i64 %i.mm, %i.mn
  br i1 %.not18.i.i.i.i.i.i15, label %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools12v2s_internal12UpdatePointsEKNS1_16auto_partitionerEE8run_bodyERS4_.exit28, label %.lr.ph.i.i.i.i.i.i16

.lr.ph.i.i.i.i.i.i16:                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 24
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mk, i64 32
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mk, i64 36 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mk, i64 40
  br label %bb.af

bb.af:                                            ; preds = %bb.am, %.lr.ph.i.i.i.i.i.i16
  %.019.i.i.i.i.i.i17 = phi i64 [ %i.mm, %.lr.ph.i.i.i.i.i.i16 ], [ %i.og, %bb.am ] ; 5 uses
  %i.mu = load ptr, ptr %i.mo, align 8, !tbaa !4645, !nonnull !616, !align !617
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !727
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 %.019.i.i.i.i.i.i17 ; 2 uses
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !548
  %.not17.i.i.i.i.i.i18 = icmp eq i8 %i.mx, 0
  br i1 %.not17.i.i.i.i.i.i18, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.my = load ptr, ptr %i.mp, align 8, !tbaa !4646, !nonnull !616, !align !617
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !556
  %i.na = getelementptr inbounds nuw [24 x i8], ptr %i.mz, i64 %.019.i.i.i.i.i.i17 ; 2 uses
  %i.nb = load ptr, ptr %i.mk, align 8, !tbaa !4647, !nonnull !616, !align !4648 ; 4 uses
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !558
  %i.nd = load <2 x double>, ptr %i.na, align 8, !tbaa !701
  %i.ne = fptrunc <2 x double> %i.nd to <2 x float> ; 2 uses
  %i.nf = extractelement <2 x float> %i.ne, i64 0
  %i.ng = fsub float %i.nf, %i.nc                 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nb, i64 4
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !558
  %i.nj = extractelement <2 x float> %i.ne, i64 1
  %i.nk = fsub float %i.nj, %i.ni                 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !701
  %i.nn = fptrunc double %i.nm to float
  %i.no = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.np = load float, ptr %i.no, align 4, !tbaa !558
  %i.nq = fsub float %i.nn, %i.np                 ; 2 uses
  %i.nr = fmul float %i.nk, %i.nk
  %i.ns = call float @llvm.fmuladd.f32(float %i.ng, float %i.ng, float %i.nr)
  %i.nt = call float @llvm.fmuladd.f32(float %i.nq, float %i.nq, float %i.ns)
  %sqrt.i.i.i.i.i.i.i20 = call noundef float @llvm.sqrt.f32(float %i.nt) ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nb, i64 12
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !558 ; 2 uses
  %i.nw = fcmp olt float %sqrt.i.i.i.i.i.i.i20, %i.nv
  br i1 %i.nw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i8 1, ptr %i.mw, align 1, !tbaa !548
  br label %bb.am

bb.ai:                                            ; preds = %bb.ag
  %i.nx = load i8, ptr %i.mq, align 8, !tbaa !734, !range !683, !noundef !616
  %i.ny = trunc nuw i8 %i.nx to i1
  %.pre.i.i.i.i.i.i21 = load ptr, ptr %i.mr, align 8, !tbaa !4649
  %.pre20.i.i.i.i.i.i22 = load ptr, ptr %.pre.i.i.i.i.i.i21, align 8, !tbaa !551
  %.phi.trans.insert.i.i.i.i.i.i23 = getelementptr inbounds nuw [4 x i8], ptr %.pre20.i.i.i.i.i.i22, i64 %.019.i.i.i.i.i.i17 ; 3 uses
  br i1 %i.ny, label %._crit_edge21.i.i.i.i.i.i25, label %bb.aj

._crit_edge21.i.i.i.i.i.i25:                      ; preds = %bb.ai
  %.pre22.i.i.i.i.i.i26 = load float, ptr %.phi.trans.insert.i.i.i.i.i.i23, align 4, !tbaa !558
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.nz = fsub float %sqrt.i.i.i.i.i.i.i20, %i.nv ; 2 uses
  %i.oa = load float, ptr %.phi.trans.insert.i.i.i.i.i.i23, align 4, !tbaa !558 ; 2 uses
  %i.ob = fcmp olt float %i.nz, %i.oa
  %.sroa.speculated.i.i.i.i.i.i24 = select i1 %i.ob, float %i.nz, float %i.oa ; 2 uses
  store float %.sroa.speculated.i.i.i.i.i.i24, ptr %.phi.trans.insert.i.i.i.i.i.i23, align 4, !tbaa !558
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge21.i.i.i.i.i.i25
  %i.oc = phi float [ %.pre22.i.i.i.i.i.i26, %._crit_edge21.i.i.i.i.i.i25 ], [ %.sroa.speculated.i.i.i.i.i.i24, %bb.aj ] ; 2 uses
  %i.od = load float, ptr %i.ms, align 4, !tbaa !735
  %i.oe = fcmp ogt float %i.oc, %i.od
  br i1 %i.oe, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store float %i.oc, ptr %i.ms, align 4, !tbaa !735
  %i.of = trunc i64 %.019.i.i.i.i.i.i17 to i32
  store i32 %i.of, ptr %i.mt, align 8, !tbaa !736
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.ah, %bb.af
  %i.og = add i64 %.019.i.i.i.i.i.i17, 1          ; 2 uses
  %.not.i.i.i.i.i.i19 = icmp eq i64 %i.og, %i.mn
  br i1 %.not.i.i.i.i.i.i19, label %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools12v2s_internal12UpdatePointsEKNS1_16auto_partitionerEE8run_bodyERS4_.exit28, label %bb.af, !llvm.loop !4642

_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools12v2s_internal12UpdatePointsEKNS1_16auto_partitionerEE8run_bodyERS4_.exit28: ; preds = %bb.am, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread
  %i.oh = add i8 %i.mi, -1
  %i.oi = add nuw i8 %i.mh, 7
  %i.oj = and i8 %i.oi, 7
  br label %thread-pre-split35

thread-pre-split35:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools12v2s_internal12UpdatePointsEKNS1_16auto_partitionerEE8run_bodyERS4_.exit28
  %i.ok = phi i8 [ %i.oh, %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools12v2s_internal12UpdatePointsEKNS1_16auto_partitionerEE8run_bodyERS4_.exit28 ], [ %i.jy, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.ol = phi i8 [ %i.oj, %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools12v2s_internal12UpdatePointsEKNS1_16auto_partitionerEE8run_bodyERS4_.exit28 ], [ %i.jz, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.om = icmp eq i8 %i.ok, 0
  br i1 %i.om, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit34, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %.noexc, %thread-pre-split35
  %i.on = phi i8 [ %i.lu, %.noexc ], [ %i.bn, %thread-pre-split35 ]
  %i.oo = phi i8 [ %i.ls, %.noexc ], [ %i.ok, %thread-pre-split35 ]
  %i.op = phi i8 [ %i.ko, %.noexc ], [ %i.ol, %thread-pre-split35 ]
  %i.oq = load ptr, ptr %3, align 8, !tbaa !854   ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 15
  %i.os = load atomic i8, ptr %i.or monotonic, align 1
  %i.ot = icmp eq i8 %i.os, -1
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %i.ov = load ptr, ptr %i.ou, align 8
  %.0.i.i = select i1 %i.ot, ptr %i.ov, ptr %i.oq
  %i.ow = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.ow, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit34, label %bb.m, !llvm.loop !4644

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit34: ; preds = %thread-pre-split35, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools12v2s_internal12UpdatePointsEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools12v2s_internal12UpdatePointsEKNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %bb.k, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit34
  ret void
}

declare noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

declare void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

declare void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

declare void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef) local_unnamed_addr #4

declare void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

declare void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #19

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #14

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !604
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !552  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load float, ptr %3, align 4, !tbaa !558  ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !855

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !552
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load float, ptr %i.o, align 4, !tbaa !558
  store float %i.s, ptr %i.d, align 4, !tbaa !558
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !552
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !855

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
end_hunk_1
begin_hunk_2_@_ZN7openvdb5v13_05tools19ClosestSurfacePointINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEED2Ev:bb.a
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !660
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !661
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !523
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !233
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !523
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !233
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !548
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !521
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !662

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !658  ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !660
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !661
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !523
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21, !inline_history !234
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !523
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21, !inline_history !234
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !548
  %.not.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !521
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !662

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !870 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EED2Ev.exit, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IfEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IfEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.aj) #31
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IfEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !866 ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIPKN7openvdb5v13_04tree8LeafNodeIjLj3EEESaIS6_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EED2Ev.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2321
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #31
  br label %_ZNSt6vectorIPKN7openvdb5v13_04tree8LeafNodeIjLj3EEESaIS6_EED2Ev.exit

_ZNSt6vectorIPKN7openvdb5v13_04tree8LeafNodeIjLj3EEESaIS6_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EED2Ev.exit, %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !606 ; 3 uses
  %.not.i.i.i6 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i6, label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIPKN7openvdb5v13_04tree8LeafNodeIjLj3EEESaIS6_EED2Ev.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !2320
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #31
  br label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit:        ; preds = %_ZNSt6vectorIPKN7openvdb5v13_04tree8LeafNodeIjLj3EEESaIS6_EED2Ev.exit, %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !859 ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec4IdEESaIS4_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !2325
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #31
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec4IdEESaIS4_EED2Ev.exit

_ZNSt6vectorIN7openvdb5v13_04math4Vec4IdEESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit, %bb.p
  %i.bf = load ptr, ptr %0, align 8, !tbaa !859   ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec4IdEESaIS4_EED2Ev.exit9, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec4IdEESaIS4_EED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2325
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bk) #31
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec4IdEESaIS4_EED2Ev.exit9

_ZNSt6vectorIN7openvdb5v13_04math4Vec4IdEESaIS4_EED2Ev.exit9: ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec4IdEESaIS4_EED2Ev.exit, %bb.q
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.log.f80(x86_fp80) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.ctpop.v8i64(<8 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.and.v2i64(<2 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v8i8(<8 x i8>) #10

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn }
attributes #9 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nofree nounwind }
attributes #20 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { noreturn }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { builtin nounwind }
attributes #32 = { noreturn nounwind }
attributes #33 = { nounwind willreturn memory(none) }
attributes #34 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!512, !513, !514}
!llvm.ident = !{!515}
!llvm.errno.tbaa = !{!520}

!0 = distinct !{null, null, null, null}
!1 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_04math9TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2 = distinct !{!2, !663}
!3 = distinct !{null, null, null, null, null}
!4 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_04tree8TreeBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!5 = distinct !{!5, !663}
!6 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_04GridINS1_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8 = distinct !{null}
!9 = distinct !{!9, !663}
!10 = distinct !{null}
!11 = distinct !{ptr @_ZN7openvdb5v13_04math9TransformD2Ev, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!12 = distinct !{null}
!13 = distinct !{null, null, null, null}
!14 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!15 = distinct !{null, null}
!16 = distinct !{!16, !663}
!17 = distinct !{!17, !663}
!18 = distinct !{null}
!19 = distinct !{null, null, null, null}
!20 = distinct !{!20, !663}
!21 = distinct !{!21, !663}
!22 = distinct !{!22, !663}
!23 = distinct !{!23, !663}
!24 = distinct !{null}
!25 = distinct !{ptr @_ZNSt12__shared_ptrISt15basic_streambufIcSt11char_traitsIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!26 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!27 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!28 = distinct !{null, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!29 = distinct !{null, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io10MappedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!30 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!31 = distinct !{ptr @_ZN7openvdb5v13_08GridBaseD2Ev, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_04math9TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!32 = distinct !{!32, !663}
!33 = distinct !{null, null, null, null}
!34 = distinct !{null, null, null}
!35 = distinct !{null, null, null}
!36 = distinct !{!36, !663}
!37 = distinct !{!37, !663}
!38 = distinct !{!38, !663}
!39 = distinct !{!39, !663}
!40 = distinct !{!40, !663}
!41 = distinct !{!41, !663}
!42 = distinct !{!42, !663}
!43 = distinct !{!43, !663}
!44 = distinct !{!44, !663}
!45 = distinct !{!45, !663}
!46 = distinct !{null, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!47 = distinct !{null, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io10MappedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!48 = distinct !{null}
!49 = distinct !{null}
!50 = distinct !{!50, !663}
!51 = distinct !{!51, !663}
!52 = distinct !{!52, !663}
!53 = distinct !{!53, !663}
!54 = distinct !{!54, !663}
!55 = distinct !{null}
!56 = distinct !{!56, !663}
!57 = distinct !{null}
!58 = distinct !{!58, !663}
!59 = distinct !{!59, !663}
!60 = distinct !{!60, !663}
!61 = distinct !{!61, !663}
!62 = distinct !{!62, !663}
!63 = distinct !{!63, !663}
!64 = distinct !{null}
!65 = distinct !{null}
!66 = distinct !{ptr @_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE14detachFromFileEv, null, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!67 = distinct !{ptr @_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE14detachFromFileEv, null, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io10MappedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!68 = distinct !{null}
!69 = distinct !{null}
!70 = distinct !{!70, !663}
!71 = distinct !{!71, !663}
!72 = distinct !{null}
!73 = distinct !{!73, !663}
!74 = distinct !{!74, !663}
!75 = distinct !{!75, !663}
!76 = distinct !{!76, !663}
!77 = distinct !{!77, !663}
!78 = distinct !{null}
!79 = distinct !{!79, !663}
!80 = distinct !{null}
!81 = distinct !{null}
!82 = distinct !{!82, !663}
!83 = distinct !{!83, !663}
!84 = distinct !{null}
!85 = distinct !{!85, !663}
!86 = distinct !{null}
!87 = distinct !{null}
!88 = distinct !{null}
!89 = distinct !{!89, !663}
!90 = distinct !{!90, !663}
!91 = distinct !{!91, !663}
!92 = distinct !{!92, !663}
!93 = distinct !{!93, !663}
!94 = distinct !{!94, !663}
!95 = distinct !{!95, !663}
!96 = distinct !{null}
!97 = distinct !{null}
!98 = distinct !{null}
!99 = distinct !{null}
!100 = distinct !{null}
!101 = distinct !{null}
!102 = distinct !{null}
!103 = distinct !{!103, !663}
!104 = distinct !{!104, !663}
!105 = distinct !{null}
!106 = distinct !{null}
!107 = distinct !{null}
!108 = distinct !{null}
!109 = distinct !{!109, !663, !1476}
!110 = distinct !{null}
!111 = distinct !{null}
!112 = distinct !{null}
!113 = distinct !{null}
!114 = distinct !{null}
!115 = distinct !{null}
!116 = distinct !{null}
!117 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io10MappedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!118 = distinct !{null, null, null, null}
!119 = distinct !{null, null, null, null}
!120 = distinct !{!120, !663}
!121 = distinct !{!121, !663}
!122 = distinct !{!122, !663}
!123 = distinct !{!123, !663}
!124 = distinct !{!124, !663}
!125 = distinct !{!125, !663}
!126 = distinct !{!126, !663}
!127 = distinct !{!127, !663}
!128 = distinct !{null}
!129 = distinct !{null}
!130 = distinct !{null}
!131 = distinct !{null}
!132 = distinct !{null}
!133 = distinct !{null}
end_hunk_2
