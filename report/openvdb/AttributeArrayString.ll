Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/AttributeArrayString?download=true
inline.NumInlined: 1635
inline.NumDeleted: 726
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE:bb.a

_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.f, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISG_SI_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.g, %bb.h
  %i.as = inttoptr i64 %i.z to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.as, ptr noundef nonnull align 64 dereferenceable(128) %0, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 32, !tbaa !195 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load i64, ptr %i.c, align 8, !tbaa !181
  %i.e = load ptr, ptr %0, align 64, !tbaa !93
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(128) dereferenceable(128) %0) #26, !inline_history !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = atomicrmw sub ptr %i.g, i32 1 seq_cst, align 4
  %i.i = add i32 %i.h, -1
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.k, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.k = load ptr, ptr %.019.i.i, align 8, !tbaa !185 ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !181
  %i.n = inttoptr i64 %i.m to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = atomicrmw sub ptr %i.o, i32 1 seq_cst, align 4
  %i.q = add i32 %i.p, -1
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.t = atomicrmw sub ptr %i.s, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v)
  br label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(128) %0, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

declare noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvmSt11align_val_t(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISE_SG_EEKNS1_16auto_partitionerEEESH_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d0::split", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !161
  %i.c = icmp ugt i64 %i.b, 499
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !180    ; 2 uses
  %i.e = icmp ugt i64 %i.d, 1
  br i1 %i.e, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !179   ; 2 uses
  %.not4.i = icmp eq i8 %i.g, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = add i8 %i.g, -1
  store i8 %i.h, ptr %i.f, align 4, !tbaa !179
  store i64 0, ptr %0, align 8, !tbaa !180
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit: ; preds = %bb.b, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !164
  %i.k = call noundef ptr @_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISC_SE_EEKNS1_16auto_partitionerEEEJRSK_RNS0_2d05splitERS2_EEEPT_RNS1_14execution_dataEDpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %4), !inline_history !446 ; 2 uses
  %i.l = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !446 ; 6 uses
  %i.m = load ptr, ptr %i.j, align 32, !tbaa !200
  store ptr %i.m, ptr %i.l, align 8, !tbaa !185
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 2, ptr %i.n, align 8, !tbaa !186
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load i64, ptr %4, align 8, !tbaa !181
  store i64 %i.p, ptr %i.o, align 8, !tbaa !181
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i8 0, ptr %i.q, align 8, !tbaa !201
  store ptr %i.l, ptr %i.j, align 32, !tbaa !195
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  store ptr %i.l, ptr %i.r, align 32, !tbaa !195
  %i.s = load ptr, ptr %3, align 8, !tbaa !202
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(128) %i.k, ptr noundef nonnull align 8 dereferenceable(128) %i.s), !inline_history !446
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.t = load i64, ptr %i.a, align 8, !tbaa !161
  %i.u = icmp ugt i64 %i.t, 499
  br i1 %i.u, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.v = load i64, ptr %0, align 8, !tbaa !180    ; 2 uses
  %i.w = icmp ugt i64 %i.v, 1
  br i1 %i.w, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, label %bb.g

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge: ; preds = %bb.f, %bb.i
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !447

bb.g:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i64 %i.v, 0
  br i1 %.not.i8, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i8, ptr %i.i, align 4, !tbaa !179   ; 2 uses
  %.not4.i9 = icmp eq i8 %i.x, 0
  br i1 %.not4.i9, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add i8 %i.x, -1
  store i8 %i.y, ptr %i.i, align 4, !tbaa !179
  store i64 0, ptr %0, align 8, !tbaa !180
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISG_SI_EEKNS1_16auto_partitionerEEESJ_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

declare noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISG_SI_EEKNS1_16auto_partitionerEEESJ_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::range_vector", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !161  ; 4 uses
  %i.c = icmp ugt i64 %i.b, 499
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !179
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %.thread, label %bb.d

bb.c:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8run_bodyERSD_.exit, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %.idx.i.i.i.i.i.i = shl nsw i64 %i.b, 2
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.01.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !118 ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %.sroa.01.0.copyload.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i ; 2 uses
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = xor i64 %i.i, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElNS0_5__ops15_Iter_comp_iterISt4lessIjEEEEvT_SC_T0_T1_(ptr %.sroa.01.0.copyload.i.i.i.i.i.i, ptr nonnull %i.g, i64 noundef %i.j)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterISt4lessIjEEEEvT_SC_T0_(ptr %.sroa.01.0.copyload.i.i.i.i.i.i, ptr nonnull %i.g)
  br label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8run_bodyERSD_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 2 uses
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %5, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !192
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 116
  br label %bb.e

bb.e:                                             ; preds = %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i, %bb.d
  %i.r = load i8, ptr %i.d, align 4, !tbaa !179
  call void @_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE13split_to_fillEh(ptr noundef nonnull align 8 dereferenceable(208) %5, i8 noundef zeroext %i.r)
  %i.s = load ptr, ptr %i.o, align 32, !tbaa !195
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load atomic i8, ptr %i.t monotonic, align 1, !range !116, !noundef !69
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.f, label %._ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit.thread_crit_edge

._ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %bb.e
  %.pre = load i8, ptr %5, align 8, !tbaa !205    ; 2 uses
  %.pre28 = zext i8 %.pre to i64
  br label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.w = load i8, ptr %i.d, align 4, !tbaa !179
  %i.x = add i8 %i.w, 1                           ; 2 uses
  store i8 %i.x, ptr %i.d, align 4, !tbaa !179
  %i.y = load i8, ptr %i.l, align 2, !tbaa !206   ; 2 uses
  %i.z = icmp ugt i8 %i.y, 1
  br i1 %i.z, label %.noexc, label %bb.g

.noexc:                                           ; preds = %bb.f
  %i.aa = load i8, ptr %i.k, align 1, !tbaa !450
  %i.ab = zext i8 %i.aa to i64                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !164
  %i.ae = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !448 ; 9 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.ae, align 64, !tbaa !93
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !192
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 96 ; 2 uses
  store ptr null, ptr %i.ai, align 32, !tbaa !195
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ak = load i64, ptr %i.p, align 8, !tbaa !180
  %i.al = lshr i64 %i.ak, 1                       ; 2 uses
  store i64 %i.al, ptr %i.p, align 8, !tbaa !180
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !180
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  store i32 2, ptr %i.am, align 16, !tbaa !178
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 116
  %i.ao = load i8, ptr %i.q, align 4, !tbaa !179
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %i.aq = load i64, ptr %4, align 8, !tbaa !181
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !181
  %i.ar = sub i8 %i.ao, %i.ad
  store i8 %i.ar, ptr %i.an, align 4, !tbaa !179
  %i.as = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !448 ; 6 uses
  %i.at = load ptr, ptr %i.o, align 32, !tbaa !200
  store ptr %i.at, ptr %i.as, align 8, !tbaa !185
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 2, ptr %i.au, align 8, !tbaa !186
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.aw = load i64, ptr %4, align 8, !tbaa !181
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !181
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i8 0, ptr %i.ax, align 8, !tbaa !201
  store ptr %i.as, ptr %i.o, align 32, !tbaa !195
  store ptr %i.as, ptr %i.ai, align 32, !tbaa !195
  %i.ay = load ptr, ptr %3, align 8, !tbaa !202
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(128) %i.ae, ptr noundef nonnull align 8 dereferenceable(128) %i.ay), !inline_history !448
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.az = load i8, ptr %i.l, align 2, !tbaa !206
  %i.ba = add i8 %i.az, -1                        ; 2 uses
  store i8 %i.ba, ptr %i.l, align 2, !tbaa !206
  %i.bb = load i8, ptr %i.k, align 1, !tbaa !450
  %i.bc = add i8 %i.bb, 1
  %i.bd = and i8 %i.bc, 7
  store i8 %i.bd, ptr %i.k, align 1, !tbaa !450
  br label %thread-pre-split

bb.g:                                             ; preds = %bb.f
  %i.be = load i8, ptr %5, align 8, !tbaa !205    ; 3 uses
  %i.bf = zext i8 %i.be to i64                    ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !40
  %i.bi = icmp ult i8 %i.bh, %i.x
  br i1 %i.bi, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit: ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %i.bf
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !161
  %i.bm = icmp ugt i64 %i.bl, 499
  br i1 %i.bm, label %thread-pre-split, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit.thread: ; preds = %._ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.g, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre28, %._ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.bf, %bb.g ], [ %i.bf, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit ]
  %i.bn = phi i8 [ %.pre, %._ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.be, %bb.g ], [ %i.be, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit ]
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.pre-phi ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !161 ; 3 uses
  %.not.i.i.i.i.i.i.i.i13 = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i.i.i.i.i.i.i13, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8run_bodyERSD_.exit18, label %.noexc16

.noexc16:                                         ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit.thread
  %.idx.i.i.i.i.i.i14 = shl nsw i64 %i.bq, 2
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %.sroa.01.0.copyload.i.i.i.i.i.i15 = load ptr, ptr %i.br, align 8, !tbaa !118 ; 3 uses
  %i.bs = getelementptr inbounds i8, ptr %.sroa.01.0.copyload.i.i.i.i.i.i15, i64 %.idx.i.i.i.i.i.i14 ; 2 uses
  %i.bt = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bq, i1 true)
  %i.bu = shl nuw nsw i64 %i.bt, 1
  %i.bv = xor i64 %i.bu, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElNS0_5__ops15_Iter_comp_iterISt4lessIjEEEEvT_SC_T0_T1_(ptr %.sroa.01.0.copyload.i.i.i.i.i.i15, ptr nonnull %i.bs, i64 noundef %i.bv)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterISt4lessIjEEEEvT_SC_T0_(ptr %.sroa.01.0.copyload.i.i.i.i.i.i15, ptr nonnull %i.bs)
  %.pre26 = load i8, ptr %5, align 8, !tbaa !205
  br label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8run_bodyERSD_.exit18

_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8run_bodyERSD_.exit18: ; preds = %.noexc16, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit.thread
  %i.bw = phi i8 [ %.pre26, %.noexc16 ], [ %i.bn, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit.thread ]
  %i.bx = load i8, ptr %i.l, align 2, !tbaa !206
  %i.by = add i8 %i.bx, -1                        ; 2 uses
  store i8 %i.by, ptr %i.l, align 2, !tbaa !206
  %i.bz = add i8 %i.bw, 7
  %i.ca = and i8 %i.bz, 7
  store i8 %i.ca, ptr %5, align 8, !tbaa !205
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8run_bodyERSD_.exit18, %.noexc
  %i.cb = phi i8 [ %i.ba, %.noexc ], [ %i.by, %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8run_bodyERSD_.exit18 ], [ %i.y, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit ]
  %i.cc = icmp eq i8 %i.cb, 0
  br i1 %i.cc, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EED2Ev.exit24, label %bb.h

