Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/input-files.cc.X86_64?download=true
inline.NumInlined: 5152
inline.NumDeleted: 2381
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EENS1_15quick_sort_bodyISF_SJ_EEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE:bb.a
  br i1 %i.j, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EENS1_15quick_sort_bodyISF_SJ_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.k, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.k = load ptr, ptr %.019.i.i, align 8, !tbaa !723 ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !721
  %i.n = inttoptr i64 %i.m to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #14
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = atomicrmw sub ptr %i.o, i32 1 seq_cst, align 4
  %i.q = add i32 %i.p, -1
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EENS1_15quick_sort_bodyISF_SJ_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.t = atomicrmw sub ptr %i.s, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EENS1_15quick_sort_bodyISF_SJ_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v) #14
  br label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EENS1_15quick_sort_bodyISF_SJ_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EENS1_15quick_sort_bodyISF_SJ_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(128) %0, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %1) #14
  ret ptr null
}

declare noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvmSt11align_val_t(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINSA_6X86_64EEESt6vectorISE_SaISE_EEEEZZNSA_10SharedFileISC_E14get_symbols_atESE_ENKUlvE_clEvEUlSE_SE_E_EENS1_15quick_sort_bodyISJ_SN_EEKNS1_16auto_partitionerEEESO_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !701
  %i.c = icmp ugt i64 %i.b, 499
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !720    ; 2 uses
  %i.e = icmp ugt i64 %i.d, 1
  br i1 %i.e, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !719   ; 2 uses
  %.not4.i = icmp eq i8 %i.g, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = add i8 %i.g, -1
  store i8 %i.h, ptr %i.f, align 4, !tbaa !719
  store i64 0, ptr %0, align 8, !tbaa !720
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr null, ptr %4, align 8, !tbaa !704
  %i.p = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %3) #14, !inline_history !1358 ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.q, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EENS1_15quick_sort_bodyISF_SJ_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.p, align 64, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 2 uses
  %i.s = load ptr, ptr %i.j, align 64, !tbaa !735, !nonnull !108
  store ptr %i.s, ptr %i.r, align 64, !tbaa !549
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.u = call noundef i64 @_ZN3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZZNS5_10SharedFileIS7_E14get_symbols_atES9_ENKUlvE_clEvEUlS9_S9_E_E11split_rangeERSJ_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.j), !inline_history !1359
  store i64 %i.u, ptr %i.t, align 8, !tbaa !701
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.w = load i64, ptr %i.l, align 8, !tbaa !701
  %i.x = load ptr, ptr %i.k, align 16, !tbaa !736
  %i.y = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.v, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 96 ; 2 uses
  store ptr null, ptr %i.aa, align 32, !tbaa !731
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !720
  %i.ad = lshr i64 %i.ac, 1                       ; 2 uses
  store i64 %i.ad, ptr %i.m, align 8, !tbaa !720
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !720
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  store i32 2, ptr %i.ae, align 16, !tbaa !718
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 116
  %i.ag = load i8, ptr %i.n, align 4, !tbaa !719
  store i8 %i.ag, ptr %i.af, align 4, !tbaa !719
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.ai = load i64, ptr %4, align 8, !tbaa !721
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !721
  %i.aj = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3) #14, !inline_history !1360 ; 6 uses
  %i.ak = load ptr, ptr %i.o, align 32, !tbaa !737
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !723
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 2, ptr %i.al, align 8, !tbaa !724
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.an = load i64, ptr %4, align 8, !tbaa !721
  store i64 %i.an, ptr %i.am, align 8, !tbaa !721
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i8 0, ptr %i.ao, align 8, !tbaa !79
  store ptr %i.aj, ptr %i.o, align 32, !tbaa !731
  store ptr %i.aj, ptr %i.aa, align 32, !tbaa !731
  %i.ap = load ptr, ptr %3, align 8, !tbaa !738
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(128) %i.p, ptr noundef nonnull align 8 dereferenceable(128) %i.ap) #14, !inline_history !1360
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !701
  %i.ar = icmp ugt i64 %i.aq, 499
  br i1 %i.ar, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.as = load i64, ptr %0, align 8, !tbaa !720   ; 2 uses
  %i.at = icmp ugt i64 %i.as, 1
  br i1 %i.at, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, label %bb.g

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge: ; preds = %bb.f, %bb.i
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !1361

bb.g:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i64 %i.as, 0
  br i1 %.not.i8, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = load i8, ptr %i.i, align 4, !tbaa !719  ; 2 uses
  %.not4.i9 = icmp eq i8 %i.au, 0
  br i1 %.not4.i9, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = add i8 %i.au, -1
  store i8 %i.av, ptr %i.i, align 4, !tbaa !719
  store i64 0, ptr %0, align 8, !tbaa !720
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINSC_6X86_64EEESt6vectorISG_SaISG_EEEEZZNSC_10SharedFileISE_E14get_symbols_atESG_ENKUlvE_clEvEUlSG_SG_E_EENS1_15quick_sort_bodyISL_SP_EEKNS1_16auto_partitionerEEESQ_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

