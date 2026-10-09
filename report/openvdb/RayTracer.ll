Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/RayTracer?download=true
inline.NumInlined: 4637
inline.NumDeleted: 1864
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EEC2ERKSH_:bb.a

.noexc.i.i:                                       ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #28
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.j
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #27
          to label %.noexc6 unwind label %bb.o

.noexc6:                                          ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i, %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERKSF_.exit
  %i.ak = phi ptr [ null, %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERKSF_.exit ], [ %i.aj, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.ak, ptr %i.aa, align 8, !tbaa !127
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !399
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.am, ptr %i.an, align 8, !tbaa !128
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !227 ; 3 uses
  %i.ap = load ptr, ptr %i.ac, align 8, !tbaa !227
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 4 uses
  %i.at = icmp sgt i64 %i.as, 4
  br i1 %i.at, label %bb.k, label %bb.l, !prof !383

bb.k:                                             ; preds = %.noexc6
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ak, ptr align 4 %i.ao, i64 %i.as, i1 false)
  br label %bb.n

bb.l:                                             ; preds = %.noexc6
  %i.au = icmp eq i64 %i.as, 4
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.av = load float, ptr %i.ao, align 4, !tbaa !98
  store float %i.av, ptr %i.ak, align 4, !tbaa !98
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.aw = getelementptr inbounds i8, ptr %i.ak, i64 %i.as
  store ptr %i.aw, ptr %i.al, align 8, !tbaa !399
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ax, ptr noundef nonnull align 8 dereferenceable(12) %i.ay, i64 12, i1 false), !tbaa.struct !445
  ret void

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.c) #17
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

declare noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvmSt11align_val_t(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINSA_4GridINSA_4tree4TreeINSE_8RootNodeINSE_12InternalNodeINSH_INSE_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENSB_22LevelSetRayIntersectorISO_NSB_16LinearSearchImplISO_Li0EdEELi2ENSA_4math3RayIdEEEEEEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(464) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d0::split", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !124
  %i.c = load i64, ptr %2, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !123
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %0, align 8, !tbaa !262    ; 2 uses
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4, !tbaa !261   ; 2 uses
  %.not4.i = icmp eq i8 %i.k, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = add i8 %i.k, -1
  store i8 %i.l, ptr %i.j, align 4, !tbaa !261
  store i64 0, ptr %0, align 8, !tbaa !262
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit: ; preds = %bb.b, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !248
  %i.o = call noundef ptr @_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS8_4GridINS8_4tree4TreeINSC_8RootNodeINSC_12InternalNodeINSF_INSC_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS9_22LevelSetRayIntersectorISM_NS9_16LinearSearchImplISM_Li0EdEELi2ENS8_4math3RayIdEEEEEEKNS1_16auto_partitionerEEEJRSX_RNS0_2d05splitERS2_EEEPT_RNS1_14execution_dataEDpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 64 dereferenceable(464) %1, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %4), !inline_history !891 ; 2 uses
  %i.p = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !891 ; 6 uses
  %i.q = load ptr, ptr %i.n, align 16, !tbaa !456
  store ptr %i.q, ptr %i.p, align 8, !tbaa !267
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 2, ptr %i.r, align 8, !tbaa !268
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i64, ptr %4, align 8, !tbaa !263
  store i64 %i.t, ptr %i.s, align 8, !tbaa !263
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i8 0, ptr %i.u, align 8, !tbaa !458
  store ptr %i.p, ptr %i.n, align 16, !tbaa !451
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 432
  store ptr %i.p, ptr %i.v, align 16, !tbaa !451
  %i.w = load ptr, ptr %3, align 8, !tbaa !459
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(464) %i.o, ptr noundef nonnull align 8 dereferenceable(128) %i.w), !inline_history !891
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.x = load i64, ptr %i.a, align 8, !tbaa !124
  %i.y = load i64, ptr %2, align 8, !tbaa !122
  %i.z = load i64, ptr %i.d, align 8, !tbaa !123
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp ult i64 %i.x, %i.aa
  br i1 %i.ab, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.ac = load i64, ptr %0, align 8, !tbaa !262   ; 2 uses
  %i.ad = icmp ugt i64 %i.ac, 1
  br i1 %i.ad, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, label %bb.g

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge: ; preds = %bb.f, %bb.i
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !892

bb.g:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i64 %i.ac, 0
  br i1 %.not.i8, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load i8, ptr %i.m, align 4, !tbaa !261  ; 2 uses
  %.not4.i9 = icmp eq i8 %i.ae, 0
  br i1 %.not4.i9, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = add i8 %i.ae, -1
  store i8 %i.af, ptr %i.m, align 4, !tbaa !261
  store i64 0, ptr %0, align 8, !tbaa !262
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINSC_4GridINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENSD_22LevelSetRayIntersectorISQ_NSD_16LinearSearchImplISQ_Li0EdEELi2ENSC_4math3RayIdEEEEEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(464) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

declare noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINSC_4GridINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENSD_22LevelSetRayIntersectorISQ_NSD_16LinearSearchImplISQ_Li0EdEELi2ENSC_4math3RayIdEEEEEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(464) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.tbb::detail::d1::range_vector", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !124
  %i.d = load i64, ptr %2, align 8, !tbaa !122
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !123
  %i.g = sub i64 %i.d, %i.f
  %i.h = icmp ult i64 %i.c, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.j = load i8, ptr %i.i, align 4, !tbaa !261   ; 2 uses
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @_ZNK7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(344) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 5 uses
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %4, align 8, !tbaa !207
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !250
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88
  br label %bb.e

thread-pre-split:                                 ; preds = %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i
  %.promoted.i13.pre = load i8, ptr %i.m, align 2, !tbaa !462
  %.pre = load i8, ptr %i.i, align 4, !tbaa !261
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split, %bb.d
  %i.r = phi i8 [ %.pre, %thread-pre-split ], [ %i.j, %bb.d ] ; 3 uses
  %.promoted.i = phi i8 [ %.promoted.i13.pre, %thread-pre-split ], [ 1, %bb.d ] ; 3 uses
  %i.s = icmp ult i8 %.promoted.i, 8
  br i1 %i.s, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.promoted4.i = load i8, ptr %4, align 8        ; 2 uses
  %.phi.trans.insert.i = zext i8 %.promoted4.i to i64
  %.phi.trans.insert6.i = getelementptr inbounds nuw i8, ptr %i.n, i64 %.phi.trans.insert.i
  %.pre.i = load i8, ptr %.phi.trans.insert6.i, align 1, !tbaa !207
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %i.t = phi i8 [ %.pre.i, %.lr.ph.i ], [ %i.au, %bb.g ]
  %i.u = phi i8 [ %.promoted.i, %.lr.ph.i ], [ %i.aw, %bb.g ] ; 3 uses
  %i.v = phi i8 [ %.promoted4.i, %.lr.ph.i ], [ %i.ai, %bb.g ] ; 2 uses
  %i.w = zext i8 %i.v to i64                      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.w ; 2 uses
  %i.y = icmp ult i8 %i.t, %i.r
  br i1 %i.y, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i: ; preds = %bb.f
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.w ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !124
  %i.ac = load i64, ptr %i.z, align 8, !tbaa !122
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !123
  %i.af = sub i64 %i.ac, %i.ae
  %i.ag = icmp ult i64 %i.ab, %i.af
  br i1 %i.ag, label %bb.g, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

bb.g:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i
  %i.ah = add nuw i8 %i.v, 1
  %i.ai = and i8 %i.ah, 7                         ; 3 uses
  store i8 %i.ai, ptr %4, align 8, !tbaa !463
  %i.aj = zext nneg i8 %i.ai to i64               ; 2 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.aj ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !250
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !122 ; 2 uses
  store i64 %i.al, ptr %i.z, align 8, !tbaa !122
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !123 ; 2 uses
  %i.ao = sub i64 %i.al, %i.an
  %i.ap = lshr i64 %i.ao, 1
  %i.aq = add i64 %i.ap, %i.an                    ; 2 uses
  store i64 %i.aq, ptr %i.ak, align 8, !tbaa !122
  store i64 %i.aq, ptr %i.ad, align 8, !tbaa !123
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !124
  store i64 %i.as, ptr %i.aa, align 8, !tbaa !124
  %i.at = load i8, ptr %i.x, align 1, !tbaa !207
  %i.au = add i8 %i.at, 1                         ; 3 uses
  store i8 %i.au, ptr %i.x, align 1, !tbaa !207
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.aj
  store i8 %i.au, ptr %i.av, align 1, !tbaa !207
  %i.aw = add nuw nsw i8 %i.u, 1                  ; 3 uses
  store i8 %i.aw, ptr %i.m, align 2, !tbaa !462
  %exitcond.not.i = icmp eq i8 %i.aw, 8
  br i1 %exitcond.not.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread, label %bb.f, !llvm.loop !30

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i, %bb.f, %bb.e
  %.pr = phi i8 [ %.promoted.i, %bb.e ], [ %i.u, %bb.f ], [ %i.u, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i ] ; 2 uses
  %i.ax = load ptr, ptr %i.p, align 16, !tbaa !451
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load atomic i8, ptr %i.ay monotonic, align 1, !range !125, !noundef !126
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.h, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.g
  %i.bb = load ptr, ptr %i.p, align 16, !tbaa !451
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load atomic i8, ptr %i.bc monotonic, align 1, !range !125, !noundef !126
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %.thread, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge

.thread:                                          ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread
  %i.bf = add i8 %i.r, 1
  store i8 %i.bf, ptr %i.i, align 4, !tbaa !261
  br label %bb.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit
  %.pre19 = load i8, ptr %4, align 8, !tbaa !463
  %.pre21 = zext i8 %.pre19 to i64
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