bb.h:                                             ; preds = %thread-pre-split
  %i.cd = load ptr, ptr %3, align 8, !tbaa !202   ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 15
  %i.cf = load atomic i8, ptr %i.ce monotonic, align 1
  %i.cg = icmp eq i8 %i.cf, -1
  br i1 %i.cg, label %6, label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

6:                                                ; preds = %bb.h
  %7 = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  br label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i: ; preds = %6, %bb.h
  %.0.i.i = phi ptr [ %8, %6 ], [ %i.cd, %bb.h ]
  %9 = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %9, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EED2Ev.exit24, label %bb.e, !llvm.loop !449

_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EED2Ev.exit24: ; preds = %thread-pre-split, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8run_bodyERSD_.exit

_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8run_bodyERSD_.exit: ; preds = %.thread, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EED2Ev.exit24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISC_SE_EEKNS1_16auto_partitionerEEEJRSK_RNS0_2d05splitERS2_EEEPT_RNS1_14execution_dataEDpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 64 dereferenceable(128) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 6 uses
  %i.a = tail call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %1) ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.a, align 64, !tbaa !93
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 64, !tbaa !207, !nonnull !69
  store ptr %i.e, ptr %i.d, align 64, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.g = load i64, ptr %i.f, align 16, !tbaa !118 ; 2 uses
  store i64 %i.g, ptr %5, align 8, !tbaa !118
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = call noundef i64 @_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE21pseudo_median_of_nineERKS9_RKSC_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.c), !inline_history !451 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.019.0.copyload.i.i.i = load ptr, ptr %5, align 8, !tbaa !118 ; 3 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %.sroa.019.0.copyload.i.i.i, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %.sroa.019.0.copyload.i.i.i, align 4, !tbaa !54
  %i.l = load i32, ptr %i.j, align 4, !tbaa !54
  store i32 %i.l, ptr %.sroa.019.0.copyload.i.i.i, align 4, !tbaa !54
  store i32 %i.k, ptr %i.j, align 4, !tbaa !54
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !161  ; 2 uses
  %i.o = load ptr, ptr %5, align 8, !tbaa !208    ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.028.i.i.i = phi i64 [ %i.n, %bb.c ], [ %i.q, %bb.g ]
  %.0.i.i.i = phi i64 [ 0, %bb.c ], [ %i.w, %bb.g ] ; 2 uses
  %i.p = load i32, ptr %i.h, align 4, !tbaa !54   ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.129.i.i.i = phi i64 [ %.028.i.i.i, %bb.d ], [ %i.q, %bb.e ] ; 2 uses
  %i.q = add i64 %.129.i.i.i, -1                  ; 7 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !54   ; 3 uses
  %i.t = icmp ult i32 %i.p, %i.s
  br i1 %i.t, label %bb.e, label %.preheader.i.i.i.preheader, !llvm.loop !10

.preheader.i.i.i.preheader:                       ; preds = %bb.e
  %i.u = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.q ; 2 uses
  %i.v = icmp eq i64 %.0.i.i.i, %i.q
  br i1 %i.v, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEEC2ERSI_RNS0_2d05splitERNS1_22small_object_allocatorE.exit, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  br i1 %i.aa, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEEC2ERSI_RNS0_2d05splitERNS1_22small_object_allocatorE.exit, label %.lr.ph, !llvm.loop !11

.lr.ph:                                           ; preds = %.preheader.i.i.i.preheader, %.preheader.i.i.i
  %.1.i.i.i76 = phi i64 [ %i.w, %.preheader.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.preheader ]
  %i.w = add i64 %.1.i.i.i76, 1                   ; 5 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !54   ; 2 uses
  %i.z = icmp ult i32 %i.y, %i.p
  %i.aa = icmp eq i64 %i.w, %i.q                  ; 2 uses
  br i1 %i.z, label %.preheader.i.i.i, label %bb.f, !llvm.loop !11

bb.f:                                             ; preds = %.lr.ph
  br i1 %i.aa, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEEC2ERSI_RNS0_2d05splitERNS1_22small_object_allocatorE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.w
  store i32 %i.s, ptr %i.ab, align 4, !tbaa !54
  store i32 %i.y, ptr %i.u, align 4, !tbaa !54
  br label %bb.d, !llvm.loop !12

_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEEC2ERSI_RNS0_2d05splitERNS1_22small_object_allocatorE.exit: ; preds = %bb.f, %.preheader.i.i.i.preheader, %.preheader.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 %i.p, ptr %i.u, align 4, !tbaa !54
  store i32 %i.s, ptr %i.h, align 4, !tbaa !54
  %i.ad = sub i64 %i.n, %.129.i.i.i
  store i64 %i.q, ptr %i.m, align 8, !tbaa !161
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !161
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.af = load i64, ptr %i.m, align 8, !tbaa !161
  %i.ag = load ptr, ptr %i.f, align 16, !tbaa !208
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store ptr %i.ai, ptr %i.ae, align 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr null, ptr %i.aj, align 32, !tbaa !195
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !180
  %i.an = lshr i64 %i.am, 1                       ; 2 uses
  store i64 %i.an, ptr %i.al, align 8, !tbaa !180
  store i64 %i.an, ptr %i.ak, align 8, !tbaa !180
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i32 2, ptr %i.ao, align 16, !tbaa !178
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 116
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !179
  store i8 %i.ar, ptr %i.ap, align 4, !tbaa !179
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.at = load i64, ptr %4, align 8, !tbaa !181
  store i64 %i.at, ptr %i.as, align 8, !tbaa !181
  ret ptr %i.a
}

