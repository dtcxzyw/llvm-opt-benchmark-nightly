Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_statistics?download=true
inline.NumInlined: 1234
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnIiZNS_12parallel_forIiZNS_24parallel_reduce_internalIiNS_14BVHNStatisticsILi4EE10StatisticsEZNS_15parallel_reduceIiS7_ZNS6_10statisticsENS_10NodeRefPtrILi4EEEdNS_4BBoxIfEEEUliE_FS7_RKS7_SF_EEET0_T_SI_RKSH_RKT1_RKT2_EUlNS_5rangeIiEEE_SG_EESH_SI_SI_SI_SI_SK_SN_SQ_EUliE_EEvSI_SK_EUlRKSS_E_EEvSI_SI_SI_SK_PNS0_16TaskGroupContextEEUlvE_EEvRKSI_SZ_mb:bb.a
bb.an:                                            ; preds = %bb.am
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  call void @__clang_call_terminate(ptr %i.dq) #22
  unreachable

_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit56:   ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.as

bb.ao:                                            ; preds = %bb.ak
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit

bb.ap:                                            ; preds = %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = load ptr, ptr %10, align 8              ; 3 uses
  %.not.i54 = icmp eq ptr %i.dt, null
  br i1 %.not.i54, label %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  invoke void %i.dw(ptr noundef nonnull align 8 dereferenceable(16) %i.dt)
          to label %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #22
  unreachable

_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit:     ; preds = %bb.aq, %bb.ap, %bb.ao
  %.pn34 = phi { ptr, i32 } [ %i.dr, %bb.ao ], [ %i.ds, %bb.ap ], [ %i.ds, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %.body

bb.as:                                            ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit56, %bb.aj
  %i.dz = load ptr, ptr %i.ad, align 8
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.a
  store atomic ptr null, ptr %i.ea seq_cst, align 8
  %i.eb = invoke noundef ptr @_ZN6embree13TaskScheduler10swapThreadEPNS0_6ThreadE(ptr noundef %i.ag)
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %.loopexit.split-lp ; 0 uses

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store ptr null, ptr %11, align 8
  %i.ec = load ptr, ptr %2, align 8               ; 2 uses
  %.not90 = icmp eq ptr %i.ec, null
  br i1 %.not90, label %bb.at, label %_ZNSt15__exception_ptr13exception_ptraSERKS0_.exit

_ZNSt15__exception_ptr13exception_ptraSERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr %i.ec, ptr %6, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #19
  %.pre.i = load ptr, ptr %6, align 8
  store ptr %.pre.i, ptr %11, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
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
          to label %bb.au unwind label %bb.aw, !llvm.loop !129

bb.aw:                                            ; preds = %bb.av
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit76

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.eh = load ptr, ptr %2, align 8               ; 2 uses
  store ptr %i.eh, ptr %5, align 8
  store ptr null, ptr %2, align 8
  %.not.i.i69 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i69, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.ax
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73: ; preds = %bb.ax, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.ei = load ptr, ptr %11, align 8              ; 2 uses
  %.not91 = icmp eq ptr %i.ei, null
  br i1 %.not91, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit78, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73
  store ptr %i.ei, ptr %12, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #19
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %12) #21
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.az:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = load ptr, ptr %12, align 8
  %.not.i75 = icmp eq ptr %i.ek, null
  br i1 %.not.i75, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit76, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #19
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit76

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit78: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.el = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i79 = icmp eq ptr %i.el, null
  br i1 %.not.i79, label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit78
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
  call void @__clang_call_terminate(ptr %i.es) #22
  unreachable

_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i:    ; preds = %bb.bc, %bb.bb
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.el)
          to label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit unwind label %bb.be

bb.be:                                            ; preds = %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #22
  unreachable

