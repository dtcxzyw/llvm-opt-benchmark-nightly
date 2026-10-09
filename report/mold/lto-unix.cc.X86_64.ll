Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/lto-unix.cc.X86_64?download=true
inline.NumInlined: 2846
inline.NumDeleted: 1528
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSD_6X86_64EEESt6vectorISH_SaISH_EEEEZNSD_14run_lto_pluginISF_EESJ_IPNSE_IT_EESaISQ_EERNSD_7ContextISO_EEEUlSH_E_SH_EEKNS1_16auto_partitionerEEES8_EEvRSO_RT0_RNS1_14execution_dataE:bb.a

bb.g:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i64 %i.bb, 0
  br i1 %.not.i8, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = load i8, ptr %i.m, align 4, !tbaa !528  ; 2 uses
  %.not4.i9 = icmp eq i8 %i.bd, 0
  br i1 %.not4.i9, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = add i8 %i.bd, -1
  store i8 %i.be, ptr %i.m, align 4, !tbaa !528
  store i64 0, ptr %0, align 8, !tbaa !529
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_14run_lto_pluginISH_EESL_IPNSG_IT_EESaISS_EERNSF_7ContextISQ_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEESA_EEvRSQ_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

declare noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_14run_lto_pluginISH_EESL_IPNSG_IT_EESaISS_EERNSF_7ContextISQ_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEESA_EEvRSQ_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::range_vector", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !543
  %i.c = load i64, ptr %2, align 8, !tbaa !544    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !545  ; 3 uses
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !528
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.e, %i.c
  br i1 %.not3.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_14run_lto_pluginISB_EESF_IPNSA_IT_EESaISM_EERNS9_7ContextISK_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4mold14run_lto_pluginINS3_6X86_64EEESt6vectorIPNS3_10ObjectFileIT_EESaISA_EERNS3_7ContextIS8_EEEUlPNS7_IS5_EEE_E4callIRSH_NS1_11feeder_implISI_SH_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS8_Efp0_EEcvv_EERKSI_OS8_PT0_.exit.i.i.i.i.i.i
  %.04.i.i.i.i.i.i = phi i64 [ %i.bk, %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4mold14run_lto_pluginINS3_6X86_64EEESt6vectorIPNS3_10ObjectFileIT_EESaISA_EERNS3_7ContextIS8_EEEUlPNS7_IS5_EEE_E4callIRSH_NS1_11feeder_implISI_SH_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS8_Efp0_EEcvv_EERKSI_OS8_PT0_.exit.i.i.i.i.i.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1020
  %i.l = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.04.i.i.i.i.i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !156  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 809
  %i.o = load i8, ptr %i.n, align 1, !tbaa !167, !range !462, !noundef !463
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4mold14run_lto_pluginINS3_6X86_64EEESt6vectorIPNS3_10ObjectFileIT_EESaISA_EERNS3_7ContextIS8_EEEUlPNS7_IS5_EEE_E4callIRSH_NS1_11feeder_implISI_SH_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS8_Efp0_EEcvv_EERKSI_OS8_PT0_.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !481
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !162  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.v = load i64, ptr %i.u, align 8, !tbaa !166
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.v ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.t
  br i1 %i.x, label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4mold14run_lto_pluginINS3_6X86_64EEESt6vectorIPNS3_10ObjectFileIT_EESaISA_EERNS3_7ContextIS8_EEEUlPNS7_IS5_EEE_E4callIRSH_NS1_11feeder_implISI_SH_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS8_Efp0_EEcvv_EERKSI_OS8_PT0_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.d, %bb.k
  %.sroa.012.018.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bi, %bb.k ], [ %i.w, %bb.d ] ; 3 uses
  %i.y = load i32, ptr %.sroa.012.018.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !165 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.y, 0
  %i.z = ptrtoint ptr %.sroa.012.018.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aa = sext i32 %i.y to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = add nsw i64 %i.ab, %i.z
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr null, ptr %i.ad ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !496 ; 2 uses
  %.not.i9.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ag, 0
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sext i32 %i.ag to i64
  %i.aj = shl nsw i64 %i.ai, 2
  %i.ak = add nsw i64 %i.aj, %i.ah                ; 2 uses
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %.not17.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ak, 0
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i9.i.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not17.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  %i.an = load i8, ptr %i.am, align 8, !tbaa !497, !range !462, !noundef !463
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 809
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !167, !range !462, !noundef !463
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 31 ; 3 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.g
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i32 [ %i.bd, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %bb.g ] ; 7 uses
  %i.at = icmp slt i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 17
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer, %bb.j
  %i.au = load atomic i8, ptr %i.as monotonic, align 1, !range !462, !noundef !463
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aw = atomicrmw xchg ptr %i.as, i8 1 seq_cst, align 1
  %i.ax = trunc i8 %i.aw to i1
  br i1 %i.ax, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11scoped_lockIJN3tbb6detail2d110spin_mutexEEEC2ERS3_.exit.i.i.i.i.i.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.h, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ay = icmp sgt i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 0
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %bb.i
  %xtraiter82 = and i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 7 ; 2 uses
  %lcmp.mod83.not = icmp eq i32 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.01.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i32 [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter84 = phi i32 [ %prol.iter84.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.az = add nsw i32 %.01.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter84.next = add i32 %prol.iter84, 1     ; 2 uses
  %prol.iter84.cmp.not = icmp eq i32 %prol.iter84.next, %xtraiter82
  br i1 %prol.iter84.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1012

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.01.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i32 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ba = icmp ult i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 8
  br i1 %i.ba, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.01.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.01.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.bb = add nsw i32 %.01.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.bc = icmp sgt i32 %.01.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i
  %i.bd = shl i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.outer, !llvm.loop !1013

bb.j:                                             ; preds = %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.be = tail call noundef i32 @sched_yield() #20 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1013

_ZNSt11scoped_lockIJN3tbb6detail2d110spin_mutexEEEC2ERS3_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 33 ; 2 uses
  %i.bg = load i16, ptr %i.bf, align 1
  %i.bh = or i16 %i.bg, 16384
  store i16 %i.bh, ptr %i.bf, align 1
  store atomic i8 0, ptr %i.as release, align 1
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt11scoped_lockIJN3tbb6detail2d110spin_mutexEEEC2ERS3_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f, %bb.e, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.012.018.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.t
  br i1 %i.bj, label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4mold14run_lto_pluginINS3_6X86_64EEESt6vectorIPNS3_10ObjectFileIT_EESaISA_EERNS3_7ContextIS8_EEEUlPNS7_IS5_EEE_E4callIRSH_NS1_11feeder_implISI_SH_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS8_Efp0_EEcvv_EERKSI_OS8_PT0_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4mold14run_lto_pluginINS3_6X86_64EEESt6vectorIPNS3_10ObjectFileIT_EESaISA_EERNS3_7ContextIS8_EEEUlPNS7_IS5_EEE_E4callIRSH_NS1_11feeder_implISI_SH_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS8_Efp0_EEcvv_EERKSI_OS8_PT0_.exit.i.i.i.i.i.i: ; preds = %bb.k, %bb.d, %.lr.ph.i.i.i.i.i.i
  %i.bk = add i64 %.04.i.i.i.i.i.i, 1             ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bk, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_14run_lto_pluginISB_EESF_IPNSA_IT_EESaISM_EERNS9_7ContextISK_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1014

bb.l:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 19 uses
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %5, align 8, !tbaa !29
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !1021
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 132
  br label %bb.m

bb.m:                                             ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit, %bb.l
  %i.br = phi i8 [ %i.or, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 0, %bb.l ] ; 3 uses
  %i.bs = phi i8 [ %i.os, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 1, %bb.l ] ; 13 uses
  %i.bt = phi i8 [ %i.ot, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit ], [ 0, %bb.l ] ; 9 uses
  %i.bu = load i8, ptr %i.h, align 4, !tbaa !528  ; 10 uses
  %i.bv = icmp ult i8 %i.bs, 8
  br i1 %i.bv, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.m
  %.phi.trans.insert.i = zext i8 %i.bt to i64
  %.phi.trans.insert6.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.phi.trans.insert.i
  %.pre.i = load i8, ptr %.phi.trans.insert6.i, align 1, !tbaa !29
  %i.bw = icmp ult i8 %.pre.i, %i.bu
  br i1 %i.bw, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

bb.n:                                             ; preds = %bb.ac
  %i.bx = icmp ult i8 %i.jz, %i.bu
  br i1 %i.bx, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.1: ; preds = %bb.n
  %i.by = zext nneg i8 %i.jn to i64               ; 2 uses
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.by ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !543
  %i.cc = load i64, ptr %i.bz, align 8, !tbaa !544
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !545
  %i.cf = sub i64 %i.cc, %i.ce
  %i.cg = icmp ult i64 %i.cb, %i.cf
  br i1 %i.cg, label %bb.o, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

bb.o:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.by ; 2 uses
  %i.ci = add i8 %i.bt, 2
  %i.cj = and i8 %i.ci, 7                         ; 5 uses
  %i.ck = zext nneg i8 %i.cj to i64               ; 2 uses
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.ck ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 24, i1 false), !tbaa.struct !1021
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !544 ; 2 uses
  store i64 %i.cm, ptr %i.bz, align 8, !tbaa !544
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !545 ; 2 uses
  %i.cp = sub i64 %i.cm, %i.co
  %i.cq = lshr i64 %i.cp, 1
  %i.cr = add i64 %i.cq, %i.co                    ; 2 uses
  store i64 %i.cr, ptr %i.cl, align 8, !tbaa !544
  store i64 %i.cr, ptr %i.cd, align 8, !tbaa !545
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !543
  store i64 %i.ct, ptr %i.ca, align 8, !tbaa !543
  %i.cu = load i8, ptr %i.ch, align 1, !tbaa !29
  %i.cv = add i8 %i.cu, 1                         ; 3 uses
  store i8 %i.cv, ptr %i.ch, align 1, !tbaa !29
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ck
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !29
  %i.cx = add nuw nsw i8 %i.bs, 2                 ; 3 uses
  %exitcond.not.i.1 = icmp eq i8 %i.cx, 8
  br i1 %exitcond.not.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread, label %bb.p, !llvm.loop !1015

bb.p:                                             ; preds = %bb.o
  %i.cy = icmp ult i8 %i.cv, %i.bu
  br i1 %i.cy, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.2: ; preds = %bb.p
  %i.cz = zext nneg i8 %i.cj to i64               ; 2 uses
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.cz ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !543
  %i.dd = load i64, ptr %i.da, align 8, !tbaa !544
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !545
  %i.dg = sub i64 %i.dd, %i.df
  %i.dh = icmp ult i64 %i.dc, %i.dg
  br i1 %i.dh, label %bb.q, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

bb.q:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.2
  %i.di = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cz ; 2 uses
  %i.dj = add i8 %i.bt, 3
  %i.dk = and i8 %i.dj, 7                         ; 5 uses
  %i.dl = zext nneg i8 %i.dk to i64               ; 2 uses
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.dl ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, ptr noundef nonnull align 8 dereferenceable(24) %i.da, i64 24, i1 false), !tbaa.struct !1021
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !544 ; 2 uses
  store i64 %i.dn, ptr %i.da, align 8, !tbaa !544
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !545 ; 2 uses
  %i.dq = sub i64 %i.dn, %i.dp
  %i.dr = lshr i64 %i.dq, 1
  %i.ds = add i64 %i.dr, %i.dp                    ; 2 uses
  store i64 %i.ds, ptr %i.dm, align 8, !tbaa !544
  store i64 %i.ds, ptr %i.de, align 8, !tbaa !545
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !543
  store i64 %i.du, ptr %i.db, align 8, !tbaa !543
  %i.dv = load i8, ptr %i.di, align 1, !tbaa !29
  %i.dw = add i8 %i.dv, 1                         ; 3 uses
  store i8 %i.dw, ptr %i.di, align 1, !tbaa !29
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.dl
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !29
  %i.dy = add nuw nsw i8 %i.bs, 3                 ; 3 uses
  %exitcond.not.i.2 = icmp eq i8 %i.dy, 8
  br i1 %exitcond.not.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread, label %bb.r, !llvm.loop !1015

