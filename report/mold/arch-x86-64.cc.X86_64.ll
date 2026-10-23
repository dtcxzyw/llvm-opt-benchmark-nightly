Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/arch-x86-64.cc.X86_64?download=true
inline.NumInlined: 1418
inline.NumDeleted: 702
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN3tbb6detail2d119wait_context_vertex7reserveEj:bb.a
  %i.f = ptrtoint ptr %i.e to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.f) #16
  br label %_ZN3tbb6detail2d112wait_context7reserveEj.exit

_ZN3tbb6detail2d112wait_context7reserveEj.exit:   ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d119wait_context_vertex7releaseEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = atomicrmw sub ptr %i.b, i64 %i.a seq_cst, align 8
  %.not.i.i = icmp eq i64 %i.c, %i.a
  br i1 %.not.i.i, label %bb.b, label %_ZN3tbb6detail2d112wait_context7releaseEj.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = ptrtoint ptr %i.d to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.e) #16
  br label %_ZN3tbb6detail2d112wait_context7releaseEj.exit

_ZN3tbb6detail2d112wait_context7releaseEj.exit:   ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d119wait_context_vertexD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #23
  ret void
}

declare void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind
define internal void @"_ZN3tbb6detail2d218for_each_root_taskIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_13rewrite_endbrERNS5_7ContextIS7_EEE3$_0S9_St26random_access_iterator_tagED0Ev"(ptr noundef nonnull align 64 dereferenceable(105) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 64) #23
  ret void
}

; Function Attrs: mustprogress nounwind
define internal noalias noundef ptr @"_ZN3tbb6detail2d218for_each_root_taskIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_13rewrite_endbrERNS5_7ContextIS7_EEE3$_0S9_St26random_access_iterator_tagE7executeERNS0_2d114execution_dataE"(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(105) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %3 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.02.0.copyload = load ptr, ptr %i.a, align 64, !tbaa !395 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.01.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !395 ; 2 uses
  %.not.i.i.not = icmp eq ptr %.sroa.01.0.copyload, %.sroa.02.0.copyload
  br i1 %.not.i.i.not, label %"_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_13rewrite_endbrERNS9_7ContextISB_EEE3$_0SD_EEEEvRKT_RKT0_RNS1_18task_group_contextE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %.sroa.02.0.copyload to i64
  %i.d = ptrtoint ptr %.sroa.01.0.copyload to i64
  %i.e = sub i64 %i.d, %i.c
  %i.f = ashr exact i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !588, !nonnull !337, !align !349 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = load ptr, ptr %i.i, align 32, !tbaa !589, !nonnull !337, !align !349
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr null, ptr %2, align 8, !tbaa !430
  %i.k = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 192) #16 ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @"_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_13rewrite_endbrERNS9_7ContextISB_EEE3$_0SD_EEKNS1_16auto_partitionerEEE", i64 16), ptr %i.k, align 64, !tbaa !389
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i64 %i.f, ptr %i.m, align 64, !tbaa !413
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8, !tbaa !413
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 16, !tbaa !413
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  store ptr %.sroa.02.0.copyload, ptr %i.n, align 8, !tbaa !395
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 32, !tbaa !401
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.q = call noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null) #16
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  store i32 0, ptr %i.s, align 64, !tbaa !434
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 132
  store i8 5, ptr %i.t, align 4, !tbaa !435
  %i.u = shl nsw i64 %i.r, 1
  %i.v = and i64 %i.u, 9223372036854775806
  store i64 %i.v, ptr %i.p, align 8, !tbaa !436
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.x = load i64, ptr %2, align 8, !tbaa !437
  store i64 %i.x, ptr %i.w, align 8, !tbaa !437
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr null, ptr %3, align 8, !tbaa !440
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1, ptr %i.y, align 8, !tbaa !441
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 1, ptr %i.z, align 8, !tbaa !397
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 1, ptr %i.aa, align 8, !tbaa !398
  store ptr %3, ptr %i.o, align 16, !tbaa !447
  call void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(128) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(128) %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %"_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_13rewrite_endbrERNS9_7ContextISB_EEE3$_0SD_EEEEvRKT_RKT0_RNS1_18task_group_contextE.exit"

"_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_13rewrite_endbrERNS9_7ContextISB_EEE3$_0SD_EEEEvRKT_RKT0_RNS1_18task_group_contextE.exit": ; preds = %bb.a, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !448, !nonnull !337, !align !349 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !389
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i32 noundef 1) #16
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define internal noalias noundef ptr @"_ZN3tbb6detail2d223for_each_root_task_baseIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_13rewrite_endbrERNS5_7ContextIS7_EEE3$_0S9_E6cancelERNS0_2d114execution_dataE"(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(105) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !448, !nonnull !337, !align !349 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !389
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i32 noundef 1) #16
  ret ptr null
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvmSt11align_val_t(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

declare noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind
define internal void @"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_13rewrite_endbrERNS9_7ContextISB_EEE3$_0SD_EEKNS1_16auto_partitionerEED0Ev"(ptr noundef nonnull align 64 dereferenceable(144) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 192, i64 noundef 64) #23
  ret void
}

