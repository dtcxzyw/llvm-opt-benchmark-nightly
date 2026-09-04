Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/main.cc.X86_64?download=true
inline.NumInlined: 5581
inline.NumDeleted: 3026
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 101
begin_hunk_0_@_ZN3tbb6detail2d117concurrent_vectorIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EEE14create_segmentEPSt6atomicIPS4_Emm:bb.a

.lr.ph.i.i.us.i21.prol.loopexit:                  ; preds = %.lr.ph.i.i.us.i21.prol, %.lr.ph.i.i.us.i21.preheader
  %.01.i.i.us.i22.unr = phi i32 [ %.sroa.0.09.us.i17, %.lr.ph.i.i.us.i21.preheader ], [ %i.bx, %.lr.ph.i.i.us.i21.prol ]
  %i.by = icmp ult i32 %.sroa.0.09.us.i17, 8
  br i1 %i.by, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i20, label %.lr.ph.i.i.us.i21

.lr.ph.i.i.us.i21:                                ; preds = %.lr.ph.i.i.us.i21.prol.loopexit, %.lr.ph.i.i.us.i21
  %.01.i.i.us.i22 = phi i32 [ %i.bz, %.lr.ph.i.i.us.i21 ], [ %.01.i.i.us.i22.unr, %.lr.ph.i.i.us.i21.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.bz = add nsw i32 %.01.i.i.us.i22, -8
  tail call void @llvm.x86.sse2.pause()
  %i.ca = icmp sgt i32 %.01.i.i.us.i22, 8
  br i1 %i.ca, label %.lr.ph.i.i.us.i21, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i20, !llvm.loop !1

_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i20: ; preds = %.lr.ph.i.i.us.i21.prol.loopexit, %.lr.ph.i.i.us.i21, %bb.j
  %i.cb = shl i32 %.sroa.0.09.us.i17, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i18

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i18: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i20, %bb.i
  %.sroa.0.1.us.i19 = phi i32 [ %i.cb, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i20 ], [ %.sroa.0.09.us.i17, %bb.i ]
  %i.cc = load atomic ptr, ptr %i.br acquire, align 8
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %.lr.ph.i16, label %_ZN3tbb6detail2d015spin_wait_whileIPN4mold9ReaderJobEZNS1_18spin_wait_while_eqIS5_S5_EET_RKSt6atomicIS7_ET0_St12memory_orderEUlS5_E_EES7_SB_SC_SD_.exit, !llvm.loop !11

bb.k:                                             ; preds = %bb.a
  %i.ce = shl nuw i64 1, %2
  %i.cf = and i64 %i.ce, -2
  %i.cg = icmp eq i64 %3, %i.cf
  br i1 %i.cg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ch = icmp eq i64 %2, 0
  %i.ci = shl i64 120, %2
  %i.cj = select i1 %i.ch, i64 240, i64 %i.ci
  %i.ck = tail call noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef %i.cj) #19
  %i.cl = sub i64 0, %3
  %i.cm = getelementptr inbounds [120 x i8], ptr %i.ck, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  store atomic ptr %i.cm, ptr %i.cn release, align 8
  br label %_ZN3tbb6detail2d015spin_wait_whileIPN4mold9ReaderJobEZNS1_18spin_wait_while_eqIS5_S5_EET_RKSt6atomicIS7_ET0_St12memory_orderEUlS5_E_EES7_SB_SC_SD_.exit

bb.m:                                             ; preds = %bb.k
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2 ; 2 uses
  %i.cp = load atomic ptr, ptr %i.co acquire, align 8
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %.lr.ph.i25, label %_ZN3tbb6detail2d015spin_wait_whileIPN4mold9ReaderJobEZNS1_18spin_wait_while_eqIS5_S5_EET_RKSt6atomicIS7_ET0_St12memory_orderEUlS5_E_EES7_SB_SC_SD_.exit

.lr.ph.i25:                                       ; preds = %bb.m, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27
  %.sroa.0.09.us.i26 = phi i32 [ %.sroa.0.1.us.i28, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27 ], [ 1, %bb.m ] ; 8 uses
  %i.cr = icmp slt i32 %.sroa.0.09.us.i26, 17
  br i1 %i.cr, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i25
  %i.cs = tail call noundef i32 @sched_yield() #19 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27

