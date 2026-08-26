Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_twolevel?download=true
inline.NumInlined: 11316
inline.NumDeleted: 1655
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 105
loop-unroll.NumUnrolled: 293
begin_hunk_0_@_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SK_RKSJ_RKT1_RKT2_EUlSD_E_SI_EESJ_SK_SK_SK_SK_SM_SP_SS_EUlmE_EEvSK_SM_EUlSF_E_EEvSK_SK_SK_SM_PNS0_16TaskGroupContextEEUlvE_EEvRKSK_SX_mb:bb.a
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %.loopexit.split-lp ; 0 uses

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr null, ptr %11, align 8
  %i.ec = load ptr, ptr %2, align 8               ; 2 uses
  %.not80 = icmp eq ptr %i.ec, null
  br i1 %.not80, label %bb.at, label %_ZNSt15__exception_ptr13exception_ptraSERKS0_.exit

_ZNSt15__exception_ptr13exception_ptraSERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %i.ec, ptr %6, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  %.pre.i = load ptr, ptr %6, align 8
  store ptr %.pre.i, ptr %11, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
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
          to label %bb.au unwind label %bb.aw, !llvm.loop !85

bb.aw:                                            ; preds = %bb.av
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.eh = load ptr, ptr %2, align 8               ; 2 uses
  store ptr %i.eh, ptr %5, align 8
  store ptr null, ptr %2, align 8
  %.not.i.i59 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i59, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.ax
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63: ; preds = %bb.ax, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ei = load ptr, ptr %11, align 8              ; 2 uses
  %.not81 = icmp eq ptr %i.ei, null
  br i1 %.not81, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  store ptr %i.ei, ptr %12, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %12) #28
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
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
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
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66: ; preds = %bb.ba, %bb.az, %bb.aw
  %.pn36 = phi { ptr, i32 } [ %i.eg, %bb.aw ], [ %i.ej, %bb.az ], [ %i.ej, %bb.ba ]
  %i.ev = load ptr, ptr %11, align 8
  %.not.i70 = icmp eq ptr %i.ev, null
  br i1 %.not.i70, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j, %bb.m, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45, %bb.ac
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71 ], [ %.pn30, %bb.ac ], [ %.pn34, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit ], [ %.pn32, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45 ], [ %i.at, %bb.m ], [ %i.al, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #21
  br label %_ZN6embree13TaskScheduler6ThreaddlEPv.exit

_ZN6embree13TaskScheduler6ThreaddlEPv.exit:       ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47, %.body
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %.body ], [ %.pn, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  resume { ptr, i32 } %.pn36.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SK_RKSJ_RKT1_RKT2_EUlSD_E_SI_EESJ_SK_SK_SK_SK_SM_SP_SS_EUlmE_EEvSK_SM_EUlSF_E_EEvSK_SK_SK_SM_PNS0_16TaskGroupContextEEUlvE_E7executeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SJ_RKSI_RKT1_RKT2_EUlSC_E_SH_EESI_SJ_SJ_SJ_SJ_SL_SO_SR_EUlmE_EEvSJ_SL_EUlSE_E_EEvSJ_SJ_SJ_SL_PNS0_16TaskGroupContextEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SJ_RKSI_RKT1_RKT2_EUlSC_E_SH_EESI_SJ_SJ_SJ_SJ_SL_SO_SR_EUlmE_EEvSJ_SL_EUlSE_E_EEvSJ_SJ_SJ_SL_PNS0_16TaskGroupContextEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 6 uses
  %i.d = sub i64 %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %.not = icmp ugt i64 %i.d, %i.f
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !align !74 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !align !74
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !align !74
  %i.m = load i64, ptr %i.l, align 8
  %i.n = sub i64 %i.m, %i.j                       ; 2 uses
  %i.o = mul i64 %i.n, %i.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !align !74
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = udiv i64 %i.o, %i.r
  %i.t = add i64 %i.s, %i.j                       ; 2 uses
  %i.u = add i64 %i.c, 1
  %i.v = mul i64 %i.n, %i.u
  %i.w = udiv i64 %i.v, %i.r
  %i.x = add i64 %i.w, %i.j                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !align !74 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4, !align !74
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp ult i64 %i.t, %i.x
  br i1 %i.ac, label %.lr.ph.i.lr.ph.i.i.i, label %_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SH_RKSG_RKT1_RKT2_EUlSA_E_SF_EESG_SH_SH_SH_SH_SJ_SM_SP_EUlmE_EEvSH_SJ_ENKUlSC_E_clESC_.exit

.lr.ph.i.lr.ph.i.i.i:                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !4, !align !74
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 488
  %i.aj = load ptr, ptr %i.ai, align 8
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.thread.i.i.i.i, %.lr.ph.i.lr.ph.i.i.i
  %storemerge7.i.i.i = phi i64 [ %i.t, %.lr.ph.i.lr.ph.i.i.i ], [ %1, %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.thread.i.i.i.i ] ; 2 uses
  %.06.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.lr.ph.i.i.i ], [ %i.av, %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.thread.i.i.i.i ]
  %1 = add nuw i64 %storemerge7.i.i.i, 1          ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %storemerge7.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8            ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 60
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = and i32 %i.ao, 255
  %.not15.i.i.i.i = icmp eq i32 %i.ap, 20
  br i1 %.not15.i.i.i.i, label %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.i.i.i.i, label %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.thread.i.i.i.i

_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.i.i.i.i: ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  %i.ar = load i32, ptr %i.aq, align 4
  %.not.i.i.i.i = icmp eq i32 %i.ar, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.thread.i.i.i.i

bb.d:                                             ; preds = %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.at = load i32, ptr %i.as, align 16
  %.cmp.i.i.i.i = icmp ne i32 %i.at, 0
  %i.au = zext i1 %.cmp.i.i.i.i to i64
  br label %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.thread.i.i.i.i

_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.thread.i.i.i.i: ; preds = %bb.d, %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.au, %bb.d ], [ 0, %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ], [ 0, %bb.c ]
  %i.av = add i64 %.1.i.i.i.i, %.06.i.i.i         ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %1, %i.x
  br i1 %exitcond.not.i.i.i, label %_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SH_RKSG_RKT1_RKT2_EUlSA_E_SF_EESG_SH_SH_SH_SH_SJ_SM_SP_EUlmE_EEvSH_SJ_ENKUlSC_E_clESC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !86

_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SH_RKSG_RKT1_RKT2_EUlSA_E_SF_EESG_SH_SH_SH_SH_SJ_SM_SP_EUlmE_EEvSH_SJ_ENKUlSC_E_clESC_.exit: ; preds = %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.thread.i.i.i.i, %bb.b
  %.0.lcssa.i.i.i = phi i64 [ %i.ab, %bb.b ], [ %i.av, %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.thread.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !4, !align !87
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8192
  %i.az = load ptr, ptr %i.ay, align 64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.c
  store i64 %.0.lcssa.i.i.i, ptr %i.ba, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.bb = add i64 %i.c, %i.a
  %i.bc = lshr i64 %i.bb, 1                       ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SJ_RKSI_RKT1_RKT2_EUlSC_E_SH_EESI_SJ_SJ_SJ_SJ_SL_SO_SR_EUlmE_EEvSJ_SL_EUlSE_E_EEvSJ_SJ_SJ_SL_PNS0_16TaskGroupContextE(i64 noundef %i.c, i64 noundef %i.bc, i64 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef %i.bf)
  %i.bg = load i64, ptr %0, align 8
  %i.bh = load i64, ptr %i.e, align 8
  %i.bi = load ptr, ptr %i.be, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SJ_RKSI_RKT1_RKT2_EUlSC_E_SH_EESI_SJ_SJ_SJ_SJ_SL_SO_SR_EUlmE_EEvSJ_SL_EUlSE_E_EEvSJ_SJ_SJ_SL_PNS0_16TaskGroupContextE(i64 noundef %i.bc, i64 noundef %i.bg, i64 noundef %i.bh, ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef %i.bi)
  tail call void @_ZN6embree13TaskScheduler4waitEv()
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SH_RKSG_RKT1_RKT2_EUlSA_E_SF_EESG_SH_SH_SH_SH_SJ_SM_SP_EUlmE_EEvSH_SJ_ENKUlSC_E_clESC_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SD_SD_RKT0_PNS0_16TaskGroupContextE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.174, align 8            ; 9 uses
  %i.a = sub i64 %1, %0                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
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
  br i1 %.not.i, label %bb.l, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 262272 ; 5 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8
  %i.k = icmp ugt i64 %i.j, 4095
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #28
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.u, %bb.i ], [ %i.l, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.m, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
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
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #28
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
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SE_SE_RKT0_PNS0_16TaskGroupContextEEUlvE_EE, i64 16), ptr %i.y, align 8
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
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !71
  %i.an = cmpxchg ptr %i.ab, i32 0, i32 1 seq_cst seq_cst, align 4 ; 0 uses
  %i.ao = atomicrmw add ptr %i.i, i64 1 seq_cst, align 8 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 262208 ; 2 uses
  %i.aq = load atomic i64, ptr %i.ap seq_cst, align 64
  %i.ar = load atomic i64, ptr %i.i seq_cst, align 64
  %i.as = add i64 %i.ar, -1
  %.not.i7 = icmp ult i64 %i.aq, %i.as
  br i1 %.not.i7, label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SE_SE_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKSE_SJ_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i
  %i.at = load atomic i64, ptr %i.i seq_cst, align 64
  %i.au = add i64 %i.at, -1
  store atomic i64 %i.au, ptr %i.ap seq_cst, align 64
  br label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SE_SE_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKSE_SJ_.exit

bb.l:                                             ; preds = %bb.a
  %i.av = tail call noundef ptr @_ZN6embree13TaskScheduler8instanceEv()
  call void @_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SE_SE_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvRKSE_SJ_mb(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %4, i64 noundef %i.a, i1 noundef zeroext true)
  br label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SE_SE_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKSE_SJ_.exit

