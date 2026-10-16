Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/gc-sections.cc.X86_64?download=true
inline.NumInlined: 2340
inline.NumDeleted: 1195
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L16collect_root_setISB_EENS1_17concurrent_vectorIPNS9_12InputSectionIT_EENS1_23cache_aligned_allocatorISO_EEEERNS9_7ContextISM_EEEUlSD_E0_SD_EEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE:bb.a
  %i.ne = phi i8 [ %i.le, %.thread.i.i ], [ %i.na, %thread-pre-split15.i.i ]
  %i.nf = load ptr, ptr %1, align 8, !tbaa !219   ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 15
  %i.nh = load atomic i8, ptr %i.ng monotonic, align 1
  %i.ni = icmp eq i8 %i.nh, -1
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %i.nk = load ptr, ptr %i.nj, align 8
  %.0.i.i.i.i = select i1 %i.ni, ptr %i.nk, ptr %i.nf
  %i.nl = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i.i) #10, !inline_history !431
  br i1 %i.nl, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit.i.i, label %bb.q, !llvm.loop !434

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit.i.i: ; preds = %thread-pre-split.i.i, %thread-pre-split15.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSD_6X86_64EEESt6vectorISH_SaISH_EEEEZNSD_L16collect_root_setISF_EENS1_17concurrent_vectorIPNSD_12InputSectionIT_EENS1_23cache_aligned_allocatorISS_EEEERNSD_7ContextISQ_EEEUlSH_E0_SH_EEKNS1_16auto_partitionerEEES8_EEvRSQ_RT0_RNS1_14execution_dataE.exit

