Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/input-files.cc.X86_64?download=true
inline.NumInlined: 5152
inline.NumDeleted: 2381
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEENS1_23quick_sort_pretest_bodyISF_ZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !721
  %i.n = inttoptr i64 %i.m to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #14
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = atomicrmw sub ptr %i.o, i32 1 seq_cst, align 4
  %i.q = add i32 %i.p, -1
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEENS1_23quick_sort_pretest_bodyISF_ZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

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
  br label %bb.m

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

thread-pre-split:                                 ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
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
  %i.x = phi i8 [ %.pre.i, %.lr.ph.i ], [ %i.ba, %bb.g ]
  %i.y = phi i8 [ %.promoted.i, %.lr.ph.i ], [ %i.bc, %bb.g ] ; 3 uses
  %6 = phi i8 [ %.promoted4.i, %.lr.ph.i ], [ %i.am, %bb.g ] ; 2 uses
  %7 = zext i8 %6 to i64                          ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.p, i64 %7 ; 2 uses
  %i.z = icmp ult i8 %i.x, %i.v
  br i1 %i.z, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE12is_divisibleEh.exit.i: ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %7 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !739
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !650
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !650
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = icmp ult i64 %i.ac, %i.aj
  br i1 %i.ak, label %bb.g, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE13split_to_fillEh.exit

bb.g:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE12is_divisibleEh.exit.i
  %i.al = add nuw i8 %6, 1
  %i.am = and i8 %i.al, 7                         ; 3 uses
  store i8 %i.am, ptr %5, align 8, !tbaa !1385
  %i.an = zext nneg i8 %i.am to i64               ; 2 uses
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.an ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !tbaa.struct !1381
  %i.ap = load i64, ptr %i.ao, align 8            ; 2 uses
  store i64 %i.ap, ptr %i.aa, align 8, !tbaa !650
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !650 ; 2 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.ap, %i.as
  %i.au = ashr exact i64 %i.at, 3
  %i.av = sdiv i64 %i.au, 2
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.av ; 2 uses
  store ptr %i.aw, ptr %i.ao, align 8, !tbaa !650
  store ptr %i.aw, ptr %i.ad, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !739
  store i64 %i.ay, ptr %i.ab, align 8, !tbaa !739
  %i.az = load i8, ptr %8, align 1, !tbaa !77
  %i.ba = add i8 %i.az, 1                         ; 3 uses
  store i8 %i.ba, ptr %8, align 1, !tbaa !77
  %i.bb = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.an
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !77
  %i.bc = add nuw nsw i8 %i.y, 1                  ; 3 uses
  store i8 %i.bc, ptr %i.o, align 2, !tbaa !1384
  %exitcond.not.i = icmp eq i8 %i.bc, 8
  br i1 %exitcond.not.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE13split_to_fillEh.exit.thread, label %bb.f, !llvm.loop !1377

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE13split_to_fillEh.exit: ; preds = %bb.f, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE12is_divisibleEh.exit.i, %bb.e
  %.pr = phi i8 [ %.promoted.i, %bb.e ], [ %i.y, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE12is_divisibleEh.exit.i ], [ %i.y, %bb.f ] ; 2 uses
  %i.bd = load ptr, ptr %i.r, align 8, !tbaa !717
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load atomic i8, ptr %i.be monotonic, align 1, !range !107, !noundef !108
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.h, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEEENS1_23quick_sort_pretest_bodyISH_ZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.g
  %i.bh = load ptr, ptr %i.r, align 8, !tbaa !717
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load atomic i8, ptr %i.bi monotonic, align 1, !range !107, !noundef !108
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %.thread, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEEENS1_23quick_sort_pretest_bodyISH_ZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge

.thread:                                          ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE13split_to_fillEh.exit.thread
  %i.bl = add i8 %i.v, 1
  store i8 %i.bl, ptr %i.k, align 4, !tbaa !719
  br label %bb.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEEENS1_23quick_sort_pretest_bodyISH_ZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE13split_to_fillEh.exit
  %.pre13 = load i8, ptr %5, align 8, !tbaa !1385
  %.pre15 = zext i8 %.pre13 to i64
  br label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEEENS1_23quick_sort_pretest_bodyISH_ZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EEKNS1_16auto_partitionerEEEEEbRT_.exit

