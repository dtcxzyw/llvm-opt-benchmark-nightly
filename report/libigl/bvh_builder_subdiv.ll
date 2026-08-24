Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_subdiv?download=true
inline.NumInlined: 2401
inline.NumDeleted: 459
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS5_Lm32EE5splitERKNSC_8BinSplitILm32EEERKNS_5SetMBERSJ_SM_EUlRKS5_E_ZNSE_5splitESI_SL_SM_SM_EUlRSA_SO_E_ZNSE_5splitESI_SL_SM_SM_EUlSQ_RKSA_E_E9partitionESQ_SQ_EUlmE_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSX_SX_SX_S10_PNS0_16TaskGroupContextEEUlvE_EEvRKSX_S17_mb:bb.a

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  store ptr null, ptr %11, align 8
  %i.ec = load ptr, ptr %2, align 8               ; 2 uses
  %.not80 = icmp eq ptr %i.ec, null
  br i1 %.not80, label %bb.at, label %_ZNSt15__exception_ptr13exception_ptraSERKS0_.exit

_ZNSt15__exception_ptr13exception_ptraSERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %i.ec, ptr %6, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  %.pre.i = load ptr, ptr %6, align 8
  store ptr %.pre.i, ptr %11, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.at

bb.at:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptraSERKS0_.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ee = atomicrmw sub ptr %i.ed, i64 1 seq_cst, align 8 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.av, %bb.at
  %i.ef = load atomic i64, ptr %i.ed seq_cst, align 8
  %.not = icmp eq i64 %i.ef, 0
  br i1 %.not, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN6embree5yieldEv()
          to label %bb.au unwind label %bb.aw, !llvm.loop !1502

bb.aw:                                            ; preds = %bb.av
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.eh = load ptr, ptr %2, align 8               ; 2 uses
  store ptr %i.eh, ptr %5, align 8
  store ptr null, ptr %2, align 8
  %.not.i.i59 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i59, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.ax
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63: ; preds = %bb.ax, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.ei = load ptr, ptr %11, align 8              ; 2 uses
  %.not81 = icmp eq ptr %i.ei, null
  br i1 %.not81, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  store ptr %i.ei, ptr %12, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #20
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %12) #27
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.az:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = load ptr, ptr %12, align 8
  %.not.i65 = icmp eq ptr %i.ek, null
  br i1 %.not.i65, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #20
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.el = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i69 = icmp eq ptr %i.el, null
  br i1 %.not.i69, label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 786696
  %i.en = load ptr, ptr %i.em, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i, label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  invoke void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.en)
          to label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #26
  unreachable

_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i:    ; preds = %bb.bc, %bb.bb
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.el)
          to label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit unwind label %bb.be

bb.be:                                            ; preds = %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #26
  unreachable

