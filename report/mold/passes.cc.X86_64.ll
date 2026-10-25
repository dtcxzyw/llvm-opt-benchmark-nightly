Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/passes.cc.X86_64?download=true
inline.NumInlined: 23987
inline.NumDeleted: 9635
loop-unroll.NumCompletelyUnrolled: 73
loop-unroll.NumRuntimeUnrolled: 105
loop-unroll.NumUnrolled: 179
begin_hunk_0_@_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISF_SL_EEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE:bb.a
  %i.k = load ptr, ptr %.019.i.i, align 8, !tbaa !747 ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !745
  %i.n = inttoptr i64 %i.m to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #16
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = atomicrmw add ptr %i.o, i32 -1 seq_cst, align 4
  %i.q = add i32 %i.p, -1
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISF_SL_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.t = atomicrmw add ptr %i.s, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISF_SL_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v) #16
  br label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISF_SL_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISF_SL_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(128) %0, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %1) #16
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINSA_6X86_64EEESt6vectorISE_SaISE_EEEEZNSA_22create_output_sectionsISC_EEvRNSA_7ContextIT_EEEUlSE_SE_E_EENS1_15quick_sort_bodyISJ_SP_EEKNS1_16auto_partitionerEEESQ_EEvRSM_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1335
  %i.c = icmp ugt i64 %i.b, 499
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !744    ; 2 uses
  %i.e = icmp ugt i64 %i.d, 1
  br i1 %i.e, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !743   ; 2 uses
  %.not4.i = icmp eq i8 %i.g, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = add i8 %i.g, -1
  store i8 %i.h, ptr %i.f, align 4, !tbaa !743
  store i64 0, ptr %0, align 8, !tbaa !744
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit: ; preds = %bb.b, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr null, ptr %4, align 8, !tbaa !731
  %i.p = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %3) #16, !inline_history !3377 ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.q, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISF_SL_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.p, align 64, !tbaa !170
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 2 uses
  %i.s = load ptr, ptr %i.j, align 64, !tbaa !1344, !nonnull !599
  store ptr %i.s, ptr %i.r, align 64, !tbaa !672
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.u = call noundef i64 @_ZN3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_22create_output_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_E11split_rangeERSL_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.j), !inline_history !3378
  store i64 %i.u, ptr %i.t, align 8, !tbaa !1335
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.w = load i64, ptr %i.l, align 8, !tbaa !1335
  %i.x = load ptr, ptr %i.k, align 16, !tbaa !1345
  %i.y = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.v, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 96 ; 2 uses
  store ptr null, ptr %i.aa, align 32, !tbaa !1343
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !744
  %i.ad = lshr i64 %i.ac, 1                       ; 2 uses
  store i64 %i.ad, ptr %i.m, align 8, !tbaa !744
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !744
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  store i32 2, ptr %i.ae, align 16, !tbaa !742
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 116
  %i.ag = load i8, ptr %i.n, align 4, !tbaa !743
  store i8 %i.ag, ptr %i.af, align 4, !tbaa !743
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.ai = load i64, ptr %4, align 8, !tbaa !745
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !745
  %i.aj = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3) #16, !inline_history !3379 ; 6 uses
  %i.ak = load ptr, ptr %i.o, align 32, !tbaa !1127
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !747
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 2, ptr %i.al, align 8, !tbaa !748
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.an = load i64, ptr %4, align 8, !tbaa !745
  store i64 %i.an, ptr %i.am, align 8, !tbaa !745
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i8 0, ptr %i.ao, align 8, !tbaa !721
  store ptr %i.aj, ptr %i.o, align 32, !tbaa !1343
  store ptr %i.aj, ptr %i.aa, align 32, !tbaa !1343
  %i.ap = load ptr, ptr %3, align 8, !tbaa !1128
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(128) %i.p, ptr noundef nonnull align 8 dereferenceable(128) %i.ap) #16, !inline_history !3379
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !1335
  %i.ar = icmp ugt i64 %i.aq, 499
  br i1 %i.ar, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.as = load i64, ptr %0, align 8, !tbaa !744   ; 2 uses
  %i.at = icmp ugt i64 %i.as, 1
  br i1 %i.at, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, label %bb.g

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge: ; preds = %bb.f, %bb.i
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !3380

bb.g:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i64 %i.as, 0
  br i1 %.not.i8, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = load i8, ptr %i.i, align 4, !tbaa !743  ; 2 uses
  %.not4.i9 = icmp eq i8 %i.au, 0
  br i1 %.not4.i9, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = add i8 %i.au, -1
  store i8 %i.av, ptr %i.i, align 4, !tbaa !743
  store i64 0, ptr %0, align 8, !tbaa !744
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINSC_6X86_64EEESt6vectorISG_SaISG_EEEEZNSC_22create_output_sectionsISE_EEvRNSC_7ContextIT_EEEUlSG_SG_E_EENS1_15quick_sort_bodyISL_SR_EEKNS1_16auto_partitionerEEESS_EEvRSO_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINSC_6X86_64EEESt6vectorISG_SaISG_EEEEZNSC_22create_output_sectionsISE_EEvRNSC_7ContextIT_EEEUlSG_SG_E_EENS1_15quick_sort_bodyISL_SR_EEKNS1_16auto_partitionerEEESS_EEvRSO_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::range_vector.1436", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1335 ; 4 uses
  %i.c = icmp ugt i64 %i.b, 499
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !743   ; 2 uses
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %.thread, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISF_SL_EEKNS1_16auto_partitionerEE8run_bodyERSM_.exit, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %.idx.i.i.i.i.i.i = shl nsw i64 %i.b, 3
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.01.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !831 ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.01.0.copyload.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i ; 2 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = xor i64 %i.j, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_22create_output_sectionsIS4_EEvRNS2_7ContextIT_EEEUlS6_S6_E_EEEvSG_SG_T0_T1_(ptr %.sroa.01.0.copyload.i.i.i.i.i.i, ptr nonnull %i.h, i64 noundef %i.k)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS2_22create_output_sectionsIS4_EEvRNS2_7ContextIT_EEEUlS6_S6_E_EEEvSG_SG_T0_(ptr %.sroa.01.0.copyload.i.i.i.i.i.i, ptr nonnull %i.h)
  br label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISF_SL_EEKNS1_16auto_partitionerEE8run_bodyERSM_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 5 uses
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %5, align 8, !tbaa !177
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !1340
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 116
  br label %bb.e

thread-pre-split:                                 ; preds = %bb.l
  %.promoted.i.pre = load i8, ptr %i.m, align 2, !tbaa !3387 ; 2 uses
  %.pre = load i8, ptr %i.d, align 4, !tbaa !743
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split, %bb.d
  %6 = phi i8 [ %.promoted.i.pre, %thread-pre-split ], [ 1, %bb.d ] ; 3 uses
  %i.s = phi i8 [ %.pre, %thread-pre-split ], [ %i.e, %bb.d ] ; 2 uses
  %i.t = phi i8 [ %.promoted.i.pre, %thread-pre-split ], [ 0, %bb.d ]
  %i.u = icmp ult i8 %i.t, 8
  br i1 %i.u, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.pre.i = load i8, ptr %5, align 8, !tbaa !3388 ; 2 uses
  %.phi.trans.insert.i = zext i8 %.pre.i to i64
  %.phi.trans.insert5.i = getelementptr inbounds nuw i8, ptr %i.n, i64 %.phi.trans.insert.i
  %.pre6.i = load i8, ptr %.phi.trans.insert5.i, align 1, !tbaa !177
  %i.v = icmp ult i8 %.pre6.i, %i.s
  br i1 %i.v, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit

bb.f:                                             ; preds = %bb.g
  %i.w = icmp ult i8 %i.av, %i.s
  br i1 %i.w, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit, !llvm.loop !3381

_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE12is_divisibleEh.exit.i: ; preds = %.lr.ph.i, %bb.f
  %i.x = phi i8 [ %i.aw, %bb.f ], [ %.pre.i, %.lr.ph.i ] ; 2 uses
  %i.y = phi i8 [ %i.ba, %bb.f ], [ %6, %.lr.ph.i ]
  %i.z = zext i8 %i.x to i64                      ; 3 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1335
  %i.ad = icmp ugt i64 %i.ac, 499
  br i1 %i.ad, label %bb.g, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit

bb.g:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE12is_divisibleEh.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.z ; 2 uses
  %i.af = add nuw i8 %i.x, 1
  %i.ag = and i8 %i.af, 7                         ; 2 uses
  store i8 %i.ag, ptr %5, align 8, !tbaa !3388
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.ah ; 5 uses
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.z ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !tbaa.struct !1340
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !1344, !nonnull !599
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !672
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = call noundef i64 @_ZN3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_22create_output_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_E11split_rangeERSL_(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ai)
  store i64 %i.am, ptr %i.al, align 8, !tbaa !1335
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !1335
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !1345
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.aq
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.at, ptr %i.an, align 8
  %i.au = load i8, ptr %i.ae, align 1, !tbaa !177
  %i.av = add i8 %i.au, 1                         ; 3 uses
  store i8 %i.av, ptr %i.ae, align 1, !tbaa !177
  %i.aw = load i8, ptr %5, align 8, !tbaa !3388   ; 2 uses
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ax
  store i8 %i.av, ptr %i.ay, align 1, !tbaa !177
  %i.az = load i8, ptr %i.m, align 2, !tbaa !3387
  %i.ba = add i8 %i.az, 1                         ; 5 uses
  store i8 %i.ba, ptr %i.m, align 2, !tbaa !3387
  %i.bb = icmp ult i8 %i.ba, 8
  br i1 %i.bb, label %bb.f, label %._ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit.loopexit_crit_edge, !llvm.loop !3381

._ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit.loopexit_crit_edge: ; preds = %bb.g
  br label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit, !llvm.loop !3381

_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE12is_divisibleEh.exit.i, %bb.f, %.lr.ph.i, %._ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit.loopexit_crit_edge, %bb.e
  %.pr15 = phi i8 [ %6, %bb.e ], [ %i.ba, %._ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit.loopexit_crit_edge ], [ %6, %.lr.ph.i ], [ %i.ba, %bb.f ], [ %i.y, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE12is_divisibleEh.exit.i ] ; 3 uses
  %i.bc = load ptr, ptr %i.p, align 32, !tbaa !1343
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load atomic i8, ptr %i.bd monotonic, align 1, !range !613, !noundef !599
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.h, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS8_6X86_64EEESt6vectorISC_SaISC_EEEEZNS8_22create_output_sectionsISA_EEvRNS8_7ContextIT_EEEUlSC_SC_E_EENS1_15quick_sort_bodyISH_SN_EEKNS1_16auto_partitionerEEEEEbRSK_.exit_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS8_6X86_64EEESt6vectorISC_SaISC_EEEEZNS8_22create_output_sectionsISA_EEvRNS8_7ContextIT_EEEUlSC_SC_E_EENS1_15quick_sort_bodyISH_SN_EEKNS1_16auto_partitionerEEEEEbRSK_.exit_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit
  %.pre16 = load i8, ptr %5, align 8, !tbaa !3388 ; 2 uses
  %.pre20 = zext i8 %.pre16 to i64
  br label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS8_6X86_64EEESt6vectorISC_SaISC_EEEEZNS8_22create_output_sectionsISA_EEvRNS8_7ContextIT_EEEUlSC_SC_E_EENS1_15quick_sort_bodyISH_SN_EEKNS1_16auto_partitionerEEEEEbRSK_.exit

bb.h:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit
  %i.bg = load i8, ptr %i.d, align 4, !tbaa !743
  %i.bh = add i8 %i.bg, 1                         ; 2 uses
  store i8 %i.bh, ptr %i.d, align 4, !tbaa !743
  %i.bi = icmp ugt i8 %.pr15, 1
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bj = load i8, ptr %i.l, align 1, !tbaa !3389
  %i.bk = zext i8 %i.bj to i64                    ; 2 uses
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bk
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr null, ptr %4, align 8, !tbaa !731
  %i.bo = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %3) #16, !inline_history !3382 ; 9 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bp, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISF_SL_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.bo, align 64, !tbaa !170
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false), !tbaa.struct !1340
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 96 ; 2 uses
  store ptr null, ptr %i.br, align 32, !tbaa !1343
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 104
  %i.bt = load i64, ptr %i.q, align 8, !tbaa !744
  %i.bu = lshr i64 %i.bt, 1                       ; 2 uses
  store i64 %i.bu, ptr %i.q, align 8, !tbaa !744
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !744
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 112
  store i32 2, ptr %i.bv, align 16, !tbaa !742
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 116
  %i.bx = load i8, ptr %i.r, align 4, !tbaa !743
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 120
  %i.bz = load i64, ptr %4, align 8, !tbaa !745
  store i64 %i.bz, ptr %i.by, align 8, !tbaa !745
  %i.ca = sub i8 %i.bx, %i.bn
  store i8 %i.ca, ptr %i.bw, align 4, !tbaa !743
  %i.cb = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3) #16, !inline_history !3383 ; 6 uses
  %i.cc = load ptr, ptr %i.p, align 32, !tbaa !1127
  store ptr %i.cc, ptr %i.cb, align 8, !tbaa !747
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 2, ptr %i.cd, align 8, !tbaa !748
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cf = load i64, ptr %4, align 8, !tbaa !745
  store i64 %i.cf, ptr %i.ce, align 8, !tbaa !745
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store i8 0, ptr %i.cg, align 8, !tbaa !721
  store ptr %i.cb, ptr %i.p, align 32, !tbaa !1343
  store ptr %i.cb, ptr %i.br, align 32, !tbaa !1343
  %i.ch = load ptr, ptr %3, align 8, !tbaa !1128
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(128) %i.bo, ptr noundef nonnull align 8 dereferenceable(128) %i.ch) #16, !inline_history !3383
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.ci = load i8, ptr %i.m, align 2, !tbaa !3387
  %i.cj = add i8 %i.ci, -1                        ; 2 uses
  store i8 %i.cj, ptr %i.m, align 2, !tbaa !3387
  %i.ck = load i8, ptr %i.l, align 1, !tbaa !3389
  %i.cl = add i8 %i.ck, 1
  %i.cm = and i8 %i.cl, 7
  store i8 %i.cm, ptr %i.l, align 1, !tbaa !3389
  br label %thread-pre-split14

bb.j:                                             ; preds = %bb.h
  %i.cn = load i8, ptr %5, align 8, !tbaa !3388   ; 3 uses
  %i.co = zext i8 %i.cn to i64                    ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !177
  %i.cr = icmp ult i8 %i.cq, %i.bh
  br i1 %i.cr, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS8_6X86_64EEESt6vectorISC_SaISC_EEEEZNS8_22create_output_sectionsISA_EEvRNS8_7ContextIT_EEEUlSC_SC_E_EENS1_15quick_sort_bodyISH_SN_EEKNS1_16auto_partitionerEEEEEbRSK_.exit

_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE12is_divisibleEh.exit: ; preds = %bb.j
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %i.co
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !1335
  %i.cv = icmp ugt i64 %i.cu, 499
  br i1 %i.cv, label %thread-pre-split14, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS8_6X86_64EEESt6vectorISC_SaISC_EEEEZNS8_22create_output_sectionsISA_EEvRNS8_7ContextIT_EEEUlSC_SC_E_EENS1_15quick_sort_bodyISH_SN_EEKNS1_16auto_partitionerEEEEEbRSK_.exit

_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS8_6X86_64EEESt6vectorISC_SaISC_EEEEZNS8_22create_output_sectionsISA_EEvRNS8_7ContextIT_EEEUlSC_SC_E_EENS1_15quick_sort_bodyISH_SN_EEKNS1_16auto_partitionerEEEEEbRSK_.exit: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS8_6X86_64EEESt6vectorISC_SaISC_EEEEZNS8_22create_output_sectionsISA_EEvRNS8_7ContextIT_EEEUlSC_SC_E_EENS1_15quick_sort_bodyISH_SN_EEKNS1_16auto_partitionerEEEEEbRSK_.exit_crit_edge, %bb.j, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre20, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS8_6X86_64EEESt6vectorISC_SaISC_EEEEZNS8_22create_output_sectionsISA_EEvRNS8_7ContextIT_EEEUlSC_SC_E_EENS1_15quick_sort_bodyISH_SN_EEKNS1_16auto_partitionerEEEEEbRSK_.exit_crit_edge ], [ %i.co, %bb.j ], [ %i.co, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE12is_divisibleEh.exit ]
  %i.cw = phi i8 [ %.pre16, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS8_6X86_64EEESt6vectorISC_SaISC_EEEEZNS8_22create_output_sectionsISA_EEvRNS8_7ContextIT_EEEUlSC_SC_E_EENS1_15quick_sort_bodyISH_SN_EEKNS1_16auto_partitionerEEEEEbRSK_.exit_crit_edge ], [ %i.cn, %bb.j ], [ %i.cn, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE12is_divisibleEh.exit ]
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.pre-phi ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !1335 ; 3 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISF_SL_EEKNS1_16auto_partitionerEE8run_bodyERSM_.exit12, label %bb.k

bb.k:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS8_6X86_64EEESt6vectorISC_SaISC_EEEEZNS8_22create_output_sectionsISA_EEvRNS8_7ContextIT_EEEUlSC_SC_E_EENS1_15quick_sort_bodyISH_SN_EEKNS1_16auto_partitionerEEEEEbRSK_.exit
  %.idx.i.i.i.i.i.i10 = shl nsw i64 %i.cz, 3
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %.sroa.01.0.copyload.i.i.i.i.i.i11 = load ptr, ptr %i.db, align 8, !tbaa !831 ; 3 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.01.0.copyload.i.i.i.i.i.i11, i64 %.idx.i.i.i.i.i.i10 ; 2 uses
  %i.dd = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cz, i1 true)
  %i.de = shl nuw nsw i64 %i.dd, 1
  %i.df = xor i64 %i.de, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_22create_output_sectionsIS4_EEvRNS2_7ContextIT_EEEUlS6_S6_E_EEEvSG_SG_T0_T1_(ptr %.sroa.01.0.copyload.i.i.i.i.i.i11, ptr nonnull %i.dc, i64 noundef %i.df)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS2_22create_output_sectionsIS4_EEvRNS2_7ContextIT_EEEUlS6_S6_E_EEEvSG_SG_T0_(ptr %.sroa.01.0.copyload.i.i.i.i.i.i11, ptr nonnull %i.dc)
  %.pre17 = load i8, ptr %i.m, align 2, !tbaa !3387
  %.pre18 = load i8, ptr %5, align 8, !tbaa !3388
  br label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISF_SL_EEKNS1_16auto_partitionerEE8run_bodyERSM_.exit12