bb.h:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE13split_to_fillEh.exit
  %i.bm = add i8 %i.v, 1                          ; 2 uses
  store i8 %i.bm, ptr %i.k, align 4, !tbaa !719
  %i.bn = icmp ugt i8 %.pr, 1
  br i1 %i.bn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread, %bb.h
  %i.bo = load i8, ptr %i.n, align 1, !tbaa !1386
  %i.bp = zext i8 %i.bo to i64                    ; 2 uses
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bp
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr null, ptr %4, align 8, !tbaa !704
  %i.bt = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3) #14, !inline_history !1378 ; 10 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bu, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEENS1_23quick_sort_pretest_bodyISF_ZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.bt, align 64, !tbaa !35
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 24, i1 false), !tbaa.struct !1381
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !740
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 104 ; 2 uses
  store ptr null, ptr %i.bx, align 8, !tbaa !717
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 112
  %i.bz = load i64, ptr %i.t, align 16, !tbaa !720
  %i.ca = lshr i64 %i.bz, 1                       ; 2 uses
  store i64 %i.ca, ptr %i.t, align 16, !tbaa !720
  store i64 %i.ca, ptr %i.by, align 16, !tbaa !720
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 120
  store i32 2, ptr %i.cb, align 8, !tbaa !718
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 124
  %i.cd = load i8, ptr %i.u, align 4, !tbaa !719
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 128
  %i.cf = load i64, ptr %4, align 8, !tbaa !721
  store i64 %i.cf, ptr %i.ce, align 64, !tbaa !721
  %i.cg = sub i8 %i.cd, %i.bs
  store i8 %i.cg, ptr %i.cc, align 4, !tbaa !719
  %i.ch = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3) #14, !inline_history !1379 ; 6 uses
  %i.ci = load ptr, ptr %i.r, align 8, !tbaa !737
  store ptr %i.ci, ptr %i.ch, align 8, !tbaa !723
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i32 2, ptr %i.cj, align 8, !tbaa !724
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cl = load i64, ptr %4, align 8, !tbaa !721
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !721
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store i8 0, ptr %i.cm, align 8, !tbaa !79
  store ptr %i.ch, ptr %i.r, align 8, !tbaa !717
  store ptr %i.ch, ptr %i.bx, align 8, !tbaa !717
  %i.cn = load ptr, ptr %3, align 8, !tbaa !738
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(136) %i.bt, ptr noundef nonnull align 8 dereferenceable(128) %i.cn) #14, !inline_history !1379
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.co = load i8, ptr %i.o, align 2, !tbaa !1384
  %i.cp = add i8 %i.co, -1                        ; 2 uses
  store i8 %i.cp, ptr %i.o, align 2, !tbaa !1384
  %i.cq = load i8, ptr %i.n, align 1, !tbaa !1386
  %i.cr = add i8 %i.cq, 1
  %i.cs = and i8 %i.cr, 7
  store i8 %i.cs, ptr %i.n, align 1, !tbaa !1386
  br label %thread-pre-split12

bb.j:                                             ; preds = %bb.h
  %i.ct = load i8, ptr %5, align 8, !tbaa !1385
  %i.cu = zext i8 %i.ct to i64                    ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !77
  %i.cx = icmp ult i8 %i.cw, %i.bm
  br i1 %i.cx, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEEENS1_23quick_sort_pretest_bodyISH_ZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EEKNS1_16auto_partitionerEEEEEbRT_.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE12is_divisibleEh.exit: ; preds = %bb.j
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.cu ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !739
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !650
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !650
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = ashr exact i64 %i.dg, 3
  %i.di = icmp ult i64 %i.da, %i.dh
  br i1 %i.di, label %thread-pre-split12, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEEENS1_23quick_sort_pretest_bodyISH_ZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EEKNS1_16auto_partitionerEEEEEbRT_.exit