_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  ret void

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66: ; preds = %bb.ba, %bb.az, %bb.aw
  %.pn36 = phi { ptr, i32 } [ %i.eg, %bb.aw ], [ %i.ej, %bb.az ], [ %i.ej, %bb.ba ]
  %i.ev = load ptr, ptr %11, align 8
  %.not.i70 = icmp eq ptr %i.ev, null
  br i1 %.not.i70, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #20
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j, %bb.m, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45, %bb.ac
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71 ], [ %.pn30, %bb.ac ], [ %.pn34, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit ], [ %.pn32, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45 ], [ %i.at, %bb.m ], [ %i.al, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #20
  br label %_ZN6embree13TaskScheduler6ThreaddlEPv.exit

_ZN6embree13TaskScheduler6ThreaddlEPv.exit:       ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47, %.body
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %.body ], [ %.pn, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  resume { ptr, i32 } %.pn36.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS5_Lm32EE5splitERKNSC_8BinSplitILm32EEERKNS_5SetMBERSJ_SM_EUlRKS5_E_ZNSE_5splitESI_SL_SM_SM_EUlRSA_SO_E_ZNSE_5splitESI_SL_SM_SM_EUlSQ_RKSA_E_E9partitionESQ_SQ_EUlmE_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSX_SX_SX_S10_PNS0_16TaskGroupContextEEUlvE_E7executeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !align !43
  tail call void @_ZZN6embree23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS1_Lm32EE5splitERKNS8_8BinSplitILm32EEERKNS_5SetMBERSF_SI_EUlRKS1_E_ZNSA_5splitESE_SH_SI_SI_EUlRS6_SK_E_ZNSA_5splitESE_SH_SI_SI_EUlSM_RKS6_E_E9partitionESM_SM_ENKUlmE_clEm(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef %i.d), !inline_history !1503
  br label %_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS4_Lm32EE5splitERKNSB_8BinSplitILm32EEERKNS_5SetMBERSI_SL_EUlRKS4_E_ZNSD_5splitESH_SK_SL_SL_EUlRS9_SN_E_ZNSD_5splitESH_SK_SL_SL_EUlSP_RKS9_E_E9partitionESP_SP_EUlmE_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSW_SW_SW_SZ_PNS0_16TaskGroupContextEENKUlvE_clEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = add i64 %i.d, %i.b
  %i.k = lshr i64 %i.j, 1                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS4_Lm32EE5splitERKNSB_8BinSplitILm32EEERKNS_5SetMBERSI_SL_EUlRKS4_E_ZNSD_5splitESH_SK_SL_SL_EUlRS9_SN_E_ZNSD_5splitESH_SK_SL_SL_EUlSP_RKS9_E_E9partitionESP_SP_EUlmE_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSW_SW_SW_SZ_PNS0_16TaskGroupContextE(i64 noundef %i.d, i64 noundef %i.k, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.n), !inline_history !1503
  %i.o = load i64, ptr %i.a, align 8
  %i.p = load i64, ptr %i.f, align 8
  %i.q = load ptr, ptr %i.m, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS4_Lm32EE5splitERKNSB_8BinSplitILm32EEERKNS_5SetMBERSI_SL_EUlRKS4_E_ZNSD_5splitESH_SK_SL_SL_EUlRS9_SN_E_ZNSD_5splitESH_SK_SL_SL_EUlSP_RKS9_E_E9partitionESP_SP_EUlmE_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSW_SW_SW_SZ_PNS0_16TaskGroupContextE(i64 noundef %i.k, i64 noundef %i.o, i64 noundef %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.q), !inline_history !1503
  tail call void @_ZN6embree13TaskScheduler4waitEv(), !inline_history !1503
  br label %_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS4_Lm32EE5splitERKNSB_8BinSplitILm32EEERKNS_5SetMBERSI_SL_EUlRKS4_E_ZNSD_5splitESH_SK_SL_SL_EUlRS9_SN_E_ZNSD_5splitESH_SK_SL_SL_EUlSP_RKS9_E_E9partitionESP_SP_EUlmE_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSW_SW_SW_SZ_PNS0_16TaskGroupContextEENKUlvE_clEv.exit

_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS4_Lm32EE5splitERKNSB_8BinSplitILm32EEERKNS_5SetMBERSI_SL_EUlRKS4_E_ZNSD_5splitESH_SK_SL_SL_EUlRS9_SN_E_ZNSD_5splitESH_SK_SL_SL_EUlSP_RKS9_E_E9partitionESP_SP_EUlmE_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSW_SW_SW_SZ_PNS0_16TaskGroupContextEENKUlvE_clEv.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS1_Lm32EE5splitERKNS8_8BinSplitILm32EEERKNS_5SetMBERSF_SI_EUlRKS1_E_ZNSA_5splitESE_SH_SI_SI_EUlRS6_SK_E_ZNSA_5splitESE_SH_SI_SI_EUlSM_RKS6_E_E9partitionESM_SM_ENKUlmE_clEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = mul i64 %i.c, %1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.f = load i64, ptr %i.e, align 16             ; 2 uses
  %i.g = udiv i64 %i.d, %i.f                      ; 3 uses
  %i.h = add i64 %1, 1
  %i.i = mul i64 %i.c, %i.h
  %i.j = udiv i64 %i.i, %i.f
  %i.k = load ptr, ptr %i.a, align 64             ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load ptr, ptr %i.l, align 16, !nonnull !4, !align !43 ; 4 uses
  %i.n = getelementptr inbounds nuw [80 x i8], ptr %i.k, i64 %i.g
  %i.o = getelementptr inbounds nuw [80 x i8], ptr %i.k, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.critedge37.i, %bb.a
  %.sroa.6963.0 = phi float [ 0.000000e+00, %bb.a ], [ %13, %.critedge37.i ] ; 2 uses
  %.sroa.6360.0 = phi float [ 1.000000e+00, %bb.a ], [ %10, %.critedge37.i ] ; 2 uses
  %.sroa.5056.0 = phi i64 [ 0, %bb.a ], [ %.sroa.5056.3, %.critedge37.i ] ; 2 uses
  %.sroa.4554.0 = phi i64 [ 0, %bb.a ], [ %i.em, %.critedge37.i ] ; 2 uses
  %.sroa.4052.0 = phi i64 [ 0, %bb.a ], [ %i.ek, %.critedge37.i ] ; 2 uses
  %.sroa.3248.0 = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.eg, %.critedge37.i ] ; 2 uses
  %.sroa.2645.0 = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.ef, %.critedge37.i ] ; 2 uses
  %.sroa.2042.0 = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.ee, %.critedge37.i ] ; 2 uses
  %.sroa.1439.0 = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.ed, %.critedge37.i ] ; 2 uses
  %.sroa.836.0 = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.ec, %.critedge37.i ] ; 2 uses
  %.sroa.033.0 = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.eb, %.critedge37.i ] ; 2 uses
  %.sroa.69.0 = phi float [ 0.000000e+00, %bb.a ], [ %i.fu, %.critedge37.i ] ; 2 uses
  %.sroa.63.0 = phi float [ 1.000000e+00, %bb.a ], [ %i.fr, %.critedge37.i ] ; 2 uses
  %.sroa.50.0 = phi i64 [ 0, %bb.a ], [ %.sroa.50.3, %.critedge37.i ] ; 2 uses
  %.sroa.45.0 = phi i64 [ 0, %bb.a ], [ %i.fy, %.critedge37.i ] ; 2 uses
  %.sroa.40.0 = phi i64 [ 0, %bb.a ], [ %i.fv, %.critedge37.i ] ; 2 uses
  %.sroa.32.0 = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.fl, %.critedge37.i ] ; 2 uses
  %.sroa.26.0 = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.fk, %.critedge37.i ] ; 2 uses
  %.sroa.20.0 = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.fj, %.critedge37.i ] ; 2 uses
  %.sroa.14.0 = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.fi, %.critedge37.i ] ; 2 uses
  %.sroa.8.0 = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.fh, %.critedge37.i ] ; 2 uses
  %.sroa.0.0 = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.fg, %.critedge37.i ] ; 2 uses
  %.033.i = phi ptr [ %i.n, %bb.a ], [ %i.gk, %.critedge37.i ] ; 3 uses
  %.pn.i = phi ptr [ %i.o, %bb.a ], [ %.1.i152, %.critedge37.i ]
  %i.r = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.a ], [ %i.er, %.critedge37.i ] ; 2 uses
  %i.s = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.a ], [ %i.ge, %.critedge37.i ] ; 2 uses
  %.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -80 ; 4 uses
  %.not.i95 = icmp ugt ptr %.033.i, %.0.i
  br i1 %.not.i95, label %.critedge.i.preheader, label %.lr.ph, !prof !1283