_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SE_SE_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKSE_SJ_.exit: ; preds = %bb.k, %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_9TriangleMILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SE_SE_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvRKSE_SJ_mb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %7 = alloca %"class.std::unique_ptr.145", align 8 ; 6 uses
  %8 = alloca %"class.embree::Lock", align 8      ; 7 uses
  %9 = alloca %"class.embree::Ref", align 8       ; 7 uses
  %10 = alloca %"class.embree::Ref", align 8      ; 7 uses
  %11 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6embree13TaskScheduler12startThreadsEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = tail call noundef i64 @_ZN6embree13TaskScheduler16allocThreadIndexEv(ptr noundef nonnull align 8 dereferenceable(80) %0) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.b = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 786752, i64 noundef 64) ; 13 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41 unwind label %bb.w, !inline_history !72 ; 0 uses

_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41: ; preds = %bb.c
  store i64 %i.a, ptr %i.b, align 64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 10 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41
  %.idx.i.i = phi i64 [ 0, %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41 ], [ %.add.i.i.7, %bb.d ] ; 9 uses
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
  store i32 0, ptr %.ptr.i.i, align 4
end_hunk_0
begin_hunk_1_@_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SK_RKSJ_RKT1_RKT2_EUlSD_E_SI_EESJ_SK_SK_SK_SK_SM_SP_SS_EUlmE_EEvSK_SM_EUlSF_E_EEvSK_SK_SK_SM_PNS0_16TaskGroupContextEEUlvE_EEvRKSK_SX_mb:bb.a
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %.loopexit.split-lp ; 0 uses

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr null, ptr %11, align 8
  %i.ec = load ptr, ptr %2, align 8               ; 2 uses
  %.not80 = icmp eq ptr %i.ec, null
  br i1 %.not80, label %bb.at, label %_ZNSt15__exception_ptr13exception_ptraSERKS0_.exit

_ZNSt15__exception_ptr13exception_ptraSERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %i.ec, ptr %6, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  %.pre.i = load ptr, ptr %6, align 8
  store ptr %.pre.i, ptr %11, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
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
          to label %bb.au unwind label %bb.aw, !llvm.loop !1025

bb.aw:                                            ; preds = %bb.av
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.eh = load ptr, ptr %2, align 8               ; 2 uses
  store ptr %i.eh, ptr %5, align 8
  store ptr null, ptr %2, align 8
  %.not.i.i59 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i59, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.ax
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63: ; preds = %bb.ax, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ei = load ptr, ptr %11, align 8              ; 2 uses
  %.not81 = icmp eq ptr %i.ei, null
  br i1 %.not81, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  store ptr %i.ei, ptr %12, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %12) #28
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
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
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
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66: ; preds = %bb.ba, %bb.az, %bb.aw
  %.pn36 = phi { ptr, i32 } [ %i.eg, %bb.aw ], [ %i.ej, %bb.az ], [ %i.ej, %bb.ba ]
  %i.ev = load ptr, ptr %11, align 8
  %.not.i70 = icmp eq ptr %i.ev, null
  br i1 %.not.i70, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j, %bb.m, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45, %bb.ac
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71 ], [ %.pn30, %bb.ac ], [ %.pn34, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit ], [ %.pn32, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45 ], [ %i.at, %bb.m ], [ %i.al, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #21
  br label %_ZN6embree13TaskScheduler6ThreaddlEPv.exit

_ZN6embree13TaskScheduler6ThreaddlEPv.exit:       ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47, %.body
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %.body ], [ %.pn, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  resume { ptr, i32 } %.pn36.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SK_RKSJ_RKT1_RKT2_EUlSD_E_SI_EESJ_SK_SK_SK_SK_SM_SP_SS_EUlmE_EEvSK_SM_EUlSF_E_EEvSK_SK_SK_SM_PNS0_16TaskGroupContextEEUlvE_E7executeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SJ_RKSI_RKT1_RKT2_EUlSC_E_SH_EESI_SJ_SJ_SJ_SJ_SL_SO_SR_EUlmE_EEvSJ_SL_EUlSE_E_EEvSJ_SJ_SJ_SL_PNS0_16TaskGroupContextEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SJ_RKSI_RKT1_RKT2_EUlSC_E_SH_EESI_SJ_SJ_SJ_SJ_SL_SO_SR_EUlmE_EEvSJ_SL_EUlSE_E_EEvSJ_SJ_SJ_SL_PNS0_16TaskGroupContextEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 6 uses
  %i.d = sub i64 %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %.not = icmp ugt i64 %i.d, %i.f
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !align !74 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !align !74
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !align !74
  %i.m = load i64, ptr %i.l, align 8
  %i.n = sub i64 %i.m, %i.j                       ; 2 uses
  %i.o = mul i64 %i.n, %i.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !align !74
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = udiv i64 %i.o, %i.r
  %i.t = add i64 %i.s, %i.j                       ; 2 uses
  %i.u = add i64 %i.c, 1
  %i.v = mul i64 %i.n, %i.u
  %i.w = udiv i64 %i.v, %i.r
  %i.x = add i64 %i.w, %i.j                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !align !74 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4, !align !74
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp ult i64 %i.t, %i.x
  br i1 %i.ac, label %.lr.ph.i.lr.ph.i.i.i, label %_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SH_RKSG_RKT1_RKT2_EUlSA_E_SF_EESG_SH_SH_SH_SH_SJ_SM_SP_EUlmE_EEvSH_SJ_ENKUlSC_E_clESC_.exit

.lr.ph.i.lr.ph.i.i.i:                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !4, !align !74
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 488
  %i.aj = load ptr, ptr %i.ai, align 8
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.thread.i.i.i.i, %.lr.ph.i.lr.ph.i.i.i
  %storemerge7.i.i.i = phi i64 [ %i.t, %.lr.ph.i.lr.ph.i.i.i ], [ %1, %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.thread.i.i.i.i ] ; 2 uses
  %.06.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.lr.ph.i.i.i ], [ %i.av, %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.thread.i.i.i.i ]
  %1 = add nuw i64 %storemerge7.i.i.i, 1          ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %storemerge7.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8            ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 60
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = and i32 %i.ao, 255
  %.not15.i.i.i.i = icmp eq i32 %i.ap, 20
  br i1 %.not15.i.i.i.i, label %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.i.i.i.i, label %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.thread.i.i.i.i

_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.i.i.i.i: ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  %i.ar = load i32, ptr %i.aq, align 4
  %.not.i.i.i.i = icmp eq i32 %i.ar, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.thread.i.i.i.i

bb.d:                                             ; preds = %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.at = load i32, ptr %i.as, align 16
  %.cmp.i.i.i.i = icmp ne i32 %i.at, 0
  %i.au = zext i1 %.cmp.i.i.i.i to i64
  br label %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.thread.i.i.i.i

_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.thread.i.i.i.i: ; preds = %bb.d, %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.au, %bb.d ], [ 0, %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ], [ 0, %bb.c ]
  %i.av = add i64 %.1.i.i.i.i, %.06.i.i.i         ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %1, %i.x
  br i1 %exitcond.not.i.i.i, label %_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SH_RKSG_RKT1_RKT2_EUlSA_E_SF_EESG_SH_SH_SH_SH_SJ_SM_SP_EUlmE_EEvSH_SJ_ENKUlSC_E_clESC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1026

_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SH_RKSG_RKT1_RKT2_EUlSA_E_SF_EESG_SH_SH_SH_SH_SJ_SM_SP_EUlmE_EEvSH_SJ_ENKUlSC_E_clESC_.exit: ; preds = %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.thread.i.i.i.i, %bb.b
  %.0.lcssa.i.i.i = phi i64 [ %i.ab, %bb.b ], [ %i.av, %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.thread.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !4, !align !87
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8192
  %i.az = load ptr, ptr %i.ay, align 64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.c
  store i64 %.0.lcssa.i.i.i, ptr %i.ba, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.bb = add i64 %i.c, %i.a
  %i.bc = lshr i64 %i.bb, 1                       ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SJ_RKSI_RKT1_RKT2_EUlSC_E_SH_EESI_SJ_SJ_SJ_SJ_SL_SO_SR_EUlmE_EEvSJ_SL_EUlSE_E_EEvSJ_SJ_SJ_SL_PNS0_16TaskGroupContextE(i64 noundef %i.c, i64 noundef %i.bc, i64 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef %i.bf)
  %i.bg = load i64, ptr %0, align 8
  %i.bh = load i64, ptr %i.e, align 8
  %i.bi = load ptr, ptr %i.be, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SJ_RKSI_RKT1_RKT2_EUlSC_E_SH_EESI_SJ_SJ_SJ_SJ_SL_SO_SR_EUlmE_EEvSJ_SL_EUlSE_E_EEvSJ_SJ_SJ_SL_PNS0_16TaskGroupContextE(i64 noundef %i.bc, i64 noundef %i.bg, i64 noundef %i.bh, ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef %i.bi)
  tail call void @_ZN6embree13TaskScheduler4waitEv()
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SH_RKSG_RKT1_RKT2_EUlSA_E_SF_EESG_SH_SH_SH_SH_SJ_SM_SP_EUlmE_EEvSH_SJ_ENKUlSC_E_clESC_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SD_SD_RKT0_PNS0_16TaskGroupContextE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.305, align 8            ; 9 uses
  %i.a = sub i64 %1, %0                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
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
  br i1 %.not.i, label %bb.l, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 262272 ; 5 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8
  %i.k = icmp ugt i64 %i.j, 4095
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #28
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.u, %bb.i ], [ %i.l, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.m, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
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
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #28
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
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SE_SE_RKT0_PNS0_16TaskGroupContextEEUlvE_EE, i64 16), ptr %i.y, align 8
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
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !71
  %i.an = cmpxchg ptr %i.ab, i32 0, i32 1 seq_cst seq_cst, align 4 ; 0 uses
  %i.ao = atomicrmw add ptr %i.i, i64 1 seq_cst, align 8 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 262208 ; 2 uses
  %i.aq = load atomic i64, ptr %i.ap seq_cst, align 64
  %i.ar = load atomic i64, ptr %i.i seq_cst, align 64
  %i.as = add i64 %i.ar, -1
  %.not.i7 = icmp ult i64 %i.aq, %i.as
  br i1 %.not.i7, label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SE_SE_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKSE_SJ_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i
  %i.at = load atomic i64, ptr %i.i seq_cst, align 64
  %i.au = add i64 %i.at, -1
  store atomic i64 %i.au, ptr %i.ap seq_cst, align 64
  br label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SE_SE_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKSE_SJ_.exit

