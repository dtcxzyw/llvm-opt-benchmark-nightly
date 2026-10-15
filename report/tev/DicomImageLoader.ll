Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/DicomImageLoader?download=true
inline.NumInlined: 15066
inline.NumDeleted: 4736
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 140
begin_hunk_0_@_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS_15simdParallelForITkNS2_8integralEmZNS_10yCbCrToRgbILb1EEENS_4TaskIvEENS_16MultiChannelViewIfEEiPKfSC_EUlTymE_EES8_RS0_S4_S4_mT0_iEUlmmE_EES8_S4_S4_mSF_iENKUlvE_clEv:.from.
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
  %i.h = phi ptr [ %.pre, %.lr.ph14 ], [ %i.av, %_ZZN3tev10yCbCrToRgbILb1EEENS_4TaskIvEENS_16MultiChannelViewIfEEiPKfS6_ENKUlTymE_clIfEEDam.exit ]
  %.113 = phi i64 [ %.0.lcssa, %.lr.ph14 ], [ %i.br, %_ZZN3tev10yCbCrToRgbILb1EEENS_4TaskIvEENS_16MultiChannelViewIfEEiPKfS6_ENKUlTymE_clIfEEDam.exit ] ; 7 uses
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
  %4 = load float, ptr %i.af, align 4, !tbaa !90
  %5 = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %6 = load float, ptr %5, align 4, !tbaa !90
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load float, ptr %i.n, align 4, !tbaa !90 ; 3 uses
  %i.ai = load <2 x float>, ptr %i.ad, align 4, !tbaa !90
  %i.aj = insertelement <2 x float> poison, float %i.u, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.ab, i64 1
  %i.al = fsub <2 x float> %i.ak, %i.ai           ; 3 uses
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %7 = extractelement <2 x float> %i.al, i64 1
  %8 = call float @llvm.fmuladd.f32(float %4, float %7, float %i.ah)
  %9 = extractelement <2 x float> %i.al, i64 0
  %10 = call float @llvm.fmuladd.f32(float %6, float %9, float %i.ah)
  %i.an = load <2 x float>, ptr %i.ag, align 4, !tbaa !90
  %11 = insertelement <2 x float> poison, float %10, i64 0
  %i.ao = insertelement <2 x float> %11, float %i.ah, i64 1
  %i.ap = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.am, <2 x float> %i.ao) ; 2 uses
  %.sroa.0.0.vec.insert.i13.i = insertelement <2 x float> poison, float %8, i64 0
  %i.aq = shufflevector <2 x float> %.sroa.0.0.vec.insert.i13.i, <2 x float> %i.ap, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.aq, ptr %3, align 8
  %i.ar = extractelement <2 x float> %i.ap, i64 1
  store float %i.ar, ptr %.sroa.211.0..sroa_idx.i, align 8, !tbaa !91
  %i.as = invoke { <2 x float>, float } @_ZN3tev8ituth27318invTransferRgbImplILNS0_9ETransferE13EfEEN7nanogui5ArrayIT0_Lm3EEENSt3__117integral_constantIS2_XT_EEERKS6_(ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %_ZZN3tev10yCbCrToRgbILb1EEENS_4TaskIvEENS_16MultiChannelViewIfEEiPKfS6_ENKUlTymE_clIfEEDam.exit unwind label %bb.c ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #46
  unreachable

_ZZN3tev10yCbCrToRgbILb1EEENS_4TaskIvEENS_16MultiChannelViewIfEEiPKfS6_ENKUlTymE_clIfEEDam.exit: ; preds = %bb.b
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.as, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.as, 1
  store <2 x float> %.fca.0.extract.i, ptr %3, align 8
  store float %.fca.1.extract.i, ptr %.sroa.211.0..sroa_idx.i, align 8, !tbaa !91
  %i.av = load ptr, ptr %2, align 8, !tbaa !705, !nonnull !203, !align !219 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !110 ; 6 uses
  %i.ax = extractelement <2 x float> %.fca.0.extract.i, i64 0
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !686
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !687
  %i.bb = mul i64 %i.ba, %.113
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bb
  store float %i.ax, ptr %i.bc, align 4, !tbaa !90
  %i.bd = load float, ptr %i.e, align 4, !tbaa !90
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !686
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !687
  %i.bi = mul i64 %i.bh, %.113
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bi
  store float %i.bd, ptr %i.bj, align 4, !tbaa !90
  %i.bk = load float, ptr %.sroa.211.0..sroa_idx.i, align 8, !tbaa !90
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !686
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !687
  %i.bp = mul i64 %i.bo, %.113
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bp
  store float %i.bk, ptr %i.bq, align 4, !tbaa !90
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.br = add i64 %.113, 1                        ; 2 uses
  %exitcond.not = icmp eq i64 %i.br, %1
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
end_hunk_0