bb.r:                                             ; preds = %bb.q
  %i.dz = icmp ult i8 %i.dw, %i.bu
  br i1 %i.dz, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.3, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.3: ; preds = %bb.r
  %i.ea = zext nneg i8 %i.dk to i64               ; 2 uses
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.ea ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !543
  %i.ee = load i64, ptr %i.eb, align 8, !tbaa !544
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !545
  %i.eh = sub i64 %i.ee, %i.eg
  %i.ei = icmp ult i64 %i.ed, %i.eh
  br i1 %i.ei, label %bb.s, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

bb.s:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.3
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ea ; 2 uses
  %i.ek = and i8 %i.bt, 7                         ; 4 uses
  %i.el = xor i8 %i.ek, 4                         ; 8 uses
  %i.em = zext nneg i8 %i.el to i64               ; 2 uses
  %i.en = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.em ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i64 24, i1 false), !tbaa.struct !1021
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !544 ; 2 uses
  store i64 %i.eo, ptr %i.eb, align 8, !tbaa !544
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !545 ; 2 uses
  %i.er = sub i64 %i.eo, %i.eq
  %i.es = lshr i64 %i.er, 1
  %i.et = add i64 %i.es, %i.eq                    ; 2 uses
  store i64 %i.et, ptr %i.en, align 8, !tbaa !544
  store i64 %i.et, ptr %i.ef, align 8, !tbaa !545
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !543
  store i64 %i.ev, ptr %i.ec, align 8, !tbaa !543
  %i.ew = load i8, ptr %i.ej, align 1, !tbaa !29
  %i.ex = add i8 %i.ew, 1                         ; 3 uses
  store i8 %i.ex, ptr %i.ej, align 1, !tbaa !29
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.em
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !29
  %i.ez = add nuw nsw i8 %i.bs, 4                 ; 3 uses
  %exitcond.not.i.3 = icmp eq i8 %i.ez, 8
  br i1 %exitcond.not.i.3, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread, label %bb.t, !llvm.loop !1015