declare noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINSC_6X86_64EEESt6vectorISG_SaISG_EEEEZZNSC_10SharedFileISE_E14get_symbols_atESG_ENKUlvE_clEvEUlSG_SG_E_EENS1_15quick_sort_bodyISL_SP_EEKNS1_16auto_partitionerEEESQ_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::range_vector", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !701
  %i.c = icmp ugt i64 %i.b, 499
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !719   ; 2 uses
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @_ZNK3tbb6detail2d115quick_sort_bodyIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZZNS5_10SharedFileIS7_E14get_symbols_atES9_ENKUlvE_clEvEUlS9_S9_E_EclERKNS1_16quick_sort_rangeISE_SI_EE(ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 5 uses
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %5, align 8, !tbaa !77
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !728
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 116
  br label %bb.e

thread-pre-split:                                 ; preds = %bb.k
  %.promoted.i.pre = load i8, ptr %i.h, align 2, !tbaa !1368
  %.pre = load i8, ptr %i.d, align 4, !tbaa !719
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split, %bb.d
  %i.o = phi i8 [ %.pre, %thread-pre-split ], [ %i.e, %bb.d ] ; 2 uses
  %i.p = phi i8 [ %.promoted.i.pre, %thread-pre-split ], [ 1, %bb.d ] ; 4 uses
  %i.q = icmp ult i8 %i.p, 8
  br i1 %i.q, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.pre.i = load i8, ptr %5, align 8, !tbaa !1369 ; 2 uses
  %.phi.trans.insert.i = zext i8 %.pre.i to i64
  %.phi.trans.insert5.i = getelementptr inbounds nuw i8, ptr %i.i, i64 %.phi.trans.insert.i
  %.pre6.i = load i8, ptr %.phi.trans.insert5.i, align 1, !tbaa !77
  %i.r = icmp ult i8 %.pre6.i, %i.o
  br i1 %i.r, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE13split_to_fillEh.exit

bb.f:                                             ; preds = %bb.g
  %i.s = icmp ult i8 %i.ar, %i.o
  br i1 %i.s, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE13split_to_fillEh.exit, !llvm.loop !1362

_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE12is_divisibleEh.exit.i: ; preds = %.lr.ph.i, %bb.f
  %i.t = phi i8 [ %i.as, %bb.f ], [ %.pre.i, %.lr.ph.i ] ; 2 uses
  %i.u = phi i8 [ %i.aw, %bb.f ], [ %i.p, %.lr.ph.i ]
  %i.v = zext i8 %i.t to i64                      ; 3 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !701
  %i.z = icmp ugt i64 %i.y, 499
  br i1 %i.z, label %bb.g, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE13split_to_fillEh.exit

bb.g:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE12is_divisibleEh.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.v ; 2 uses
  %i.ab = add nuw i8 %i.t, 1
  %i.ac = and i8 %i.ab, 7                         ; 2 uses
  store i8 %i.ac, ptr %5, align 8, !tbaa !1369
  %i.ad = zext nneg i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.ad ; 5 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.v ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !728
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !735, !nonnull !108
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !549
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = call noundef i64 @_ZN3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZZNS5_10SharedFileIS7_E14get_symbols_atES9_ENKUlvE_clEvEUlS9_S9_E_E11split_rangeERSJ_(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ae)
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !701
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !701
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !736
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.am
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ap, ptr %i.aj, align 8
  %i.aq = load i8, ptr %i.aa, align 1, !tbaa !77
  %i.ar = add i8 %i.aq, 1                         ; 3 uses
  store i8 %i.ar, ptr %i.aa, align 1, !tbaa !77
  %i.as = load i8, ptr %5, align 8, !tbaa !1369   ; 2 uses
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.at
  store i8 %i.ar, ptr %i.au, align 1, !tbaa !77
  %i.av = load i8, ptr %i.h, align 2, !tbaa !1368
  %i.aw = add i8 %i.av, 1                         ; 5 uses
  store i8 %i.aw, ptr %i.h, align 2, !tbaa !1368
  %i.ax = icmp ult i8 %i.aw, 8
  br i1 %i.ax, label %bb.f, label %._ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE13split_to_fillEh.exit.loopexit_crit_edge, !llvm.loop !1362

._ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE13split_to_fillEh.exit.loopexit_crit_edge: ; preds = %bb.g
  br label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE13split_to_fillEh.exit, !llvm.loop !1362

_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE13split_to_fillEh.exit: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE12is_divisibleEh.exit.i, %bb.f, %.lr.ph.i, %._ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE13split_to_fillEh.exit.loopexit_crit_edge, %bb.e
  %.pr12 = phi i8 [ %i.p, %bb.e ], [ %i.aw, %._ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE13split_to_fillEh.exit.loopexit_crit_edge ], [ %i.p, %.lr.ph.i ], [ %i.aw, %bb.f ], [ %i.u, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE12is_divisibleEh.exit.i ] ; 2 uses
  %i.ay = load ptr, ptr %i.k, align 32, !tbaa !731
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load atomic i8, ptr %i.az monotonic, align 1, !range !107, !noundef !108
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.h, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EENS1_15quick_sort_bodyISH_SL_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EENS1_15quick_sort_bodyISH_SL_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE13split_to_fillEh.exit
  %.pre13 = load i8, ptr %5, align 8, !tbaa !1369
  %.pre15 = zext i8 %.pre13 to i64
  br label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EENS1_15quick_sort_bodyISH_SL_EEKNS1_16auto_partitionerEEEEEbRT_.exit

bb.h:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE13split_to_fillEh.exit
  %i.bc = load i8, ptr %i.d, align 4, !tbaa !719
  %i.bd = add i8 %i.bc, 1                         ; 2 uses
  store i8 %i.bd, ptr %i.d, align 4, !tbaa !719
  %i.be = icmp ugt i8 %.pr12, 1
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bf = load i8, ptr %i.g, align 1, !tbaa !1370
  %i.bg = zext i8 %i.bf to i64                    ; 2 uses
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bg
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr null, ptr %4, align 8, !tbaa !704
  %i.bk = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %3) #14, !inline_history !1363 ; 9 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bl, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EENS1_15quick_sort_bodyISF_SJ_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.bk, align 64, !tbaa !35
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !tbaa.struct !728
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 96 ; 2 uses
  store ptr null, ptr %i.bn, align 32, !tbaa !731
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 104
  %i.bp = load i64, ptr %i.m, align 8, !tbaa !720
  %i.bq = lshr i64 %i.bp, 1                       ; 2 uses
  store i64 %i.bq, ptr %i.m, align 8, !tbaa !720
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !720
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 112
  store i32 2, ptr %i.br, align 16, !tbaa !718
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 116
  %i.bt = load i8, ptr %i.n, align 4, !tbaa !719
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 120
  %i.bv = load i64, ptr %4, align 8, !tbaa !721
  store i64 %i.bv, ptr %i.bu, align 8, !tbaa !721
  %i.bw = sub i8 %i.bt, %i.bj
  store i8 %i.bw, ptr %i.bs, align 4, !tbaa !719
  %i.bx = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3) #14, !inline_history !1364 ; 6 uses
  %i.by = load ptr, ptr %i.k, align 32, !tbaa !737
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !723
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i32 2, ptr %i.bz, align 8, !tbaa !724
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cb = load i64, ptr %4, align 8, !tbaa !721
  store i64 %i.cb, ptr %i.ca, align 8, !tbaa !721
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store i8 0, ptr %i.cc, align 8, !tbaa !79
  store ptr %i.bx, ptr %i.k, align 32, !tbaa !731
  store ptr %i.bx, ptr %i.bn, align 32, !tbaa !731
  %i.cd = load ptr, ptr %3, align 8, !tbaa !738
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(128) %i.bk, ptr noundef nonnull align 8 dereferenceable(128) %i.cd) #14, !inline_history !1364
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.ce = load i8, ptr %i.h, align 2, !tbaa !1368
  %i.cf = add i8 %i.ce, -1                        ; 2 uses
  store i8 %i.cf, ptr %i.h, align 2, !tbaa !1368
  %i.cg = load i8, ptr %i.g, align 1, !tbaa !1370
  %i.ch = add i8 %i.cg, 1
  %i.ci = and i8 %i.ch, 7
  store i8 %i.ci, ptr %i.g, align 1, !tbaa !1370
  br label %thread-pre-split11