.lr.ph:                                           ; preds = %bb.b
  %i.t = load ptr, ptr %i.m, align 8, !nonnull !4, !align !51 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load <4 x float>, ptr %i.u, align 16, !noalias !1504
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.x = load <4 x float>, ptr %i.w, align 16, !noalias !1509
  %i.y = load ptr, ptr %i.p, align 8, !nonnull !4, !align !51
  %i.z = load <4 x i32>, ptr %i.y, align 16, !noalias !1512
  %i.aa = load ptr, ptr %i.q, align 8, !nonnull !4, !align !51
  %i.ab = load <4 x i32>, ptr %i.aa, align 16, !noalias !1515
  %i.ac = icmp slt <4 x i32> %i.ab, zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit
  %.134.i109 = phi ptr [ %.033.i, %.lr.ph ], [ %i.cc, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit ] ; 7 uses
  %.sroa.033.1108 = phi <4 x float> [ %.sroa.033.0, %.lr.ph ], [ %i.bm, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit ] ; 2 uses
  %.sroa.836.1107 = phi <4 x float> [ %.sroa.836.0, %.lr.ph ], [ %i.bn, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit ] ; 2 uses
  %.sroa.1439.1106 = phi <4 x float> [ %.sroa.1439.0, %.lr.ph ], [ %i.bo, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit ] ; 2 uses
  %.sroa.2042.1105 = phi <4 x float> [ %.sroa.2042.0, %.lr.ph ], [ %i.bp, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit ] ; 2 uses
  %.sroa.2645.1104 = phi <4 x float> [ %.sroa.2645.0, %.lr.ph ], [ %i.bq, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit ] ; 2 uses
  %.sroa.3248.1103 = phi <4 x float> [ %.sroa.3248.0, %.lr.ph ], [ %i.br, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit ] ; 2 uses
  %.sroa.4052.1102 = phi i64 [ %.sroa.4052.0, %.lr.ph ], [ %i.bu, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit ] ; 2 uses
  %.sroa.4554.1101 = phi i64 [ %.sroa.4554.0, %.lr.ph ], [ %i.bw, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit ] ; 2 uses
  %.sroa.5056.1100 = phi i64 [ %.sroa.5056.0, %.lr.ph ], [ %.sroa.5056.2, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit ] ; 3 uses
  %.sroa.6360.197 = phi float [ %.sroa.6360.0, %.lr.ph ], [ %4, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit ] ; 3 uses
  %.sroa.6963.196 = phi float [ %.sroa.6963.0, %.lr.ph ], [ %7, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit ] ; 3 uses
  %i.ad = phi <2 x float> [ %i.r, %.lr.ph ], [ %i.cb, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.134.i109, i64 32
  %i.af = load <4 x float>, ptr %i.ae, align 16, !noalias !1518 ; 3 uses
  %i.ag = fmul <4 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = load <4 x float>, ptr %.134.i109, align 16, !noalias !1529 ; 2 uses
  %i.ai = fmul <4 x float> %i.ah, splat (float 5.000000e-01)
  %i.aj = fadd <4 x float> %i.ag, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %.134.i109, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %.134.i109, i64 48
  %i.am = load <4 x float>, ptr %i.al, align 16, !noalias !1534 ; 3 uses
  %i.an = fmul <4 x float> %i.am, splat (float 5.000000e-01)
  %i.ao = load <4 x float>, ptr %i.ak, align 16, !noalias !1539 ; 2 uses
  %i.ap = fmul <4 x float> %i.ao, splat (float 5.000000e-01)
  %i.aq = fadd <4 x float> %i.an, %i.ap
  %i.ar = fadd <4 x float> %i.aj, %i.aq           ; 3 uses
  %i.as = fsub <4 x float> %i.ar, %i.v
  %i.at = fmul <4 x float> %i.x, %i.as
  %i.au = fadd <4 x float> %i.at, splat (float -5.000000e-01)
  %i.av = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.au)
  %i.aw = icmp sgt <4 x i32> %i.z, %i.av
  %i.ax = select <4 x i1> %i.aw, <4 x i1> %i.ac, <4 x i1> zeroinitializer
  %i.ay = bitcast <4 x i1> %i.ax to i4
  %.not = icmp eq i4 %i.ay, 0
  br i1 %.not, label %.critedge.i.preheader, label %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit, !prof !44

.critedge.i.preheader:                            ; preds = %bb.c, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit, %bb.b
  %.sroa.6963.1.lcssa = phi float [ %.sroa.6963.0, %bb.b ], [ %7, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit ], [ %.sroa.6963.196, %bb.c ] ; 3 uses
  %.sroa.6360.1.lcssa = phi float [ %.sroa.6360.0, %bb.b ], [ %4, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit ], [ %.sroa.6360.197, %bb.c ] ; 3 uses
  %.sroa.5056.1.lcssa = phi i64 [ %.sroa.5056.0, %bb.b ], [ %.sroa.5056.2, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit ], [ %.sroa.5056.1100, %bb.c ] ; 3 uses
  %.sroa.4554.1.lcssa = phi i64 [ %.sroa.4554.0, %bb.b ], [ %i.bw, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit ], [ %.sroa.4554.1101, %bb.c ] ; 2 uses
  %.sroa.4052.1.lcssa = phi i64 [ %.sroa.4052.0, %bb.b ], [ %i.bu, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit ], [ %.sroa.4052.1102, %bb.c ] ; 2 uses
  %.sroa.3248.1.lcssa = phi <4 x float> [ %.sroa.3248.0, %bb.b ], [ %i.br, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit ], [ %.sroa.3248.1103, %bb.c ] ; 2 uses
  %.sroa.2645.1.lcssa = phi <4 x float> [ %.sroa.2645.0, %bb.b ], [ %i.bq, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit ], [ %.sroa.2645.1104, %bb.c ] ; 2 uses
  %.sroa.2042.1.lcssa = phi <4 x float> [ %.sroa.2042.0, %bb.b ], [ %i.bp, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit ], [ %.sroa.2042.1105, %bb.c ] ; 2 uses
  %.sroa.1439.1.lcssa = phi <4 x float> [ %.sroa.1439.0, %bb.b ], [ %i.bo, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit ], [ %.sroa.1439.1106, %bb.c ] ; 2 uses
  %.sroa.836.1.lcssa = phi <4 x float> [ %.sroa.836.0, %bb.b ], [ %i.bn, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit ], [ %.sroa.836.1107, %bb.c ] ; 2 uses
  %.sroa.033.1.lcssa = phi <4 x float> [ %.sroa.033.0, %bb.b ], [ %i.bm, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit ], [ %.sroa.033.1108, %bb.c ] ; 2 uses
  %.134.i.lcssa = phi ptr [ %.033.i, %bb.b ], [ %i.cc, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit ], [ %.134.i109, %bb.c ] ; 11 uses
  %i.az = phi <2 x float> [ %i.r, %bb.b ], [ %i.cb, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit ], [ %i.ad, %bb.c ] ; 2 uses
  %.not35.i138 = icmp ugt ptr %.134.i.lcssa, %.0.i
  br i1 %.not35.i138, label %_ZN6embree19serial_partitioningINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse223HeuristicArrayBinningMBIS1_Lm32EE5splitERKNS7_8BinSplitILm32EEERKNS_5SetMBERSE_SH_EUlRKS1_E_ZNS9_5splitESD_SG_SH_SH_EUlRS6_SJ_E_EEmPT_mmRT0_SQ_RKT1_RKT2_.exit, label %.lr.ph153, !prof !1283

