Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/gdb-index.cc.X86_64?download=true
inline.NumInlined: 4499
inline.NumDeleted: 1982
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINS9_8MapValueEE5EntryESt6vectorISE_SaISE_EEEEZNS9_21read_gdb_index_inputsINS9_6X86_64EEEvRNS9_7ContextIT_EEEUlSE_E_SE_EEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE:bb.a
  %i.ar = ptrtoint ptr %i.aq to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.ar) #13
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINS9_8MapValueEE5EntryESt6vectorISE_SaISE_EEEEZNS9_21read_gdb_index_inputsINS9_6X86_64EEEvRNS9_7ContextIT_EEEUlSE_E_SE_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINS9_8MapValueEE5EntryESt6vectorISE_SaISE_EEEEZNS9_21read_gdb_index_inputsINS9_6X86_64EEEvRNS9_7ContextIT_EEEUlSE_E_SE_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.f, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINSF_8MapValueEE5EntryESt6vectorISK_SaISK_EEEEZNSF_21read_gdb_index_inputsINSF_6X86_64EEEvRNSF_7ContextIT_EEEUlSK_E_SK_EEKNS1_16auto_partitionerEEEEEbRST_RKNS1_14execution_dataE.exit, %bb.g, %bb.h
  %i.as = inttoptr i64 %i.z to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.as, ptr noundef nonnull align 64 dereferenceable(144) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #13
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINS9_8MapValueEE5EntryESt6vectorISE_SaISE_EEEEZNS9_21read_gdb_index_inputsINS9_6X86_64EEEvRNS9_7ContextIT_EEEUlSE_E_SE_EEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !493 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i64, ptr %i.c, align 8, !tbaa !110
  %i.e = load ptr, ptr %0, align 64, !tbaa !53
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(144) dereferenceable(144) %0) #13, !inline_history !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = atomicrmw sub ptr %i.g, i32 1 seq_cst, align 4
  %i.i = add i32 %i.h, -1
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINS9_8MapValueEE5EntryESt6vectorISE_SaISE_EEEEZNS9_21read_gdb_index_inputsINS9_6X86_64EEEvRNS9_7ContextIT_EEEUlSE_E_SE_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.k, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.k = load ptr, ptr %.019.i.i, align 8, !tbaa !114 ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !110
  %i.n = inttoptr i64 %i.m to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #13
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = atomicrmw sub ptr %i.o, i32 1 seq_cst, align 4
  %i.q = add i32 %i.p, -1
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINS9_8MapValueEE5EntryESt6vectorISE_SaISE_EEEEZNS9_21read_gdb_index_inputsINS9_6X86_64EEEvRNS9_7ContextIT_EEEUlSE_E_SE_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.t = atomicrmw sub ptr %i.s, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINS9_8MapValueEE5EntryESt6vectorISE_SaISE_EEEEZNS9_21read_gdb_index_inputsINS9_6X86_64EEEvRNS9_7ContextIT_EEEUlSE_E_SE_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v) #13
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINS9_8MapValueEE5EntryESt6vectorISE_SaISE_EEEEZNS9_21read_gdb_index_inputsINS9_6X86_64EEEvRNS9_7ContextIT_EEEUlSE_E_SE_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINS9_8MapValueEE5EntryESt6vectorISE_SaISE_EEEEZNS9_21read_gdb_index_inputsINS9_6X86_64EEEvRNS9_7ContextIT_EEEUlSE_E_SE_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(144) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #13
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINSD_8MapValueEE5EntryESt6vectorISI_SaISI_EEEEZNSD_21read_gdb_index_inputsINSD_6X86_64EEEvRNSD_7ContextIT_EEEUlSI_E_SI_EEKNS1_16auto_partitionerEEES8_EEvRSR_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !415
  %i.c = load i64, ptr %2, align 8, !tbaa !416
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !417
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4, !tbaa !108   ; 2 uses
  %.not4.i = icmp eq i8 %i.k, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = add i8 %i.k, -1
  store i8 %i.l, ptr %i.j, align 4, !tbaa !108
  store i64 0, ptr %0, align 8, !tbaa !109
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit: ; preds = %bb.b, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr null, ptr %4, align 8, !tbaa !94
  %i.u = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3) #13, !inline_history !1087 ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINS9_8MapValueEE5EntryESt6vectorISE_SaISE_EEEEZNS9_21read_gdb_index_inputsINS9_6X86_64EEEvRNS9_7ContextIT_EEEUlSE_E_SE_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.u, align 64, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.x = load i64, ptr %i.n, align 64, !tbaa !416 ; 2 uses
  store i64 %i.x, ptr %i.w, align 64, !tbaa !416
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.z = load i64, ptr %i.o, align 8, !tbaa !417  ; 2 uses
  %i.aa = sub i64 %i.x, %i.z
  %i.ab = lshr i64 %i.aa, 1
  %i.ac = add i64 %i.ab, %i.z                     ; 2 uses
  store i64 %i.ac, ptr %i.n, align 64, !tbaa !416
  store i64 %i.ac, ptr %i.y, align 8, !tbaa !417
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.ae = load i64, ptr %i.p, align 16, !tbaa !415
  store i64 %i.ae, ptr %i.ad, align 16, !tbaa !415
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !496
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 112 ; 2 uses
  store ptr null, ptr %i.ag, align 16, !tbaa !493
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  %i.ai = load i64, ptr %i.r, align 8, !tbaa !109
  %i.aj = lshr i64 %i.ai, 1                       ; 2 uses
  store i64 %i.aj, ptr %i.r, align 8, !tbaa !109
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !109
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  store i32 2, ptr %i.ak, align 64, !tbaa !107
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 132
  %i.am = load i8, ptr %i.s, align 4, !tbaa !108
  store i8 %i.am, ptr %i.al, align 4, !tbaa !108
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  %i.ao = load i64, ptr %4, align 8, !tbaa !110
  store i64 %i.ao, ptr %i.an, align 8, !tbaa !110
  %i.ap = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3) #13, !inline_history !1088 ; 6 uses
  %i.aq = load ptr, ptr %i.t, align 16, !tbaa !397
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !114
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 2, ptr %i.ar, align 8, !tbaa !115
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.at = load i64, ptr %4, align 8, !tbaa !110
  store i64 %i.at, ptr %i.as, align 8, !tbaa !110
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i8 0, ptr %i.au, align 8, !tbaa !398
  store ptr %i.ap, ptr %i.t, align 16, !tbaa !493
  store ptr %i.ap, ptr %i.ag, align 16, !tbaa !493
  %i.av = load ptr, ptr %3, align 8, !tbaa !399
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(144) %i.u, ptr noundef nonnull align 8 dereferenceable(128) %i.av) #13, !inline_history !1088
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !415
  %i.ax = load i64, ptr %2, align 8, !tbaa !416
  %i.ay = load i64, ptr %i.d, align 8, !tbaa !417
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp ult i64 %i.aw, %i.az
  br i1 %i.ba, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.bb = load i64, ptr %0, align 8, !tbaa !109   ; 2 uses
  %i.bc = icmp ugt i64 %i.bb, 1
  br i1 %i.bc, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, label %bb.g

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge: ; preds = %bb.f, %bb.i
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !1089