bb.j:                                             ; preds = %bb.h
  %i.cj = load i8, ptr %5, align 8, !tbaa !1369
  %i.ck = zext i8 %i.cj to i64                    ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !77
  %i.cn = icmp ult i8 %i.cm, %i.bd
  br i1 %i.cn, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EENS1_15quick_sort_bodyISH_SL_EEKNS1_16auto_partitionerEEEEEbRT_.exit

_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE12is_divisibleEh.exit: ; preds = %bb.j
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %i.ck
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !701
  %i.cr = icmp ugt i64 %i.cq, 499
  br i1 %i.cr, label %thread-pre-split11, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EENS1_15quick_sort_bodyISH_SL_EEKNS1_16auto_partitionerEEEEEbRT_.exit

_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EENS1_15quick_sort_bodyISH_SL_EEKNS1_16auto_partitionerEEEEEbRT_.exit: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EENS1_15quick_sort_bodyISH_SL_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge, %bb.j, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre15, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EENS1_15quick_sort_bodyISH_SL_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge ], [ %i.ck, %bb.j ], [ %i.ck, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE12is_divisibleEh.exit ]
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.pre-phi
  call void @_ZNK3tbb6detail2d115quick_sort_bodyIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZZNS5_10SharedFileIS7_E14get_symbols_atES9_ENKUlvE_clEvEUlS9_S9_E_EclERKNS1_16quick_sort_rangeISE_SI_EE(ptr noundef nonnull align 1 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.cs)
  %i.ct = load i8, ptr %i.h, align 2, !tbaa !1368
  %i.cu = add i8 %i.ct, -1                        ; 2 uses
  store i8 %i.cu, ptr %i.h, align 2, !tbaa !1368
  %i.cv = load i8, ptr %5, align 8, !tbaa !1369
  %i.cw = add i8 %i.cv, 7
  %i.cx = and i8 %i.cw, 7
  store i8 %i.cx, ptr %5, align 8, !tbaa !1369
  br label %thread-pre-split11

thread-pre-split11:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EENS1_15quick_sort_bodyISH_SL_EEKNS1_16auto_partitionerEEEEEbRT_.exit, %bb.i
  %i.cy = phi i8 [ %i.cf, %bb.i ], [ %i.cu, %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EENS1_15quick_sort_bodyISH_SL_EEKNS1_16auto_partitionerEEEEEbRT_.exit ], [ %.pr12, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE12is_divisibleEh.exit ]
  %i.cz = icmp eq i8 %i.cy, 0
  br i1 %i.cz, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %thread-pre-split11
  %i.da = load ptr, ptr %3, align 8, !tbaa !738   ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 15
  %i.dc = load atomic i8, ptr %i.db monotonic, align 1
  %i.dd = icmp eq i8 %i.dc, -1
  %6 = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %7 = load ptr, ptr %6, align 8
  %.0.i.i = select i1 %i.dd, ptr %7, ptr %i.da
  %8 = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i) #14
  br i1 %8, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EED2Ev.exit, label %thread-pre-split, !llvm.loop !1365

_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EED2Ev.exit: ; preds = %thread-pre-split11, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.l

bb.l:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EED2Ev.exit, %bb.c
  ret void
}

declare noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef i64 @_ZN3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZZNS5_10SharedFileIS7_E14get_symbols_atES9_ENKUlvE_clEvEUlS9_S9_E_E11split_rangeERSJ_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.413", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !650  ; 2 uses
  store i64 %i.b, ptr %2, align 8, !tbaa !650
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !701
  %i.f = lshr i64 %i.e, 3                         ; 7 uses
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = call noundef i64 @_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZZNS5_10SharedFileIS7_E14get_symbols_atES9_ENKUlvE_clEvEUlS9_S9_E_E15median_of_threeERKSE_mmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0, i64 noundef %i.f, i64 noundef %i.g)
  %i.i = mul nuw nsw i64 %i.f, 3
  %i.j = shl nuw nsw i64 %i.f, 2
  %i.k = mul nuw i64 %i.f, 5
  %i.l = call noundef i64 @_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZZNS5_10SharedFileIS7_E14get_symbols_atES9_ENKUlvE_clEvEUlS9_S9_E_E15median_of_threeERKSE_mmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.i, i64 noundef %i.j, i64 noundef %i.k)
  %i.m = mul nuw i64 %i.f, 6
  %i.n = mul nuw i64 %i.f, 7
  %i.o = load i64, ptr %i.d, align 8, !tbaa !701
  %i.p = add i64 %i.o, -1
  %i.q = call noundef i64 @_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZZNS5_10SharedFileIS7_E14get_symbols_atES9_ENKUlvE_clEvEUlS9_S9_E_E15median_of_threeERKSE_mmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.m, i64 noundef %i.n, i64 noundef %i.p)
  %i.r = call noundef i64 @_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZZNS5_10SharedFileIS7_E14get_symbols_atES9_ENKUlvE_clEvEUlS9_S9_E_E15median_of_threeERKSE_mmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.h, i64 noundef %i.l, i64 noundef %i.q) ; 2 uses
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.019.0.copyload = load ptr, ptr %2, align 8, !tbaa !650 ; 3 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.sroa.019.0.copyload, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !91
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !91
  store ptr %i.u, ptr %.sroa.019.0.copyload, align 8, !tbaa !91
  store ptr %i.t, ptr %i.s, align 8, !tbaa !91
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.v = load i64, ptr %i.d, align 8, !tbaa !701  ; 2 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !736    ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %.028 = phi i64 [ %i.v, %bb.c ], [ %.us-phi, %bb.k ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.c ], [ %i.cl, %bb.k ]    ; 2 uses
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !91   ; 7 uses
  %i.y = load ptr, ptr @_ZN4mold20discarded_comdat_symINS_6X86_64EEE, align 8, !tbaa !91 ; 3 uses
  %i.z = icmp eq ptr %i.x, %i.y                   ; 2 uses
  br i1 %i.z, label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.us, label %.split

_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.us:   ; preds = %bb.d, %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit.us
  %.129.us = phi i64 [ %i.aa, %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit.us ], [ %.028, %bb.d ] ; 2 uses
  %i.aa = add i64 %.129.us, -1                    ; 3 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !91 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, %i.x
  br i1 %i.ad, label %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit.us, label %bb.e

bb.e:                                             ; preds = %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.us
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !95
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sext i32 %i.af to i64
  %i.ai = shl nsw i64 %i.ah, 2
  %i.aj = add nsw i64 %i.ai, %i.ag
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.an = load i32, ptr %i.am, align 4, !tbaa !105
  %i.ao = sext i32 %i.an to i64
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !106
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.ao
  br label %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit.us