_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit78, %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  ret void

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit76: ; preds = %bb.ba, %bb.az, %bb.aw
  %.pn36 = phi { ptr, i32 } [ %i.eg, %bb.aw ], [ %i.ej, %bb.az ], [ %i.ej, %bb.ba ]
  %i.ev = load ptr, ptr %11, align 8
  %.not.i80 = icmp eq ptr %i.ev, null
  br i1 %.not.i80, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit81, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit76
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #19
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit81

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit81: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit76, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j, %bb.m, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit81, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit58, %bb.ac
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit81 ], [ %.pn30, %bb.ac ], [ %.pn34, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit ], [ %.pn32, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit58 ], [ %i.al, %bb.j ], [ %i.at, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #19
  br label %_ZN6embree13TaskScheduler6ThreaddlEPv.exit

_ZN6embree13TaskScheduler6ThreaddlEPv.exit:       ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit60, %.body
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %.body ], [ %.pn, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit60 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  resume { ptr, i32 } %.pn36.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnIiZNS_12parallel_forIiZNS_24parallel_reduce_internalIiNS_14BVHNStatisticsILi4EE10StatisticsEZNS_15parallel_reduceIiS7_ZNS6_10statisticsENS_10NodeRefPtrILi4EEEdNS_4BBoxIfEEEUliE_FS7_RKS7_SF_EEET0_T_SI_RKSH_RKT1_RKT2_EUlNS_5rangeIiEEE_SG_EESH_SI_SI_SI_SI_SK_SN_SQ_EUliE_EEvSI_SK_EUlRKSS_E_EEvSI_SI_SI_SK_PNS0_16TaskGroupContextEEUlvE_E7executeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZZN6embree13TaskScheduler5spawnIiZNS_12parallel_forIiZNS_24parallel_reduce_internalIiNS_14BVHNStatisticsILi4EE10StatisticsEZNS_15parallel_reduceIiS6_ZNS5_10statisticsENS_10NodeRefPtrILi4EEEdNS_4BBoxIfEEEUliE_FS6_RKS6_SE_EEET0_T_SH_RKSG_RKT1_RKT2_EUlNS_5rangeIiEEE_SF_EESG_SH_SH_SH_SH_SJ_SM_SP_EUliE_EEvSH_SJ_EUlRKSR_E_EEvSH_SH_SH_SJ_PNS0_16TaskGroupContextEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree13TaskScheduler5spawnIiZNS_12parallel_forIiZNS_24parallel_reduce_internalIiNS_14BVHNStatisticsILi4EE10StatisticsEZNS_15parallel_reduceIiS6_ZNS5_10statisticsENS_10NodeRefPtrILi4EEEdNS_4BBoxIfEEEUliE_FS6_RKS6_SE_EEET0_T_SH_RKSG_RKT1_RKT2_EUlNS_5rangeIiEEE_SF_EESG_SH_SH_SH_SH_SJ_SM_SP_EUliE_EEvSH_SJ_EUlRKSR_E_EEvSH_SH_SH_SJ_PNS0_16TaskGroupContextEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %1 = alloca %"struct.embree::BVHNStatistics<4>::Statistics", align 8 ; 4 uses
  %2 = alloca %"struct.embree::range", align 8    ; 4 uses
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4              ; 6 uses
  %i.d = sub nsw i32 %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %.not = icmp sgt i32 %i.d, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6, !align !7 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !6, !align !8
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !align !8
  %i.m = load i32, ptr %i.l, align 4
  %i.n = sub nsw i32 %i.m, %i.j                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !6, !align !8
  %i.q = load i32, ptr %i.p, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %3 = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %4 = load ptr, ptr %3, align 8, !nonnull !6, !align !7
  %i.r = add nsw i32 %i.c, 1
  %5 = mul nsw i32 %i.n, %i.r
  %i.s = mul nsw i32 %i.n, %i.c
  %6 = insertelement <2 x i32> poison, i32 %i.s, i64 0
  %7 = insertelement <2 x i32> %6, i32 %5, i64 1
  %8 = insertelement <2 x i32> poison, i32 %i.q, i64 0
  %9 = shufflevector <2 x i32> %8, <2 x i32> poison, <2 x i32> zeroinitializer
  %10 = sdiv <2 x i32> %7, %9
  %11 = insertelement <2 x i32> poison, i32 %i.j, i64 0
  %12 = shufflevector <2 x i32> %11, <2 x i32> poison, <2 x i32> zeroinitializer
  %13 = add nsw <2 x i32> %10, %12
  store <2 x i32> %13, ptr %2, align 8
  call void @_ZZN6embree15parallel_reduceIiNS_14BVHNStatisticsILi4EE10StatisticsEZNS2_10statisticsENS_10NodeRefPtrILi4EEEdNS_4BBoxIfEEEUliE_FS3_RKS3_SA_EEET0_T_SD_RKSC_RKT1_RKT2_ENKUlNS_5rangeIiEEE_clESN_(ptr dead_on_unwind nonnull writable sret(%"struct.embree::BVHNStatistics<4>::Statistics") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dead_on_return %2), !inline_history !130
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !6, !align !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8184
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = sext i32 %i.c to i64
  %i.y = getelementptr inbounds [264 x i8], ptr %i.w, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.y, ptr noundef nonnull align 8 dereferenceable(264) %1, i64 264, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.z = add nsw i32 %i.c, %i.a
  %i.aa = sdiv i32 %i.z, 2                        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnIiZNS_12parallel_forIiZNS_24parallel_reduce_internalIiNS_14BVHNStatisticsILi4EE10StatisticsEZNS_15parallel_reduceIiS6_ZNS5_10statisticsENS_10NodeRefPtrILi4EEEdNS_4BBoxIfEEEUliE_FS6_RKS6_SE_EEET0_T_SH_RKSG_RKT1_RKT2_EUlNS_5rangeIiEEE_SF_EESG_SH_SH_SH_SH_SJ_SM_SP_EUliE_EEvSH_SJ_EUlRKSR_E_EEvSH_SH_SH_SJ_PNS0_16TaskGroupContextE(i32 noundef %i.c, i32 noundef %i.aa, i32 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef %i.ad)
  %i.ae = load i32, ptr %0, align 8
  %i.af = load i32, ptr %i.e, align 8
  %i.ag = load ptr, ptr %i.ac, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnIiZNS_12parallel_forIiZNS_24parallel_reduce_internalIiNS_14BVHNStatisticsILi4EE10StatisticsEZNS_15parallel_reduceIiS6_ZNS5_10statisticsENS_10NodeRefPtrILi4EEEdNS_4BBoxIfEEEUliE_FS6_RKS6_SE_EEET0_T_SH_RKSG_RKT1_RKT2_EUlNS_5rangeIiEEE_SF_EESG_SH_SH_SH_SH_SJ_SM_SP_EUliE_EEvSH_SJ_EUlRKSR_E_EEvSH_SH_SH_SJ_PNS0_16TaskGroupContextE(i32 noundef %i.aa, i32 noundef %i.ae, i32 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef %i.ag)
  tail call void @_ZN6embree13TaskScheduler4waitEv()
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @_ZN6embree13TaskScheduler12startThreadsEv() local_unnamed_addr #6

declare noundef i64 @_ZN6embree13TaskScheduler16allocThreadIndexEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

declare noundef ptr @_ZN6embree13TaskScheduler10swapThreadEPNS0_6ThreadE(ptr noundef) local_unnamed_addr #6

declare void @_ZN6embree12ConditionSys10notify_allEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !11, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !6, !align !7
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #22
  unreachable
}