_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSD_6X86_64EEESt6vectorISH_SaISH_EEEEZNSD_L16collect_root_setISF_EENS1_17concurrent_vectorIPNSD_12InputSectionIT_EENS1_23cache_aligned_allocatorISS_EEEERNSD_7ContextISQ_EEEUlSH_E0_SH_EEKNS1_16auto_partitionerEEES8_EEvRSQ_RT0_RNS1_14execution_dataE.exit: ; preds = %bb.o, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit.i.i
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.nn = load ptr, ptr %i.nm, align 16, !tbaa !239 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.np = load i64, ptr %i.no, align 8, !tbaa !165
  %i.nq = load ptr, ptr %0, align 64, !tbaa !103
  %i.nr = load ptr, ptr %i.nq, align 8
  call void %i.nr(ptr noundef nonnull align 64 dead_on_return(144) dereferenceable(144) %0) #10, !inline_history !8
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.nt = atomicrmw sub ptr %i.ns, i32 1 seq_cst, align 4
  %i.nu = add i32 %i.nt, -1
  %i.nv = icmp sgt i32 %i.nu, 0
  br i1 %i.nv, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L16collect_root_setISB_EENS1_17concurrent_vectorIPNS9_12InputSectionIT_EENS1_23cache_aligned_allocatorISO_EEEERNS9_7ContextISM_EEEUlSD_E0_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSD_6X86_64EEESt6vectorISH_SaISH_EEEEZNSD_L16collect_root_setISF_EENS1_17concurrent_vectorIPNSD_12InputSectionIT_EENS1_23cache_aligned_allocatorISS_EEEERNSD_7ContextISQ_EEEUlSH_E0_SH_EEKNS1_16auto_partitionerEEES8_EEvRSQ_RT0_RNS1_14execution_dataE.exit, %bb.aj
  %.019.i.i = phi ptr [ %i.nw, %bb.aj ], [ %i.nn, %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSD_6X86_64EEESt6vectorISH_SaISH_EEEEZNSD_L16collect_root_setISF_EENS1_17concurrent_vectorIPNSD_12InputSectionIT_EENS1_23cache_aligned_allocatorISS_EEEERNSD_7ContextISQ_EEEUlSH_E0_SH_EEKNS1_16auto_partitionerEEES8_EEvRSQ_RT0_RNS1_14execution_dataE.exit ] ; 5 uses
  %i.nw = load ptr, ptr %.019.i.i, align 8, !tbaa !169 ; 3 uses
  %.not.i.i6 = icmp eq ptr %i.nw, null
  br i1 %.not.i.i6, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i
  %i.nx = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !165
  %i.nz = inttoptr i64 %i.ny to ptr
  call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.nz, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #10
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.ob = atomicrmw sub ptr %i.oa, i32 1 seq_cst, align 4
  %i.oc = add i32 %i.ob, -1
  %i.od = icmp sgt i32 %i.oc, 0
  br i1 %i.od, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L16collect_root_setISB_EENS1_17concurrent_vectorIPNS9_12InputSectionIT_EENS1_23cache_aligned_allocatorISO_EEEERNS9_7ContextISM_EEEUlSD_E0_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.ak:                                            ; preds = %.lr.ph.i.i
  %i.oe = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.of = atomicrmw sub ptr %i.oe, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.of, 1
  br i1 %.not.i.i.i.i, label %bb.al, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L16collect_root_setISB_EENS1_17concurrent_vectorIPNS9_12InputSectionIT_EENS1_23cache_aligned_allocatorISO_EEEERNS9_7ContextISM_EEEUlSD_E0_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.al:                                            ; preds = %bb.ak
  %i.og = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.oh = ptrtoint ptr %i.og to i64
  call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.oh) #10
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L16collect_root_setISB_EENS1_17concurrent_vectorIPNS9_12InputSectionIT_EENS1_23cache_aligned_allocatorISO_EEEERNS9_7ContextISM_EEEUlSD_E0_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L16collect_root_setISB_EENS1_17concurrent_vectorIPNS9_12InputSectionIT_EENS1_23cache_aligned_allocatorISO_EEEERNS9_7ContextISM_EEEUlSD_E0_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.aj, %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSD_6X86_64EEESt6vectorISH_SaISH_EEEEZNSD_L16collect_root_setISF_EENS1_17concurrent_vectorIPNSD_12InputSectionIT_EENS1_23cache_aligned_allocatorISS_EEEERNSD_7ContextISQ_EEEUlSH_E0_SH_EEKNS1_16auto_partitionerEEES8_EEvRSQ_RT0_RNS1_14execution_dataE.exit, %bb.ak, %bb.al
  %i.oi = inttoptr i64 %i.np to ptr
  call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.oi, ptr noundef nonnull align 64 dereferenceable(144) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #10
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define internal noalias noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L16collect_root_setISB_EENS1_17concurrent_vectorIPNS9_12InputSectionIT_EENS1_23cache_aligned_allocatorISO_EEEERNS9_7ContextISM_EEEUlSD_E0_SD_EEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !239 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i64, ptr %i.c, align 8, !tbaa !165
  %i.e = load ptr, ptr %0, align 64, !tbaa !103
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(144) dereferenceable(144) %0) #10, !inline_history !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = atomicrmw sub ptr %i.g, i32 1 seq_cst, align 4
  %i.i = add i32 %i.h, -1
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L16collect_root_setISB_EENS1_17concurrent_vectorIPNS9_12InputSectionIT_EENS1_23cache_aligned_allocatorISO_EEEERNS9_7ContextISM_EEEUlSD_E0_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.k, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.k = load ptr, ptr %.019.i.i, align 8, !tbaa !169 ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !165
  %i.n = inttoptr i64 %i.m to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #10
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = atomicrmw sub ptr %i.o, i32 1 seq_cst, align 4
  %i.q = add i32 %i.p, -1
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L16collect_root_setISB_EENS1_17concurrent_vectorIPNS9_12InputSectionIT_EENS1_23cache_aligned_allocatorISO_EEEERNS9_7ContextISM_EEEUlSD_E0_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.t = atomicrmw sub ptr %i.s, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L16collect_root_setISB_EENS1_17concurrent_vectorIPNS9_12InputSectionIT_EENS1_23cache_aligned_allocatorISO_EEEERNS9_7ContextISM_EEEUlSD_E0_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v) #10
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L16collect_root_setISB_EENS1_17concurrent_vectorIPNS9_12InputSectionIT_EENS1_23cache_aligned_allocatorISO_EEEERNS9_7ContextISM_EEEUlSD_E0_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L16collect_root_setISB_EENS1_17concurrent_vectorIPNS9_12InputSectionIT_EENS1_23cache_aligned_allocatorISO_EEEERNS9_7ContextISM_EEEUlSD_E0_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(144) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #10
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define internal fastcc void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L16collect_root_setISB_EENS1_17concurrent_vectorIPNS9_12InputSectionIT_EENS1_23cache_aligned_allocatorISO_EEEERNS9_7ContextISM_EEEUlSD_E0_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(144) %0, i64 %.0.val, i64 %.8.val) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.not1.i.i.i.i.i = icmp eq i64 %.8.val, %.0.val
  br i1 %.not1.i.i.i.i.i, label %_ZN3tbb6detail2d06invokeIRKNS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS7_6X86_64EEESt6vectorISB_SaISB_EEEEZNS7_L16collect_root_setIS9_EENS0_2d117concurrent_vectorIPNS7_12InputSectionIT_EENSI_23cache_aligned_allocatorISN_EEEERNS7_7ContextISL_EEEUlSB_E0_SB_EEJRNSI_13blocked_rangeImEEEEENSt13invoke_resultISL_JDpT0_EE4typeEOSL_DpOS12_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL16collect_root_setINS3_6X86_64EEENS0_2d117concurrent_vectorIPNS3_12InputSectionIT_EENS6_23cache_aligned_allocatorISB_EEEERNS3_7ContextIS9_EEEUlPNS3_10ObjectFileIS5_EEE0_E4callIRSK_NS1_11feeder_implISL_SK_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS9_Efp0_EEcvv_EERKSL_OS9_PT0_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.02.i.i.i.i.i = phi i64 [ %.8.val, %.lr.ph.i.i.i.i.i ], [ %i.bc, %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL16collect_root_setINS3_6X86_64EEENS0_2d117concurrent_vectorIPNS3_12InputSectionIT_EENS6_23cache_aligned_allocatorISB_EEEERNS3_7ContextIS9_EEEUlPNS3_10ObjectFileIS5_EEE0_E4callIRSK_NS1_11feeder_implISL_SK_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS9_Efp0_EEcvv_EERKSL_OS9_PT0_.exit.i.i.i.i.i ] ; 2 uses
  %i.c = load ptr, ptr %i.b, align 32, !tbaa !442, !nonnull !66, !align !182
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !221
  %i.e = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.02.i.i.i.i.i
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !222 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !443  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !443  ; 2 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL16collect_root_setINS3_6X86_64EEENS0_2d117concurrent_vectorIPNS3_12InputSectionIT_EENS6_23cache_aligned_allocatorISB_EEEERNS3_7ContextIS9_EEEUlPNS3_10ObjectFileIS5_EEE0_E4callIRSK_NS1_11feeder_implISL_SK_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS9_Efp0_EEcvv_EERKSL_OS9_PT0_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.b, %_ZZN4moldL16collect_root_setINS_6X86_64EEEN3tbb6detail2d117concurrent_vectorIPNS_12InputSectionIT_EENS4_23cache_aligned_allocatorIS9_EEEERNS_7ContextIS7_EEENKUlPNS_6SymbolIS1_EEE_clESI_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ba, %_ZZN4moldL16collect_root_setINS_6X86_64EEEN3tbb6detail2d117concurrent_vectorIPNS_12InputSectionIT_EENS4_23cache_aligned_allocatorIS9_EEEERNS_7ContextIS7_EEENKUlPNS_6SymbolIS1_EEE_clESI_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.k = load i32, ptr %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !242 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.k, 0
  %i.l = ptrtoint ptr %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.m = sext i32 %i.k to i64
  %i.n = shl nsw i64 %i.m, 2
  %i.o = add nsw i64 %i.n, %i.l
  %i.p = inttoptr i64 %i.o to ptr                 ; 3 uses
  %i.q = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, ptr null, ptr %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !68   ; 2 uses
  %.not.i10.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.s, 0
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sext i32 %i.s to i64
  %i.v = shl nsw i64 %i.u, 2
  %i.w = add nsw i64 %i.v, %i.t
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = select i1 %.not.i10.i.i.i.i.i.i.i.i.i.i.i, ptr null, ptr %i.x
  %i.z = icmp eq ptr %i.y, %.val.i.i.i.i.i
  br i1 %i.z, label %bb.c, label %_ZZN4moldL16collect_root_setINS_6X86_64EEEN3tbb6detail2d117concurrent_vectorIPNS_12InputSectionIT_EENS4_23cache_aligned_allocatorIS9_EEEERNS_7ContextIS7_EEENKUlPNS_6SymbolIS1_EEE_clESI_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 33
  %i.ab = load i16, ptr %i.aa, align 1
  %i.ac = and i16 %i.ab, 8200
  %or.cond.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN4moldL16collect_root_setINS_6X86_64EEEN3tbb6detail2d117concurrent_vectorIPNS_12InputSectionIT_EENS4_23cache_aligned_allocatorIS9_EEEERNS_7ContextIS7_EEENKUlPNS_6SymbolIS1_EEE_clESI_.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !445, !nonnull !66, !align !182
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8
  %i.ae = load i64, ptr %i.p, align 8, !tbaa !244 ; 4 uses
  %i.af = and i64 %i.ae, 3                        ; 2 uses
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.af, 2
  %i.ag = and i64 %i.ae, -4                       ; 2 uses
  %.not71.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ag, 0
  %.not7.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.not71.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not7.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 13
  store atomic i8 1, ptr %i.ai monotonic, align 1
  br label %_ZZN4moldL16collect_root_setINS_6X86_64EEEN3tbb6detail2d117concurrent_vectorIPNS_12InputSectionIT_EENS4_23cache_aligned_allocatorIS9_EEEERNS_7ContextIS7_EEENKUlPNS_6SymbolIS1_EEE_clESI_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %.not3.i.i8.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.af, 0
  %i.aj = inttoptr i64 %i.ae to ptr               ; 3 uses
  %.not.i.i2.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ae, 0
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %.not.i.i2.i.i.i.i.i.i.i.i.i.i.i.i, %.not3.i.i8.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN4moldL16collect_root_setINS_6X86_64EEEN3tbb6detail2d117concurrent_vectorIPNS_12InputSectionIT_EENS4_23cache_aligned_allocatorIS9_EEEERNS_7ContextIS7_EEENKUlPNS_6SymbolIS1_EEE_clESI_.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.al = load atomic i8, ptr %i.ak monotonic, align 1, !range !65, !noundef !66
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.h, label %_ZZN4moldL16collect_root_setINS_6X86_64EEEN3tbb6detail2d117concurrent_vectorIPNS_12InputSectionIT_EENS4_23cache_aligned_allocatorIS9_EEEERNS_7ContextIS7_EEENKUlPNS_6SymbolIS1_EEE_clESI_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 60 ; 2 uses
  %i.ao = load atomic i8, ptr %i.an monotonic, align 4, !range !65, !noundef !66
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %_ZZN4moldL16collect_root_setINS_6X86_64EEEN3tbb6detail2d117concurrent_vectorIPNS_12InputSectionIT_EENS4_23cache_aligned_allocatorIS9_EEEERNS_7ContextIS7_EEENKUlPNS_6SymbolIS1_EEE_clESI_.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4moldL12mark_sectionINS_6X86_64EEEbPNS_12InputSectionIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4moldL12mark_sectionINS_6X86_64EEEbPNS_12InputSectionIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.aq = atomicrmw xchg ptr %i.an, i8 1 monotonic, align 1
  %i.ar = trunc i8 %i.aq to i1
  br i1 %i.ar, label %_ZZN4moldL16collect_root_setINS_6X86_64EEEN3tbb6detail2d117concurrent_vectorIPNS_12InputSectionIT_EENS4_23cache_aligned_allocatorIS9_EEEERNS_7ContextIS7_EEENKUlPNS_6SymbolIS1_EEE_clESI_.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN4moldL12mark_sectionINS_6X86_64EEEbPNS_12InputSectionIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.as = load ptr, ptr %.val.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !232, !nonnull !66, !align !182 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = atomicrmw add ptr %i.at, i64 1 seq_cst, align 8, !noalias !446
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 48 ; 2 uses
  %i.aw = load atomic i64, ptr %i.av monotonic, align 8, !noalias !446
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.j, label %_ZN3tbb6detail2d117concurrent_vectorIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EEE9push_backERKS7_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ay = cmpxchg ptr %i.av, i64 0, i64 1 seq_cst seq_cst, align 8, !noalias !446 ; 0 uses
  br label %_ZN3tbb6detail2d117concurrent_vectorIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EEE9push_backERKS7_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN3tbb6detail2d117concurrent_vectorIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EEE9push_backERKS7_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d113segment_tableIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE18internal_subscriptILb1EEERS7_m(ptr noundef nonnull align 8 dereferenceable(65) %i.as, i64 noundef %i.au), !noalias !446
  store ptr %i.aj, ptr %i.az, align 8, !tbaa !175, !noalias !446
  br label %_ZZN4moldL16collect_root_setINS_6X86_64EEEN3tbb6detail2d117concurrent_vectorIPNS_12InputSectionIT_EENS4_23cache_aligned_allocatorIS9_EEEERNS_7ContextIS7_EEENKUlPNS_6SymbolIS1_EEE_clESI_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZZN4moldL16collect_root_setINS_6X86_64EEEN3tbb6detail2d117concurrent_vectorIPNS_12InputSectionIT_EENS4_23cache_aligned_allocatorIS9_EEEERNS_7ContextIS7_EEENKUlPNS_6SymbolIS1_EEE_clESI_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN3tbb6detail2d117concurrent_vectorIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EEE9push_backERKS7_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4moldL12mark_sectionINS_6X86_64EEEbPNS_12InputSectionIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.i
  br i1 %i.bb, label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL16collect_root_setINS3_6X86_64EEENS0_2d117concurrent_vectorIPNS3_12InputSectionIT_EENS6_23cache_aligned_allocatorISB_EEEERNS3_7ContextIS9_EEEUlPNS3_10ObjectFileIS5_EEE0_E4callIRSK_NS1_11feeder_implISL_SK_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS9_Efp0_EEcvv_EERKSL_OS9_PT0_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL16collect_root_setINS3_6X86_64EEENS0_2d117concurrent_vectorIPNS3_12InputSectionIT_EENS6_23cache_aligned_allocatorISB_EEEERNS3_7ContextIS9_EEEUlPNS3_10ObjectFileIS5_EEE0_E4callIRSK_NS1_11feeder_implISL_SK_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS9_Efp0_EEcvv_EERKSL_OS9_PT0_.exit.i.i.i.i.i: ; preds = %_ZZN4moldL16collect_root_setINS_6X86_64EEEN3tbb6detail2d117concurrent_vectorIPNS_12InputSectionIT_EENS4_23cache_aligned_allocatorIS9_EEEERNS_7ContextIS7_EEENKUlPNS_6SymbolIS1_EEE_clESI_.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.b
  %i.bc = add i64 %.02.i.i.i.i.i, 1               ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.bc, %.0.val
  br i1 %.not.i.i.i.i.i, label %_ZN3tbb6detail2d06invokeIRKNS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS7_6X86_64EEESt6vectorISB_SaISB_EEEEZNS7_L16collect_root_setIS9_EENS0_2d117concurrent_vectorIPNS7_12InputSectionIT_EENSI_23cache_aligned_allocatorISN_EEEERNS7_7ContextISL_EEEUlSB_E0_SB_EEJRNSI_13blocked_rangeImEEEEENSt13invoke_resultISL_JDpT0_EE4typeEOSL_DpOS12_.exit, label %bb.b, !llvm.loop !441