_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit.us: ; preds = %bb.e, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.us
  %.0.i7.i.us = phi ptr [ %i.aq, %bb.e ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.us ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i7.i.us, i64 8
  %i.as = load i64, ptr %i.ar, align 1, !tbaa !77
  %i.at = icmp ne i64 %i.as, 0
  %.not.i.us = icmp ugt ptr %.0.i7.i.us, @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty
  %i.au = or i1 %i.at, %.not.i.us
  br i1 %i.au, label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.us, label %.preheader, !llvm.loop !1371

.split:                                           ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !95
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 2
  %i.bb = add nsw i64 %i.ba, %i.ax
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i32, ptr %i.av, align 4, !tbaa !105
  %i.bf = sext i32 %i.be to i64
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !106
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.bf ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 1, !tbaa !77 ; 2 uses
  br label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i

_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i:      ; preds = %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit, %.split
  %.129 = phi i64 [ %.028, %.split ], [ %i.bk, %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit ] ; 2 uses
  %i.bk = add i64 %.129, -1                       ; 3 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !91 ; 4 uses
  %i.bn = icmp eq ptr %i.bm, %i.y
  br i1 %i.bn, label %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !95
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sext i32 %i.bp to i64
  %i.bs = shl nsw i64 %i.br, 2
  %i.bt = add nsw i64 %i.bs, %i.bq
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !105
  %i.by = sext i32 %i.bx to i64
  %i.bz = load ptr, ptr %i.bv, align 8, !tbaa !106
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.by
  br label %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit

_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i, %bb.f
  %.0.i7.i = phi ptr [ %i.ca, %bb.f ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i7.i, i64 8
  %i.cc = load i64, ptr %i.cb, align 1, !tbaa !77 ; 2 uses
  %i.cd = icmp eq i64 %i.bj, %i.cc
  %.not.i = icmp ult ptr %i.bh, %.0.i7.i
  %i.ce = icmp ult i64 %i.bj, %i.cc
  %i.cf = select i1 %i.cd, i1 %.not.i, i1 %i.ce
  br i1 %i.cf, label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i, label %.preheader, !llvm.loop !1371

.preheader:                                       ; preds = %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit, %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit.us
  %.us-phi = phi i64 [ %i.aa, %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit.us ], [ %i.bk, %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit ] ; 5 uses
  %.us-phi62 = phi i64 [ %.129.us, %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit.us ], [ %.129, %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit ]
  %.us-phi66 = phi ptr [ %i.ac, %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit.us ], [ %i.bm, %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit ] ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.w, i64 %.us-phi ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.ck = icmp eq i64 %.0, %.us-phi
  br i1 %i.ck, label %.loopexit, label %.lr.ph

bb.g:                                             ; preds = %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit37
  br i1 %i.dt, label %.loopexit, label %.lr.ph, !llvm.loop !1372

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %.1132 = phi i64 [ %i.cl, %bb.g ], [ %.0, %.preheader ]
  %i.cl = add i64 %.1132, 1                       ; 5 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !91 ; 4 uses
  %i.co = icmp eq ptr %i.cn, %i.y
  br i1 %i.co, label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i33, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !95
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sext i32 %i.cq to i64
  %i.ct = shl nsw i64 %i.cs, 2
  %i.cu = add nsw i64 %i.ct, %i.cr
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 20
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !105
  %i.cz = sext i32 %i.cy to i64
  %i.da = load ptr, ptr %i.cw, align 8, !tbaa !106
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.da, i64 %i.cz
  br label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i33

_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i33:    ; preds = %bb.h, %.lr.ph
  %.0.i.i34 = phi ptr [ %i.db, %bb.h ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %.lr.ph ] ; 2 uses
  br i1 %i.z, label %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit37, label %bb.i

bb.i:                                             ; preds = %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i33
  %i.dc = load i32, ptr %i.ch, align 4, !tbaa !95
  %i.dd = sext i32 %i.dc to i64
  %i.de = shl nsw i64 %i.dd, 2
  %i.df = add nsw i64 %i.de, %i.ci
  %i.dg = inttoptr i64 %i.df to ptr
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = load i32, ptr %i.cj, align 4, !tbaa !105
  %i.dj = sext i32 %i.di to i64
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !106
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %i.dj
  br label %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit37

_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit37: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i33, %bb.i
  %.0.i7.i35 = phi ptr [ %i.dl, %bb.i ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i33 ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEENS1_23quick_sort_pretest_bodyISF_ZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE:bb.a
bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.t = atomicrmw sub ptr %i.s, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEENS1_23quick_sort_pretest_bodyISF_ZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v) #14
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEENS1_23quick_sort_pretest_bodyISF_ZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEENS1_23quick_sort_pretest_bodyISF_ZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(136) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #14
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINSA_6X86_64EEESt6vectorISE_SaISE_EEEEEENS1_23quick_sort_pretest_bodyISJ_ZZNSA_10SharedFileISC_E14get_symbols_atESE_ENKUlvE_clEvEUlSE_SE_E_EEKNS1_16auto_partitionerEEESK_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !739
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !650
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !650
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = icmp ult i64 %i.b, %i.i
  br i1 %i.j, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %0, align 8, !tbaa !720    ; 2 uses
  %i.l = icmp ugt i64 %i.k, 1
  br i1 %i.l, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = load i8, ptr %i.m, align 4, !tbaa !719   ; 2 uses
  %.not4.i = icmp eq i8 %i.n, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add i8 %i.n, -1
  store i8 %i.o, ptr %i.m, align 4, !tbaa !719
  store i64 0, ptr %0, align 8, !tbaa !720
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr null, ptr %4, align 8, !tbaa !704
  %i.x = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3) #14, !inline_history !1374 ; 12 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEENS1_23quick_sort_pretest_bodyISF_ZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.x, align 64, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.aa = load i64, ptr %i.q, align 64            ; 2 uses
  store i64 %i.aa, ptr %i.z, align 64, !tbaa !650
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !650 ; 2 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.aa, %i.ad
  %i.af = ashr exact i64 %i.ae, 3
  %i.ag = sdiv i64 %i.af, 2
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ag ; 2 uses
  store ptr %i.ah, ptr %i.q, align 64, !tbaa !650
  store ptr %i.ah, ptr %i.ab, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.aj = load i64, ptr %i.s, align 16, !tbaa !739
  store i64 %i.aj, ptr %i.ai, align 16, !tbaa !739
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !740
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 104 ; 2 uses
  store ptr null, ptr %i.al, align 8, !tbaa !717
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %i.an = load i64, ptr %i.u, align 16, !tbaa !720
  %i.ao = lshr i64 %i.an, 1                       ; 2 uses
  store i64 %i.ao, ptr %i.u, align 16, !tbaa !720
  store i64 %i.ao, ptr %i.am, align 16, !tbaa !720
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  store i32 2, ptr %i.ap, align 8, !tbaa !718
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 124
  %i.ar = load i8, ptr %i.v, align 4, !tbaa !719
  store i8 %i.ar, ptr %i.aq, align 4, !tbaa !719
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.at = load i64, ptr %4, align 8, !tbaa !721
  store i64 %i.at, ptr %i.as, align 64, !tbaa !721
  %i.au = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3) #14, !inline_history !1375 ; 6 uses
  %i.av = load ptr, ptr %i.w, align 8, !tbaa !737
  store ptr %i.av, ptr %i.au, align 8, !tbaa !723
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 2, ptr %i.aw, align 8, !tbaa !724
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ay = load i64, ptr %4, align 8, !tbaa !721
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !721
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store i8 0, ptr %i.az, align 8, !tbaa !79
  store ptr %i.au, ptr %i.w, align 8, !tbaa !717
  store ptr %i.au, ptr %i.al, align 8, !tbaa !717
  %i.ba = load ptr, ptr %3, align 8, !tbaa !738
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(136) %i.x, ptr noundef nonnull align 8 dereferenceable(128) %i.ba) #14, !inline_history !1375
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !739
  %i.bc = load ptr, ptr %2, align 8, !tbaa !650
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !650
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 3
  %i.bi = icmp ult i64 %i.bb, %i.bh
  br i1 %i.bi, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.bj = load i64, ptr %0, align 8, !tbaa !720   ; 2 uses
  %i.bk = icmp ugt i64 %i.bj, 1
  br i1 %i.bk, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, label %bb.g

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge: ; preds = %bb.f, %bb.i
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !1376