bb.l:                                             ; preds = %bb.a
  %i.av = tail call noundef ptr @_ZN6embree13TaskScheduler8instanceEv()
  call void @_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SE_SE_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvRKSE_SJ_mb(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %4, i64 noundef %i.a, i1 noundef zeroext true)
  br label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SE_SE_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKSE_SJ_.exit

_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SE_SE_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKSE_SJ_.exit: ; preds = %bb.k, %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMvILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SE_SE_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvRKSE_SJ_mb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %7 = alloca %"class.std::unique_ptr.145", align 8 ; 6 uses
  %8 = alloca %"class.embree::Lock", align 8      ; 7 uses
  %9 = alloca %"class.embree::Ref", align 8       ; 7 uses
  %10 = alloca %"class.embree::Ref", align 8      ; 7 uses
  %11 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6embree13TaskScheduler12startThreadsEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = tail call noundef i64 @_ZN6embree13TaskScheduler16allocThreadIndexEv(ptr noundef nonnull align 8 dereferenceable(80) %0) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.b = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 786752, i64 noundef 64) ; 13 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41 unwind label %bb.w, !inline_history !72 ; 0 uses

_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41: ; preds = %bb.c
  store i64 %i.a, ptr %i.b, align 64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 10 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41
  %.idx.i.i = phi i64 [ 0, %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41 ], [ %.add.i.i.7, %bb.d ] ; 9 uses
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
  store i32 0, ptr %.ptr.i.i, align 4
end_hunk_1
begin_hunk_2_@_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SK_RKSJ_RKT1_RKT2_EUlSD_E_SI_EESJ_SK_SK_SK_SK_SM_SP_SS_EUlmE_EEvSK_SM_EUlSF_E_EEvSK_SK_SK_SM_PNS0_16TaskGroupContextEEUlvE_EEvRKSK_SX_mb:bb.a
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %.loopexit.split-lp ; 0 uses

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr null, ptr %11, align 8
  %i.ec = load ptr, ptr %2, align 8               ; 2 uses
  %.not80 = icmp eq ptr %i.ec, null
  br i1 %.not80, label %bb.at, label %_ZNSt15__exception_ptr13exception_ptraSERKS0_.exit

_ZNSt15__exception_ptr13exception_ptraSERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %i.ec, ptr %6, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  %.pre.i = load ptr, ptr %6, align 8
  store ptr %.pre.i, ptr %11, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
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
          to label %bb.au unwind label %bb.aw, !llvm.loop !1941

bb.aw:                                            ; preds = %bb.av
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.eh = load ptr, ptr %2, align 8               ; 2 uses
  store ptr %i.eh, ptr %5, align 8
  store ptr null, ptr %2, align 8
  %.not.i.i59 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i59, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.ax
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63: ; preds = %bb.ax, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ei = load ptr, ptr %11, align 8              ; 2 uses
  %.not81 = icmp eq ptr %i.ei, null
  br i1 %.not81, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  store ptr %i.ei, ptr %12, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %12) #28
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
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
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
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66: ; preds = %bb.ba, %bb.az, %bb.aw
  %.pn36 = phi { ptr, i32 } [ %i.eg, %bb.aw ], [ %i.ej, %bb.az ], [ %i.ej, %bb.ba ]
  %i.ev = load ptr, ptr %11, align 8
  %.not.i70 = icmp eq ptr %i.ev, null
  br i1 %.not.i70, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j, %bb.m, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45, %bb.ac
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71 ], [ %.pn30, %bb.ac ], [ %.pn34, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit ], [ %.pn32, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45 ], [ %i.at, %bb.m ], [ %i.al, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #21
  br label %_ZN6embree13TaskScheduler6ThreaddlEPv.exit

_ZN6embree13TaskScheduler6ThreaddlEPv.exit:       ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47, %.body
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %.body ], [ %.pn, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  resume { ptr, i32 } %.pn36.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SK_RKSJ_RKT1_RKT2_EUlSD_E_SI_EESJ_SK_SK_SK_SK_SM_SP_SS_EUlmE_EEvSK_SM_EUlSF_E_EEvSK_SK_SK_SM_PNS0_16TaskGroupContextEEUlvE_E7executeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SJ_RKSI_RKT1_RKT2_EUlSC_E_SH_EESI_SJ_SJ_SJ_SJ_SL_SO_SR_EUlmE_EEvSJ_SL_EUlSE_E_EEvSJ_SJ_SJ_SL_PNS0_16TaskGroupContextEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SJ_RKSI_RKT1_RKT2_EUlSC_E_SH_EESI_SJ_SJ_SJ_SJ_SL_SO_SR_EUlmE_EEvSJ_SL_EUlSE_E_EEvSJ_SJ_SJ_SL_PNS0_16TaskGroupContextEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 6 uses
  %i.d = sub i64 %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %.not = icmp ugt i64 %i.d, %i.f
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !align !74 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !align !74
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !align !74
  %i.m = load i64, ptr %i.l, align 8
  %i.n = sub i64 %i.m, %i.j                       ; 2 uses
  %i.o = mul i64 %i.n, %i.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !align !74
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = udiv i64 %i.o, %i.r
  %i.t = add i64 %i.s, %i.j                       ; 2 uses
  %i.u = add i64 %i.c, 1
  %i.v = mul i64 %i.n, %i.u
  %i.w = udiv i64 %i.v, %i.r
  %i.x = add i64 %i.w, %i.j                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !align !74 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4, !align !74
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp ult i64 %i.t, %i.x
  br i1 %i.ac, label %.lr.ph.i.lr.ph.i.i.i, label %_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SH_RKSG_RKT1_RKT2_EUlSA_E_SF_EESG_SH_SH_SH_SH_SJ_SM_SP_EUlmE_EEvSH_SJ_ENKUlSC_E_clESC_.exit

.lr.ph.i.lr.ph.i.i.i:                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !4, !align !74
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 488
  %i.aj = load ptr, ptr %i.ai, align 8
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.thread.i.i.i.i, %.lr.ph.i.lr.ph.i.i.i
  %storemerge7.i.i.i = phi i64 [ %i.t, %.lr.ph.i.lr.ph.i.i.i ], [ %1, %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.thread.i.i.i.i ] ; 2 uses
  %.06.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.lr.ph.i.i.i ], [ %i.av, %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.thread.i.i.i.i ]
  %1 = add nuw i64 %storemerge7.i.i.i, 1          ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %storemerge7.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8            ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 60
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = and i32 %i.ao, 255
  %.not15.i.i.i.i = icmp eq i32 %i.ap, 20
  br i1 %.not15.i.i.i.i, label %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.i.i.i.i, label %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.thread.i.i.i.i

_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.i.i.i.i: ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  %i.ar = load i32, ptr %i.aq, align 4
  %.not.i.i.i.i = icmp eq i32 %i.ar, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.thread.i.i.i.i

bb.d:                                             ; preds = %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.at = load i32, ptr %i.as, align 16
  %.cmp.i.i.i.i = icmp ne i32 %i.at, 0
  %i.au = zext i1 %.cmp.i.i.i.i to i64
  br label %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.thread.i.i.i.i

_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.thread.i.i.i.i: ; preds = %bb.d, %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.au, %bb.d ], [ 0, %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ], [ 0, %bb.c ]
  %i.av = add i64 %.1.i.i.i.i, %.06.i.i.i         ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %1, %i.x
  br i1 %exitcond.not.i.i.i, label %_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SH_RKSG_RKT1_RKT2_EUlSA_E_SF_EESG_SH_SH_SH_SH_SJ_SM_SP_EUlmE_EEvSH_SJ_ENKUlSC_E_clESC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1942

_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SH_RKSG_RKT1_RKT2_EUlSA_E_SF_EESG_SH_SH_SH_SH_SJ_SM_SP_EUlmE_EEvSH_SJ_ENKUlSC_E_clESC_.exit: ; preds = %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.thread.i.i.i.i, %bb.b
  %.0.lcssa.i.i.i = phi i64 [ %i.ab, %bb.b ], [ %i.av, %_ZN6embree5Scene7getSafeINS_12TriangleMeshEEEPT_m.exit.thread.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !4, !align !87
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8192
  %i.az = load ptr, ptr %i.ay, align 64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.c
  store i64 %.0.lcssa.i.i.i, ptr %i.ba, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.bb = add i64 %i.c, %i.a
  %i.bc = lshr i64 %i.bb, 1                       ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SJ_RKSI_RKT1_RKT2_EUlSC_E_SH_EESI_SJ_SJ_SJ_SJ_SL_SO_SR_EUlmE_EEvSJ_SL_EUlSE_E_EEvSJ_SJ_SJ_SL_PNS0_16TaskGroupContextE(i64 noundef %i.c, i64 noundef %i.bc, i64 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef %i.bf)
  %i.bg = load i64, ptr %0, align 8
  %i.bh = load i64, ptr %i.e, align 8
  %i.bi = load ptr, ptr %i.be, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SJ_RKSI_RKT1_RKT2_EUlSC_E_SH_EESI_SJ_SJ_SJ_SJ_SL_SO_SR_EUlmE_EEvSJ_SL_EUlSE_E_EEvSJ_SJ_SJ_SL_PNS0_16TaskGroupContextE(i64 noundef %i.bc, i64 noundef %i.bg, i64 noundef %i.bh, ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef %i.bi)
  tail call void @_ZN6embree13TaskScheduler4waitEv()
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SH_RKSG_RKT1_RKT2_EUlSA_E_SF_EESG_SH_SH_SH_SH_SJ_SM_SP_EUlmE_EEvSH_SJ_ENKUlSC_E_clESC_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SD_SD_RKT0_PNS0_16TaskGroupContextE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.413, align 8            ; 9 uses
  %i.a = sub i64 %1, %0                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
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
  br i1 %.not.i, label %bb.l, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 262272 ; 5 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8
  %i.k = icmp ugt i64 %i.j, 4095
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #28
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.u, %bb.i ], [ %i.l, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.m, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
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
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #28
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
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SE_SE_RKT0_PNS0_16TaskGroupContextEEUlvE_EE, i64 16), ptr %i.y, align 8
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
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !71
  %i.an = cmpxchg ptr %i.ab, i32 0, i32 1 seq_cst seq_cst, align 4 ; 0 uses
  %i.ao = atomicrmw add ptr %i.i, i64 1 seq_cst, align 8 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 262208 ; 2 uses
  %i.aq = load atomic i64, ptr %i.ap seq_cst, align 64
  %i.ar = load atomic i64, ptr %i.i seq_cst, align 64
  %i.as = add i64 %i.ar, -1
  %.not.i7 = icmp ult i64 %i.aq, %i.as
  br i1 %.not.i7, label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SE_SE_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKSE_SJ_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i
  %i.at = load atomic i64, ptr %i.i seq_cst, align 64
  %i.au = add i64 %i.at, -1
  store atomic i64 %i.au, ptr %i.ap seq_cst, align 64
  br label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SE_SE_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKSE_SJ_.exit

