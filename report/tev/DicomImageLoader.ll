Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/DicomImageLoader?download=true
inline.NumInlined: 15066
inline.NumDeleted: 4736
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 134
begin_hunk_0_@_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS_15simdParallelForITkNS2_8integralEmZNS_10yCbCrToRgbILb1EEENS_4TaskIvEENS_16MultiChannelViewIfEEiPKfSC_EUlTymE_EES8_RS0_S4_S4_mT0_iEUlmmE_EES8_S4_S4_mSF_iENKUlvE_clEv:.from.
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  %i.ac = call ptr @__cxa_begin_catch(ptr %i.ab) #41 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr37)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.31

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %_ZZN3tev15simdParallelForITkNSt3__18integralEmZNS_10yCbCrToRgbILb1EEENS_4TaskIvEENS_16MultiChannelViewIfEEiPKfS8_EUlTymE_EES4_RNS_10ThreadPoolET_SC_mT0_iENKUlmmE_clEmm.exit, %bb.h
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !100
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = atomicrmw add ptr %i.ae, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ag = icmp slt i32 %i.af, 1
  br i1 %i.ag, label %bb.i, label %_ZN3tev5Latch9countDownEv.exit.i

bb.i:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !113 ; 7 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !124
  %i.ak = and i32 %i.aj, 8
  %.not.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.j:                                             ; preds = %.noexc.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !125 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !126 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.am, %i.ao
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 33
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.am, %.from..lr.ph.i.i.i.i.i ], [ %i.be, %.noexc2.i.i ] ; 2 uses
  %i.at = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !129 ; 2 uses
  %i.au = load i8, ptr %i.ap, align 8             ; 2 uses
  %i.av = trunc i8 %i.au to i1                    ; 2 uses
  %i.aw = load ptr, ptr %i.aq, align 8
  %i.ax = select i1 %i.av, ptr %i.aw, ptr %i.ar
  %i.ay = load i64, ptr %i.as, align 8
  %i.az = lshr i8 %i.au, 1
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = select i1 %i.av, i64 %i.ay, i64 %i.ba
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !93
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr %i.ax, i64 %i.bb, i32 noundef 8, ptr nonnull @.str.60, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.be, %i.ao
  br i1 %.not.i.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.i, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.k

.from..loopexit.split-lp.i.i:                     ; preds = %bb.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.k

bb.k:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.bf = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.bf) #46
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bg = icmp slt i32 %i.af, 2
  br i1 %i.bg, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.j, %_ZN3tev5Latch9countDownEv.exit.i
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !100
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !102 ; 2 uses
  %i.bj = inttoptr i64 %i.bi to ptr               ; 3 uses
  store ptr %i.bj, ptr %.reload.addr, align 8
  %.not.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr38 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %index.addr38, align 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr nonnull %i.bj)
  br label %AfterCoroEnd

bb.l:                                             ; preds = %bb.g
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.35 unwind label %bb.o

.from.31:                                         ; preds = %bb.h
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.35

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.bn = load ptr, ptr %i.h, align 8, !tbaa !101 ; 5 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = atomicrmw add ptr %i.bo, i64 -1 acq_rel, align 8
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.n, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !93
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(24) %i.bn) #41, !inline_history !2
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bn) #41
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.m, %bb.n
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr37) #41
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #41
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend
  ret void

.body.from.35:                                    ; preds = %bb.l, %.from.31
  %.pn = phi { ptr, i32 } [ %i.bm, %.from.31 ], [ %i.bl, %bb.l ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #41
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr37) #41
  br label %.body