bb.g:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i64 %i.bb, 0
  br i1 %.not.i8, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = load i8, ptr %i.m, align 4, !tbaa !108  ; 2 uses
  %.not4.i9 = icmp eq i8 %i.bd, 0
  br i1 %.not4.i9, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = add i8 %i.bd, -1
  store i8 %i.be, ptr %i.m, align 4, !tbaa !108
  store i64 0, ptr %0, align 8, !tbaa !109
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINSF_8MapValueEE5EntryESt6vectorISK_SaISK_EEEEZNSF_21read_gdb_index_inputsINSF_6X86_64EEEvRNSF_7ContextIT_EEEUlSK_E_SK_EEKNS1_16auto_partitionerEEESA_EEvRST_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINSF_8MapValueEE5EntryESt6vectorISK_SaISK_EEEEZNSF_21read_gdb_index_inputsINSF_6X86_64EEEvRNSF_7ContextIT_EEEUlSK_E_SK_EEKNS1_16auto_partitionerEEESA_EEvRST_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::range_vector.486", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !415
  %i.c = load i64, ptr %2, align 8, !tbaa !416    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !417  ; 4 uses
  %i.f = sub i64 %i.c, %i.e                       ; 3 uses
  %i.g = icmp ult i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !108
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.e, %i.c
  br i1 %.not3.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINS9_8MapValueEE5EntryESt6vectorISE_SaISE_EEEEZNS9_21read_gdb_index_inputsINS9_6X86_64EEEvRNS9_7ContextIT_EEEUlSE_E_SE_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.l = load ptr, ptr %i.k, align 32, !tbaa !1096, !nonnull !365, !align !386
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !497  ; 5 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !1098, !nonnull !365, !align !386
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !212
  %i.q = trunc i64 %i.p to i32                    ; 5 uses
  %xtraiter61 = and i64 %i.f, 3                   ; 2 uses
  %lcmp.mod62.not = icmp eq i64 %xtraiter61, 0
  br i1 %lcmp.mod62.not, label %.prol.loopexit60, label %.prol.preheader59