_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISF_SL_EEKNS1_16auto_partitionerEE8run_bodyERSM_.exit12: ; preds = %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS8_6X86_64EEESt6vectorISC_SaISC_EEEEZNS8_22create_output_sectionsISA_EEvRNS8_7ContextIT_EEEUlSC_SC_E_EENS1_15quick_sort_bodyISH_SN_EEKNS1_16auto_partitionerEEEEEbRSK_.exit, %bb.k
  %i.dg = phi i8 [ %i.cw, %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS8_6X86_64EEESt6vectorISC_SaISC_EEEEZNS8_22create_output_sectionsISA_EEvRNS8_7ContextIT_EEEUlSC_SC_E_EENS1_15quick_sort_bodyISH_SN_EEKNS1_16auto_partitionerEEEEEbRSK_.exit ], [ %.pre18, %bb.k ]
  %i.dh = phi i8 [ %.pr15, %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS8_6X86_64EEESt6vectorISC_SaISC_EEEEZNS8_22create_output_sectionsISA_EEvRNS8_7ContextIT_EEEUlSC_SC_E_EENS1_15quick_sort_bodyISH_SN_EEKNS1_16auto_partitionerEEEEEbRSK_.exit ], [ %.pre17, %bb.k ]
  %i.di = add i8 %i.dh, -1                        ; 2 uses
  store i8 %i.di, ptr %i.m, align 2, !tbaa !3387
  %i.dj = add i8 %i.dg, 7
  %i.dk = and i8 %i.dj, 7
  store i8 %i.dk, ptr %5, align 8, !tbaa !3388
  br label %thread-pre-split14

thread-pre-split14:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISF_SL_EEKNS1_16auto_partitionerEE8run_bodyERSM_.exit12, %bb.i
  %i.dl = phi i8 [ %i.cj, %bb.i ], [ %i.di, %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISF_SL_EEKNS1_16auto_partitionerEE8run_bodyERSM_.exit12 ], [ %.pr15, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE12is_divisibleEh.exit ]
  %i.dm = icmp eq i8 %i.dl, 0
  br i1 %i.dm, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %thread-pre-split14
  %i.dn = load ptr, ptr %3, align 8, !tbaa !1128  ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 15
  %i.dp = load atomic i8, ptr %i.do monotonic, align 1
  %i.dq = icmp eq i8 %i.dp, -1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  %.0.i.i = select i1 %i.dq, ptr %i.ds, ptr %i.dn
  %i.dt = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i) #16
  br i1 %i.dt, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EED2Ev.exit, label %thread-pre-split, !llvm.loop !3384

_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EED2Ev.exit: ; preds = %thread-pre-split14, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISF_SL_EEKNS1_16auto_partitionerEE8run_bodyERSM_.exit

_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISF_SL_EEKNS1_16auto_partitionerEE8run_bodyERSM_.exit: ; preds = %.thread, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZNS6_22create_output_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef i64 @_ZN3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_22create_output_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_E11split_rangeERSL_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.470", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !831  ; 2 uses
  store i64 %i.b, ptr %2, align 8, !tbaa !831
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1335
  %i.f = lshr i64 %i.e, 3                         ; 7 uses
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = call noundef i64 @_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_22create_output_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_E15median_of_threeERKSE_mmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0, i64 noundef %i.f, i64 noundef %i.g)
  %i.i = mul nuw nsw i64 %i.f, 3
  %i.j = shl nuw nsw i64 %i.f, 2
  %i.k = mul nuw i64 %i.f, 5
  %i.l = call noundef i64 @_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_22create_output_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_E15median_of_threeERKSE_mmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.i, i64 noundef %i.j, i64 noundef %i.k)
  %i.m = mul nuw i64 %i.f, 6
  %i.n = mul nuw i64 %i.f, 7
  %i.o = load i64, ptr %i.d, align 8, !tbaa !1335
  %i.p = add i64 %i.o, -1
  %i.q = call noundef i64 @_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_22create_output_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_E15median_of_threeERKSE_mmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.m, i64 noundef %i.n, i64 noundef %i.p)
  %i.r = call noundef i64 @_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_22create_output_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_E15median_of_threeERKSE_mmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.h, i64 noundef %i.l, i64 noundef %i.q) ; 2 uses
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.019.0.copyload = load ptr, ptr %2, align 8, !tbaa !831 ; 3 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.sroa.019.0.copyload, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !618
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !618
  store ptr %i.u, ptr %.sroa.019.0.copyload, align 8, !tbaa !618
  store ptr %i.t, ptr %i.s, align 8, !tbaa !618
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.v = load i64, ptr %i.d, align 8, !tbaa !1335 ; 2 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !1345   ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.028 = phi i64 [ %i.v, %bb.c ], [ %i.ad, %bb.f ]
  %.0 = phi i64 [ 0, %bb.c ], [ %i.ax, %bb.f ]    ; 3 uses
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !618  ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ab = load i64, ptr %i.aa, align 1, !tbaa !177 ; 2 uses
  %i.ac = load i32, ptr %i.z, align 1, !tbaa !177 ; 4 uses
  %.sroa.611.16.copyload.i = load i64, ptr %i.y, align 8, !tbaa !594 ; 6 uses
  %.sroa.812.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  br label %.backedge48

.backedge48:                                      ; preds = %.backedge48.backedge, %bb.d
  %.129 = phi i64 [ %.028, %bb.d ], [ %i.ad, %.backedge48.backedge ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISE_SK_EEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE:bb.a
bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v) #16
  br label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISE_SK_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISE_SK_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(128) %0, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %1) #16
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINSA_6X86_64EEESt4spanISE_Lm18446744073709551615EEEEZNSA_12sort_dynsymsISC_EEvRNSA_7ContextIT_EEEUlSE_SE_E_EENS1_15quick_sort_bodyISI_SO_EEKNS1_16auto_partitionerEEESP_EEvRSL_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1841
  %i.c = icmp ugt i64 %i.b, 499
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !744    ; 2 uses
  %i.e = icmp ugt i64 %i.d, 1
  br i1 %i.e, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !743   ; 2 uses
  %.not4.i = icmp eq i8 %i.g, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = add i8 %i.g, -1
  store i8 %i.h, ptr %i.f, align 4, !tbaa !743
  store i64 0, ptr %0, align 8, !tbaa !744
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit: ; preds = %bb.b, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr null, ptr %4, align 8, !tbaa !731
  %i.p = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %3) #16, !inline_history !4458 ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.q, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISE_SK_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.p, align 64, !tbaa !170
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 2 uses
  %i.s = load ptr, ptr %i.j, align 64, !tbaa !1850, !nonnull !599, !align !600
  store ptr %i.s, ptr %i.r, align 64, !tbaa !672
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.u = call noundef i64 @_ZN3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS5_6X86_64EEESt4spanIS9_Lm18446744073709551615EEEEZNS5_12sort_dynsymsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_E11split_rangeERSK_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.j), !inline_history !4459
  store i64 %i.u, ptr %i.t, align 8, !tbaa !1841
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.w = load i64, ptr %i.l, align 8, !tbaa !1841
  %i.x = load ptr, ptr %i.k, align 16, !tbaa !1835
  %i.y = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.v, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 96 ; 2 uses
  store ptr null, ptr %i.aa, align 32, !tbaa !1849
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !744
  %i.ad = lshr i64 %i.ac, 1                       ; 2 uses
  store i64 %i.ad, ptr %i.m, align 8, !tbaa !744
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !744
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  store i32 2, ptr %i.ae, align 16, !tbaa !742
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 116
  %i.ag = load i8, ptr %i.n, align 4, !tbaa !743
  store i8 %i.ag, ptr %i.af, align 4, !tbaa !743
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.ai = load i64, ptr %4, align 8, !tbaa !745
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !745
  %i.aj = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3) #16, !inline_history !4460 ; 6 uses
  %i.ak = load ptr, ptr %i.o, align 32, !tbaa !1127
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !747
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 2, ptr %i.al, align 8, !tbaa !748
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.an = load i64, ptr %4, align 8, !tbaa !745
  store i64 %i.an, ptr %i.am, align 8, !tbaa !745
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i8 0, ptr %i.ao, align 8, !tbaa !721
  store ptr %i.aj, ptr %i.o, align 32, !tbaa !1849
  store ptr %i.aj, ptr %i.aa, align 32, !tbaa !1849
  %i.ap = load ptr, ptr %3, align 8, !tbaa !1128
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(128) %i.p, ptr noundef nonnull align 8 dereferenceable(128) %i.ap) #16, !inline_history !4460
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !1841
  %i.ar = icmp ugt i64 %i.aq, 499
  br i1 %i.ar, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.as = load i64, ptr %0, align 8, !tbaa !744   ; 2 uses
  %i.at = icmp ugt i64 %i.as, 1
  br i1 %i.at, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, label %bb.g

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge: ; preds = %bb.f, %bb.i
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !4461