_ZN3tbb6detail2d06invokeIRKNS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS7_6X86_64EEESt6vectorISB_SaISB_EEEEZNS7_L16collect_root_setIS9_EENS0_2d117concurrent_vectorIPNS7_12InputSectionIT_EENSI_23cache_aligned_allocatorISN_EEEERNS7_7ContextISL_EEEUlSB_E0_SB_EEJRNSI_13blocked_rangeImEEEEENSt13invoke_resultISL_JDpT0_EE4typeEOSL_DpOS12_.exit: ; preds = %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL16collect_root_setINS3_6X86_64EEENS0_2d117concurrent_vectorIPNS3_12InputSectionIT_EENS6_23cache_aligned_allocatorISB_EEEERNS3_7ContextIS9_EEEUlPNS3_10ObjectFileIS5_EEE0_E4callIRSK_NS1_11feeder_implISL_SK_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS9_Efp0_EEcvv_EERKSL_OS9_PT0_.exit.i.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define internal void @_ZN3tbb6detail2d218for_each_root_taskIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_L16collect_root_setIS7_EENS0_2d117concurrent_vectorIPNS5_12InputSectionIT_EENSG_23cache_aligned_allocatorISL_EEEERNS5_7ContextISJ_EEEUlS9_E1_S9_St26random_access_iterator_tagED0Ev(ptr noundef nonnull align 64 dereferenceable(105) %0) unnamed_addr #13 align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 64) #20
  ret void
}