bb.l:                                             ; preds = %bb.a
  %i.av = tail call noundef ptr @_ZN6embree13TaskScheduler8instanceEv()
  call void @_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SE_SE_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvRKSE_SJ_mb(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %4, i64 noundef %i.a, i1 noundef zeroext true)
  br label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SE_SE_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKSE_SJ_.exit

_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SE_SE_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKSE_SJ_.exit: ; preds = %bb.k, %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12TriangleMeshENS_10TriangleMiILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SE_SE_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvRKSE_SJ_mb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %7 = alloca %"class.std::unique_ptr.145", align 8 ; 6 uses
  %8 = alloca %"class.embree::Lock", align 8      ; 7 uses
  %9 = alloca %"class.embree::Ref", align 8       ; 7 uses
  %10 = alloca %"class.embree::Ref", align 8      ; 7 uses
  %11 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6embree13TaskScheduler12startThreadsEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = tail call noundef i64 @_ZN6embree13TaskScheduler16allocThreadIndexEv(ptr noundef nonnull align 8 dereferenceable(80) %0) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.b = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 786752, i64 noundef 64) ; 13 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41 unwind label %bb.w, !inline_history !72 ; 0 uses

_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41: ; preds = %bb.c
  store i64 %i.a, ptr %i.b, align 64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 10 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41
  %.idx.i.i = phi i64 [ 0, %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41 ], [ %.add.i.i.7, %bb.d ] ; 9 uses
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
  store i32 0, ptr %.ptr.i.i, align 4
end_hunk_2
begin_hunk_3_@_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SK_RKSJ_RKT1_RKT2_EUlSD_E_SI_EESJ_SK_SK_SK_SK_SM_SP_SS_EUlmE_EEvSK_SM_EUlSF_E_EEvSK_SK_SK_SM_PNS0_16TaskGroupContextEEUlvE_EEvRKSK_SX_mb:bb.a
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %.loopexit.split-lp ; 0 uses

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr null, ptr %11, align 8
  %i.ec = load ptr, ptr %2, align 8               ; 2 uses
  %.not80 = icmp eq ptr %i.ec, null
  br i1 %.not80, label %bb.at, label %_ZNSt15__exception_ptr13exception_ptraSERKS0_.exit

_ZNSt15__exception_ptr13exception_ptraSERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %i.ec, ptr %6, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  %.pre.i = load ptr, ptr %6, align 8
  store ptr %.pre.i, ptr %11, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
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
          to label %bb.au unwind label %bb.aw, !llvm.loop !2841

bb.aw:                                            ; preds = %bb.av
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.eh = load ptr, ptr %2, align 8               ; 2 uses
  store ptr %i.eh, ptr %5, align 8
  store ptr null, ptr %2, align 8
  %.not.i.i59 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i59, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.ax
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63: ; preds = %bb.ax, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ei = load ptr, ptr %11, align 8              ; 2 uses
  %.not81 = icmp eq ptr %i.ei, null
  br i1 %.not81, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  store ptr %i.ei, ptr %12, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %12) #28
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
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
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
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66: ; preds = %bb.ba, %bb.az, %bb.aw
  %.pn36 = phi { ptr, i32 } [ %i.eg, %bb.aw ], [ %i.ej, %bb.az ], [ %i.ej, %bb.ba ]
  %i.ev = load ptr, ptr %11, align 8
  %.not.i70 = icmp eq ptr %i.ev, null
  br i1 %.not.i70, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j, %bb.m, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45, %bb.ac
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71 ], [ %.pn30, %bb.ac ], [ %.pn34, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit ], [ %.pn32, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45 ], [ %i.at, %bb.m ], [ %i.al, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #21
  br label %_ZN6embree13TaskScheduler6ThreaddlEPv.exit

_ZN6embree13TaskScheduler6ThreaddlEPv.exit:       ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47, %.body
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %.body ], [ %.pn, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  resume { ptr, i32 } %.pn36.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SK_RKSJ_RKT1_RKT2_EUlSD_E_SI_EESJ_SK_SK_SK_SK_SM_SP_SS_EUlmE_EEvSK_SM_EUlSF_E_EEvSK_SK_SK_SM_PNS0_16TaskGroupContextEEUlvE_E7executeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SJ_RKSI_RKT1_RKT2_EUlSC_E_SH_EESI_SJ_SJ_SJ_SJ_SL_SO_SR_EUlmE_EEvSJ_SL_EUlSE_E_EEvSJ_SJ_SJ_SL_PNS0_16TaskGroupContextEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SJ_RKSI_RKT1_RKT2_EUlSC_E_SH_EESI_SJ_SJ_SJ_SJ_SL_SO_SR_EUlmE_EEvSJ_SL_EUlSE_E_EEvSJ_SJ_SJ_SL_PNS0_16TaskGroupContextEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 6 uses
  %i.d = sub i64 %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %.not = icmp ugt i64 %i.d, %i.f
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !align !74 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !align !74
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !align !74
  %i.m = load i64, ptr %i.l, align 8
  %i.n = sub i64 %i.m, %i.j                       ; 2 uses
  %i.o = mul i64 %i.n, %i.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !align !74
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = udiv i64 %i.o, %i.r
  %i.t = add i64 %i.s, %i.j                       ; 2 uses
  %i.u = add i64 %i.c, 1
  %i.v = mul i64 %i.n, %i.u
  %i.w = udiv i64 %i.v, %i.r
  %i.x = add i64 %i.w, %i.j                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !align !74 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4, !align !74
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp ult i64 %i.t, %i.x
  br i1 %i.ac, label %.lr.ph.i.lr.ph.i.i.i, label %_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SH_RKSG_RKT1_RKT2_EUlSA_E_SF_EESG_SH_SH_SH_SH_SJ_SM_SP_EUlmE_EEvSH_SJ_ENKUlSC_E_clESC_.exit

.lr.ph.i.lr.ph.i.i.i:                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !4, !align !74
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 488
  %i.aj = load ptr, ptr %i.ai, align 8
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6embree5Scene7getSafeINS_8QuadMeshEEEPT_m.exit.thread.i.i.i.i, %.lr.ph.i.lr.ph.i.i.i
  %storemerge7.i.i.i = phi i64 [ %i.t, %.lr.ph.i.lr.ph.i.i.i ], [ %1, %_ZN6embree5Scene7getSafeINS_8QuadMeshEEEPT_m.exit.thread.i.i.i.i ] ; 2 uses
  %.06.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.lr.ph.i.i.i ], [ %i.av, %_ZN6embree5Scene7getSafeINS_8QuadMeshEEEPT_m.exit.thread.i.i.i.i ]
  %1 = add nuw i64 %storemerge7.i.i.i, 1          ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %storemerge7.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8            ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN6embree5Scene7getSafeINS_8QuadMeshEEEPT_m.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 60
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = and i32 %i.ao, 255
  %.not15.i.i.i.i = icmp eq i32 %i.ap, 21
  br i1 %.not15.i.i.i.i, label %_ZN6embree5Scene7getSafeINS_8QuadMeshEEEPT_m.exit.i.i.i.i, label %_ZN6embree5Scene7getSafeINS_8QuadMeshEEEPT_m.exit.thread.i.i.i.i

_ZN6embree5Scene7getSafeINS_8QuadMeshEEEPT_m.exit.i.i.i.i: ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  %i.ar = load i32, ptr %i.aq, align 4
  %.not.i.i.i.i = icmp eq i32 %i.ar, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN6embree5Scene7getSafeINS_8QuadMeshEEEPT_m.exit.thread.i.i.i.i

bb.d:                                             ; preds = %_ZN6embree5Scene7getSafeINS_8QuadMeshEEEPT_m.exit.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.at = load i32, ptr %i.as, align 16
  %.cmp.i.i.i.i = icmp ne i32 %i.at, 0
  %i.au = zext i1 %.cmp.i.i.i.i to i64
  br label %_ZN6embree5Scene7getSafeINS_8QuadMeshEEEPT_m.exit.thread.i.i.i.i

_ZN6embree5Scene7getSafeINS_8QuadMeshEEEPT_m.exit.thread.i.i.i.i: ; preds = %bb.d, %_ZN6embree5Scene7getSafeINS_8QuadMeshEEEPT_m.exit.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.au, %bb.d ], [ 0, %_ZN6embree5Scene7getSafeINS_8QuadMeshEEEPT_m.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ], [ 0, %bb.c ]
  %i.av = add i64 %.1.i.i.i.i, %.06.i.i.i         ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %1, %i.x
  br i1 %exitcond.not.i.i.i, label %_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SH_RKSG_RKT1_RKT2_EUlSA_E_SF_EESG_SH_SH_SH_SH_SJ_SM_SP_EUlmE_EEvSH_SJ_ENKUlSC_E_clESC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2842