bb.o:                                             ; preds = %.lr.ph.i25
  %i.ct = icmp sgt i32 %.sroa.0.09.us.i26, 0
  br i1 %i.ct, label %.lr.ph.i.i.us.i30.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29

.lr.ph.i.i.us.i30.preheader:                      ; preds = %bb.o
  %xtraiter = and i32 %.sroa.0.09.us.i26, 7       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.us.i30.prol.loopexit, label %.lr.ph.i.i.us.i30.prol

.lr.ph.i.i.us.i30.prol:                           ; preds = %.lr.ph.i.i.us.i30.preheader, %.lr.ph.i.i.us.i30.prol
  %.01.i.i.us.i31.prol = phi i32 [ %i.cu, %.lr.ph.i.i.us.i30.prol ], [ %.sroa.0.09.us.i26, %.lr.ph.i.i.us.i30.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.us.i30.prol ], [ 0, %.lr.ph.i.i.us.i30.preheader ]
  %i.cu = add nsw i32 %.01.i.i.us.i31.prol, -1    ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.us.i30.prol.loopexit, label %.lr.ph.i.i.us.i30.prol, !llvm.loop !1168

.lr.ph.i.i.us.i30.prol.loopexit:                  ; preds = %.lr.ph.i.i.us.i30.prol, %.lr.ph.i.i.us.i30.preheader
  %.01.i.i.us.i31.unr = phi i32 [ %.sroa.0.09.us.i26, %.lr.ph.i.i.us.i30.preheader ], [ %i.cu, %.lr.ph.i.i.us.i30.prol ]
  %i.cv = icmp ult i32 %.sroa.0.09.us.i26, 8
  br i1 %i.cv, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29, label %.lr.ph.i.i.us.i30

