Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/scene_verify?download=true
inline.NumInlined: 137
inline.NumDeleted: 77
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@"_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImbZNS_15parallel_reduceImbZNS_15parallel_any_ofImZNS_5Scene21checkIfModifiedAndSetEvE3$_0EEbT_S9_T0_EUlRKNS_5rangeImEEE_St6bit_orIbEEESA_S9_S9_RKSA_RKT1_RKT2_EUlSC_E_SH_EESA_S9_S9_S9_S9_SJ_SM_SP_EUlmE_EEvS9_SJ_EUlSE_E_EEvS9_S9_S9_SJ_PNS0_16TaskGroupContextEEUlvE_EEvRKS9_SU_mb":bb.a
          to label %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  call void @__clang_call_terminate(ptr %i.eb) #12
  unreachable

_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit:     ; preds = %bb.am, %bb.al, %bb.ak
  %.pn34 = phi { ptr, i32 } [ %i.du, %bb.ak ], [ %i.dv, %bb.al ], [ %i.dv, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %.body

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit56
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  store ptr null, ptr %10, align 8
  %i.ec = load ptr, ptr %2, align 8               ; 2 uses
  %.not90 = icmp eq ptr %i.ec, null
  br i1 %.not90, label %bb.ao, label %_ZNSt15__exception_ptr13exception_ptraSERKS0_.exit

_ZNSt15__exception_ptr13exception_ptraSERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store ptr %i.ec, ptr %5, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  %.pre.i = load ptr, ptr %5, align 8
  store ptr %.pre.i, ptr %10, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptraSERKS0_.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ee = atomicrmw sub ptr %i.ed, i64 1 seq_cst, align 8 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.aq, %bb.ao
  %i.ef = load atomic i64, ptr %i.ed seq_cst, align 8
  %.not = icmp eq i64 %i.ef, 0
  br i1 %.not, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN6embree5yieldEv()
          to label %bb.ap unwind label %bb.ar, !llvm.loop !19

bb.ar:                                            ; preds = %bb.aq
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit76

bb.as:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.eh = load ptr, ptr %2, align 8               ; 2 uses
  store ptr %i.eh, ptr %4, align 8
  store ptr null, ptr %2, align 8
  %.not.i.i69 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i69, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.as
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73: ; preds = %bb.as, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.ei = load ptr, ptr %10, align 8              ; 2 uses
  %.not91 = icmp eq ptr %i.ei, null
  br i1 %.not91, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit78, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73
  store ptr %i.ei, ptr %11, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #11
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %11) #13
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.au:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = load ptr, ptr %11, align 8
  %.not.i75 = icmp eq ptr %i.ek, null
  br i1 %.not.i75, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit76, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #11
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit76

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit78: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %i.el = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i79 = icmp eq ptr %i.el, null
  br i1 %.not.i79, label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit78
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 786696
  %i.en = load ptr, ptr %i.em, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i, label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  invoke void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.en)
          to label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #12
  unreachable

_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i:    ; preds = %bb.ax, %bb.aw
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.el)
          to label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit unwind label %bb.az

bb.az:                                            ; preds = %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #12
  unreachable