; Function Attrs: mustprogress nounwind
define internal noalias noundef ptr @"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_13rewrite_endbrERNS9_7ContextISB_EEE3$_0SD_EEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE"(ptr noundef nonnull align 64 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %3 = alloca %"class.tbb::detail::d1::range_vector", align 8 ; 4 uses
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !450  ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #16
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #16 ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 10 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !436
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %"_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_13rewrite_endbrERNSF_7ContextISH_EEE3$_0SJ_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit"

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 8, !tbaa !436
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !451
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %"_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_13rewrite_endbrERNSF_7ContextISH_EEE3$_0SJ_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !447
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %"_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_13rewrite_endbrERNSF_7ContextISH_EEE3$_0SJ_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit"

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 16, !tbaa !447
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !435
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !435
  br label %"_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_13rewrite_endbrERNSF_7ContextISH_EEE3$_0SJ_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit"

"_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_13rewrite_endbrERNSF_7ContextISH_EEE3$_0SJ_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit": ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.x = load i64, ptr %i.w, align 16, !tbaa !452 ; 3 uses
  %i.y = load i64, ptr %i.v, align 64, !tbaa !453 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !454 ; 4 uses
  %i.ab = sub i64 %i.y, %i.aa                     ; 3 uses
  %i.ac = icmp ult i64 %i.x, %i.ab
  br i1 %i.ac, label %bb.f, label %bb.o

bb.f:                                             ; preds = %"_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_13rewrite_endbrERNSF_7ContextISH_EEE3$_0SJ_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit"
  %i.ad = load i64, ptr %i.g, align 8, !tbaa !436 ; 2 uses
  %i.ae = icmp ugt i64 %i.ad, 1
  br i1 %i.ae, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !435 ; 2 uses
  %.not4.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not4.i.i, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = add i8 %i.ag, -1
  store i8 %i.ah, ptr %i.af, align 4, !tbaa !435
  store i64 0, ptr %i.g, align 8, !tbaa !436
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i: ; preds = %bb.i, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr null, ptr %4, align 8, !tbaa !430
  %i.al = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #16, !inline_history !590 ; 12 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.am, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @"_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_13rewrite_endbrERNS9_7ContextISB_EEE3$_0SD_EEKNS1_16auto_partitionerEEE", i64 16), ptr %i.al, align 64, !tbaa !389
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ao = load i64, ptr %i.v, align 64, !tbaa !453 ; 2 uses
  store i64 %i.ao, ptr %i.an, align 64, !tbaa !453
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.aq = load i64, ptr %i.z, align 8, !tbaa !454 ; 2 uses
  %i.ar = sub i64 %i.ao, %i.aq
  %i.as = lshr i64 %i.ar, 1
  %i.at = add i64 %i.as, %i.aq                    ; 2 uses
  store i64 %i.at, ptr %i.v, align 64, !tbaa !453
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !454
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  %i.av = load i64, ptr %i.w, align 16, !tbaa !452
  store i64 %i.av, ptr %i.au, align 16, !tbaa !452
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !tbaa.struct !598
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 112 ; 2 uses
  store ptr null, ptr %i.ax, align 16, !tbaa !447
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  %i.az = load i64, ptr %i.g, align 8, !tbaa !436
  %i.ba = lshr i64 %i.az, 1                       ; 2 uses
  store i64 %i.ba, ptr %i.g, align 8, !tbaa !436
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !436
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  store i32 2, ptr %i.bb, align 64, !tbaa !434
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 132
  %i.bd = load i8, ptr %i.ai, align 4, !tbaa !435
  store i8 %i.bd, ptr %i.bc, align 4, !tbaa !435
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  %i.bf = load i64, ptr %4, align 8, !tbaa !437
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !437
  %i.bg = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #16, !inline_history !591 ; 6 uses
  %i.bh = load ptr, ptr %i.ak, align 16, !tbaa !455
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !440
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 2, ptr %i.bi, align 8, !tbaa !441
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bk = load i64, ptr %4, align 8, !tbaa !437
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !437
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i8 0, ptr %i.bl, align 8, !tbaa !456
  store ptr %i.bg, ptr %i.ak, align 16, !tbaa !447
  store ptr %i.bg, ptr %i.ax, align 16, !tbaa !447
  %.val.i.i.i = load ptr, ptr %1, align 8, !tbaa !457
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(144) %i.al, ptr noundef nonnull align 8 dereferenceable(128) %.val.i.i.i) #16, !inline_history !591
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.bm = load i64, ptr %i.w, align 16, !tbaa !452 ; 3 uses
  %i.bn = load i64, ptr %i.v, align 64, !tbaa !453 ; 4 uses
  %i.bo = load i64, ptr %i.z, align 8, !tbaa !454 ; 4 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 3 uses
  %i.bq = icmp ult i64 %i.bm, %i.bp
  br i1 %i.bq, label %bb.j, label %bb.o

bb.j:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i
  %i.br = load i64, ptr %i.g, align 8, !tbaa !436 ; 2 uses
  %i.bs = icmp ugt i64 %i.br, 1
  br i1 %i.bs, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i8.i = icmp eq i64 %i.br, 0
  br i1 %.not.i8.i, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = load i8, ptr %i.ai, align 4, !tbaa !435 ; 2 uses
  %.not4.i9.i = icmp eq i8 %i.bt, 0
  br i1 %.not4.i9.i, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = add i8 %i.bt, -1
  store i8 %i.bu, ptr %i.ai, align 4, !tbaa !435
  store i64 0, ptr %i.g, align 8, !tbaa !436
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge: ; preds = %bb.m, %bb.j
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i, !llvm.loop !592