.prol.preheader59:                                ; preds = %.lr.ph.i.i.i.i.i.i, %.prol.preheader59
  %.04.i.i.i.i.i.i.prol = phi i64 [ %i.w, %.prol.preheader59 ], [ %i.e, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %prol.iter63 = phi i64 [ %prol.iter63.next, %.prol.preheader59 ], [ 0, %.lr.ph.i.i.i.i.i.i ]
  %i.r = getelementptr inbounds [8 x i8], ptr %i.m, i64 %.04.i.i.i.i.i.i.prol
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !349
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 20 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !356
  %i.v = add i32 %i.u, %i.q
  store i32 %i.v, ptr %i.t, align 4, !tbaa !356
  %i.w = add i64 %.04.i.i.i.i.i.i.prol, 1         ; 2 uses
  %prol.iter63.next = add i64 %prol.iter63, 1     ; 2 uses
  %prol.iter63.cmp.not = icmp eq i64 %prol.iter63.next, %xtraiter61
  br i1 %prol.iter63.cmp.not, label %.prol.loopexit60, label %.prol.preheader59, !llvm.loop !1090

.prol.loopexit60:                                 ; preds = %.prol.preheader59, %.lr.ph.i.i.i.i.i.i
  %.04.i.i.i.i.i.i.unr = phi i64 [ %i.e, %.lr.ph.i.i.i.i.i.i ], [ %i.w, %.prol.preheader59 ]
  %6 = icmp ult i64 %i.f, 4
  br i1 %6, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINS9_8MapValueEE5EntryESt6vectorISE_SaISE_EEEEZNS9_21read_gdb_index_inputsINS9_6X86_64EEEvRNS9_7ContextIT_EEEUlSE_E_SE_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %.lr.ph.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.new:                           ; preds = %.prol.loopexit60, %.lr.ph.i.i.i.i.i.i.new
  %.04.i.i.i.i.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i.i.new ], [ %.04.i.i.i.i.i.i.unr, %.prol.loopexit60 ] ; 5 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.m, i64 %.04.i.i.i.i.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !349
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 20 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !356
  %i.ab = add i32 %i.aa, %i.q
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !356
  %i.ac = getelementptr [8 x i8], ptr %i.m, i64 %.04.i.i.i.i.i.i
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !349
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 20 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !356
  %i.ah = add i32 %i.ag, %i.q
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !356
  %i.ai = getelementptr [8 x i8], ptr %i.m, i64 %.04.i.i.i.i.i.i
  %i.aj = getelementptr i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !349
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 20 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !356
  %i.an = add i32 %i.am, %i.q
  store i32 %i.an, ptr %i.al, align 4, !tbaa !356
  %i.ao = getelementptr [8 x i8], ptr %i.m, i64 %.04.i.i.i.i.i.i
  %i.ap = getelementptr i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !349
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 20 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !356
  %i.at = add i32 %i.as, %i.q
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !356
  %i.au = add i64 %.04.i.i.i.i.i.i, 4             ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.au, %i.c
  br i1 %.not.i.i.i.i.i.i.3, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINS9_8MapValueEE5EntryESt6vectorISE_SaISE_EEEEZNS9_21read_gdb_index_inputsINS9_6X86_64EEEvRNS9_7ContextIT_EEEUlSE_E_SE_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %.lr.ph.i.i.i.i.i.i.new, !llvm.loop !1091

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 20 uses
  store i8 0, ptr %i.av, align 1, !tbaa !47
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !389
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 132
  br label %bb.e