bb.h:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit
  %i.bg = add i8 %i.r, 1                          ; 2 uses
  store i8 %i.bg, ptr %i.i, align 4, !tbaa !261
  %i.bh = icmp ugt i8 %.pr, 1
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread, %bb.h
  %i.bi = load i8, ptr %i.l, align 1, !tbaa !464
  %i.bj = zext i8 %i.bi to i64                    ; 2 uses
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bj
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.bm, ptr %i.a, align 1, !tbaa !207
  call void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEE15offer_work_implIJRSV_RKS4_RhEEEvRNS1_14execution_dataEDpOT_(ptr noundef nonnull align 64 dereferenceable(464) %1, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 64 dereferenceable(464) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 1 dereferenceable(1) %i.a), !inline_history !893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bn = load i8, ptr %i.m, align 2, !tbaa !462
  %i.bo = add i8 %i.bn, -1                        ; 2 uses
  store i8 %i.bo, ptr %i.m, align 2, !tbaa !462
  %i.bp = load i8, ptr %i.l, align 1, !tbaa !464
  %i.bq = add i8 %i.bp, 1
  %i.br = and i8 %i.bq, 7
  store i8 %i.br, ptr %i.l, align 1, !tbaa !464
  br label %thread-pre-split18

bb.j:                                             ; preds = %bb.h
  %i.bs = load i8, ptr %4, align 8, !tbaa !463
  %i.bt = zext i8 %i.bs to i64                    ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !207
  %i.bw = icmp ult i8 %i.bv, %i.bg
  br i1 %i.bw, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit: ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.bt ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !124
  %i.ca = load i64, ptr %i.bx, align 8, !tbaa !122
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !123
  %i.cd = sub i64 %i.ca, %i.cc
  %i.ce = icmp ult i64 %i.bz, %i.cd
  br i1 %i.ce, label %thread-pre-split18, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.j, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre21, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.bt, %bb.j ], [ %i.bt, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.pre-phi
  call void @_ZNK7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(344) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.cf)
  %i.cg = load i8, ptr %i.m, align 2, !tbaa !462
  %i.ch = add i8 %i.cg, -1                        ; 2 uses
  store i8 %i.ch, ptr %i.m, align 2, !tbaa !462
  %i.ci = load i8, ptr %4, align 8, !tbaa !463
  %i.cj = add i8 %i.ci, 7
  %i.ck = and i8 %i.cj, 7
  store i8 %i.ck, ptr %4, align 8, !tbaa !463
  br label %thread-pre-split18

thread-pre-split18:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread, %bb.i
  %i.cl = phi i8 [ %i.bo, %bb.i ], [ %i.ch, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread ], [ %.pr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.cm = icmp eq i8 %i.cl, 0
  br i1 %i.cm, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit17, label %bb.k

bb.k:                                             ; preds = %thread-pre-split18
  %i.cn = load ptr, ptr %3, align 8, !tbaa !459   ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 15
  %i.cp = load atomic i8, ptr %i.co monotonic, align 1
  %i.cq = icmp eq i8 %i.cp, -1
  br i1 %i.cq, label %5, label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

5:                                                ; preds = %bb.k
  %6 = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %7 = load ptr, ptr %6, align 8, !tbaa !207
  br label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i: ; preds = %5, %bb.k
  %.0.i.i = phi ptr [ %7, %5 ], [ %i.cn, %bb.k ]
  %8 = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %8, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit17, label %thread-pre-split, !llvm.loop !894

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit17: ; preds = %thread-pre-split18, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.l

bb.l:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit17, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS8_4GridINS8_4tree4TreeINSC_8RootNodeINSC_12InternalNodeINSF_INSC_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS9_22LevelSetRayIntersectorISM_NS9_16LinearSearchImplISM_Li0EdEELi2ENS8_4math3RayIdEEEEEEKNS1_16auto_partitionerEEEJRSX_RNS0_2d05splitERS2_EEEPT_RNS1_14execution_dataEDpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 64 dereferenceable(464) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 512, ptr noundef nonnull align 8 dereferenceable(12) %1) ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.a, align 64, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = load i64, ptr %i.c, align 64, !tbaa !122 ; 2 uses
  store i64 %i.e, ptr %i.d, align 64, !tbaa !122
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !123  ; 2 uses
  %i.i = sub i64 %i.e, %i.h
  %i.j = lshr i64 %i.i, 1
  %i.k = add i64 %i.j, %i.h                       ; 2 uses
  store i64 %i.k, ptr %i.c, align 64, !tbaa !122
  store i64 %i.k, ptr %i.f, align 8, !tbaa !123
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.n = load i64, ptr %i.m, align 16, !tbaa !124
  store i64 %i.n, ptr %i.l, align 16, !tbaa !124
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i8 0, ptr %i.o, align 8, !tbaa !96
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.r = load ptr, ptr %i.q, align 32, !tbaa !97
  store ptr %i.r, ptr %i.p, align 32, !tbaa !97
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.s, ptr noundef nonnull align 8 dereferenceable(304) %i.t, i64 88, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 192
  tail call void @_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EEC2ERKSH_(ptr noundef nonnull align 8 dereferenceable(140) %i.u, ptr noundef nonnull align 8 dereferenceable(140) %i.v), !inline_history !895
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 336
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.w, ptr noundef nonnull align 16 dereferenceable(68) %i.x, i64 68, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 408
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !101  ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !100
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEEC2ERSV_RNS0_2d05splitERNS1_22small_object_allocatorE.exit unwind label %.body.i, !inline_history !895

.body.i:                                          ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN7openvdb5v13_05tools22LevelSetRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEED2Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %i.s) #17, !inline_history !895
  resume { ptr, i32 } %i.ae

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEEC2ERSV_RNS0_2d05splitERNS1_22small_object_allocatorE.exit: ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !101
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 416
  %i.ai = load ptr, ptr %i.ah, align 32, !tbaa !102
  store ptr %i.ai, ptr %i.ag, align 32, !tbaa !102
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 424
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !380
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !380
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  store ptr null, ptr %i.am, align 16, !tbaa !451
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 440 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !262
  %i.aq = lshr i64 %i.ap, 1                       ; 2 uses
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !262
  store i64 %i.aq, ptr %i.an, align 8, !tbaa !262
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  store i32 2, ptr %i.ar, align 64, !tbaa !260
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 452
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 452
  %i.au = load i8, ptr %i.at, align 4, !tbaa !261
  store i8 %i.au, ptr %i.as, align 4, !tbaa !261
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  %i.aw = load i64, ptr %4, align 8, !tbaa !263
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !263
  ret ptr %i.a
}

declare noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #3

declare void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEE15offer_work_implIJRSV_RKS4_RhEEEvRNS1_14execution_dataEDpOT_(ptr noundef nonnull align 64 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 64 dereferenceable(464) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr null, ptr %5, align 8, !tbaa !248
  %i.a = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 512, ptr noundef nonnull align 8 dereferenceable(12) %1), !inline_history !896 ; 17 uses
  %i.b = load i8, ptr %4, align 1, !tbaa !207
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.a, align 64, !tbaa !100
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !250
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i8 0, ptr %i.e, align 8, !tbaa !96
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.h = load ptr, ptr %i.g, align 32, !tbaa !97
  store ptr %i.h, ptr %i.f, align 32, !tbaa !97
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.i, ptr noundef nonnull align 8 dereferenceable(304) %i.j, i64 88, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 192
  call void @_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EEC2ERKSH_(ptr noundef nonnull align 8 dereferenceable(140) %i.k, ptr noundef nonnull align 8 dereferenceable(140) %i.l), !inline_history !897
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.m, ptr noundef nonnull align 16 dereferenceable(68) %i.n, i64 68, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 408
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !101  ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !100
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS8_4GridINS8_4tree4TreeINSC_8RootNodeINSC_12InternalNodeINSF_INSC_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS9_22LevelSetRayIntersectorISM_NS9_16LinearSearchImplISM_Li0EdEELi2ENS8_4math3RayIdEEEEEEKNS1_16auto_partitionerEEEJRSX_RKS6_RhRS2_EEEPT_RNS1_14execution_dataEDpOT0_.exit unwind label %.body.i.i, !inline_history !897

.body.i.i:                                        ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7openvdb5v13_05tools22LevelSetRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEED2Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %i.i) #17, !inline_history !897
  resume { ptr, i32 } %i.u

_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS8_4GridINS8_4tree4TreeINSC_8RootNodeINSC_12InternalNodeINSF_INSC_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS9_22LevelSetRayIntersectorISM_NS9_16LinearSearchImplISM_Li0EdEELi2ENS8_4math3RayIdEEEEEEKNS1_16auto_partitionerEEEJRSX_RKS6_RhRS2_EEEPT_RNS1_14execution_dataEDpOT0_.exit: ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  store ptr %i.t, ptr %i.v, align 8, !tbaa !101
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 416
  %i.y = load ptr, ptr %i.x, align 32, !tbaa !102
  store ptr %i.y, ptr %i.w, align 32, !tbaa !102
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 424
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !380
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !380
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 432 ; 2 uses
  store ptr null, ptr %i.ac, align 16, !tbaa !451
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 440 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !262
  %i.ag = lshr i64 %i.af, 1                       ; 2 uses
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !262
  store i64 %i.ag, ptr %i.ad, align 8, !tbaa !262
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  store i32 2, ptr %i.ah, align 64, !tbaa !260
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 452
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 452
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !261
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  %i.am = load i64, ptr %5, align 8, !tbaa !263
  store i64 %i.am, ptr %i.al, align 8, !tbaa !263
  %i.an = sub i8 %i.ak, %i.b
  store i8 %i.an, ptr %i.ai, align 4, !tbaa !261
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.ap = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) ; 6 uses
  %i.aq = load ptr, ptr %i.ao, align 16, !tbaa !456
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !267
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 2, ptr %i.ar, align 8, !tbaa !268
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.at = load i64, ptr %5, align 8, !tbaa !263
  store i64 %i.at, ptr %i.as, align 8, !tbaa !263
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i8 0, ptr %i.au, align 8, !tbaa !458
  store ptr %i.ap, ptr %i.ao, align 16, !tbaa !451
  store ptr %i.ap, ptr %i.ac, align 16, !tbaa !451
  %i.av = load ptr, ptr %1, align 8, !tbaa !459
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(464) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void
}