bb.g:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i64 %i.as, 0
  br i1 %.not.i8, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = load i8, ptr %i.i, align 4, !tbaa !743  ; 2 uses
  %.not4.i9 = icmp eq i8 %i.au, 0
  br i1 %.not4.i9, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = add i8 %i.au, -1
  store i8 %i.av, ptr %i.i, align 4, !tbaa !743
  store i64 0, ptr %0, align 8, !tbaa !744
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINSC_6X86_64EEESt4spanISG_Lm18446744073709551615EEEEZNSC_12sort_dynsymsISE_EEvRNSC_7ContextIT_EEEUlSG_SG_E_EENS1_15quick_sort_bodyISK_SQ_EEKNS1_16auto_partitionerEEESR_EEvRSN_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINSC_6X86_64EEESt4spanISG_Lm18446744073709551615EEEEZNSC_12sort_dynsymsISE_EEvRNSC_7ContextIT_EEEUlSG_SG_E_EENS1_15quick_sort_bodyISK_SQ_EEKNS1_16auto_partitionerEEESR_EEvRSN_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::range_vector.1936", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1841 ; 6 uses
  %i.c = icmp ugt i64 %i.b, 499
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !743   ; 2 uses
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.02.0.copyload.i.i.i.i.i.i15 = load ptr, ptr %i.f, align 8, !tbaa !714 ; 2 uses
  %.idx.i.i.i.i.i.i16 = shl nsw i64 %i.b, 3
  %i.g = getelementptr inbounds i8, ptr %.sroa.02.0.copyload.i.i.i.i.i.i15, i64 %.idx.i.i.i.i.i.i16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.02.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !714 ; 2 uses
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.b, 3
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i
  %i.j = icmp eq i64 %i.b, 0
  br i1 %i.j, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISE_SK_EEKNS1_16auto_partitionerEE8run_bodyERSL_.exit, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.k = phi ptr [ %i.g, %.thread ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.02.0.copyload.i.i.i.i.i.i18 = phi ptr [ %.sroa.02.0.copyload.i.i.i.i.i.i15, %.thread ], [ %.sroa.02.0.copyload.i.i.i.i.i.i, %bb.c ] ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i19.in = load ptr, ptr %2, align 8, !tbaa !1850, !nonnull !599, !align !600
  %.sroa.0.0.copyload.i.i.i.i.i.i19 = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i19.in, align 8, !tbaa !993 ; 4 uses
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.m = shl nuw nsw i64 %i.l, 1
  %i.n = xor i64 %i.m, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEElNS0_5__ops15_Iter_comp_iterIZNS2_12sort_dynsymsIS4_EEvRNS2_7ContextIT_EEEUlS6_S6_E_EEEvSF_SF_T0_T1_(ptr %.sroa.02.0.copyload.i.i.i.i.i.i18, ptr nonnull %i.k, i64 noundef %i.n, ptr %.sroa.0.0.copyload.i.i.i.i.i.i19)
  %i.o = icmp sgt i64 %i.b, 16
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i.i18, i64 128 ; 2 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNS2_12sort_dynsymsIS4_EEvRNS2_7ContextIT_EEEUlS6_S6_E_EEEvSF_SF_T0_(ptr %.sroa.02.0.copyload.i.i.i.i.i.i18, ptr nonnull %i.p, ptr %.sroa.0.0.copyload.i.i.i.i.i.i19)
  tail call void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNS2_12sort_dynsymsIS4_EEvRNS2_7ContextIT_EEEUlS6_S6_E_EEEvSF_SF_T0_(ptr nonnull %i.p, ptr nonnull %i.k, ptr %.sroa.0.0.copyload.i.i.i.i.i.i19)
  br label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISE_SK_EEKNS1_16auto_partitionerEE8run_bodyERSL_.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNS2_12sort_dynsymsIS4_EEvRNS2_7ContextIT_EEEUlS6_S6_E_EEEvSF_SF_T0_(ptr %.sroa.02.0.copyload.i.i.i.i.i.i18, ptr nonnull %i.k, ptr %.sroa.0.0.copyload.i.i.i.i.i.i19)
  br label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISE_SK_EEKNS1_16auto_partitionerEE8run_bodyERSL_.exit

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 5 uses
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %5, align 8, !tbaa !177
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !1846
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 116
  br label %bb.h

thread-pre-split:                                 ; preds = %bb.q
  %.promoted.i.pre = load i8, ptr %i.r, align 2, !tbaa !4468 ; 2 uses
  %.pre = load i8, ptr %i.d, align 4, !tbaa !743
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split, %bb.g
  %6 = phi i8 [ %.promoted.i.pre, %thread-pre-split ], [ 1, %bb.g ] ; 3 uses
  %i.x = phi i8 [ %.pre, %thread-pre-split ], [ %i.e, %bb.g ] ; 2 uses
  %i.y = phi i8 [ %.promoted.i.pre, %thread-pre-split ], [ 0, %bb.g ]
  %i.z = icmp ult i8 %i.y, 8
  br i1 %i.z, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.h
  %.pre.i = load i8, ptr %5, align 8, !tbaa !4469 ; 2 uses
  %.phi.trans.insert.i = zext i8 %.pre.i to i64
  %.phi.trans.insert5.i = getelementptr inbounds nuw i8, ptr %i.s, i64 %.phi.trans.insert.i
  %.pre6.i = load i8, ptr %.phi.trans.insert5.i, align 1, !tbaa !177
  %i.aa = icmp ult i8 %.pre6.i, %i.x
  br i1 %i.aa, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit

bb.i:                                             ; preds = %bb.j
  %i.ab = icmp ult i8 %i.ba, %i.x
  br i1 %i.ab, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit, !llvm.loop !4462

_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE12is_divisibleEh.exit.i: ; preds = %.lr.ph.i, %bb.i
  %i.ac = phi i8 [ %i.bb, %bb.i ], [ %.pre.i, %.lr.ph.i ] ; 2 uses
  %i.ad = phi i8 [ %i.bf, %bb.i ], [ %6, %.lr.ph.i ]
  %i.ae = zext i8 %i.ac to i64                    ; 3 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !1841
  %i.ai = icmp ugt i64 %i.ah, 499
  br i1 %i.ai, label %bb.j, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE12is_divisibleEh.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ae ; 2 uses
  %i.ak = add nuw i8 %i.ac, 1
  %i.al = and i8 %i.ak, 7                         ; 2 uses
  store i8 %i.al, ptr %5, align 8, !tbaa !4469
  %i.am = zext nneg i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.am ; 5 uses
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.ae ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !tbaa.struct !1846
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !1850, !nonnull !599, !align !600
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !672
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = call noundef i64 @_ZN3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS5_6X86_64EEESt4spanIS9_Lm18446744073709551615EEEEZNS5_12sort_dynsymsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_E11split_rangeERSK_(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.an)
  store i64 %i.ar, ptr %i.aq, align 8, !tbaa !1841
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !1841
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !1835
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.ay, ptr %i.as, align 8
  %i.az = load i8, ptr %i.aj, align 1, !tbaa !177
  %i.ba = add i8 %i.az, 1                         ; 3 uses
  store i8 %i.ba, ptr %i.aj, align 1, !tbaa !177
  %i.bb = load i8, ptr %5, align 8, !tbaa !4469   ; 2 uses
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bc
  store i8 %i.ba, ptr %i.bd, align 1, !tbaa !177
  %i.be = load i8, ptr %i.r, align 2, !tbaa !4468
  %i.bf = add i8 %i.be, 1                         ; 5 uses
  store i8 %i.bf, ptr %i.r, align 2, !tbaa !4468
  %i.bg = icmp ult i8 %i.bf, 8
  br i1 %i.bg, label %bb.i, label %._ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit.loopexit_crit_edge, !llvm.loop !4462

._ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit.loopexit_crit_edge: ; preds = %bb.j
  br label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit, !llvm.loop !4462

_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE12is_divisibleEh.exit.i, %bb.i, %.lr.ph.i, %._ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit.loopexit_crit_edge, %bb.h
  %.pr21 = phi i8 [ %6, %bb.h ], [ %i.bf, %._ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit.loopexit_crit_edge ], [ %6, %.lr.ph.i ], [ %i.bf, %bb.i ], [ %i.ad, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE12is_divisibleEh.exit.i ] ; 2 uses
  %i.bh = load ptr, ptr %i.u, align 32, !tbaa !1849
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load atomic i8, ptr %i.bi monotonic, align 1, !range !613, !noundef !599
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.k, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt4spanISC_Lm18446744073709551615EEEEZNS8_12sort_dynsymsISA_EEvRNS8_7ContextIT_EEEUlSC_SC_E_EENS1_15quick_sort_bodyISG_SM_EEKNS1_16auto_partitionerEEEEEbRSJ_.exit_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt4spanISC_Lm18446744073709551615EEEEZNS8_12sort_dynsymsISA_EEvRNS8_7ContextIT_EEEUlSC_SC_E_EENS1_15quick_sort_bodyISG_SM_EEKNS1_16auto_partitionerEEEEEbRSJ_.exit_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit
  %.pre22 = load i8, ptr %5, align 8, !tbaa !4469
  %.pre24 = zext i8 %.pre22 to i64
  br label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt4spanISC_Lm18446744073709551615EEEEZNS8_12sort_dynsymsISA_EEvRNS8_7ContextIT_EEEUlSC_SC_E_EENS1_15quick_sort_bodyISG_SM_EEKNS1_16auto_partitionerEEEEEbRSJ_.exit

bb.k:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit
  %i.bl = load i8, ptr %i.d, align 4, !tbaa !743
  %i.bm = add i8 %i.bl, 1                         ; 2 uses
  store i8 %i.bm, ptr %i.d, align 4, !tbaa !743
  %i.bn = icmp ugt i8 %.pr21, 1
  br i1 %i.bn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bo = load i8, ptr %i.q, align 1, !tbaa !4470
  %i.bp = zext i8 %i.bo to i64                    ; 2 uses
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bp
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr null, ptr %4, align 8, !tbaa !731
  %i.bt = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %3) #16, !inline_history !4463 ; 9 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bu, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISE_SK_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.bt, align 64, !tbaa !170
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 24, i1 false), !tbaa.struct !1846
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 96 ; 2 uses
  store ptr null, ptr %i.bw, align 32, !tbaa !1849
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 104
  %i.by = load i64, ptr %i.v, align 8, !tbaa !744
  %i.bz = lshr i64 %i.by, 1                       ; 2 uses
  store i64 %i.bz, ptr %i.v, align 8, !tbaa !744
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !744
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 112
  store i32 2, ptr %i.ca, align 16, !tbaa !742
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 116
  %i.cc = load i8, ptr %i.w, align 4, !tbaa !743
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bt, i64 120
  %i.ce = load i64, ptr %4, align 8, !tbaa !745
  store i64 %i.ce, ptr %i.cd, align 8, !tbaa !745
  %i.cf = sub i8 %i.cc, %i.bs
  store i8 %i.cf, ptr %i.cb, align 4, !tbaa !743
  %i.cg = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3) #16, !inline_history !4464 ; 6 uses
  %i.ch = load ptr, ptr %i.u, align 32, !tbaa !1127
  store ptr %i.ch, ptr %i.cg, align 8, !tbaa !747
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i32 2, ptr %i.ci, align 8, !tbaa !748
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ck = load i64, ptr %4, align 8, !tbaa !745
  store i64 %i.ck, ptr %i.cj, align 8, !tbaa !745
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store i8 0, ptr %i.cl, align 8, !tbaa !721
  store ptr %i.cg, ptr %i.u, align 32, !tbaa !1849
  store ptr %i.cg, ptr %i.bw, align 32, !tbaa !1849
  %i.cm = load ptr, ptr %3, align 8, !tbaa !1128
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(128) %i.bt, ptr noundef nonnull align 8 dereferenceable(128) %i.cm) #16, !inline_history !4464
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.cn = load i8, ptr %i.r, align 2, !tbaa !4468
  %i.co = add i8 %i.cn, -1                        ; 2 uses
  store i8 %i.co, ptr %i.r, align 2, !tbaa !4468
  %i.cp = load i8, ptr %i.q, align 1, !tbaa !4470
  %i.cq = add i8 %i.cp, 1
  %i.cr = and i8 %i.cq, 7
  store i8 %i.cr, ptr %i.q, align 1, !tbaa !4470
  br label %thread-pre-split20