.body:                                            ; preds = %.body.from.35, %.body.from.33, %.body.from.
  %.merged10 = phi { ptr, i32 } [ %.pn, %.body.from.35 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.33 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #41
  resume { ptr, i32 } %.merged10

bb.o:                                             ; preds = %bb.l
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #46
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev7simdForITkNSt3__18integralEmRZNS_10yCbCrToRgbILb1EEENS_4TaskIvEENS_16MultiChannelViewIfEEiPKfS8_EUlTymE_EEvT_SB_OT0_(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #31 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.nanogui::Array.212", align 8 ; 7 uses
  %i.a = add i64 %0, 4                            ; 2 uses
  %.not11 = icmp ugt i64 %i.a, %1
  br i1 %.not11, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ %0, %bb.a ], [ %i.f, %.lr.ph ] ; 2 uses
  %i.b = icmp ult i64 %.0.lcssa, %1
  br i1 %i.b, label %.lr.ph14, label %._crit_edge

.lr.ph14:                                         ; preds = %.preheader
  %.sroa.211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.pre = load ptr, ptr %2, align 8, !tbaa !705
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.f = phi i64 [ %i.g, %.lr.ph ], [ %i.a, %bb.a ] ; 3 uses
  %.012 = phi i64 [ %i.f, %.lr.ph ], [ %0, %bb.a ]
  tail call void @_ZZN3tev10yCbCrToRgbILb1EEENS_4TaskIvEENS_16MultiChannelViewIfEEiPKfS6_ENKUlTymE_clIN5xsimd5batchIfNS9_4sse2EEEEEDam(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.012)
  %i.g = add i64 %i.f, 4                          ; 2 uses
  %.not = icmp ugt i64 %i.g, %1
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !2872

bb.b:                                             ; preds = %.lr.ph14, %_ZZN3tev10yCbCrToRgbILb1EEENS_4TaskIvEENS_16MultiChannelViewIfEEiPKfS6_ENKUlTymE_clIfEEDam.exit
  %i.h = phi ptr [ %.pre, %.lr.ph14 ], [ %i.an, %_ZZN3tev10yCbCrToRgbILb1EEENS_4TaskIvEENS_16MultiChannelViewIfEEiPKfS6_ENKUlTymE_clIfEEDam.exit ]
  %.113 = phi i64 [ %.0.lcssa, %.lr.ph14 ], [ %i.bj, %_ZZN3tev10yCbCrToRgbILb1EEENS_4TaskIvEENS_16MultiChannelViewIfEEiPKfS6_ENKUlTymE_clIfEEDam.exit ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !110  ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !686
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !687
  %i.m = mul i64 %i.l, %.113
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !686
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !687
  %i.s = mul i64 %i.r, %.113
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.s
  %i.u = load float, ptr %i.t, align 4, !tbaa !90
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !686
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.y = load i64, ptr %i.x, align 8, !tbaa !687
  %i.z = mul i64 %i.y, %.113
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.z
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !90
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !706, !nonnull !203, !align !219
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !150
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !707, !nonnull !203, !align !219
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !150 ; 3 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !90
  %4 = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %5 = load float, ptr %4, align 4, !tbaa !90
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load float, ptr %i.n, align 4, !tbaa !90 ; 3 uses
  %6 = load <2 x float>, ptr %i.ad, align 4, !tbaa !90
  %7 = insertelement <2 x float> poison, float %i.u, i64 0
  %8 = insertelement <2 x float> %7, float %i.ab, i64 1
  %9 = fsub <2 x float> %8, %6                    ; 3 uses
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %11 = extractelement <2 x float> %9, i64 1
  %i.aj = call float @llvm.fmuladd.f32(float %i.ag, float %11, float %i.ai)
  %12 = extractelement <2 x float> %9, i64 0
  %13 = call float @llvm.fmuladd.f32(float %5, float %12, float %i.ai)
  %14 = load <2 x float>, ptr %i.ah, align 4, !tbaa !90
  %15 = insertelement <2 x float> poison, float %13, i64 0
  %16 = insertelement <2 x float> %15, float %i.ai, i64 1
  %17 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> %10, <2 x float> %16) ; 2 uses
  %.sroa.0.0.vec.insert.i13.i = insertelement <2 x float> poison, float %i.aj, i64 0
  %18 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i13.i, <2 x float> %17, <2 x i32> <i32 0, i32 2>
  store <2 x float> %18, ptr %3, align 8
  %19 = extractelement <2 x float> %17, i64 1
  store float %19, ptr %.sroa.211.0..sroa_idx.i, align 8, !tbaa !91
  %i.ak = invoke { <2 x float>, float } @_ZN3tev8ituth27318invTransferRgbImplILNS0_9ETransferE13EfEEN7nanogui5ArrayIT0_Lm3EEENSt3__117integral_constantIS2_XT_EEERKS6_(ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %_ZZN3tev10yCbCrToRgbILb1EEENS_4TaskIvEENS_16MultiChannelViewIfEEiPKfS6_ENKUlTymE_clIfEEDam.exit unwind label %bb.c ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #46
  unreachable

_ZZN3tev10yCbCrToRgbILb1EEENS_4TaskIvEENS_16MultiChannelViewIfEEiPKfS6_ENKUlTymE_clIfEEDam.exit: ; preds = %bb.b
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.ak, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.ak, 1
  store <2 x float> %.fca.0.extract.i, ptr %3, align 8
  store float %.fca.1.extract.i, ptr %.sroa.211.0..sroa_idx.i, align 8, !tbaa !91
  %i.an = load ptr, ptr %2, align 8, !tbaa !705, !nonnull !203, !align !219 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !110 ; 6 uses
  %i.ap = extractelement <2 x float> %.fca.0.extract.i, i64 0
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !686
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !687
  %i.at = mul i64 %i.as, %.113
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.at
  store float %i.ap, ptr %i.au, align 4, !tbaa !90
  %i.av = load float, ptr %i.e, align 4, !tbaa !90
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !686
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !687
  %i.ba = mul i64 %i.az, %.113
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ba
  store float %i.av, ptr %i.bb, align 4, !tbaa !90
  %i.bc = load float, ptr %.sroa.211.0..sroa_idx.i, align 8, !tbaa !90
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !686
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !687
  %i.bh = mul i64 %i.bg, %.113
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bh
  store float %i.bc, ptr %i.bi, align 4, !tbaa !90
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.bj = add i64 %.113, 1                        ; 2 uses
  %exitcond.not = icmp eq i64 %i.bj, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !2873

._crit_edge:                                      ; preds = %_ZZN3tev10yCbCrToRgbILb1EEENS_4TaskIvEENS_16MultiChannelViewIfEEiPKfS6_ENKUlTymE_clIfEEDam.exit, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN3tev10yCbCrToRgbILb1EEENS_4TaskIvEENS_16MultiChannelViewIfEEiPKfS6_ENKUlTymE_clIN5xsimd5batchIfNS9_4sse2EEEEEDam(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #32 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.nanogui::Array.759", align 16 ; 8 uses
  %3 = alloca %"struct.nanogui::Array.759", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.a = load ptr, ptr %0, align 8, !tbaa !705, !nonnull !203, !align !219
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110, !noalias !2878 ; 6 uses
  %i.c = add i64 %1, 1                            ; 6 uses
  %i.d = add i64 %1, 2                            ; 6 uses
  %i.e = add i64 %1, 3                            ; 6 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !686, !noalias !2878 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !687, !noalias !2878 ; 4 uses
  %i.i = mul i64 %i.h, %1
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.i
  %i.k = load float, ptr %i.j, align 4, !tbaa !90, !noalias !2878
  %.sroa.0.0.vec.insert.i.i = insertelement <4 x float> poison, float %i.k, i64 0
  %i.l = mul i64 %i.h, %i.c
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.l
  %i.n = load float, ptr %i.m, align 4, !tbaa !90, !noalias !2878
  %.sroa.0.4.vec.insert.i.i = insertelement <4 x float> %.sroa.0.0.vec.insert.i.i, float %i.n, i64 1
  %i.o = mul i64 %i.h, %i.d
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.o
  %i.q = load float, ptr %i.p, align 4, !tbaa !90, !noalias !2878
  %.sroa.0.8.vec.insert.i.i = insertelement <4 x float> %.sroa.0.4.vec.insert.i.i, float %i.q, i64 2
  %i.r = mul i64 %i.h, %i.e
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.r
  %i.t = load float, ptr %i.s, align 4, !tbaa !90, !noalias !2878
  %.sroa.0.12.vec.insert.i.i = insertelement <4 x float> %.sroa.0.8.vec.insert.i.i, float %i.t, i64 3 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !686, !noalias !2878 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !687, !noalias !2878 ; 4 uses
  %i.y = mul i64 %i.x, %1
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.y
  %i.aa = load float, ptr %i.z, align 4, !tbaa !90, !noalias !2878
  %.sroa.0.0.vec.insert.i.1.i = insertelement <4 x float> poison, float %i.aa, i64 0
  %i.ab = mul i64 %i.x, %i.c
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ab
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !90, !noalias !2878
  %.sroa.0.4.vec.insert.i.1.i = insertelement <4 x float> %.sroa.0.0.vec.insert.i.1.i, float %i.ad, i64 1
  %i.ae = mul i64 %i.x, %i.d
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !90, !noalias !2878
  %.sroa.0.8.vec.insert.i.1.i = insertelement <4 x float> %.sroa.0.4.vec.insert.i.1.i, float %i.ag, i64 2
  %i.ah = mul i64 %i.x, %i.e
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ah
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !90, !noalias !2878
  %.sroa.0.12.vec.insert.i.1.i = insertelement <4 x float> %.sroa.0.8.vec.insert.i.1.i, float %i.aj, i64 3
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !686, !noalias !2878 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !687, !noalias !2878 ; 4 uses
  %i.ap = mul i64 %i.ao, %1
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ap
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !90, !noalias !2878
  %.sroa.0.0.vec.insert.i.2.i = insertelement <4 x float> poison, float %i.ar, i64 0
  %i.as = mul i64 %i.ao, %i.c
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.as
  %i.au = load float, ptr %i.at, align 4, !tbaa !90, !noalias !2878
  %.sroa.0.4.vec.insert.i.2.i = insertelement <4 x float> %.sroa.0.0.vec.insert.i.2.i, float %i.au, i64 1
  %i.av = mul i64 %i.ao, %i.d
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !90, !noalias !2878
  %.sroa.0.8.vec.insert.i.2.i = insertelement <4 x float> %.sroa.0.4.vec.insert.i.2.i, float %i.ax, i64 2
  %i.ay = mul i64 %i.ao, %i.e
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4, !tbaa !90, !noalias !2878
  %.sroa.0.12.vec.insert.i.2.i = insertelement <4 x float> %.sroa.0.8.vec.insert.i.2.i, float %i.ba, i64 3
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !706, !nonnull !203, !align !219
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !150 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !707, !nonnull !203, !align !219
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !150 ; 4 uses
  %i.bi = load float, ptr %i.be, align 4, !tbaa !90, !noalias !2879
  %i.bj = insertelement <4 x float> poison, float %i.bi, i64 0
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bl = fsub <4 x float> %.sroa.0.12.vec.insert.i.1.i, %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !90, !noalias !2879
  %i.bo = insertelement <4 x float> poison, float %i.bn, i64 0
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bq = fsub <4 x float> %.sroa.0.12.vec.insert.i.2.i, %i.bp ; 2 uses
  %i.br = load float, ptr %i.bh, align 4, !tbaa !90, !noalias !2879
  %i.bs = insertelement <4 x float> poison, float %i.br, i64 0
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bu = fmul <4 x float> %i.bq, %i.bt
  %i.bv = fadd <4 x float> %.sroa.0.12.vec.insert.i.i, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !90, !noalias !2879
  %i.by = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ca = fmul <4 x float> %i.bl, %i.bz
  %i.cb = fadd <4 x float> %.sroa.0.12.vec.insert.i.i, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !90, !noalias !2879
  %i.ce = insertelement <4 x float> poison, float %i.cd, i64 0
  %i.cf = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cg = fmul <4 x float> %i.bq, %i.cf
  %i.ch = fadd <4 x float> %i.cb, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !90, !noalias !2879
  %i.ck = insertelement <4 x float> poison, float %i.cj, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cm = fmul <4 x float> %i.bl, %i.cl
  %i.cn = fadd <4 x float> %.sroa.0.12.vec.insert.i.i, %i.cm
  store <4 x float> %i.bv, ptr %2, align 16
  store <4 x float> %i.ch, ptr %i.ak, align 16
  store <4 x float> %i.cn, ptr %i.bb, align 16, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  invoke void @_ZN3tev8ituth27318invTransferRgbImplILNS0_9ETransferE13EN5xsimd5batchIfNS3_4sse2EEEEEN7nanogui5ArrayIT0_Lm3EEENSt3__117integral_constantIS2_XT_EEERKSA_(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Array.759") align 16 %3, ptr noundef nonnull align 16 dereferenceable(48) %2)
          to label %_ZN3tev8ituth27314invTransferRgbILNS0_9ETransferE13EN5xsimd5batchIfNS3_4sse2EEEEEN7nanogui5ArrayIT0_Lm3EEERKSA_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #46
  unreachable

_ZN3tev8ituth27314invTransferRgbILNS0_9ETransferE13EN5xsimd5batchIfNS3_4sse2EEEEEN7nanogui5ArrayIT0_Lm3EEERKSA_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %2, ptr noundef nonnull align 16 dereferenceable(48) %3, i64 48, i1 false), !tbaa.struct !700
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.cq = load ptr, ptr %0, align 8, !tbaa !705, !nonnull !203, !align !219
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !110 ; 6 uses
  %i.cs = load <4 x float>, ptr %2, align 16, !tbaa !91 ; 4 uses
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !686 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !687 ; 4 uses
  %.sroa.0.0.vec.extract12.i.i = extractelement <4 x float> %i.cs, i64 0
  %i.cw = mul i64 %i.cv, %1
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cw
  store float %.sroa.0.0.vec.extract12.i.i, ptr %i.cx, align 4, !tbaa !90
  %.sroa.0.4.vec.extract14.i.i = extractelement <4 x float> %i.cs, i64 1
  %i.cy = mul i64 %i.cv, %i.c
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cy
  store float %.sroa.0.4.vec.extract14.i.i, ptr %i.cz, align 4, !tbaa !90
  %.sroa.0.8.vec.extract16.i.i = extractelement <4 x float> %i.cs, i64 2
  %i.da = mul i64 %i.cv, %i.d
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.da
  store float %.sroa.0.8.vec.extract16.i.i, ptr %i.db, align 4, !tbaa !90
  %.sroa.0.12.vec.extract18.i.i = extractelement <4 x float> %i.cs, i64 3
  %i.dc = mul i64 %i.cv, %i.e
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.dc
  store float %.sroa.0.12.vec.extract18.i.i, ptr %i.dd, align 4, !tbaa !90
  %i.de = load <4 x float>, ptr %i.ak, align 16, !tbaa !91 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
end_hunk_0
begin_hunk_1_@_ZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.resume:resume.entry
  %i.hi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i156 unwind label %.from..loopexit.split-lp.i.i153

.noexc.i.i156:                                    ; preds = %bb.af
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !113 ; 7 uses
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !124
  %i.hl = and i32 %i.hk, 8
  %.not.i.i.i.i157 = icmp eq i32 %i.hl, 0
  br i1 %.not.i.i.i.i157, label %bb.ag, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit

bb.ag:                                            ; preds = %.noexc.i.i156
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !125 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !126 ; 2 uses
  %.not12.i.i.i.i.i158 = icmp eq ptr %i.hn, %i.hp
  br i1 %.not12.i.i.i.i.i158, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i159

.from..lr.ph.i.i.i.i.i159:                        ; preds = %bb.ag
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hj, i64 48
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hj, i64 33
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hj, i64 40
  br label %.from..noexc2.i.i163

.from..noexc2.i.i163:                             ; preds = %.noexc2.i.i163, %.from..lr.ph.i.i.i.i.i159
  %.sroa.09.013.i.i.i.i.i160 = phi ptr [ %i.hn, %.from..lr.ph.i.i.i.i.i159 ], [ %i.if, %.noexc2.i.i163 ] ; 2 uses
  %i.hu = load ptr, ptr %.sroa.09.013.i.i.i.i.i160, align 8, !tbaa !129 ; 2 uses
  %i.hv = load i8, ptr %i.hq, align 8             ; 2 uses
  %i.hw = trunc i8 %i.hv to i1                    ; 2 uses
  %i.hx = load ptr, ptr %i.hr, align 8
  %i.hy = select i1 %i.hw, ptr %i.hx, ptr %i.hs
  %i.hz = load i64, ptr %i.ht, align 8
  %i.ia = lshr i8 %i.hv, 1
  %i.ib = zext nneg i8 %i.ia to i64
  %i.ic = select i1 %i.hw, i64 %i.hz, i64 %i.ib
  %i.id = load ptr, ptr %i.hu, align 8, !tbaa !93
  %i.ie = load ptr, ptr %i.id, align 8
  invoke void %i.ie(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, ptr %i.hy, i64 %i.ic, i32 noundef 8, ptr nonnull @.str.60, i64 36)
          to label %.noexc2.i.i163 unwind label %.from..loopexit.i.i161, !inline_history !0

.noexc2.i.i163:                                   ; preds = %.from..noexc2.i.i163
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i160, i64 16 ; 2 uses
  %.not.i.i.i.i.i164 = icmp eq ptr %i.if, %i.hp
  br i1 %.not.i.i.i.i.i164, label %_ZN3tev5Latch9countDownEv.exit.i152, label %.from..noexc2.i.i163

.from..loopexit.i.i161:                           ; preds = %.from..noexc2.i.i163
  %lpad.loopexit.i.i162 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ah

.from..loopexit.split-lp.i.i153:                  ; preds = %bb.af
  %lpad.loopexit.split-lp.i.i154 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ah

bb.ah:                                            ; preds = %.from..loopexit.split-lp.i.i153, %.from..loopexit.i.i161
  %lpad.phi.i.i155 = phi { ptr, i32 } [ %lpad.loopexit.i.i162, %.from..loopexit.i.i161 ], [ %lpad.loopexit.split-lp.i.i154, %.from..loopexit.split-lp.i.i153 ]
  %i.ig = extractvalue { ptr, i32 } %lpad.phi.i.i155, 0
  call void @__clang_call_terminate(ptr %i.ig) #46
  unreachable

_ZN3tev5Latch9countDownEv.exit.i152:              ; preds = %.noexc2.i.i163, %bb.ae
  %i.ih = icmp slt i32 %i.hg, 2
  br i1 %i.ih, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i152, %bb.ag, %.noexc.i.i156
  %i.ii = load ptr, ptr %i.hd, align 8, !tbaa !100
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !102 ; 2 uses
  %i.ik = inttoptr i64 %i.ij to ptr               ; 3 uses
  store ptr %i.ik, ptr %.reload.addr431, align 16
  %.not.i165 = icmp eq i64 %i.ij, 0
  br i1 %.not.i165, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit
  store ptr null, ptr %0, align 16
  store i8 2, ptr %index.addr, align 4
  %i.il = load ptr, ptr %i.ik, align 8
  musttail call void %i.il(ptr nonnull %i.ik)
  ret void

bb.aj:                                            ; preds = %bb.ac
  %i.im = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.am unwind label %bb.an

.from.412:                                        ; preds = %bb.ad
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i152, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ip = load ptr, ptr %i.io, align 16, !tbaa !101 ; 5 uses
  %.not.i.i166 = icmp eq ptr %i.ip, null
  br i1 %.not.i.i166, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = atomicrmw add ptr %i.iq, i64 -1 acq_rel, align 8
  %i.is = icmp eq i64 %i.ir, 0
  br i1 %i.is, label %bb.al, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

bb.al:                                            ; preds = %bb.ak
  %i.it = load ptr, ptr %i.ip, align 8, !tbaa !93
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(24) %i.ip) #41, !inline_history !28
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ip) #41
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit: ; preds = %bb.al, %bb.ak, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  call void @_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr433) #41
  call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 320) #41
  ret void