declare noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

declare void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #3

declare void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef) local_unnamed_addr #3

declare void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

declare void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04math12LevelSetHDDAINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELi2EE4testINS0_5tools16LinearSearchImplINS0_4GridISC_EELi0EdEEEEbRT_(ptr noundef nonnull align 8 dereferenceable(300) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %1 = alloca %"class.openvdb::v13_0::math::DDA", align 16 ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EEC2ERKSH_:bb.a
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i.i.i.i, label %.noexc6, label %bb.j

bb.j:                                             ; preds = %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERKSF_.exit
  %i.ai = icmp ugt i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %.noexc.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, !prof !302

.noexc.i.i:                                       ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #28
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.j
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #27
          to label %.noexc6 unwind label %bb.o

.noexc6:                                          ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERKSF_.exit
  %i.ak = phi ptr [ null, %_ZN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEC2ERKSF_.exit ], [ %i.aj, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.ak, ptr %i.aa, align 8, !tbaa !165
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !485
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.am, ptr %i.an, align 8, !tbaa !166
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !352 ; 3 uses
  %i.ap = load ptr, ptr %i.ac, align 8, !tbaa !352
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 4 uses
  %i.at = icmp sgt i64 %i.as, 8
  br i1 %i.at, label %bb.k, label %bb.l, !prof !383

bb.k:                                             ; preds = %.noexc6
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ak, ptr align 8 %i.ao, i64 %i.as, i1 false)
  br label %bb.n

bb.l:                                             ; preds = %.noexc6
  %i.au = icmp eq i64 %i.as, 8
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.av = load double, ptr %i.ao, align 8, !tbaa !163
  store double %i.av, ptr %i.ak, align 8, !tbaa !163
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.aw = getelementptr inbounds i8, ptr %i.ak, i64 %i.as
  store ptr %i.aw, ptr %i.al, align 8, !tbaa !485
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ax, ptr noundef nonnull align 8 dereferenceable(12) %i.ay, i64 12, i1 false), !tbaa.struct !445
  ret void

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.c) #17
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINSA_4GridINSA_4tree4TreeINSE_8RootNodeINSE_12InternalNodeINSH_INSE_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENSB_22LevelSetRayIntersectorISO_NSB_16LinearSearchImplISO_Li0EdEELi2ENSA_4math3RayIdEEEEEEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(480) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d0::split", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !124
  %i.c = load i64, ptr %2, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !123
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %0, align 8, !tbaa !262    ; 2 uses
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4, !tbaa !261   ; 2 uses
  %.not4.i = icmp eq i8 %i.k, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = add i8 %i.k, -1
  store i8 %i.l, ptr %i.j, align 4, !tbaa !261
  store i64 0, ptr %0, align 8, !tbaa !262
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit: ; preds = %bb.b, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !248
  %i.o = call noundef ptr @_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS8_4GridINS8_4tree4TreeINSC_8RootNodeINSC_12InternalNodeINSF_INSC_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS9_22LevelSetRayIntersectorISM_NS9_16LinearSearchImplISM_Li0EdEELi2ENS8_4math3RayIdEEEEEEKNS1_16auto_partitionerEEEJRSX_RNS0_2d05splitERS2_EEEPT_RNS1_14execution_dataEDpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 64 dereferenceable(480) %1, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %4), !inline_history !1097 ; 2 uses
  %i.p = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !1097 ; 6 uses
  %i.q = load ptr, ptr %i.n, align 64, !tbaa !456
  store ptr %i.q, ptr %i.p, align 8, !tbaa !267
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 2, ptr %i.r, align 8, !tbaa !268
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i64, ptr %4, align 8, !tbaa !263
  store i64 %i.t, ptr %i.s, align 8, !tbaa !263
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i8 0, ptr %i.u, align 8, !tbaa !458
  store ptr %i.p, ptr %i.n, align 64, !tbaa !496
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 448
  store ptr %i.p, ptr %i.v, align 64, !tbaa !496
  %i.w = load ptr, ptr %3, align 8, !tbaa !459
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(480) %i.o, ptr noundef nonnull align 8 dereferenceable(128) %i.w), !inline_history !1097
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.x = load i64, ptr %i.a, align 8, !tbaa !124
  %i.y = load i64, ptr %2, align 8, !tbaa !122
  %i.z = load i64, ptr %i.d, align 8, !tbaa !123
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp ult i64 %i.x, %i.aa
  br i1 %i.ab, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.ac = load i64, ptr %0, align 8, !tbaa !262   ; 2 uses
  %i.ad = icmp ugt i64 %i.ac, 1
  br i1 %i.ad, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, label %bb.g

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge: ; preds = %bb.f, %bb.i
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !1098

bb.g:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i64 %i.ac, 0
  br i1 %.not.i8, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load i8, ptr %i.m, align 4, !tbaa !261  ; 2 uses
  %.not4.i9 = icmp eq i8 %i.ae, 0
  br i1 %.not4.i9, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = add i8 %i.ae, -1
  store i8 %i.af, ptr %i.m, align 4, !tbaa !261
  store i64 0, ptr %0, align 8, !tbaa !262
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINSC_4GridINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENSD_22LevelSetRayIntersectorISQ_NSD_16LinearSearchImplISQ_Li0EdEELi2ENSC_4math3RayIdEEEEEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(480) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINSC_4GridINSC_4tree4TreeINSG_8RootNodeINSG_12InternalNodeINSJ_INSG_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENSD_22LevelSetRayIntersectorISQ_NSD_16LinearSearchImplISQ_Li0EdEELi2ENSC_4math3RayIdEEEEEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(480) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.tbb::detail::d1::range_vector", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !124
  %i.d = load i64, ptr %2, align 8, !tbaa !122
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !123
  %i.g = sub i64 %i.d, %i.f
  %i.h = icmp ult i64 %i.c, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.j = load i8, ptr %i.i, align 4, !tbaa !261   ; 2 uses
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @_ZNK7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(360) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 5 uses
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %4, align 8, !tbaa !207
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !250
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88
  br label %bb.e

thread-pre-split:                                 ; preds = %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i
  %.promoted.i13.pre = load i8, ptr %i.m, align 2, !tbaa !462
  %.pre = load i8, ptr %i.i, align 4, !tbaa !261
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split, %bb.d
  %i.r = phi i8 [ %.pre, %thread-pre-split ], [ %i.j, %bb.d ] ; 3 uses
  %.promoted.i = phi i8 [ %.promoted.i13.pre, %thread-pre-split ], [ 1, %bb.d ] ; 3 uses
  %i.s = icmp ult i8 %.promoted.i, 8
  br i1 %i.s, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.promoted4.i = load i8, ptr %4, align 8        ; 2 uses
  %.phi.trans.insert.i = zext i8 %.promoted4.i to i64
  %.phi.trans.insert6.i = getelementptr inbounds nuw i8, ptr %i.n, i64 %.phi.trans.insert.i
  %.pre.i = load i8, ptr %.phi.trans.insert6.i, align 1, !tbaa !207
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %i.t = phi i8 [ %.pre.i, %.lr.ph.i ], [ %i.au, %bb.g ]
  %i.u = phi i8 [ %.promoted.i, %.lr.ph.i ], [ %i.aw, %bb.g ] ; 3 uses
  %i.v = phi i8 [ %.promoted4.i, %.lr.ph.i ], [ %i.ai, %bb.g ] ; 2 uses
  %i.w = zext i8 %i.v to i64                      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.w ; 2 uses
  %i.y = icmp ult i8 %i.t, %i.r
  br i1 %i.y, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i: ; preds = %bb.f
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.w ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !124
  %i.ac = load i64, ptr %i.z, align 8, !tbaa !122
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !123
  %i.af = sub i64 %i.ac, %i.ae
  %i.ag = icmp ult i64 %i.ab, %i.af
  br i1 %i.ag, label %bb.g, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

bb.g:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i
  %i.ah = add nuw i8 %i.v, 1
  %i.ai = and i8 %i.ah, 7                         ; 3 uses
  store i8 %i.ai, ptr %4, align 8, !tbaa !463
  %i.aj = zext nneg i8 %i.ai to i64               ; 2 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.aj ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !250
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !122 ; 2 uses
  store i64 %i.al, ptr %i.z, align 8, !tbaa !122
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !123 ; 2 uses
  %i.ao = sub i64 %i.al, %i.an
  %i.ap = lshr i64 %i.ao, 1
  %i.aq = add i64 %i.ap, %i.an                    ; 2 uses
  store i64 %i.aq, ptr %i.ak, align 8, !tbaa !122
  store i64 %i.aq, ptr %i.ad, align 8, !tbaa !123
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !124
  store i64 %i.as, ptr %i.aa, align 8, !tbaa !124
  %i.at = load i8, ptr %i.x, align 1, !tbaa !207
  %i.au = add i8 %i.at, 1                         ; 3 uses
  store i8 %i.au, ptr %i.x, align 1, !tbaa !207
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.aj
  store i8 %i.au, ptr %i.av, align 1, !tbaa !207
  %i.aw = add nuw nsw i8 %i.u, 1                  ; 3 uses
  store i8 %i.aw, ptr %i.m, align 2, !tbaa !462
  %exitcond.not.i = icmp eq i8 %i.aw, 8
  br i1 %exitcond.not.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread, label %bb.f, !llvm.loop !30

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i, %bb.f, %bb.e
  %.pr = phi i8 [ %.promoted.i, %bb.e ], [ %i.u, %bb.f ], [ %i.u, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i ] ; 2 uses
  %i.ax = load ptr, ptr %i.p, align 64, !tbaa !496
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load atomic i8, ptr %i.ay monotonic, align 1, !range !125, !noundef !126
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.h, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.g
  %i.bb = load ptr, ptr %i.p, align 64, !tbaa !496
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load atomic i8, ptr %i.bc monotonic, align 1, !range !125, !noundef !126
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %.thread, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge

.thread:                                          ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread
  %i.bf = add i8 %i.r, 1
  store i8 %i.bf, ptr %i.i, align 4, !tbaa !261
  br label %bb.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit
  %.pre19 = load i8, ptr %4, align 8, !tbaa !463
  %.pre21 = zext i8 %.pre19 to i64
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

bb.h:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit
  %i.bg = add i8 %i.r, 1                          ; 2 uses
  store i8 %i.bg, ptr %i.i, align 4, !tbaa !261
  %i.bh = icmp ugt i8 %.pr, 1
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread, %bb.h
  %i.bi = load i8, ptr %i.l, align 1, !tbaa !464
  %i.bj = zext i8 %i.bi to i64                    ; 2 uses
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bj
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.bm, ptr %i.a, align 1, !tbaa !207
  call void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEE15offer_work_implIJRSV_RKS4_RhEEEvRNS1_14execution_dataEDpOT_(ptr noundef nonnull align 64 dereferenceable(480) %1, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 64 dereferenceable(480) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 1 dereferenceable(1) %i.a), !inline_history !1099
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bn = load i8, ptr %i.m, align 2, !tbaa !462
  %i.bo = add i8 %i.bn, -1                        ; 2 uses
  store i8 %i.bo, ptr %i.m, align 2, !tbaa !462
  %i.bp = load i8, ptr %i.l, align 1, !tbaa !464
  %i.bq = add i8 %i.bp, 1
  %i.br = and i8 %i.bq, 7
  store i8 %i.br, ptr %i.l, align 1, !tbaa !464
  br label %thread-pre-split18

bb.j:                                             ; preds = %bb.h
  %i.bs = load i8, ptr %4, align 8, !tbaa !463
  %i.bt = zext i8 %i.bs to i64                    ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !207
  %i.bw = icmp ult i8 %i.bv, %i.bg
  br i1 %i.bw, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit: ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.bt ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !124
  %i.ca = load i64, ptr %i.bx, align 8, !tbaa !122
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !123
  %i.cd = sub i64 %i.ca, %i.cc
  %i.ce = icmp ult i64 %i.bz, %i.cd
  br i1 %i.ce, label %thread-pre-split18, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.j, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre21, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.bt, %bb.j ], [ %i.bt, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.pre-phi
  call void @_ZNK7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(360) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.cf)
  %i.cg = load i8, ptr %i.m, align 2, !tbaa !462
  %i.ch = add i8 %i.cg, -1                        ; 2 uses
  store i8 %i.ch, ptr %i.m, align 2, !tbaa !462
  %i.ci = load i8, ptr %4, align 8, !tbaa !463
  %i.cj = add i8 %i.ci, 7
  %i.ck = and i8 %i.cj, 7
  store i8 %i.ck, ptr %4, align 8, !tbaa !463
  br label %thread-pre-split18

thread-pre-split18:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread, %bb.i
  %i.cl = phi i8 [ %i.bo, %bb.i ], [ %i.ch, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread ], [ %.pr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.cm = icmp eq i8 %i.cl, 0
  br i1 %i.cm, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit17, label %bb.k

bb.k:                                             ; preds = %thread-pre-split18
  %i.cn = load ptr, ptr %3, align 8, !tbaa !459   ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 15
  %i.cp = load atomic i8, ptr %i.co monotonic, align 1
  %i.cq = icmp eq i8 %i.cp, -1
  br i1 %i.cq, label %5, label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

5:                                                ; preds = %bb.k
  %6 = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %7 = load ptr, ptr %6, align 8, !tbaa !207
  br label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i: ; preds = %5, %bb.k
  %.0.i.i = phi ptr [ %7, %5 ], [ %i.cn, %bb.k ]
  %8 = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %8, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit17, label %thread-pre-split, !llvm.loop !1100

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit17: ; preds = %thread-pre-split18, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.l

bb.l:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit17, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS8_4GridINS8_4tree4TreeINSC_8RootNodeINSC_12InternalNodeINSF_INSC_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS9_22LevelSetRayIntersectorISM_NS9_16LinearSearchImplISM_Li0EdEELi2ENS8_4math3RayIdEEEEEEKNS1_16auto_partitionerEEEJRSX_RNS0_2d05splitERS2_EEEPT_RNS1_14execution_dataEDpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 64 dereferenceable(480) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 512, ptr noundef nonnull align 8 dereferenceable(12) %1) ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.a, align 64, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = load i64, ptr %i.c, align 64, !tbaa !122 ; 2 uses
  store i64 %i.e, ptr %i.d, align 64, !tbaa !122
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !123  ; 2 uses
  %i.i = sub i64 %i.e, %i.h
  %i.j = lshr i64 %i.i, 1
  %i.k = add i64 %i.j, %i.h                       ; 2 uses
  store i64 %i.k, ptr %i.c, align 64, !tbaa !122
  store i64 %i.k, ptr %i.f, align 8, !tbaa !123
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.n = load i64, ptr %i.m, align 16, !tbaa !124
  store i64 %i.n, ptr %i.l, align 16, !tbaa !124
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i8 0, ptr %i.o, align 8, !tbaa !161
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.r = load ptr, ptr %i.q, align 32, !tbaa !162
  store ptr %i.r, ptr %i.p, align 32, !tbaa !162
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.s, ptr noundef nonnull align 8 dereferenceable(320) %i.t, i64 88, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 192
  tail call void @_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EEC2ERKSH_(ptr noundef nonnull align 8 dereferenceable(140) %i.u, ptr noundef nonnull align 8 dereferenceable(140) %i.v), !inline_history !1101
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 336
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.w, ptr noundef nonnull align 16 dereferenceable(88) %i.x, i64 88, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 424
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !101  ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !100
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEEC2ERSV_RNS0_2d05splitERNS1_22small_object_allocatorE.exit unwind label %.body.i, !inline_history !1101

.body.i:                                          ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN7openvdb5v13_05tools22LevelSetRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEED2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %i.s) #17, !inline_history !1101
  resume { ptr, i32 } %i.ae

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEEC2ERSV_RNS0_2d05splitERNS1_22small_object_allocatorE.exit: ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !101
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 432
  %i.ai = load ptr, ptr %i.ah, align 16, !tbaa !164
  store ptr %i.ai, ptr %i.ag, align 16, !tbaa !164
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 440
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !476
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !476
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  store ptr null, ptr %i.am, align 64, !tbaa !496
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 456 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !262
  %i.aq = lshr i64 %i.ap, 1                       ; 2 uses
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !262
  store i64 %i.aq, ptr %i.an, align 8, !tbaa !262
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store i32 2, ptr %i.ar, align 16, !tbaa !260
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 468
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 468
  %i.au = load i8, ptr %i.at, align 4, !tbaa !261
  store i8 %i.au, ptr %i.as, align 4, !tbaa !261
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 472
  %i.aw = load i64, ptr %4, align 8, !tbaa !263
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !263
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEE15offer_work_implIJRSV_RKS4_RhEEEvRNS1_14execution_dataEDpOT_(ptr noundef nonnull align 64 dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 64 dereferenceable(480) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr null, ptr %5, align 8, !tbaa !248
  %i.a = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 512, ptr noundef nonnull align 8 dereferenceable(12) %1), !inline_history !1102 ; 17 uses
  %i.b = load i8, ptr %4, align 1, !tbaa !207
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS6_4GridINS6_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS7_22LevelSetRayIntersectorISK_NS7_16LinearSearchImplISK_Li0EdEELi2ENS6_4math3RayIdEEEEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.a, align 64, !tbaa !100
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !250
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i8 0, ptr %i.e, align 8, !tbaa !161
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.h = load ptr, ptr %i.g, align 32, !tbaa !162
  store ptr %i.h, ptr %i.f, align 32, !tbaa !162
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.i, ptr noundef nonnull align 8 dereferenceable(320) %i.j, i64 88, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 192
  call void @_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EEC2ERKSH_(ptr noundef nonnull align 8 dereferenceable(140) %i.k, ptr noundef nonnull align 8 dereferenceable(140) %i.l), !inline_history !1103
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.m, ptr noundef nonnull align 16 dereferenceable(88) %i.n, i64 88, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 424
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !101  ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !100
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS8_4GridINS8_4tree4TreeINSC_8RootNodeINSC_12InternalNodeINSF_INSC_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS9_22LevelSetRayIntersectorISM_NS9_16LinearSearchImplISM_Li0EdEELi2ENS8_4math3RayIdEEEEEEKNS1_16auto_partitionerEEEJRSX_RKS6_RhRS2_EEEPT_RNS1_14execution_dataEDpOT0_.exit unwind label %.body.i.i, !inline_history !1103