.critedge.i:                                      ; preds = %bb.l, %bb.k, %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %i.ab, %bb.h ], [ %i.ab, %bb.g ], [ %i.bp, %bb.k ], [ %i.bp, %bb.l ]
  %5 = phi i64 [ %i.aa, %bb.h ], [ %i.aa, %bb.g ], [ %i.bo, %bb.k ], [ %i.bo, %bb.l ] ; 2 uses
  %6 = phi i64 [ %i.y, %bb.h ], [ %i.y, %bb.g ], [ %i.bn, %bb.k ], [ %i.bn, %bb.l ] ; 2 uses
  %7 = phi i64 [ %i.x, %bb.h ], [ %i.x, %bb.g ], [ %i.bm, %bb.k ], [ %i.bm, %bb.l ]
  %i.bv = icmp ult i64 %7, %.pre-phi.i
  br i1 %i.bv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 5 uses
  %i.bx = load i8, ptr %i.bw, align 4, !tbaa !435
  %.not.i12.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i12.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i, %bb.n, %.critedge.i, %"_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_13rewrite_endbrERNSF_7ContextISH_EEE3$_0SJ_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit"
  %8 = phi i64 [ %6, %.critedge.i ], [ %6, %bb.n ], [ %i.y, %"_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_13rewrite_endbrERNSF_7ContextISH_EEE3$_0SJ_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit" ], [ %i.bn, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ]
  %9 = phi i64 [ %5, %.critedge.i ], [ %5, %bb.n ], [ %i.aa, %"_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_13rewrite_endbrERNSF_7ContextISH_EEE3$_0SJ_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit" ], [ %i.bo, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ]
  call fastcc void @"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_13rewrite_endbrERNS9_7ContextISB_EEE3$_0SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_"(ptr noundef nonnull align 64 dereferenceable(144) %0, i64 %8, i64 %9), !inline_history !593
  br label %"_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSD_6X86_64EEESt6vectorISH_SaISH_EEEEZNSD_13rewrite_endbrERNSD_7ContextISF_EEE3$_0SH_EEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE.exit"

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 3 ; 20 uses
  store i8 0, ptr %i.by, align 1, !tbaa !343
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull readonly align 64 dereferenceable(24) %i.v, i64 24, i1 false), !tbaa.struct !458
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.q

bb.q:                                             ; preds = %thread-pre-split.i.i, %bb.p
  %i.cc = phi i8 [ %i.mz, %thread-pre-split.i.i ], [ 0, %bb.p ] ; 3 uses
  %i.cd = phi i8 [ %i.na, %thread-pre-split.i.i ], [ 1, %bb.p ] ; 13 uses
  %i.ce = phi i8 [ %i.nb, %thread-pre-split.i.i ], [ 0, %bb.p ] ; 9 uses
  %i.cf = load i8, ptr %i.bw, align 4, !tbaa !435 ; 10 uses
  %i.cg = icmp ult i8 %i.cd, 8
  br i1 %i.cg, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.q
  %.phi.trans.insert.i.i.i = zext i8 %i.ce to i64
  %.phi.trans.insert6.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 %.phi.trans.insert.i.i.i
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert6.i.i.i, align 1, !tbaa !343
  %i.ch = icmp ult i8 %.pre.i.i.i, %i.cf
  br i1 %i.ch, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.r:                                             ; preds = %bb.ag
  %i.ci = icmp ult i8 %i.kk, %i.cf
  br i1 %i.ci, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1: ; preds = %bb.r
  %i.cj = zext nneg i8 %i.jy to i64               ; 2 uses
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.cj ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !452
  %i.cn = load i64, ptr %i.ck, align 8, !tbaa !453
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !454
  %i.cq = sub i64 %i.cn, %i.cp
  %i.cr = icmp ult i64 %i.cm, %i.cq
  br i1 %i.cr, label %bb.s, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.s:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cj ; 2 uses
  %i.ct = add i8 %i.ce, 2
  %i.cu = and i8 %i.ct, 7                         ; 5 uses
  %i.cv = zext nneg i8 %i.cu to i64               ; 3 uses
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.cv ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 24, i1 false), !tbaa.struct !458
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !453 ; 2 uses
  store i64 %i.cx, ptr %i.ck, align 8, !tbaa !453
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !454 ; 2 uses
  %i.da = sub i64 %i.cx, %i.cz
  %i.db = lshr i64 %i.da, 1
  %i.dc = add i64 %i.db, %i.cz                    ; 2 uses
  store i64 %i.dc, ptr %i.cw, align 8, !tbaa !453
  store i64 %i.dc, ptr %i.co, align 8, !tbaa !454
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !452
  store i64 %i.de, ptr %i.cl, align 8, !tbaa !452
  %i.df = load i8, ptr %i.cs, align 1, !tbaa !343
  %i.dg = add i8 %i.df, 1                         ; 3 uses
  store i8 %i.dg, ptr %i.cs, align 1, !tbaa !343
  %i.dh = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cv
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !343
  %i.di = add nuw nsw i8 %i.cd, 2                 ; 3 uses
  %exitcond.not.i.i.i.1 = icmp eq i8 %i.di, 8
  br i1 %exitcond.not.i.i.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.t, !llvm.loop !3

bb.t:                                             ; preds = %bb.s
  %i.dj = icmp ult i8 %i.dg, %i.cf
  br i1 %i.dj, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2: ; preds = %bb.t
  %i.dk = zext nneg i8 %i.cu to i64               ; 2 uses
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.dk ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !452
  %i.do = load i64, ptr %i.dl, align 8, !tbaa !453
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !454
  %i.dr = sub i64 %i.do, %i.dq
  %i.ds = icmp ult i64 %i.dn, %i.dr
  br i1 %i.ds, label %bb.u, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.u:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2
  %i.dt = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.dk ; 2 uses
  %i.du = add i8 %i.ce, 3
  %i.dv = and i8 %i.du, 7                         ; 5 uses
  %i.dw = zext nneg i8 %i.dv to i64               ; 3 uses
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.dw ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i64 24, i1 false), !tbaa.struct !458
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !453 ; 2 uses
  store i64 %i.dy, ptr %i.dl, align 8, !tbaa !453
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !454 ; 2 uses
  %i.eb = sub i64 %i.dy, %i.ea
  %i.ec = lshr i64 %i.eb, 1
  %i.ed = add i64 %i.ec, %i.ea                    ; 2 uses
  store i64 %i.ed, ptr %i.dx, align 8, !tbaa !453
  store i64 %i.ed, ptr %i.dp, align 8, !tbaa !454
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !452
  store i64 %i.ef, ptr %i.dm, align 8, !tbaa !452
  %i.eg = load i8, ptr %i.dt, align 1, !tbaa !343
  %i.eh = add i8 %i.eg, 1                         ; 3 uses
  store i8 %i.eh, ptr %i.dt, align 1, !tbaa !343
  %i.ei = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.dw
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !343
  %i.ej = add nuw nsw i8 %i.cd, 3                 ; 3 uses
  %exitcond.not.i.i.i.2 = icmp eq i8 %i.ej, 8
  br i1 %exitcond.not.i.i.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.v, !llvm.loop !3