declare noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE21pseudo_median_of_nineERKS9_RKSC_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !161  ; 2 uses
  %i.c = lshr i64 %i.b, 3                         ; 9 uses
  %i.d = shl nuw nsw i64 %i.c, 1                  ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !208    ; 9 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = load i32, ptr %i.e, align 4, !tbaa !54   ; 5 uses
  %i.h = load i32, ptr %i.f, align 4, !tbaa !54   ; 5 uses
  %i.i = icmp ult i32 %i.g, %i.h
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.d
  %i.k = load i32, ptr %i.j, align 4, !tbaa !54   ; 6 uses
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ult i32 %i.h, %i.k
  br i1 %i.l, label %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ult i32 %i.g, %i.k
  %i.n = select i1 %i.m, i64 %i.d, i64 0
  %i.o = tail call i32 @llvm.umax.i32(i32 %i.g, i32 %i.k)
  br label %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit

bb.d:                                             ; preds = %bb.a
  %i.p = icmp ult i32 %i.k, %i.h
  br i1 %i.p, label %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp ult i32 %i.k, %i.g
  %i.r = select i1 %i.q, i64 %i.d, i64 0
  %i.s = tail call i32 @llvm.umin.i32(i32 %i.k, i32 %i.g)
  br label %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit

_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.t = phi i32 [ %i.o, %bb.c ], [ %i.s, %bb.e ], [ %i.h, %bb.b ], [ %i.h, %bb.d ] ; 3 uses
  %i.u = phi i64 [ %i.n, %bb.c ], [ %i.r, %bb.e ], [ %i.c, %bb.b ], [ %i.c, %bb.d ] ; 2 uses
  %i.v = mul nuw nsw i64 %i.c, 3                  ; 3 uses
  %i.w = shl nuw nsw i64 %i.c, 2                  ; 3 uses
  %i.x = mul nuw i64 %i.c, 5                      ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.v
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.w
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !54  ; 5 uses
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !54  ; 5 uses
  %i.ac = icmp ult i32 %i.aa, %i.ab
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.x
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !54 ; 6 uses
  br i1 %i.ac, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit
  %i.af = icmp ult i32 %i.ab, %i.ae
  br i1 %i.af, label %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit13, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp ult i32 %i.aa, %i.ae
  %i.ah = select i1 %i.ag, i64 %i.x, i64 %i.v
  %i.ai = tail call i32 @llvm.umax.i32(i32 %i.aa, i32 %i.ae)
  br label %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit13

bb.h:                                             ; preds = %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit
  %i.aj = icmp ult i32 %i.ae, %i.ab
  br i1 %i.aj, label %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit13, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = icmp ult i32 %i.ae, %i.aa
  %i.al = select i1 %i.ak, i64 %i.x, i64 %i.v
  %i.am = tail call i32 @llvm.umin.i32(i32 %i.ae, i32 %i.aa)
  br label %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit13