.body.i.i:                                        ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7openvdb5v13_05tools22LevelSetRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEED2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %i.i) #17, !inline_history !1103
  resume { ptr, i32 } %i.u

_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools17LevelSetRayTracerINS8_4GridINS8_4tree4TreeINSC_8RootNodeINSC_12InternalNodeINSF_INSC_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS9_22LevelSetRayIntersectorISM_NS9_16LinearSearchImplISM_Li0EdEELi2ENS8_4math3RayIdEEEEEEKNS1_16auto_partitionerEEEJRSX_RKS6_RhRS2_EEEPT_RNS1_14execution_dataEDpOT0_.exit: ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  store ptr %i.t, ptr %i.v, align 8, !tbaa !101
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 432
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !164
  store ptr %i.y, ptr %i.w, align 16, !tbaa !164
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 440
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !476
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !476
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 448 ; 2 uses
  store ptr null, ptr %i.ac, align 64, !tbaa !496
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 456 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !262
  %i.ag = lshr i64 %i.af, 1                       ; 2 uses
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !262
  store i64 %i.ag, ptr %i.ad, align 8, !tbaa !262
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store i32 2, ptr %i.ah, align 16, !tbaa !260
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 468
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 468
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !261
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 472
  %i.am = load i64, ptr %5, align 8, !tbaa !263
  store i64 %i.am, ptr %i.al, align 8, !tbaa !263
  %i.an = sub i8 %i.ak, %i.b
  store i8 %i.an, ptr %i.ai, align 4, !tbaa !261
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.ap = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) ; 6 uses
  %i.aq = load ptr, ptr %i.ao, align 64, !tbaa !456
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !267
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 2, ptr %i.ar, align 8, !tbaa !268
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.at = load i64, ptr %5, align 8, !tbaa !263
  store i64 %i.at, ptr %i.as, align 8, !tbaa !263
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i8 0, ptr %i.au, align 8, !tbaa !458
  store ptr %i.ap, ptr %i.ao, align 64, !tbaa !496
  store ptr %i.ap, ptr %i.ac, align 64, !tbaa !496
  %i.av = load ptr, ptr %1, align 8, !tbaa !459
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(480) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04math12LevelSetHDDAINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELi2EE4testINS0_5tools16LinearSearchImplINS0_4GridISC_EELi0EdEEEEbRT_(ptr noundef nonnull align 8 dereferenceable(320) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %1 = alloca %"class.openvdb::v13_0::math::DDA", align 16 ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load <2 x double>, ptr %i.b, align 8, !tbaa !163 ; 2 uses
  %i.g = extractelement <2 x double> %i.f, i64 0  ; 9 uses
  store <2 x double> %i.f, ptr %1, align 16, !tbaa !163
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i = load double, ptr %i.h, align 8, !noalias !1107 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.6.0.copyload.i.i = load double, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !1107 ; 2 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.9.0.copyload.i.i = load double, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !1107 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE:bb.a
bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !263
  %i.n = inttoptr i64 %i.m to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = atomicrmw sub ptr %i.o, i32 1 seq_cst, align 4
  %i.q = add i32 %i.p, -1
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.t = atomicrmw sub ptr %i.s, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v)
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(368) %0, i64 noundef 384, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSB_20VolumeRayIntersectorINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENSA_4math3RayIdEEEENSB_10BoxSamplerEEEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(368) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !124
  %i.c = load i64, ptr %2, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !123
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %0, align 8, !tbaa !262    ; 2 uses
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4, !tbaa !261   ; 2 uses
  %.not4.i = icmp eq i8 %i.k, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = add i8 %i.k, -1
  store i8 %i.l, ptr %i.j, align 4, !tbaa !261
  store i64 0, ptr %0, align 8, !tbaa !262
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit: ; preds = %bb.b, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 356
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !248
  %i.u = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 384, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !1149 ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.u, align 64, !tbaa !100
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.x = load i64, ptr %i.n, align 64, !tbaa !122 ; 2 uses
  store i64 %i.x, ptr %i.w, align 64, !tbaa !122
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.z = load i64, ptr %i.o, align 8, !tbaa !123  ; 2 uses
  %i.aa = sub i64 %i.x, %i.z
  %i.ab = lshr i64 %i.aa, 1
  %i.ac = add i64 %i.ab, %i.z                     ; 2 uses
  store i64 %i.ac, ptr %i.n, align 64, !tbaa !122
  store i64 %i.ac, ptr %i.y, align 8, !tbaa !123
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.ae = load i64, ptr %i.p, align 16, !tbaa !124
  store i64 %i.ae, ptr %i.ad, align 16, !tbaa !124
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  call void @_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEC1ERKSL_(ptr noundef nonnull align 8 dereferenceable(248) %i.af, ptr noundef nonnull align 8 dereferenceable(248) %i.q), !inline_history !1150
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 336 ; 2 uses
  store ptr null, ptr %i.ag, align 16, !tbaa !259
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 344
  %i.ai = load i64, ptr %i.r, align 8, !tbaa !262
  %i.aj = lshr i64 %i.ai, 1                       ; 2 uses
  store i64 %i.aj, ptr %i.r, align 8, !tbaa !262
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !262
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 352
  store i32 2, ptr %i.ak, align 32, !tbaa !260
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 356
  %i.am = load i8, ptr %i.s, align 4, !tbaa !261
  store i8 %i.am, ptr %i.al, align 4, !tbaa !261
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 360
  %i.ao = load i64, ptr %4, align 8, !tbaa !263
  store i64 %i.ao, ptr %i.an, align 8, !tbaa !263
  %i.ap = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !1151 ; 6 uses
  %i.aq = load ptr, ptr %i.t, align 16, !tbaa !456
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !267
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 2, ptr %i.ar, align 8, !tbaa !268
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.at = load i64, ptr %4, align 8, !tbaa !263
  store i64 %i.at, ptr %i.as, align 8, !tbaa !263
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i8 0, ptr %i.au, align 8, !tbaa !458
  store ptr %i.ap, ptr %i.t, align 16, !tbaa !259
  store ptr %i.ap, ptr %i.ag, align 16, !tbaa !259
  %i.av = load ptr, ptr %3, align 8, !tbaa !459
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(368) %i.u, ptr noundef nonnull align 8 dereferenceable(128) %i.av), !inline_history !1151
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !124
  %i.ax = load i64, ptr %2, align 8, !tbaa !122
  %i.ay = load i64, ptr %i.d, align 8, !tbaa !123
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp ult i64 %i.aw, %i.az
  br i1 %i.ba, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.bb = load i64, ptr %0, align 8, !tbaa !262   ; 2 uses
  %i.bc = icmp ugt i64 %i.bb, 1
  br i1 %i.bc, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, label %bb.g

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge: ; preds = %bb.f, %bb.i
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !1152

bb.g:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i64 %i.bb, 0
  br i1 %.not.i8, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = load i8, ptr %i.m, align 4, !tbaa !261  ; 2 uses
  %.not4.i9 = icmp eq i8 %i.bd, 0
  br i1 %.not4.i9, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = add i8 %i.bd, -1
  store i8 %i.be, ptr %i.m, align 4, !tbaa !261
  store i64 0, ptr %0, align 8, !tbaa !262
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(368) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(368) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::range_vector", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !124
  %i.c = load i64, ptr %2, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !123
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !261   ; 2 uses
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @_ZNK7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(248) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 5 uses
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %5, align 8, !tbaa !207
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !250
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 356
  br label %bb.e

thread-pre-split:                                 ; preds = %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i
  %.promoted.i18.pre = load i8, ptr %i.l, align 2, !tbaa !462
  %.pre = load i8, ptr %i.h, align 4, !tbaa !261
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split, %bb.d
  %i.s = phi i8 [ %.pre, %thread-pre-split ], [ %i.i, %bb.d ] ; 3 uses
  %.promoted.i = phi i8 [ %.promoted.i18.pre, %thread-pre-split ], [ 1, %bb.d ] ; 3 uses
  %i.t = icmp ult i8 %.promoted.i, 8
  br i1 %i.t, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.promoted4.i = load i8, ptr %5, align 8        ; 2 uses
  %.phi.trans.insert.i = zext i8 %.promoted4.i to i64
  %.phi.trans.insert6.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %.phi.trans.insert.i
  %.pre.i = load i8, ptr %.phi.trans.insert6.i, align 1, !tbaa !207
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %i.u = phi i8 [ %.pre.i, %.lr.ph.i ], [ %i.av, %bb.g ]
  %i.v = phi i8 [ %.promoted.i, %.lr.ph.i ], [ %i.ax, %bb.g ] ; 3 uses
  %i.w = phi i8 [ %.promoted4.i, %.lr.ph.i ], [ %i.aj, %bb.g ] ; 2 uses
  %i.x = zext i8 %i.w to i64                      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.x ; 2 uses
  %i.z = icmp ult i8 %i.u, %i.s
  br i1 %i.z, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i: ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.x ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !124
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !122
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !123
  %i.ag = sub i64 %i.ad, %i.af
  %i.ah = icmp ult i64 %i.ac, %i.ag
  br i1 %i.ah, label %bb.g, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