.lr.ph153:                                        ; preds = %.critedge.i.preheader
  %i.ba = load ptr, ptr %i.m, align 8, !nonnull !4, !align !51 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load <4 x float>, ptr %i.bb, align 16, !noalias !1544
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.be = load <4 x float>, ptr %i.bd, align 16, !noalias !1549
  %i.bf = load ptr, ptr %i.p, align 8, !nonnull !4, !align !51
  %i.bg = load <4 x i32>, ptr %i.bf, align 16, !noalias !1552
  %i.bh = load ptr, ptr %i.q, align 8, !nonnull !4, !align !51
  %i.bi = load <4 x i32>, ptr %i.bh, align 16, !noalias !1555
  %i.bj = icmp slt <4 x i32> %i.bi, zeroinitializer
  br label %bb.d

_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit: ; preds = %bb.c
  %bc274 = bitcast <4 x float> %i.am to <4 x i32>
  %i.bk = extractelement <4 x i32> %bc274, i64 3
  %bc = bitcast <4 x float> %i.af to <4 x i32>
  %i.bl = extractelement <4 x i32> %bc, i64 3
  %i.bm = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.033.1108, <4 x float> %i.ah) ; 2 uses
  %i.bn = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.836.1107, <4 x float> %i.ao) ; 2 uses
  %i.bo = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1439.1106, <4 x float> %i.af) ; 2 uses
  %i.bp = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.2042.1105, <4 x float> %i.am) ; 2 uses
  %i.bq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.2645.1104, <4 x float> %i.ar) ; 2 uses
  %i.br = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.3248.1103, <4 x float> %i.ar) ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.134.i109, i64 64
  %i.bt = load <2 x float>, ptr %i.bs, align 16   ; 3 uses
  %2 = extractelement <2 x float> %i.bt, i64 0    ; 2 uses
  %3 = fcmp olt float %.sroa.6360.197, %2
  %4 = select i1 %3, float %.sroa.6360.197, float %2 ; 2 uses
  %5 = extractelement <2 x float> %i.bt, i64 1    ; 2 uses
  %6 = fcmp olt float %.sroa.6963.196, %5
  %7 = select i1 %6, float %5, float %.sroa.6963.196 ; 2 uses
  %i.bu = add i64 %.sroa.4052.1102, 1             ; 2 uses
  %i.bv = zext i32 %i.bl to i64
  %i.bw = add i64 %.sroa.4554.1101, %i.bv         ; 2 uses
  %i.bx = zext i32 %i.bk to i64                   ; 2 uses
  %i.by = icmp ult i64 %.sroa.5056.1100, %i.bx
  %i.bz = insertelement <2 x i1> poison, i1 %i.by, i64 0
  %i.ca = shufflevector <2 x i1> %i.bz, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.cb = select <2 x i1> %i.ca, <2 x float> %i.bt, <2 x float> %i.ad ; 2 uses
  %.sroa.5056.2 = tail call i64 @llvm.umax.i64(i64 %.sroa.5056.1100, i64 %i.bx) ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.134.i109, i64 80 ; 3 uses
  %.not.i = icmp ugt ptr %i.cc, %.0.i
  br i1 %.not.i, label %.critedge.i.preheader, label %bb.c, !prof !1296, !llvm.loop !1370