.lr.ph.i.i.us.i30:                                ; preds = %.lr.ph.i.i.us.i30.prol.loopexit, %.lr.ph.i.i.us.i30
  %.01.i.i.us.i31 = phi i32 [ %i.cw, %.lr.ph.i.i.us.i30 ], [ %.01.i.i.us.i31.unr, %.lr.ph.i.i.us.i30.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.cw = add nsw i32 %.01.i.i.us.i31, -8
  tail call void @llvm.x86.sse2.pause()
  %i.cx = icmp sgt i32 %.01.i.i.us.i31, 8
  br i1 %i.cx, label %.lr.ph.i.i.us.i30, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29, !llvm.loop !1

_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29: ; preds = %.lr.ph.i.i.us.i30.prol.loopexit, %.lr.ph.i.i.us.i30, %bb.o
  %i.cy = shl i32 %.sroa.0.09.us.i26, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29, %bb.n
  %.sroa.0.1.us.i28 = phi i32 [ %i.cy, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29 ], [ %.sroa.0.09.us.i26, %bb.n ]
  %i.cz = load atomic ptr, ptr %i.co acquire, align 8
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %.lr.ph.i25, label %_ZN3tbb6detail2d015spin_wait_whileIPN4mold9ReaderJobEZNS1_18spin_wait_while_eqIS5_S5_EET_RKSt6atomicIS7_ET0_St12memory_orderEUlS5_E_EES7_SB_SC_SD_.exit, !llvm.loop !11

_ZN3tbb6detail2d015spin_wait_whileIPN4mold9ReaderJobEZNS1_18spin_wait_while_eqIS5_S5_EET_RKSt6atomicIS7_ET0_St12memory_orderEUlS5_E_EES7_SB_SC_SD_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph89
  %lcmp.mod118.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod118.not, label %_ZN3tbb6detail2d015spin_wait_whileIPN4mold9ReaderJobEZNS1_18spin_wait_while_eqIS5_S5_EET_RKSt6atomicIS7_ET0_St12memory_orderEUlS5_E_EES7_SB_SC_SD_.exit, label %.lr.ph89.epil.preheader

.lr.ph89.epil.preheader:                          ; preds = %_ZN3tbb6detail2d015spin_wait_whileIPN4mold9ReaderJobEZNS1_18spin_wait_while_eqIS5_S5_EET_RKSt6atomicIS7_ET0_St12memory_orderEUlS5_E_EES7_SB_SC_SD_.exit.loopexit.unr-lcssa, %.preheader
  %.088.epil.init = phi i64 [ 1, %.preheader ], [ %i.bo, %_ZN3tbb6detail2d015spin_wait_whileIPN4mold9ReaderJobEZNS1_18spin_wait_while_eqIS5_S5_EET_RKSt6atomicIS7_ET0_St12memory_orderEUlS5_E_EES7_SB_SC_SD_.exit.loopexit.unr-lcssa ]
  %lcmp.mod119 = icmp ne i64 %xtraiter116, 0
  call void @llvm.assume(i1 %lcmp.mod119)
  br label %.lr.ph89.epil

.lr.ph89.epil:                                    ; preds = %.lr.ph89.epil, %.lr.ph89.epil.preheader
  %.088.epil = phi i64 [ %i.dc, %.lr.ph89.epil ], [ %.088.epil.init, %.lr.ph89.epil.preheader ] ; 2 uses
  %epil.iter117 = phi i64 [ %epil.iter117.next, %.lr.ph89.epil ], [ 0, %.lr.ph89.epil.preheader ]
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.088.epil
  store atomic ptr %i.v, ptr %i.db release, align 8
  %i.dc = add nuw nsw i64 %.088.epil, 1
  %epil.iter117.next = add i64 %epil.iter117, 1   ; 2 uses
  %epil.iter117.cmp.not = icmp eq i64 %epil.iter117.next, %xtraiter116
  br i1 %epil.iter117.cmp.not, label %_ZN3tbb6detail2d015spin_wait_whileIPN4mold9ReaderJobEZNS1_18spin_wait_while_eqIS5_S5_EET_RKSt6atomicIS7_ET0_St12memory_orderEUlS5_E_EES7_SB_SC_SD_.exit, label %.lr.ph89.epil, !llvm.loop !1169

_ZN3tbb6detail2d015spin_wait_whileIPN4mold9ReaderJobEZNS1_18spin_wait_while_eqIS5_S5_EET_RKSt6atomicIS7_ET0_St12memory_orderEUlS5_E_EES7_SB_SC_SD_.exit: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i18, %_ZN3tbb6detail2d015spin_wait_whileIPN4mold9ReaderJobEZNS1_18spin_wait_while_eqIS5_S5_EET_RKSt6atomicIS7_ET0_St12memory_orderEUlS5_E_EES7_SB_SC_SD_.exit.loopexit.unr-lcssa, %.lr.ph89.epil, %_ZN3tbb6detail2d113segment_tableIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EENS1_17concurrent_vectorIS4_S6_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS4_Emm.exit, %bb.m, %_ZNSt6atomicIPN4mold9ReaderJobEE23compare_exchange_strongERS2_S2_St12memory_order.exit, %bb.h, %bb.c, %bb.l
  ret ptr null
}

declare void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #5

declare void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind
define internal void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPN4mold9ReaderJobESt6vectorISA_SaISA_EEEEZNS9_L16read_input_filesINS9_6X86_64EEEvRNS9_7ContextIT_EERSE_EUlRSA_RNS1_6feederISA_EEE_SA_EEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(144) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 192, i64 noundef 64) #25
  ret void
}