declare void @_ZN6embree13TaskScheduler12addSchedulerERKNS_3RefIS0_EE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN6embree13TaskScheduler9TaskQueue13execute_localERNS0_6ThreadEPNS0_4TaskE(ptr noundef nonnull align 64 dereferenceable(786568), ptr noundef nonnull align 64 dereferenceable(786704), ptr noundef) local_unnamed_addr #6

declare void @_ZN6embree13TaskScheduler15removeSchedulerERKNS_3RefIS0_EE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare void @_ZN6embree5yieldEv() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNKSt14default_deleteIN6embree13TaskScheduler6ThreadEEclEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 786696
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #22
  unreachable

_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i:      ; preds = %bb.c, %bb.b
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.a)
          to label %_ZNKSt14default_deleteIN6embree13TaskScheduler6ThreadEEclEPS2_.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #22
  unreachable

_ZNKSt14default_deleteIN6embree13TaskScheduler6ThreadEEclEPS2_.exit: ; preds = %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i, %bb.a
  ret void
}

declare void @_ZN6embree11alignedFreeEPv(ptr noundef) local_unnamed_addr #6

declare void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6embree24parallel_reduce_internalIiNS_14BVHNStatisticsILi4EE10StatisticsEZNS_15parallel_reduceIiS3_ZNS2_10statisticsENS_10NodeRefPtrILi4EEEdNS_4BBoxIfEEEUliE0_FS3_RKS3_SB_EEET0_T_SE_RKSD_RKT1_RKT2_EUlNS_5rangeIiEEE_SC_EESD_SE_SE_SE_SE_SG_SJ_SM_(ptr dead_on_unwind noalias writable sret(%"struct.embree::BVHNStatistics<4>::Statistics") align 8 %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(264) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %7) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %9 = alloca %class.anon.47, align 8             ; 5 uses
  %10 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %11 = alloca %"struct.embree::BVHNStatistics<4>::Statistics::LeafStat", align 8 ; 4 uses
  %12 = alloca %"struct.embree::BVHNStatistics<4>::Statistics::NodeStat", align 8 ; 4 uses
  %13 = alloca %"struct.embree::BVHNStatistics<4>::Statistics::NodeStat.12", align 8 ; 4 uses
  %14 = alloca %"struct.embree::BVHNStatistics<4>::Statistics::NodeStat.13", align 8 ; 4 uses
  %15 = alloca %"struct.embree::BVHNStatistics<4>::Statistics::NodeStat.14", align 8 ; 4 uses
  %16 = alloca %"struct.embree::BVHNStatistics<4>::Statistics::NodeStat.15", align 8 ; 4 uses
  %17 = alloca %"struct.embree::BVHNStatistics<4>::Statistics::NodeStat.16", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %18 = alloca %"struct.embree::StackArray", align 64 ; 10 uses
  %19 = alloca %class.anon.46, align 8            ; 10 uses
  %20 = alloca %"struct.embree::BVHNStatistics<4>::Statistics", align 8 ; 5 uses
  store i32 %2, ptr %i.b, align 4
  store i32 %3, ptr %i.c, align 4
  %i.d = tail call noundef i64 @_ZN6embree13TaskScheduler11threadCountEv()
  %i.e = trunc i64 %i.d to i32
  %i.f = tail call noundef i32 @llvm.smin.i32(i32 %1, i32 %i.e)
  %i.g = tail call noundef i32 @llvm.smin.i32(i32 %i.f, i32 512) ; 2 uses
  store i32 %i.g, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.idx.i = phi i64 [ 0, %bb.a ], [ %.add.i, %bb.b ] ; 2 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %18, i64 %.idx.i
  call void @_ZN6embree14BVHNStatisticsILi4EE10Statistics8LeafStatC1Edmmmmm(ptr noundef nonnull align 8 dereferenceable(112) %11, double noundef 0.000000e+00, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  call void @_ZN6embree14BVHNStatisticsILi4EE10StatisticsC1EmNS2_8LeafStatENS2_8NodeStatINS_10AABBNode_tINS_10NodeRefPtrILi4EEELi4EEEEENS4_INS_9OBBNode_tIS7_Li4EEEEENS4_INS_12AABBNodeMB_tIS7_Li4EEEEENS4_INS_14AABBNodeMB4D_tIS7_Li4EEEEENS4_INS_11OBBNodeMB_tIS7_Li4EEEEENS4_INS_15QuantizedNode_tIS7_Li4EEEEE(ptr noundef nonnull align 8 dereferenceable(264) %.ptr.i, i64 noundef 0, ptr noundef nonnull byval(%"struct.embree::BVHNStatistics<4>::Statistics::LeafStat") align 8 %11, ptr noundef nonnull byval(%"struct.embree::BVHNStatistics<4>::Statistics::NodeStat") align 8 %12, ptr noundef nonnull byval(%"struct.embree::BVHNStatistics<4>::Statistics::NodeStat.12") align 8 %13, ptr noundef nonnull byval(%"struct.embree::BVHNStatistics<4>::Statistics::NodeStat.13") align 8 %14, ptr noundef nonnull byval(%"struct.embree::BVHNStatistics<4>::Statistics::NodeStat.14") align 8 %15, ptr noundef nonnull byval(%"struct.embree::BVHNStatistics<4>::Statistics::NodeStat.15") align 8 %16, ptr noundef nonnull byval(%"struct.embree::BVHNStatistics<4>::Statistics::NodeStat.16") align 8 %17)
  %.add.i = add nuw nsw i64 %.idx.i, 264          ; 2 uses
  %i.h = icmp eq i64 %.add.i, 8184
  br i1 %i.h, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  %i.i = sext i32 %i.g to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %18, i64 8192
  store i64 %i.i, ptr %i.j, align 64
  %i.k = mul nsw i64 %i.i, 264                    ; 2 uses
  %i.l = icmp ult i64 %i.k, 8193
  br i1 %i.l, label %_ZN6embree10StackArrayINS_14BVHNStatisticsILi4EE10StatisticsELm8192EEC2Em.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef %i.k, i64 noundef 64)
  br label %_ZN6embree10StackArrayINS_14BVHNStatisticsILi4EE10StatisticsELm8192EEC2Em.exit