bb.d:                                             ; preds = %.lr.ph153, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11
  %.1.i152 = phi ptr [ %.0.i, %.lr.ph153 ], [ %i.dx, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 13 uses
  %.sroa.0.1151 = phi <4 x float> [ %.sroa.0.0, %.lr.ph153 ], [ %i.db, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 2 uses
  %.sroa.8.1150 = phi <4 x float> [ %.sroa.8.0, %.lr.ph153 ], [ %i.dc, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 2 uses
  %.sroa.14.1149 = phi <4 x float> [ %.sroa.14.0, %.lr.ph153 ], [ %i.dd, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 2 uses
  %.sroa.20.1148 = phi <4 x float> [ %.sroa.20.0, %.lr.ph153 ], [ %i.de, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 2 uses
  %.sroa.26.1147 = phi <4 x float> [ %.sroa.26.0, %.lr.ph153 ], [ %i.df, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 2 uses
  %.sroa.32.1146 = phi <4 x float> [ %.sroa.32.0, %.lr.ph153 ], [ %i.dg, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 2 uses
  %.sroa.40.1145 = phi i64 [ %.sroa.40.0, %.lr.ph153 ], [ %i.dp, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 2 uses
  %.sroa.45.1144 = phi i64 [ %.sroa.45.0, %.lr.ph153 ], [ %i.dr, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 2 uses
  %.sroa.50.1143 = phi i64 [ %.sroa.50.0, %.lr.ph153 ], [ %.sroa.50.2, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 4 uses
  %.sroa.63.1140 = phi float [ %.sroa.63.0, %.lr.ph153 ], [ %i.dl, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 4 uses
  %.sroa.69.1139 = phi float [ %.sroa.69.0, %.lr.ph153 ], [ %i.do, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 4 uses
  %i.cd = phi <2 x float> [ %i.s, %.lr.ph153 ], [ %i.dw, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.1.i152, i64 32
  %i.cf = load <4 x float>, ptr %i.ce, align 16, !noalias !1558 ; 4 uses
  %i.cg = fmul <4 x float> %i.cf, splat (float 5.000000e-01)
  %i.ch = load <4 x float>, ptr %.1.i152, align 16, !noalias !1569 ; 4 uses
  %i.ci = fmul <4 x float> %i.ch, splat (float 5.000000e-01)
  %i.cj = fadd <4 x float> %i.cg, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %.1.i152, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %.1.i152, i64 48
  %i.cm = load <4 x float>, ptr %i.cl, align 16, !noalias !1574 ; 4 uses
  %i.cn = fmul <4 x float> %i.cm, splat (float 5.000000e-01)
  %i.co = load <4 x float>, ptr %i.ck, align 16, !noalias !1579 ; 3 uses
  %i.cp = fmul <4 x float> %i.co, splat (float 5.000000e-01)
  %i.cq = fadd <4 x float> %i.cn, %i.cp
  %i.cr = fadd <4 x float> %i.cj, %i.cq           ; 5 uses
  %i.cs = fsub <4 x float> %i.cr, %i.bc
  %i.ct = fmul <4 x float> %i.be, %i.cs
  %i.cu = fadd <4 x float> %i.ct, splat (float -5.000000e-01)
  %i.cv = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.cu)
  %i.cw = icmp sgt <4 x i32> %i.bg, %i.cv
  %i.cx = select <4 x i1> %i.cw, <4 x i1> %i.bj, <4 x i1> zeroinitializer
  %i.cy = bitcast <4 x i1> %i.cx to i4
  %.not80 = icmp eq i4 %i.cy, 0
  %bc275 = bitcast <4 x float> %i.cf to <4 x i32>
  %i.cz = extractelement <4 x i32> %bc275, i64 3  ; 2 uses
  %bc276 = bitcast <4 x float> %i.cm to <4 x i32>
  %i.da = extractelement <4 x i32> %bc276, i64 3  ; 2 uses
  br i1 %.not80, label %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11, label %.critedge37.i, !prof !173

_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11: ; preds = %bb.d
  %i.db = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0.1151, <4 x float> %i.ch) ; 2 uses
  %i.dc = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.8.1150, <4 x float> %i.co) ; 2 uses
  %i.dd = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.14.1149, <4 x float> %i.cf) ; 2 uses
  %i.de = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.20.1148, <4 x float> %i.cm) ; 2 uses
  %i.df = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.26.1147, <4 x float> %i.cr) ; 2 uses
  %i.dg = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.32.1146, <4 x float> %i.cr) ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.1.i152, i64 64
  %i.di = load <2 x float>, ptr %i.dh, align 16   ; 3 uses
  %i.dj = extractelement <2 x float> %i.di, i64 0 ; 2 uses
  %i.dk = fcmp olt float %.sroa.63.1140, %i.dj
  %i.dl = select i1 %i.dk, float %.sroa.63.1140, float %i.dj ; 2 uses
  %i.dm = extractelement <2 x float> %i.di, i64 1 ; 2 uses
  %i.dn = fcmp olt float %.sroa.69.1139, %i.dm
  %i.do = select i1 %i.dn, float %i.dm, float %.sroa.69.1139 ; 2 uses
  %i.dp = add i64 %.sroa.40.1145, 1               ; 2 uses
  %i.dq = zext i32 %i.cz to i64
  %i.dr = add i64 %.sroa.45.1144, %i.dq           ; 2 uses
  %i.ds = zext i32 %i.da to i64                   ; 2 uses
  %i.dt = icmp ult i64 %.sroa.50.1143, %i.ds
  %i.du = insertelement <2 x i1> poison, i1 %i.dt, i64 0
  %i.dv = shufflevector <2 x i1> %i.du, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.dw = select <2 x i1> %i.dv, <2 x float> %i.di, <2 x float> %i.cd ; 2 uses
  %.sroa.50.2 = tail call i64 @llvm.umax.i64(i64 %.sroa.50.1143, i64 %i.ds) ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %.1.i152, i64 -80 ; 2 uses
  %.not35.i = icmp ugt ptr %.134.i.lcssa, %i.dx
  br i1 %.not35.i, label %_ZN6embree19serial_partitioningINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse223HeuristicArrayBinningMBIS1_Lm32EE5splitERKNS7_8BinSplitILm32EEERKNS_5SetMBERSE_SH_EUlRKS1_E_ZNS9_5splitESD_SG_SH_SH_EUlRS6_SJ_E_EEmPT_mmRT0_SQ_RKT1_RKT2_.exit, label %bb.d, !prof !1296, !llvm.loop !1429

.critedge37.i:                                    ; preds = %bb.d
  %i.dy = getelementptr inbounds nuw i8, ptr %.1.i152, i64 32 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.1.i152, i64 16 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.1.i152, i64 48 ; 2 uses
  %i.eb = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.033.1.lcssa, <4 x float> %i.ch)
  %i.ec = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.836.1.lcssa, <4 x float> %i.co)
  %i.ed = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1439.1.lcssa, <4 x float> %i.cf)
  %i.ee = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.2042.1.lcssa, <4 x float> %i.cm)
  %i.ef = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.2645.1.lcssa, <4 x float> %i.cr)
  %i.eg = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.3248.1.lcssa, <4 x float> %i.cr)
  %i.eh = getelementptr inbounds nuw i8, ptr %.1.i152, i64 64 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.1.i152, i64 68
  %i.ej = load <2 x float>, ptr %i.eh, align 4    ; 3 uses
  %8 = extractelement <2 x float> %i.ej, i64 0    ; 2 uses
  %9 = fcmp olt float %.sroa.6360.1.lcssa, %8
  %10 = select i1 %9, float %.sroa.6360.1.lcssa, float %8
  %11 = extractelement <2 x float> %i.ej, i64 1   ; 2 uses
  %12 = fcmp olt float %.sroa.6963.1.lcssa, %11
  %13 = select i1 %12, float %11, float %.sroa.6963.1.lcssa
  %i.ek = add i64 %.sroa.4052.1.lcssa, 1
  %i.el = zext i32 %i.cz to i64
  %i.em = add i64 %.sroa.4554.1.lcssa, %i.el
  %i.en = zext i32 %i.da to i64                   ; 2 uses
  %i.eo = icmp ult i64 %.sroa.5056.1.lcssa, %i.en
  %i.ep = insertelement <2 x i1> poison, i1 %i.eo, i64 0
  %i.eq = shufflevector <2 x i1> %i.ep, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.er = select <2 x i1> %i.eq, <2 x float> %i.ej, <2 x float> %i.az
  %.sroa.5056.3 = tail call i64 @llvm.umax.i64(i64 %.sroa.5056.1.lcssa, i64 %i.en)
  %i.es = load <4 x float>, ptr %.134.i.lcssa, align 16, !noalias !1584 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 16 ; 2 uses
  %i.eu = load <4 x float>, ptr %i.et, align 16, !noalias !1587 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 32 ; 2 uses
  %i.ew = load <4 x float>, ptr %i.ev, align 16, !noalias !1590 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 48 ; 2 uses
  %i.ey = load <4 x float>, ptr %i.ex, align 16, !noalias !1593 ; 4 uses
  %i.ez = fmul <4 x float> %i.ew, splat (float 5.000000e-01)
  %i.fa = fmul <4 x float> %i.es, splat (float 5.000000e-01)
  %i.fb = fadd <4 x float> %i.fa, %i.ez
  %i.fc = fmul <4 x float> %i.ey, splat (float 5.000000e-01)
  %i.fd = fmul <4 x float> %i.eu, splat (float 5.000000e-01)
  %i.fe = fadd <4 x float> %i.fd, %i.fc
  %i.ff = fadd <4 x float> %i.fb, %i.fe           ; 2 uses
  %i.fg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0.1151, <4 x float> %i.es)
  %i.fh = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.8.1150, <4 x float> %i.eu)
  %i.fi = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.14.1149, <4 x float> %i.ew)
  %i.fj = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.20.1148, <4 x float> %i.ey)
  %i.fk = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.26.1147, <4 x float> %i.ff)
  %i.fl = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.32.1146, <4 x float> %i.ff)
  %i.fm = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 64 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 68
  %i.fo = load <2 x float>, ptr %i.fm, align 16   ; 4 uses
  %i.fp = extractelement <2 x float> %i.fo, i64 0 ; 2 uses
  %i.fq = fcmp olt float %.sroa.63.1140, %i.fp
  %i.fr = select i1 %i.fq, float %.sroa.63.1140, float %i.fp
  %i.fs = extractelement <2 x float> %i.fo, i64 1 ; 2 uses
  %i.ft = fcmp olt float %.sroa.69.1139, %i.fs
  %i.fu = select i1 %i.ft, float %i.fs, float %.sroa.69.1139
  %i.fv = add i64 %.sroa.40.1145, 1
  %bc277 = bitcast <4 x float> %i.ew to <4 x i32>
  %i.fw = extractelement <4 x i32> %bc277, i64 3
  %i.fx = zext i32 %i.fw to i64
  %i.fy = add i64 %.sroa.45.1144, %i.fx
  %bc278 = bitcast <4 x float> %i.ey to <4 x i32>
  %i.fz = extractelement <4 x i32> %bc278, i64 3
  %i.ga = zext i32 %i.fz to i64                   ; 2 uses
  %i.gb = icmp ult i64 %.sroa.50.1143, %i.ga
  %i.gc = insertelement <2 x i1> poison, i1 %i.gb, i64 0
  %i.gd = shufflevector <2 x i1> %i.gc, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ge = select <2 x i1> %i.gd, <2 x float> %i.fo, <2 x float> %i.cd
  %.sroa.50.3 = tail call i64 @llvm.umax.i64(i64 %.sroa.50.1143, i64 %i.ga)
  store <4 x float> %i.ch, ptr %.134.i.lcssa, align 16
  %i.gf = load <4 x float>, ptr %i.dz, align 16
  store <4 x float> %i.gf, ptr %i.et, align 16
  %i.gg = load <4 x float>, ptr %i.dy, align 16
  store <4 x float> %i.gg, ptr %i.ev, align 16
  %i.gh = load <4 x float>, ptr %i.ea, align 16
  store <4 x float> %i.gh, ptr %i.ex, align 16
  %i.gi = load float, ptr %i.eh, align 16
  store float %i.gi, ptr %i.fm, align 16
  %i.gj = load float, ptr %i.ei, align 4
  store float %i.gj, ptr %i.fn, align 4
  store <4 x float> %i.es, ptr %.1.i152, align 16
  store <4 x float> %i.eu, ptr %i.dz, align 16
  store <4 x float> %i.ew, ptr %i.dy, align 16
  store <4 x float> %i.ey, ptr %i.ea, align 16
  store <2 x float> %i.fo, ptr %i.eh, align 16
  %i.gk = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 80
  br label %bb.b, !llvm.loop !1430