bb.g:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i64 %i.bj, 0
  br i1 %.not.i8, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = load i8, ptr %i.p, align 4, !tbaa !719  ; 2 uses
  %.not4.i9 = icmp eq i8 %i.bl, 0
  br i1 %.not4.i9, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = add i8 %i.bl, -1
  store i8 %i.bm, ptr %i.p, align 4, !tbaa !719
  store i64 0, ptr %0, align 8, !tbaa !720
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINSC_6X86_64EEESt6vectorISG_SaISG_EEEEEENS1_23quick_sort_pretest_bodyISL_ZZNSC_10SharedFileISE_E14get_symbols_atESG_ENKUlvE_clEvEUlSG_SG_E_EEKNS1_16auto_partitionerEEESM_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINSC_6X86_64EEESt6vectorISG_SaISG_EEEEEENS1_23quick_sort_pretest_bodyISL_ZZNSC_10SharedFileISE_E14get_symbols_atESG_ENKUlvE_clEvEUlSG_SG_E_EEKNS1_16auto_partitionerEEESM_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::range_vector.568", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !739
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %2, align 8, !tbaa !650
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !650
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = icmp ult i64 %i.b, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.l = load i8, ptr %i.k, align 4, !tbaa !719   ; 2 uses
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @_ZNK3tbb6detail2d123quick_sort_pretest_bodyIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZZNS5_10SharedFileIS7_E14get_symbols_atES9_ENKUlvE_clEvEUlS9_S9_E_EclERKNS1_13blocked_rangeISE_EE(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 5 uses
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %5, align 8, !tbaa !77
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !1381
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 124
  br label %bb.e

thread-pre-split:                                 ; preds = %bb.k
  %.promoted.i10.pre = load i8, ptr %i.o, align 2, !tbaa !1384
  %.pre = load i8, ptr %i.k, align 4, !tbaa !719
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split, %bb.d
  %i.v = phi i8 [ %.pre, %thread-pre-split ], [ %i.l, %bb.d ] ; 3 uses
  %.promoted.i = phi i8 [ %.promoted.i10.pre, %thread-pre-split ], [ 1, %bb.d ] ; 3 uses
  %i.w = icmp ult i8 %.promoted.i, 8
  br i1 %i.w, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.promoted4.i = load i8, ptr %5, align 8        ; 2 uses
  %.phi.trans.insert.i = zext i8 %.promoted4.i to i64
  %.phi.trans.insert6.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.phi.trans.insert.i
  %.pre.i = load i8, ptr %.phi.trans.insert6.i, align 1, !tbaa !77
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %i.x = phi i8 [ %.pre.i, %.lr.ph.i ], [ %i.bd, %bb.g ]
  %i.y = phi i8 [ %.promoted.i, %.lr.ph.i ], [ %i.bf, %bb.g ] ; 3 uses
  %i.z = phi i8 [ %.promoted4.i, %.lr.ph.i ], [ %i.ap, %bb.g ] ; 2 uses
  %i.aa = zext i8 %i.z to i64                     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.aa ; 2 uses
  %i.ac = icmp ult i8 %i.x, %i.v
  br i1 %i.ac, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE12is_divisibleEh.exit.i: ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.aa ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !739
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !650
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !650
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3
  %i.an = icmp ult i64 %i.af, %i.am
  br i1 %i.an, label %bb.g, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE13split_to_fillEh.exit

bb.g:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE12is_divisibleEh.exit.i
  %i.ao = add nuw i8 %i.z, 1
  %i.ap = and i8 %i.ao, 7                         ; 3 uses
  store i8 %i.ap, ptr %5, align 8, !tbaa !1385
  %i.aq = zext nneg i8 %i.ap to i64               ; 2 uses
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.aq ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !tbaa.struct !1381
  %i.as = load i64, ptr %i.ar, align 8            ; 2 uses
  store i64 %i.as, ptr %i.ad, align 8, !tbaa !650
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !650 ; 2 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.as, %i.av
  %i.ax = ashr exact i64 %i.aw, 3
  %i.ay = sdiv i64 %i.ax, 2
  %i.az = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ay ; 2 uses
  store ptr %i.az, ptr %i.ar, align 8, !tbaa !650
  store ptr %i.az, ptr %i.ag, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !739
  store i64 %i.bb, ptr %i.ae, align 8, !tbaa !739
  %i.bc = load i8, ptr %i.ab, align 1, !tbaa !77
  %i.bd = add i8 %i.bc, 1                         ; 3 uses
  store i8 %i.bd, ptr %i.ab, align 1, !tbaa !77
  %i.be = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.aq
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !77
  %i.bf = add nuw nsw i8 %i.y, 1                  ; 3 uses
  store i8 %i.bf, ptr %i.o, align 2, !tbaa !1384
  %exitcond.not.i = icmp eq i8 %i.bf, 8
  br i1 %exitcond.not.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE13split_to_fillEh.exit.thread, label %bb.f, !llvm.loop !1377

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE13split_to_fillEh.exit: ; preds = %bb.f, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE12is_divisibleEh.exit.i, %bb.e
  %.pr = phi i8 [ %.promoted.i, %bb.e ], [ %i.y, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE12is_divisibleEh.exit.i ], [ %i.y, %bb.f ] ; 2 uses
  %i.bg = load ptr, ptr %i.r, align 8, !tbaa !717
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load atomic i8, ptr %i.bh monotonic, align 1, !range !107, !noundef !108
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.h, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEEENS1_23quick_sort_pretest_bodyISH_ZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.g
  %i.bk = load ptr, ptr %i.r, align 8, !tbaa !717
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load atomic i8, ptr %i.bl monotonic, align 1, !range !107, !noundef !108
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %.thread, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEEENS1_23quick_sort_pretest_bodyISH_ZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge

.thread:                                          ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE13split_to_fillEh.exit.thread
  %i.bo = add i8 %i.v, 1
  store i8 %i.bo, ptr %i.k, align 4, !tbaa !719
  br label %bb.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEEENS1_23quick_sort_pretest_bodyISH_ZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE13split_to_fillEh.exit
  %.pre13 = load i8, ptr %5, align 8, !tbaa !1385
  %.pre15 = zext i8 %.pre13 to i64
  br label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEEENS1_23quick_sort_pretest_bodyISH_ZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EEKNS1_16auto_partitionerEEEEEbRT_.exit

bb.h:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE13split_to_fillEh.exit
  %i.bp = add i8 %i.v, 1                          ; 2 uses
  store i8 %i.bp, ptr %i.k, align 4, !tbaa !719
  %i.bq = icmp ugt i8 %.pr, 1
  br i1 %i.bq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread, %bb.h
  %i.br = load i8, ptr %i.n, align 1, !tbaa !1386
  %i.bs = zext i8 %i.br to i64                    ; 2 uses
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bs
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr null, ptr %4, align 8, !tbaa !704
  %i.bw = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3) #14, !inline_history !1378 ; 10 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bx, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEENS1_23quick_sort_pretest_bodyISF_ZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.bw, align 64, !tbaa !35
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false), !tbaa.struct !1381
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !740
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 104 ; 2 uses
  store ptr null, ptr %i.ca, align 8, !tbaa !717
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 112
  %i.cc = load i64, ptr %i.t, align 16, !tbaa !720
  %i.cd = lshr i64 %i.cc, 1                       ; 2 uses
  store i64 %i.cd, ptr %i.t, align 16, !tbaa !720
  store i64 %i.cd, ptr %i.cb, align 16, !tbaa !720
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 120
  store i32 2, ptr %i.ce, align 8, !tbaa !718
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 124
  %i.cg = load i8, ptr %i.u, align 4, !tbaa !719
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 128
  %i.ci = load i64, ptr %4, align 8, !tbaa !721
  store i64 %i.ci, ptr %i.ch, align 64, !tbaa !721
  %i.cj = sub i8 %i.cg, %i.bv
  store i8 %i.cj, ptr %i.cf, align 4, !tbaa !719
  %i.ck = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3) #14, !inline_history !1379 ; 6 uses
  %i.cl = load ptr, ptr %i.r, align 8, !tbaa !737
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !723
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i32 2, ptr %i.cm, align 8, !tbaa !724
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.co = load i64, ptr %4, align 8, !tbaa !721
  store i64 %i.co, ptr %i.cn, align 8, !tbaa !721
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store i8 0, ptr %i.cp, align 8, !tbaa !79
  store ptr %i.ck, ptr %i.r, align 8, !tbaa !717
  store ptr %i.ck, ptr %i.ca, align 8, !tbaa !717
  %i.cq = load ptr, ptr %3, align 8, !tbaa !738
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(136) %i.bw, ptr noundef nonnull align 8 dereferenceable(128) %i.cq) #14, !inline_history !1379
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.cr = load i8, ptr %i.o, align 2, !tbaa !1384
  %i.cs = add i8 %i.cr, -1                        ; 2 uses
  store i8 %i.cs, ptr %i.o, align 2, !tbaa !1384
  %i.ct = load i8, ptr %i.n, align 1, !tbaa !1386
  %i.cu = add i8 %i.ct, 1
  %i.cv = and i8 %i.cu, 7
  store i8 %i.cv, ptr %i.n, align 1, !tbaa !1386
  br label %thread-pre-split12

