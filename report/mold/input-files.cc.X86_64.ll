Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/input-files.cc.X86_64?download=true
inline.NumInlined: 5152
inline.NumDeleted: 2381
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINSC_6X86_64EEESt6vectorISG_SaISG_EEEEZZNSC_10SharedFileISE_E14get_symbols_atESG_ENKUlvE_clEvEUlSG_SG_E_EENS1_15quick_sort_bodyISL_SP_EEKNS1_16auto_partitionerEEESQ_EEvRT_RT0_RNS1_14execution_dataE:bb.a
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
  br i1 %i.dd, label %bb.l, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

bb.l:                                             ; preds = %bb.k
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !77
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %bb.k, %bb.l
  %.0.i.i = phi ptr [ %i.df, %bb.l ], [ %i.da, %bb.k ]
  %i.dg = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i) #14
  br i1 %i.dg, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EED2Ev.exit, label %thread-pre-split, !llvm.loop !1365

_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EED2Ev.exit: ; preds = %thread-pre-split11, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.m

bb.m:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS6_6X86_64EEESt6vectorISA_SaISA_EEEEZZNS6_10SharedFileIS8_E14get_symbols_atESA_ENKUlvE_clEvEUlSA_SA_E_EELh8EED2Ev.exit, %bb.c
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
  %.0 = phi i64 [ 0, %bb.c ], [ %i.cj, %bb.k ]    ; 2 uses
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
  %3 = icmp ne i64 %i.as, 0
  %.not.i.us = icmp ugt ptr %.0.i7.i.us, @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty
  %4 = or i1 %3, %.not.i.us
  br i1 %4, label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.us, label %.preheader, !llvm.loop !1371

.split:                                           ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !95
  %i.ax = sext i32 %i.aw to i64
  %i.ay = shl nsw i64 %i.ax, 2
  %i.az = add nsw i64 %i.ay, %i.av
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load i32, ptr %i.at, align 4, !tbaa !105
  %i.bd = sext i32 %i.bc to i64
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !106
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %i.bd ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i64, ptr %i.bg, align 1, !tbaa !77 ; 2 uses
  br label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i

_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i:      ; preds = %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit, %.split
  %.129 = phi i64 [ %.028, %.split ], [ %i.bi, %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit ] ; 2 uses
  %i.bi = add i64 %.129, -1                       ; 3 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !91 ; 4 uses
  %i.bl = icmp eq ptr %i.bk, %i.y
  br i1 %i.bl, label %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !95
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sext i32 %i.bn to i64
  %i.bq = shl nsw i64 %i.bp, 2
  %i.br = add nsw i64 %i.bq, %i.bo
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !105
  %i.bw = sext i32 %i.bv to i64
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !106
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %i.bw
  br label %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit

_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i, %bb.f
  %.0.i7.i = phi ptr [ %i.by, %bb.f ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i7.i, i64 8
  %i.ca = load i64, ptr %i.bz, align 1, !tbaa !77 ; 2 uses
  %i.cb = icmp eq i64 %i.bh, %i.ca
  %.not.i = icmp ult ptr %i.bf, %.0.i7.i
  %i.cc = icmp ult i64 %i.bh, %i.ca
  %i.cd = select i1 %i.cb, i1 %.not.i, i1 %i.cc
  br i1 %i.cd, label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i, label %.preheader, !llvm.loop !1371

.preheader:                                       ; preds = %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit, %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit.us
  %.us-phi = phi i64 [ %i.aa, %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit.us ], [ %i.bi, %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit ] ; 5 uses
  %.us-phi62 = phi i64 [ %.129.us, %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit.us ], [ %.129, %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit ]
  %.us-phi66 = phi ptr [ %i.ac, %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit.us ], [ %i.bk, %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit ] ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.w, i64 %.us-phi ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.ci = icmp eq i64 %.0, %.us-phi
  br i1 %i.ci, label %.loopexit, label %.lr.ph

bb.g:                                             ; preds = %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit37
  br i1 %i.dr, label %.loopexit, label %.lr.ph, !llvm.loop !1372

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %.1131 = phi i64 [ %i.cj, %bb.g ], [ %.0, %.preheader ]
  %i.cj = add i64 %.1131, 1                       ; 5 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cj
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !91 ; 4 uses
  %i.cm = icmp eq ptr %i.cl, %i.y
  br i1 %i.cm, label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i33, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !95
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sext i32 %i.co to i64
  %i.cr = shl nsw i64 %i.cq, 2
  %i.cs = add nsw i64 %i.cr, %i.cp
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 20
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !105
  %i.cx = sext i32 %i.cw to i64
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !106
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.cy, i64 %i.cx
  br label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i33

_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i33:    ; preds = %bb.h, %.lr.ph
  %.0.i.i34 = phi ptr [ %i.cz, %bb.h ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %.lr.ph ] ; 2 uses
  br i1 %i.z, label %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit37, label %bb.i

bb.i:                                             ; preds = %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i33
  %i.da = load i32, ptr %i.cf, align 4, !tbaa !95
  %i.db = sext i32 %i.da to i64
  %i.dc = shl nsw i64 %i.db, 2
  %i.dd = add nsw i64 %i.dc, %i.cg
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dg = load i32, ptr %i.ch, align 4, !tbaa !105
  %i.dh = sext i32 %i.dg to i64
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !106
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %i.dh
  br label %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit37

_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit37: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i33, %bb.i
  %.0.i7.i35 = phi ptr [ %i.dj, %bb.i ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i33 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i.i34, i64 8
  %i.dl = load i64, ptr %i.dk, align 1, !tbaa !77 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i7.i35, i64 8
  %i.dn = load i64, ptr %i.dm, align 1, !tbaa !77 ; 2 uses
  %i.do = icmp eq i64 %i.dl, %i.dn
  %.not.i36 = icmp ult ptr %.0.i.i34, %.0.i7.i35
  %i.dp = icmp ult i64 %i.dl, %i.dn
  %i.dq = select i1 %i.do, i1 %.not.i36, i1 %i.dp
  %i.dr = icmp eq i64 %i.cj, %.us-phi             ; 2 uses
  br i1 %i.dq, label %bb.g, label %bb.j, !llvm.loop !1372

bb.j:                                             ; preds = %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit37
  br i1 %i.dr, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cj
  store ptr %.us-phi66, ptr %i.ds, align 8, !tbaa !91
  store ptr %i.cl, ptr %i.ce, align 8, !tbaa !91
  br label %bb.d, !llvm.loop !1373

.loopexit:                                        ; preds = %bb.j, %.preheader, %bb.g
  store ptr %i.x, ptr %i.ce, align 8, !tbaa !91
  store ptr %.us-phi66, ptr %i.c, align 8, !tbaa !91
  %i.dt = sub i64 %i.v, %.us-phi62
  store i64 %.us-phi, ptr %i.d, align 8, !tbaa !701
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret i64 %i.dt
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef i64 @_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZZNS5_10SharedFileIS7_E14get_symbols_atES9_ENKUlvE_clEvEUlS9_S9_E_E15median_of_threeERKSE_mmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !736    ; 3 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %i.a, i64 %2
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91   ; 7 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %i.a, i64 %3
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91   ; 7 uses
  %i.f = load ptr, ptr @_ZN4mold20discarded_comdat_symINS_6X86_64EEE, align 8, !tbaa !91 ; 4 uses
  %i.g = icmp eq ptr %i.c, %i.f                   ; 3 uses
  br i1 %i.g, label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !95
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sext i32 %i.i to i64
  %i.l = shl nsw i64 %i.k, 2
  %i.m = add nsw i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !105
  %i.r = sext i32 %i.q to i64
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !106
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.r
  br label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i

_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i:      ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.t, %bb.b ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %bb.a ] ; 2 uses
  %i.u = icmp eq ptr %i.e, %i.f                   ; 3 uses
  br i1 %i.u, label %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !95
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sext i32 %i.w to i64
  %i.z = shl nsw i64 %i.y, 2
  %i.aa = add nsw i64 %i.z, %i.x
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !105
  %i.af = sext i32 %i.ae to i64
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !106
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.af
  br label %_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit

_ZZZN4mold10SharedFileINS_6X86_64EE14get_symbols_atEPNS_6SymbolIS1_EEENKUlvE_clEvENKUlS5_S5_E_clES5_S5_.exit: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i, %bb.c
  %.0.i7.i = phi ptr [ %i.ah, %bb.c ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 1, !tbaa !77 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i7.i, i64 8
  %i.al = load i64, ptr %i.ak, align 1, !tbaa !77 ; 2 uses
  %i.am = icmp eq i64 %i.aj, %i.al
  %.not.i = icmp ult ptr %.0.i.i, %.0.i7.i
  %i.an = icmp ult i64 %i.aj, %i.al
  %i.ao = select i1 %i.am, i1 %.not.i, i1 %i.an
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.a, i64 %4
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !91 ; 10 uses
end_hunk_0