_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SH_RKSG_RKT1_RKT2_EUlSA_E_SF_EESG_SH_SH_SH_SH_SJ_SM_SP_EUlmE_EEvSH_SJ_ENKUlSC_E_clESC_.exit: ; preds = %_ZN6embree5Scene7getSafeINS_8QuadMeshEEEPT_m.exit.thread.i.i.i.i, %bb.b
  %.0.lcssa.i.i.i = phi i64 [ %i.ab, %bb.b ], [ %i.av, %_ZN6embree5Scene7getSafeINS_8QuadMeshEEEPT_m.exit.thread.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !4, !align !87
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8192
  %i.az = load ptr, ptr %i.ay, align 64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.c
  store i64 %.0.lcssa.i.i.i, ptr %i.ba, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.bb = add i64 %i.c, %i.a
  %i.bc = lshr i64 %i.bb, 1                       ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SJ_RKSI_RKT1_RKT2_EUlSC_E_SH_EESI_SJ_SJ_SJ_SJ_SL_SO_SR_EUlmE_EEvSJ_SL_EUlSE_E_EEvSJ_SJ_SJ_SL_PNS0_16TaskGroupContextE(i64 noundef %i.c, i64 noundef %i.bc, i64 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef %i.bf)
  %i.bg = load i64, ptr %0, align 8
  %i.bh = load i64, ptr %i.e, align 8
  %i.bi = load ptr, ptr %i.be, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SJ_RKSI_RKT1_RKT2_EUlSC_E_SH_EESI_SJ_SJ_SJ_SJ_SL_SO_SR_EUlmE_EEvSJ_SL_EUlSE_E_EEvSJ_SJ_SJ_SL_PNS0_16TaskGroupContextE(i64 noundef %i.bc, i64 noundef %i.bg, i64 noundef %i.bh, ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef %i.bi)
  tail call void @_ZN6embree13TaskScheduler4waitEv()
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SH_RKSG_RKT1_RKT2_EUlSA_E_SF_EESG_SH_SH_SH_SH_SJ_SM_SP_EUlmE_EEvSH_SJ_ENKUlSC_E_clESC_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SD_SD_RKT0_PNS0_16TaskGroupContextE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.522, align 8            ; 9 uses
  %i.a = sub i64 %1, %0                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
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
  br i1 %.not.i, label %bb.l, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 262272 ; 5 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8
  %i.k = icmp ugt i64 %i.j, 4095
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #28
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.u, %bb.i ], [ %i.l, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.m, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
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
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #28
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
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SE_SE_RKT0_PNS0_16TaskGroupContextEEUlvE_EE, i64 16), ptr %i.y, align 8
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
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !71
  %i.an = cmpxchg ptr %i.ab, i32 0, i32 1 seq_cst seq_cst, align 4 ; 0 uses
  %i.ao = atomicrmw add ptr %i.i, i64 1 seq_cst, align 8 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 262208 ; 2 uses
  %i.aq = load atomic i64, ptr %i.ap seq_cst, align 64
  %i.ar = load atomic i64, ptr %i.i seq_cst, align 64
  %i.as = add i64 %i.ar, -1
  %.not.i7 = icmp ult i64 %i.aq, %i.as
  br i1 %.not.i7, label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SE_SE_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKSE_SJ_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i
  %i.at = load atomic i64, ptr %i.i seq_cst, align 64
  %i.au = add i64 %i.at, -1
  store atomic i64 %i.au, ptr %i.ap seq_cst, align 64
  br label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SE_SE_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKSE_SJ_.exit

bb.l:                                             ; preds = %bb.a
  %i.av = tail call noundef ptr @_ZN6embree13TaskScheduler8instanceEv()
  call void @_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SE_SE_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvRKSE_SJ_mb(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %4, i64 noundef %i.a, i1 noundef zeroext true)
  br label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SE_SE_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKSE_SJ_.exit

_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SE_SE_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKSE_SJ_.exit: ; preds = %bb.k, %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8QuadMeshENS_6QuadMvILi4EEEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SE_SE_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvRKSE_SJ_mb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %7 = alloca %"class.std::unique_ptr.145", align 8 ; 6 uses
  %8 = alloca %"class.embree::Lock", align 8      ; 7 uses
  %9 = alloca %"class.embree::Ref", align 8       ; 7 uses
  %10 = alloca %"class.embree::Ref", align 8      ; 7 uses
  %11 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6embree13TaskScheduler12startThreadsEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = tail call noundef i64 @_ZN6embree13TaskScheduler16allocThreadIndexEv(ptr noundef nonnull align 8 dereferenceable(80) %0) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.b = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 786752, i64 noundef 64) ; 13 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41 unwind label %bb.w, !inline_history !72 ; 0 uses

_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41: ; preds = %bb.c
  store i64 %i.a, ptr %i.b, align 64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 10 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41
  %.idx.i.i = phi i64 [ 0, %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41 ], [ %.add.i.i.7, %bb.d ] ; 9 uses
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
  store i32 0, ptr %.ptr.i.i, align 4
end_hunk_3
begin_hunk_4_@_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SJ_RKSI_RKT1_RKT2_EUlSC_E_SH_EESI_SJ_SJ_SJ_SJ_SL_SO_SR_EUlmE_EEvSJ_SL_EUlSE_E_EEvSJ_SJ_SJ_SL_PNS0_16TaskGroupContextEEUlvE_EEvRKSJ_SW_mb:bb.a
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %.loopexit.split-lp ; 0 uses

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr null, ptr %11, align 8
  %i.ec = load ptr, ptr %2, align 8               ; 2 uses
  %.not80 = icmp eq ptr %i.ec, null
  br i1 %.not80, label %bb.at, label %_ZNSt15__exception_ptr13exception_ptraSERKS0_.exit

_ZNSt15__exception_ptr13exception_ptraSERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %i.ec, ptr %6, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  %.pre.i = load ptr, ptr %6, align 8
  store ptr %.pre.i, ptr %11, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
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
          to label %bb.au unwind label %bb.aw, !llvm.loop !3770

bb.aw:                                            ; preds = %bb.av
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.eh = load ptr, ptr %2, align 8               ; 2 uses
  store ptr %i.eh, ptr %5, align 8
  store ptr null, ptr %2, align 8
  %.not.i.i59 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i59, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.ax
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63: ; preds = %bb.ax, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ei = load ptr, ptr %11, align 8              ; 2 uses
  %.not81 = icmp eq ptr %i.ei, null
  br i1 %.not81, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  store ptr %i.ei, ptr %12, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %12) #28
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
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
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
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66: ; preds = %bb.ba, %bb.az, %bb.aw
  %.pn36 = phi { ptr, i32 } [ %i.eg, %bb.aw ], [ %i.ej, %bb.az ], [ %i.ej, %bb.ba ]
  %i.ev = load ptr, ptr %11, align 8
  %.not.i70 = icmp eq ptr %i.ev, null
  br i1 %.not.i70, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j, %bb.m, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45, %bb.ac
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71 ], [ %.pn30, %bb.ac ], [ %.pn34, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit ], [ %.pn32, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45 ], [ %i.at, %bb.m ], [ %i.al, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #21
  br label %_ZN6embree13TaskScheduler6ThreaddlEPv.exit

_ZN6embree13TaskScheduler6ThreaddlEPv.exit:       ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47, %.body
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %.body ], [ %.pn, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  resume { ptr, i32 } %.pn36.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SJ_RKSI_RKT1_RKT2_EUlSC_E_SH_EESI_SJ_SJ_SJ_SJ_SL_SO_SR_EUlmE_EEvSJ_SL_EUlSE_E_EEvSJ_SJ_SJ_SL_PNS0_16TaskGroupContextEEUlvE_E7executeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SI_RKSH_RKT1_RKT2_EUlSB_E_SG_EESH_SI_SI_SI_SI_SK_SN_SQ_EUlmE_EEvSI_SK_EUlSD_E_EEvSI_SI_SI_SK_PNS0_16TaskGroupContextEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SI_RKSH_RKT1_RKT2_EUlSB_E_SG_EESH_SI_SI_SI_SI_SK_SN_SQ_EUlmE_EEvSI_SK_EUlSD_E_EEvSI_SI_SI_SK_PNS0_16TaskGroupContextEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 6 uses
  %i.d = sub i64 %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %.not = icmp ugt i64 %i.d, %i.f
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !align !74 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !align !74
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !align !74
  %i.m = load i64, ptr %i.l, align 8
  %i.n = sub i64 %i.m, %i.j                       ; 2 uses
  %i.o = mul i64 %i.n, %i.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !align !74
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = udiv i64 %i.o, %i.r
  %i.t = add i64 %i.s, %i.j                       ; 2 uses
  %i.u = add i64 %i.c, 1
  %i.v = mul i64 %i.n, %i.u
  %i.w = udiv i64 %i.v, %i.r
  %i.x = add i64 %i.w, %i.j                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !align !74 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4, !align !74
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp ult i64 %i.t, %i.x
  br i1 %i.ac, label %.lr.ph.i.lr.ph.i.i.i, label %_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SG_RKSF_RKT1_RKT2_EUlS9_E_SE_EESF_SG_SG_SG_SG_SI_SL_SO_EUlmE_EEvSG_SI_ENKUlSB_E_clESB_.exit

.lr.ph.i.lr.ph.i.i.i:                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !4, !align !74
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 488
  %i.aj = load ptr, ptr %i.ai, align 8
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6embree5Scene7getSafeINS_12UserGeometryEEEPT_m.exit.thread.i.i.i.i, %.lr.ph.i.lr.ph.i.i.i
  %storemerge7.i.i.i = phi i64 [ %i.t, %.lr.ph.i.lr.ph.i.i.i ], [ %1, %_ZN6embree5Scene7getSafeINS_12UserGeometryEEEPT_m.exit.thread.i.i.i.i ] ; 2 uses
  %.06.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.lr.ph.i.i.i ], [ %i.av, %_ZN6embree5Scene7getSafeINS_12UserGeometryEEEPT_m.exit.thread.i.i.i.i ]
  %1 = add nuw i64 %storemerge7.i.i.i, 1          ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %storemerge7.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8            ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN6embree5Scene7getSafeINS_12UserGeometryEEEPT_m.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 60
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = and i32 %i.ao, 255
  %.not15.i.i.i.i = icmp eq i32 %i.ap, 29
  br i1 %.not15.i.i.i.i, label %_ZN6embree5Scene7getSafeINS_12UserGeometryEEEPT_m.exit.i.i.i.i, label %_ZN6embree5Scene7getSafeINS_12UserGeometryEEEPT_m.exit.thread.i.i.i.i

_ZN6embree5Scene7getSafeINS_12UserGeometryEEEPT_m.exit.i.i.i.i: ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  %i.ar = load i32, ptr %i.aq, align 4
  %.not.i.i.i.i = icmp eq i32 %i.ar, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN6embree5Scene7getSafeINS_12UserGeometryEEEPT_m.exit.thread.i.i.i.i