_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit13: ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %i.an = phi i32 [ %i.ai, %bb.g ], [ %i.am, %bb.i ], [ %i.ab, %bb.f ], [ %i.ab, %bb.h ] ; 3 uses
  %i.ao = phi i64 [ %i.ah, %bb.g ], [ %i.al, %bb.i ], [ %i.w, %bb.f ], [ %i.w, %bb.h ] ; 2 uses
  %i.ap = mul nuw i64 %i.c, 6                     ; 3 uses
  %i.aq = mul nuw i64 %i.c, 7                     ; 3 uses
  %i.ar = add i64 %i.b, -1                        ; 3 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ap
  %i.at = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.aq
  %i.au = load i32, ptr %i.as, align 4, !tbaa !54 ; 5 uses
  %i.av = load i32, ptr %i.at, align 4, !tbaa !54 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.t = atomicrmw sub ptr %i.s, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v)
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(136) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISE_St4lessIjEEEKNS1_16auto_partitionerEEESF_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !209
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !118
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %i.j = icmp ult i64 %i.b, %i.i
  br i1 %i.j, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %0, align 8, !tbaa !180    ; 2 uses
  %i.l = icmp ugt i64 %i.k, 1
  br i1 %i.l, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = load i8, ptr %i.m, align 4, !tbaa !179   ; 2 uses
  %.not4.i = icmp eq i8 %i.n, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add i8 %i.n, -1
  store i8 %i.o, ptr %i.m, align 4, !tbaa !179
  store i64 0, ptr %0, align 8, !tbaa !180
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit: ; preds = %bb.b, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !164
  %i.x = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !453 ; 12 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.x, align 64, !tbaa !93
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.aa = load i64, ptr %i.q, align 64            ; 2 uses
  store i64 %i.aa, ptr %i.z, align 64, !tbaa !118
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !118 ; 2 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.aa, %i.ad
  %i.af = ashr exact i64 %i.ae, 2
  %i.ag = sdiv i64 %i.af, 2
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ag ; 2 uses
  store ptr %i.ah, ptr %i.q, align 64, !tbaa !118
  store ptr %i.ah, ptr %i.ab, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.aj = load i64, ptr %i.s, align 16, !tbaa !209
  store i64 %i.aj, ptr %i.ai, align 16, !tbaa !209
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !210
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 104 ; 2 uses
  store ptr null, ptr %i.al, align 8, !tbaa !177
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %i.an = load i64, ptr %i.u, align 16, !tbaa !180
  %i.ao = lshr i64 %i.an, 1                       ; 2 uses
  store i64 %i.ao, ptr %i.u, align 16, !tbaa !180
  store i64 %i.ao, ptr %i.am, align 16, !tbaa !180
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  store i32 2, ptr %i.ap, align 8, !tbaa !178
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 124
  %i.ar = load i8, ptr %i.v, align 4, !tbaa !179
  store i8 %i.ar, ptr %i.aq, align 4, !tbaa !179
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.at = load i64, ptr %4, align 8, !tbaa !181
  store i64 %i.at, ptr %i.as, align 64, !tbaa !181
  %i.au = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !454 ; 6 uses
  %i.av = load ptr, ptr %i.w, align 8, !tbaa !200
  store ptr %i.av, ptr %i.au, align 8, !tbaa !185
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 2, ptr %i.aw, align 8, !tbaa !186
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ay = load i64, ptr %4, align 8, !tbaa !181
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !181
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store i8 0, ptr %i.az, align 8, !tbaa !201
  store ptr %i.au, ptr %i.w, align 8, !tbaa !177
  store ptr %i.au, ptr %i.al, align 8, !tbaa !177
  %i.ba = load ptr, ptr %3, align 8, !tbaa !202
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(136) %i.x, ptr noundef nonnull align 8 dereferenceable(128) %i.ba), !inline_history !454
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !209
  %i.bc = load ptr, ptr %2, align 8, !tbaa !118
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 2
  %i.bi = icmp ult i64 %i.bb, %i.bh
  br i1 %i.bi, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.bj = load i64, ptr %0, align 8, !tbaa !180   ; 2 uses
  %i.bk = icmp ugt i64 %i.bj, 1
  br i1 %i.bk, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, label %bb.g

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge: ; preds = %bb.f, %bb.i
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !455

bb.g:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i64 %i.bj, 0
  br i1 %.not.i8, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = load i8, ptr %i.p, align 4, !tbaa !179  ; 2 uses
  %.not4.i9 = icmp eq i8 %i.bl, 0
  br i1 %.not4.i9, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = add i8 %i.bl, -1
  store i8 %i.bm, ptr %i.p, align 4, !tbaa !179
  store i64 0, ptr %0, align 8, !tbaa !180
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISG_St4lessIjEEEKNS1_16auto_partitionerEEESH_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISG_St4lessIjEEEKNS1_16auto_partitionerEEESH_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::range_vector.65", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !209
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %2, align 8, !tbaa !118    ; 3 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !118  ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %i.j = icmp ult i64 %i.b, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.l = load i8, ptr %i.k, align 4, !tbaa !179
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not11.i.i.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not11.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %i.ac, %bb.h ] ; 2 uses
  %.sroa.06.012.i.i.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i.i ], [ %i.ab, %bb.h ] ; 3 uses
  %i.n = and i32 %.013.i.i.i.i.i.i, 63
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.m, align 32, !tbaa !460, !nonnull !69, !align !70 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 15
  %i.r = load atomic i8, ptr %i.q monotonic, align 1
  %i.s = icmp eq i8 %i.r, -1
  br i1 %i.s, label %6, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i.i.i.i.i

6:                                                ; preds = %bb.e
  %7 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i.i.i.i.i

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i.i.i.i.i: ; preds = %6, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %8, %6 ], [ %i.p, %bb.e ]
  %9 = tail call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i.i.i.i.i.i)
  br i1 %9, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i.i.i.i.i, %bb.d
  %i.t = getelementptr inbounds i8, ptr %.sroa.06.012.i.i.i.i.i.i, i64 -4
  %i.u = load i32, ptr %.sroa.06.012.i.i.i.i.i.i, align 4, !tbaa !54
  %i.v = load i32, ptr %i.t, align 4, !tbaa !54
  %i.w = icmp ult i32 %i.u, %i.v
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.m, align 32, !tbaa !460, !nonnull !69, !align !70 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 15
  %i.z = load atomic i8, ptr %i.y monotonic, align 1
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %10, label %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i.i.i.i.i

10:                                               ; preds = %bb.g
  %11 = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %12 = load ptr, ptr %11, align 8, !tbaa !40
  br label %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i.i.i.i.i

_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i.i.i.i.i: ; preds = %10, %bb.g
  %.0.i.i5.i.i.i.i.i.i = phi ptr [ %12, %10 ], [ %i.x, %bb.g ]
  %13 = tail call noundef zeroext i1 @_ZN3tbb6detail2r122cancel_group_executionERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i5.i.i.i.i.i.i) ; 0 uses
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit

bb.h:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ac = add nuw nsw i32 %.013.i.i.i.i.i.i, 1
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit, label %bb.d, !llvm.loop !456

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 6 uses
  store i8 0, ptr %i.ad, align 1, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !461
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 124
  br label %bb.j