bb.am:                                            ; preds = %bb.aj, %.from.412
  %.pn84 = phi { ptr, i32 } [ %i.in, %.from.412 ], [ %i.im, %bb.aj ]
  store ptr null, ptr %0, align 16
  store i8 2, ptr %index.addr, align 4
  resume { ptr, i32 } %.pn84

bb.an:                                            ; preds = %bb.aj, %.from..split221374
  %i.iw = landingpad { ptr, i32 }
          catch ptr null
  %i.ix = extractvalue { ptr, i32 } %i.iw, 0
  call void @__clang_call_terminate(ptr %i.ix) #46
  unreachable

bb.ao:                                            ; preds = %bb.t
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK3tev16DicomImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.destroy(ptr noundef nonnull align 16 dereferenceable(320) %0) #9 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %1 = alloca %"class.std::__1::vector<tev::DicomImageData>::__destroy_vector", align 8 ; 4 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 212
  %index = load i8, ptr %index.addr, align 4
  %i.a = icmp eq i8 %index, 2
  br i1 %i.a, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread, label %.thread223, !prof !4998

.thread223:                                       ; preds = %resume.entry
  %.reload.addr427 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.reload.addr423 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.reload.addr422 = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskINSt3__16vectorINS_14DicomImageDataENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr423) #41
  tail call void @_ZN4gdcm11ImageReaderD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.reload.addr422) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  store ptr %.reload.addr427, ptr %1, align 8, !tbaa !366
  call void @_ZNSt3__16vectorIN3tev14DicomImageDataENS_9allocatorIS2_EEE16__destroy_vectorclB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread: ; preds = %resume.entry, %.thread223
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !101 ; 5 uses
  %.not.i.i166 = icmp eq ptr %i.c, null
  br i1 %.not.i.i166, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = atomicrmw add ptr %i.d, i64 -1 acq_rel, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !93
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #41, !inline_history !28
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #41
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %.reload.addr433 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr433) #41
  call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 320) #41
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.rint.v4f32(<4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.rint.v2f32(<2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.copysign.v2f32(<2 x float>, <2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind memory(none) }
attributes #18 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #28 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #31 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #36 = { inlinehint mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { inlinehint mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { inlinehint mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { nounwind }
attributes #42 = { noreturn }
attributes #43 = { builtin allocsize(0) }
attributes #44 = { builtin nounwind }
attributes #45 = { allocsize(0) }
attributes #46 = { noreturn nounwind }
attributes #47 = { nounwind allocsize(0) }

!llvm.module.flags = !{!79, !80, !81, !82}
!llvm.ident = !{!83}
!llvm.errno.tbaa = !{!88}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{ptr @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev, null, null, null}
!3 = distinct !{null, null, null}
!4 = distinct !{!4, !172}
!5 = distinct !{ptr @_ZN3tev11TaskPromiseINS_4TaskIbEEbED2Ev, null, null, null}
!6 = distinct !{ptr @_ZN3tev13AttributeNodeD2Ev, null, ptr @_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEED2B8ne180100Ev, null}
!7 = distinct !{ptr @_ZN3tev13AttributeNodeD2Ev, null, ptr @_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEED2B8ne180100Ev}
!8 = distinct !{ptr @_ZN4gdcm12SmartPointerINS_15SequenceOfItemsEED2Ev, null, null}
!9 = distinct !{!9, !172}
!10 = distinct !{!10, !172}
!11 = distinct !{null}
!12 = distinct !{null, null, null, null, null, null}
!13 = distinct !{null, null, null, null, null, ptr @_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev, null, null}
!14 = distinct !{ptr @_ZN4gdcm12SmartPointerINS_6BitmapEED2Ev, null, null}
!15 = distinct !{ptr @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_14DicomImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev, null, null, null}
!16 = distinct !{null}
!17 = distinct !{null, null, null, null, null, null}
!18 = distinct !{ptr @_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE13__move_assignERS5_NS_17integral_constantIbLb1EEE, null, null, null, null, null, null, null, ptr @_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev, null, null}
!19 = distinct !{null}
!20 = distinct !{null, null, null, null, null, null}
!21 = distinct !{ptr @_ZN3tev11TaskPromiseINS_4TaskINS_9ImageDataEEES2_ED2Ev, null, null, null}
!22 = distinct !{null}
!23 = distinct !{null, null, null, null, null, null}
!24 = distinct !{null}
!25 = distinct !{null, null, null, null, null, null}
!26 = distinct !{ptr @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS3_INS_14DicomImageDataENS2_9allocatorIS4_EEEENS5_IS7_EEEEEES9_ED2Ev, null, null, null}
!27 = distinct !{!27, !172}
!28 = distinct !{ptr @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev, null, null, null}
!29 = distinct !{null, null}
!30 = distinct !{!30, !172}
!31 = distinct !{null, null, null, null, null, ptr @_ZNSt3__110shared_ptrIN4tlog7IOutputEED2B8ne180100Ev, null, null}
!32 = distinct !{null}
!33 = distinct !{null, null}
!34 = distinct !{!34, !172}
!35 = distinct !{!35, !172}
!36 = distinct !{!36, !172}
!37 = distinct !{null, null}
!38 = distinct !{null, null, null}
!39 = distinct !{null, null}
!40 = distinct !{!40, !172}
!41 = distinct !{!41, !172}
!42 = distinct !{!42, !172}
!43 = distinct !{!43, !172}
!44 = distinct !{null, null}
!45 = distinct !{null, null}
!46 = distinct !{!46, !172}
!47 = distinct !{null}
!48 = distinct !{null}
!49 = distinct !{!49, !172}
!50 = distinct !{!50, !172}
!51 = distinct !{!51, !172}
!52 = distinct !{null, null, null, null}
!53 = distinct !{!53, !172}
!54 = distinct !{null, null}
!55 = distinct !{null}
!56 = distinct !{null, null}
!57 = distinct !{!57, !172}
!58 = distinct !{!58, !172}
!59 = distinct !{!59, !172}
!60 = distinct !{null}
!61 = distinct !{null, null, null, null}
!62 = distinct !{null, null, null}
!63 = distinct !{null}
!64 = distinct !{!64, !172}
!65 = distinct !{!65, !172}
!66 = distinct !{null, null, null, null}
!67 = distinct !{null, null, null, null, null}
!68 = distinct !{null}
!69 = distinct !{null, null}
!70 = distinct !{null}
!71 = distinct !{null, null, null}
!72 = distinct !{ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!73 = distinct !{null, null, ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!74 = distinct !{!74, !172, !457}
!75 = distinct !{null}
!76 = distinct !{!76, !172}
!77 = distinct !{null}
!78 = distinct !{null}
!79 = !{i32 1, !"long-double-type", !"x86_fp80"}
!80 = !{i32 8, !"PIC Level", i32 2}
!81 = !{i32 7, !"PIE Level", i32 2}
!82 = !{i32 7, !"uwtable", i32 2}
!83 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!84 = !{!"Simple C++ TBAA"}
!85 = !{!"omnipotent char", !84, i64 0}
!86 = !{!"int", !85, i64 0}
!87 = !{!"__libc_errno", !86, i64 0}
!88 = !{!87, !86, i64 0}
!89 = !{!"float", !85, i64 0}
!90 = !{!89, !89, i64 0}
!91 = !{!85, !85, i64 0}
!92 = !{!"vtable pointer", !84, i64 0}
!93 = !{!92, !92, i64 0}
!94 = !{!"_ZTSNSt3__122__cxx_atomic_base_implIiEE", !85, i64 0}
!95 = !{!94, !85, i64 0}
!96 = !{!"any pointer", !85, i64 0}
!97 = !{!"p1 _ZTSN3tev15TaskSharedStateE", !96, i64 0}
!98 = !{!"p1 _ZTSNSt3__119__shared_weak_countE", !96, i64 0}
!99 = !{!"_ZTSNSt3__110shared_ptrIN3tev15TaskSharedStateEEE", !97, i64 0, !98, i64 8}
!100 = !{!99, !97, i64 0}
!101 = !{!99, !98, i64 8}
!102 = !{!96, !96, i64 0}
!103 = !{!"p1 _ZTSNSt3__117__assoc_sub_stateE", !96, i64 0}
!104 = !{!"_ZTSNSt3__16futureIvEE", !103, i64 0}
!105 = !{!104, !103, i64 0}
!106 = !{!"p1 _ZTSN3tev11ChannelViewIfEE", !96, i64 0}
!107 = !{!"long", !85, i64 0}
!108 = !{!"_ZTSN3gch6detail22small_vector_data_baseIPN3tev11ChannelViewIfEEmEE", !106, i64 0, !107, i64 8, !107, i64 16}
!109 = !{!108, !107, i64 16}
!110 = !{!108, !106, i64 0}
!111 = !{!108, !107, i64 8}
!112 = !{!"p1 _ZTSN4tlog6LoggerE", !96, i64 0}
!113 = !{!112, !112, i64 0}
!114 = !{!"_ZTSN4tlog9ESeverityE", !85, i64 0}
!115 = !{!"p1 _ZTSNSt3__110shared_ptrIN4tlog7IOutputEEE", !96, i64 0}
!116 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_10shared_ptrIN4tlog7IOutputEEELi0ELb0EEE", !115, i64 0}
!117 = !{!"_ZTSNSt3__117__compressed_pairIPNS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEEE", !116, i64 0}
!118 = !{!"_ZTSNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEEE", !115, i64 0, !115, i64 8, !117, i64 16}
!119 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repE", !85, i64 0}
!120 = !{!"_ZTSNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEE", !119, i64 0}
!121 = !{!"_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE", !120, i64 0}
!122 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !121, i64 0}
!123 = !{!"_ZTSN4tlog6LoggerE", !114, i64 0, !118, i64 8, !122, i64 32}
!124 = !{!123, !114, i64 0}
!125 = !{!118, !115, i64 0}
!126 = !{!118, !115, i64 8}
!127 = !{!"p1 _ZTSN4tlog7IOutputE", !96, i64 0}
!128 = !{!"_ZTSNSt3__110shared_ptrIN4tlog7IOutputEEE", !127, i64 0, !98, i64 8}
!129 = !{!128, !127, i64 0}
!130 = !{!"_ZTSNSt3__116coroutine_handleIN3tev11TaskPromiseINS1_4TaskIvEEvEEEE", !96, i64 0}
!131 = !{!130, !96, i64 0}
!132 = !{!"p1 omnipotent char", !96, i64 0}
!133 = !{!132, !132, i64 0}
!134 = !{!107, !107, i64 0}
!135 = !{!86, !86, i64 0}
!136 = !{!"_ZTSNSt3__14spanIKhLm18446744073709551615EEE", !132, i64 0, !107, i64 8}
!137 = !{!"bool", !85, i64 0}
!138 = !{!137, !137, i64 0}
!139 = !{!"branch_weights", i32 1, i32 1048575}
!140 = !{!"p1 long", !96, i64 0}
!141 = !{!140, !140, i64 0}
!142 = !{!"_ZTSNSt3__14spanIKaLm18446744073709551615EEE", !132, i64 0, !107, i64 8}
!143 = !{!"p1 short", !96, i64 0}
!144 = !{!143, !143, i64 0}
!145 = !{!"_ZTSNSt3__14spanIKtLm18446744073709551615EEE", !143, i64 0, !107, i64 8}
!146 = !{!"_ZTSNSt3__14spanIKsLm18446744073709551615EEE", !143, i64 0, !107, i64 8}
end_hunk_1