; Function Attrs: mustprogress nounwind
define internal noalias noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPN4mold9ReaderJobESt6vectorISA_SaISA_EEEEZNS9_L16read_input_filesINS9_6X86_64EEEvRNS9_7ContextIT_EERSE_EUlRSA_RNS1_6feederISA_EEE_SA_EEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %3 = alloca %"class.tbb::detail::d1::range_vector", align 8 ; 4 uses
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !637  ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #19
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #19 ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 10 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !624
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPN4mold9ReaderJobESt6vectorISG_SaISG_EEEEZNSF_L16read_input_filesINSF_6X86_64EEEvRNSF_7ContextIT_EERSK_EUlRSG_RNS1_6feederISG_EEE_SG_EEKNS1_16auto_partitionerEEEEEbRSP_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 8, !tbaa !624
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #19
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !638
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPN4mold9ReaderJobESt6vectorISG_SaISG_EEEEZNSF_L16read_input_filesINSF_6X86_64EEEvRNSF_7ContextIT_EERSK_EUlRSG_RNS1_6feederISG_EEE_SG_EEKNS1_16auto_partitionerEEEEEbRSP_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !621
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPN4mold9ReaderJobESt6vectorISG_SaISG_EEEEZNSF_L16read_input_filesINSF_6X86_64EEEvRNSF_7ContextIT_EERSK_EUlRSG_RNS1_6feederISG_EEE_SG_EEKNS1_16auto_partitionerEEEEEbRSP_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 16, !tbaa !621
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !623
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !623
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPN4mold9ReaderJobESt6vectorISG_SaISG_EEEEZNSF_L16read_input_filesINSF_6X86_64EEEvRNSF_7ContextIT_EERSK_EUlRSG_RNS1_6feederISG_EEE_SG_EEKNS1_16auto_partitionerEEEEEbRSP_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPN4mold9ReaderJobESt6vectorISG_SaISG_EEEEZNSF_L16read_input_filesINSF_6X86_64EEEvRNSF_7ContextIT_EERSK_EUlRSG_RNS1_6feederISG_EEE_SG_EEKNS1_16auto_partitionerEEEEEbRSP_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.x = load i64, ptr %i.w, align 16, !tbaa !639 ; 4 uses
  %i.y = load i64, ptr %i.v, align 64, !tbaa !640 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !641 ; 4 uses
  %i.ab = sub i64 %i.y, %i.aa                     ; 4 uses
  %i.ac = icmp ult i64 %i.x, %i.ab
  br i1 %i.ac, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPN4mold9ReaderJobESt6vectorISG_SaISG_EEEEZNSF_L16read_input_filesINSF_6X86_64EEEvRNSF_7ContextIT_EERSK_EUlRSG_RNS1_6feederISG_EEE_SG_EEKNS1_16auto_partitionerEEEEEbRSP_RKNS1_14execution_dataE.exit
  %i.ad = load i64, ptr %i.g, align 8, !tbaa !624 ; 2 uses
  %i.ae = icmp ugt i64 %i.ad, 1
  br i1 %i.ae, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !623 ; 2 uses
  %.not4.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not4.i.i, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = add i8 %i.ag, -1
  store i8 %i.ah, ptr %i.af, align 4, !tbaa !623
  store i64 0, ptr %i.g, align 8, !tbaa !624
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i: ; preds = %bb.i, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr null, ptr %4, align 8, !tbaa !610
  %i.al = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #19, !inline_history !1170 ; 12 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.am, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPN4mold9ReaderJobESt6vectorISA_SaISA_EEEEZNS9_L16read_input_filesINS9_6X86_64EEEvRNS9_7ContextIT_EERSE_EUlRSA_RNS1_6feederISA_EEE_SA_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.al, align 64, !tbaa !373
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ao = load i64, ptr %i.v, align 64, !tbaa !640 ; 2 uses
  store i64 %i.ao, ptr %i.an, align 64, !tbaa !640
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.aq = load i64, ptr %i.z, align 8, !tbaa !641 ; 2 uses
  %i.ar = sub i64 %i.ao, %i.aq
  %i.as = lshr i64 %i.ar, 1
  %i.at = add i64 %i.as, %i.aq                    ; 2 uses
  store i64 %i.at, ptr %i.v, align 64, !tbaa !640
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !641
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  %i.av = load i64, ptr %i.w, align 16, !tbaa !639
  store i64 %i.av, ptr %i.au, align 16, !tbaa !639
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !tbaa.struct !1178
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 112 ; 2 uses
  store ptr null, ptr %i.ax, align 16, !tbaa !621
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  %i.az = load i64, ptr %i.g, align 8, !tbaa !624
  %i.ba = lshr i64 %i.az, 1                       ; 2 uses
  store i64 %i.ba, ptr %i.g, align 8, !tbaa !624
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !624
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  store i32 2, ptr %i.bb, align 64, !tbaa !622
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 132
  %i.bd = load i8, ptr %i.ai, align 4, !tbaa !623
  store i8 %i.bd, ptr %i.bc, align 4, !tbaa !623
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  %i.bf = load i64, ptr %4, align 8, !tbaa !625
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !625
  %i.bg = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #19, !inline_history !1171 ; 6 uses
  %i.bh = load ptr, ptr %i.ak, align 16, !tbaa !642
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !627
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 2, ptr %i.bi, align 8, !tbaa !543
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bk = load i64, ptr %4, align 8, !tbaa !625
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !625
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i8 0, ptr %i.bl, align 8, !tbaa !643
  store ptr %i.bg, ptr %i.ak, align 16, !tbaa !621
  store ptr %i.bg, ptr %i.ax, align 16, !tbaa !621
  %.val.i.i.i = load ptr, ptr %1, align 8, !tbaa !644
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(144) %i.al, ptr noundef nonnull align 8 dereferenceable(128) %.val.i.i.i) #19, !inline_history !1171
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.bm = load i64, ptr %i.w, align 16, !tbaa !639 ; 4 uses
  %i.bn = load i64, ptr %i.v, align 64, !tbaa !640 ; 4 uses
  %i.bo = load i64, ptr %i.z, align 8, !tbaa !641 ; 4 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp ult i64 %i.bm, %i.bp
  br i1 %i.bq, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i
  %i.br = load i64, ptr %i.g, align 8, !tbaa !624 ; 2 uses
  %i.bs = icmp ugt i64 %i.br, 1
  br i1 %i.bs, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i8.i = icmp eq i64 %i.br, 0
  br i1 %.not.i8.i, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = load i8, ptr %i.ai, align 4, !tbaa !623 ; 2 uses
  %.not4.i9.i = icmp eq i8 %i.bt, 0
  br i1 %.not4.i9.i, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = add i8 %i.bt, -1
  store i8 %i.bu, ptr %i.ai, align 4, !tbaa !623
  store i64 0, ptr %i.g, align 8, !tbaa !624
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge: ; preds = %bb.m, %bb.j
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i, !llvm.loop !1172