bb.t:                                             ; preds = %bb.s
  %i.fa = icmp ult i8 %i.ex, %i.bu
  br i1 %i.fa, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.4, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.4: ; preds = %bb.t
  %i.fb = zext nneg i8 %i.el to i64               ; 2 uses
  %i.fc = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.fb ; 5 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !543
  %i.ff = load i64, ptr %i.fc, align 8, !tbaa !544
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !545
  %i.fi = sub i64 %i.ff, %i.fh
  %i.fj = icmp ult i64 %i.fe, %i.fi
  br i1 %i.fj, label %bb.u, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

bb.u:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.fb ; 2 uses
  %i.fl = add nuw nsw i8 %i.el, 1
  %i.fm = and i8 %i.fl, 7                         ; 5 uses
  %i.fn = zext nneg i8 %i.fm to i64               ; 2 uses
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.fn ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fo, ptr noundef nonnull align 8 dereferenceable(24) %i.fc, i64 24, i1 false), !tbaa.struct !1021
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !544 ; 2 uses
  store i64 %i.fp, ptr %i.fc, align 8, !tbaa !544
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !545 ; 2 uses
  %i.fs = sub i64 %i.fp, %i.fr
  %i.ft = lshr i64 %i.fs, 1
  %i.fu = add i64 %i.ft, %i.fr                    ; 2 uses
  store i64 %i.fu, ptr %i.fo, align 8, !tbaa !544
  store i64 %i.fu, ptr %i.fg, align 8, !tbaa !545
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !543
  store i64 %i.fw, ptr %i.fd, align 8, !tbaa !543
  %i.fx = load i8, ptr %i.fk, align 1, !tbaa !29
  %i.fy = add i8 %i.fx, 1                         ; 3 uses
  store i8 %i.fy, ptr %i.fk, align 1, !tbaa !29
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.fn
  store i8 %i.fy, ptr %i.fz, align 1, !tbaa !29
  %i.ga = add nuw nsw i8 %i.bs, 5                 ; 3 uses
  %exitcond.not.i.4 = icmp eq i8 %i.ga, 8
  br i1 %exitcond.not.i.4, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread, label %bb.v, !llvm.loop !1015