bb.j:                                             ; preds = %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i, %bb.i
  %i.ak = phi i8 [ %i.fg, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i ], [ 0, %bb.i ] ; 3 uses
  %i.al = phi i8 [ %i.fh, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i ], [ 1, %bb.i ] ; 4 uses
  %i.am = phi i8 [ %i.fi, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i ], [ 0, %bb.i ] ; 4 uses
  %i.an = load i8, ptr %i.k, align 4, !tbaa !179  ; 4 uses
  %i.ao = icmp ult i8 %i.al, 8
  br i1 %i.ao, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.j
  %.phi.trans.insert.i = zext i8 %i.am to i64
  %.phi.trans.insert6.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.phi.trans.insert.i
  %.pre.i = load i8, ptr %.phi.trans.insert6.i, align 1, !tbaa !40
  %i.ap = icmp ult i8 %.pre.i, %i.an
  br i1 %i.ap, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit

bb.k:                                             ; preds = %bb.l
  %i.aq = icmp ult i8 %i.bv, %i.an
  br i1 %i.aq, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit, !llvm.loop !457

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.i: ; preds = %.lr.ph.i, %bb.k
  %i.ar = phi i8 [ %i.bh, %bb.k ], [ %i.am, %.lr.ph.i ] ; 3 uses
  %i.as = phi i8 [ %i.bx, %bb.k ], [ %i.al, %.lr.ph.i ] ; 2 uses
  %i.at = zext i8 %i.ar to i64                    ; 2 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.at ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !209
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !118
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !118
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 2
  %i.be = icmp ult i64 %i.aw, %i.bd
  br i1 %i.be, label %bb.l, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit

bb.l:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.at ; 2 uses
  %i.bg = add nuw i8 %i.ar, 1
  %i.bh = and i8 %i.bg, 7                         ; 5 uses
  %i.bi = zext nneg i8 %i.bh to i64               ; 2 uses
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.bi ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false), !tbaa.struct !461
  %i.bk = load i64, ptr %i.bj, align 8            ; 2 uses
  store i64 %i.bk, ptr %i.au, align 8, !tbaa !118
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !118 ; 2 uses
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bk, %i.bn
  %i.bp = ashr exact i64 %i.bo, 2
  %i.bq = sdiv i64 %i.bp, 2
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bq ; 2 uses
  store ptr %i.br, ptr %i.bj, align 8, !tbaa !118
  store ptr %i.br, ptr %i.ax, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !209
  store i64 %i.bt, ptr %i.av, align 8, !tbaa !209
  %i.bu = load i8, ptr %i.bf, align 1, !tbaa !40
  %i.bv = add i8 %i.bu, 1                         ; 3 uses
  store i8 %i.bv, ptr %i.bf, align 1, !tbaa !40
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bi
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !40
  %i.bx = add nuw nsw i8 %i.as, 1                 ; 3 uses
  %exitcond.not.i = icmp eq i8 %i.bx, 8
  br i1 %exitcond.not.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit.thread, label %bb.k, !llvm.loop !457

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit: ; preds = %bb.k, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.i, %.lr.ph.i, %bb.j
  %i.by = phi i8 [ %i.al, %bb.j ], [ %i.al, %.lr.ph.i ], [ %i.as, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.i ], [ %i.bx, %bb.k ] ; 6 uses
  %i.bz = phi i8 [ %i.am, %bb.j ], [ %i.am, %.lr.ph.i ], [ %i.ar, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.i ], [ %i.bh, %bb.k ] ; 6 uses
  %i.ca = load ptr, ptr %i.af, align 8, !tbaa !177
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load atomic i8, ptr %i.cb monotonic, align 1, !range !116, !noundef !69
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.m, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.l
  %i.ce = load ptr, ptr %i.af, align 8, !tbaa !177
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load atomic i8, ptr %i.cf monotonic, align 1, !range !116, !noundef !69
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %.thread88, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge

.thread88:                                        ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit.thread
  %i.ci = add i8 %i.an, 1
  store i8 %i.ci, ptr %i.k, align 4, !tbaa !179
  br label %.noexc

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit
  %i.cj = phi i8 [ %i.bh, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit.thread ], [ %i.bz, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit ] ; 2 uses
  %i.ck = phi i8 [ 8, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit.thread ], [ %i.by, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit ]
  %.pre = zext i8 %i.cj to i64
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.thread

bb.m:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit
  %i.cl = add i8 %i.an, 1                         ; 2 uses
  store i8 %i.cl, ptr %i.k, align 4, !tbaa !179
  %i.cm = icmp ugt i8 %i.by, 1
  br i1 %i.cm, label %.noexc, label %bb.n