_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit78, %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret void

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit76: ; preds = %bb.av, %bb.au, %bb.ar
  %.pn36 = phi { ptr, i32 } [ %i.eg, %bb.ar ], [ %i.ej, %bb.au ], [ %i.ej, %bb.av ]
  %i.ev = load ptr, ptr %10, align 8
  %.not.i80 = icmp eq ptr %i.ev, null
  br i1 %.not.i80, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit81, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit76
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #11
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit81

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit81: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit76, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.h, %bb.k, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit81, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit58, %bb.z
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit81 ], [ %.pn30, %bb.z ], [ %.pn34, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit ], [ %.pn32, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit58 ], [ %i.al, %bb.h ], [ %i.at, %bb.k ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #11
  br label %_ZN6embree13TaskScheduler6ThreaddlEPv.exit

_ZN6embree13TaskScheduler6ThreaddlEPv.exit:       ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit60, %.body
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %.body ], [ %.pn, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit60 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  resume { ptr, i32 } %.pn36.pn.pn
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #7

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define internal void @"_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImbZNS_15parallel_reduceImbZNS_15parallel_any_ofImZNS_5Scene21checkIfModifiedAndSetEvE3$_0EEbT_S9_T0_EUlRKNS_5rangeImEEE_St6bit_orIbEEESA_S9_S9_RKSA_RKT1_RKT2_EUlSC_E_SH_EESA_S9_S9_S9_S9_SJ_SM_SP_EUlmE_EEvS9_SJ_EUlSE_E_EEvS9_S9_S9_SJ_PNS0_16TaskGroupContextEEUlvE_E7executeEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8              ; 6 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.h, align 8           ; 5 uses
  %i.i = load ptr, ptr %.val.i, align 8, !nonnull !4, !align !17
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !align !17
  %i.m = load i64, ptr %i.l, align 8
  %i.n = sub i64 %i.m, %i.j                       ; 2 uses
  %i.o = mul i64 %i.n, %i.d
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !align !17
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = udiv i64 %i.o, %i.r                      ; 3 uses
  %i.t = add i64 %i.s, %i.j                       ; 5 uses
  %i.u = add i64 %i.d, 1
  %i.v = mul i64 %i.n, %i.u
  %i.w = udiv i64 %i.v, %i.r                      ; 3 uses
  %i.x = add i64 %i.w, %i.j                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !align !17 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4
  %i.ab = load i8, ptr %i.aa, align 1, !range !3, !noundef !4 ; 5 uses
  %i.ac = icmp ult i64 %i.t, %i.x
  br i1 %i.ac, label %.lr.ph.i.lr.ph.i.i.i.i, label %"_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImbZNS_15parallel_reduceImbZNS_15parallel_any_ofImZNS_5Scene21checkIfModifiedAndSetEvE3$_0EEbT_S6_T0_EUlRKNS_5rangeImEEE_St6bit_orIbEEES7_S6_S6_RKS7_RKT1_RKT2_EUlS9_E_SE_EES7_S6_S6_S6_S6_SG_SJ_SM_EUlmE_EEvS6_SG_ENKUlSB_E_clESB_.exit.i"

.lr.ph.i.lr.ph.i.i.i.i:                           ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !4, !align !17
  %.val.i.i.i.i = load ptr, ptr %i.ae, align 8    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 488
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 520 ; 3 uses
  %i.ai = sub i64 %i.w, %i.s
  %.neg = add i64 %i.s, 1
  %xtraiter = and i64 %i.ai, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.lr.ph.i.i.i.i
  %1 = add nuw i64 %i.t, 1                        ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.t
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.prol = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = load i32, ptr %i.al, align 8
  %i.an = load ptr, ptr %i.ah, align 8
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.t
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = icmp ugt i32 %i.am, %i.ap
  %i.ar = zext i1 %i.aq to i8
  %i.as = or i8 %i.ab, %i.ar                      ; 2 uses
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %bb.c, %.lr.ph.i.lr.ph.i.i.i.i
  %.0.i.i.i.i.i.i.i.lcssa.unr = phi i8 [ poison, %.lr.ph.i.lr.ph.i.i.i.i ], [ %i.as, %bb.c ], [ %i.ab, %.lr.ph.i.i.i.i.i.prol ]
  %storemerge7.i.i.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.lr.ph.i.i.i.i ], [ %1, %bb.c ], [ %1, %.lr.ph.i.i.i.i.i.prol ]
  %.06.i.i.i.i.unr = phi i8 [ %i.ab, %.lr.ph.i.lr.ph.i.i.i.i ], [ %i.as, %bb.c ], [ %i.ab, %.lr.ph.i.i.i.i.i.prol ]
  %i.at = icmp eq i64 %i.w, %.neg
  br i1 %i.at, label %"_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImbZNS_15parallel_reduceImbZNS_15parallel_any_ofImZNS_5Scene21checkIfModifiedAndSetEvE3$_0EEbT_S6_T0_EUlRKNS_5rangeImEEE_St6bit_orIbEEES7_S6_S6_RKS7_RKT1_RKT2_EUlS9_E_SE_EES7_S6_S6_S6_S6_SG_SJ_SM_EUlmE_EEvS6_SG_ENKUlSB_E_clESB_.exit.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %"_ZZN6embree5Scene21checkIfModifiedAndSetEvENK3$_0clEm.exit.i.i.i.i.i.1"
  %storemerge7.i.i.i.i = phi i64 [ %i.be, %"_ZZN6embree5Scene21checkIfModifiedAndSetEvENK3$_0clEm.exit.i.i.i.i.i.1" ], [ %storemerge7.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.06.i.i.i.i = phi i8 [ %.0.i.i.i.i.i.i.i.1, %"_ZZN6embree5Scene21checkIfModifiedAndSetEvENK3$_0clEm.exit.i.i.i.i.i.1" ], [ %.06.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %2 = add nuw i64 %storemerge7.i.i.i.i, 1        ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %storemerge7.i.i.i.i
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZZN6embree5Scene21checkIfModifiedAndSetEvENK3$_0clEm.exit.i.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = load ptr, ptr %i.ah, align 8
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %storemerge7.i.i.i.i
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = icmp ugt i32 %i.ax, %i.ba
  %i.bc = zext i1 %i.bb to i8
  %i.bd = or i8 %.06.i.i.i.i, %i.bc
  br label %"_ZZN6embree5Scene21checkIfModifiedAndSetEvENK3$_0clEm.exit.i.i.i.i.i"

"_ZZN6embree5Scene21checkIfModifiedAndSetEvENK3$_0clEm.exit.i.i.i.i.i": ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i8 [ %i.bd, %bb.d ], [ %.06.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.be = add nuw i64 %storemerge7.i.i.i.i, 2     ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %2
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i.1, label %"_ZZN6embree5Scene21checkIfModifiedAndSetEvENK3$_0clEm.exit.i.i.i.i.i.1", label %bb.e

bb.e:                                             ; preds = %"_ZZN6embree5Scene21checkIfModifiedAndSetEvENK3$_0clEm.exit.i.i.i.i.i"
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = load ptr, ptr %i.ah, align 8
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %2
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = icmp ugt i32 %i.bi, %i.bl
  %i.bn = zext i1 %i.bm to i8
  %i.bo = or i8 %.0.i.i.i.i.i.i.i, %i.bn
  br label %"_ZZN6embree5Scene21checkIfModifiedAndSetEvENK3$_0clEm.exit.i.i.i.i.i.1"

"_ZZN6embree5Scene21checkIfModifiedAndSetEvENK3$_0clEm.exit.i.i.i.i.i.1": ; preds = %bb.e, %"_ZZN6embree5Scene21checkIfModifiedAndSetEvENK3$_0clEm.exit.i.i.i.i.i"
  %.0.i.i.i.i.i.i.i.1 = phi i8 [ %i.bo, %bb.e ], [ %.0.i.i.i.i.i.i.i, %"_ZZN6embree5Scene21checkIfModifiedAndSetEvENK3$_0clEm.exit.i.i.i.i.i" ] ; 2 uses
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %i.be, %i.x
  br i1 %exitcond.not.i.i.i.i.1, label %"_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImbZNS_15parallel_reduceImbZNS_15parallel_any_ofImZNS_5Scene21checkIfModifiedAndSetEvE3$_0EEbT_S6_T0_EUlRKNS_5rangeImEEE_St6bit_orIbEEES7_S6_S6_RKS7_RKT1_RKT2_EUlS9_E_SE_EES7_S6_S6_S6_S6_SG_SJ_SM_EUlmE_EEvS6_SG_ENKUlSB_E_clESB_.exit.i", label %.lr.ph.i.i.i.i.i, !llvm.loop !20

"_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImbZNS_15parallel_reduceImbZNS_15parallel_any_ofImZNS_5Scene21checkIfModifiedAndSetEvE3$_0EEbT_S6_T0_EUlRKNS_5rangeImEEE_St6bit_orIbEEES7_S6_S6_RKS7_RKT1_RKT2_EUlS9_E_SE_EES7_S6_S6_S6_S6_SG_SJ_SM_EUlmE_EEvS6_SG_ENKUlSB_E_clESB_.exit.i": ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %"_ZZN6embree5Scene21checkIfModifiedAndSetEvENK3$_0clEm.exit.i.i.i.i.i.1", %bb.b
  %.0.lcssa.i.i.i.i = phi i8 [ %i.ab, %bb.b ], [ %.0.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.i.1, %"_ZZN6embree5Scene21checkIfModifiedAndSetEvENK3$_0clEm.exit.i.i.i.i.i.1" ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !4, !align !21
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8192
  %i.bs = load ptr, ptr %i.br, align 64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.d
  store i8 %.0.lcssa.i.i.i.i, ptr %i.bt, align 1
  br label %"_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImbZNS_15parallel_reduceImbZNS_15parallel_any_ofImZNS_5Scene21checkIfModifiedAndSetEvE3$_0EEbT_S8_T0_EUlRKNS_5rangeImEEE_St6bit_orIbEEES9_S8_S8_RKS9_RKT1_RKT2_EUlSB_E_SG_EES9_S8_S8_S8_S8_SI_SL_SO_EUlmE_EEvS8_SI_EUlSD_E_EEvS8_S8_S8_SI_PNS0_16TaskGroupContextEENKUlvE_clEv.exit"

bb.f:                                             ; preds = %bb.a
  %i.bu = add i64 %i.d, %i.b
  %i.bv = lshr i64 %i.bu, 1                       ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8
  %.val4.i = load i64, ptr %i.bw, align 8
  tail call fastcc void @"_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImbZNS_15parallel_reduceImbZNS_15parallel_any_ofImZNS_5Scene21checkIfModifiedAndSetEvE3$_0EEbT_S8_T0_EUlRKNS_5rangeImEEE_St6bit_orIbEEES9_S8_S8_RKS9_RKT1_RKT2_EUlSB_E_SG_EES9_S8_S8_S8_S8_SI_SL_SO_EUlmE_EEvS8_SI_EUlSD_E_EEvS8_S8_S8_SI_PNS0_16TaskGroupContextE"(i64 noundef %i.d, i64 noundef %i.bv, i64 noundef %i.g, i64 %.val4.i, ptr noundef %i.by), !inline_history !22
  %i.bz = load i64, ptr %i.a, align 8
  %i.ca = load i64, ptr %i.f, align 8
  %i.cb = load ptr, ptr %i.bx, align 8
  %.val3.i = load i64, ptr %i.bw, align 8
  tail call fastcc void @"_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImbZNS_15parallel_reduceImbZNS_15parallel_any_ofImZNS_5Scene21checkIfModifiedAndSetEvE3$_0EEbT_S8_T0_EUlRKNS_5rangeImEEE_St6bit_orIbEEES9_S8_S8_RKS9_RKT1_RKT2_EUlSB_E_SG_EES9_S8_S8_S8_S8_SI_SL_SO_EUlmE_EEvS8_SI_EUlSD_E_EEvS8_S8_S8_SI_PNS0_16TaskGroupContextE"(i64 noundef %i.bv, i64 noundef %i.bz, i64 noundef %i.ca, i64 %.val3.i, ptr noundef %i.cb), !inline_history !22
  tail call void @_ZN6embree13TaskScheduler4waitEv(), !inline_history !22
  br label %"_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImbZNS_15parallel_reduceImbZNS_15parallel_any_ofImZNS_5Scene21checkIfModifiedAndSetEvE3$_0EEbT_S8_T0_EUlRKNS_5rangeImEEE_St6bit_orIbEEES9_S8_S8_RKS9_RKT1_RKT2_EUlSB_E_SG_EES9_S8_S8_S8_S8_SI_SL_SO_EUlmE_EEvS8_SI_EUlSD_E_EEvS8_S8_S8_SI_PNS0_16TaskGroupContextEENKUlvE_clEv.exit"

"_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImbZNS_15parallel_reduceImbZNS_15parallel_any_ofImZNS_5Scene21checkIfModifiedAndSetEvE3$_0EEbT_S8_T0_EUlRKNS_5rangeImEEE_St6bit_orIbEEES9_S8_S8_RKS9_RKT1_RKT2_EUlSB_E_SG_EES9_S8_S8_S8_S8_SI_SL_SO_EUlmE_EEvS8_SI_EUlSD_E_EEvS8_S8_S8_SI_PNS0_16TaskGroupContextEENKUlvE_clEv.exit": ; preds = %"_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImbZNS_15parallel_reduceImbZNS_15parallel_any_ofImZNS_5Scene21checkIfModifiedAndSetEvE3$_0EEbT_S6_T0_EUlRKNS_5rangeImEEE_St6bit_orIbEEES7_S6_S6_RKS7_RKT1_RKT2_EUlS9_E_SE_EES7_S6_S6_S6_S6_SG_SJ_SM_EUlmE_EEvS6_SG_ENKUlSB_E_clESB_.exit.i", %bb.f
  ret void
}

declare void @_ZN6embree13TaskScheduler12startThreadsEv() local_unnamed_addr #5

declare noundef i64 @_ZN6embree13TaskScheduler16allocThreadIndexEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

declare noundef ptr @_ZN6embree13TaskScheduler10swapThreadEPNS0_6ThreadE(ptr noundef) local_unnamed_addr #5

declare void @_ZN6embree12ConditionSys10notify_allEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !3, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !align !17
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #12
  unreachable
}

declare void @_ZN6embree13TaskScheduler12addSchedulerERKNS_3RefIS0_EE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN6embree13TaskScheduler9TaskQueue13execute_localERNS0_6ThreadEPNS0_4TaskE(ptr noundef nonnull align 64 dereferenceable(786568), ptr noundef nonnull align 64 dereferenceable(786704), ptr noundef) local_unnamed_addr #5

declare void @_ZN6embree13TaskScheduler15removeSchedulerERKNS_3RefIS0_EE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN6embree5yieldEv() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  tail call void @__clang_call_terminate(ptr %i.h) #12
  unreachable

_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i:      ; preds = %bb.c, %bb.b
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.a)
          to label %_ZNKSt14default_deleteIN6embree13TaskScheduler6ThreadEEclEPS2_.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #12
  unreachable

_ZNKSt14default_deleteIN6embree13TaskScheduler6ThreadEEclEPS2_.exit: ; preds = %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i, %bb.a
  ret void
}

declare void @_ZN6embree11alignedFreeEPv(ptr noundef) local_unnamed_addr #5

declare void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v16i8(<16 x i8>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v4i8(<4 x i8>) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #8 = { cold noreturn }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{i8 0, i8 2}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = distinct !{!6, !7, !8, !9}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = !{!"llvm.loop.unroll.runtime.disable"}
!10 = !{!"branch_weights", i32 4, i32 28}
!11 = distinct !{!11, !7, !8, !9}
!12 = distinct !{!12, !7, !9, !8}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{i64 2158223717}
!15 = distinct !{null}
!16 = distinct !{null}
!17 = !{i64 8}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = !{i64 64}
!22 = distinct !{null}
end_hunk_0