.critedge.i:                                      ; preds = %bb.l, %bb.k, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i, %bb.h, %bb.g, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPN4mold9ReaderJobESt6vectorISG_SaISG_EEEEZNSF_L16read_input_filesINSF_6X86_64EEEvRNSF_7ContextIT_EERSK_EUlRSG_RNS1_6feederISG_EEE_SG_EEKNS1_16auto_partitionerEEEEEbRSP_RKNS1_14execution_dataE.exit
  %.pre-phi.i = phi i64 [ %i.ab, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPN4mold9ReaderJobESt6vectorISG_SaISG_EEEEZNSF_L16read_input_filesINSF_6X86_64EEEvRNSF_7ContextIT_EERSK_EUlRSG_RNS1_6feederISG_EEE_SG_EEKNS1_16auto_partitionerEEEEEbRSP_RKNS1_14execution_dataE.exit ], [ %i.ab, %bb.g ], [ %i.ab, %bb.h ], [ %i.bp, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bp, %bb.k ], [ %i.bp, %bb.l ]
  %5 = phi i64 [ %i.aa, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPN4mold9ReaderJobESt6vectorISG_SaISG_EEEEZNSF_L16read_input_filesINSF_6X86_64EEEvRNSF_7ContextIT_EERSK_EUlRSG_RNS1_6feederISG_EEE_SG_EEKNS1_16auto_partitionerEEEEEbRSP_RKNS1_14execution_dataE.exit ], [ %i.aa, %bb.g ], [ %i.aa, %bb.h ], [ %i.bo, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bo, %bb.k ], [ %i.bo, %bb.l ] ; 2 uses
  %6 = phi i64 [ %i.y, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPN4mold9ReaderJobESt6vectorISG_SaISG_EEEEZNSF_L16read_input_filesINSF_6X86_64EEEvRNSF_7ContextIT_EERSK_EUlRSG_RNS1_6feederISG_EEE_SG_EEKNS1_16auto_partitionerEEEEEbRSP_RKNS1_14execution_dataE.exit ], [ %i.y, %bb.g ], [ %i.y, %bb.h ], [ %i.bn, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bn, %bb.k ], [ %i.bn, %bb.l ] ; 2 uses
  %7 = phi i64 [ %i.x, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPN4mold9ReaderJobESt6vectorISG_SaISG_EEEEZNSF_L16read_input_filesINSF_6X86_64EEEvRNSF_7ContextIT_EERSK_EUlRSG_RNS1_6feederISG_EEE_SG_EEKNS1_16auto_partitionerEEEEEbRSP_RKNS1_14execution_dataE.exit ], [ %i.x, %bb.g ], [ %i.x, %bb.h ], [ %i.bm, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bm, %bb.k ], [ %i.bm, %bb.l ]
  %i.bv = icmp ult i64 %7, %.pre-phi.i
  br i1 %i.bv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 5 uses
  %i.bx = load i8, ptr %i.bw, align 4, !tbaa !623
  %.not.i12.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i12.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n, %.critedge.i
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.not1.i.i.i.i.i.i.i.i = icmp eq i64 %5, %6
  br i1 %.not1.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPN4mold9ReaderJobESt6vectorISE_SaISE_EEEEZNSD_L16read_input_filesINSD_6X86_64EEEvRNSD_7ContextIT_EERSI_EUlRSE_RNS1_6feederISE_EEE_SE_EEKNS1_16auto_partitionerEEES8_EEvRSN_RT0_RNS1_14execution_dataE.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.i.i.i.i.i.i
  %.02.i.i.i.i.i.i.i.i = phi i64 [ %5, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.cf, %bb.p ] ; 2 uses
  %i.cb = load ptr, ptr %i.bz, align 32, !tbaa !1179, !nonnull !59, !align !456
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !1180
  %i.cd = getelementptr inbounds [120 x i8], ptr %i.cc, i64 %.02.i.i.i.i.i.i.i.i
  %i.ce = load ptr, ptr %i.ca, align 8, !tbaa !1181
  call fastcc void @_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL16read_input_filesINS3_6X86_64EEEvRNS3_7ContextIT_EERSt6vectorINS3_9ReaderJobESaISB_EEEUlRSB_RNS0_2d16feederISB_EEE_E4callISF_NS1_11feeder_implISK_SB_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_Edefp1_Ecvv_EERKSK_OS7_PT0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(120) %i.cd, ptr noundef %i.ce), !inline_history !1173
  %i.cf = add i64 %.02.i.i.i.i.i.i.i.i, 1         ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.cf, %6
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPN4mold9ReaderJobESt6vectorISE_SaISE_EEEEZNSD_L16read_input_filesINSD_6X86_64EEEvRNSD_7ContextIT_EERSI_EUlRSE_RNS1_6feederISE_EEE_SE_EEKNS1_16auto_partitionerEEES8_EEvRSN_RT0_RNS1_14execution_dataE.exit, label %bb.p, !llvm.loop !1174

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 3 ; 20 uses
  store i8 0, ptr %i.cg, align 1, !tbaa !64
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull readonly align 64 dereferenceable(24) %i.v, i64 24, i1 false), !tbaa.struct !645
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.r