bb.g:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i
  %i.ai = add nuw i8 %i.w, 1
  %i.aj = and i8 %i.ai, 7                         ; 3 uses
  store i8 %i.aj, ptr %5, align 8, !tbaa !463
  %i.ak = zext nneg i8 %i.aj to i64               ; 2 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.ak ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !tbaa.struct !250
  %i.am = load i64, ptr %i.al, align 8, !tbaa !122 ; 2 uses
  store i64 %i.am, ptr %i.aa, align 8, !tbaa !122
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !123 ; 2 uses
  %i.ap = sub i64 %i.am, %i.ao
  %i.aq = lshr i64 %i.ap, 1
  %i.ar = add i64 %i.aq, %i.ao                    ; 2 uses
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !122
  store i64 %i.ar, ptr %i.ae, align 8, !tbaa !123
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !124
  store i64 %i.at, ptr %i.ab, align 8, !tbaa !124
  %i.au = load i8, ptr %i.y, align 1, !tbaa !207
  %i.av = add i8 %i.au, 1                         ; 3 uses
  store i8 %i.av, ptr %i.y, align 1, !tbaa !207
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ak
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !207
  %i.ax = add nuw nsw i8 %i.v, 1                  ; 3 uses
  store i8 %i.ax, ptr %i.l, align 2, !tbaa !462
  %exitcond.not.i = icmp eq i8 %i.ax, 8
  br i1 %exitcond.not.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread, label %bb.f, !llvm.loop !30

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i, %bb.f, %bb.e
  %.pr = phi i8 [ %.promoted.i, %bb.e ], [ %i.v, %bb.f ], [ %i.v, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i ] ; 2 uses
  %i.ay = load ptr, ptr %i.o, align 16, !tbaa !259
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load atomic i8, ptr %i.az monotonic, align 1, !range !125, !noundef !126
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.h, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.g
  %i.bc = load ptr, ptr %i.o, align 16, !tbaa !259
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load atomic i8, ptr %i.bd monotonic, align 1, !range !125, !noundef !126
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %.thread, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge

.thread:                                          ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread
  %i.bg = add i8 %i.s, 1
  store i8 %i.bg, ptr %i.h, align 4, !tbaa !261
  br label %.noexc

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit
  %.pre24 = load i8, ptr %5, align 8, !tbaa !463
  %.pre26 = zext i8 %.pre24 to i64
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

bb.h:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit
  %i.bh = add i8 %i.s, 1                          ; 2 uses
  store i8 %i.bh, ptr %i.h, align 4, !tbaa !261
  %i.bi = icmp ugt i8 %.pr, 1
  br i1 %i.bi, label %.noexc, label %bb.i

.noexc:                                           ; preds = %.thread, %bb.h
  %i.bj = load i8, ptr %i.k, align 1, !tbaa !464
  %i.bk = zext i8 %i.bj to i64                    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !248
  %i.bn = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 384, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !1153 ; 10 uses
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.bk
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bp, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.bn, align 64, !tbaa !100
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false), !tbaa.struct !250
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 88
  call void @_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEC1ERKSL_(ptr noundef nonnull align 8 dereferenceable(248) %i.br, ptr noundef nonnull align 8 dereferenceable(248) %i.p), !inline_history !1153
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 336 ; 2 uses
  store ptr null, ptr %i.bs, align 16, !tbaa !259
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 344
  %i.bu = load i64, ptr %i.q, align 8, !tbaa !262
  %i.bv = lshr i64 %i.bu, 1                       ; 2 uses
  store i64 %i.bv, ptr %i.q, align 8, !tbaa !262
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !262
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 352
  store i32 2, ptr %i.bw, align 32, !tbaa !260
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 356
  %i.by = load i8, ptr %i.r, align 4, !tbaa !261
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 360
  %i.ca = load i64, ptr %4, align 8, !tbaa !263
  store i64 %i.ca, ptr %i.bz, align 8, !tbaa !263
  %i.cb = sub i8 %i.by, %i.bm
  store i8 %i.cb, ptr %i.bx, align 4, !tbaa !261
  %i.cc = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !1153 ; 6 uses
  %i.cd = load ptr, ptr %i.o, align 16, !tbaa !456
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !267
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 2, ptr %i.ce, align 8, !tbaa !268
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cg = load i64, ptr %4, align 8, !tbaa !263
  store i64 %i.cg, ptr %i.cf, align 8, !tbaa !263
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store i8 0, ptr %i.ch, align 8, !tbaa !458
  store ptr %i.cc, ptr %i.o, align 16, !tbaa !259
  store ptr %i.cc, ptr %i.bs, align 16, !tbaa !259
  %i.ci = load ptr, ptr %3, align 8, !tbaa !459
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(368) %i.bn, ptr noundef nonnull align 8 dereferenceable(128) %i.ci), !inline_history !1153
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.cj = load i8, ptr %i.l, align 2, !tbaa !462
  %i.ck = add i8 %i.cj, -1                        ; 2 uses
  store i8 %i.ck, ptr %i.l, align 2, !tbaa !462
  %i.cl = load i8, ptr %i.k, align 1, !tbaa !464
  %i.cm = add i8 %i.cl, 1
  %i.cn = and i8 %i.cm, 7
  store i8 %i.cn, ptr %i.k, align 1, !tbaa !464
  br label %thread-pre-split23

bb.i:                                             ; preds = %bb.h
  %i.co = load i8, ptr %5, align 8, !tbaa !463
  %i.cp = zext i8 %i.co to i64                    ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !207
  %i.cs = icmp ult i8 %i.cr, %i.bh
  br i1 %i.cs, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit: ; preds = %bb.i
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.cp ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !124
  %i.cw = load i64, ptr %i.ct, align 8, !tbaa !122
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !123
  %i.cz = sub i64 %i.cw, %i.cy
  %i.da = icmp ult i64 %i.cv, %i.cz
  br i1 %i.da, label %thread-pre-split23, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre26, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.cp, %bb.i ], [ %i.cp, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.pre-phi
  call void @_ZNK7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(248) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.db)
  %i.dc = load i8, ptr %i.l, align 2, !tbaa !462
  %i.dd = add i8 %i.dc, -1                        ; 2 uses
  store i8 %i.dd, ptr %i.l, align 2, !tbaa !462
  %i.de = load i8, ptr %5, align 8, !tbaa !463
  %i.df = add i8 %i.de, 7
  %i.dg = and i8 %i.df, 7
  store i8 %i.dg, ptr %5, align 8, !tbaa !463
  br label %thread-pre-split23

thread-pre-split23:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread, %.noexc
  %i.dh = phi i8 [ %i.ck, %.noexc ], [ %i.dd, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread ], [ %.pr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit22, label %bb.j

bb.j:                                             ; preds = %thread-pre-split23
  %i.dj = load ptr, ptr %3, align 8, !tbaa !459   ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 15
  %i.dl = load atomic i8, ptr %i.dk monotonic, align 1
  %i.dm = icmp eq i8 %i.dl, -1
  br i1 %i.dm, label %6, label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

6:                                                ; preds = %bb.j
  %7 = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %8 = load ptr, ptr %7, align 8, !tbaa !207
  br label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i: ; preds = %6, %bb.j
  %.0.i.i = phi ptr [ %8, %6 ], [ %i.dj, %bb.j ]
  %9 = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %9, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit22, label %thread-pre-split, !llvm.loop !1154

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit22: ; preds = %thread-pre-split23, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.k

bb.k:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit22, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN7openvdb5v13_04mathlsERSoRKNS1_9CoordBBoxE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.openvdb::v13_0::math::Vec3.414", align 8 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.openvdb::v13_0::math::Vec3.414", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.a = load i64, ptr %1, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !298
  store i64 %i.a, ptr %5, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.c, ptr %.sroa.2.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @_ZNK7openvdb5v13_04math5TupleILi3EiE3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(12) %5)
  %i.d = load ptr, ptr %4, align 8, !tbaa !307
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !308
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.d, i64 noundef %i.f)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i unwind label %bb.b ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i: ; preds = %bb.a
  %i.h = load ptr, ptr %4, align 8, !tbaa !307    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN7openvdb5v13_04mathlsERSoRKNS1_5CoordE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !207
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #25
  br label %_ZN7openvdb5v13_04mathlsERSoRKNS1_5CoordE.exit

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %4, align 8, !tbaa !307    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.b
  %i.q = load i64, ptr %i.o, align 8, !tbaa !207
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i6 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %common.resume

_ZN7openvdb5v13_04mathlsERSoRKNS1_5CoordE.exit:   ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.57, i64 noundef 4) ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.u = load i64, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !298
  store i64 %i.u, ptr %3, align 8
  %.sroa.2.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.w, ptr %.sroa.2.0..sroa_idx.i4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZNK7openvdb5v13_04math5TupleILi3EiE3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 4 dereferenceable(12) %3)
  %i.x = load ptr, ptr %2, align 8, !tbaa !307
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !308
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.x, i64 noundef %i.z)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i8 unwind label %bb.c ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i8: ; preds = %_ZN7openvdb5v13_04mathlsERSoRKNS1_5CoordE.exit
  %i.ab = load ptr, ptr %2, align 8, !tbaa !307   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN7openvdb5v13_04mathlsERSoRKNS1_5CoordE.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i9: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i8
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !207
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #25
  br label %_ZN7openvdb5v13_04mathlsERSoRKNS1_5CoordE.exit11

bb.c:                                             ; preds = %_ZN7openvdb5v13_04mathlsERSoRKNS1_5CoordE.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %2, align 8, !tbaa !307   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i5: ; preds = %bb.c
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !207
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i6: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %common.resume

_ZN7openvdb5v13_04mathlsERSoRKNS1_5CoordE.exit11: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math5TupleILi3EiE3strB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.27, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10 unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.2, %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10.2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10: ; preds = %bb.a
  %.pre = load i32, ptr %1, align 4, !tbaa !298
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %.pre)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.28, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10.1 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10.1: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !298
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.g)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.1 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.1: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10.1
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.28, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10.2 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10.2: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !298
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.2 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.2: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10.2
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.29, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.2
  call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !359, !alias.scope !1161
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !308, !alias.scope !1161
  store i8 0, ptr %i.n, align 8, !tbaa !207, !alias.scope !1161
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !378, !noalias !1161 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !noalias !1161 ; 2 uses
  %i.t = icmp ugt ptr %i.q, %i.s
  %.08.i.i.i = select i1 %i.t, ptr %i.q, ptr %i.s ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !379, !noalias !1161 ; 2 uses
  %i.w = ptrtoint ptr %.08.i.i.i to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.v, i64 noundef %i.y)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !307, !alias.scope !1161 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.n