bb.j:                                             ; preds = %bb.h
  %i.cw = load i8, ptr %5, align 8, !tbaa !1385
  %i.cx = zext i8 %i.cw to i64                    ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !77
  %i.da = icmp ult i8 %i.cz, %i.bp
  br i1 %i.da, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEEENS1_23quick_sort_pretest_bodyISH_ZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EEKNS1_16auto_partitionerEEEEEbRT_.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE12is_divisibleEh.exit: ; preds = %bb.j
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.cx ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !739
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.df = load ptr, ptr %i.db, align 8, !tbaa !650
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !650
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = ashr exact i64 %i.dj, 3
  %i.dl = icmp ult i64 %i.dd, %i.dk
  br i1 %i.dl, label %thread-pre-split12, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEEENS1_23quick_sort_pretest_bodyISH_ZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EEKNS1_16auto_partitionerEEEEEbRT_.exit

_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEEENS1_23quick_sort_pretest_bodyISH_ZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EEKNS1_16auto_partitionerEEEEEbRT_.exit: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEEENS1_23quick_sort_pretest_bodyISH_ZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge, %bb.j, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre15, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEEENS1_23quick_sort_pretest_bodyISH_ZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge ], [ %i.cx, %bb.j ], [ %i.cx, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE12is_divisibleEh.exit ]
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %.pre-phi
  call void @_ZNK3tbb6detail2d123quick_sort_pretest_bodyIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZZNS5_10SharedFileIS7_E14get_symbols_atES9_ENKUlvE_clEvEUlS9_S9_E_EclERKNS1_13blocked_rangeISE_EE(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.dm)
  %i.dn = load i8, ptr %i.o, align 2, !tbaa !1384
  %i.do = add i8 %i.dn, -1                        ; 2 uses
  store i8 %i.do, ptr %i.o, align 2, !tbaa !1384
  %i.dp = load i8, ptr %5, align 8, !tbaa !1385
  %i.dq = add i8 %i.dp, 7
  %i.dr = and i8 %i.dq, 7
  store i8 %i.dr, ptr %5, align 8, !tbaa !1385
  br label %thread-pre-split12