bb.r:                                             ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i, %bb.q
  %i.cm = phi i8 [ %i.no, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i ], [ 0, %bb.q ] ; 3 uses
  %i.cn = phi i8 [ %i.np, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i ], [ 1, %bb.q ] ; 13 uses
  %i.co = phi i8 [ %i.nq, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i ], [ 0, %bb.q ] ; 9 uses
  %i.cp = load i8, ptr %i.bw, align 4, !tbaa !623 ; 10 uses
  %i.cq = icmp ult i8 %i.cn, 8
  br i1 %i.cq, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.r
  %.phi.trans.insert.i.i.i = zext i8 %i.co to i64
  %.phi.trans.insert6.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.phi.trans.insert.i.i.i
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert6.i.i.i, align 1, !tbaa !64
  %i.cr = icmp ult i8 %.pre.i.i.i, %i.cp
  br i1 %i.cr, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.s:                                             ; preds = %bb.ah
  %i.cs = icmp ult i8 %i.ku, %i.cp
  br i1 %i.cs, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1: ; preds = %bb.s
  %i.ct = zext nneg i8 %i.ki to i64               ; 2 uses
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %i.ct ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !639
  %i.cx = load i64, ptr %i.cu, align 8, !tbaa !640
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !641
  %i.da = sub i64 %i.cx, %i.cz
  %i.db = icmp ult i64 %i.cw, %i.da
  br i1 %i.db, label %bb.t, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.t:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ct ; 2 uses
  %i.dd = add i8 %i.co, 2
  %i.de = and i8 %i.dd, 7                         ; 5 uses
  %i.df = zext nneg i8 %i.de to i64               ; 3 uses
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %i.df ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i64 24, i1 false), !tbaa.struct !645
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !640 ; 2 uses
  store i64 %i.dh, ptr %i.cu, align 8, !tbaa !640
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !641 ; 2 uses
  %i.dk = sub i64 %i.dh, %i.dj
  %i.dl = lshr i64 %i.dk, 1
  %i.dm = add i64 %i.dl, %i.dj                    ; 2 uses
  store i64 %i.dm, ptr %i.dg, align 8, !tbaa !640
  store i64 %i.dm, ptr %i.cy, align 8, !tbaa !641
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !639
  store i64 %i.do, ptr %i.cv, align 8, !tbaa !639
  %i.dp = load i8, ptr %i.dc, align 1, !tbaa !64
  %i.dq = add i8 %i.dp, 1                         ; 3 uses
  store i8 %i.dq, ptr %i.dc, align 1, !tbaa !64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.df
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !64
  %i.ds = add nuw nsw i8 %i.cn, 2                 ; 3 uses
  %exitcond.not.i.i.i.1 = icmp eq i8 %i.ds, 8
  br i1 %exitcond.not.i.i.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.u, !llvm.loop !12