_ZN6embree19serial_partitioningINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse223HeuristicArrayBinningMBIS1_Lm32EE5splitERKNS7_8BinSplitILm32EEERKNS_5SetMBERSE_SH_EUlRKS1_E_ZNS9_5splitESD_SG_SH_SH_EUlRS6_SJ_E_EEmPT_mmRT0_SQ_RKT1_RKT2_.exit: ; preds = %.critedge.i.preheader, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11
  %.sroa.69.1.lcssa = phi float [ %i.do, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.69.0, %.critedge.i.preheader ]
  %.sroa.63.1.lcssa = phi float [ %i.dl, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.63.0, %.critedge.i.preheader ]
  %.sroa.50.1.lcssa = phi i64 [ %.sroa.50.2, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.50.0, %.critedge.i.preheader ]
  %.sroa.45.1.lcssa = phi i64 [ %i.dr, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.45.0, %.critedge.i.preheader ]
  %.sroa.40.1.lcssa = phi i64 [ %i.dp, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.40.0, %.critedge.i.preheader ]
  %.sroa.32.1.lcssa = phi <4 x float> [ %i.dg, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.32.0, %.critedge.i.preheader ]
  %.sroa.26.1.lcssa = phi <4 x float> [ %i.df, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.26.0, %.critedge.i.preheader ]
  %.sroa.20.1.lcssa = phi <4 x float> [ %i.de, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.20.0, %.critedge.i.preheader ]
  %.sroa.14.1.lcssa = phi <4 x float> [ %i.dd, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.14.0, %.critedge.i.preheader ]
  %.sroa.8.1.lcssa = phi <4 x float> [ %i.dc, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.8.0, %.critedge.i.preheader ]
  %.sroa.0.1.lcssa = phi <4 x float> [ %i.db, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.0.0, %.critedge.i.preheader ]
  %i.gl = phi <2 x float> [ %i.dw, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %i.s, %.critedge.i.preheader ]
  %i.gm = ptrtoint ptr %.134.i.lcssa to i64
  %i.gn = ptrtoint ptr %i.k to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = sdiv exact i64 %i.go, 80
  %i.gq = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %1
  store i64 %i.g, ptr %i.gr, align 8
  %i.gs = sub i64 %i.gp, %i.g
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %1
  store i64 %i.gs, ptr %i.gu, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 3264
  %i.gw = getelementptr inbounds nuw [144 x i8], ptr %i.gv, i64 %1 ; 13 uses
  store <4 x float> %.sroa.033.1.lcssa, ptr %i.gw, align 16
  %14 = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store <4 x float> %.sroa.836.1.lcssa, ptr %14, align 16
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  store <4 x float> %.sroa.1439.1.lcssa, ptr %i.gx, align 16
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 48
  store <4 x float> %.sroa.2042.1.lcssa, ptr %i.gy, align 16
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 64
  store <4 x float> %.sroa.2645.1.lcssa, ptr %i.gz, align 16
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 80
  store <4 x float> %.sroa.3248.1.lcssa, ptr %i.ha, align 16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 96
  store i64 0, ptr %i.hb, align 16
  %.sroa.4052.96..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.gw, i64 104
  store i64 %.sroa.4052.1.lcssa, ptr %.sroa.4052.96..sroa_idx.a, align 8
  %.sroa.4554.96..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.gw, i64 112
  store i64 %.sroa.4554.1.lcssa, ptr %.sroa.4554.96..sroa_idx.a, align 16
  %.sroa.5056.96..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.gw, i64 120
  store i64 %.sroa.5056.1.lcssa, ptr %.sroa.5056.96..sroa_idx.a, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gw, i64 128
  store <2 x float> %i.az, ptr %i.hc, align 16
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gw, i64 136
  store float %.sroa.6360.1.lcssa, ptr %i.hd, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.gw, i64 140
  store float %.sroa.6963.1.lcssa, ptr %i.he, align 4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.a, i64 12480
  %i.hg = getelementptr inbounds nuw [144 x i8], ptr %i.hf, i64 %1 ; 13 uses
  store <4 x float> %.sroa.0.1.lcssa, ptr %i.hg, align 16
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  store <4 x float> %.sroa.8.1.lcssa, ptr %i.hh, align 16
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  store <4 x float> %.sroa.14.1.lcssa, ptr %i.hi, align 16
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 48
  store <4 x float> %.sroa.20.1.lcssa, ptr %i.hj, align 16
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 64
  store <4 x float> %.sroa.26.1.lcssa, ptr %i.hk, align 16
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 80
  store <4 x float> %.sroa.32.1.lcssa, ptr %i.hl, align 16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 96
  store i64 0, ptr %i.hm, align 16
  %.sroa.40.96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 104
  store i64 %.sroa.40.1.lcssa, ptr %.sroa.40.96..sroa_idx, align 8
  %.sroa.45.96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 112
  store i64 %.sroa.45.1.lcssa, ptr %.sroa.45.96..sroa_idx, align 16
  %.sroa.50.96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 120
  store i64 %.sroa.50.1.lcssa, ptr %.sroa.50.96..sroa_idx, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hg, i64 128
  store <2 x float> %i.gl, ptr %i.hn, align 16
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hg, i64 136
  store float %.sroa.63.1.lcssa, ptr %i.ho, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hg, i64 140
  store float %.sroa.69.1.lcssa, ptr %i.hp, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS4_Lm32EE5splitERKNSB_8BinSplitILm32EEERKNS_5SetMBERSI_SL_EUlRKS4_E_ZNSD_5splitESH_SK_SL_SL_EUlRS9_SN_E_ZNSD_5splitESH_SK_SL_SL_EUlSP_RKS9_E_E9partitionESP_SP_EUlmE0_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSW_SW_SW_SZ_PNS0_16TaskGroupContextE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.271, align 8            ; 9 uses
  %i.a = sub i64 %1, %0                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i64 %1, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.e = load i64, ptr %3, align 8
  store i64 %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %4, ptr %i.f, align 8
  %i.g = tail call noundef ptr @_ZN6embree13TaskScheduler6threadEv() ; 7 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.l, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 262272 ; 5 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8
  %i.k = icmp ugt i64 %i.j, 4095
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #27
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.u, %bb.i ], [ %i.l, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.m, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #20
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 786624 ; 2 uses
  %i.o = load i64, ptr %i.n, align 64             ; 4 uses
  %i.p = sub i64 0, %i.o
  %i.q = and i64 %i.p, 63                         ; 2 uses
  %i.r = add i64 %i.o, 48
  %i.s = add i64 %i.r, %i.q                       ; 2 uses
  %i.t = icmp ugt i64 %i.s, 524288
  br i1 %i.t, label %bb.g, label %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.6)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #27
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i: ; preds = %bb.f
  store i64 %i.s, ptr %i.n, align 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 262336
  %i.x = getelementptr i8, ptr %i.w, i64 %i.o
  %i.y = getelementptr i8, ptr %i.x, i64 %i.q     ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS5_Lm32EE5splitERKNSC_8BinSplitILm32EEERKNS_5SetMBERSJ_SM_EUlRKS5_E_ZNSE_5splitESI_SL_SM_SM_EUlRSA_SO_E_ZNSE_5splitESI_SL_SM_SM_EUlSQ_RKSA_E_E9partitionESQ_SQ_EUlmE0_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSX_SX_SX_S10_PNS0_16TaskGroupContextEEUlvE_EE, i64 16), ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false)
  %i.aa = load atomic i64, ptr %i.i seq_cst, align 64
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %i.aa ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 786688
  %i.ad = load ptr, ptr %i.ac, align 64           ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 1, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i8 1, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.y, ptr %i.ag, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.ad, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %4, ptr %i.ai, align 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i64 %i.o, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store i64 %i.a, ptr %i.ak, align 16
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.am = atomicrmw add ptr %i.al, i32 1 seq_cst, align 4 ; 0 uses
  br label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i: ; preds = %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i, %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !45
  %i.an = cmpxchg ptr %i.ab, i32 0, i32 1 seq_cst seq_cst, align 4 ; 0 uses
  %i.ao = atomicrmw add ptr %i.i, i64 1 seq_cst, align 8 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 262208 ; 2 uses
  %i.aq = load atomic i64, ptr %i.ap seq_cst, align 64
  %i.ar = load atomic i64, ptr %i.i seq_cst, align 64
  %i.as = add i64 %i.ar, -1
  %.not.i7 = icmp ult i64 %i.aq, %i.as
  br i1 %.not.i7, label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS5_Lm32EE5splitERKNSC_8BinSplitILm32EEERKNS_5SetMBERSJ_SM_EUlRKS5_E_ZNSE_5splitESI_SL_SM_SM_EUlRSA_SO_E_ZNSE_5splitESI_SL_SM_SM_EUlSQ_RKSA_E_E9partitionESQ_SQ_EUlmE0_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSX_SX_SX_S10_PNS0_16TaskGroupContextEEUlvE_EEvmRKSX_S17_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i
  %i.at = load atomic i64, ptr %i.i seq_cst, align 64
  %i.au = add i64 %i.at, -1
  store atomic i64 %i.au, ptr %i.ap seq_cst, align 64
  br label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS5_Lm32EE5splitERKNSC_8BinSplitILm32EEERKNS_5SetMBERSJ_SM_EUlRKS5_E_ZNSE_5splitESI_SL_SM_SM_EUlRSA_SO_E_ZNSE_5splitESI_SL_SM_SM_EUlSQ_RKSA_E_E9partitionESQ_SQ_EUlmE0_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSX_SX_SX_S10_PNS0_16TaskGroupContextEEUlvE_EEvmRKSX_S17_.exit