_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEEENS1_23quick_sort_pretest_bodyISH_ZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EEKNS1_16auto_partitionerEEEEEbRT_.exit: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEEENS1_23quick_sort_pretest_bodyISH_ZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge, %bb.j, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre15, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEEENS1_23quick_sort_pretest_bodyISH_ZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge ], [ %i.cu, %bb.j ], [ %i.cu, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE12is_divisibleEh.exit ]
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %.pre-phi
  call void @_ZNK3tbb6detail2d123quick_sort_pretest_bodyIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZZNS5_10SharedFileIS7_E14get_symbols_atES9_ENKUlvE_clEvEUlS9_S9_E_EclERKNS1_13blocked_rangeISE_EE(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.dj)
  %i.dk = load i8, ptr %i.o, align 2, !tbaa !1384
  %i.dl = add i8 %i.dk, -1                        ; 2 uses
  store i8 %i.dl, ptr %i.o, align 2, !tbaa !1384
  %i.dm = load i8, ptr %5, align 8, !tbaa !1385
  %i.dn = add i8 %i.dm, 7
  %i.do = and i8 %i.dn, 7
  store i8 %i.do, ptr %5, align 8, !tbaa !1385
  br label %thread-pre-split12

thread-pre-split12:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEEENS1_23quick_sort_pretest_bodyISH_ZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EEKNS1_16auto_partitionerEEEEEbRT_.exit, %bb.i
  %i.dp = phi i8 [ %i.cp, %bb.i ], [ %i.dl, %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS8_6X86_64EEESt6vectorISC_SaISC_EEEEEENS1_23quick_sort_pretest_bodyISH_ZZNS8_10SharedFileISA_E14get_symbols_atESC_ENKUlvE_clEvEUlSC_SC_E_EEKNS1_16auto_partitionerEEEEEbRT_.exit ], [ %.pr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EE12is_divisibleEh.exit ]
  %i.dq = icmp eq i8 %i.dp, 0
  br i1 %i.dq, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %thread-pre-split12
  %i.dr = load ptr, ptr %3, align 8, !tbaa !738   ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 15
  %i.dt = load atomic i8, ptr %i.ds monotonic, align 1
  %i.du = icmp eq i8 %i.dt, -1
  br i1 %i.du, label %bb.l, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

bb.l:                                             ; preds = %bb.k
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !77
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %bb.k, %bb.l
  %.0.i.i = phi ptr [ %i.dw, %bb.l ], [ %i.dr, %bb.k ]
  %i.dx = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i) #14
  br i1 %i.dx, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EED2Ev.exit, label %thread-pre-split, !llvm.loop !1380

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EED2Ev.exit: ; preds = %thread-pre-split12, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.m

bb.m:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEEELh8EED2Ev.exit, %bb.c
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

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.013 = phi i32 [ 0, %.lr.ph ], [ %i.bh, %bb.j ] ; 2 uses
  %.sroa.07.012 = phi ptr [ %.sroa.0.0.copyload.i4, %.lr.ph ], [ %i.bg, %bb.j ] ; 3 uses
  %i.d = and i32 %.013, 63
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !1388, !nonnull !108, !align !517 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %i.h = load atomic i8, ptr %i.g monotonic, align 1
  %i.i = icmp eq i8 %i.h, -1
  br i1 %i.i, label %bb.d, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.k, %bb.d ], [ %i.f, %bb.c ]
  %i.l = tail call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i) #14
  br i1 %i.l, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit, %bb.b
  %i.m = load ptr, ptr %.sroa.07.012, align 8, !tbaa !91 ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.07.012, i64 -8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !91   ; 3 uses
  %i.p = load ptr, ptr @_ZN4mold20discarded_comdat_symINS_6X86_64EEE, align 8, !tbaa !91 ; 2 uses
  %i.q = icmp eq ptr %i.m, %i.p
  br i1 %i.q, label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !95
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sext i32 %i.s to i64
end_hunk_0