bb.u:                                             ; preds = %bb.t
  %i.dt = icmp ult i8 %i.dq, %i.cp
  br i1 %i.dt, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2: ; preds = %bb.u
  %i.du = zext nneg i8 %i.de to i64               ; 2 uses
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %i.du ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !639
  %i.dy = load i64, ptr %i.dv, align 8, !tbaa !640
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !641
  %i.eb = sub i64 %i.dy, %i.ea
  %i.ec = icmp ult i64 %i.dx, %i.eb
  br i1 %i.ec, label %bb.v, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.v:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.du ; 2 uses
  %i.ee = add i8 %i.co, 3
  %i.ef = and i8 %i.ee, 7                         ; 5 uses
  %i.eg = zext nneg i8 %i.ef to i64               ; 3 uses
  %i.eh = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %i.eg ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, ptr noundef nonnull align 8 dereferenceable(24) %i.dv, i64 24, i1 false), !tbaa.struct !645
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !640 ; 2 uses
  store i64 %i.ei, ptr %i.dv, align 8, !tbaa !640
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !641 ; 2 uses
  %i.el = sub i64 %i.ei, %i.ek
  %i.em = lshr i64 %i.el, 1
  %i.en = add i64 %i.em, %i.ek                    ; 2 uses
  store i64 %i.en, ptr %i.eh, align 8, !tbaa !640
  store i64 %i.en, ptr %i.dz, align 8, !tbaa !641
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !639
  store i64 %i.ep, ptr %i.dw, align 8, !tbaa !639
  %i.eq = load i8, ptr %i.ed, align 1, !tbaa !64
  %i.er = add i8 %i.eq, 1                         ; 3 uses
  store i8 %i.er, ptr %i.ed, align 1, !tbaa !64
  %i.es = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.eg
  store i8 %i.er, ptr %i.es, align 1, !tbaa !64
  %i.et = add nuw nsw i8 %i.cn, 3                 ; 3 uses
  %exitcond.not.i.i.i.2 = icmp eq i8 %i.et, 8
  br i1 %exitcond.not.i.i.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.w, !llvm.loop !12