thread-pre-split12:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEEENS1_23quick_sort_pretest_bodyISH_ZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EEKNS1_16auto_partitionerEEEEEbRT_.exit, %bb.i
  %i.ds = phi i8 [ %i.cs, %bb.i ], [ %i.do, %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEEENS1_23quick_sort_pretest_bodyISH_ZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EEKNS1_16auto_partitionerEEEEEbRT_.exit ], [ %.pr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE12is_divisibleEh.exit ]
  %i.dt = icmp eq i8 %i.ds, 0
  br i1 %i.dt, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %thread-pre-split12
  %i.du = load ptr, ptr %3, align 8, !tbaa !738   ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 15
  %i.dw = load atomic i8, ptr %i.dv monotonic, align 1
  %i.dx = icmp eq i8 %i.dw, -1
  %6 = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %7 = load ptr, ptr %6, align 8
  %.0.i.i = select i1 %i.dx, ptr %7, ptr %i.du
  %8 = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i) #14
  br i1 %8, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EED2Ev.exit, label %thread-pre-split, !llvm.loop !1380

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EED2Ev.exit: ; preds = %thread-pre-split12, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.l

bb.l:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNK3tbb6detail2d123quick_sort_pretest_bodyIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZZNS5_10SharedFileIS7_E14get_symbols_atES9_ENKUlvE_clEvEUlS9_S9_E_EclERKNS1_13blocked_rangeISE_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !650 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i4 = load ptr, ptr %i.a, align 8, !tbaa !650 ; 2 uses
  %i.b = icmp eq ptr %.sroa.0.0.copyload.i4, %.sroa.0.0.copyload.i
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.013 = phi i32 [ 0, %.lr.ph ], [ %i.bb, %bb.h ] ; 2 uses
  %.sroa.07.012 = phi ptr [ %.sroa.0.0.copyload.i4, %.lr.ph ], [ %i.ba, %bb.h ] ; 3 uses
  %i.d = and i32 %.013, 63
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !1388, !nonnull !108, !align !517 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %i.h = load atomic i8, ptr %i.g monotonic, align 1
  %i.i = icmp eq i8 %i.h, -1
  %2 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %3 = load ptr, ptr %2, align 8
  %.0.i.i = select i1 %i.i, ptr %3, ptr %i.f
  %4 = tail call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i) #14
  br i1 %4, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = load ptr, ptr %.sroa.07.012, align 8, !tbaa !91 ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %.sroa.07.012, i64 -8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !91   ; 3 uses
  %i.m = load ptr, ptr @_ZN4mold20discarded_comdat_symINS_6X86_64EEE, align 8, !tbaa !91 ; 2 uses
  %i.n = icmp eq ptr %i.j, %i.m
  br i1 %i.n, label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !95
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sext i32 %i.p to i64
  %i.s = shl nsw i64 %i.r, 2
  %i.t = add nsw i64 %i.s, %i.q
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !105
  %i.y = sext i32 %i.x to i64
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !106
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.y
  br label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i

_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i:      ; preds = %bb.e, %bb.d
  %.0.i.i5 = phi ptr [ %i.aa, %bb.e ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %bb.d ] ; 2 uses
  %i.ab = icmp eq ptr %i.l, %i.m
  br i1 %i.ab, label %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !95
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sext i32 %i.ad to i64
  %i.ag = shl nsw i64 %i.af, 2
  %i.ah = add nsw i64 %i.ag, %i.ae
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !105
  %i.am = sext i32 %i.al to i64
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !106
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.am
  br label %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit

_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i, %bb.f
  %.0.i7.i = phi ptr [ %i.ao, %bb.f ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i5, i64 8
  %i.aq = load i64, ptr %i.ap, align 1, !tbaa !77 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i7.i, i64 8
  %i.as = load i64, ptr %i.ar, align 1, !tbaa !77 ; 2 uses
  %i.at = icmp eq i64 %i.aq, %i.as
  %.not.i = icmp ult ptr %.0.i.i5, %.0.i7.i
  %i.au = icmp ult i64 %i.aq, %i.as
  %i.av = select i1 %i.at, i1 %.not.i, i1 %i.au
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !1388, !nonnull !108, !align !517 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 15
  %i.ay = load atomic i8, ptr %i.ax monotonic, align 1
  %i.az = icmp eq i8 %i.ay, -1
  %5 = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %6 = load ptr, ptr %5, align 8
  %.0.i.i6 = select i1 %i.az, ptr %6, ptr %i.aw
  %7 = tail call noundef zeroext i1 @_ZN3tbb6detail2r122cancel_group_executionERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i6) #14 ; 0 uses
  br label %.loopexit

bb.h:                                             ; preds = %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.07.012, i64 8 ; 2 uses
  %i.bb = add nuw nsw i32 %.013, 1
  %i.bc = icmp eq ptr %i.ba, %.sroa.0.0.copyload.i
  br i1 %i.bc, label %.loopexit, label %bb.b, !llvm.loop !1387

.loopexit:                                        ; preds = %bb.h, %bb.c, %bb.a, %bb.g
  ret void
}

declare noundef zeroext i1 @_ZN3tbb6detail2r122cancel_group_executionERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

declare void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef ptr @_ZN4mold10ShardedMapINS_6SymbolINS_6X86_64EEEE5Shard6insertIZNS_10get_symbolIS2_EEPNS1_IT_EERNS_7ContextIS8_EESt17basic_string_viewIcSt11char_traitsIcEESH_EUlSH_RS3_E_EEPS3_SH_mS8_(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 %1, ptr %2, i64 noundef %3, ptr %4, ptr %5) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %6 = alloca %"struct.std::pair.573", align 8    ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store i64 %3, ptr %6, align 8, !tbaa !742
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %1, ptr %i.c, align 8, !tbaa !83
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !1390
  %i.d = call { ptr, i8 } @_ZNSt8__detail12_Insert_baseISt4pairImSt17basic_string_viewIcSt11char_traitsIcEEES1_IKS6_PN4mold15ShardedMapEntryINS8_6SymbolINS8_6X86_64EEEEEESaISF_ENS_10_Select1stESt8equal_toIS6_ENS8_10ShardedMapISC_E15PassThroughHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEEE11try_emplaceIS6_JDnEEES1_INS_14_Node_iteratorISF_Lb0ELb1EEEbENS_20_Node_const_iteratorISF_Lb0ELb1EEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr null, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i8 } %i.d, 0 ; 2 uses
  %.fca.1.extract = extractvalue { ptr, i8 } %i.d, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.e = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !745
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1391
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1391 ; 4 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1393 ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !1394
  %i.q = icmp eq i64 %i.n, %i.p
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @_ZN4mold10ShardedMapINS_6SymbolINS_6X86_64EEEE5Shard9add_blockEl(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 256)
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !1391 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.pre, i64 -16
  %.pre15 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !1393
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = phi i64 [ %.pre15, %bb.e ], [ %i.n, %bb.d ] ; 2 uses
  %i.s = phi ptr [ %.pre, %bb.e ], [ %i.k, %bb.d ] ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1395
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 -16
  %i.w = add nsw i64 %i.r, 1
  store i64 %i.w, ptr %i.v, align 8, !tbaa !1393
  %i.x = getelementptr inbounds [56 x i8], ptr %i.u, i64 %i.r ; 11 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.x, i8 0, i64 20, i1 false)
  store i32 -1, ptr %i.y, align 4, !tbaa !105
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i32 0, ptr %i.z, align 8, !tbaa !1396
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  store i16 -1, ptr %i.aa, align 4, !tbaa !513
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.ab, i8 0, i64 6, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store i64 %1, ptr %i.ac, align 8, !tbaa !83
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !85
  %i.ad = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 32
  store ptr %i.x, ptr %i.ad, align 8, !tbaa !745
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 33 ; 3 uses
  %i.af = load i16, ptr %i.ae, align 1
  %i.ag = or i16 %i.af, 256                       ; 2 uses
  store i16 %i.ag, ptr %i.ae, align 1
  %.sroa.0.0.copyload.i = load i64, ptr %4, align 8, !tbaa !83 ; 3 uses
  %i.ah = icmp slt i64 %.sroa.0.0.copyload.i, 240
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = trunc i64 %.sroa.0.0.copyload.i to i8
  br label %_ZZN4mold10get_symbolINS_6X86_64EEEPNS_6SymbolIT_EERNS_7ContextIS3_EESt17basic_string_viewIcSt11char_traitsIcEESC_ENKUlSC_RNS2_IS1_EEE_clESC_SE_.exit