bb.v:                                             ; preds = %bb.u
  %i.gb = icmp ult i8 %i.fy, %i.bu
  br i1 %i.gb, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.5, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.5: ; preds = %bb.v
  %i.gc = zext nneg i8 %i.fm to i64               ; 2 uses
  %i.gd = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.gc ; 5 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !543
  %i.gg = load i64, ptr %i.gd, align 8, !tbaa !544
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !545
  %i.gj = sub i64 %i.gg, %i.gi
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_14run_lto_pluginISH_EESL_IPNSG_IT_EESaISS_EERNSF_7ContextISQ_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEESA_EEvRSQ_RT0_RNS1_14execution_dataE:bb.a
  store i8 0, ptr %i.lq, align 8, !tbaa !549
  store ptr %i.ll, ptr %i.bn, align 16, !tbaa !540
  store ptr %i.ll, ptr %i.lb, align 16, !tbaa !540
  %i.lr = load ptr, ptr %3, align 8, !tbaa !550
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(144) %i.kx, ptr noundef nonnull align 8 dereferenceable(128) %i.lr) #20, !inline_history !1017
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.ls = add i8 %i.kr, -1
  %i.lt = add nuw nsw i8 %i.br, 1
  %i.lu = and i8 %i.lt, 7
  br label %bb.an

bb.ae:                                            ; preds = %bb.ad
  %i.lv = zext i8 %i.kd to i64                    ; 4 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.lv
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !29
  %i.ly = icmp ult i8 %i.lx, %i.kp
  br i1 %i.ly, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_14run_lto_pluginISD_EESH_IPNSC_IT_EESaISO_EERNSB_7ContextISM_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSM_.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit: ; preds = %bb.ae
  %i.lz = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.lv ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !543
  %i.mc = load i64, ptr %i.lz, align 8, !tbaa !544
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.me = load i64, ptr %i.md, align 8, !tbaa !545
  %i.mf = sub i64 %i.mc, %i.me
  %i.mg = icmp ult i64 %i.mb, %i.mf
  br i1 %i.mg, label %thread-pre-split35, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_14run_lto_pluginISD_EESH_IPNSC_IT_EESaISO_EERNSB_7ContextISM_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSM_.exit