_ZN6embree10StackArrayINS_14BVHNStatisticsILi4EE10StatisticsELm8192EEC2Em.exit: ; preds = %bb.c, %bb.d
  %storemerge.i = phi ptr [ %i.m, %bb.d ], [ %18, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %18, i64 8184 ; 4 uses
  store ptr %storemerge.i, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %i.o = load i32, ptr %i.a, align 4              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  store ptr %i.b, ptr %19, align 8
end_hunk_0
begin_hunk_1_@_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnIiZNS_12parallel_forIiZNS_24parallel_reduce_internalIiNS_14BVHNStatisticsILi4EE10StatisticsEZNS_15parallel_reduceIiS7_ZNS6_10statisticsENS_10NodeRefPtrILi4EEEdNS_4BBoxIfEEEUliE4_FS7_RKS7_SF_EEET0_T_SI_RKSH_RKT1_RKT2_EUlNS_5rangeIiEEE_SG_EESH_SI_SI_SI_SI_SK_SN_SQ_EUliE_EEvSI_SK_EUlRKSS_E_EEvSI_SI_SI_SK_PNS0_16TaskGroupContextEEUlvE_EEvRKSI_SZ_mb:bb.a
bb.an:                                            ; preds = %bb.am
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  call void @__clang_call_terminate(ptr %i.dq) #22
  unreachable

_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit43:   ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.as

bb.ao:                                            ; preds = %bb.ak
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit

bb.ap:                                            ; preds = %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = load ptr, ptr %10, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.dt, null
  br i1 %.not.i, label %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  invoke void %i.dw(ptr noundef nonnull align 8 dereferenceable(16) %i.dt)
          to label %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #22
  unreachable

_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit:     ; preds = %bb.aq, %bb.ap, %bb.ao
  %.pn34 = phi { ptr, i32 } [ %i.dr, %bb.ao ], [ %i.ds, %bb.ap ], [ %i.ds, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %.body

bb.as:                                            ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit43, %bb.aj
  %i.dz = load ptr, ptr %i.ad, align 8
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.a
  store atomic ptr null, ptr %i.ea seq_cst, align 8
  %i.eb = invoke noundef ptr @_ZN6embree13TaskScheduler10swapThreadEPNS0_6ThreadE(ptr noundef %i.ag)
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %.loopexit.split-lp ; 0 uses

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store ptr null, ptr %11, align 8
  %i.ec = load ptr, ptr %2, align 8               ; 2 uses
  %.not80 = icmp eq ptr %i.ec, null
  br i1 %.not80, label %bb.at, label %_ZNSt15__exception_ptr13exception_ptraSERKS0_.exit

_ZNSt15__exception_ptr13exception_ptraSERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr %i.ec, ptr %6, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #19
  %.pre.i = load ptr, ptr %6, align 8
  store ptr %.pre.i, ptr %11, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
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
          to label %bb.au unwind label %bb.aw, !llvm.loop !212

bb.aw:                                            ; preds = %bb.av
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.eh = load ptr, ptr %2, align 8               ; 2 uses
  store ptr %i.eh, ptr %5, align 8
  store ptr null, ptr %2, align 8
  %.not.i.i59 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i59, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.ax
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63: ; preds = %bb.ax, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.ei = load ptr, ptr %11, align 8              ; 2 uses
  %.not81 = icmp eq ptr %i.ei, null
  br i1 %.not81, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  store ptr %i.ei, ptr %12, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #19
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %12) #21
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
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #19
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
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
  call void @__clang_call_terminate(ptr %i.es) #22
  unreachable

_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i:    ; preds = %bb.bc, %bb.bb
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.el)
          to label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit unwind label %bb.be