; Function Attrs: mustprogress nounwind
define internal noalias noundef ptr @_ZN3tbb6detail2d218for_each_root_taskIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_L16collect_root_setIS7_EENS0_2d117concurrent_vectorIPNS5_12InputSectionIT_EENSG_23cache_aligned_allocatorISL_EEEERNS5_7ContextISJ_EEEUlS9_E1_S9_St26random_access_iterator_tagE7executeERNSG_14execution_dataE(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(105) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %3 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.02.0.copyload = load ptr, ptr %i.a, align 64, !tbaa !83 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.01.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !83 ; 2 uses
  %.not.i.i.not = icmp eq ptr %.sroa.01.0.copyload, %.sroa.02.0.copyload
  br i1 %.not.i.i.not, label %_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L16collect_root_setISB_EENS1_17concurrent_vectorIPNS9_12InputSectionIT_EENS1_23cache_aligned_allocatorISO_EEEERNS9_7ContextISM_EEEUlSD_E1_SD_EEEEvRKSM_RKT0_RNS1_18task_group_contextE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %.sroa.02.0.copyload to i64
  %i.d = ptrtoint ptr %.sroa.01.0.copyload to i64
  %i.e = sub i64 %i.d, %i.c
  %i.f = ashr exact i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !447, !nonnull !66, !align !182 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = load ptr, ptr %i.i, align 32, !tbaa !448, !nonnull !66, !align !182
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store ptr null, ptr %2, align 8, !tbaa !149
  %i.k = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 192) #10 ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L16collect_root_setISB_EENS1_17concurrent_vectorIPNS9_12InputSectionIT_EENS1_23cache_aligned_allocatorISO_EEEERNS9_7ContextISM_EEEUlSD_E1_SD_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.k, align 64, !tbaa !103
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i64 %i.f, ptr %i.m, align 64, !tbaa !150
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8, !tbaa !150
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 16, !tbaa !150
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  store ptr %.sroa.02.0.copyload, ptr %i.n, align 8, !tbaa !83
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 32, !tbaa !81
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.q = call noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null) #10
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  store i32 0, ptr %i.s, align 64, !tbaa !162
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 132
  store i8 5, ptr %i.t, align 4, !tbaa !163
  %i.u = shl nsw i64 %i.r, 1
  %i.v = and i64 %i.u, 9223372036854775806
  store i64 %i.v, ptr %i.p, align 8, !tbaa !164
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.x = load i64, ptr %2, align 8, !tbaa !165
  store i64 %i.x, ptr %i.w, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store ptr null, ptr %3, align 8, !tbaa !169
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1, ptr %i.y, align 8, !tbaa !170
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 1, ptr %i.z, align 8, !tbaa !105
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 1, ptr %i.aa, align 8, !tbaa !106
  store ptr %3, ptr %i.o, align 16, !tbaa !250
  call void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(128) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(128) %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L16collect_root_setISB_EENS1_17concurrent_vectorIPNS9_12InputSectionIT_EENS1_23cache_aligned_allocatorISO_EEEERNS9_7ContextISM_EEEUlSD_E1_SD_EEEEvRKSM_RKT0_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L16collect_root_setISB_EENS1_17concurrent_vectorIPNS9_12InputSectionIT_EENS1_23cache_aligned_allocatorISO_EEEERNS9_7ContextISM_EEEUlSD_E1_SD_EEEEvRKSM_RKT0_RNS1_18task_group_contextE.exit: ; preds = %bb.a, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !251, !nonnull !66, !align !182 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !103
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i32 noundef 1) #10
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define internal noalias noundef ptr @_ZN3tbb6detail2d223for_each_root_task_baseIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_L16collect_root_setIS7_EENS0_2d117concurrent_vectorIPNS5_12InputSectionIT_EENSG_23cache_aligned_allocatorISL_EEEERNS5_7ContextISJ_EEEUlS9_E1_S9_E6cancelERNSG_14execution_dataE(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(105) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !251, !nonnull !66, !align !182 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !103
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i32 noundef 1) #10
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind
define internal void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L16collect_root_setISB_EENS1_17concurrent_vectorIPNS9_12InputSectionIT_EENS1_23cache_aligned_allocatorISO_EEEERNS9_7ContextISM_EEEUlSD_E1_SD_EEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(144) %0) unnamed_addr #13 align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 192, i64 noundef 64) #20
  ret void
}