.noexc:                                           ; preds = %.thread88, %bb.m
  %i.cn = phi i8 [ 8, %.thread88 ], [ %i.by, %bb.m ]
  %i.co = phi i8 [ %i.bh, %.thread88 ], [ %i.bz, %bb.m ]
  %i.cp = zext nneg i8 %i.ak to i64               ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !164
  %i.cs = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !458 ; 10 uses
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.cp
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cu, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.cs, align 64, !tbaa !93
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i64 24, i1 false), !tbaa.struct !461
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !210
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 104 ; 2 uses
  store ptr null, ptr %i.cx, align 8, !tbaa !177
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 112
  %i.cz = load i64, ptr %i.ai, align 16, !tbaa !180
  %i.da = lshr i64 %i.cz, 1                       ; 2 uses
  store i64 %i.da, ptr %i.ai, align 16, !tbaa !180
  store i64 %i.da, ptr %i.cy, align 16, !tbaa !180
  %i.db = getelementptr inbounds nuw i8, ptr %i.cs, i64 120
  store i32 2, ptr %i.db, align 8, !tbaa !178
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 124
  %i.dd = load i8, ptr %i.aj, align 4, !tbaa !179
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 128
  %i.df = load i64, ptr %4, align 8, !tbaa !181
  store i64 %i.df, ptr %i.de, align 64, !tbaa !181
  %i.dg = sub i8 %i.dd, %i.cr
  store i8 %i.dg, ptr %i.dc, align 4, !tbaa !179
  %i.dh = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !458 ; 6 uses
  %i.di = load ptr, ptr %i.af, align 8, !tbaa !200
  store ptr %i.di, ptr %i.dh, align 8, !tbaa !185
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i32 2, ptr %i.dj, align 8, !tbaa !186
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dl = load i64, ptr %4, align 8, !tbaa !181
  store i64 %i.dl, ptr %i.dk, align 8, !tbaa !181
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  store i8 0, ptr %i.dm, align 8, !tbaa !201
  store ptr %i.dh, ptr %i.af, align 8, !tbaa !177
  store ptr %i.dh, ptr %i.cx, align 8, !tbaa !177
  %i.dn = load ptr, ptr %3, align 8, !tbaa !202
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(136) %i.cs, ptr noundef nonnull align 8 dereferenceable(128) %i.dn), !inline_history !458
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.do = add i8 %i.cn, -1
  %i.dp = add nuw nsw i8 %i.ak, 1
  %i.dq = and i8 %i.dp, 7
  br label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.dr = zext i8 %i.bz to i64                    ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !40
  %i.du = icmp ult i8 %i.dt, %i.cl
  br i1 %i.du, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit: ; preds = %bb.n
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.dr ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !209
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !118
  %i.ea = load ptr, ptr %i.dy, align 8, !tbaa !118
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = ashr exact i64 %i.ed, 2
  %i.ef = icmp ult i64 %i.dx, %i.ee
  br i1 %i.ef, label %thread-pre-split35, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.n, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit
  %i.eg = phi i8 [ %i.cj, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.bz, %bb.n ], [ %i.bz, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit ]
  %i.eh = phi i8 [ %i.ck, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.by, %bb.n ], [ %i.by, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit ]
  %.pre-phi = phi i64 [ %.pre, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.dr, %bb.n ], [ %i.dr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit ]
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %.pre-phi ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i15 = load ptr, ptr %i.ei, align 8, !tbaa !118 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.sroa.0.0.copyload.i4.i.i.i.i.i.i16 = load ptr, ptr %i.ej, align 8, !tbaa !118 ; 2 uses
  %.not11.i.i.i.i.i.i17 = icmp eq ptr %.sroa.0.0.copyload.i4.i.i.i.i.i.i16, %.sroa.0.0.copyload.i.i.i.i.i.i.i15
  br i1 %.not11.i.i.i.i.i.i17, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit28, label %.lr.ph.i.i.i.i.i.i18

.lr.ph.i.i.i.i.i.i18:                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.thread, %bb.r
  %.013.i.i.i.i.i.i19 = phi i32 [ %i.ez, %bb.r ], [ 0, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.thread ] ; 2 uses
  %.sroa.06.012.i.i.i.i.i.i20 = phi ptr [ %i.ey, %bb.r ], [ %.sroa.0.0.copyload.i4.i.i.i.i.i.i16, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.thread ] ; 3 uses
  %i.ek = and i32 %.013.i.i.i.i.i.i19, 63
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i18
  %i.em = load ptr, ptr %i.ag, align 32, !tbaa !460, !nonnull !69, !align !70 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 15
  %i.eo = load atomic i8, ptr %i.en monotonic, align 1
  %i.ep = icmp eq i8 %i.eo, -1
  br i1 %i.ep, label %14, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i.i.i.i.i24

14:                                               ; preds = %bb.o
  %15 = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %16 = load ptr, ptr %15, align 8, !tbaa !40
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i.i.i.i.i24

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i.i.i.i.i24: ; preds = %14, %bb.o
  %.0.i.i.i.i.i.i.i.i25 = phi ptr [ %16, %14 ], [ %i.em, %bb.o ]
  %17 = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i.i.i.i.i.i25)
  br i1 %17, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit28, label %bb.p

bb.p:                                             ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i.i.i.i.i24, %.lr.ph.i.i.i.i.i.i18
  %i.eq = getelementptr inbounds i8, ptr %.sroa.06.012.i.i.i.i.i.i20, i64 -4
  %i.er = load i32, ptr %.sroa.06.012.i.i.i.i.i.i20, align 4, !tbaa !54
  %i.es = load i32, ptr %i.eq, align 4, !tbaa !54
  %i.et = icmp ult i32 %i.er, %i.es
  br i1 %i.et, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eu = load ptr, ptr %i.ag, align 32, !tbaa !460, !nonnull !69, !align !70 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 15
  %i.ew = load atomic i8, ptr %i.ev monotonic, align 1
  %i.ex = icmp eq i8 %i.ew, -1
  br i1 %i.ex, label %18, label %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i.i.i.i.i22