bb.v:                                             ; preds = %bb.u
  %i.ek = icmp ult i8 %i.eh, %i.cf
  br i1 %i.ek, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3: ; preds = %bb.v
  %i.el = zext nneg i8 %i.dv to i64               ; 2 uses
  %i.em = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.el ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !452
  %i.ep = load i64, ptr %i.em, align 8, !tbaa !453
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !454
  %i.es = sub i64 %i.ep, %i.er
  %i.et = icmp ult i64 %i.eo, %i.es
  br i1 %i.et, label %bb.w, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.w:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3
  %i.eu = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.el ; 2 uses
  %i.ev = and i8 %i.ce, 7                         ; 4 uses
  %i.ew = xor i8 %i.ev, 4                         ; 8 uses
  %i.ex = zext nneg i8 %i.ew to i64               ; 3 uses
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.ex ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ey, ptr noundef nonnull align 8 dereferenceable(24) %i.em, i64 24, i1 false), !tbaa.struct !458
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !453 ; 2 uses
  store i64 %i.ez, ptr %i.em, align 8, !tbaa !453
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !454 ; 2 uses
  %i.fc = sub i64 %i.ez, %i.fb
  %i.fd = lshr i64 %i.fc, 1
  %i.fe = add i64 %i.fd, %i.fb                    ; 2 uses
  store i64 %i.fe, ptr %i.ey, align 8, !tbaa !453
  store i64 %i.fe, ptr %i.eq, align 8, !tbaa !454
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !452
  store i64 %i.fg, ptr %i.en, align 8, !tbaa !452
  %i.fh = load i8, ptr %i.eu, align 1, !tbaa !343
  %i.fi = add i8 %i.fh, 1                         ; 3 uses
  store i8 %i.fi, ptr %i.eu, align 1, !tbaa !343
  %i.fj = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ex
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !343
  %i.fk = add nuw nsw i8 %i.cd, 4                 ; 3 uses
  %exitcond.not.i.i.i.3 = icmp eq i8 %i.fk, 8
  br i1 %exitcond.not.i.i.i.3, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.x, !llvm.loop !3

bb.x:                                             ; preds = %bb.w
  %i.fl = icmp ult i8 %i.fi, %i.cf
  br i1 %i.fl, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4: ; preds = %bb.x
  %i.fm = zext nneg i8 %i.ew to i64               ; 2 uses
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.fm ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !452
  %i.fq = load i64, ptr %i.fn, align 8, !tbaa !453
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !454
  %i.ft = sub i64 %i.fq, %i.fs
  %i.fu = icmp ult i64 %i.fp, %i.ft
  br i1 %i.fu, label %bb.y, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.y:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.fm ; 2 uses
  %i.fw = add nuw nsw i8 %i.ew, 1
  %i.fx = and i8 %i.fw, 7                         ; 5 uses
  %i.fy = zext nneg i8 %i.fx to i64               ; 3 uses
  %i.fz = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.fy ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fz, ptr noundef nonnull align 8 dereferenceable(24) %i.fn, i64 24, i1 false), !tbaa.struct !458
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !453 ; 2 uses
  store i64 %i.ga, ptr %i.fn, align 8, !tbaa !453
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !454 ; 2 uses
  %i.gd = sub i64 %i.ga, %i.gc
  %i.ge = lshr i64 %i.gd, 1
  %i.gf = add i64 %i.ge, %i.gc                    ; 2 uses
  store i64 %i.gf, ptr %i.fz, align 8, !tbaa !453
  store i64 %i.gf, ptr %i.fr, align 8, !tbaa !454
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !452
  store i64 %i.gh, ptr %i.fo, align 8, !tbaa !452
  %i.gi = load i8, ptr %i.fv, align 1, !tbaa !343
  %i.gj = add i8 %i.gi, 1                         ; 3 uses
  store i8 %i.gj, ptr %i.fv, align 1, !tbaa !343
  %i.gk = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.fy
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !343
  %i.gl = add nuw nsw i8 %i.cd, 5                 ; 3 uses
end_hunk_0
begin_hunk_1_@"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_13rewrite_endbrERNS9_7ContextISB_EEE3$_0SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_":bb.a
  %i.by = load i32, ptr %i.bw, align 1
  %i.bz = load i32, ptr %i.bx, align 1
  %i.ca = icmp ne i32 %i.by, %i.bz
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cd = load ptr, ptr %i.o, align 8, !tbaa !606, !nonnull !337
  %i.ce = load i32, ptr %i.cd, align 1
  store i32 %i.ce, ptr %i.bw, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.f, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.c
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.023.029.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.i
  br i1 %i.cg, label %"_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4mold13rewrite_endbrERNS3_7ContextINS3_6X86_64EEEE3$_0E4callIRPNS3_10ObjectFileIS5_EENS1_11feeder_implIS8_SD_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIT_Efp0_EEcvv_EERKS8_OSH_PT0_.exit.i.i.i.i.i", label %bb.c