end_hunk_2
begin_hunk_3_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE:bb.a
bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !263
  %i.n = inttoptr i64 %i.m to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = atomicrmw sub ptr %i.o, i32 1 seq_cst, align 4
  %i.q = add i32 %i.p, -1
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.t = atomicrmw sub ptr %i.s, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v)
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(368) %0, i64 noundef 384, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSB_20VolumeRayIntersectorINSA_4GridINSA_4tree4TreeINSF_8RootNodeINSF_12InternalNodeINSI_INSF_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENSA_4math3RayIdEEEENSB_10BoxSamplerEEEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(368) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !124
  %i.c = load i64, ptr %2, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !123
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %0, align 8, !tbaa !262    ; 2 uses
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4, !tbaa !261   ; 2 uses
  %.not4.i = icmp eq i8 %i.k, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = add i8 %i.k, -1
  store i8 %i.l, ptr %i.j, align 4, !tbaa !261
  store i64 0, ptr %0, align 8, !tbaa !262
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit: ; preds = %bb.b, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 356
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !248
  %i.u = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 384, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !1188 ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.u, align 64, !tbaa !100
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.x = load i64, ptr %i.n, align 64, !tbaa !122 ; 2 uses
  store i64 %i.x, ptr %i.w, align 64, !tbaa !122
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.z = load i64, ptr %i.o, align 8, !tbaa !123  ; 2 uses
  %i.aa = sub i64 %i.x, %i.z
  %i.ab = lshr i64 %i.aa, 1
  %i.ac = add i64 %i.ab, %i.z                     ; 2 uses
  store i64 %i.ac, ptr %i.n, align 64, !tbaa !122
  store i64 %i.ac, ptr %i.y, align 8, !tbaa !123
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.ae = load i64, ptr %i.p, align 16, !tbaa !124
  store i64 %i.ae, ptr %i.ad, align 16, !tbaa !124
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  call void @_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEC1ERKSL_(ptr noundef nonnull align 8 dereferenceable(248) %i.af, ptr noundef nonnull align 8 dereferenceable(248) %i.q), !inline_history !1189
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 336 ; 2 uses
  store ptr null, ptr %i.ag, align 16, !tbaa !354
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 344
  %i.ai = load i64, ptr %i.r, align 8, !tbaa !262
  %i.aj = lshr i64 %i.ai, 1                       ; 2 uses
  store i64 %i.aj, ptr %i.r, align 8, !tbaa !262
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !262
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 352
  store i32 2, ptr %i.ak, align 32, !tbaa !260
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 356
  %i.am = load i8, ptr %i.s, align 4, !tbaa !261
  store i8 %i.am, ptr %i.al, align 4, !tbaa !261
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 360
  %i.ao = load i64, ptr %4, align 8, !tbaa !263
  store i64 %i.ao, ptr %i.an, align 8, !tbaa !263
  %i.ap = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !1190 ; 6 uses
  %i.aq = load ptr, ptr %i.t, align 16, !tbaa !456
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !267
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 2, ptr %i.ar, align 8, !tbaa !268
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.at = load i64, ptr %4, align 8, !tbaa !263
  store i64 %i.at, ptr %i.as, align 8, !tbaa !263
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i8 0, ptr %i.au, align 8, !tbaa !458
  store ptr %i.ap, ptr %i.t, align 16, !tbaa !354
  store ptr %i.ap, ptr %i.ag, align 16, !tbaa !354
  %i.av = load ptr, ptr %3, align 8, !tbaa !459
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(368) %i.u, ptr noundef nonnull align 8 dereferenceable(128) %i.av), !inline_history !1190
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !124
  %i.ax = load i64, ptr %2, align 8, !tbaa !122
  %i.ay = load i64, ptr %i.d, align 8, !tbaa !123
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp ult i64 %i.aw, %i.az
  br i1 %i.ba, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.bb = load i64, ptr %0, align 8, !tbaa !262   ; 2 uses
  %i.bc = icmp ugt i64 %i.bb, 1
  br i1 %i.bc, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, label %bb.g

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge: ; preds = %bb.f, %bb.i
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !1191

bb.g:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i64 %i.bb, 0
  br i1 %.not.i8, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = load i8, ptr %i.m, align 4, !tbaa !261  ; 2 uses
  %.not4.i9 = icmp eq i8 %i.bd, 0
  br i1 %.not4.i9, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = add i8 %i.bd, -1
  store i8 %i.be, ptr %i.m, align 4, !tbaa !261
  store i64 0, ptr %0, align 8, !tbaa !262
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(368) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINSD_20VolumeRayIntersectorINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENSC_4math3RayIdEEEENSD_10BoxSamplerEEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(368) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::range_vector", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !124
  %i.c = load i64, ptr %2, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !123
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !261   ; 2 uses
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @_ZNK7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(248) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 5 uses
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %5, align 8, !tbaa !207
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !250
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 356
  br label %bb.e

thread-pre-split:                                 ; preds = %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i
  %.promoted.i18.pre = load i8, ptr %i.l, align 2, !tbaa !462
  %.pre = load i8, ptr %i.h, align 4, !tbaa !261
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split, %bb.d
  %i.s = phi i8 [ %.pre, %thread-pre-split ], [ %i.i, %bb.d ] ; 3 uses
  %.promoted.i = phi i8 [ %.promoted.i18.pre, %thread-pre-split ], [ 1, %bb.d ] ; 3 uses
  %i.t = icmp ult i8 %.promoted.i, 8
  br i1 %i.t, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.promoted4.i = load i8, ptr %5, align 8        ; 2 uses
  %.phi.trans.insert.i = zext i8 %.promoted4.i to i64
  %.phi.trans.insert6.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %.phi.trans.insert.i
  %.pre.i = load i8, ptr %.phi.trans.insert6.i, align 1, !tbaa !207
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %i.u = phi i8 [ %.pre.i, %.lr.ph.i ], [ %i.av, %bb.g ]
  %i.v = phi i8 [ %.promoted.i, %.lr.ph.i ], [ %i.ax, %bb.g ] ; 3 uses
  %i.w = phi i8 [ %.promoted4.i, %.lr.ph.i ], [ %i.aj, %bb.g ] ; 2 uses
  %i.x = zext i8 %i.w to i64                      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.x ; 2 uses
  %i.z = icmp ult i8 %i.u, %i.s
  br i1 %i.z, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i: ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.x ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !124
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !122
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !123
  %i.ag = sub i64 %i.ad, %i.af
  %i.ah = icmp ult i64 %i.ac, %i.ag
  br i1 %i.ah, label %bb.g, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

bb.g:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i
  %i.ai = add nuw i8 %i.w, 1
  %i.aj = and i8 %i.ai, 7                         ; 3 uses
  store i8 %i.aj, ptr %5, align 8, !tbaa !463
  %i.ak = zext nneg i8 %i.aj to i64               ; 2 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.ak ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !tbaa.struct !250
  %i.am = load i64, ptr %i.al, align 8, !tbaa !122 ; 2 uses
  store i64 %i.am, ptr %i.aa, align 8, !tbaa !122
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !123 ; 2 uses
  %i.ap = sub i64 %i.am, %i.ao
  %i.aq = lshr i64 %i.ap, 1
  %i.ar = add i64 %i.aq, %i.ao                    ; 2 uses
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !122
  store i64 %i.ar, ptr %i.ae, align 8, !tbaa !123
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !124
  store i64 %i.at, ptr %i.ab, align 8, !tbaa !124
  %i.au = load i8, ptr %i.y, align 1, !tbaa !207
  %i.av = add i8 %i.au, 1                         ; 3 uses
  store i8 %i.av, ptr %i.y, align 1, !tbaa !207
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ak
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !207
  %i.ax = add nuw nsw i8 %i.v, 1                  ; 3 uses
  store i8 %i.ax, ptr %i.l, align 2, !tbaa !462
  %exitcond.not.i = icmp eq i8 %i.ax, 8
  br i1 %exitcond.not.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread, label %bb.f, !llvm.loop !30

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i, %bb.f, %bb.e
  %.pr = phi i8 [ %.promoted.i, %bb.e ], [ %i.v, %bb.f ], [ %i.v, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i ] ; 2 uses
  %i.ay = load ptr, ptr %i.o, align 16, !tbaa !354
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load atomic i8, ptr %i.az monotonic, align 1, !range !125, !noundef !126
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.h, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.g
  %i.bc = load ptr, ptr %i.o, align 16, !tbaa !354
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load atomic i8, ptr %i.bd monotonic, align 1, !range !125, !noundef !126
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %.thread, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge

.thread:                                          ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread
  %i.bg = add i8 %i.s, 1
  store i8 %i.bg, ptr %i.h, align 4, !tbaa !261
  br label %.noexc

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit
  %.pre24 = load i8, ptr %5, align 8, !tbaa !463
  %.pre26 = zext i8 %.pre24 to i64
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

bb.h:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit
  %i.bh = add i8 %i.s, 1                          ; 2 uses
  store i8 %i.bh, ptr %i.h, align 4, !tbaa !261
  %i.bi = icmp ugt i8 %.pr, 1
  br i1 %i.bi, label %.noexc, label %bb.i