bb.m:                                             ; preds = %bb.k
  %i.cs = load i8, ptr %5, align 8, !tbaa !4469
  %i.ct = zext i8 %i.cs to i64                    ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !177
  %i.cw = icmp ult i8 %i.cv, %i.bm
  br i1 %i.cw, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt4spanISC_Lm18446744073709551615EEEEZNS8_12sort_dynsymsISA_EEvRNS8_7ContextIT_EEEUlSC_SC_E_EENS1_15quick_sort_bodyISG_SM_EEKNS1_16auto_partitionerEEEEEbRSJ_.exit

_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE12is_divisibleEh.exit: ; preds = %bb.m
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %i.ct
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !1841
  %i.da = icmp ugt i64 %i.cz, 499
  br i1 %i.da, label %thread-pre-split20, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt4spanISC_Lm18446744073709551615EEEEZNS8_12sort_dynsymsISA_EEvRNS8_7ContextIT_EEEUlSC_SC_E_EENS1_15quick_sort_bodyISG_SM_EEKNS1_16auto_partitionerEEEEEbRSJ_.exit

_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt4spanISC_Lm18446744073709551615EEEEZNS8_12sort_dynsymsISA_EEvRNS8_7ContextIT_EEEUlSC_SC_E_EENS1_15quick_sort_bodyISG_SM_EEKNS1_16auto_partitionerEEEEEbRSJ_.exit: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt4spanISC_Lm18446744073709551615EEEEZNS8_12sort_dynsymsISA_EEvRNS8_7ContextIT_EEEUlSC_SC_E_EENS1_15quick_sort_bodyISG_SM_EEKNS1_16auto_partitionerEEEEEbRSJ_.exit_crit_edge, %bb.m, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre24, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt4spanISC_Lm18446744073709551615EEEEZNS8_12sort_dynsymsISA_EEvRNS8_7ContextIT_EEEUlSC_SC_E_EENS1_15quick_sort_bodyISG_SM_EEKNS1_16auto_partitionerEEEEEbRSJ_.exit_crit_edge ], [ %i.ct, %bb.m ], [ %i.ct, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE12is_divisibleEh.exit ]
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.pre-phi ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %.sroa.02.0.copyload.i.i.i.i.i.i10 = load ptr, ptr %i.dc, align 8, !tbaa !714 ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !1841 ; 4 uses
  %.idx.i.i.i.i.i.i11 = shl nsw i64 %i.de, 3
  %i.df = getelementptr inbounds i8, ptr %.sroa.02.0.copyload.i.i.i.i.i.i10, i64 %.idx.i.i.i.i.i.i11 ; 3 uses
  %i.dg = load ptr, ptr %i.db, align 8, !tbaa !1850, !nonnull !599, !align !600
  %.sroa.0.0.copyload.i.i.i.i.i.i12 = load ptr, ptr %i.dg, align 8, !tbaa !993 ; 4 uses
  %i.dh = icmp eq i64 %i.de, 0
  br i1 %i.dh, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISE_SK_EEKNS1_16auto_partitionerEE8run_bodyERSL_.exit13, label %bb.n

bb.n:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt4spanISC_Lm18446744073709551615EEEEZNS8_12sort_dynsymsISA_EEvRNS8_7ContextIT_EEEUlSC_SC_E_EENS1_15quick_sort_bodyISG_SM_EEKNS1_16auto_partitionerEEEEEbRSJ_.exit
  %i.di = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.de, i1 true)
  %i.dj = shl nuw nsw i64 %i.di, 1
  %i.dk = xor i64 %i.dj, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEElNS0_5__ops15_Iter_comp_iterIZNS2_12sort_dynsymsIS4_EEvRNS2_7ContextIT_EEEUlS6_S6_E_EEEvSF_SF_T0_T1_(ptr %.sroa.02.0.copyload.i.i.i.i.i.i10, ptr nonnull %i.df, i64 noundef %i.dk, ptr %.sroa.0.0.copyload.i.i.i.i.i.i12)
  %i.dl = icmp sgt i64 %i.de, 16
  br i1 %i.dl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i.i10, i64 128 ; 2 uses
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNS2_12sort_dynsymsIS4_EEvRNS2_7ContextIT_EEEUlS6_S6_E_EEEvSF_SF_T0_(ptr %.sroa.02.0.copyload.i.i.i.i.i.i10, ptr nonnull %i.dm, ptr %.sroa.0.0.copyload.i.i.i.i.i.i12)
  call void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNS2_12sort_dynsymsIS4_EEvRNS2_7ContextIT_EEEUlS6_S6_E_EEEvSF_SF_T0_(ptr nonnull %i.dm, ptr nonnull %i.df, ptr %.sroa.0.0.copyload.i.i.i.i.i.i12)
  br label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISE_SK_EEKNS1_16auto_partitionerEE8run_bodyERSL_.exit13

bb.p:                                             ; preds = %bb.n
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNS2_12sort_dynsymsIS4_EEvRNS2_7ContextIT_EEEUlS6_S6_E_EEEvSF_SF_T0_(ptr %.sroa.02.0.copyload.i.i.i.i.i.i10, ptr nonnull %i.df, ptr %.sroa.0.0.copyload.i.i.i.i.i.i12)
  br label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISE_SK_EEKNS1_16auto_partitionerEE8run_bodyERSL_.exit13

_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISE_SK_EEKNS1_16auto_partitionerEE8run_bodyERSL_.exit13: ; preds = %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt4spanISC_Lm18446744073709551615EEEEZNS8_12sort_dynsymsISA_EEvRNS8_7ContextIT_EEEUlSC_SC_E_EENS1_15quick_sort_bodyISG_SM_EEKNS1_16auto_partitionerEEEEEbRSJ_.exit, %bb.o, %bb.p
  %i.dn = load i8, ptr %i.r, align 2, !tbaa !4468
  %i.do = add i8 %i.dn, -1                        ; 2 uses
  store i8 %i.do, ptr %i.r, align 2, !tbaa !4468
  %i.dp = load i8, ptr %5, align 8, !tbaa !4469
  %i.dq = add i8 %i.dp, 7
  %i.dr = and i8 %i.dq, 7
  store i8 %i.dr, ptr %5, align 8, !tbaa !4469
  br label %thread-pre-split20

thread-pre-split20:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISE_SK_EEKNS1_16auto_partitionerEE8run_bodyERSL_.exit13, %bb.l
  %i.ds = phi i8 [ %i.co, %bb.l ], [ %i.do, %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISE_SK_EEKNS1_16auto_partitionerEE8run_bodyERSL_.exit13 ], [ %.pr21, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EE12is_divisibleEh.exit ]
  %i.dt = icmp eq i8 %i.ds, 0
  br i1 %i.dt, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %thread-pre-split20
  %i.du = load ptr, ptr %3, align 8, !tbaa !1128  ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 15
  %i.dw = load atomic i8, ptr %i.dv monotonic, align 1
  %i.dx = icmp eq i8 %i.dw, -1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8
  %.0.i.i = select i1 %i.dx, ptr %i.dz, ptr %i.du
  %i.ea = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i) #16
  br i1 %i.ea, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EED2Ev.exit, label %thread-pre-split, !llvm.loop !4465