bb.h:                                             ; preds = %bb.f
  %i.aj = add nsw i64 %.sroa.0.0.copyload.i, -239
  %i.ak = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aj, i1 false)
  %i.al = sub nuw nsw i64 63, %i.ak
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.al, i64 15)
  %i.am = trunc nuw nsw i64 %.sroa.speculated.i.i.i to i8
  %i.an = or disjoint i8 %i.am, -16
  br label %_ZZN4mold10get_symbolINS_6X86_64EEEPNS_6SymbolIT_EERNS_7ContextIS3_EESt17basic_string_viewIcSt11char_traitsIcEESC_ENKUlSC_RNS2_IS1_EEE_clESC_SE_.exit

_ZZN4mold10get_symbolINS_6X86_64EEEPNS_6SymbolIT_EERNS_7ContextIS3_EESt17basic_string_viewIcSt11char_traitsIcEESC_ENKUlSC_RNS2_IS1_EEE_clESC_SE_.exit: ; preds = %bb.g, %bb.h
  %storemerge.i.i.i = phi i8 [ %i.an, %bb.h ], [ %i.ai, %bb.g ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 35
  store i8 %storemerge.i.i.i, ptr %i.ao, align 1, !tbaa !77
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 2658
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !1397, !range !107, !noundef !108
  %i.ar = shl nuw i8 %i.aq, 7
  %i.as = zext i8 %i.ar to i16
  %i.at = and i16 %i.ag, -129
  %i.au = or disjoint i16 %i.at, %i.as
  store i16 %i.au, ptr %i.ae, align 1
  br label %bb.i

bb.i:                                             ; preds = %_ZZN4mold10get_symbolINS_6X86_64EEEPNS_6SymbolIT_EERNS_7ContextIS3_EESt17basic_string_viewIcSt11char_traitsIcEESC_ENKUlSC_RNS2_IS1_EEE_clESC_SE_.exit, %bb.b
  %.0 = phi ptr [ %i.x, %_ZZN4mold10get_symbolINS_6X86_64EEEPNS_6SymbolIT_EERNS_7ContextIS3_EESt17basic_string_viewIcSt11char_traitsIcEESC_ENKUlSC_RNS2_IS1_EEE_clESC_SE_.exit ], [ %i.g, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN4mold10ShardedMapINS_6SymbolINS_6X86_64EEEE5Shard9add_blockEl(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 153391689
  br i1 %i.a, label %bb.b, label %_ZN4mold13ArenaResource8allocateINS_15ShardedMapEntryINS_6SymbolINS_6X86_64EEEEEEEPT_l.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.71)
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 8589934592)
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.72) ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

_ZN4mold13ArenaResource8allocateINS_15ShardedMapEntryINS_6SymbolINS_6X86_64EEEEEEEPT_l.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1404
  %i.g = mul nuw nsw i64 %1, 56
  %i.h = tail call noundef ptr @_ZN4mold13ArenaResource8allocateEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 noundef %i.g, i64 noundef 8) #14 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1405 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1406
  %.not.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4mold13ArenaResource8allocateINS_15ShardedMapEntryINS_6SymbolINS_6X86_64EEEEEEEPT_l.exit
  store ptr %i.h, ptr %i.k, align 8, !tbaa !1407
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !83
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.n, ptr %i.j, align 8, !tbaa !1405
  br label %_ZNSt6vectorIN4mold10ShardedMapINS0_6SymbolINS0_6X86_64EEEE5BlockESaIS6_EE9push_backEOS6_.exit

bb.d:                                             ; preds = %_ZN4mold13ArenaResource8allocateINS_15ShardedMapEntryINS_6SymbolINS_6X86_64EEEEEEEPT_l.exit
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !1408 ; 4 uses
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 5 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIN4mold10ShardedMapINS0_6SymbolINS0_6X86_64EEEE5BlockESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #29
  unreachable

_ZNKSt6vectorIN4mold10ShardedMapINS0_6SymbolINS0_6X86_64EEEE5BlockESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.t = sdiv exact i64 %i.r, 24                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 384307168202282325)
  %i.x = select i1 %i.v, i64 384307168202282325, i64 %i.w ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = mul nuw nsw i64 %i.x, 24
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #30 ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.r ; 4 uses
  store ptr %i.h, ptr %i.aa, align 8, !tbaa !1407
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 0, ptr %.sroa.5.0..sroa_idx4, align 8, !tbaa !83
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %1, ptr %.sroa.6.0..sroa_idx6, align 8, !tbaa !83
  %i.ab = icmp sgt i64 %i.r, 0
  br i1 %i.ab, label %bb.f, label %_ZNSt6vectorIN4mold10ShardedMapINS0_6SymbolINS0_6X86_64EEEE5BlockESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIN4mold10ShardedMapINS0_6SymbolINS0_6X86_64EEEE5BlockESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %i.o, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIN4mold10ShardedMapINS0_6SymbolINS0_6X86_64EEEE5BlockESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i

_ZNSt6vectorIN4mold10ShardedMapINS0_6SymbolINS0_6X86_64EEEE5BlockESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIN4mold10ShardedMapINS0_6SymbolINS0_6X86_64EEEE5BlockESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.not.i17.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN4mold10ShardedMapINS0_6SymbolINS0_6X86_64EEEE5BlockESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.g
end_hunk_1