"_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4mold13rewrite_endbrERNS3_7ContextINS3_6X86_64EEEE3$_0E4callIRPNS3_10ObjectFileIS5_EENS1_11feeder_implIS8_SD_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIT_Efp0_EEcvv_EERKS8_OSH_PT0_.exit.i.i.i.i.i": ; preds = %bb.m, %bb.b
  %i.ch = add i64 %.02.i.i.i.i.i, 1               ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ch, %.0.val
  br i1 %.not.i.i.i.i.i, label %"_ZN3tbb6detail2d06invokeIRKNS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS7_6X86_64EEESt6vectorISB_SaISB_EEEEZNS7_13rewrite_endbrERNS7_7ContextIS9_EEE3$_0SB_EEJRNS0_2d113blocked_rangeImEEEEENSt13invoke_resultIT_JDpT0_EE4typeEOST_DpOSU_.exit", label %bb.b, !llvm.loop !599

"_ZN3tbb6detail2d06invokeIRKNS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS7_6X86_64EEESt6vectorISB_SaISB_EEEEZNS7_13rewrite_endbrERNS7_7ContextIS9_EEE3$_0SB_EEJRNS0_2d113blocked_rangeImEEEEENSt13invoke_resultIT_JDpT0_EE4typeEOST_DpOSU_.exit": ; preds = %"_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4mold13rewrite_endbrERNS3_7ContextINS3_6X86_64EEEE3$_0E4callIRPNS3_10ObjectFileIS5_EENS1_11feeder_implIS8_SD_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIT_Efp0_EEcvv_EERKS8_OSH_PT0_.exit.i.i.i.i.i", %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #5

declare void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #5

declare void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #5

declare void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind
define internal void @"_ZN3tbb6detail2d218for_each_root_taskIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_13rewrite_endbrERNS5_7ContextIS7_EEE3$_2S9_St26random_access_iterator_tagED0Ev"(ptr noundef nonnull align 64 dereferenceable(105) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 64) #23
  ret void
}

; Function Attrs: mustprogress nounwind
define internal noalias noundef ptr @"_ZN3tbb6detail2d218for_each_root_taskIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_13rewrite_endbrERNS5_7ContextIS7_EEE3$_2S9_St26random_access_iterator_tagE7executeERNS0_2d114execution_dataE"(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(105) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %3 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.02.0.copyload = load ptr, ptr %i.a, align 64, !tbaa !395 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.01.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !395 ; 2 uses
  %.not.i.i.not = icmp eq ptr %.sroa.01.0.copyload, %.sroa.02.0.copyload
  br i1 %.not.i.i.not, label %"_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_13rewrite_endbrERNS9_7ContextISB_EEE3$_2SD_EEEEvRKT_RKT0_RNS1_18task_group_contextE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %.sroa.02.0.copyload to i64
  %i.d = ptrtoint ptr %.sroa.01.0.copyload to i64
  %i.e = sub i64 %i.d, %i.c
  %i.f = ashr exact i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !607, !nonnull !337, !align !349 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = load ptr, ptr %i.i, align 32, !tbaa !608, !nonnull !337, !align !349
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr null, ptr %2, align 8, !tbaa !430
  %i.k = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 192) #16 ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @"_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_13rewrite_endbrERNS9_7ContextISB_EEE3$_2SD_EEKNS1_16auto_partitionerEEE", i64 16), ptr %i.k, align 64, !tbaa !389
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i64 %i.f, ptr %i.m, align 64, !tbaa !413
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8, !tbaa !413
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 16, !tbaa !413
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  store ptr %.sroa.02.0.copyload, ptr %i.n, align 8, !tbaa !395
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 32, !tbaa !401
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.q = call noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null) #16
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  store i32 0, ptr %i.s, align 64, !tbaa !434
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 132
  store i8 5, ptr %i.t, align 4, !tbaa !435
  %i.u = shl nsw i64 %i.r, 1
  %i.v = and i64 %i.u, 9223372036854775806
  store i64 %i.v, ptr %i.p, align 8, !tbaa !436
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.x = load i64, ptr %2, align 8, !tbaa !437
  store i64 %i.x, ptr %i.w, align 8, !tbaa !437
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr null, ptr %3, align 8, !tbaa !440
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1, ptr %i.y, align 8, !tbaa !441
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 1, ptr %i.z, align 8, !tbaa !397
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 1, ptr %i.aa, align 8, !tbaa !398
  store ptr %3, ptr %i.o, align 16, !tbaa !466
  call void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(128) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(128) %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %"_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_13rewrite_endbrERNS9_7ContextISB_EEE3$_2SD_EEEEvRKT_RKT0_RNS1_18task_group_contextE.exit"

"_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_13rewrite_endbrERNS9_7ContextISB_EEE3$_2SD_EEEEvRKT_RKT0_RNS1_18task_group_contextE.exit": ; preds = %bb.a, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !467, !nonnull !337, !align !349 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !389
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i32 noundef 1) #16
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define internal noalias noundef ptr @"_ZN3tbb6detail2d223for_each_root_task_baseIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_13rewrite_endbrERNS5_7ContextIS7_EEE3$_2S9_E6cancelERNS0_2d114execution_dataE"(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(105) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !467, !nonnull !337, !align !349 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !389
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i32 noundef 1) #16
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d14taskD2Ev(ptr noundef nonnull align 64 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define internal void @"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_13rewrite_endbrERNS9_7ContextISB_EEE3$_2SD_EEKNS1_16auto_partitionerEED0Ev"(ptr noundef nonnull align 64 dereferenceable(144) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 192, i64 noundef 64) #23
  ret void
}