_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EED2Ev.exit: ; preds = %thread-pre-split20, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISE_SK_EEKNS1_16auto_partitionerEE8run_bodyERSL_.exit

_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EENS1_15quick_sort_bodyISE_SK_EEKNS1_16auto_partitionerEE8run_bodyERSL_.exit: ; preds = %bb.f, %bb.e, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt4spanISA_Lm18446744073709551615EEEEZNS6_12sort_dynsymsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EELh8EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef i64 @_ZN3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS5_6X86_64EEESt4spanIS9_Lm18446744073709551615EEEEZNS5_12sort_dynsymsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_E11split_rangeERSK_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.637", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !714  ; 2 uses
  store i64 %i.b, ptr %2, align 8, !tbaa !714
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1841
  %i.f = lshr i64 %i.e, 3                         ; 7 uses
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = call noundef i64 @_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS5_6X86_64EEESt4spanIS9_Lm18446744073709551615EEEEZNS5_12sort_dynsymsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_E15median_of_threeERKSD_mmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0, i64 noundef %i.f, i64 noundef %i.g)
  %i.i = mul nuw nsw i64 %i.f, 3
  %i.j = shl nuw nsw i64 %i.f, 2
  %i.k = mul nuw i64 %i.f, 5
  %i.l = call noundef i64 @_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS5_6X86_64EEESt4spanIS9_Lm18446744073709551615EEEEZNS5_12sort_dynsymsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_E15median_of_threeERKSD_mmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.i, i64 noundef %i.j, i64 noundef %i.k)
  %i.m = mul nuw i64 %i.f, 6
  %i.n = mul nuw i64 %i.f, 7
  %i.o = load i64, ptr %i.d, align 8, !tbaa !1841
  %i.p = add i64 %i.o, -1
  %i.q = call noundef i64 @_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS5_6X86_64EEESt4spanIS9_Lm18446744073709551615EEEEZNS5_12sort_dynsymsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_E15median_of_threeERKSD_mmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.m, i64 noundef %i.n, i64 noundef %i.p)
  %i.r = call noundef i64 @_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS5_6X86_64EEESt4spanIS9_Lm18446744073709551615EEEEZNS5_12sort_dynsymsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_E15median_of_threeERKSD_mmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.h, i64 noundef %i.l, i64 noundef %i.q) ; 2 uses
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.019.0.copyload = load ptr, ptr %2, align 8, !tbaa !714 ; 3 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.sroa.019.0.copyload, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !570
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !570
  store ptr %i.u, ptr %.sroa.019.0.copyload, align 8, !tbaa !570
  store ptr %i.t, ptr %i.s, align 8, !tbaa !570
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.v = load i64, ptr %i.d, align 8, !tbaa !1841
  br label %bb.d

bb.d:                                             ; preds = %bb.aj, %bb.c
  %.028 = phi i64 [ %i.v, %bb.c ], [ %i.au, %bb.aj ]
  %.0 = phi i64 [ 0, %bb.c ], [ %i.gd, %bb.aj ]   ; 3 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !1850, !nonnull !599, !align !600
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !570  ; 7 uses
  %i.y = load ptr, ptr %2, align 8, !tbaa !1835
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EENS1_15quick_sort_bodyIS8_SG_EEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE:bb.a
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(128) dereferenceable(128) %0) #16, !inline_history !150
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = atomicrmw add ptr %i.g, i32 -1 seq_cst, align 4
  %i.i = add i32 %i.h, -1
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EENS1_15quick_sort_bodyIS8_SG_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.k, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.k = load ptr, ptr %.019.i.i, align 8, !tbaa !747 ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !745
  %i.n = inttoptr i64 %i.m to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #16
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = atomicrmw add ptr %i.o, i32 -1 seq_cst, align 4
  %i.q = add i32 %i.p, -1
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EENS1_15quick_sort_bodyIS8_SG_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.t = atomicrmw add ptr %i.s, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EENS1_15quick_sort_bodyIS8_SG_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v) #16
  br label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EENS1_15quick_sort_bodyIS8_SG_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EENS1_15quick_sort_bodyIS8_SG_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(128) %0, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %1) #16
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_16quick_sort_rangeIPN4mold6ElfRelINS8_6X86_64EEEZNS8_11sort_reldynISA_EEvRNS8_7ContextIT_EEEUlRKSB_SJ_E_EENS1_15quick_sort_bodyISC_SK_EEKNS1_16auto_partitionerEEESL_EEvRSF_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1987
  %i.c = icmp ugt i64 %i.b, 499
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !744    ; 2 uses
  %i.e = icmp ugt i64 %i.d, 1
  br i1 %i.e, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !743   ; 2 uses
  %.not4.i = icmp eq i8 %i.g, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = add i8 %i.g, -1
  store i8 %i.h, ptr %i.f, align 4, !tbaa !743
  store i64 0, ptr %0, align 8, !tbaa !744
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit: ; preds = %bb.b, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr null, ptr %4, align 8, !tbaa !731
  %i.p = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %3) #16, !inline_history !4765 ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.q, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EENS1_15quick_sort_bodyIS8_SG_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.p, align 64, !tbaa !170
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 2 uses
  %i.s = load ptr, ptr %i.j, align 64, !tbaa !1997, !nonnull !599, !align !600
  store ptr %i.s, ptr %i.r, align 64, !tbaa !672
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.u = call noundef i64 @_ZN3tbb6detail2d116quick_sort_rangeIPN4mold6ElfRelINS3_6X86_64EEEZNS3_11sort_reldynIS5_EEvRNS3_7ContextIT_EEEUlRKS6_SE_E_E11split_rangeERSG_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.j), !inline_history !4766
  store i64 %i.u, ptr %i.t, align 8, !tbaa !1987
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.w = load ptr, ptr %i.k, align 16, !tbaa !1988
  %i.x = load i64, ptr %i.l, align 8, !tbaa !1987
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr %i.z, ptr %i.v, align 16, !tbaa !1988
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 96 ; 2 uses
  store ptr null, ptr %i.aa, align 32, !tbaa !1996
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !744
  %i.ad = lshr i64 %i.ac, 1                       ; 2 uses
  store i64 %i.ad, ptr %i.m, align 8, !tbaa !744
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !744
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  store i32 2, ptr %i.ae, align 16, !tbaa !742
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 116
  %i.ag = load i8, ptr %i.n, align 4, !tbaa !743
  store i8 %i.ag, ptr %i.af, align 4, !tbaa !743
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.ai = load i64, ptr %4, align 8, !tbaa !745
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !745
  %i.aj = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3) #16, !inline_history !4767 ; 6 uses
  %i.ak = load ptr, ptr %i.o, align 32, !tbaa !1127
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !747
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 2, ptr %i.al, align 8, !tbaa !748
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.an = load i64, ptr %4, align 8, !tbaa !745
  store i64 %i.an, ptr %i.am, align 8, !tbaa !745
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i8 0, ptr %i.ao, align 8, !tbaa !721
  store ptr %i.aj, ptr %i.o, align 32, !tbaa !1996
  store ptr %i.aj, ptr %i.aa, align 32, !tbaa !1996
  %i.ap = load ptr, ptr %3, align 8, !tbaa !1128
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(128) %i.p, ptr noundef nonnull align 8 dereferenceable(128) %i.ap) #16, !inline_history !4767
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !1987
  %i.ar = icmp ugt i64 %i.aq, 499
  br i1 %i.ar, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.as = load i64, ptr %0, align 8, !tbaa !744   ; 2 uses
  %i.at = icmp ugt i64 %i.as, 1
  br i1 %i.at, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, label %bb.g

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge: ; preds = %bb.f, %bb.i
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !4768