bb.e:                                             ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit, %bb.d
  %i.bc = phi i8 [ %i.no, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 0, %bb.d ] ; 3 uses
  %i.bd = phi i8 [ %i.np, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 1, %bb.d ] ; 13 uses
  %i.be = phi i8 [ %i.nq, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 0, %bb.d ] ; 9 uses
  %i.bf = load i8, ptr %i.h, align 4, !tbaa !108  ; 10 uses
  %i.bg = icmp ult i8 %i.bd, 8
  br i1 %i.bg, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.phi.trans.insert.i = zext i8 %i.be to i64
  %.phi.trans.insert6.i = getelementptr inbounds nuw i8, ptr %i.av, i64 %.phi.trans.insert.i
  %.pre.i = load i8, ptr %.phi.trans.insert6.i, align 1, !tbaa !47
  %i.bh = icmp ult i8 %.pre.i, %i.bf
  br i1 %i.bh, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

bb.f:                                             ; preds = %bb.u
  %i.bi = icmp ult i8 %i.jk, %i.bf
  br i1 %i.bi, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.1: ; preds = %bb.f
  %i.bj = zext nneg i8 %i.iy to i64               ; 2 uses
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.bj ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !415
  %i.bn = load i64, ptr %i.bk, align 8, !tbaa !416
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !417
  %i.bq = sub i64 %i.bn, %i.bp
  %i.br = icmp ult i64 %i.bm, %i.bq
  br i1 %i.br, label %bb.g, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

bb.g:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bj ; 2 uses
  %i.bt = add i8 %i.be, 2
  %i.bu = and i8 %i.bt, 7                         ; 5 uses
  %i.bv = zext nneg i8 %i.bu to i64               ; 2 uses
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.bv ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false), !tbaa.struct !389
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !416 ; 2 uses
  store i64 %i.bx, ptr %i.bk, align 8, !tbaa !416
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !417 ; 2 uses
  %i.ca = sub i64 %i.bx, %i.bz
  %i.cb = lshr i64 %i.ca, 1
  %i.cc = add i64 %i.cb, %i.bz                    ; 2 uses
  store i64 %i.cc, ptr %i.bw, align 8, !tbaa !416
  store i64 %i.cc, ptr %i.bo, align 8, !tbaa !417
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !415
  store i64 %i.ce, ptr %i.bl, align 8, !tbaa !415
  %i.cf = load i8, ptr %i.bs, align 1, !tbaa !47
  %i.cg = add i8 %i.cf, 1                         ; 3 uses
  store i8 %i.cg, ptr %i.bs, align 1, !tbaa !47
  %i.ch = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bv
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !47
  %i.ci = add nuw nsw i8 %i.bd, 2                 ; 3 uses
  %exitcond.not.i.1 = icmp eq i8 %i.ci, 8
  br i1 %exitcond.not.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread, label %bb.h, !llvm.loop !11

bb.h:                                             ; preds = %bb.g
  %i.cj = icmp ult i8 %i.cg, %i.bf
  br i1 %i.cj, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.2: ; preds = %bb.h
  %i.ck = zext nneg i8 %i.bu to i64               ; 2 uses
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.ck ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !415
  %i.co = load i64, ptr %i.cl, align 8, !tbaa !416
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !417
  %i.cr = sub i64 %i.co, %i.cq
  %i.cs = icmp ult i64 %i.cn, %i.cr
  br i1 %i.cs, label %bb.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