bb.l:                                             ; preds = %bb.a
  %i.av = tail call noundef ptr @_ZN6embree13TaskScheduler8instanceEv()
  call void @_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS5_Lm32EE5splitERKNSC_8BinSplitILm32EEERKNS_5SetMBERSJ_SM_EUlRKS5_E_ZNSE_5splitESI_SL_SM_SM_EUlRSA_SO_E_ZNSE_5splitESI_SL_SM_SM_EUlSQ_RKSA_E_E9partitionESQ_SQ_EUlmE0_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSX_SX_SX_S10_PNS0_16TaskGroupContextEEUlvE_EEvRKSX_S17_mb(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %4, i64 noundef %i.a, i1 noundef zeroext true)
  br label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS5_Lm32EE5splitERKNSC_8BinSplitILm32EEERKNS_5SetMBERSJ_SM_EUlRKS5_E_ZNSE_5splitESI_SL_SM_SM_EUlRSA_SO_E_ZNSE_5splitESI_SL_SM_SM_EUlSQ_RKSA_E_E9partitionESQ_SQ_EUlmE0_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSX_SX_SX_S10_PNS0_16TaskGroupContextEEUlvE_EEvmRKSX_S17_.exit

_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS5_Lm32EE5splitERKNSC_8BinSplitILm32EEERKNS_5SetMBERSJ_SM_EUlRKS5_E_ZNSE_5splitESI_SL_SM_SM_EUlRSA_SO_E_ZNSE_5splitESI_SL_SM_SM_EUlSQ_RKSA_E_E9partitionESQ_SQ_EUlmE0_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSX_SX_SX_S10_PNS0_16TaskGroupContextEEUlvE_EEvmRKSX_S17_.exit: ; preds = %bb.k, %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS5_Lm32EE5splitERKNSC_8BinSplitILm32EEERKNS_5SetMBERSJ_SM_EUlRKS5_E_ZNSE_5splitESI_SL_SM_SM_EUlRSA_SO_E_ZNSE_5splitESI_SL_SM_SM_EUlSQ_RKSA_E_E9partitionESQ_SQ_EUlmE0_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSX_SX_SX_S10_PNS0_16TaskGroupContextEEUlvE_EEvRKSX_S17_mb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %7 = alloca %"class.std::unique_ptr.145", align 8 ; 6 uses
  %8 = alloca %"class.embree::Lock", align 8      ; 7 uses
  %9 = alloca %"class.embree::Ref.124", align 8   ; 7 uses
  %10 = alloca %"class.embree::Ref.124", align 8  ; 7 uses
  %11 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6embree13TaskScheduler12startThreadsEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = tail call noundef i64 @_ZN6embree13TaskScheduler16allocThreadIndexEv(ptr noundef nonnull align 8 dereferenceable(80) %0) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.b = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 786752, i64 noundef 64) ; 13 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41 unwind label %bb.w, !inline_history !46 ; 0 uses

_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41: ; preds = %bb.c
  store i64 %i.a, ptr %i.b, align 64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 10 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41
  %.idx.i.i = phi i64 [ 0, %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41 ], [ %.add.i.i.7, %bb.d ] ; 9 uses
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
  store i32 0, ptr %.ptr.i.i, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
  %.ptr.i.i.1 = getelementptr inbounds nuw i8, ptr %i.h, i64 64
end_hunk_0