bb.g:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i64 %i.as, 0
  br i1 %.not.i8, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = load i8, ptr %i.i, align 4, !tbaa !743  ; 2 uses
  %.not4.i9 = icmp eq i8 %i.au, 0
  br i1 %.not4.i9, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = add i8 %i.au, -1
  store i8 %i.av, ptr %i.i, align 4, !tbaa !743
  store i64 0, ptr %0, align 8, !tbaa !744
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_16quick_sort_rangeIPN4mold6ElfRelINSA_6X86_64EEEZNSA_11sort_reldynISC_EEvRNSA_7ContextIT_EEEUlRKSD_SL_E_EENS1_15quick_sort_bodyISE_SM_EEKNS1_16auto_partitionerEEESN_EEvRSH_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_16quick_sort_rangeIPN4mold6ElfRelINSA_6X86_64EEEZNSA_11sort_reldynISC_EEvRNSA_7ContextIT_EEEUlRKSD_SL_E_EENS1_15quick_sort_bodyISE_SM_EEKNS1_16auto_partitionerEEESN_EEvRSH_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::range_vector.2136", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1987
  %i.c = icmp ugt i64 %i.b, 499
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !743   ; 2 uses
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @_ZNK3tbb6detail2d115quick_sort_bodyIPN4mold6ElfRelINS3_6X86_64EEEZNS3_11sort_reldynIS5_EEvRNS3_7ContextIT_EEEUlRKS6_SE_E_EclERKNS1_16quick_sort_rangeIS7_SF_EE(ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 5 uses
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %5, align 8, !tbaa !177
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !1993
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 116
  br label %bb.e

thread-pre-split:                                 ; preds = %bb.k
  %.promoted.i.pre = load i8, ptr %i.h, align 2, !tbaa !4775 ; 2 uses
  %.pre = load i8, ptr %i.d, align 4, !tbaa !743
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split, %bb.d
  %6 = phi i8 [ %.promoted.i.pre, %thread-pre-split ], [ 1, %bb.d ] ; 3 uses
  %i.o = phi i8 [ %.pre, %thread-pre-split ], [ %i.e, %bb.d ] ; 2 uses
  %i.p = phi i8 [ %.promoted.i.pre, %thread-pre-split ], [ 0, %bb.d ]
  %i.q = icmp ult i8 %i.p, 8
  br i1 %i.q, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.pre.i = load i8, ptr %5, align 8, !tbaa !4776 ; 2 uses
  %.phi.trans.insert.i = zext i8 %.pre.i to i64
  %.phi.trans.insert5.i = getelementptr inbounds nuw i8, ptr %i.i, i64 %.phi.trans.insert.i
  %.pre6.i = load i8, ptr %.phi.trans.insert5.i, align 1, !tbaa !177
  %i.r = icmp ult i8 %.pre6.i, %i.o
  br i1 %i.r, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EE13split_to_fillEh.exit

bb.f:                                             ; preds = %bb.g
  %i.s = icmp ult i8 %i.ar, %i.o
  br i1 %i.s, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EE13split_to_fillEh.exit, !llvm.loop !4769

_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EE12is_divisibleEh.exit.i: ; preds = %.lr.ph.i, %bb.f
  %i.t = phi i8 [ %i.as, %bb.f ], [ %.pre.i, %.lr.ph.i ] ; 2 uses
  %i.u = phi i8 [ %i.aw, %bb.f ], [ %6, %.lr.ph.i ]
  %i.v = zext i8 %i.t to i64                      ; 3 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1987
  %i.z = icmp ugt i64 %i.y, 499
  br i1 %i.z, label %bb.g, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EE13split_to_fillEh.exit

bb.g:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EE12is_divisibleEh.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.v ; 2 uses
  %i.ab = add nuw i8 %i.t, 1
  %i.ac = and i8 %i.ab, 7                         ; 2 uses
  store i8 %i.ac, ptr %5, align 8, !tbaa !4776
  %i.ad = zext nneg i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.ad ; 5 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.v ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !1993
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !1997, !nonnull !599, !align !600
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !672
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = call noundef i64 @_ZN3tbb6detail2d116quick_sort_rangeIPN4mold6ElfRelINS3_6X86_64EEEZNS3_11sort_reldynIS5_EEvRNS3_7ContextIT_EEEUlRKS6_SE_E_E11split_rangeERSG_(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ae)
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !1987
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1988
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !1987
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.ap, ptr %i.aj, align 8, !tbaa !1988
  %i.aq = load i8, ptr %i.aa, align 1, !tbaa !177
  %i.ar = add i8 %i.aq, 1                         ; 3 uses
  store i8 %i.ar, ptr %i.aa, align 1, !tbaa !177
  %i.as = load i8, ptr %5, align 8, !tbaa !4776   ; 2 uses
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.at
  store i8 %i.ar, ptr %i.au, align 1, !tbaa !177
  %i.av = load i8, ptr %i.h, align 2, !tbaa !4775
  %i.aw = add i8 %i.av, 1                         ; 5 uses
  store i8 %i.aw, ptr %i.h, align 2, !tbaa !4775
  %i.ax = icmp ult i8 %i.aw, 8
  br i1 %i.ax, label %bb.f, label %._ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EE13split_to_fillEh.exit.loopexit_crit_edge, !llvm.loop !4769

._ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EE13split_to_fillEh.exit.loopexit_crit_edge: ; preds = %bb.g
  br label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EE13split_to_fillEh.exit, !llvm.loop !4769

_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EE13split_to_fillEh.exit: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EE12is_divisibleEh.exit.i, %bb.f, %.lr.ph.i, %._ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EE13split_to_fillEh.exit.loopexit_crit_edge, %bb.e
  %.pr12 = phi i8 [ %6, %bb.e ], [ %i.aw, %._ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EE13split_to_fillEh.exit.loopexit_crit_edge ], [ %6, %.lr.ph.i ], [ %i.aw, %bb.f ], [ %i.u, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EE12is_divisibleEh.exit.i ] ; 2 uses
  %i.ay = load ptr, ptr %i.k, align 32, !tbaa !1996
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load atomic i8, ptr %i.az monotonic, align 1, !range !613, !noundef !599
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.h, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIPN4mold6ElfRelINS6_6X86_64EEEZNS6_11sort_reldynIS8_EEvRNS6_7ContextIT_EEEUlRKS9_SH_E_EENS1_15quick_sort_bodyISA_SI_EEKNS1_16auto_partitionerEEEEEbRSD_.exit_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIPN4mold6ElfRelINS6_6X86_64EEEZNS6_11sort_reldynIS8_EEvRNS6_7ContextIT_EEEUlRKS9_SH_E_EENS1_15quick_sort_bodyISA_SI_EEKNS1_16auto_partitionerEEEEEbRSD_.exit_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EE13split_to_fillEh.exit
  %.pre13 = load i8, ptr %5, align 8, !tbaa !4776
  %.pre15 = zext i8 %.pre13 to i64
  br label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIPN4mold6ElfRelINS6_6X86_64EEEZNS6_11sort_reldynIS8_EEvRNS6_7ContextIT_EEEUlRKS9_SH_E_EENS1_15quick_sort_bodyISA_SI_EEKNS1_16auto_partitionerEEEEEbRSD_.exit

bb.h:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EE13split_to_fillEh.exit
  %i.bc = load i8, ptr %i.d, align 4, !tbaa !743
  %i.bd = add i8 %i.bc, 1                         ; 2 uses
  store i8 %i.bd, ptr %i.d, align 4, !tbaa !743
  %i.be = icmp ugt i8 %.pr12, 1
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bf = load i8, ptr %i.g, align 1, !tbaa !4777
  %i.bg = zext i8 %i.bf to i64                    ; 2 uses
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bg
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr null, ptr %4, align 8, !tbaa !731
  %i.bk = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %3) #16, !inline_history !4770 ; 9 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bl, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EENS1_15quick_sort_bodyIS8_SG_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.bk, align 64, !tbaa !170
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !tbaa.struct !1993
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 96 ; 2 uses
  store ptr null, ptr %i.bn, align 32, !tbaa !1996
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 104
  %i.bp = load i64, ptr %i.m, align 8, !tbaa !744
  %i.bq = lshr i64 %i.bp, 1                       ; 2 uses
  store i64 %i.bq, ptr %i.m, align 8, !tbaa !744
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !744
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 112
  store i32 2, ptr %i.br, align 16, !tbaa !742
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 116
  %i.bt = load i8, ptr %i.n, align 4, !tbaa !743
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 120
  %i.bv = load i64, ptr %4, align 8, !tbaa !745
  store i64 %i.bv, ptr %i.bu, align 8, !tbaa !745
  %i.bw = sub i8 %i.bt, %i.bj
  store i8 %i.bw, ptr %i.bs, align 4, !tbaa !743
  %i.bx = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3) #16, !inline_history !4771 ; 6 uses
  %i.by = load ptr, ptr %i.k, align 32, !tbaa !1127
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !747
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i32 2, ptr %i.bz, align 8, !tbaa !748
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cb = load i64, ptr %4, align 8, !tbaa !745
  store i64 %i.cb, ptr %i.ca, align 8, !tbaa !745
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store i8 0, ptr %i.cc, align 8, !tbaa !721
  store ptr %i.bx, ptr %i.k, align 32, !tbaa !1996
  store ptr %i.bx, ptr %i.bn, align 32, !tbaa !1996
  %i.cd = load ptr, ptr %3, align 8, !tbaa !1128
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(128) %i.bk, ptr noundef nonnull align 8 dereferenceable(128) %i.cd) #16, !inline_history !4771
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.ce = load i8, ptr %i.h, align 2, !tbaa !4775
  %i.cf = add i8 %i.ce, -1                        ; 2 uses
  store i8 %i.cf, ptr %i.h, align 2, !tbaa !4775
  %i.cg = load i8, ptr %i.g, align 1, !tbaa !4777
  %i.ch = add i8 %i.cg, 1
  %i.ci = and i8 %i.ch, 7
  store i8 %i.ci, ptr %i.g, align 1, !tbaa !4777
  br label %thread-pre-split11

bb.j:                                             ; preds = %bb.h
  %i.cj = load i8, ptr %5, align 8, !tbaa !4776
  %i.ck = zext i8 %i.cj to i64                    ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !177
  %i.cn = icmp ult i8 %i.cm, %i.bd
  br i1 %i.cn, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIPN4mold6ElfRelINS6_6X86_64EEEZNS6_11sort_reldynIS8_EEvRNS6_7ContextIT_EEEUlRKS9_SH_E_EENS1_15quick_sort_bodyISA_SI_EEKNS1_16auto_partitionerEEEEEbRSD_.exit