bb.be:                                            ; preds = %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #22
  unreachable

_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  ret void

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66: ; preds = %bb.ba, %bb.az, %bb.aw
  %.pn36 = phi { ptr, i32 } [ %i.eg, %bb.aw ], [ %i.ej, %bb.az ], [ %i.ej, %bb.ba ]
  %i.ev = load ptr, ptr %11, align 8
  %.not.i70 = icmp eq ptr %i.ev, null
  br i1 %.not.i70, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #19
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j, %bb.m, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45, %bb.ac
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71 ], [ %.pn30, %bb.ac ], [ %.pn34, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit ], [ %.pn32, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45 ], [ %i.at, %bb.m ], [ %i.al, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #19
  br label %_ZN6embree13TaskScheduler6ThreaddlEPv.exit

_ZN6embree13TaskScheduler6ThreaddlEPv.exit:       ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47, %.body
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %.body ], [ %.pn, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  resume { ptr, i32 } %.pn36.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnIiZNS_12parallel_forIiZNS_24parallel_reduce_internalIiNS_14BVHNStatisticsILi4EE10StatisticsEZNS_15parallel_reduceIiS7_ZNS6_10statisticsENS_10NodeRefPtrILi4EEEdNS_4BBoxIfEEEUliE4_FS7_RKS7_SF_EEET0_T_SI_RKSH_RKT1_RKT2_EUlNS_5rangeIiEEE_SG_EESH_SI_SI_SI_SI_SK_SN_SQ_EUliE_EEvSI_SK_EUlRKSS_E_EEvSI_SI_SI_SK_PNS0_16TaskGroupContextEEUlvE_E7executeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZZN6embree13TaskScheduler5spawnIiZNS_12parallel_forIiZNS_24parallel_reduce_internalIiNS_14BVHNStatisticsILi4EE10StatisticsEZNS_15parallel_reduceIiS6_ZNS5_10statisticsENS_10NodeRefPtrILi4EEEdNS_4BBoxIfEEEUliE4_FS6_RKS6_SE_EEET0_T_SH_RKSG_RKT1_RKT2_EUlNS_5rangeIiEEE_SF_EESG_SH_SH_SH_SH_SJ_SM_SP_EUliE_EEvSH_SJ_EUlRKSR_E_EEvSH_SH_SH_SJ_PNS0_16TaskGroupContextEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree13TaskScheduler5spawnIiZNS_12parallel_forIiZNS_24parallel_reduce_internalIiNS_14BVHNStatisticsILi4EE10StatisticsEZNS_15parallel_reduceIiS6_ZNS5_10statisticsENS_10NodeRefPtrILi4EEEdNS_4BBoxIfEEEUliE4_FS6_RKS6_SE_EEET0_T_SH_RKSG_RKT1_RKT2_EUlNS_5rangeIiEEE_SF_EESG_SH_SH_SH_SH_SJ_SM_SP_EUliE_EEvSH_SJ_EUlRKSR_E_EEvSH_SH_SH_SJ_PNS0_16TaskGroupContextEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %1 = alloca %"struct.embree::BVHNStatistics<4>::Statistics", align 8 ; 4 uses
  %2 = alloca %"struct.embree::range", align 8    ; 4 uses
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4              ; 6 uses
  %i.d = sub nsw i32 %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %.not = icmp sgt i32 %i.d, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6, !align !7 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !6, !align !8
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !align !8
  %i.m = load i32, ptr %i.l, align 4
  %i.n = sub nsw i32 %i.m, %i.j                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !6, !align !8
  %i.q = load i32, ptr %i.p, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %3 = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %4 = load ptr, ptr %3, align 8, !nonnull !6, !align !7
  %i.r = add nsw i32 %i.c, 1
  %5 = mul nsw i32 %i.n, %i.r
  %i.s = mul nsw i32 %i.n, %i.c
  %6 = insertelement <2 x i32> poison, i32 %i.s, i64 0
  %7 = insertelement <2 x i32> %6, i32 %5, i64 1
  %8 = insertelement <2 x i32> poison, i32 %i.q, i64 0
  %9 = shufflevector <2 x i32> %8, <2 x i32> poison, <2 x i32> zeroinitializer
  %10 = sdiv <2 x i32> %7, %9
  %11 = insertelement <2 x i32> poison, i32 %i.j, i64 0
  %12 = shufflevector <2 x i32> %11, <2 x i32> poison, <2 x i32> zeroinitializer
  %13 = add nsw <2 x i32> %10, %12
  store <2 x i32> %13, ptr %2, align 8
  call void @_ZZN6embree15parallel_reduceIiNS_14BVHNStatisticsILi4EE10StatisticsEZNS2_10statisticsENS_10NodeRefPtrILi4EEEdNS_4BBoxIfEEEUliE4_FS3_RKS3_SA_EEET0_T_SD_RKSC_RKT1_RKT2_ENKUlNS_5rangeIiEEE_clESN_(ptr dead_on_unwind nonnull writable sret(%"struct.embree::BVHNStatistics<4>::Statistics") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dead_on_return %2), !inline_history !213
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !6, !align !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8184
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = sext i32 %i.c to i64
  %i.y = getelementptr inbounds [264 x i8], ptr %i.w, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.y, ptr noundef nonnull align 8 dereferenceable(264) %1, i64 264, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.z = add nsw i32 %i.c, %i.a
  %i.aa = sdiv i32 %i.z, 2                        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnIiZNS_12parallel_forIiZNS_24parallel_reduce_internalIiNS_14BVHNStatisticsILi4EE10StatisticsEZNS_15parallel_reduceIiS6_ZNS5_10statisticsENS_10NodeRefPtrILi4EEEdNS_4BBoxIfEEEUliE4_FS6_RKS6_SE_EEET0_T_SH_RKSG_RKT1_RKT2_EUlNS_5rangeIiEEE_SF_EESG_SH_SH_SH_SH_SJ_SM_SP_EUliE_EEvSH_SJ_EUlRKSR_E_EEvSH_SH_SH_SJ_PNS0_16TaskGroupContextE(i32 noundef %i.c, i32 noundef %i.aa, i32 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef %i.ad)
  %i.ae = load i32, ptr %0, align 8
  %i.af = load i32, ptr %i.e, align 8
  %i.ag = load ptr, ptr %i.ac, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnIiZNS_12parallel_forIiZNS_24parallel_reduce_internalIiNS_14BVHNStatisticsILi4EE10StatisticsEZNS_15parallel_reduceIiS6_ZNS5_10statisticsENS_10NodeRefPtrILi4EEEdNS_4BBoxIfEEEUliE4_FS6_RKS6_SE_EEET0_T_SH_RKSG_RKT1_RKT2_EUlNS_5rangeIiEEE_SF_EESG_SH_SH_SH_SH_SJ_SM_SP_EUliE_EEvSH_SJ_EUlRKSR_E_EEvSH_SH_SH_SJ_PNS0_16TaskGroupContextE(i32 noundef %i.aa, i32 noundef %i.ae, i32 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef %i.ag)
  tail call void @_ZN6embree13TaskScheduler4waitEv()
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v4f64(double, <4 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #8 = { cold noreturn }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn }
attributes #22 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{}
!7 = !{i64 8}
!8 = !{i64 4}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = !{i64 2158292331}
!11 = !{i8 0, i8 2}
!12 = !{i64 64}
!13 = distinct !{!13, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!14 = distinct !{!14, !13, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!15 = distinct !{!15, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!16 = distinct !{!16, !15, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!17 = !{!14}
!18 = !{!16}
!19 = !{!16, !14}
!20 = distinct !{!20, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!21 = distinct !{!21, !20, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!22 = distinct !{!22, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!23 = distinct !{!23, !22, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!24 = !{!23, !21}
!25 = !{!21}
!26 = !{!23}
!27 = distinct !{!27, !"_ZN6embreeplERKNS_14BVHNStatisticsILi4EE10Statistics8LeafStatES5_"}
!28 = distinct !{!28, !27, !"_ZN6embreeplERKNS_14BVHNStatisticsILi4EE10Statistics8LeafStatES5_: argument 0"}
!29 = distinct !{!29, !"_ZN6embreeplERKNS_14BVHNStatisticsILi4EE10Statistics8NodeStatINS_10AABBNode_tINS_10NodeRefPtrILi4EEELi4EEEEESA_"}
!30 = distinct !{!30, !29, !"_ZN6embreeplERKNS_14BVHNStatisticsILi4EE10Statistics8NodeStatINS_10AABBNode_tINS_10NodeRefPtrILi4EEELi4EEEEESA_: argument 0"}
!31 = distinct !{!31, !"_ZN6embreeplERKNS_14BVHNStatisticsILi4EE10Statistics8NodeStatINS_9OBBNode_tINS_10NodeRefPtrILi4EEELi4EEEEESA_"}
!32 = distinct !{!32, !31, !"_ZN6embreeplERKNS_14BVHNStatisticsILi4EE10Statistics8NodeStatINS_9OBBNode_tINS_10NodeRefPtrILi4EEELi4EEEEESA_: argument 0"}
!33 = distinct !{!33, !"_ZN6embreeplERKNS_14BVHNStatisticsILi4EE10Statistics8NodeStatINS_12AABBNodeMB_tINS_10NodeRefPtrILi4EEELi4EEEEESA_"}
!34 = distinct !{!34, !33, !"_ZN6embreeplERKNS_14BVHNStatisticsILi4EE10Statistics8NodeStatINS_12AABBNodeMB_tINS_10NodeRefPtrILi4EEELi4EEEEESA_: argument 0"}
!35 = distinct !{!35, !"_ZN6embreeplERKNS_14BVHNStatisticsILi4EE10Statistics8NodeStatINS_14AABBNodeMB4D_tINS_10NodeRefPtrILi4EEELi4EEEEESA_"}
!36 = distinct !{!36, !35, !"_ZN6embreeplERKNS_14BVHNStatisticsILi4EE10Statistics8NodeStatINS_14AABBNodeMB4D_tINS_10NodeRefPtrILi4EEELi4EEEEESA_: argument 0"}
!37 = distinct !{!37, !"_ZN6embreeplERKNS_14BVHNStatisticsILi4EE10Statistics8NodeStatINS_11OBBNodeMB_tINS_10NodeRefPtrILi4EEELi4EEEEESA_"}
!38 = distinct !{!38, !37, !"_ZN6embreeplERKNS_14BVHNStatisticsILi4EE10Statistics8NodeStatINS_11OBBNodeMB_tINS_10NodeRefPtrILi4EEELi4EEEEESA_: argument 0"}
!39 = distinct !{!39, !"_ZN6embreeplERKNS_14BVHNStatisticsILi4EE10Statistics8NodeStatINS_15QuantizedNode_tINS_10NodeRefPtrILi4EEELi4EEEEESA_"}
!40 = distinct !{!40, !39, !"_ZN6embreeplERKNS_14BVHNStatisticsILi4EE10Statistics8NodeStatINS_15QuantizedNode_tINS_10NodeRefPtrILi4EEELi4EEEEESA_: argument 0"}
!41 = !{!28}
!42 = !{!30}
!43 = !{!32}
!44 = !{!34}
!45 = !{!36}
!46 = !{!38}
!47 = !{!40}
!48 = distinct !{!48, !"_ZN6embree15parallel_reduceIiNS_14BVHNStatisticsILi4EE10StatisticsEZNS2_10statisticsENS_10NodeRefPtrILi4EEEdNS_4BBoxIfEEEUliE_FS3_RKS3_SA_EEET0_T_SD_RKSC_RKT1_RKT2_"}
!49 = distinct !{!49, !48, !"_ZN6embree15parallel_reduceIiNS_14BVHNStatisticsILi4EE10StatisticsEZNS2_10statisticsENS_10NodeRefPtrILi4EEEdNS_4BBoxIfEEEUliE_FS3_RKS3_SA_EEET0_T_SD_RKSC_RKT1_RKT2_: argument 0"}
!50 = distinct !{!50, !"_ZN6embree15parallel_reduceIiNS_14BVHNStatisticsILi4EE10StatisticsEZNS2_10statisticsENS_10NodeRefPtrILi4EEEdNS_4BBoxIfEEEUliE0_FS3_RKS3_SA_EEET0_T_SD_RKSC_RKT1_RKT2_"}
!51 = distinct !{!51, !50, !"_ZN6embree15parallel_reduceIiNS_14BVHNStatisticsILi4EE10StatisticsEZNS2_10statisticsENS_10NodeRefPtrILi4EEEdNS_4BBoxIfEEEUliE0_FS3_RKS3_SA_EEET0_T_SD_RKSC_RKT1_RKT2_: argument 0"}
!52 = distinct !{!52, !"_ZN6embree15parallel_reduceIiNS_14BVHNStatisticsILi4EE10StatisticsEZNS2_10statisticsENS_10NodeRefPtrILi4EEEdNS_4BBoxIfEEEUliE1_FS3_RKS3_SA_EEET0_T_SD_RKSC_RKT1_RKT2_"}
!53 = distinct !{!53, !52, !"_ZN6embree15parallel_reduceIiNS_14BVHNStatisticsILi4EE10StatisticsEZNS2_10statisticsENS_10NodeRefPtrILi4EEEdNS_4BBoxIfEEEUliE1_FS3_RKS3_SA_EEET0_T_SD_RKSC_RKT1_RKT2_: argument 0"}
!54 = distinct !{!54, !"_ZN6embree15parallel_reduceIiNS_14BVHNStatisticsILi4EE10StatisticsEZNS2_10statisticsENS_10NodeRefPtrILi4EEEdNS_4BBoxIfEEEUliE2_FS3_RKS3_SA_EEET0_T_SD_RKSC_RKT1_RKT2_"}
!55 = distinct !{!55, !54, !"_ZN6embree15parallel_reduceIiNS_14BVHNStatisticsILi4EE10StatisticsEZNS2_10statisticsENS_10NodeRefPtrILi4EEEdNS_4BBoxIfEEEUliE2_FS3_RKS3_SA_EEET0_T_SD_RKSC_RKT1_RKT2_: argument 0"}
!56 = distinct !{!56, !"_ZN6embree15parallel_reduceIiNS_14BVHNStatisticsILi4EE10StatisticsEZNS2_10statisticsENS_10NodeRefPtrILi4EEEdNS_4BBoxIfEEEUliE3_FS3_RKS3_SA_EEET0_T_SD_RKSC_RKT1_RKT2_"}
!57 = distinct !{!57, !56, !"_ZN6embree15parallel_reduceIiNS_14BVHNStatisticsILi4EE10StatisticsEZNS2_10statisticsENS_10NodeRefPtrILi4EEEdNS_4BBoxIfEEEUliE3_FS3_RKS3_SA_EEET0_T_SD_RKSC_RKT1_RKT2_: argument 0"}
!58 = distinct !{!58, !"_ZN6embree15parallel_reduceIiNS_14BVHNStatisticsILi4EE10StatisticsEZNS2_10statisticsENS_10NodeRefPtrILi4EEEdNS_4BBoxIfEEEUliE4_FS3_RKS3_SA_EEET0_T_SD_RKSC_RKT1_RKT2_"}
!59 = distinct !{!59, !58, !"_ZN6embree15parallel_reduceIiNS_14BVHNStatisticsILi4EE10StatisticsEZNS2_10statisticsENS_10NodeRefPtrILi4EEEdNS_4BBoxIfEEEUliE4_FS3_RKS3_SA_EEET0_T_SD_RKSC_RKT1_RKT2_: argument 0"}
!60 = distinct !{!60, !5}
!61 = !{!49}
!62 = !{!51}
!63 = !{!53}
!64 = !{!55}
!65 = !{!57}
!66 = !{!59}
!67 = distinct !{null, null}
!68 = distinct !{!68, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!69 = distinct !{!69, !68, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!70 = distinct !{!70, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!71 = distinct !{!71, !70, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!72 = !{!69}
!73 = !{!71}
!74 = !{!71, !69}
!75 = distinct !{!75, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!76 = distinct !{!76, !75, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!77 = distinct !{!77, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!78 = distinct !{!78, !77, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!79 = !{!76}
!80 = !{!78}
!81 = !{!78, !76}
!82 = distinct !{!82, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!83 = distinct !{!83, !82, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!84 = distinct !{!84, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!85 = distinct !{!85, !84, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!86 = !{!83}
!87 = !{!85}
!88 = !{!85, !83}
!89 = distinct !{!89, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!90 = distinct !{!90, !89, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!91 = distinct !{!91, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!92 = distinct !{!92, !91, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!93 = !{!90}
!94 = !{!92}
!95 = !{!92, !90}
!96 = distinct !{!96, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!97 = distinct !{!97, !96, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!98 = distinct !{!98, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!99 = distinct !{!99, !98, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!100 = !{!97}
!101 = !{!99}
!102 = !{!99, !97}
!103 = distinct !{!103, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!104 = distinct !{!104, !103, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!105 = distinct !{!105, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!106 = distinct !{!106, !105, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!107 = !{!104}
!108 = !{!106}
!109 = !{!106, !104}
!110 = distinct !{!110, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!111 = distinct !{!111, !110, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!112 = distinct !{!112, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!113 = distinct !{!113, !112, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!114 = !{!111}
!115 = !{!113}
!116 = !{!113, !111}
!117 = distinct !{!117, !"_ZZN6embree14BVHNStatisticsILi4EE10statisticsENS_10NodeRefPtrILi4EEEdNS_4BBoxIfEEENKUliE_clEi"}
!118 = distinct !{!118, !117, !"_ZZN6embree14BVHNStatisticsILi4EE10statisticsENS_10NodeRefPtrILi4EEEdNS_4BBoxIfEEENKUliE_clEi: argument 0"}
!119 = distinct !{null}
!120 = distinct !{!120, !"_ZNK6embree10AABBNode_tINS_10NodeRefPtrILi4EEELi4EE6extendEm"}
!121 = distinct !{!121, !120, !"_ZNK6embree10AABBNode_tINS_10NodeRefPtrILi4EEELi4EE6extendEm: argument 0"}
!122 = distinct !{!122, !"_ZNK6embree10AABBNode_tINS_10NodeRefPtrILi4EEELi4EE6boundsEm"}
!123 = distinct !{!123, !122, !"_ZNK6embree10AABBNode_tINS_10NodeRefPtrILi4EEELi4EE6boundsEm: argument 0"}
!124 = distinct !{!124, !5}
!125 = !{!118}
end_hunk_1