bb.w:                                             ; preds = %bb.v
  %i.eu = icmp ult i8 %i.er, %i.cp
  br i1 %i.eu, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3: ; preds = %bb.w
  %i.ev = zext nneg i8 %i.ef to i64               ; 2 uses
  %i.ew = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %i.ev ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !639
  %i.ez = load i64, ptr %i.ew, align 8, !tbaa !640
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !641
  %i.fc = sub i64 %i.ez, %i.fb
  %i.fd = icmp ult i64 %i.ey, %i.fc
  br i1 %i.fd, label %bb.x, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.x:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3
  %i.fe = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ev ; 2 uses
  %i.ff = and i8 %i.co, 7                         ; 4 uses
  %i.fg = xor i8 %i.ff, 4                         ; 8 uses
  %i.fh = zext nneg i8 %i.fg to i64               ; 3 uses
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %i.fh ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, ptr noundef nonnull align 8 dereferenceable(24) %i.ew, i64 24, i1 false), !tbaa.struct !645
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !640 ; 2 uses
  store i64 %i.fj, ptr %i.ew, align 8, !tbaa !640
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !641 ; 2 uses
  %i.fm = sub i64 %i.fj, %i.fl
  %i.fn = lshr i64 %i.fm, 1
  %i.fo = add i64 %i.fn, %i.fl                    ; 2 uses
  store i64 %i.fo, ptr %i.fi, align 8, !tbaa !640
  store i64 %i.fo, ptr %i.fa, align 8, !tbaa !641
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !639
  store i64 %i.fq, ptr %i.ex, align 8, !tbaa !639
  %i.fr = load i8, ptr %i.fe, align 1, !tbaa !64
  %i.fs = add i8 %i.fr, 1                         ; 3 uses
  store i8 %i.fs, ptr %i.fe, align 1, !tbaa !64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.fh
  store i8 %i.fs, ptr %i.ft, align 1, !tbaa !64
  %i.fu = add nuw nsw i8 %i.cn, 4                 ; 3 uses
  %exitcond.not.i.i.i.3 = icmp eq i8 %i.fu, 8
  br i1 %exitcond.not.i.i.i.3, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.y, !llvm.loop !12

bb.y:                                             ; preds = %bb.x
  %i.fv = icmp ult i8 %i.fs, %i.cp
  br i1 %i.fv, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4: ; preds = %bb.y
  %i.fw = zext nneg i8 %i.fg to i64               ; 2 uses
  %i.fx = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %i.fw ; 5 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16 ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !639
  %i.ga = load i64, ptr %i.fx, align 8, !tbaa !640
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 8 ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !641
  %i.gd = sub i64 %i.ga, %i.gc
  %i.ge = icmp ult i64 %i.fz, %i.gd
  br i1 %i.ge, label %bb.z, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.z:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4
  %i.gf = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.fw ; 2 uses
  %i.gg = add nuw nsw i8 %i.fg, 1
  %i.gh = and i8 %i.gg, 7                         ; 5 uses
  %i.gi = zext nneg i8 %i.gh to i64               ; 3 uses
  %i.gj = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %i.gi ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gj, ptr noundef nonnull align 8 dereferenceable(24) %i.fx, i64 24, i1 false), !tbaa.struct !645
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !640 ; 2 uses
  store i64 %i.gk, ptr %i.fx, align 8, !tbaa !640
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !641 ; 2 uses
  %i.gn = sub i64 %i.gk, %i.gm
  %i.go = lshr i64 %i.gn, 1
  %i.gp = add i64 %i.go, %i.gm                    ; 2 uses
  store i64 %i.gp, ptr %i.gj, align 8, !tbaa !640
  store i64 %i.gp, ptr %i.gb, align 8, !tbaa !641
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !639
  store i64 %i.gr, ptr %i.fy, align 8, !tbaa !639
  %i.gs = load i8, ptr %i.gf, align 1, !tbaa !64
  %i.gt = add i8 %i.gs, 1                         ; 3 uses
  store i8 %i.gt, ptr %i.gf, align 1, !tbaa !64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.gi
end_hunk_0