bb.d:                                             ; preds = %_ZN6embree5Scene7getSafeINS_12UserGeometryEEEPT_m.exit.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.at = load i32, ptr %i.as, align 16           ; 2 uses
  %i.au = icmp ult i32 %i.at, 5
  %narrow.i.i.i.i = select i1 %i.au, i32 %i.at, i32 1
  %spec.select.i.i.i.i = zext i32 %narrow.i.i.i.i to i64
  br label %_ZN6embree5Scene7getSafeINS_12UserGeometryEEEPT_m.exit.thread.i.i.i.i

_ZN6embree5Scene7getSafeINS_12UserGeometryEEEPT_m.exit.thread.i.i.i.i: ; preds = %bb.d, %_ZN6embree5Scene7getSafeINS_12UserGeometryEEEPT_m.exit.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.d ], [ 0, %_ZN6embree5Scene7getSafeINS_12UserGeometryEEEPT_m.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ], [ 0, %bb.c ]
  %i.av = add i64 %.1.i.i.i.i, %.06.i.i.i         ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %1, %i.x
  br i1 %exitcond.not.i.i.i, label %_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SG_RKSF_RKT1_RKT2_EUlS9_E_SE_EESF_SG_SG_SG_SG_SI_SL_SO_EUlmE_EEvSG_SI_ENKUlSB_E_clESB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3771

_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SG_RKSF_RKT1_RKT2_EUlS9_E_SE_EESF_SG_SG_SG_SG_SI_SL_SO_EUlmE_EEvSG_SI_ENKUlSB_E_clESB_.exit: ; preds = %_ZN6embree5Scene7getSafeINS_12UserGeometryEEEPT_m.exit.thread.i.i.i.i, %bb.b
  %.0.lcssa.i.i.i = phi i64 [ %i.ab, %bb.b ], [ %i.av, %_ZN6embree5Scene7getSafeINS_12UserGeometryEEEPT_m.exit.thread.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !4, !align !87
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8192
  %i.az = load ptr, ptr %i.ay, align 64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.c
  store i64 %.0.lcssa.i.i.i, ptr %i.ba, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.bb = add i64 %i.c, %i.a
  %i.bc = lshr i64 %i.bb, 1                       ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SI_RKSH_RKT1_RKT2_EUlSB_E_SG_EESH_SI_SI_SI_SI_SK_SN_SQ_EUlmE_EEvSI_SK_EUlSD_E_EEvSI_SI_SI_SK_PNS0_16TaskGroupContextE(i64 noundef %i.c, i64 noundef %i.bc, i64 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef %i.bf)
  %i.bg = load i64, ptr %0, align 8
  %i.bh = load i64, ptr %i.e, align 8
  %i.bi = load ptr, ptr %i.be, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SI_RKSH_RKT1_RKT2_EUlSB_E_SG_EESH_SI_SI_SI_SI_SK_SN_SQ_EUlmE_EEvSI_SK_EUlSD_E_EEvSI_SI_SI_SK_PNS0_16TaskGroupContextE(i64 noundef %i.bc, i64 noundef %i.bg, i64 noundef %i.bh, ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef %i.bi)
  tail call void @_ZN6embree13TaskScheduler4waitEv()
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SG_RKSF_RKT1_RKT2_EUlS9_E_SE_EESF_SG_SG_SG_SG_SI_SL_SO_EUlmE_EEvSG_SI_ENKUlSB_E_clESB_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SC_SC_RKT0_PNS0_16TaskGroupContextE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.630, align 8            ; 9 uses
  %i.a = sub i64 %1, %0                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
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
  br i1 %.not.i, label %bb.l, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 262272 ; 5 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8
  %i.k = icmp ugt i64 %i.j, 4095
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #28
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.u, %bb.i ], [ %i.l, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.m, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
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
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #28
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
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SD_SD_RKT0_PNS0_16TaskGroupContextEEUlvE_EE, i64 16), ptr %i.y, align 8
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
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !71
  %i.an = cmpxchg ptr %i.ab, i32 0, i32 1 seq_cst seq_cst, align 4 ; 0 uses
  %i.ao = atomicrmw add ptr %i.i, i64 1 seq_cst, align 8 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 262208 ; 2 uses
  %i.aq = load atomic i64, ptr %i.ap seq_cst, align 64
  %i.ar = load atomic i64, ptr %i.i seq_cst, align 64
  %i.as = add i64 %i.ar, -1
  %.not.i7 = icmp ult i64 %i.aq, %i.as
  br i1 %.not.i7, label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SD_SD_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKSD_SI_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i
  %i.at = load atomic i64, ptr %i.i seq_cst, align 64
  %i.au = add i64 %i.at, -1
  store atomic i64 %i.au, ptr %i.ap seq_cst, align 64
  br label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SD_SD_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKSD_SI_.exit

bb.l:                                             ; preds = %bb.a
  %i.av = tail call noundef ptr @_ZN6embree13TaskScheduler8instanceEv()
  call void @_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SD_SD_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvRKSD_SI_mb(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %4, i64 noundef %i.a, i1 noundef zeroext true)
  br label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SD_SD_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKSD_SI_.exit

_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SD_SD_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKSD_SI_.exit: ; preds = %bb.k, %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_12UserGeometryENS_6ObjectEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SD_SD_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvRKSD_SI_mb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %7 = alloca %"class.std::unique_ptr.145", align 8 ; 6 uses
  %8 = alloca %"class.embree::Lock", align 8      ; 7 uses
  %9 = alloca %"class.embree::Ref", align 8       ; 7 uses
  %10 = alloca %"class.embree::Ref", align 8      ; 7 uses
  %11 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6embree13TaskScheduler12startThreadsEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = tail call noundef i64 @_ZN6embree13TaskScheduler16allocThreadIndexEv(ptr noundef nonnull align 8 dereferenceable(80) %0) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.b = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 786752, i64 noundef 64) ; 13 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41 unwind label %bb.w, !inline_history !72 ; 0 uses

_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41: ; preds = %bb.c
  store i64 %i.a, ptr %i.b, align 64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 10 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41
  %.idx.i.i = phi i64 [ 0, %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41 ], [ %.add.i.i.7, %bb.d ] ; 9 uses
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
  store i32 0, ptr %.ptr.i.i, align 4
end_hunk_4
begin_hunk_5_@_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SJ_RKSI_RKT1_RKT2_EUlSC_E_SH_EESI_SJ_SJ_SJ_SJ_SL_SO_SR_EUlmE_EEvSJ_SL_EUlSE_E_EEvSJ_SJ_SJ_SL_PNS0_16TaskGroupContextEEUlvE_EEvRKSJ_SW_mb:bb.a
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %.loopexit.split-lp ; 0 uses

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr null, ptr %11, align 8
  %i.ec = load ptr, ptr %2, align 8               ; 2 uses
  %.not80 = icmp eq ptr %i.ec, null
  br i1 %.not80, label %bb.at, label %_ZNSt15__exception_ptr13exception_ptraSERKS0_.exit

_ZNSt15__exception_ptr13exception_ptraSERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %i.ec, ptr %6, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  %.pre.i = load ptr, ptr %6, align 8
  store ptr %.pre.i, ptr %11, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
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
          to label %bb.au unwind label %bb.aw, !llvm.loop !4670

bb.aw:                                            ; preds = %bb.av
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.eh = load ptr, ptr %2, align 8               ; 2 uses
  store ptr %i.eh, ptr %5, align 8
  store ptr null, ptr %2, align 8
  %.not.i.i59 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i59, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.ax
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63: ; preds = %bb.ax, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ei = load ptr, ptr %11, align 8              ; 2 uses
  %.not81 = icmp eq ptr %i.ei, null
  br i1 %.not81, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  store ptr %i.ei, ptr %12, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %12) #28
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
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
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
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66: ; preds = %bb.ba, %bb.az, %bb.aw
  %.pn36 = phi { ptr, i32 } [ %i.eg, %bb.aw ], [ %i.ej, %bb.az ], [ %i.ej, %bb.ba ]
  %i.ev = load ptr, ptr %11, align 8
  %.not.i70 = icmp eq ptr %i.ev, null
  br i1 %.not.i70, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j, %bb.m, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45, %bb.ac
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71 ], [ %.pn30, %bb.ac ], [ %.pn34, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit ], [ %.pn32, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45 ], [ %i.at, %bb.m ], [ %i.al, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #21
  br label %_ZN6embree13TaskScheduler6ThreaddlEPv.exit

_ZN6embree13TaskScheduler6ThreaddlEPv.exit:       ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47, %.body
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %.body ], [ %.pn, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  resume { ptr, i32 } %.pn36.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SJ_RKSI_RKT1_RKT2_EUlSC_E_SH_EESI_SJ_SJ_SJ_SJ_SL_SO_SR_EUlmE_EEvSJ_SL_EUlSE_E_EEvSJ_SJ_SJ_SL_PNS0_16TaskGroupContextEEUlvE_E7executeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SI_RKSH_RKT1_RKT2_EUlSB_E_SG_EESH_SI_SI_SI_SI_SK_SN_SQ_EUlmE_EEvSI_SK_EUlSD_E_EEvSI_SI_SI_SK_PNS0_16TaskGroupContextEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SI_RKSH_RKT1_RKT2_EUlSB_E_SG_EESH_SI_SI_SI_SI_SK_SN_SQ_EUlmE_EEvSI_SK_EUlSD_E_EEvSI_SI_SI_SK_PNS0_16TaskGroupContextEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 6 uses
  %i.d = sub i64 %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %.not = icmp ugt i64 %i.d, %i.f
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !align !74 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !align !74
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !align !74
  %i.m = load i64, ptr %i.l, align 8
  %i.n = sub i64 %i.m, %i.j                       ; 2 uses
  %i.o = mul i64 %i.n, %i.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !align !74
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = udiv i64 %i.o, %i.r
  %i.t = add i64 %i.s, %i.j                       ; 2 uses
  %i.u = add i64 %i.c, 1
  %i.v = mul i64 %i.n, %i.u
  %i.w = udiv i64 %i.v, %i.r
  %i.x = add i64 %i.w, %i.j                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !align !74 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4, !align !74
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp ult i64 %i.t, %i.x
  br i1 %i.ac, label %.lr.ph.i.lr.ph.i.i.i, label %_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SG_RKSF_RKT1_RKT2_EUlS9_E_SE_EESF_SG_SG_SG_SG_SI_SL_SO_EUlmE_EEvSG_SI_ENKUlSB_E_clESB_.exit

.lr.ph.i.lr.ph.i.i.i:                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !4, !align !74
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 488
  %i.aj = load ptr, ptr %i.ai, align 8
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6embree5Scene7getSafeINS_8InstanceEEEPT_m.exit.thread.i.i.i.i, %.lr.ph.i.lr.ph.i.i.i
  %storemerge7.i.i.i = phi i64 [ %i.t, %.lr.ph.i.lr.ph.i.i.i ], [ %1, %_ZN6embree5Scene7getSafeINS_8InstanceEEEPT_m.exit.thread.i.i.i.i ] ; 2 uses
  %.06.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.lr.ph.i.i.i ], [ %i.av, %_ZN6embree5Scene7getSafeINS_8InstanceEEEPT_m.exit.thread.i.i.i.i ]
  %1 = add nuw i64 %storemerge7.i.i.i, 1          ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %storemerge7.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8            ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN6embree5Scene7getSafeINS_8InstanceEEEPT_m.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 60
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = and i32 %i.ao, 254
  %.not.i.i.i.i.i = icmp samesign ult i32 %i.ap, 30
  br i1 %.not.i.i.i.i.i, label %_ZN6embree5Scene7getSafeINS_8InstanceEEEPT_m.exit.thread.i.i.i.i, label %_ZN6embree5Scene7getSafeINS_8InstanceEEEPT_m.exit.i.i.i.i

