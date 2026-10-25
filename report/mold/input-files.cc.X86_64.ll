Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/input-files.cc.X86_64?download=true
inline.NumInlined: 5152
inline.NumDeleted: 2381
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EENS1_15quick_sort_bodyISF_SJ_EEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE:bb.a

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
  %i.p = atomicrmw add ptr %i.o, i32 -1 seq_cst, align 4
  %i.q = add i32 %i.p, -1
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EENS1_15quick_sort_bodyISF_SJ_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.t = atomicrmw add ptr %i.s, i64 -1 seq_cst, align 8
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
  %i.p = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %3) #14, !inline_history !1308 ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.q, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EENS1_15quick_sort_bodyISF_SJ_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.p, align 64, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 2 uses
  %i.s = load ptr, ptr %i.j, align 64, !tbaa !735, !nonnull !108
  store ptr %i.s, ptr %i.r, align 64, !tbaa !548
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.u = call noundef i64 @_ZN3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZZNS5_10SharedFileIS7_E14get_symbols_atES9_ENKUlvE_clEvEUlS9_S9_E_E11split_rangeERSJ_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.j), !inline_history !1309
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
  %i.aj = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3) #14, !inline_history !1310 ; 6 uses
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
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(128) %i.p, ptr noundef nonnull align 8 dereferenceable(128) %i.ap) #14, !inline_history !1310
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !701
  %i.ar = icmp ugt i64 %i.aq, 499
  br i1 %i.ar, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.as = load i64, ptr %0, align 8, !tbaa !720   ; 2 uses
  %i.at = icmp ugt i64 %i.as, 1
  br i1 %i.at, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, label %bb.g

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge: ; preds = %bb.f, %bb.i
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !1311

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
  %.promoted.i.pre = load i8, ptr %i.h, align 2, !tbaa !1318
  %.pre = load i8, ptr %i.d, align 4, !tbaa !719
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split, %bb.d
  %i.o = phi i8 [ %.pre, %thread-pre-split ], [ %i.e, %bb.d ] ; 2 uses
  %i.p = phi i8 [ %.promoted.i.pre, %thread-pre-split ], [ 1, %bb.d ] ; 4 uses
  %i.q = icmp ult i8 %i.p, 8
  br i1 %i.q, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.pre.i = load i8, ptr %5, align 8, !tbaa !1319 ; 2 uses
  %.phi.trans.insert.i = zext i8 %.pre.i to i64
  %.phi.trans.insert5.i = getelementptr inbounds nuw i8, ptr %i.i, i64 %.phi.trans.insert.i
  %.pre6.i = load i8, ptr %.phi.trans.insert5.i, align 1, !tbaa !77
  %i.r = icmp ult i8 %.pre6.i, %i.o
  br i1 %i.r, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE13split_to_fillEh.exit

bb.f:                                             ; preds = %bb.g
  %i.s = icmp ult i8 %i.ar, %i.o
  br i1 %i.s, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE13split_to_fillEh.exit, !llvm.loop !1312

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
  store i8 %i.ac, ptr %5, align 8, !tbaa !1319
  %i.ad = zext nneg i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.ad ; 5 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.v ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !728
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !735, !nonnull !108
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !548
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
  %i.as = load i8, ptr %5, align 8, !tbaa !1319   ; 2 uses
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.at
  store i8 %i.ar, ptr %i.au, align 1, !tbaa !77
  %i.av = load i8, ptr %i.h, align 2, !tbaa !1318
  %i.aw = add i8 %i.av, 1                         ; 5 uses
  store i8 %i.aw, ptr %i.h, align 2, !tbaa !1318
  %i.ax = icmp ult i8 %i.aw, 8
  br i1 %i.ax, label %bb.f, label %._ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE13split_to_fillEh.exit.loopexit_crit_edge, !llvm.loop !1312

._ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE13split_to_fillEh.exit.loopexit_crit_edge: ; preds = %bb.g
  br label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE13split_to_fillEh.exit, !llvm.loop !1312

_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE13split_to_fillEh.exit: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE12is_divisibleEh.exit.i, %bb.f, %.lr.ph.i, %._ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE13split_to_fillEh.exit.loopexit_crit_edge, %bb.e
  %.pr12 = phi i8 [ %i.p, %bb.e ], [ %i.aw, %._ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE13split_to_fillEh.exit.loopexit_crit_edge ], [ %i.p, %.lr.ph.i ], [ %i.aw, %bb.f ], [ %i.u, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE12is_divisibleEh.exit.i ] ; 2 uses
  %i.ay = load ptr, ptr %i.k, align 32, !tbaa !731
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load atomic i8, ptr %i.az monotonic, align 1, !range !107, !noundef !108
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.h, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EENS1_15quick_sort_bodyISH_SL_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EENS1_15quick_sort_bodyISH_SL_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE13split_to_fillEh.exit
  %.pre13 = load i8, ptr %5, align 8, !tbaa !1319
  %.pre15 = zext i8 %.pre13 to i64
  br label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EENS1_15quick_sort_bodyISH_SL_EEKNS1_16auto_partitionerEEEEEbRT_.exit

bb.h:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EE13split_to_fillEh.exit
  %i.bc = load i8, ptr %i.d, align 4, !tbaa !719
  %i.bd = add i8 %i.bc, 1                         ; 2 uses
  store i8 %i.bd, ptr %i.d, align 4, !tbaa !719
  %i.be = icmp ugt i8 %.pr12, 1
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bf = load i8, ptr %i.g, align 1, !tbaa !1320
  %i.bg = zext i8 %i.bf to i64                    ; 2 uses
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bg
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr null, ptr %4, align 8, !tbaa !704
  %i.bk = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %3) #14, !inline_history !1313 ; 9 uses
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
  %i.bx = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3) #14, !inline_history !1314 ; 6 uses
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
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(128) %i.bk, ptr noundef nonnull align 8 dereferenceable(128) %i.cd) #14, !inline_history !1314
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.ce = load i8, ptr %i.h, align 2, !tbaa !1318
  %i.cf = add i8 %i.ce, -1                        ; 2 uses
  store i8 %i.cf, ptr %i.h, align 2, !tbaa !1318
  %i.cg = load i8, ptr %i.g, align 1, !tbaa !1320
  %i.ch = add i8 %i.cg, 1
  %i.ci = and i8 %i.ch, 7
  store i8 %i.ci, ptr %i.g, align 1, !tbaa !1320
  br label %thread-pre-split11

bb.j:                                             ; preds = %bb.h
  %i.cj = load i8, ptr %5, align 8, !tbaa !1319
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
  %i.ct = load i8, ptr %i.h, align 2, !tbaa !1318
  %i.cu = add i8 %i.ct, -1                        ; 2 uses
  store i8 %i.cu, ptr %i.h, align 2, !tbaa !1318
  %i.cv = load i8, ptr %5, align 8, !tbaa !1319
  %i.cw = add i8 %i.cv, 7
  %i.cx = and i8 %i.cw, 7
  store i8 %i.cx, ptr %5, align 8, !tbaa !1319
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
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.df = load ptr, ptr %i.de, align 8
  %.0.i.i = select i1 %i.dd, ptr %i.df, ptr %i.da
  %i.dg = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i) #14
  br i1 %i.dg, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EED2Ev.exit, label %thread-pre-split, !llvm.loop !1315

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
end_hunk_0