_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_14run_lto_pluginISD_EESH_IPNSC_IT_EESaISO_EERNSB_7ContextISM_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSM_.exit: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_14run_lto_pluginISD_EESH_IPNSC_IT_EESaISO_EERNSB_7ContextISM_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSM_.exit_crit_edge, %bb.ae, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit
  %i.mh = phi i8 [ %i.kn, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_14run_lto_pluginISD_EESH_IPNSC_IT_EESaISO_EERNSB_7ContextISM_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSM_.exit_crit_edge ], [ %i.kd, %bb.ae ], [ %i.kd, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.mi = phi i8 [ %i.ko, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_14run_lto_pluginISD_EESH_IPNSC_IT_EESaISO_EERNSB_7ContextISM_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSM_.exit_crit_edge ], [ %i.kc, %bb.ae ], [ %i.kc, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %.pre-phi = phi i64 [ %.pre, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_14run_lto_pluginISD_EESH_IPNSC_IT_EESaISO_EERNSB_7ContextISM_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSM_.exit_crit_edge ], [ %i.lv, %bb.ae ], [ %i.lv, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.mj = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %.pre-phi ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i.i10 = load i64, ptr %i.mj, align 8, !tbaa !207 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i11 = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i12 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i11, align 8, !tbaa !207 ; 2 uses
  %.not3.i.i.i.i.i.i13 = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i.i12, %.sroa.02.0.copyload.i.i.i.i.i10
  br i1 %.not3.i.i.i.i.i.i13, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_14run_lto_pluginISB_EESF_IPNSA_IT_EESaISM_EERNS9_7ContextISK_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit32, label %.lr.ph.i.i.i.i.i.i14

.lr.ph.i.i.i.i.i.i14:                             ; preds = %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_14run_lto_pluginISD_EESH_IPNSC_IT_EESaISO_EERNSB_7ContextISM_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSM_.exit, %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4mold14run_lto_pluginINS3_6X86_64EEESt6vectorIPNS3_10ObjectFileIT_EESaISA_EERNS3_7ContextIS8_EEEUlPNS7_IS5_EEE_E4callIRSH_NS1_11feeder_implISI_SH_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS8_Efp0_EEcvv_EERKSI_OS8_PT0_.exit.i.i.i.i.i.i22
  %.04.i.i.i.i.i.i15 = phi i64 [ %i.ok, %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4mold14run_lto_pluginINS3_6X86_64EEESt6vectorIPNS3_10ObjectFileIT_EESaISA_EERNS3_7ContextIS8_EEEUlPNS7_IS5_EEE_E4callIRSH_NS1_11feeder_implISI_SH_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS8_Efp0_EEcvv_EERKSI_OS8_PT0_.exit.i.i.i.i.i.i22 ], [ %.sroa.2.0.copyload.i.i.i.i.i12, %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_14run_lto_pluginISD_EESH_IPNSC_IT_EESaISO_EERNSB_7ContextISM_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSM_.exit ] ; 2 uses
  %i.mk = load ptr, ptr %i.bo, align 8, !tbaa !1020
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.mk, i64 %.04.i.i.i.i.i.i15
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !156 ; 4 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 809
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !167, !range !462, !noundef !463
  %i.mp = trunc nuw i8 %i.mo to i1
  br i1 %i.mp, label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4mold14run_lto_pluginINS3_6X86_64EEESt6vectorIPNS3_10ObjectFileIT_EESaISA_EERNS3_7ContextIS8_EEEUlPNS7_IS5_EEE_E4callIRSH_NS1_11feeder_implISI_SH_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS8_Efp0_EEcvv_EERKSI_OS8_PT0_.exit.i.i.i.i.i.i22, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i.i.i.i.i14
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mm, i64 56
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !481
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mm, i64 64
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !162 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mm, i64 80
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !166
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.mv ; 2 uses
  %i.mx = icmp eq ptr %i.mw, %i.mt
  br i1 %i.mx, label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4mold14run_lto_pluginINS3_6X86_64EEESt6vectorIPNS3_10ObjectFileIT_EESaISA_EERNS3_7ContextIS8_EEEUlPNS7_IS5_EEE_E4callIRSH_NS1_11feeder_implISI_SH_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS8_Efp0_EEcvv_EERKSI_OS8_PT0_.exit.i.i.i.i.i.i22, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i16

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i16:                 ; preds = %bb.af, %bb.am
  %.sroa.012.018.i.i.i.i.i.i.i.i.i.i.i.i17 = phi ptr [ %i.oi, %bb.am ], [ %i.mw, %bb.af ] ; 3 uses
  %i.my = load i32, ptr %.sroa.012.018.i.i.i.i.i.i.i.i.i.i.i.i17, align 4, !tbaa !165 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i18 = icmp eq i32 %i.my, 0
  %i.mz = ptrtoint ptr %.sroa.012.018.i.i.i.i.i.i.i.i.i.i.i.i17 to i64
  %i.na = sext i32 %i.my to i64
  %i.nb = shl nsw i64 %i.na, 2
  %i.nc = add nsw i64 %i.nb, %i.mz
  %i.nd = inttoptr i64 %i.nc to ptr
  %i.ne = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i18, ptr null, ptr %i.nd ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16 ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !496 ; 2 uses
  %.not.i9.i.i.i.i.i.i.i.i.i.i.i.i19 = icmp eq i32 %i.ng, 0
  %i.nh = ptrtoint ptr %i.nf to i64
  %i.ni = sext i32 %i.ng to i64
  %i.nj = shl nsw i64 %i.ni, 2
  %i.nk = add nsw i64 %i.nj, %i.nh                ; 2 uses
  %i.nl = inttoptr i64 %i.nk to ptr               ; 2 uses
  %.not17.i.i.i.i.i.i.i.i.i.i.i.i20 = icmp eq i64 %i.nk, 0
  %.not.i.i.i.i.i.i.i.i.i.i.i.i21 = select i1 %.not.i9.i.i.i.i.i.i.i.i.i.i.i.i19, i1 true, i1 %.not17.i.i.i.i.i.i.i.i.i.i.i.i20
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i21, label %bb.am, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i16
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 120
  %i.nn = load i8, ptr %i.nm, align 8, !tbaa !497, !range !462, !noundef !463
  %i.no = trunc nuw i8 %i.nn to i1
  br i1 %i.no, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.np = getelementptr inbounds nuw i8, ptr %i.nl, i64 809
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !167, !range !462, !noundef !463
  %i.nr = trunc nuw i8 %i.nq to i1
  br i1 %i.nr, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ne, i64 31 ; 3 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i27.outer

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i27.outer: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i29, %bb.ai
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i24.ph = phi i32 [ %i.od, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i29 ], [ 1, %bb.ai ] ; 7 uses
  %i.nt = icmp slt i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i24.ph, 17
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i27

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i27: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i27.outer, %bb.al
  %i.nu = load atomic i8, ptr %i.ns monotonic, align 1, !range !462, !noundef !463
  %i.nv = trunc nuw i8 %i.nu to i1
  br i1 %i.nv, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i26, label %bb.aj

bb.aj:                                            ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i27
  %i.nw = atomicrmw xchg ptr %i.ns, i8 1 seq_cst, align 1
  %i.nx = trunc i8 %i.nw to i1
  br i1 %i.nx, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i26, label %_ZNSt11scoped_lockIJN3tbb6detail2d110spin_mutexEEEC2ERS3_.exit.i.i.i.i.i.i.i.i.i.i.i.i25

.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i26:          ; preds = %bb.aj, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i27
  br i1 %i.nt, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i26
  %i.ny = icmp sgt i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i24.ph, 0
  br i1 %i.ny, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i30.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i29

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i30.preheader: ; preds = %bb.ak
  %xtraiter = and i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i24.ph, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i30.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i30.prol:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i30.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i30.prol
  %.01.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i31.prol = phi i32 [ %i.nz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i30.prol ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i24.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i30.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i30.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i30.preheader ]
  %i.nz = add nsw i32 %.01.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i31.prol, -1 ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i30.prol, !llvm.loop !1018

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i30.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i30.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i30.preheader
  %.01.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i31.unr = phi i32 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i24.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i30.preheader ], [ %i.nz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i30.prol ]
  %i.oa = icmp ult i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i24.ph, 8
  br i1 %i.oa, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i29, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i30

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i30:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i30.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i30
  %.01.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i31 = phi i32 [ %i.ob, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i30 ], [ %.01.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i31.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i30.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.ob = add nsw i32 %.01.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i31, -8
  call void @llvm.x86.sse2.pause()
  %i.oc = icmp sgt i32 %.01.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i31, 8
  br i1 %i.oc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i30, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i29, !llvm.loop !2

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i29: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i30.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i30, %bb.ak
  %i.od = shl i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i24.ph, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i27.outer, !llvm.loop !1013

bb.al:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i26
  %i.oe = call noundef i32 @sched_yield() #20     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i27, !llvm.loop !1013

_ZNSt11scoped_lockIJN3tbb6detail2d110spin_mutexEEEC2ERS3_.exit.i.i.i.i.i.i.i.i.i.i.i.i25: ; preds = %bb.aj
  %i.of = getelementptr inbounds nuw i8, ptr %i.ne, i64 33 ; 2 uses
  %i.og = load i16, ptr %i.of, align 1
  %i.oh = or i16 %i.og, 16384
  store i16 %i.oh, ptr %i.of, align 1
  store atomic i8 0, ptr %i.ns release, align 1
  br label %bb.am

bb.am:                                            ; preds = %_ZNSt11scoped_lockIJN3tbb6detail2d110spin_mutexEEEC2ERS3_.exit.i.i.i.i.i.i.i.i.i.i.i.i25, %bb.ah, %bb.ag, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i16
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.012.018.i.i.i.i.i.i.i.i.i.i.i.i17, i64 4 ; 2 uses
  %i.oj = icmp eq ptr %i.oi, %i.mt
  br i1 %i.oj, label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4mold14run_lto_pluginINS3_6X86_64EEESt6vectorIPNS3_10ObjectFileIT_EESaISA_EERNS3_7ContextIS8_EEEUlPNS7_IS5_EEE_E4callIRSH_NS1_11feeder_implISI_SH_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS8_Efp0_EEcvv_EERKSI_OS8_PT0_.exit.i.i.i.i.i.i22, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i16

_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4mold14run_lto_pluginINS3_6X86_64EEESt6vectorIPNS3_10ObjectFileIT_EESaISA_EERNS3_7ContextIS8_EEEUlPNS7_IS5_EEE_E4callIRSH_NS1_11feeder_implISI_SH_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS8_Efp0_EEcvv_EERKSI_OS8_PT0_.exit.i.i.i.i.i.i22: ; preds = %bb.am, %bb.af, %.lr.ph.i.i.i.i.i.i14
  %i.ok = add i64 %.04.i.i.i.i.i.i15, 1           ; 2 uses
  %.not.i.i.i.i.i.i23 = icmp eq i64 %i.ok, %.sroa.02.0.copyload.i.i.i.i.i10
  br i1 %.not.i.i.i.i.i.i23, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_14run_lto_pluginISB_EESF_IPNSA_IT_EESaISM_EERNS9_7ContextISK_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit32, label %.lr.ph.i.i.i.i.i.i14, !llvm.loop !1014

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_14run_lto_pluginISB_EESF_IPNSA_IT_EESaISM_EERNS9_7ContextISK_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit32: ; preds = %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4mold14run_lto_pluginINS3_6X86_64EEESt6vectorIPNS3_10ObjectFileIT_EESaISA_EERNS3_7ContextIS8_EEEUlPNS7_IS5_EEE_E4callIRSH_NS1_11feeder_implISI_SH_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS8_Efp0_EEcvv_EERKSI_OS8_PT0_.exit.i.i.i.i.i.i22, %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_14run_lto_pluginISD_EESH_IPNSC_IT_EESaISO_EERNSB_7ContextISM_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSM_.exit
  %i.ol = add i8 %i.mi, -1
  %i.om = add nuw i8 %i.mh, 7
  %i.on = and i8 %i.om, 7
  br label %thread-pre-split35

thread-pre-split35:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_14run_lto_pluginISB_EESF_IPNSA_IT_EESaISM_EERNS9_7ContextISK_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit32
  %i.oo = phi i8 [ %i.ol, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_14run_lto_pluginISB_EESF_IPNSA_IT_EESaISM_EERNS9_7ContextISK_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit32 ], [ %i.kc, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.op = phi i8 [ %i.on, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_14run_lto_pluginISB_EESF_IPNSA_IT_EESaISM_EERNS9_7ContextISK_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit32 ], [ %i.kd, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.oq = icmp eq i8 %i.oo, 0
  br i1 %i.oq, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %.thread, %thread-pre-split35
  %i.or = phi i8 [ %i.lu, %.thread ], [ %i.br, %thread-pre-split35 ]
  %i.os = phi i8 [ %i.ls, %.thread ], [ %i.oo, %thread-pre-split35 ]
  %i.ot = phi i8 [ %i.ks, %.thread ], [ %i.op, %thread-pre-split35 ]
  %i.ou = load ptr, ptr %3, align 8, !tbaa !550   ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 15
  %i.ow = load atomic i8, ptr %i.ov monotonic, align 1
  %i.ox = icmp eq i8 %i.ow, -1
  br i1 %i.ox, label %6, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

6:                                                ; preds = %bb.an
  %7 = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  %8 = load ptr, ptr %7, align 8, !tbaa !29
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %bb.an, %6
  %.0.i.i = phi ptr [ %8, %6 ], [ %i.ou, %bb.an ]
  %9 = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i) #20
  br i1 %9, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit, label %bb.m, !llvm.loop !1019

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit: ; preds = %thread-pre-split35, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_14run_lto_pluginISB_EESF_IPNSA_IT_EESaISM_EERNS9_7ContextISK_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_14run_lto_pluginISB_EESF_IPNSA_IT_EESaISM_EERNS9_7ContextISK_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4mold14run_lto_pluginINS3_6X86_64EEESt6vectorIPNS3_10ObjectFileIT_EESaISA_EERNS3_7ContextIS8_EEEUlPNS7_IS5_EEE_E4callIRSH_NS1_11feeder_implISI_SH_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS8_Efp0_EEcvv_EERKSI_OS8_PT0_.exit.i.i.i.i.i.i, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit
  ret void
}

declare noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

declare void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

declare void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

declare void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

declare void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
define internal void @_GLOBAL__sub_I_lto_unix.cc.X86_64.cc() #7 section ".text.startup" {
bb.a:
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN4mold12PluginSymbolESaIS1_EED2Ev, ptr nonnull @_ZN4moldL14plugin_symbolsE, ptr nonnull @__dso_handle) #20 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #24

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn }
attributes #19 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind }
attributes #21 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #22 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn nounwind }
attributes #28 = { builtin nounwind allocsize(0) }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { cold nounwind }
attributes #31 = { cold noreturn nounwind }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !208}
!1 = distinct !{!1, !208}
!2 = distinct !{!2, !208}
!3 = distinct !{!3, !208}
!4 = distinct !{!4, !208}
!5 = distinct !{!5, !208}
!6 = distinct !{!6, !208}
!7 = distinct !{null}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"any p2 pointer", !16, i64 0}
!18 = !{!"p1 omnipotent char", !16, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!20 = !{!"long", !12, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0, !20, i64 8, !12, i64 16}
!22 = !{!21, !20, i64 8}
!23 = !{!"p1 _ZTSN4mold7ContextINS_6X86_64EEE", !16, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!16, !16, i64 0}
!26 = !{!"vtable pointer", !11, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!19, !18, i64 0}
!29 = !{!12, !12, i64 0}
!30 = !{!"p2 _ZTSN4mold12InputSectionINS_6X86_64EEE", !17, i64 0}
!31 = !{!"p1 _ZTSN4mold12InputSectionINS_6X86_64EEE", !16, i64 0}
!32 = !{!"_ZTSSt15_Deque_iteratorIN4mold12InputSectionINS0_6X86_64EEERS3_PS3_E", !31, i64 0, !31, i64 8, !31, i64 16, !30, i64 24}
!33 = !{!"_ZTSNSt11_Deque_baseIN4mold12InputSectionINS0_6X86_64EEESaIS3_EE16_Deque_impl_dataE", !30, i64 0, !20, i64 8, !32, i64 16, !32, i64 48}
!34 = !{!33, !20, i64 8}
!35 = !{!33, !30, i64 0}
!36 = !{!31, !31, i64 0}
!37 = !{!32, !30, i64 24}
!38 = !{!32, !31, i64 8}
!39 = !{!32, !31, i64 16}
!40 = !{!33, !31, i64 16}
!41 = !{!33, !31, i64 48}
!42 = !{!"p1 long", !16, i64 0}
!43 = !{!"_ZTSSt18_Bit_iterator_base", !42, i64 0, !13, i64 8}
!44 = !{!43, !42, i64 0}
!45 = !{!43, !13, i64 8}
!46 = !{!"_ZTSSt14_Rb_tree_color", !12, i64 0}
!47 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !16, i64 0}
!48 = !{!"_ZTSSt18_Rb_tree_node_base", !46, i64 0, !47, i64 8, !47, i64 16, !47, i64 24}
!49 = !{!"_ZTSSt15_Rb_tree_header", !48, i64 0, !20, i64 32}
!50 = !{!49, !46, i64 0}
!51 = !{!49, !47, i64 8}
!52 = !{!49, !47, i64 16}
!53 = !{!49, !47, i64 24}
!54 = !{!"_ZTSSt13_Bit_iterator", !43, i64 0}
!55 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !54, i64 0, !54, i64 16, !42, i64 32}
!56 = !{!55, !42, i64 32}
!57 = !{!"p1 _ZTSN4mold10MappedFileE", !16, i64 0}
!58 = !{!"p1 _ZTSN4mold7ElfShdrINS_6X86_64EEE", !16, i64 0}
!59 = !{!"_ZTSNSt8__detail16__extent_storageILm18446744073709551615EEE", !20, i64 0}
!60 = !{!"_ZTSSt4spanIN4mold7ElfShdrINS0_6X86_64EEELm18446744073709551615EE", !58, i64 0, !59, i64 8}
!61 = !{!"p1 _ZTSN4mold6ElfSymINS_6X86_64EEE", !16, i64 0}
!62 = !{!"_ZTSSt4spanIN4mold6ElfSymINS0_6X86_64EEELm18446744073709551615EE", !61, i64 0, !59, i64 8}
!63 = !{!"p1 _ZTSN4mold13ArenaResourceE", !16, i64 0}
!64 = !{!"_ZTSN4mold14ArenaAllocatorINS_8ArenaPtrINS_6SymbolINS_6X86_64EEEEEEE", !63, i64 0}
!65 = !{!"p1 _ZTSN4mold8ArenaPtrINS_6SymbolINS_6X86_64EEEEE", !16, i64 0}
!66 = !{!"_ZTSNSt12_Vector_baseIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!67 = !{!"_ZTSNSt12_Vector_baseIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE12_Vector_implE", !64, i64 0, !66, i64 8}
!68 = !{!"_ZTSSt12_Vector_baseIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE", !67, i64 0}
!69 = !{!"_ZTSSt6vectorIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE", !68, i64 0}
!70 = !{!"bool", !12, i64 0}
!71 = !{!"_ZTSSt13__atomic_baseIbE", !70, i64 0}
!72 = !{!"_ZTSSt6atomicIbE", !71, i64 0}
!73 = !{!"_ZTSN4mold6AtomicIbEE", !72, i64 0}
!74 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !20, i64 0, !18, i64 8}
!75 = !{!"p1 _ZTSN4mold7NameLenE", !16, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseIN4mold7NameLenESaIS1_EE17_Vector_impl_dataE", !75, i64 0, !75, i64 8, !75, i64 16}
!77 = !{!"_ZTSNSt12_Vector_baseIN4mold7NameLenESaIS1_EE12_Vector_implE", !76, i64 0}
!78 = !{!"_ZTSSt12_Vector_baseIN4mold7NameLenESaIS1_EE", !77, i64 0}
!79 = !{!"_ZTSSt6vectorIN4mold7NameLenESaIS1_EE", !78, i64 0}
!80 = !{!"p1 int", !16, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !80, i64 0, !80, i64 8, !80, i64 16}
!82 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !81, i64 0}
!83 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !82, i64 0}
!84 = !{!"_ZTSSt6vectorIiSaIiEE", !83, i64 0}
!85 = !{!"p1 _ZTSN4mold6SymbolINS_6X86_64EEE", !16, i64 0}
!86 = !{!"_ZTSSt4spanIN4mold6SymbolINS0_6X86_64EEELm18446744073709551615EE", !85, i64 0, !59, i64 8}
!87 = !{!"_ZTSN4mold9InputFileINS_6X86_64EEE", !57, i64 8, !60, i64 16, !62, i64 32, !69, i64 48, !20, i64 80, !21, i64 88, !70, i64 120, !20, i64 128, !73, i64 136, !74, i64 144, !74, i64 160, !79, i64 176, !70, i64 200, !70, i64 201, !70, i64 202, !20, i64 208, !20, i64 216, !20, i64 224, !20, i64 232, !20, i64 240, !20, i64 248, !84, i64 256, !86, i64 280, !86, i64 296}
!88 = !{!"_ZTSNSt11_Deque_baseIN4mold12InputSectionINS0_6X86_64EEESaIS3_EE11_Deque_implE", !33, i64 0}
!89 = !{!"_ZTSSt11_Deque_baseIN4mold12InputSectionINS0_6X86_64EEESaIS3_EE", !88, i64 0}
!90 = !{!"_ZTSSt5dequeIN4mold12InputSectionINS0_6X86_64EEESaIS3_EE", !89, i64 0}
!91 = !{!"p1 _ZTSSt10unique_ptrIN4mold16MergeableSectionINS0_6X86_64EEESt14default_deleteIS3_EE", !16, i64 0}
!92 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4mold16MergeableSectionINS1_6X86_64EEESt14default_deleteIS4_EESaIS7_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!93 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4mold16MergeableSectionINS1_6X86_64EEESt14default_deleteIS4_EESaIS7_EE12_Vector_implE", !92, i64 0}
!94 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN4mold16MergeableSectionINS1_6X86_64EEESt14default_deleteIS4_EESaIS7_EE", !93, i64 0}
!95 = !{!"_ZTSSt6vectorISt10unique_ptrIN4mold16MergeableSectionINS1_6X86_64EEESt14default_deleteIS4_EESaIS7_EE", !94, i64 0}
!96 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !80, i64 0, !80, i64 8, !80, i64 16}
!97 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !96, i64 0}
!98 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !97, i64 0}
!99 = !{!"_ZTSSt6vectorIjSaIjEE", !98, i64 0}
!100 = !{!"_ZTSN4mold17InputSectionTableINS_6X86_64EEE", !90, i64 0, !95, i64 80, !99, i64 104}
!101 = !{!"_ZTSNSt12_Vector_baseIN4mold7ElfShdrINS0_6X86_64EEESaIS3_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!102 = !{!"_ZTSNSt12_Vector_baseIN4mold7ElfShdrINS0_6X86_64EEESaIS3_EE12_Vector_implE", !101, i64 0}
!103 = !{!"_ZTSSt12_Vector_baseIN4mold7ElfShdrINS0_6X86_64EEESaIS3_EE", !102, i64 0}
!104 = !{!"_ZTSSt6vectorIN4mold7ElfShdrINS0_6X86_64EEESaIS3_EE", !103, i64 0}
!105 = !{!"p1 _ZTSN4mold9CieRecordINS_6X86_64EEE", !16, i64 0}
!106 = !{!"_ZTSNSt12_Vector_baseIN4mold9CieRecordINS0_6X86_64EEESaIS3_EE17_Vector_impl_dataE", !105, i64 0, !105, i64 8, !105, i64 16}
!107 = !{!"_ZTSNSt12_Vector_baseIN4mold9CieRecordINS0_6X86_64EEESaIS3_EE12_Vector_implE", !106, i64 0}
!108 = !{!"_ZTSSt12_Vector_baseIN4mold9CieRecordINS0_6X86_64EEESaIS3_EE", !107, i64 0}
!109 = !{!"_ZTSSt6vectorIN4mold9CieRecordINS0_6X86_64EEESaIS3_EE", !108, i64 0}
!110 = !{!"p1 _ZTSN4mold9FdeRecordINS_6X86_64EEE", !16, i64 0}
!111 = !{!"_ZTSNSt12_Vector_baseIN4mold9FdeRecordINS0_6X86_64EEESaIS3_EE17_Vector_impl_dataE", !110, i64 0, !110, i64 8, !110, i64 16}
!112 = !{!"_ZTSNSt12_Vector_baseIN4mold9FdeRecordINS0_6X86_64EEESaIS3_EE12_Vector_implE", !111, i64 0}
!113 = !{!"_ZTSSt12_Vector_baseIN4mold9FdeRecordINS0_6X86_64EEESaIS3_EE", !112, i64 0}
!114 = !{!"_ZTSSt6vectorIN4mold9FdeRecordINS0_6X86_64EEESaIS3_EE", !113, i64 0}
!115 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !55, i64 0}
!116 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !115, i64 0}
!117 = !{!"_ZTSSt6vectorIbSaIbEE", !116, i64 0}
!118 = !{!"p1 _ZTSN4mold14ComdatGroupRefINS_6X86_64EEE", !16, i64 0}
end_hunk_1