; Function Attrs: mustprogress nounwind
define internal noalias noundef ptr @"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_13rewrite_endbrERNS9_7ContextISB_EEE3$_2SD_EEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE"(ptr noundef nonnull align 64 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %3 = alloca %"class.tbb::detail::d1::range_vector", align 8 ; 4 uses
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !450  ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #16
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #16 ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 10 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !436
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %"_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_13rewrite_endbrERNSF_7ContextISH_EEE3$_2SJ_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit"

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 8, !tbaa !436
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !451
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %"_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_13rewrite_endbrERNSF_7ContextISH_EEE3$_2SJ_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !466
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %"_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_13rewrite_endbrERNSF_7ContextISH_EEE3$_2SJ_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit"

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 16, !tbaa !466
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !435
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !435
  br label %"_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_13rewrite_endbrERNSF_7ContextISH_EEE3$_2SJ_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit"

"_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_13rewrite_endbrERNSF_7ContextISH_EEE3$_2SJ_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit": ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.x = load i64, ptr %i.w, align 16, !tbaa !452 ; 3 uses
  %i.y = load i64, ptr %i.v, align 64, !tbaa !453 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !454 ; 4 uses
  %i.ab = sub i64 %i.y, %i.aa                     ; 3 uses
  %i.ac = icmp ult i64 %i.x, %i.ab
  br i1 %i.ac, label %bb.f, label %bb.o

bb.f:                                             ; preds = %"_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_13rewrite_endbrERNSF_7ContextISH_EEE3$_2SJ_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit"
  %i.ad = load i64, ptr %i.g, align 8, !tbaa !436 ; 2 uses
  %i.ae = icmp ugt i64 %i.ad, 1
  br i1 %i.ae, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !435 ; 2 uses
  %.not4.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not4.i.i, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = add i8 %i.ag, -1
  store i8 %i.ah, ptr %i.af, align 4, !tbaa !435
  store i64 0, ptr %i.g, align 8, !tbaa !436
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i: ; preds = %bb.i, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr null, ptr %4, align 8, !tbaa !430
  %i.al = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #16, !inline_history !609 ; 12 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.am, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @"_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_13rewrite_endbrERNS9_7ContextISB_EEE3$_2SD_EEKNS1_16auto_partitionerEEE", i64 16), ptr %i.al, align 64, !tbaa !389
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ao = load i64, ptr %i.v, align 64, !tbaa !453 ; 2 uses
  store i64 %i.ao, ptr %i.an, align 64, !tbaa !453
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.aq = load i64, ptr %i.z, align 8, !tbaa !454 ; 2 uses
  %i.ar = sub i64 %i.ao, %i.aq
  %i.as = lshr i64 %i.ar, 1
  %i.at = add i64 %i.as, %i.aq                    ; 2 uses
  store i64 %i.at, ptr %i.v, align 64, !tbaa !453
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !454
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  %i.av = load i64, ptr %i.w, align 16, !tbaa !452
  store i64 %i.av, ptr %i.au, align 16, !tbaa !452
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !tbaa.struct !617
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 112 ; 2 uses
  store ptr null, ptr %i.ax, align 16, !tbaa !466
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  %i.az = load i64, ptr %i.g, align 8, !tbaa !436
  %i.ba = lshr i64 %i.az, 1                       ; 2 uses
  store i64 %i.ba, ptr %i.g, align 8, !tbaa !436
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !436
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  store i32 2, ptr %i.bb, align 64, !tbaa !434
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 132
  %i.bd = load i8, ptr %i.ai, align 4, !tbaa !435
  store i8 %i.bd, ptr %i.bc, align 4, !tbaa !435
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  %i.bf = load i64, ptr %4, align 8, !tbaa !437
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !437
  %i.bg = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #16, !inline_history !610 ; 6 uses
  %i.bh = load ptr, ptr %i.ak, align 16, !tbaa !455
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !440
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 2, ptr %i.bi, align 8, !tbaa !441
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bk = load i64, ptr %4, align 8, !tbaa !437
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !437
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i8 0, ptr %i.bl, align 8, !tbaa !456
  store ptr %i.bg, ptr %i.ak, align 16, !tbaa !466
  store ptr %i.bg, ptr %i.ax, align 16, !tbaa !466
  %.val.i.i.i = load ptr, ptr %1, align 8, !tbaa !457
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(144) %i.al, ptr noundef nonnull align 8 dereferenceable(128) %.val.i.i.i) #16, !inline_history !610
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.bm = load i64, ptr %i.w, align 16, !tbaa !452 ; 3 uses
  %i.bn = load i64, ptr %i.v, align 64, !tbaa !453 ; 4 uses
  %i.bo = load i64, ptr %i.z, align 8, !tbaa !454 ; 4 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 3 uses
  %i.bq = icmp ult i64 %i.bm, %i.bp
  br i1 %i.bq, label %bb.j, label %bb.o

bb.j:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i
  %i.br = load i64, ptr %i.g, align 8, !tbaa !436 ; 2 uses
  %i.bs = icmp ugt i64 %i.br, 1
  br i1 %i.bs, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i8.i = icmp eq i64 %i.br, 0
  br i1 %.not.i8.i, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = load i8, ptr %i.ai, align 4, !tbaa !435 ; 2 uses
  %.not4.i9.i = icmp eq i8 %i.bt, 0
  br i1 %.not4.i9.i, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = add i8 %i.bt, -1
  store i8 %i.bu, ptr %i.ai, align 4, !tbaa !435
  store i64 0, ptr %i.g, align 8, !tbaa !436
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge: ; preds = %bb.m, %bb.j
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i, !llvm.loop !611