; Function Attrs: mustprogress nounwind
define internal noalias noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L16collect_root_setISB_EENS1_17concurrent_vectorIPNS9_12InputSectionIT_EENS1_23cache_aligned_allocatorISO_EEEERNS9_7ContextISM_EEEUlSD_E1_SD_EEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %3 = alloca %"class.tbb::detail::d1::range_vector", align 8 ; 4 uses
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !212  ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #10
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #10 ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 10 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !164
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L16collect_root_setISH_EENS1_17concurrent_vectorIPNSF_12InputSectionIT_EENS1_23cache_aligned_allocatorISU_EEEERNSF_7ContextISS_EEEUlSJ_E1_SJ_EEKNS1_16auto_partitionerEEEEEbRSS_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 8, !tbaa !164
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #10
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !213
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L16collect_root_setISH_EENS1_17concurrent_vectorIPNSF_12InputSectionIT_EENS1_23cache_aligned_allocatorISU_EEEERNSF_7ContextISS_EEEUlSJ_E1_SJ_EEKNS1_16auto_partitionerEEEEEbRSS_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !250
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L16collect_root_setISH_EENS1_17concurrent_vectorIPNSF_12InputSectionIT_EENS1_23cache_aligned_allocatorISU_EEEERNSF_7ContextISS_EEEUlSJ_E1_SJ_EEKNS1_16auto_partitionerEEEEEbRSS_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 16, !tbaa !250
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !163
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !163
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L16collect_root_setISH_EENS1_17concurrent_vectorIPNSF_12InputSectionIT_EENS1_23cache_aligned_allocatorISU_EEEERNSF_7ContextISS_EEEUlSJ_E1_SJ_EEKNS1_16auto_partitionerEEEEEbRSS_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L16collect_root_setISH_EENS1_17concurrent_vectorIPNSF_12InputSectionIT_EENS1_23cache_aligned_allocatorISU_EEEERNSF_7ContextISS_EEEUlSJ_E1_SJ_EEKNS1_16auto_partitionerEEEEEbRSS_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.x = load i64, ptr %i.w, align 16, !tbaa !214 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L16collect_root_setISB_EENS1_17concurrent_vectorIPNS9_12InputSectionIT_EENS1_23cache_aligned_allocatorISO_EEEERNS9_7ContextISM_EEEUlSD_E1_SD_EEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE:bb.a
  %.not.i.i.i.i = icmp eq i64 %i.of, 1
  br i1 %.not.i.i.i.i, label %bb.al, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L16collect_root_setISB_EENS1_17concurrent_vectorIPNS9_12InputSectionIT_EENS1_23cache_aligned_allocatorISO_EEEERNS9_7ContextISM_EEEUlSD_E1_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.al:                                            ; preds = %bb.ak
  %i.og = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.oh = ptrtoint ptr %i.og to i64
  call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.oh) #10
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L16collect_root_setISB_EENS1_17concurrent_vectorIPNS9_12InputSectionIT_EENS1_23cache_aligned_allocatorISO_EEEERNS9_7ContextISM_EEEUlSD_E1_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L16collect_root_setISB_EENS1_17concurrent_vectorIPNS9_12InputSectionIT_EENS1_23cache_aligned_allocatorISO_EEEERNS9_7ContextISM_EEEUlSD_E1_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.aj, %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSD_6X86_64EEESt6vectorISH_SaISH_EEEEZNSD_L16collect_root_setISF_EENS1_17concurrent_vectorIPNSD_12InputSectionIT_EENS1_23cache_aligned_allocatorISS_EEEERNSD_7ContextISQ_EEEUlSH_E1_SH_EEKNS1_16auto_partitionerEEES8_EEvRSQ_RT0_RNS1_14execution_dataE.exit, %bb.ak, %bb.al
  %i.oi = inttoptr i64 %i.np to ptr
  call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.oi, ptr noundef nonnull align 64 dereferenceable(144) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #10
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define internal noalias noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L16collect_root_setISB_EENS1_17concurrent_vectorIPNS9_12InputSectionIT_EENS1_23cache_aligned_allocatorISO_EEEERNS9_7ContextISM_EEEUlSD_E1_SD_EEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !250 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i64, ptr %i.c, align 8, !tbaa !165
  %i.e = load ptr, ptr %0, align 64, !tbaa !103
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(144) dereferenceable(144) %0) #10, !inline_history !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = atomicrmw sub ptr %i.g, i32 1 seq_cst, align 4
  %i.i = add i32 %i.h, -1
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L16collect_root_setISB_EENS1_17concurrent_vectorIPNS9_12InputSectionIT_EENS1_23cache_aligned_allocatorISO_EEEERNS9_7ContextISM_EEEUlSD_E1_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.k, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.k = load ptr, ptr %.019.i.i, align 8, !tbaa !169 ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !165
  %i.n = inttoptr i64 %i.m to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #10
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = atomicrmw sub ptr %i.o, i32 1 seq_cst, align 4
  %i.q = add i32 %i.p, -1
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L16collect_root_setISB_EENS1_17concurrent_vectorIPNS9_12InputSectionIT_EENS1_23cache_aligned_allocatorISO_EEEERNS9_7ContextISM_EEEUlSD_E1_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.t = atomicrmw sub ptr %i.s, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L16collect_root_setISB_EENS1_17concurrent_vectorIPNS9_12InputSectionIT_EENS1_23cache_aligned_allocatorISO_EEEERNS9_7ContextISM_EEEUlSD_E1_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v) #10
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L16collect_root_setISB_EENS1_17concurrent_vectorIPNS9_12InputSectionIT_EENS1_23cache_aligned_allocatorISO_EEEERNS9_7ContextISM_EEEUlSD_E1_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L16collect_root_setISB_EENS1_17concurrent_vectorIPNS9_12InputSectionIT_EENS1_23cache_aligned_allocatorISO_EEEERNS9_7ContextISM_EEEUlSD_E1_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(144) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #10
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define internal fastcc void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L16collect_root_setISB_EENS1_17concurrent_vectorIPNS9_12InputSectionIT_EENS1_23cache_aligned_allocatorISO_EEEERNS9_7ContextISM_EEEUlSD_E1_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(144) %0, i64 %.0.val, i64 %.8.val) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %1 = alloca %"struct.tbb::detail::d0::try_call_proxy.407", align 8 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.not1.i.i.i.i.i = icmp eq i64 %.8.val, %.0.val
  br i1 %.not1.i.i.i.i.i, label %_ZN3tbb6detail2d06invokeIRKNS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS7_6X86_64EEESt6vectorISB_SaISB_EEEEZNS7_L16collect_root_setIS9_EENS0_2d117concurrent_vectorIPNS7_12InputSectionIT_EENSI_23cache_aligned_allocatorISN_EEEERNS7_7ContextISL_EEEUlSB_E1_SB_EEJRNSI_13blocked_rangeImEEEEENSt13invoke_resultISL_JDpT0_EE4typeEOSL_DpOS12_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL16collect_root_setINS3_6X86_64EEENS0_2d117concurrent_vectorIPNS3_12InputSectionIT_EENS6_23cache_aligned_allocatorISB_EEEERNS3_7ContextIS9_EEEUlPNS3_10ObjectFileIS5_EEE1_E4callIRSK_NS1_11feeder_implISL_SK_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS9_Efp0_EEcvv_EERKSL_OS9_PT0_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.02.i.i.i.i.i = phi i64 [ %.8.val, %.lr.ph.i.i.i.i.i ], [ %i.dn, %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL16collect_root_setINS3_6X86_64EEENS0_2d117concurrent_vectorIPNS3_12InputSectionIT_EENS6_23cache_aligned_allocatorISB_EEEERNS3_7ContextIS9_EEEUlPNS3_10ObjectFileIS5_EEE1_E4callIRSK_NS1_11feeder_implISL_SK_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS9_Efp0_EEcvv_EERKSL_OS9_PT0_.exit.i.i.i.i.i ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 32, !tbaa !465, !nonnull !66, !align !182
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !221
  %i.g = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.02.i.i.i.i.i
  %.val.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !222 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 504
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !466  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 512
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !466  ; 2 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL16collect_root_setINS3_6X86_64EEENS0_2d117concurrent_vectorIPNS3_12InputSectionIT_EENS6_23cache_aligned_allocatorISB_EEEERNS3_7ContextIS9_EEEUlPNS3_10ObjectFileIS5_EEE1_E4callIRSK_NS1_11feeder_implISL_SK_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS9_Efp0_EEcvv_EERKSL_OS9_PT0_.exit.i.i.i.i.i, label %.lr.ph23.i.i.i.i.i.i.i.i.i.i.i

.lr.ph23.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 56
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph23.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.016.021.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.i, %.lr.ph23.i.i.i.i.i.i.i.i.i.i.i ], [ %i.am, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.016.021.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !469
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.016.021.i.i.i.i.i.i.i.i.i.i.i, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !187
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.s, align 1
  %i.t = add i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  %i.u = zext i32 %i.t to i64
  %i.v = add nuw nsw i64 %i.u, %i.p
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.016.021.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !470
  %i.y = zext i32 %i.x to i64                     ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.016.021.i.i.i.i.i.i.i.i.i.i.i, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.016.021.i.i.i.i.i.i.i.i.i.i.i, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !184 ; 4 uses
  %i.ac = icmp ugt i64 %i.ab, %i.y
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !471 ; 2 uses
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4mold9CieRecordINS_6X86_64EE8get_relsEv.exit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.c, %bb.d
  %.06.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.af, %bb.d ], [ %i.y, %bb.c ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.06.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ad, align 1
  %i.ae = icmp ult i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.v
  br i1 %i.ae, label %bb.d, label %_ZNK4mold9CieRecordINS_6X86_64EE8get_relsEv.exit.i.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.af = add nuw i64 %.06.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.af, %i.ab
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4mold9CieRecordINS_6X86_64EE8get_relsEv.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !458

_ZNK4mold9CieRecordINS_6X86_64EE8get_relsEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.y, %bb.c ], [ %i.ab, %bb.d ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ag = sub nuw nsw i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %i.y ; 2 uses
  %i.ah = icmp eq i64 %i.ag, -1
  %i.ai = sub i64 %i.ab, %i.y
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ah, i64 %i.ai, i64 %i.ag ; 2 uses
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.y ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.al = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.al, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %_ZZN4moldL16collect_root_setINS_6X86_64EEEN3tbb6detail2d117concurrent_vectorIPNS_12InputSectionIT_EENS4_23cache_aligned_allocatorIS9_EEEERNS_7ContextIS7_EEENKUlPNS_6SymbolIS1_EEE_clESI_.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZNK4mold9CieRecordINS_6X86_64EE8get_relsEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.016.021.i.i.i.i.i.i.i.i.i.i.i, i64 72 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.k
  br i1 %i.an, label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL16collect_root_setINS3_6X86_64EEENS0_2d117concurrent_vectorIPNS3_12InputSectionIT_EENS6_23cache_aligned_allocatorISB_EEEERNS3_7ContextIS9_EEEUlPNS3_10ObjectFileIS5_EEE1_E4callIRSK_NS1_11feeder_implISL_SK_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS9_Efp0_EEcvv_EERKSL_OS9_PT0_.exit.i.i.i.i.i, label %bb.c

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZNK4mold9CieRecordINS_6X86_64EE8get_relsEv.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZZN4moldL16collect_root_setINS_6X86_64EEEN3tbb6detail2d117concurrent_vectorIPNS_12InputSectionIT_EENS4_23cache_aligned_allocatorIS9_EEEERNS_7ContextIS7_EEENKUlPNS_6SymbolIS1_EEE_clESI_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.010.020.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dl, %_ZZN4moldL16collect_root_setINS_6X86_64EEEN3tbb6detail2d117concurrent_vectorIPNS_12InputSectionIT_EENS4_23cache_aligned_allocatorIS9_EEEERNS_7ContextIS7_EEENKUlPNS_6SymbolIS1_EEE_clESI_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aj, %_ZNK4mold9CieRecordINS_6X86_64EE8get_relsEv.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !473, !nonnull !66, !align !182
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.010.020.i.i.i.i.i.i.i.i.i.i.i, i64 12
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ap, align 1
  %i.aq = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ar = load ptr, ptr %i.m, align 8, !tbaa !254
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.aq ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !242 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.at, 0
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sext i32 %i.at to i64
  %i.aw = shl nsw i64 %i.av, 2
  %i.ax = add nsw i64 %i.aw, %i.au                ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ao, align 8
  %.not.i919.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ax, 0
  %.not.i9.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not.i919.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i9.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN4moldL16collect_root_setINS_6X86_64EEEN3tbb6detail2d117concurrent_vectorIPNS_12InputSectionIT_EENS4_23cache_aligned_allocatorIS9_EEEERNS_7ContextIS7_EEENKUlPNS_6SymbolIS1_EEE_clESI_.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !244 ; 4 uses
  %i.ba = and i64 %i.az, 3                        ; 2 uses
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.ba, 2
  %i.bb = and i64 %i.az, -4                       ; 2 uses
  %.not71.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bb, 0
  %.not7.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.not71.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not7.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 13
  store atomic i8 1, ptr %i.bd monotonic, align 1
  br label %_ZZN4moldL16collect_root_setINS_6X86_64EEEN3tbb6detail2d117concurrent_vectorIPNS_12InputSectionIT_EENS4_23cache_aligned_allocatorIS9_EEEERNS_7ContextIS7_EEENKUlPNS_6SymbolIS1_EEE_clESI_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %.not3.i.i8.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.ba, 0
  %i.be = inttoptr i64 %i.az to ptr               ; 3 uses
  %.not.i.i2.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.az, 0
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %.not.i.i2.i.i.i.i.i.i.i.i.i.i.i.i, %.not3.i.i8.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN4moldL16collect_root_setINS_6X86_64EEEN3tbb6detail2d117concurrent_vectorIPNS_12InputSectionIT_EENS4_23cache_aligned_allocatorIS9_EEEERNS_7ContextIS7_EEENKUlPNS_6SymbolIS1_EEE_clESI_.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 59
  %i.bg = load atomic i8, ptr %i.bf monotonic, align 1, !range !65, !noundef !66
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.i, label %_ZZN4moldL16collect_root_setINS_6X86_64EEEN3tbb6detail2d117concurrent_vectorIPNS_12InputSectionIT_EENS4_23cache_aligned_allocatorIS9_EEEERNS_7ContextIS7_EEENKUlPNS_6SymbolIS1_EEE_clESI_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 60 ; 2 uses
  %i.bj = load atomic i8, ptr %i.bi monotonic, align 4, !range !65, !noundef !66
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %_ZZN4moldL16collect_root_setINS_6X86_64EEEN3tbb6detail2d117concurrent_vectorIPNS_12InputSectionIT_EENS4_23cache_aligned_allocatorIS9_EEEERNS_7ContextIS7_EEENKUlPNS_6SymbolIS1_EEE_clESI_.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4moldL12mark_sectionINS_6X86_64EEEbPNS_12InputSectionIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4moldL12mark_sectionINS_6X86_64EEEbPNS_12InputSectionIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.bl = atomicrmw xchg ptr %i.bi, i8 1 monotonic, align 1
  %i.bm = trunc i8 %i.bl to i1
  br i1 %i.bm, label %_ZZN4moldL16collect_root_setINS_6X86_64EEEN3tbb6detail2d117concurrent_vectorIPNS_12InputSectionIT_EENS4_23cache_aligned_allocatorIS9_EEEERNS_7ContextIS7_EEENKUlPNS_6SymbolIS1_EEE_clESI_.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN4moldL12mark_sectionINS_6X86_64EEEbPNS_12InputSectionIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bn = load ptr, ptr %.val.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !232, !nonnull !66, !align !182 ; 9 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.bp = atomicrmw add ptr %i.bo, i64 1 seq_cst, align 8, !noalias !474 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 48 ; 3 uses
  %i.br = load atomic i64, ptr %i.bq monotonic, align 8, !noalias !474
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.k, label %_ZN3tbb6detail2d117concurrent_vectorIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EEE9push_backERKS7_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bt = cmpxchg ptr %i.bq, i64 0, i64 1 seq_cst seq_cst, align 8, !noalias !474 ; 0 uses
  br label %_ZN3tbb6detail2d117concurrent_vectorIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EEE9push_backERKS7_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN3tbb6detail2d117concurrent_vectorIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EEE9push_backERKS7_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %i.bu = or i64 %i.bp, 1
  %i.bv = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bu, i1 true) ; 3 uses
  %i.bw = xor i64 %i.bv, 63                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10, !noalias !474
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.by = load atomic ptr, ptr %i.bx acquire, align 8, !noalias !474 ; 4 uses
  store ptr %i.by, ptr %i.b, align 8, !tbaa !233, !noalias !474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !474
  store i64 %i.bp, ptr %i.a, align 8, !tbaa !150, !noalias !474
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.ca = icmp eq ptr %i.by, %i.bz
  %i.cb = add i64 %i.bp, -8
  %i.cc = icmp ult i64 %i.cb, -9
  %or.cond.i.i.i.i.i.i.i = and i1 %i.cc, %i.ca
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.l, label %_ZN3tbb6detail2d113segment_tableIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS7_Emm.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %_ZN3tbb6detail2d117concurrent_vectorIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EEE9push_backERKS7_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cd = icmp ult i64 %i.bp, 9
  br i1 %i.cd, label %bb.m, label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %bb.l
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10, !noalias !474
  store ptr %i.bn, ptr %1, align 8, !noalias !474
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !474
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !474
  call void @_ZN3tbb6detail2d014try_call_proxyIZNS0_2d113segment_tableIPN4mold12InputSectionINS5_6X86_64EEENS3_23cache_aligned_allocatorIS9_EENS3_17concurrent_vectorIS9_SB_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS9_EmmEUlvE_E12on_exceptionIZNSE_25extend_table_if_necessaryESJ_mmEUlvE0_EEvT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull align 8 dereferenceable(65) %i.bn), !noalias !474
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10, !noalias !474
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !233, !noalias !474
  br label %_ZN3tbb6detail2d113segment_tableIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS7_Emm.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i.i.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i ], [ 1, %.preheader.i.i.i.i.i.i.i ] ; 8 uses
  %i.cf = load atomic i8, ptr %i.ce monotonic, align 8, !range !65, !noalias !474, !noundef !66
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @_ZN3tbb6detail2r115throw_exceptionENS0_2d012exception_idE(i32 noundef 1) #10, !noalias !474
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ch = icmp slt i32 %.sroa.0.0.i.i.i.i.i.i.i, 17
  br i1 %i.ch, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ci = icmp sgt i32 %.sroa.0.0.i.i.i.i.i.i.i, 0
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.q
  %xtraiter = and i32 %.sroa.0.0.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.01.i.i.i.i.i.i.i.i.i.prol = phi i32 [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.0.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %i.cj = add nsw i32 %.01.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !474
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !463

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.01.i.i.i.i.i.i.i.i.i.unr = phi i32 [ %.sroa.0.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.ck = icmp ult i32 %.sroa.0.0.i.i.i.i.i.i.i, 8
  br i1 %i.ck, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.01.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cl, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.01.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !474
  call void @llvm.x86.sse2.pause(), !noalias !474
  call void @llvm.x86.sse2.pause(), !noalias !474
  call void @llvm.x86.sse2.pause(), !noalias !474
  call void @llvm.x86.sse2.pause(), !noalias !474
  call void @llvm.x86.sse2.pause(), !noalias !474
  call void @llvm.x86.sse2.pause(), !noalias !474
  %i.cl = add nsw i32 %.01.i.i.i.i.i.i.i.i.i, -8
  call void @llvm.x86.sse2.pause(), !noalias !474
  %i.cm = icmp sgt i32 %.01.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.q
  %i.cn = shl i32 %.sroa.0.0.i.i.i.i.i.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.co = call noundef i32 @sched_yield() #10, !noalias !474 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i: ; preds = %bb.r, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i = phi i32 [ %i.cn, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.r ]
  %i.cp = load atomic ptr, ptr %i.bx acquire, align 8, !noalias !474 ; 3 uses
  store ptr %i.cp, ptr %i.b, align 8, !tbaa !233, !noalias !474
  %i.cq = icmp eq ptr %i.cp, %i.by
  br i1 %i.cq, label %bb.n, label %_ZN3tbb6detail2d113segment_tableIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS7_Emm.exit.i.i.i.i.i.i, !llvm.loop !6

_ZN3tbb6detail2d113segment_tableIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS7_Emm.exit.i.i.i.i.i.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i, %bb.m, %_ZN3tbb6detail2d117concurrent_vectorIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EEE9push_backERKS7_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cr = phi ptr [ %.pre.i.i.i.i.i.i, %bb.m ], [ %i.by, %_ZN3tbb6detail2d117concurrent_vectorIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EEE9push_backERKS7_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cp, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !474
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.bw
  %i.ct = load atomic ptr, ptr %i.cs acquire, align 8, !noalias !474 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN3tbb6detail2d113segment_tableIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS7_Emm.exit.i.i.i.i.i.i
  %i.cv = load ptr, ptr %i.b, align 8, !tbaa !233, !noalias !474 ; 3 uses
  %i.cw = call noundef ptr @_ZN3tbb6detail2d117concurrent_vectorIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EEE14create_segmentEPSt6atomicIPS7_Emm(ptr noundef nonnull align 8 dereferenceable(65) %i.bn, ptr noundef %i.cv, i64 noundef %i.bw, i64 noundef %i.bp), !noalias !474 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d113segment_tableIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE14enable_segmentERPS7_PSt6atomicISD_Emm.exit.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.bw
  %i.cy = lshr exact i64 -9223372036854775808, %i.bv
  %i.cz = and i64 %i.cy, -2
  %i.da = sub i64 0, %i.cz
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.da
  %i.dc = cmpxchg ptr %i.cx, ptr null, ptr %i.db seq_cst seq_cst, align 8, !noalias !474
  %i.dd = extractvalue { ptr, i1 } %i.dc, 1
  br i1 %i.dd, label %_ZN3tbb6detail2d113segment_tableIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE14enable_segmentERPS7_PSt6atomicISD_Emm.exit.i.i.i.i.i.i, label %_ZNSt6atomicIPPN4mold12InputSectionINS0_6X86_64EEEE23compare_exchange_strongERS5_S5_St12memory_order.exit.i.i.i.i.i.i.i

_ZNSt6atomicIPPN4mold12InputSectionINS0_6X86_64EEEE23compare_exchange_strongERS5_S5_St12memory_order.exit.i.i.i.i.i.i.i: ; preds = %bb.t
  %i.de = load atomic i64, ptr %i.bq monotonic, align 8, !noalias !474
  %.not.i.i.i.i.i.i.i.i = icmp uge i64 %i.bw, %i.de
  %i.df = icmp eq i64 %i.bv, 63
  %or.cond.i.i.i.i.i.i.i.i = or i1 %i.df, %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d113segment_tableIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE14enable_segmentERPS7_PSt6atomicISD_Emm.exit.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %_ZNSt6atomicIPPN4mold12InputSectionINS0_6X86_64EEEE23compare_exchange_strongERS5_S5_St12memory_order.exit.i.i.i.i.i.i.i
  call void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef nonnull %i.cw) #10, !noalias !474
  br label %_ZN3tbb6detail2d113segment_tableIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE14enable_segmentERPS7_PSt6atomicISD_Emm.exit.i.i.i.i.i.i

_ZN3tbb6detail2d113segment_tableIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE14enable_segmentERPS7_PSt6atomicISD_Emm.exit.i.i.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i, %_ZNSt6atomicIPPN4mold12InputSectionINS0_6X86_64EEEE23compare_exchange_strongERS5_S5_St12memory_order.exit.i.i.i.i.i.i.i, %bb.t, %bb.s
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.bw
  %i.dh = load atomic ptr, ptr %i.dg acquire, align 8, !noalias !474
  br label %bb.u

bb.u:                                             ; preds = %_ZN3tbb6detail2d113segment_tableIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE14enable_segmentERPS7_PSt6atomicISD_Emm.exit.i.i.i.i.i.i, %_ZN3tbb6detail2d113segment_tableIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS7_Emm.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.dh, %_ZN3tbb6detail2d113segment_tableIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE14enable_segmentERPS7_PSt6atomicISD_Emm.exit.i.i.i.i.i.i ], [ %i.ct, %_ZN3tbb6detail2d113segment_tableIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS7_Emm.exit.i.i.i.i.i.i ] ; 2 uses
  %i.di = load ptr, ptr %i.bn, align 8, !tbaa !78, !noalias !474
  %i.dj = icmp eq ptr %.0.i.i.i.i.i.i, %i.di
  br i1 %i.dj, label %bb.v, label %_ZN3tbb6detail2d113segment_tableIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE18internal_subscriptILb1EEERS7_m.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  call void @_ZN3tbb6detail2r115throw_exceptionENS0_2d012exception_idE(i32 noundef 1) #10, !noalias !474
  br label %_ZN3tbb6detail2d113segment_tableIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE18internal_subscriptILb1EEERS7_m.exit.i.i.i.i.i

_ZN3tbb6detail2d113segment_tableIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE18internal_subscriptILb1EEERS7_m.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i.i, i64 %i.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10, !noalias !474
  store ptr %i.be, ptr %i.dk, align 8, !tbaa !175, !noalias !474
  br label %_ZZN4moldL16collect_root_setINS_6X86_64EEEN3tbb6detail2d117concurrent_vectorIPNS_12InputSectionIT_EENS4_23cache_aligned_allocatorIS9_EEEERNS_7ContextIS7_EEENKUlPNS_6SymbolIS1_EEE_clESI_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZZN4moldL16collect_root_setINS_6X86_64EEEN3tbb6detail2d117concurrent_vectorIPNS_12InputSectionIT_EENS4_23cache_aligned_allocatorIS9_EEEERNS_7ContextIS7_EEENKUlPNS_6SymbolIS1_EEE_clESI_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN3tbb6detail2d113segment_tableIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE18internal_subscriptILb1EEERS7_m.exit.i.i.i.i.i, %_ZN4moldL12mark_sectionINS_6X86_64EEEbPNS_12InputSectionIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i, %bb.h, %bb.g, %bb.f, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.010.020.i.i.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.ak
  br i1 %i.dm, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL16collect_root_setINS3_6X86_64EEENS0_2d117concurrent_vectorIPNS3_12InputSectionIT_EENS6_23cache_aligned_allocatorISB_EEEERNS3_7ContextIS9_EEEUlPNS3_10ObjectFileIS5_EEE1_E4callIRSK_NS1_11feeder_implISL_SK_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS9_Efp0_EEcvv_EERKSL_OS9_PT0_.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.b
  %i.dn = add i64 %.02.i.i.i.i.i, 1               ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.dn, %.0.val
  br i1 %.not.i.i.i.i.i, label %_ZN3tbb6detail2d06invokeIRKNS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS7_6X86_64EEESt6vectorISB_SaISB_EEEEZNS7_L16collect_root_setIS9_EENS0_2d117concurrent_vectorIPNS7_12InputSectionIT_EENSI_23cache_aligned_allocatorISN_EEEERNS7_7ContextISL_EEEUlSB_E1_SB_EEJRNSI_13blocked_rangeImEEEEENSt13invoke_resultISL_JDpT0_EE4typeEOSL_DpOS12_.exit, label %bb.b, !llvm.loop !464

_ZN3tbb6detail2d06invokeIRKNS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS7_6X86_64EEESt6vectorISB_SaISB_EEEEZNS7_L16collect_root_setIS9_EENS0_2d117concurrent_vectorIPNS7_12InputSectionIT_EENSI_23cache_aligned_allocatorISN_EEEERNS7_7ContextISL_EEEUlSB_E1_SB_EEJRNSI_13blocked_rangeImEEEEENSt13invoke_resultISL_JDpT0_EE4typeEOSL_DpOS12_.exit: ; preds = %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL16collect_root_setINS3_6X86_64EEENS0_2d117concurrent_vectorIPNS3_12InputSectionIT_EENS6_23cache_aligned_allocatorISB_EEEERNS3_7ContextIS9_EEEUlPNS3_10ObjectFileIS5_EEE1_E4callIRSK_NS1_11feeder_implISL_SK_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS9_Efp0_EEcvv_EERKSL_OS9_PT0_.exit.i.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d113segment_tableIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE5clearEv(ptr noundef nonnull align 8 dereferenceable(65) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = icmp eq ptr %i.b, %i.c
  %i.e = select i1 %i.d, i64 3, i64 64
end_hunk_1