bb.i:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.2
  %i.ct = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ck ; 2 uses
  %i.cu = add i8 %i.be, 3
  %i.cv = and i8 %i.cu, 7                         ; 5 uses
  %i.cw = zext nneg i8 %i.cv to i64               ; 2 uses
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.cw ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false), !tbaa.struct !389
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !416 ; 2 uses
  store i64 %i.cy, ptr %i.cl, align 8, !tbaa !416
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !417 ; 2 uses
  %i.db = sub i64 %i.cy, %i.da
  %i.dc = lshr i64 %i.db, 1
  %i.dd = add i64 %i.dc, %i.da                    ; 2 uses
  store i64 %i.dd, ptr %i.cx, align 8, !tbaa !416
  store i64 %i.dd, ptr %i.cp, align 8, !tbaa !417
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.df = load i64, ptr %i.de, align 8, !tbaa !415
  store i64 %i.df, ptr %i.cm, align 8, !tbaa !415
  %i.dg = load i8, ptr %i.ct, align 1, !tbaa !47
  %i.dh = add i8 %i.dg, 1                         ; 3 uses
  store i8 %i.dh, ptr %i.ct, align 1, !tbaa !47
  %i.di = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.cw
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !47
  %i.dj = add nuw nsw i8 %i.bd, 3                 ; 3 uses
  %exitcond.not.i.2 = icmp eq i8 %i.dj, 8
  br i1 %exitcond.not.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread, label %bb.j, !llvm.loop !11

bb.j:                                             ; preds = %bb.i
  %i.dk = icmp ult i8 %i.dh, %i.bf
  br i1 %i.dk, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.3, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.3: ; preds = %bb.j
  %i.dl = zext nneg i8 %i.cv to i64               ; 2 uses
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.dl ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !415
  %i.dp = load i64, ptr %i.dm, align 8, !tbaa !416
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !417
  %i.ds = sub i64 %i.dp, %i.dr
  %i.dt = icmp ult i64 %i.do, %i.ds
  br i1 %i.dt, label %bb.k, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

bb.k:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.3
  %i.du = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.dl ; 2 uses
  %i.dv = and i8 %i.be, 7                         ; 4 uses
  %i.dw = xor i8 %i.dv, 4                         ; 8 uses
  %i.dx = zext nneg i8 %i.dw to i64               ; 2 uses
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.dx ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 24, i1 false), !tbaa.struct !389
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !416 ; 2 uses
  store i64 %i.dz, ptr %i.dm, align 8, !tbaa !416
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !417 ; 2 uses
  %i.ec = sub i64 %i.dz, %i.eb
  %i.ed = lshr i64 %i.ec, 1
  %i.ee = add i64 %i.ed, %i.eb                    ; 2 uses
  store i64 %i.ee, ptr %i.dy, align 8, !tbaa !416
  store i64 %i.ee, ptr %i.dq, align 8, !tbaa !417
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !415
  store i64 %i.eg, ptr %i.dn, align 8, !tbaa !415
  %i.eh = load i8, ptr %i.du, align 1, !tbaa !47
  %i.ei = add i8 %i.eh, 1                         ; 3 uses
  store i8 %i.ei, ptr %i.du, align 1, !tbaa !47
  %i.ej = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.dx
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !47
  %i.ek = add nuw nsw i8 %i.bd, 4                 ; 3 uses
  %exitcond.not.i.3 = icmp eq i8 %i.ek, 8
  br i1 %exitcond.not.i.3, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread, label %bb.l, !llvm.loop !11

bb.l:                                             ; preds = %bb.k
  %i.el = icmp ult i8 %i.ei, %i.bf
  br i1 %i.el, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.4, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.4: ; preds = %bb.l
  %i.em = zext nneg i8 %i.dw to i64               ; 2 uses
end_hunk_0