.critedge.i:                                      ; preds = %bb.l, %bb.k, %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %i.ab, %bb.h ], [ %i.ab, %bb.g ], [ %i.bp, %bb.k ], [ %i.bp, %bb.l ]
  %5 = phi i64 [ %i.aa, %bb.h ], [ %i.aa, %bb.g ], [ %i.bo, %bb.k ], [ %i.bo, %bb.l ] ; 2 uses
  %6 = phi i64 [ %i.y, %bb.h ], [ %i.y, %bb.g ], [ %i.bn, %bb.k ], [ %i.bn, %bb.l ] ; 2 uses
  %7 = phi i64 [ %i.x, %bb.h ], [ %i.x, %bb.g ], [ %i.bm, %bb.k ], [ %i.bm, %bb.l ]
  %i.bv = icmp ult i64 %7, %.pre-phi.i
  br i1 %i.bv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 5 uses
  %i.bx = load i8, ptr %i.bw, align 4, !tbaa !435
  %.not.i12.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i12.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i, %bb.n, %.critedge.i, %"_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_13rewrite_endbrERNSF_7ContextISH_EEE3$_2SJ_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit"
  %8 = phi i64 [ %6, %.critedge.i ], [ %6, %bb.n ], [ %i.y, %"_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_13rewrite_endbrERNSF_7ContextISH_EEE3$_2SJ_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit" ], [ %i.bn, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ]
  %9 = phi i64 [ %5, %.critedge.i ], [ %5, %bb.n ], [ %i.aa, %"_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_13rewrite_endbrERNSF_7ContextISH_EEE3$_2SJ_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit" ], [ %i.bo, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ]
  call fastcc void @"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_13rewrite_endbrERNS9_7ContextISB_EEE3$_2SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_"(ptr noundef nonnull align 64 dereferenceable(144) %0, i64 %8, i64 %9), !inline_history !612
  br label %"_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSD_6X86_64EEESt6vectorISH_SaISH_EEEEZNSD_13rewrite_endbrERNSD_7ContextISF_EEE3$_2SH_EEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE.exit"

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 3 ; 20 uses
  store i8 0, ptr %i.by, align 1, !tbaa !343
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull readonly align 64 dereferenceable(24) %i.v, i64 24, i1 false), !tbaa.struct !458
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.q

bb.q:                                             ; preds = %thread-pre-split.i.i, %bb.p
  %i.cc = phi i8 [ %i.mz, %thread-pre-split.i.i ], [ 0, %bb.p ] ; 3 uses
  %i.cd = phi i8 [ %i.na, %thread-pre-split.i.i ], [ 1, %bb.p ] ; 13 uses
  %i.ce = phi i8 [ %i.nb, %thread-pre-split.i.i ], [ 0, %bb.p ] ; 9 uses
  %i.cf = load i8, ptr %i.bw, align 4, !tbaa !435 ; 10 uses
  %i.cg = icmp ult i8 %i.cd, 8
  br i1 %i.cg, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.q
  %.phi.trans.insert.i.i.i = zext i8 %i.ce to i64
  %.phi.trans.insert6.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 %.phi.trans.insert.i.i.i
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert6.i.i.i, align 1, !tbaa !343
  %i.ch = icmp ult i8 %.pre.i.i.i, %i.cf
  br i1 %i.ch, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.r:                                             ; preds = %bb.ag
  %i.ci = icmp ult i8 %i.kk, %i.cf
  br i1 %i.ci, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1: ; preds = %bb.r
  %i.cj = zext nneg i8 %i.jy to i64               ; 2 uses
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.cj ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !452
  %i.cn = load i64, ptr %i.ck, align 8, !tbaa !453
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !454
  %i.cq = sub i64 %i.cn, %i.cp
  %i.cr = icmp ult i64 %i.cm, %i.cq
  br i1 %i.cr, label %bb.s, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.s:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cj ; 2 uses
  %i.ct = add i8 %i.ce, 2
  %i.cu = and i8 %i.ct, 7                         ; 5 uses
  %i.cv = zext nneg i8 %i.cu to i64               ; 3 uses
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.cv ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 24, i1 false), !tbaa.struct !458
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !453 ; 2 uses
  store i64 %i.cx, ptr %i.ck, align 8, !tbaa !453
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !454 ; 2 uses
  %i.da = sub i64 %i.cx, %i.cz
  %i.db = lshr i64 %i.da, 1
  %i.dc = add i64 %i.db, %i.cz                    ; 2 uses
  store i64 %i.dc, ptr %i.cw, align 8, !tbaa !453
  store i64 %i.dc, ptr %i.co, align 8, !tbaa !454
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !452
  store i64 %i.de, ptr %i.cl, align 8, !tbaa !452
  %i.df = load i8, ptr %i.cs, align 1, !tbaa !343
  %i.dg = add i8 %i.df, 1                         ; 3 uses
  store i8 %i.dg, ptr %i.cs, align 1, !tbaa !343
  %i.dh = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cv
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !343
  %i.di = add nuw nsw i8 %i.cd, 2                 ; 3 uses
  %exitcond.not.i.i.i.1 = icmp eq i8 %i.di, 8
  br i1 %exitcond.not.i.i.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.t, !llvm.loop !3