18:                                               ; preds = %bb.q
  %19 = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %20 = load ptr, ptr %19, align 8, !tbaa !40
  br label %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i.i.i.i.i22

_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i.i.i.i.i22: ; preds = %18, %bb.q
  %.0.i.i5.i.i.i.i.i.i23 = phi ptr [ %20, %18 ], [ %i.eu, %bb.q ]
  %21 = call noundef zeroext i1 @_ZN3tbb6detail2r122cancel_group_executionERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i5.i.i.i.i.i.i23) ; 0 uses
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit28

bb.r:                                             ; preds = %bb.p
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.06.012.i.i.i.i.i.i20, i64 4 ; 2 uses
  %i.ez = add nuw nsw i32 %.013.i.i.i.i.i.i19, 1
  %.not.i.i.i.i.i.i21 = icmp eq ptr %i.ey, %.sroa.0.0.copyload.i.i.i.i.i.i.i15
  br i1 %.not.i.i.i.i.i.i21, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit28, label %.lr.ph.i.i.i.i.i.i18, !llvm.loop !456

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit28: ; preds = %bb.r, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i.i.i.i.i24, %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i.i.i.i.i22, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.thread
  %i.fa = add i8 %i.eh, -1
  %i.fb = add nuw i8 %i.eg, 7
  %i.fc = and i8 %i.fb, 7
  br label %thread-pre-split35

thread-pre-split35:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit28
  %i.fd = phi i8 [ %i.fa, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit28 ], [ %i.by, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.fe = phi i8 [ %i.fc, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit28 ], [ %i.bz, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit ]
  %i.ff = icmp eq i8 %i.fd, 0
  br i1 %i.ff, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EED2Ev.exit34, label %bb.s

bb.s:                                             ; preds = %.noexc, %thread-pre-split35
  %i.fg = phi i8 [ %i.dq, %.noexc ], [ %i.ak, %thread-pre-split35 ]
  %i.fh = phi i8 [ %i.do, %.noexc ], [ %i.fd, %thread-pre-split35 ]
  %i.fi = phi i8 [ %i.co, %.noexc ], [ %i.fe, %thread-pre-split35 ]
  %i.fj = load ptr, ptr %3, align 8, !tbaa !202   ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 15
  %i.fl = load atomic i8, ptr %i.fk monotonic, align 1
  %i.fm = icmp eq i8 %i.fl, -1
  br i1 %i.fm, label %22, label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

22:                                               ; preds = %bb.s
  %23 = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %24 = load ptr, ptr %23, align 8, !tbaa !40
  br label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i: ; preds = %22, %bb.s
  %.0.i.i = phi ptr [ %24, %22 ], [ %i.fj, %bb.s ]
  %25 = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %25, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EED2Ev.exit34, label %bb.j, !llvm.loop !459

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EED2Ev.exit34: ; preds = %thread-pre-split35, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit: ; preds = %bb.h, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i.i.i.i.i, %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i.i.i.i.i, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EED2Ev.exit34
  ret void
}

declare noundef zeroext i1 @_ZN3tbb6detail2r122cancel_group_executionERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #6

declare void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeISt4pairIjjESaIS1_EE16_M_push_back_auxIJRjS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !96
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !97
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 1152921504606846975
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !85
  %i.ag = load ptr, ptr %0, align 8, !tbaa !83
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeISt4pairIjjESaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #31 ; 4 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !74
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !71
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !78  ; 2 uses
  %i.aq = load i32, ptr %1, align 4, !tbaa !54
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !81
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.as = load i32, ptr %2, align 4, !tbaa !54
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !82
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !72
  store ptr %i.am, ptr %i.o, align 8, !tbaa !96
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !97
  store ptr %i.am, ptr %i.a, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN7openvdb5v13_06points21StringAttributeHandleESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN7openvdb5v13_06points21StringAttributeHandleESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7openvdb5v13_06points15AttributeHandleIjNS1_11StringCodecILb0EEEEE, i64 16), ptr %i.a, align 8, !tbaa !93
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i8, ptr %i.b, align 8, !tbaa !115, !range !116, !noundef !69
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZSt8_DestroyIN7openvdb5v13_06points21StringAttributeHandleEEvPT_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !107  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !93
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_ZSt8_DestroyIN7openvdb5v13_06points21StringAttributeHandleEEvPT_.exit unwind label %bb.c, !inline_history !127

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #32, !inline_history !127
  unreachable

_ZSt8_DestroyIN7openvdb5v13_06points21StringAttributeHandleEEvPT_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN7openvdb5v13_06points21StringAttributeHandleESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7openvdb5v13_06points21StringAttributeHandleESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7openvdb5v13_06points21StringAttributeHandleESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !212  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #26
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_06points21StringAttributeHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7openvdb5v13_06points15AttributeHandleIjNS1_11StringCodecILb0EEEEE, i64 16), ptr %0, align 8, !tbaa !93
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i8, ptr %i.a, align 8, !tbaa !115, !range !116, !noundef !69
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN7openvdb5v13_06points15AttributeHandleIjNS1_11StringCodecILb0EEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !107  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_ZN7openvdb5v13_06points15AttributeHandleIjNS1_11StringCodecILb0EEEED2Ev.exit unwind label %bb.c, !inline_history !127

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #32, !inline_history !127
  unreachable

_ZN7openvdb5v13_06points15AttributeHandleIjNS1_11StringCodecILb0EEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #17

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

end_hunk_1