_ZN6embree5Scene7getSafeINS_8InstanceEEEPT_m.exit.i.i.i.i: ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  %i.ar = load i32, ptr %i.aq, align 4
  %.not.i.i.i.i = icmp eq i32 %i.ar, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN6embree5Scene7getSafeINS_8InstanceEEEPT_m.exit.thread.i.i.i.i

bb.d:                                             ; preds = %_ZN6embree5Scene7getSafeINS_8InstanceEEEPT_m.exit.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.at = load i32, ptr %i.as, align 16           ; 2 uses
  %i.au = icmp ult i32 %i.at, 5
  %narrow.i.i.i.i = select i1 %i.au, i32 %i.at, i32 1
  %spec.select.i.i.i.i = zext i32 %narrow.i.i.i.i to i64
  br label %_ZN6embree5Scene7getSafeINS_8InstanceEEEPT_m.exit.thread.i.i.i.i

_ZN6embree5Scene7getSafeINS_8InstanceEEEPT_m.exit.thread.i.i.i.i: ; preds = %bb.d, %_ZN6embree5Scene7getSafeINS_8InstanceEEEPT_m.exit.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.d ], [ 0, %_ZN6embree5Scene7getSafeINS_8InstanceEEEPT_m.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ], [ 0, %bb.c ]
  %i.av = add i64 %.1.i.i.i.i, %.06.i.i.i         ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %1, %i.x
  br i1 %exitcond.not.i.i.i, label %_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SG_RKSF_RKT1_RKT2_EUlS9_E_SE_EESF_SG_SG_SG_SG_SI_SL_SO_EUlmE_EEvSG_SI_ENKUlSB_E_clESB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4671

_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SG_RKSF_RKT1_RKT2_EUlS9_E_SE_EESF_SG_SG_SG_SG_SI_SL_SO_EUlmE_EEvSG_SI_ENKUlSB_E_clESB_.exit: ; preds = %_ZN6embree5Scene7getSafeINS_8InstanceEEEPT_m.exit.thread.i.i.i.i, %bb.b
  %.0.lcssa.i.i.i = phi i64 [ %i.ab, %bb.b ], [ %i.av, %_ZN6embree5Scene7getSafeINS_8InstanceEEEPT_m.exit.thread.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !4, !align !87
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8192
  %i.az = load ptr, ptr %i.ay, align 64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.c
  store i64 %.0.lcssa.i.i.i, ptr %i.ba, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.bb = add i64 %i.c, %i.a
  %i.bc = lshr i64 %i.bb, 1                       ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SI_RKSH_RKT1_RKT2_EUlSB_E_SG_EESH_SI_SI_SI_SI_SK_SN_SQ_EUlmE_EEvSI_SK_EUlSD_E_EEvSI_SI_SI_SK_PNS0_16TaskGroupContextE(i64 noundef %i.c, i64 noundef %i.bc, i64 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef %i.bf)
  %i.bg = load i64, ptr %0, align 8
  %i.bh = load i64, ptr %i.e, align 8
  %i.bi = load ptr, ptr %i.be, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SI_RKSH_RKT1_RKT2_EUlSB_E_SG_EESH_SI_SI_SI_SI_SK_SN_SQ_EUlmE_EEvSI_SK_EUlSD_E_EEvSI_SI_SI_SK_PNS0_16TaskGroupContextE(i64 noundef %i.bc, i64 noundef %i.bg, i64 noundef %i.bh, ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef %i.bi)
  tail call void @_ZN6embree13TaskScheduler4waitEv()
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SG_RKSF_RKT1_RKT2_EUlS9_E_SE_EESF_SG_SG_SG_SG_SI_SL_SO_EUlmE_EEvSG_SI_ENKUlSB_E_clESB_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SC_SC_RKT0_PNS0_16TaskGroupContextE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.738, align 8            ; 9 uses
  %i.a = sub i64 %1, %0                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
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
  br i1 %.not.i, label %bb.l, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 262272 ; 5 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8
  %i.k = icmp ugt i64 %i.j, 4095
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #28
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.u, %bb.i ], [ %i.l, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.m, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
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
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #28
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
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SD_SD_RKT0_PNS0_16TaskGroupContextEEUlvE_EE, i64 16), ptr %i.y, align 8
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
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !71
  %i.an = cmpxchg ptr %i.ab, i32 0, i32 1 seq_cst seq_cst, align 4 ; 0 uses
  %i.ao = atomicrmw add ptr %i.i, i64 1 seq_cst, align 8 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 262208 ; 2 uses
  %i.aq = load atomic i64, ptr %i.ap seq_cst, align 64
  %i.ar = load atomic i64, ptr %i.i seq_cst, align 64
  %i.as = add i64 %i.ar, -1
  %.not.i7 = icmp ult i64 %i.aq, %i.as
  br i1 %.not.i7, label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SD_SD_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKSD_SI_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i
  %i.at = load atomic i64, ptr %i.i seq_cst, align 64
  %i.au = add i64 %i.at, -1
  store atomic i64 %i.au, ptr %i.ap seq_cst, align 64
  br label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SD_SD_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKSD_SI_.exit

bb.l:                                             ; preds = %bb.a
  %i.av = tail call noundef ptr @_ZN6embree13TaskScheduler8instanceEv()
  call void @_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SD_SD_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvRKSD_SI_mb(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %4, i64 noundef %i.a, i1 noundef zeroext true)
  br label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SD_SD_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKSD_SI_.exit

_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SD_SD_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKSD_SI_.exit: ; preds = %bb.k, %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_8InstanceENS_17InstancePrimitiveEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SD_SD_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvRKSD_SI_mb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %7 = alloca %"class.std::unique_ptr.145", align 8 ; 6 uses
  %8 = alloca %"class.embree::Lock", align 8      ; 7 uses
  %9 = alloca %"class.embree::Ref", align 8       ; 7 uses
  %10 = alloca %"class.embree::Ref", align 8      ; 7 uses
  %11 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6embree13TaskScheduler12startThreadsEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = tail call noundef i64 @_ZN6embree13TaskScheduler16allocThreadIndexEv(ptr noundef nonnull align 8 dereferenceable(80) %0) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.b = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 786752, i64 noundef 64) ; 13 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41 unwind label %bb.w, !inline_history !72 ; 0 uses

_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41: ; preds = %bb.c
  store i64 %i.a, ptr %i.b, align 64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 10 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41
  %.idx.i.i = phi i64 [ 0, %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41 ], [ %.add.i.i.7, %bb.d ] ; 9 uses
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
  store i32 0, ptr %.ptr.i.i, align 4
end_hunk_5
begin_hunk_6_@_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SJ_RKSI_RKT1_RKT2_EUlSC_E_SH_EESI_SJ_SJ_SJ_SJ_SL_SO_SR_EUlmE_EEvSJ_SL_EUlSE_E_EEvSJ_SJ_SJ_SL_PNS0_16TaskGroupContextEEUlvE_EEvRKSJ_SW_mb:bb.a
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %.loopexit.split-lp ; 0 uses

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr null, ptr %11, align 8
  %i.ec = load ptr, ptr %2, align 8               ; 2 uses
  %.not80 = icmp eq ptr %i.ec, null
  br i1 %.not80, label %bb.at, label %_ZNSt15__exception_ptr13exception_ptraSERKS0_.exit

_ZNSt15__exception_ptr13exception_ptraSERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %i.ec, ptr %6, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  %.pre.i = load ptr, ptr %6, align 8
  store ptr %.pre.i, ptr %11, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
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
          to label %bb.au unwind label %bb.aw, !llvm.loop !5570