_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EE12is_divisibleEh.exit: ; preds = %bb.j
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %i.ck
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !1987
  %i.cr = icmp ugt i64 %i.cq, 499
  br i1 %i.cr, label %thread-pre-split11, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIPN4mold6ElfRelINS6_6X86_64EEEZNS6_11sort_reldynIS8_EEvRNS6_7ContextIT_EEEUlRKS9_SH_E_EENS1_15quick_sort_bodyISA_SI_EEKNS1_16auto_partitionerEEEEEbRSD_.exit

_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIPN4mold6ElfRelINS6_6X86_64EEEZNS6_11sort_reldynIS8_EEvRNS6_7ContextIT_EEEUlRKS9_SH_E_EENS1_15quick_sort_bodyISA_SI_EEKNS1_16auto_partitionerEEEEEbRSD_.exit: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIPN4mold6ElfRelINS6_6X86_64EEEZNS6_11sort_reldynIS8_EEvRNS6_7ContextIT_EEEUlRKS9_SH_E_EENS1_15quick_sort_bodyISA_SI_EEKNS1_16auto_partitionerEEEEEbRSD_.exit_crit_edge, %bb.j, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre15, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIPN4mold6ElfRelINS6_6X86_64EEEZNS6_11sort_reldynIS8_EEvRNS6_7ContextIT_EEEUlRKS9_SH_E_EENS1_15quick_sort_bodyISA_SI_EEKNS1_16auto_partitionerEEEEEbRSD_.exit_crit_edge ], [ %i.ck, %bb.j ], [ %i.ck, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EE12is_divisibleEh.exit ]
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.pre-phi
  call void @_ZNK3tbb6detail2d115quick_sort_bodyIPN4mold6ElfRelINS3_6X86_64EEEZNS3_11sort_reldynIS5_EEvRNS3_7ContextIT_EEEUlRKS6_SE_E_EclERKNS1_16quick_sort_rangeIS7_SF_EE(ptr noundef nonnull align 1 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.cs)
  %i.ct = load i8, ptr %i.h, align 2, !tbaa !4775
  %i.cu = add i8 %i.ct, -1                        ; 2 uses
  store i8 %i.cu, ptr %i.h, align 2, !tbaa !4775
  %i.cv = load i8, ptr %5, align 8, !tbaa !4776
  %i.cw = add i8 %i.cv, 7
  %i.cx = and i8 %i.cw, 7
  store i8 %i.cx, ptr %5, align 8, !tbaa !4776
  br label %thread-pre-split11

thread-pre-split11:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIPN4mold6ElfRelINS6_6X86_64EEEZNS6_11sort_reldynIS8_EEvRNS6_7ContextIT_EEEUlRKS9_SH_E_EENS1_15quick_sort_bodyISA_SI_EEKNS1_16auto_partitionerEEEEEbRSD_.exit, %bb.i
  %i.cy = phi i8 [ %i.cf, %bb.i ], [ %i.cu, %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIPN4mold6ElfRelINS6_6X86_64EEEZNS6_11sort_reldynIS8_EEvRNS6_7ContextIT_EEEUlRKS9_SH_E_EENS1_15quick_sort_bodyISA_SI_EEKNS1_16auto_partitionerEEEEEbRSD_.exit ], [ %.pr12, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EE12is_divisibleEh.exit ]
  %i.cz = icmp eq i8 %i.cy, 0
  br i1 %i.cz, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %thread-pre-split11
  %i.da = load ptr, ptr %3, align 8, !tbaa !1128  ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 15
  %i.dc = load atomic i8, ptr %i.db monotonic, align 1
  %i.dd = icmp eq i8 %i.dc, -1
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.df = load ptr, ptr %i.de, align 8
  %.0.i.i = select i1 %i.dd, ptr %i.df, ptr %i.da
  %i.dg = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i) #16
  br i1 %i.dg, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EED2Ev.exit, label %thread-pre-split, !llvm.loop !4772

_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EED2Ev.exit: ; preds = %thread-pre-split11, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.l

bb.l:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIPN4mold6ElfRelINS4_6X86_64EEEZNS4_11sort_reldynIS6_EEvRNS4_7ContextIT_EEEUlRKS7_SF_E_EELh8EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef i64 @_ZN3tbb6detail2d116quick_sort_rangeIPN4mold6ElfRelINS3_6X86_64EEEZNS3_11sort_reldynIS5_EEvRNS3_7ContextIT_EEEUlRKS6_SE_E_E11split_rangeERSG_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"struct.mold::ElfRel", align 1     ; 4 uses
  %3 = alloca %"struct.mold::ElfRel", align 1     ; 4 uses
  %4 = alloca %"struct.mold::ElfRel", align 1     ; 4 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1988 ; 7 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !903
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1987
  %i.f = lshr i64 %i.e, 3                         ; 7 uses
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = call noundef i64 @_ZNK3tbb6detail2d116quick_sort_rangeIPN4mold6ElfRelINS3_6X86_64EEEZNS3_11sort_reldynIS5_EEvRNS3_7ContextIT_EEEUlRKS6_SE_E_E15median_of_threeERKS7_mmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0, i64 noundef %i.f, i64 noundef %i.g)
  %i.i = mul nuw nsw i64 %i.f, 3
  %i.j = shl nuw nsw i64 %i.f, 2
  %i.k = mul nuw i64 %i.f, 5
  %i.l = call noundef i64 @_ZNK3tbb6detail2d116quick_sort_rangeIPN4mold6ElfRelINS3_6X86_64EEEZNS3_11sort_reldynIS5_EEvRNS3_7ContextIT_EEEUlRKS6_SE_E_E15median_of_threeERKS7_mmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.i, i64 noundef %i.j, i64 noundef %i.k)
  %i.m = mul nuw i64 %i.f, 6
  %i.n = mul nuw i64 %i.f, 7
  %i.o = load i64, ptr %i.d, align 8, !tbaa !1987
  %i.p = add i64 %i.o, -1
  %i.q = call noundef i64 @_ZNK3tbb6detail2d116quick_sort_rangeIPN4mold6ElfRelINS3_6X86_64EEEZNS3_11sort_reldynIS5_EEvRNS3_7ContextIT_EEEUlRKS6_SE_E_E15median_of_threeERKS7_mmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.m, i64 noundef %i.n, i64 noundef %i.p)
  %i.r = call noundef i64 @_ZNK3tbb6detail2d116quick_sort_rangeIPN4mold6ElfRelINS3_6X86_64EEEZNS3_11sort_reldynIS5_EEvRNS3_7ContextIT_EEEUlRKS6_SE_E_E15median_of_threeERKS7_mmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.h, i64 noundef %i.l, i64 noundef %i.q) ; 2 uses
  %.not = icmp eq i64 %i.r, 0
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !903 ; 5 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.r ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(24) %.pre, i64 24, i1 false), !tbaa.struct !1032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.pre, ptr noundef nonnull align 1 dereferenceable(24) %i.s, i64 24, i1 false), !tbaa.struct !1032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.s, ptr noundef nonnull align 1 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !1032
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = load i64, ptr %i.d, align 8, !tbaa !1987
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.026 = phi i64 [ 0, %bb.c ], [ %i.ak, %bb.f ]  ; 3 uses
  %.0 = phi i64 [ %i.t, %bb.c ], [ %i.w, %bb.f ]
  %.0.copyload.i.i = load i32, ptr %i.u, align 1  ; 2 uses
  %switch.selectcmp.i.i = icmp eq i32 %.0.copyload.i.i, 37
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 2, i32 1
  %switch.selectcmp4.i.i = icmp eq i32 %.0.copyload.i.i, 8
  %switch.select5.i.i = select i1 %switch.selectcmp4.i.i, i32 0, i32 %switch.select.i.i ; 4 uses
  br label %.backedge45

.backedge45:                                      ; preds = %.backedge45.backedge, %bb.d
  %.1 = phi i64 [ %.0, %bb.d ], [ %i.w, %.backedge45.backedge ] ; 2 uses
  %i.w = add i64 %.1, -1                          ; 8 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.w ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.0.copyload.i8.i = load i32, ptr %i.y, align 1 ; 2 uses
  %switch.selectcmp.i9.i = icmp eq i32 %.0.copyload.i8.i, 37
  %switch.select.i10.i = select i1 %switch.selectcmp.i9.i, i32 2, i32 1
  %switch.selectcmp4.i11.i = icmp eq i32 %.0.copyload.i8.i, 8
  %switch.select5.i12.i = select i1 %switch.selectcmp4.i11.i, i32 0, i32 %switch.select.i10.i ; 2 uses
  %i.z = icmp eq i32 %switch.select5.i.i, %switch.select5.i12.i
  br i1 %i.z, label %.split, label %_ZZN4mold11sort_reldynINS_6X86_64EEEvRNS_7ContextIT_EEENKUlRKNS_6ElfRelIS1_EES9_E_clES9_S9_.exit

.split:                                           ; preds = %.backedge45
  %i.aa = load i64, ptr %i.x, align 1, !tbaa !177
  %i.ab = load i64, ptr %i.c, align 1, !tbaa !177
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.ad = load i32, ptr %i.ac, align 1, !tbaa !177 ; 2 uses
  %i.ae = load i32, ptr %i.v, align 1, !tbaa !177 ; 2 uses
  %i.af = icmp eq i32 %i.ae, %i.ad
  %i.ag = icmp ult i32 %i.ae, %i.ad
end_hunk_2