bb.t:                                             ; preds = %bb.s
  %i.dj = icmp ult i8 %i.dg, %i.cf
  br i1 %i.dj, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2: ; preds = %bb.t
  %i.dk = zext nneg i8 %i.cu to i64               ; 2 uses
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.dk ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !452
  %i.do = load i64, ptr %i.dl, align 8, !tbaa !453
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !454
  %i.dr = sub i64 %i.do, %i.dq
  %i.ds = icmp ult i64 %i.dn, %i.dr
  br i1 %i.ds, label %bb.u, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.u:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2
  %i.dt = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.dk ; 2 uses
  %i.du = add i8 %i.ce, 3
  %i.dv = and i8 %i.du, 7                         ; 5 uses
  %i.dw = zext nneg i8 %i.dv to i64               ; 3 uses
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.dw ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i64 24, i1 false), !tbaa.struct !458
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !453 ; 2 uses
  store i64 %i.dy, ptr %i.dl, align 8, !tbaa !453
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !454 ; 2 uses
  %i.eb = sub i64 %i.dy, %i.ea
  %i.ec = lshr i64 %i.eb, 1
  %i.ed = add i64 %i.ec, %i.ea                    ; 2 uses
  store i64 %i.ed, ptr %i.dx, align 8, !tbaa !453
  store i64 %i.ed, ptr %i.dp, align 8, !tbaa !454
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !452
  store i64 %i.ef, ptr %i.dm, align 8, !tbaa !452
  %i.eg = load i8, ptr %i.dt, align 1, !tbaa !343
  %i.eh = add i8 %i.eg, 1                         ; 3 uses
  store i8 %i.eh, ptr %i.dt, align 1, !tbaa !343
  %i.ei = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.dw
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !343
  %i.ej = add nuw nsw i8 %i.cd, 3                 ; 3 uses
  %exitcond.not.i.i.i.2 = icmp eq i8 %i.ej, 8
  br i1 %exitcond.not.i.i.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.v, !llvm.loop !3

bb.v:                                             ; preds = %bb.u
  %i.ek = icmp ult i8 %i.eh, %i.cf
  br i1 %i.ek, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3: ; preds = %bb.v
  %i.el = zext nneg i8 %i.dv to i64               ; 2 uses
  %i.em = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.el ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !452
  %i.ep = load i64, ptr %i.em, align 8, !tbaa !453
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !454
  %i.es = sub i64 %i.ep, %i.er
  %i.et = icmp ult i64 %i.eo, %i.es
  br i1 %i.et, label %bb.w, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.w:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3
  %i.eu = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.el ; 2 uses
  %i.ev = and i8 %i.ce, 7                         ; 4 uses
  %i.ew = xor i8 %i.ev, 4                         ; 8 uses
  %i.ex = zext nneg i8 %i.ew to i64               ; 3 uses
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.ex ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ey, ptr noundef nonnull align 8 dereferenceable(24) %i.em, i64 24, i1 false), !tbaa.struct !458
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !453 ; 2 uses
  store i64 %i.ez, ptr %i.em, align 8, !tbaa !453
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !454 ; 2 uses
  %i.fc = sub i64 %i.ez, %i.fb
  %i.fd = lshr i64 %i.fc, 1
  %i.fe = add i64 %i.fd, %i.fb                    ; 2 uses
  store i64 %i.fe, ptr %i.ey, align 8, !tbaa !453
  store i64 %i.fe, ptr %i.eq, align 8, !tbaa !454
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !452
  store i64 %i.fg, ptr %i.en, align 8, !tbaa !452
  %i.fh = load i8, ptr %i.eu, align 1, !tbaa !343
  %i.fi = add i8 %i.fh, 1                         ; 3 uses
  store i8 %i.fi, ptr %i.eu, align 1, !tbaa !343
  %i.fj = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ex
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !343
  %i.fk = add nuw nsw i8 %i.cd, 4                 ; 3 uses
  %exitcond.not.i.i.i.3 = icmp eq i8 %i.fk, 8
  br i1 %exitcond.not.i.i.i.3, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.x, !llvm.loop !3

bb.x:                                             ; preds = %bb.w
  %i.fl = icmp ult i8 %i.fi, %i.cf
  br i1 %i.fl, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4: ; preds = %bb.x
  %i.fm = zext nneg i8 %i.ew to i64               ; 2 uses
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.fm ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !452
  %i.fq = load i64, ptr %i.fn, align 8, !tbaa !453
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !454
  %i.ft = sub i64 %i.fq, %i.fs
  %i.fu = icmp ult i64 %i.fp, %i.ft
  br i1 %i.fu, label %bb.y, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.y:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.fm ; 2 uses
  %i.fw = add nuw nsw i8 %i.ew, 1
  %i.fx = and i8 %i.fw, 7                         ; 5 uses
  %i.fy = zext nneg i8 %i.fx to i64               ; 3 uses
  %i.fz = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.fy ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fz, ptr noundef nonnull align 8 dereferenceable(24) %i.fn, i64 24, i1 false), !tbaa.struct !458
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !453 ; 2 uses
  store i64 %i.ga, ptr %i.fn, align 8, !tbaa !453
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !454 ; 2 uses
  %i.gd = sub i64 %i.ga, %i.gc
  %i.ge = lshr i64 %i.gd, 1
  %i.gf = add i64 %i.ge, %i.gc                    ; 2 uses
  store i64 %i.gf, ptr %i.fz, align 8, !tbaa !453
  store i64 %i.gf, ptr %i.fr, align 8, !tbaa !454
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !452
  store i64 %i.gh, ptr %i.fo, align 8, !tbaa !452
  %i.gi = load i8, ptr %i.fv, align 1, !tbaa !343
  %i.gj = add i8 %i.gi, 1                         ; 3 uses
  store i8 %i.gj, ptr %i.fv, align 1, !tbaa !343
  %i.gk = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.fy
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !343
  %i.gl = add nuw nsw i8 %i.cd, 5                 ; 3 uses
end_hunk_1