bb.aw:                                            ; preds = %bb.av
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.eh = load ptr, ptr %2, align 8               ; 2 uses
  store ptr %i.eh, ptr %5, align 8
  store ptr null, ptr %2, align 8
  %.not.i.i59 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i59, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.ax
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63: ; preds = %bb.ax, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ei = load ptr, ptr %11, align 8              ; 2 uses
  %.not81 = icmp eq ptr %i.ei, null
  br i1 %.not81, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  store ptr %i.ei, ptr %12, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %12) #28
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
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
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
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66: ; preds = %bb.ba, %bb.az, %bb.aw
  %.pn36 = phi { ptr, i32 } [ %i.eg, %bb.aw ], [ %i.ej, %bb.az ], [ %i.ej, %bb.ba ]
  %i.ev = load ptr, ptr %11, align 8
  %.not.i70 = icmp eq ptr %i.ev, null
  br i1 %.not.i70, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j, %bb.m, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45, %bb.ac
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71 ], [ %.pn30, %bb.ac ], [ %.pn34, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit ], [ %.pn32, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45 ], [ %i.at, %bb.m ], [ %i.al, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #21
  br label %_ZN6embree13TaskScheduler6ThreaddlEPv.exit

_ZN6embree13TaskScheduler6ThreaddlEPv.exit:       ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47, %.body
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %.body ], [ %.pn, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  resume { ptr, i32 } %.pn36.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SJ_RKSI_RKT1_RKT2_EUlSC_E_SH_EESI_SJ_SJ_SJ_SJ_SL_SO_SR_EUlmE_EEvSJ_SL_EUlSE_E_EEvSJ_SJ_SJ_SL_PNS0_16TaskGroupContextEEUlvE_E7executeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SI_RKSH_RKT1_RKT2_EUlSB_E_SG_EESH_SI_SI_SI_SI_SK_SN_SQ_EUlmE_EEvSI_SK_EUlSD_E_EEvSI_SI_SI_SK_PNS0_16TaskGroupContextEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SI_RKSH_RKT1_RKT2_EUlSB_E_SG_EESH_SI_SI_SI_SI_SK_SN_SQ_EUlmE_EEvSI_SK_EUlSD_E_EEvSI_SI_SI_SK_PNS0_16TaskGroupContextEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 6 uses
  %i.d = sub i64 %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %.not = icmp ugt i64 %i.d, %i.f
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !align !74 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !align !74
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !align !74
  %i.m = load i64, ptr %i.l, align 8
  %i.n = sub i64 %i.m, %i.j                       ; 2 uses
  %i.o = mul i64 %i.n, %i.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !align !74
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = udiv i64 %i.o, %i.r
  %i.t = add i64 %i.s, %i.j                       ; 2 uses
  %i.u = add i64 %i.c, 1
  %i.v = mul i64 %i.n, %i.u
  %i.w = udiv i64 %i.v, %i.r
  %i.x = add i64 %i.w, %i.j                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !align !74 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4, !align !74
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp ult i64 %i.t, %i.x
  br i1 %i.ac, label %.lr.ph.i.lr.ph.i.i.i, label %_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SG_RKSF_RKT1_RKT2_EUlS9_E_SE_EESF_SG_SG_SG_SG_SI_SL_SO_EUlmE_EEvSG_SI_ENKUlSB_E_clESB_.exit

.lr.ph.i.lr.ph.i.i.i:                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !4, !align !74
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 488
  %i.aj = load ptr, ptr %i.ai, align 8
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6embree5Scene7getSafeINS_13InstanceArrayEEEPT_m.exit.thread.i.i.i.i, %.lr.ph.i.lr.ph.i.i.i
  %storemerge7.i.i.i = phi i64 [ %i.t, %.lr.ph.i.lr.ph.i.i.i ], [ %1, %_ZN6embree5Scene7getSafeINS_13InstanceArrayEEEPT_m.exit.thread.i.i.i.i ] ; 2 uses
  %.06.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.lr.ph.i.i.i ], [ %i.av, %_ZN6embree5Scene7getSafeINS_13InstanceArrayEEEPT_m.exit.thread.i.i.i.i ]
  %1 = add nuw i64 %storemerge7.i.i.i, 1          ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %storemerge7.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8            ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN6embree5Scene7getSafeINS_13InstanceArrayEEEPT_m.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 60
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = and i32 %i.ao, 255
  %.not15.i.i.i.i = icmp eq i32 %i.ap, 24
  br i1 %.not15.i.i.i.i, label %_ZN6embree5Scene7getSafeINS_13InstanceArrayEEEPT_m.exit.i.i.i.i, label %_ZN6embree5Scene7getSafeINS_13InstanceArrayEEEPT_m.exit.thread.i.i.i.i

_ZN6embree5Scene7getSafeINS_13InstanceArrayEEEPT_m.exit.i.i.i.i: ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  %i.ar = load i32, ptr %i.aq, align 4
  %.not.i.i.i.i = icmp eq i32 %i.ar, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN6embree5Scene7getSafeINS_13InstanceArrayEEEPT_m.exit.thread.i.i.i.i

bb.d:                                             ; preds = %_ZN6embree5Scene7getSafeINS_13InstanceArrayEEEPT_m.exit.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.at = load i32, ptr %i.as, align 16           ; 2 uses
  %i.au = icmp ult i32 %i.at, 5
  %narrow.i.i.i.i = select i1 %i.au, i32 %i.at, i32 1
  %spec.select.i.i.i.i = zext i32 %narrow.i.i.i.i to i64
  br label %_ZN6embree5Scene7getSafeINS_13InstanceArrayEEEPT_m.exit.thread.i.i.i.i

_ZN6embree5Scene7getSafeINS_13InstanceArrayEEEPT_m.exit.thread.i.i.i.i: ; preds = %bb.d, %_ZN6embree5Scene7getSafeINS_13InstanceArrayEEEPT_m.exit.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.d ], [ 0, %_ZN6embree5Scene7getSafeINS_13InstanceArrayEEEPT_m.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ], [ 0, %bb.c ]
  %i.av = add i64 %.1.i.i.i.i, %.06.i.i.i         ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %1, %i.x
  br i1 %exitcond.not.i.i.i, label %_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SG_RKSF_RKT1_RKT2_EUlS9_E_SE_EESF_SG_SG_SG_SG_SI_SL_SO_EUlmE_EEvSG_SI_ENKUlSB_E_clESB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !5571

_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SG_RKSF_RKT1_RKT2_EUlS9_E_SE_EESF_SG_SG_SG_SG_SI_SL_SO_EUlmE_EEvSG_SI_ENKUlSB_E_clESB_.exit: ; preds = %_ZN6embree5Scene7getSafeINS_13InstanceArrayEEEPT_m.exit.thread.i.i.i.i, %bb.b
  %.0.lcssa.i.i.i = phi i64 [ %i.ab, %bb.b ], [ %i.av, %_ZN6embree5Scene7getSafeINS_13InstanceArrayEEEPT_m.exit.thread.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !4, !align !87
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8192
  %i.az = load ptr, ptr %i.ay, align 64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.c
  store i64 %.0.lcssa.i.i.i, ptr %i.ba, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.bb = add i64 %i.c, %i.a
  %i.bc = lshr i64 %i.bb, 1                       ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SI_RKSH_RKT1_RKT2_EUlSB_E_SG_EESH_SI_SI_SI_SI_SK_SN_SQ_EUlmE_EEvSI_SK_EUlSD_E_EEvSI_SI_SI_SK_PNS0_16TaskGroupContextE(i64 noundef %i.c, i64 noundef %i.bc, i64 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef %i.bf)
  %i.bg = load i64, ptr %0, align 8
  %i.bh = load i64, ptr %i.e, align 8
  %i.bi = load ptr, ptr %i.be, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SI_RKSH_RKT1_RKT2_EUlSB_E_SG_EESH_SI_SI_SI_SI_SK_SN_SQ_EUlmE_EEvSI_SK_EUlSD_E_EEvSI_SI_SI_SK_PNS0_16TaskGroupContextE(i64 noundef %i.bc, i64 noundef %i.bg, i64 noundef %i.bh, ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef %i.bi)
  tail call void @_ZN6embree13TaskScheduler4waitEv()
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImmZNS_15parallel_reduceImmZNS_4sse219BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE14resizeRefsListEvEUlRKNS_5rangeImEEE_St4plusImEEET0_T_SG_RKSF_RKT1_RKT2_EUlS9_E_SE_EESF_SG_SG_SG_SG_SI_SL_SO_EUlmE_EEvSG_SI_ENKUlSB_E_clESB_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SC_SC_RKT0_PNS0_16TaskGroupContextE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.847, align 8            ; 9 uses
  %i.a = sub i64 %1, %0                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
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
  br i1 %.not.i, label %bb.l, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 262272 ; 5 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8
  %i.k = icmp ugt i64 %i.j, 4095
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #28
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.u, %bb.i ], [ %i.l, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.m, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
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
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #28
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
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SD_SD_RKT0_PNS0_16TaskGroupContextEEUlvE_EE, i64 16), ptr %i.y, align 8
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
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !71
  %i.an = cmpxchg ptr %i.ab, i32 0, i32 1 seq_cst seq_cst, align 4 ; 0 uses
  %i.ao = atomicrmw add ptr %i.i, i64 1 seq_cst, align 8 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 262208 ; 2 uses
  %i.aq = load atomic i64, ptr %i.ap seq_cst, align 64
  %i.ar = load atomic i64, ptr %i.i seq_cst, align 64
  %i.as = add i64 %i.ar, -1
  %.not.i7 = icmp ult i64 %i.aq, %i.as
  br i1 %.not.i7, label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SD_SD_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKSD_SI_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i
  %i.at = load atomic i64, ptr %i.i seq_cst, align 64
  %i.au = add i64 %i.at, -1
  store atomic i64 %i.au, ptr %i.ap seq_cst, align 64
  br label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SD_SD_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKSD_SI_.exit

bb.l:                                             ; preds = %bb.a
  %i.av = tail call noundef ptr @_ZN6embree13TaskScheduler8instanceEv()
  call void @_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SD_SD_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvRKSD_SI_mb(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %4, i64 noundef %i.a, i1 noundef zeroext true)
  br label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SD_SD_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKSD_SI_.exit

_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SD_SD_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKSD_SI_.exit: ; preds = %bb.k, %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_4sse219BVHNBuilderTwoLevelILi4ENS_13InstanceArrayENS_22InstanceArrayPrimitiveEE5buildEvEUlRKNS_5rangeImEEE0_EEvT_SD_SD_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvRKSD_SI_mb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %7 = alloca %"class.std::unique_ptr.145", align 8 ; 6 uses
  %8 = alloca %"class.embree::Lock", align 8      ; 7 uses
  %9 = alloca %"class.embree::Ref", align 8       ; 7 uses
  %10 = alloca %"class.embree::Ref", align 8      ; 7 uses
  %11 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6embree13TaskScheduler12startThreadsEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = tail call noundef i64 @_ZN6embree13TaskScheduler16allocThreadIndexEv(ptr noundef nonnull align 8 dereferenceable(80) %0) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.b = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 786752, i64 noundef 64) ; 13 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41 unwind label %bb.w, !inline_history !72 ; 0 uses

_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41: ; preds = %bb.c
  store i64 %i.a, ptr %i.b, align 64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 10 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41
  %.idx.i.i = phi i64 [ 0, %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41 ], [ %.add.i.i.7, %bb.d ] ; 9 uses
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
  store i32 0, ptr %.ptr.i.i, align 4
end_hunk_6