.noexc:                                           ; preds = %.thread, %bb.h
  %i.bj = load i8, ptr %i.k, align 1, !tbaa !464
  %i.bk = zext i8 %i.bj to i64                    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !248
  %i.bn = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 384, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !1192 ; 10 uses
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.bk
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bp, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.bn, align 64, !tbaa !100
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false), !tbaa.struct !250
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 88
  call void @_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEC1ERKSL_(ptr noundef nonnull align 8 dereferenceable(248) %i.br, ptr noundef nonnull align 8 dereferenceable(248) %i.p), !inline_history !1192
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 336 ; 2 uses
  store ptr null, ptr %i.bs, align 16, !tbaa !354
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 344
  %i.bu = load i64, ptr %i.q, align 8, !tbaa !262
  %i.bv = lshr i64 %i.bu, 1                       ; 2 uses
  store i64 %i.bv, ptr %i.q, align 8, !tbaa !262
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !262
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 352
  store i32 2, ptr %i.bw, align 32, !tbaa !260
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 356
  %i.by = load i8, ptr %i.r, align 4, !tbaa !261
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 360
  %i.ca = load i64, ptr %4, align 8, !tbaa !263
  store i64 %i.ca, ptr %i.bz, align 8, !tbaa !263
  %i.cb = sub i8 %i.by, %i.bm
  store i8 %i.cb, ptr %i.bx, align 4, !tbaa !261
  %i.cc = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !1192 ; 6 uses
  %i.cd = load ptr, ptr %i.o, align 16, !tbaa !456
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !267
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 2, ptr %i.ce, align 8, !tbaa !268
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cg = load i64, ptr %4, align 8, !tbaa !263
  store i64 %i.cg, ptr %i.cf, align 8, !tbaa !263
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store i8 0, ptr %i.ch, align 8, !tbaa !458
  store ptr %i.cc, ptr %i.o, align 16, !tbaa !354
  store ptr %i.cc, ptr %i.bs, align 16, !tbaa !354
  %i.ci = load ptr, ptr %3, align 8, !tbaa !459
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(368) %i.bn, ptr noundef nonnull align 8 dereferenceable(128) %i.ci), !inline_history !1192
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.cj = load i8, ptr %i.l, align 2, !tbaa !462
  %i.ck = add i8 %i.cj, -1                        ; 2 uses
  store i8 %i.ck, ptr %i.l, align 2, !tbaa !462
  %i.cl = load i8, ptr %i.k, align 1, !tbaa !464
  %i.cm = add i8 %i.cl, 1
  %i.cn = and i8 %i.cm, 7
  store i8 %i.cn, ptr %i.k, align 1, !tbaa !464
  br label %thread-pre-split23

bb.i:                                             ; preds = %bb.h
  %i.co = load i8, ptr %5, align 8, !tbaa !463
  %i.cp = zext i8 %i.co to i64                    ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !207
  %i.cs = icmp ult i8 %i.cr, %i.bh
  br i1 %i.cs, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit: ; preds = %bb.i
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.cp ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !124
  %i.cw = load i64, ptr %i.ct, align 8, !tbaa !122
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !123
  %i.cz = sub i64 %i.cw, %i.cy
  %i.da = icmp ult i64 %i.cv, %i.cz
  br i1 %i.da, label %thread-pre-split23, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre26, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.cp, %bb.i ], [ %i.cp, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.pre-phi
  call void @_ZNK7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(248) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.db)
  %i.dc = load i8, ptr %i.l, align 2, !tbaa !462
  %i.dd = add i8 %i.dc, -1                        ; 2 uses
  store i8 %i.dd, ptr %i.l, align 2, !tbaa !462
  %i.de = load i8, ptr %5, align 8, !tbaa !463
  %i.df = add i8 %i.de, 7
  %i.dg = and i8 %i.df, 7
  store i8 %i.dg, ptr %5, align 8, !tbaa !463
  br label %thread-pre-split23

thread-pre-split23:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread, %.noexc
  %i.dh = phi i8 [ %i.ck, %.noexc ], [ %i.dd, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread ], [ %.pr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit22, label %bb.j

bb.j:                                             ; preds = %thread-pre-split23
  %i.dj = load ptr, ptr %3, align 8, !tbaa !459   ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 15
  %i.dl = load atomic i8, ptr %i.dk monotonic, align 1
  %i.dm = icmp eq i8 %i.dl, -1
  br i1 %i.dm, label %6, label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

6:                                                ; preds = %bb.j
  %7 = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %8 = load ptr, ptr %7, align 8, !tbaa !207
  br label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i: ; preds = %6, %bb.j
  %.0.i.i = phi ptr [ %8, %6 ], [ %i.dj, %bb.j ]
  %9 = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %9, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit22, label %thread-pre-split, !llvm.loop !1193

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit22: ; preds = %thread-pre-split23, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.k

bb.k:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit22, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_05tools10BoxSampler6sampleINS0_4tree17ValueAccessorImplIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEbRKT_RKNS0_4math4Vec3IdEERNSJ_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 15 uses
  %i.a = alloca [2 x [2 x [2 x double]]], align 16 ; 11 uses
  %i.b = load double, ptr %1, align 8, !tbaa !163 ; 2 uses
  %i.c = tail call double @llvm.floor.f64(double %i.b)
  %i.d = fptosi double %i.c to i32                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !163 ; 2 uses
  %i.g = tail call double @llvm.floor.f64(double %i.f)
  %i.h = fptosi double %i.g to i32                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !163 ; 2 uses
  %i.k = tail call double @llvm.floor.f64(double %i.j)
  %i.l = fptosi double %i.k to i32                ; 2 uses
  %.sroa.2.0.insert.ext.i = zext i32 %i.h to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %i.m = sitofp i32 %i.d to double
  %i.n = fsub double %i.b, %i.m
  %i.o = sitofp i32 %i.h to double
  %i.p = fsub double %i.f, %i.o                   ; 2 uses
  %i.q = sitofp i32 %i.l to double
  %i.r = fsub double %i.j, %i.q                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %.sroa.0.0.insert.ext = zext i32 %i.d to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.0.0.insert.insert, ptr %3, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  store i32 %i.l, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.s = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERd(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.a)
  %i.t = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !298
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !298
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.w = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERd(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.x = or i1 %i.s, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !298
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !298
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ad = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERd(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
  %i.ae = or i1 %i.x, %i.ad
  %i.af = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !298
  %i.ag = add nsw i32 %i.af, -1
  store i32 %i.ag, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !298
  %i.ah = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERd(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %i.ai = or i1 %i.ae, %i.ah
  %i.aj = load <2 x i32>, ptr %3, align 8, !tbaa !298
  %i.ak = add nsw <2 x i32> %i.aj, <i32 1, i32 -1>
  store <2 x i32> %i.ak, ptr %3, align 8, !tbaa !298
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.am = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERd(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.al)
  %i.an = or i1 %i.ai, %i.am
  %i.ao = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !298
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !298
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.ar = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERd(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
  %i.as = or i1 %i.an, %i.ar
  %i.at = load i32, ptr %i.y, align 4, !tbaa !298
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.y, align 4, !tbaa !298
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.ax = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERd(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.aw)
  %i.ay = or i1 %i.as, %i.ax
  %i.az = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !298
  %i.ba = add nsw i32 %i.az, -1
  store i32 %i.ba, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !298
  %i.bb = call noundef zeroext i1 @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE10probeValueERKNS0_4math5CoordERd(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.av)
  %i.bc = or i1 %i.ay, %i.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.bd = load double, ptr %i.v, align 8, !tbaa !163
  %i.be = load double, ptr %i.a, align 16, !tbaa !163 ; 2 uses
  %i.bf = fsub double %i.bd, %i.be
  %i.bg = fmul double %i.r, %i.bf
  %i.bh = fadd double %i.be, %i.bg                ; 2 uses
  %i.bi = load double, ptr %i.ac, align 8, !tbaa !163
  %i.bj = load double, ptr %i.ab, align 16, !tbaa !163 ; 2 uses
  %i.bk = fsub double %i.bi, %i.bj
  %i.bl = fmul double %i.r, %i.bk
  %i.bm = fadd double %i.bj, %i.bl
  %i.bn = fsub double %i.bm, %i.bh
  %i.bo = fmul double %i.p, %i.bn
  %i.bp = fadd double %i.bh, %i.bo                ; 2 uses
  %i.bq = load double, ptr %i.aq, align 8, !tbaa !163
  %i.br = load double, ptr %i.al, align 16, !tbaa !163 ; 2 uses
  %i.bs = fsub double %i.bq, %i.br
  %i.bt = fmul double %i.r, %i.bs
  %i.bu = fadd double %i.br, %i.bt                ; 2 uses
  %i.bv = load double, ptr %i.aw, align 8, !tbaa !163
  %i.bw = load double, ptr %i.av, align 16, !tbaa !163 ; 2 uses
  %i.bx = fsub double %i.bv, %i.bw
  %i.by = fmul double %i.r, %i.bx
  %i.bz = fadd double %i.bw, %i.by
  %i.ca = fsub double %i.bz, %i.bu
  %i.cb = fmul double %i.p, %i.ca
  %i.cc = fadd double %i.bu, %i.cb
  %i.cd = fsub double %i.cc, %i.bp
  %i.ce = fmul double %i.n, %i.cd
  %i.cf = fadd double %i.bp, %i.ce
  store double %i.cf, ptr %2, align 8, !tbaa !163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i1 %i.bc
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.log.f80(x86_fp80) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.ctpop.v8i64(<8 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { cold noreturn }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { builtin nounwind }
end_hunk_3
