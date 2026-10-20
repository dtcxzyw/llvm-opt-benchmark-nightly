Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImageCanvas?download=true
inline.NumInlined: 10055
inline.NumDeleted: 3878
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 118
begin_hunk_0_@"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_11ImageCanvas23computeCanvasStatisticsENS2_10shared_ptrINS_5ImageEEES9_NS2_17basic_string_viewIcNS2_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS2_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiE3$_5EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESS_S4_S4_mST_iENKUlvE_clEv":.from.
  br label %.from..noexc2.i.i23

.from..noexc2.i.i23:                              ; preds = %.noexc2.i.i23, %.from..lr.ph.i.i.i.i.i21
  %.sroa.09.013.i.i.i.i.i22 = phi ptr [ %i.bx, %.from..lr.ph.i.i.i.i.i21 ], [ %i.cp, %.noexc2.i.i23 ] ; 2 uses
  %i.ce = load ptr, ptr %.sroa.09.013.i.i.i.i.i22, align 8, !tbaa !288 ; 2 uses
  %i.cf = load i8, ptr %i.ca, align 8             ; 2 uses
  %i.cg = trunc i8 %i.cf to i1                    ; 2 uses
  %i.ch = load ptr, ptr %i.cb, align 8
  %i.ci = select i1 %i.cg, ptr %i.ch, ptr %i.cc
  %i.cj = load i64, ptr %i.cd, align 8
  %i.ck = lshr i8 %i.cf, 1
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = select i1 %i.cg, i64 %i.cj, i64 %i.cl
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !78
  %i.co = load ptr, ptr %i.cn, align 8
  invoke void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr %i.ci, i64 %i.cm, i32 noundef 8, ptr nonnull @.str.117, i64 36)
          to label %.noexc2.i.i23 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i16.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3

.noexc2.i.i23:                                    ; preds = %.from..noexc2.i.i23
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i22, i64 16 ; 2 uses
  %.not.i.i.i.i.i24 = icmp eq ptr %i.cp, %i.bz
  br i1 %.not.i.i.i.i.i24, label %_ZN3tev5Latch9countDownEv.exit.i15, label %.from..noexc2.i.i23

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i16.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.from..noexc2.i.i23, %bb.p
  %lpad.loopexit.split-lp94 = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %lpad.loopexit.split-lp94, 0
  call void @__clang_call_terminate(ptr %i.cq) #52
  unreachable

_ZN3tev5Latch9countDownEv.exit.i15:               ; preds = %.noexc2.i.i23, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cr = icmp slt i32 %i.bq, 2
  br i1 %i.cr, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i18, %bb.q, %_ZN3tev5Latch9countDownEv.exit.i15
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !297
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !245 ; 2 uses
  %i.cu = inttoptr i64 %i.ct to ptr               ; 3 uses
  store ptr %i.cu, ptr %.reload.addr, align 8
  %.not.i25 = icmp eq i64 %i.ct, 0
  br i1 %.not.i25, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend48

AfterCoroSuspend48:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr74 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 1, ptr %index.addr74, align 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr nonnull %i.cu)
  br label %AfterCoroEnd

bb.r:                                             ; preds = %bb.n
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.69 unwind label %bb.u

.from.65:                                         ; preds = %bb.o
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.69

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i15
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !298 ; 5 uses
  %.not.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = atomicrmw add ptr %i.cz, i64 -1 acq_rel, align 8
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.t, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.t:                                             ; preds = %bb.s
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !78
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #47, !inline_history !22
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #47
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.s, %bb.t
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr72) #47
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #47
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend48, %AfterCoroSave
  ret void

.body.from.69:                                    ; preds = %bb.r, %.from.65
  %.pn9 = phi { ptr, i32 } [ %i.cx, %.from.65 ], [ %i.cw, %bb.r ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #47
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr72) #47
  br label %.body

.body:                                            ; preds = %.body.from.69, %.body.from.67, %.body.from.
  %.merged11 = phi { ptr, i32 } [ %.pn9, %.body.from.69 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.67 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #47
  resume { ptr, i32 } %.merged11

bb.u:                                             ; preds = %bb.r
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #52
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_11ImageCanvas23computeCanvasStatisticsENS2_10shared_ptrINS_5ImageEEES8_NS2_17basic_string_viewIcNS2_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS2_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiE3$_5EENS_4TaskIvEES4_S4_mT0_iENKUliiE_clEii"(ptr dead_on_unwind nofree writable writeonly sret(%"class.tev::Task.237") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #38 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future.239", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #51 ; 11 uses
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_11ImageCanvas23computeCanvasStatisticsENS2_10shared_ptrINS_5ImageEEES8_NS2_17basic_string_viewIcNS2_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS2_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiE3$_5EENS_4TaskIvEES4_S4_mT0_iENKUliiE_clEii.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_11ImageCanvas23computeCanvasStatisticsENS2_10shared_ptrINS_5ImageEEES8_NS2_17basic_string_viewIcNS2_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS2_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiE3$_5EENS_4TaskIvEES4_S4_mT0_iENKUliiE_clEii.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.reload.addr70 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr70)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2385)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #48
          to label %bb.a unwind label %.body.from.64 ; 5 uses

.body.from.64:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr70) #47
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !2386
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !78, !noalias !2386
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !2386
  store i32 2, ptr %i.g, align 8, !tbaa !294, !noalias !2386
  store ptr %i.f, ptr %i.d, align 8, !tbaa !297, !alias.scope !2387
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !298, !alias.scope !2387
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2388)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47, !noalias !2388
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.239") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr70)
          to label %bb.b unwind label %bb.d, !noalias !2388

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !245, !alias.scope !2388
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !452, !noalias !2388
  store ptr %i.j, ptr %i.i, align 8, !tbaa !452, !alias.scope !2388
  store ptr null, ptr %4, align 8, !tbaa !452, !noalias !2388
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !298, !noalias !2388 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !245, !noalias !2388
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !245, !alias.scope !2388
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !2388 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #52, !noalias !2388
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #47, !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47, !noalias !2388
  %i.s = icmp slt i32 %2, %3
  br i1 %i.s, label %.from..lr.ph, label %._crit_edge

.from..lr.ph:                                     ; preds = %bb.e
  %i.t = load ptr, ptr %1, align 8, !tbaa !2390, !nonnull !199, !align !274 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2392, !nonnull !199, !align !274
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2393, !nonnull !199, !align !289 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !204
  %.val.i = load ptr, ptr %i.u, align 8, !tbaa !431
  %i.z = load i32, ptr %i.w, align 4, !tbaa !204  ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !204 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2394, !nonnull !199, !align !274 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2395, !nonnull !199, !align !274 ; 2 uses
  %i.ag = add i32 %i.z, 4                         ; 2 uses
  %.not18.i.i = icmp sgt i32 %i.ag, %i.ab
  %i.ah = sext i32 %i.z to i64                    ; 2 uses
  %i.ai = add nsw i64 %i.ah, 4
  %i.aj = sext i32 %i.ab to i64                   ; 2 uses
  %i.ak = add i32 %i.z, 8
  %i.al = add i32 %i.ab, 1
  %i.am = sext i32 %2 to i64
  %i.an = sext i32 %i.y to i64
  %wide.trip.count = sext i32 %3 to i64
  %smax.i.i = call i32 @llvm.smax.i32(i32 %i.ak, i32 %i.al)
  %reass.sub73 = sub i32 %smax.i.i, %i.z
  %.reass = add i32 %reass.sub73, -5
  %i.ao = and i32 %.reass, -4
  %i.ap = add i32 %i.ao, %i.ag
  br label %bb.g

._crit_edge:                                      ; preds = %"_ZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_5clEi.exit", %bb.e
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr70)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #52
  unreachable

bb.g:                                             ; preds = %"_ZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_5clEi.exit", %.from..lr.ph
  %indvars.iv = phi i64 [ %i.am, %.from..lr.ph ], [ %indvars.iv.next, %"_ZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_5clEi.exit" ] ; 4 uses
  %i.as = sub nsw i64 %indvars.iv, %i.an
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %i.as ; 8 uses
  br i1 %.not18.i.i, label %.preheader.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.au = load i64, ptr %i.ad, align 8, !tbaa !216 ; 2 uses
  %.not.i.i.i20 = icmp eq i64 %i.au, 0
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 12 ; 2 uses
  br i1 %.not.i.i.i20, label %.preheader.i.i, label %.lr.ph.i.i.i.from..lr.ph.split.i.i

.lr.ph.i.i.i.from..lr.ph.split.i.i:               ; preds = %.lr.ph.i.i
  %i.ax = load ptr, ptr %i.af, align 8, !tbaa !389
  %.promoted.i.i = load double, ptr %i.at, align 8, !tbaa !438
  %.promoted21.i.i = load float, ptr %i.av, align 8, !tbaa !76
  %.promoted23.i.i = load float, ptr %i.aw, align 4, !tbaa !76
  br label %.from..lr.ph.i.i.i

.preheader.i.i.from...preheader_crit_edge.split.i.i: ; preds = %._crit_edge.i.i.i
  %i.ay = trunc nsw i64 %indvars.iv.i.i to i32
  store double %i.ct, ptr %i.at, align 8, !tbaa !438
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %bb.g, %.preheader.i.i.from...preheader_crit_edge.split.i.i
  %.0.lcssa.i.i = phi i32 [ %i.z, %bb.g ], [ %i.ay, %.preheader.i.i.from...preheader_crit_edge.split.i.i ], [ %i.ap, %.lr.ph.i.i ] ; 2 uses
  %i.az = icmp slt i32 %.0.lcssa.i.i, %i.ab
  br i1 %i.az, label %.lr.ph26.i.i, label %"_ZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_5clEi.exit"

.lr.ph26.i.i:                                     ; preds = %.preheader.i.i
  %i.ba = load i64, ptr %i.ad, align 8, !tbaa !216 ; 2 uses
  %.not.i11.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i11.i.i, label %"_ZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_5clEi.exit", label %.lr.ph.i12.i.i.from..lr.ph26.split.i.i

.lr.ph.i12.i.i.from..lr.ph26.split.i.i:           ; preds = %.lr.ph26.i.i
  %i.bb = load ptr, ptr %i.af, align 8, !tbaa !389
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 12 ; 2 uses
  %.promoted27.i.i = load double, ptr %i.at, align 8, !tbaa !438
  %.promoted29.i.i = load float, ptr %i.bc, align 8, !tbaa !76
  %.promoted31.i.i = load float, ptr %i.bd, align 4, !tbaa !76
  %i.be = sext i32 %.0.lcssa.i.i to i64
  br label %.from..lr.ph.i12.i.i

.from..lr.ph.i.i.i:                               ; preds = %._crit_edge.i.i.i, %.lr.ph.i.i.i.from..lr.ph.split.i.i
  %indvars.iv36.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i.from..lr.ph.split.i.i ], [ %indvars.iv.next37.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i.from..lr.ph.split.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.sroa.speculated.i24.i.i = phi float [ %.promoted23.i.i, %.lr.ph.i.i.i.from..lr.ph.split.i.i ], [ %.sroa.speculated.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.speculated14.i22.i.i = phi float [ %.promoted21.i.i, %.lr.ph.i.i.i.from..lr.ph.split.i.i ], [ %.sroa.speculated14.i.i.i, %._crit_edge.i.i.i ]
  %.lcssa1720.i.i = phi double [ %.promoted.i.i, %.lr.ph.i.i.i.from..lr.ph.split.i.i ], [ %i.ct, %._crit_edge.i.i.i ]
  %i.bf = shl nsw i64 %indvars.iv36.i.i, 32       ; 3 uses
  %i.bg = add i64 %i.bf, 4294967296
  %i.bh = ashr exact i64 %i.bg, 32
  %i.bi = add i64 %i.bf, 8589934592
  %i.bj = ashr exact i64 %i.bi, 32
  %i.bk = add i64 %i.bf, 12884901888
  %i.bl = ashr exact i64 %i.bk, 32
  br label %.from.52

._crit_edge.i.i.i:                                ; preds = %.from.52
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %.not.i.i = icmp sgt i64 %indvars.iv.next.i.i, %i.aj
  %indvars.iv.next37.i.i = add nsw i64 %indvars.iv36.i.i, 4
  br i1 %.not.i.i, label %.preheader.i.i.from...preheader_crit_edge.split.i.i, label %.from..lr.ph.i.i.i, !llvm.loop !2379

.from.52:                                         ; preds = %.from.52, %.from..lr.ph.i.i.i
  %.sroa.speculated78.i.i.i = phi float [ %.sroa.speculated.i24.i.i, %.from..lr.ph.i.i.i ], [ %.sroa.speculated.i.i.i, %.from.52 ] ; 2 uses
  %.sroa.speculated1476.i.i.i = phi float [ %.sroa.speculated14.i22.i.i, %.from..lr.ph.i.i.i ], [ %.sroa.speculated14.i.i.i, %.from.52 ] ; 2 uses
  %i.bm = phi double [ %.lcssa1720.i.i, %.from..lr.ph.i.i.i ], [ %i.ct, %.from.52 ]
  %.074.i.i.i = phi i64 [ 0, %.from..lr.ph.i.i.i ], [ %i.di, %.from.52 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %.074.i.i.i ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !204
  %i.bq = sext i32 %i.bp to i64
  %i.br = mul nsw i64 %indvars.iv, %i.bq          ; 4 uses
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !659 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !660 ; 4 uses
  %i.bv = add nsw i64 %i.br, %indvars.iv36.i.i
  %i.bw = mul i64 %i.bv, %i.bu
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bw
  %i.by = load float, ptr %i.bx, align 4, !tbaa !76
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <4 x float> poison, float %i.by, i64 0
  %i.bz = add nsw i64 %i.br, %i.bh
  %i.ca = mul i64 %i.bz, %i.bu
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.ca
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !76
  %.sroa.0.4.vec.insert.i.i.i.i = insertelement <4 x float> %.sroa.0.0.vec.insert.i.i.i.i, float %i.cc, i64 1
  %i.cd = add nsw i64 %i.br, %i.bj
  %i.ce = mul i64 %i.cd, %i.bu
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.ce
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !76
  %.sroa.0.8.vec.insert.i.i.i.i = insertelement <4 x float> %.sroa.0.4.vec.insert.i.i.i.i, float %i.cg, i64 2
  %i.ch = add nsw i64 %i.br, %i.bl
  %i.ci = mul i64 %i.ch, %i.bu
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !76
  %.sroa.0.12.vec.insert.i.i.i.i = insertelement <4 x float> %.sroa.0.8.vec.insert.i.i.i.i, float %i.ck, i64 3 ; 5 uses
  %i.cl = fsub <4 x float> %.sroa.0.12.vec.insert.i.i.i.i, %.sroa.0.12.vec.insert.i.i.i.i
  %i.cm = fcmp une <4 x float> %i.cl, zeroinitializer ; 3 uses
  %i.cn = select <4 x i1> %i.cm, <4 x float> zeroinitializer, <4 x float> %.sroa.0.12.vec.insert.i.i.i.i ; 2 uses
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cp = shufflevector <4 x float> %i.cn, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.cq = fadd <2 x float> %i.co, %i.cp
  %i.cr = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cq)
  %i.cs = fpext float %i.cr to double
  %i.ct = fadd double %i.bm, %i.cs                ; 3 uses
  %i.cu = select <4 x i1> %i.cm, <4 x float> splat (float -inf), <4 x float> %.sroa.0.12.vec.insert.i.i.i.i ; 2 uses
  %i.cv = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.cw = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cu, <4 x float> %i.cv) ; 2 uses
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cy = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cw, <4 x float> %i.cx)
  %i.cz = extractelement <4 x float> %i.cy, i64 0 ; 2 uses
  %i.da = fcmp olt float %.sroa.speculated1476.i.i.i, %i.cz
  %.sroa.speculated14.i.i.i = select i1 %i.da, float %i.cz, float %.sroa.speculated1476.i.i.i ; 3 uses
  store float %.sroa.speculated14.i.i.i, ptr %i.av, align 8, !tbaa !2396
  %i.db = select <4 x i1> %i.cm, <4 x float> splat (float +inf), <4 x float> %.sroa.0.12.vec.insert.i.i.i.i ; 2 uses
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.dd = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.db, <4 x float> %i.dc) ; 2 uses
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.df = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.dd, <4 x float> %i.de)
  %i.dg = extractelement <4 x float> %i.df, i64 0 ; 2 uses
  %i.dh = fcmp olt float %i.dg, %.sroa.speculated78.i.i.i
  %.sroa.speculated.i.i.i = select i1 %i.dh, float %i.dg, float %.sroa.speculated78.i.i.i ; 3 uses
  store float %.sroa.speculated.i.i.i, ptr %i.aw, align 4, !tbaa !2397
  %i.di = add nuw i64 %.074.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.di, %i.au
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.from.52, !llvm.loop !2380

.from..lr.ph.i12.i.i:                             ; preds = %._crit_edge.i16.i.i, %.lr.ph.i12.i.i.from..lr.ph26.split.i.i
  %indvars.iv41.i.i = phi i64 [ %i.be, %.lr.ph.i12.i.i.from..lr.ph26.split.i.i ], [ %indvars.iv.next42.i.i, %._crit_edge.i16.i.i ] ; 2 uses
  %.sroa.speculated7.i32.i.i = phi float [ %.promoted31.i.i, %.lr.ph.i12.i.i.from..lr.ph26.split.i.i ], [ %.sroa.speculated7.i.i.i, %._crit_edge.i16.i.i ]
  %.sroa.speculated13.i30.i.i = phi float [ %.promoted29.i.i, %.lr.ph.i12.i.i.from..lr.ph26.split.i.i ], [ %.sroa.speculated13.i.i.i, %._crit_edge.i16.i.i ]
  %.lcssa28.i.i = phi double [ %.promoted27.i.i, %.lr.ph.i12.i.i.from..lr.ph26.split.i.i ], [ %i.dz, %._crit_edge.i16.i.i ]
  br label %.from.58

._crit_edge.i16.i.i:                              ; preds = %.from.58
  %indvars.iv.next42.i.i = add nsw i64 %indvars.iv41.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next42.i.i, %i.aj
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.from..lr.ph.i12.i.i, !llvm.loop !2381

.from.58:                                         ; preds = %.from.58, %.from..lr.ph.i12.i.i
  %.sroa.speculated723.i.i.i = phi float [ %.sroa.speculated7.i32.i.i, %.from..lr.ph.i12.i.i ], [ %.sroa.speculated7.i.i.i, %.from.58 ] ; 2 uses
  %.sroa.speculated1321.i.i.i = phi float [ %.sroa.speculated13.i30.i.i, %.from..lr.ph.i12.i.i ], [ %.sroa.speculated13.i.i.i, %.from.58 ] ; 2 uses
  %i.dj = phi double [ %.lcssa28.i.i, %.from..lr.ph.i12.i.i ], [ %i.dz, %.from.58 ]
  %.019.i.i.i = phi i64 [ 0, %.from..lr.ph.i12.i.i ], [ %i.ec, %.from.58 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.019.i.i.i ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !204
  %i.dn = sext i32 %i.dm to i64
  %i.do = mul nsw i64 %indvars.iv, %i.dn
  %i.dp = add nsw i64 %i.do, %indvars.iv41.i.i
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !659
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !660
  %i.dt = mul i64 %i.dp, %i.ds
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.dt
  %i.dv = load float, ptr %i.du, align 4, !tbaa !76 ; 4 uses
  %i.dw = call float @llvm.fabs.f32(float %i.dv)
  %i.dx = fcmp one float %i.dw, +inf              ; 3 uses
  %.sroa.speculated17.i.i.i = select i1 %i.dx, float %i.dv, float 0.000000e+00
  %i.dy = fpext float %.sroa.speculated17.i.i.i to double
  %i.dz = fadd double %i.dj, %i.dy                ; 3 uses
  %.sroa.speculated10.i.i.i = select i1 %i.dx, float %i.dv, float -inf ; 2 uses
  %i.ea = fcmp olt float %.sroa.speculated1321.i.i.i, %.sroa.speculated10.i.i.i
  %.sroa.speculated13.i.i.i = select i1 %i.ea, float %.sroa.speculated10.i.i.i, float %.sroa.speculated1321.i.i.i ; 3 uses
  store float %.sroa.speculated13.i.i.i, ptr %i.bc, align 8, !tbaa !2396
  %.sroa.speculated.i14.i.i = select i1 %i.dx, float %i.dv, float +inf ; 2 uses
  %i.eb = fcmp olt float %.sroa.speculated.i14.i.i, %.sroa.speculated723.i.i.i
  %.sroa.speculated7.i.i.i = select i1 %i.eb, float %.sroa.speculated.i14.i.i, float %.sroa.speculated723.i.i.i ; 3 uses
  store float %.sroa.speculated7.i.i.i, ptr %i.bd, align 4, !tbaa !2397
  %i.ec = add nuw i64 %.019.i.i.i, 1              ; 2 uses
end_hunk_0
begin_hunk_1_@"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNS_11ImageCanvas23computeCanvasStatisticsENS2_10shared_ptrINS_5ImageEEES9_NS2_17basic_string_viewIcNS2_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS2_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiE3$_9EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EESS_S4_S4_mST_iENKUlvE_clEv":.from.
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #52
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_11ImageCanvas23computeCanvasStatisticsENS2_10shared_ptrINS_5ImageEEES8_NS2_17basic_string_viewIcNS2_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS2_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiE3$_9EENS_4TaskIvEES4_S4_mT0_iENKUlmmE_clEmm"(ptr dead_on_unwind nofree writable writeonly sret(%"class.tev::Task.237") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #38 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future.239", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #51 ; 11 uses
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_11ImageCanvas23computeCanvasStatisticsENS2_10shared_ptrINS_5ImageEEES8_NS2_17basic_string_viewIcNS2_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS2_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiE3$_9EENS_4TaskIvEES4_S4_mT0_iENKUlmmE_clEmm.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_11ImageCanvas23computeCanvasStatisticsENS2_10shared_ptrINS_5ImageEEES8_NS2_17basic_string_viewIcNS2_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS2_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiE3$_9EENS_4TaskIvEES4_S4_mT0_iENKUlmmE_clEmm.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.reload.addr60 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr60)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2468)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #48
          to label %bb.a unwind label %.body.from.54 ; 5 uses

.body.from.54:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr60) #47
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !2469
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !78, !noalias !2469
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !2469
  store i32 2, ptr %i.g, align 8, !tbaa !294, !noalias !2469
  store ptr %i.f, ptr %i.d, align 8, !tbaa !297, !alias.scope !2470
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !298, !alias.scope !2470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2471)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47, !noalias !2471
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.239") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr60)
          to label %bb.b unwind label %bb.d, !noalias !2471

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !245, !alias.scope !2471
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !452, !noalias !2471
  store ptr %i.j, ptr %i.i, align 8, !tbaa !452, !alias.scope !2471
  store ptr null, ptr %4, align 8, !tbaa !452, !noalias !2471
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !298, !noalias !2471 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !245, !noalias !2471
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !245, !alias.scope !2471
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !2471 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #52, !noalias !2471
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #47, !noalias !2471
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47, !noalias !2471
  %i.s = icmp ult i64 %2, %3
  br i1 %i.s, label %.from..lr.ph, label %._crit_edge

.from..lr.ph:                                     ; preds = %bb.e
  %i.t = load ptr, ptr %1, align 8, !tbaa !2473, !nonnull !199, !align !274 ; 7 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2475, !nonnull !199, !align !274
  %i.v = load i64, ptr %i.u, align 8, !tbaa !216  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2476, !nonnull !199, !align !289 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !204  ; 3 uses
  %i.aa = load i32, ptr %i.x, align 4, !tbaa !204 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !204 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !204 ; 3 uses
  %i.af = sub nsw i32 %i.ac, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !2477, !nonnull !199, !align !274
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !216 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2478, !nonnull !199, !align !274
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !232
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2479, !nonnull !199, !align !274
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !389
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.ar = add nsw i32 %i.aa, 4
  %.not13.i.i = icmp sgt i32 %i.ar, %i.z
  %i.as = load float, ptr @_ZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiE8smallest, align 4 ; 3 uses
  %i.at = insertelement <4 x float> poison, float %i.as, i64 0
  %i.au = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.av = sext i32 %i.aa to i64                   ; 2 uses
  %i.aw = add nsw i64 %i.av, 4
  %i.ax = sext i32 %i.z to i64                    ; 2 uses
  %i.ay = call noundef i32 @llvm.smax.i32(i32 %i.af, i32 0)
  %i.az = zext nneg i32 %i.ay to i64              ; 2 uses
  br label %bb.g

._crit_edge:                                      ; preds = %"_ZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEm.exit", %bb.e
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr60)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #52
  unreachable

bb.g:                                             ; preds = %"_ZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEm.exit", %.from..lr.ph
  %.024 = phi i64 [ %2, %.from..lr.ph ], [ %i.kc, %"_ZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEm.exit" ] ; 4 uses
  %i.bc = urem i64 %.024, %i.v
  %i.bd = udiv i64 %.024, %i.v                    ; 2 uses
  %i.be = mul i64 %i.bd, %i.az
  %i.bf = udiv i64 %i.be, %i.ai
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = add i32 %i.ae, %i.bg                    ; 2 uses
  %i.bi = add nuw i64 %i.bd, 1
  %i.bj = mul i64 %i.bi, %i.az
  %i.bk = udiv i64 %i.bj, %i.ai
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = add nsw i32 %i.ae, %i.bl
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.ac, i32 %i.bm) ; 2 uses
  %.idx.i = mul i64 %.024, 1600
  %i.bn = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i ; 9 uses
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.bc ; 4 uses
  %i.bp = icmp slt i32 %i.bh, %.sroa.speculated.i
  br i1 %i.bp, label %.from..lr.ph.i, label %"_ZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEm.exit"

.from..lr.ph.i:                                   ; preds = %bb.g
  %i.bq = load ptr, ptr %i.ap, align 8, !tbaa !2480, !nonnull !199, !align !289 ; 3 uses
  %i.br = load ptr, ptr %i.aq, align 8, !tbaa !2481, !nonnull !199, !align !274 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bq, i64 4      ; 2 uses
  %i.bv = sext i32 %i.bh to i64
  %i.bw = sext i32 %.sroa.speculated.i to i64
  br label %bb.h

bb.h:                                             ; preds = %"_ZN3tev7simdForITkNSt3__18integralEiZZNS_11ImageCanvas23computeCanvasStatisticsENS1_10shared_ptrINS_5ImageEEES5_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmEUlTyiE_EEvT_SO_OT0_.exit.i", %.from..lr.ph.i
  %indvars.iv.i = phi i64 [ %i.bv, %.from..lr.ph.i ], [ %indvars.iv.next.i, %"_ZN3tev7simdForITkNSt3__18integralEiZZNS_11ImageCanvas23computeCanvasStatisticsENS1_10shared_ptrINS_5ImageEEES5_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmEUlTyiE_EEvT_SO_OT0_.exit.i" ] ; 5 uses
  br i1 %.not13.i.i, label %.preheader.i.i, label %.from..lr.ph.i.i

.from..lr.ph.i.i:                                 ; preds = %bb.h
  %i.bx = load i32, ptr %i.bs, align 4, !tbaa !204
  %i.by = sext i32 %i.bx to i64
  %i.bz = mul nsw i64 %indvars.iv.i, %i.by        ; 4 uses
  %i.ca = load ptr, ptr %i.bo, align 8, !tbaa !659 ; 4 uses
  %i.cb = load i64, ptr %i.bt, align 8, !tbaa !660 ; 4 uses
  %i.cc = load ptr, ptr %i.br, align 8, !tbaa !391 ; 4 uses
  %.not.i.i.i20 = icmp eq ptr %i.cc, null
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  br label %bb.i

.preheader.i.i.from..preheader.loopexit.i.i:      ; preds = %"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIN5xsimd5batchIfNSO_4sse2EEEEEDai.exit.i.i"
  %i.cf = trunc nsw i64 %indvars.iv.i.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.h, %.preheader.i.i.from..preheader.loopexit.i.i
  %.0.lcssa.i.i = phi i32 [ %i.cf, %.preheader.i.i.from..preheader.loopexit.i.i ], [ %i.aa, %bb.h ] ; 2 uses
  %i.cg = icmp slt i32 %.0.lcssa.i.i, %i.z
  br i1 %i.cg, label %.from..lr.ph16.i.i, label %"_ZN3tev7simdForITkNSt3__18integralEiZZNS_11ImageCanvas23computeCanvasStatisticsENS1_10shared_ptrINS_5ImageEEES5_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmEUlTyiE_EEvT_SO_OT0_.exit.i"

.from..lr.ph16.i.i:                               ; preds = %.preheader.i.i
  %i.ch = load i32, ptr %i.bs, align 4, !tbaa !204
  %i.ci = sext i32 %i.ch to i64
  %i.cj = mul nsw i64 %indvars.iv.i, %i.ci
  %i.ck = load ptr, ptr %i.bo, align 8, !tbaa !659
  %i.cl = load i64, ptr %i.bt, align 8, !tbaa !660
  %i.cm = load ptr, ptr %i.br, align 8, !tbaa !391 ; 4 uses
  %.not.i12.i.i = icmp eq ptr %i.cm, null
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cp = sext i32 %.0.lcssa.i.i to i64
  br label %bb.j

bb.i:                                             ; preds = %"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIN5xsimd5batchIfNSO_4sse2EEEEEDai.exit.i.i", %.from..lr.ph.i.i
  %indvars.iv17.i.i = phi i64 [ %i.av, %.from..lr.ph.i.i ], [ %indvars.iv.next18.i.i, %"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIN5xsimd5batchIfNSO_4sse2EEEEEDai.exit.i.i" ] ; 4 uses
  %indvars.iv.i.i = phi i64 [ %i.aw, %.from..lr.ph.i.i ], [ %indvars.iv.next.i.i, %"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIN5xsimd5batchIfNSO_4sse2EEEEEDai.exit.i.i" ] ; 2 uses
  %i.cq = shl nsw i64 %indvars.iv17.i.i, 32       ; 3 uses
  %i.cr = add nsw i64 %indvars.iv17.i.i, %i.bz
  %i.cs = mul i64 %i.cr, %i.cb
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cs
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !76
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <4 x float> poison, float %i.cu, i64 0
  %i.cv = add i64 %i.cq, 4294967296
  %i.cw = ashr exact i64 %i.cv, 32                ; 2 uses
  %i.cx = add nsw i64 %i.cw, %i.bz
  %i.cy = mul i64 %i.cx, %i.cb
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cy
  %i.da = load float, ptr %i.cz, align 4, !tbaa !76
  %.sroa.0.4.vec.insert.i.i.i.i = insertelement <4 x float> %.sroa.0.0.vec.insert.i.i.i.i, float %i.da, i64 1
  %i.db = add i64 %i.cq, 8589934592
  %i.dc = ashr exact i64 %i.db, 32                ; 2 uses
  %i.dd = add nsw i64 %i.dc, %i.bz
  %i.de = mul i64 %i.dd, %i.cb
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.de
  %i.dg = load float, ptr %i.df, align 4, !tbaa !76
  %.sroa.0.8.vec.insert.i.i.i.i = insertelement <4 x float> %.sroa.0.4.vec.insert.i.i.i.i, float %i.dg, i64 2
  %i.dh = add i64 %i.cq, 12884901888
  %i.di = ashr exact i64 %i.dh, 32                ; 2 uses
  %i.dj = add nsw i64 %i.di, %i.bz
  %i.dk = mul i64 %i.dj, %i.cb
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.dk
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !76
  %.sroa.0.12.vec.insert.i.i.i.i = insertelement <4 x float> %.sroa.0.8.vec.insert.i.i.i.i, float %i.dm, i64 3 ; 3 uses
  %.val.i.i.i = load float, ptr %i.bq, align 4, !tbaa !441
  %.val7.i.i.i = load float, ptr %i.bu, align 4, !tbaa !442
  %i.dn = fcmp ule <4 x float> %.sroa.0.12.vec.insert.i.i.i.i, zeroinitializer
  %i.do = fadd <4 x float> %.sroa.0.12.vec.insert.i.i.i.i, splat (float 1.000000e-03)
  %i.dp = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float f0x00800000), <4 x float> %i.do) ; 2 uses
  %i.dq = bitcast <4 x float> %i.dp to <2 x i64>
  %i.dr = bitcast <4 x float> %i.dp to <4 x i32>
  %i.ds = lshr <4 x i32> %i.dr, splat (i32 23)
  %i.dt = and <4 x i32> %i.ds, splat (i32 255)
  %i.du = add nsw <4 x i32> %i.dt, splat (i32 -127)
  %i.dv = sitofp <4 x i32> %i.du to <4 x float>
  %i.dw = and <2 x i64> %i.dq, splat (i64 36028792732385279)
  %i.dx = or disjoint <2 x i64> %i.dw, splat (i64 4575657222473777152)
  %i.dy = bitcast <2 x i64> %i.dx to <4 x float>
  %i.dz = fadd <4 x float> %i.dy, splat (float -1.000000e+00) ; 5 uses
  %i.ea = fmul <4 x float> %i.dz, splat (float f0x3D3BF404)
  %i.eb = fadd <4 x float> %i.ea, splat (float f0xBE471796)
  %i.ec = fmul <4 x float> %i.dz, %i.eb
  %i.ed = fadd <4 x float> %i.ec, splat (float f0x3ED4B281)
  %i.ee = fmul <4 x float> %i.dz, %i.ed
  %i.ef = fadd <4 x float> %i.ee, splat (float f0xBF356C3D)
  %i.eg = fmul <4 x float> %i.dz, %i.ef
  %i.eh = fadd <4 x float> %i.eg, splat (float f0x3FB88DC0)
  %i.ei = fmul <4 x float> %i.dz, %i.eh
  %i.ej = fadd <4 x float> %i.ei, %i.dv
  %i.ek = fsub <4 x float> %i.ej, %i.au
  %i.el = fsub <4 x float> splat (float 1.000000e-03), %.sroa.0.12.vec.insert.i.i.i.i
  %i.em = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float f0x00800000), <4 x float> %i.el) ; 2 uses
  %i.en = bitcast <4 x float> %i.em to <2 x i64>
  %i.eo = bitcast <4 x float> %i.em to <4 x i32>
  %i.ep = lshr <4 x i32> %i.eo, splat (i32 23)
  %i.eq = and <4 x i32> %i.ep, splat (i32 255)
  %i.er = add nsw <4 x i32> %i.eq, splat (i32 -127)
  %i.es = sitofp <4 x i32> %i.er to <4 x float>
  %i.et = and <2 x i64> %i.en, splat (i64 36028792732385279)
  %i.eu = or disjoint <2 x i64> %i.et, splat (i64 4575657222473777152)
  %i.ev = bitcast <2 x i64> %i.eu to <4 x float>
  %i.ew = fadd <4 x float> %i.ev, splat (float -1.000000e+00) ; 5 uses
  %i.ex = fmul <4 x float> %i.ew, splat (float f0x3D3BF404)
  %i.ey = fadd <4 x float> %i.ex, splat (float f0xBE471796)
  %i.ez = fmul <4 x float> %i.ew, %i.ey
  %i.fa = fadd <4 x float> %i.ez, splat (float f0x3ED4B281)
  %i.fb = fmul <4 x float> %i.ew, %i.fa
  %i.fc = fadd <4 x float> %i.fb, splat (float f0xBF356C3D)
  %i.fd = fmul <4 x float> %i.ew, %i.fc
  %i.fe = fadd <4 x float> %i.fd, splat (float f0x3FB88DC0)
  %i.ff = fmul <4 x float> %i.ew, %i.fe
  %i.fg = fadd <4 x float> %i.ff, %i.es
  %i.fh = fsub <4 x float> %i.fg, %i.au
  %i.fi = fneg <4 x float> %i.fh
  %.v.i.i.i.i.i = select <4 x i1> %i.dn, <4 x float> %i.fi, <4 x float> %i.ek
  %i.fj = insertelement <4 x float> poison, float %.val.i.i.i, i64 0
  %i.fk = shufflevector <4 x float> %i.fj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fl = fsub <4 x float> %.v.i.i.i.i.i, %i.fk
  %i.fm = fmul <4 x float> %i.fl, splat (float 4.000000e+02)
  %i.fn = insertelement <4 x float> poison, float %.val7.i.i.i, i64 0
  %i.fo = shufflevector <4 x float> %i.fn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fp = fdiv <4 x float> %i.fm, %i.fo
  %i.fq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.fp)
  %i.fr = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fq, <4 x i32> zeroinitializer)
  %i.fs = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fr, <4 x i32> splat (i32 399)) ; 8 uses
  br i1 %.not.i.i.i20, label %.split.us.preheader.i.i.i, label %.split.i.i.i

.split.us.preheader.i.i.i:                        ; preds = %bb.i
  %.sroa.0.0.vec.extract16.i.i.i = extractelement <4 x i32> %i.fs, i64 0
  %i.ft = zext nneg i32 %.sroa.0.0.vec.extract16.i.i.i to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ft ; 2 uses
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !76
  %i.fw = fadd float %i.fv, 1.000000e+00
  store float %i.fw, ptr %i.fu, align 4, !tbaa !76
  %.sroa.0.4.vec.extract18.i.i.i = extractelement <4 x i32> %i.fs, i64 1
  %i.fx = zext nneg i32 %.sroa.0.4.vec.extract18.i.i.i to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.fx ; 2 uses
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !76
  %i.ga = fadd float %i.fz, 1.000000e+00
  store float %i.ga, ptr %i.fy, align 4, !tbaa !76
  %.sroa.0.8.vec.extract20.i.i.i = extractelement <4 x i32> %i.fs, i64 2
  %i.gb = zext nneg i32 %.sroa.0.8.vec.extract20.i.i.i to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.gb ; 2 uses
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !76
  %i.ge = fadd float %i.gd, 1.000000e+00
  store float %i.ge, ptr %i.gc, align 4, !tbaa !76
  %.sroa.0.12.vec.extract22.i.i.i = extractelement <4 x i32> %i.fs, i64 3
  %i.gf = zext nneg i32 %.sroa.0.12.vec.extract22.i.i.i to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.gf ; 2 uses
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !76
  %i.gi = fadd float %i.gh, 1.000000e+00
  store float %i.gi, ptr %i.gg, align 4, !tbaa !76
  br label %"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIN5xsimd5batchIfNSO_4sse2EEEEEDai.exit.i.i"

.split.i.i.i:                                     ; preds = %bb.i
  %i.gj = load i32, ptr %i.ce, align 4, !tbaa !204
  %i.gk = sext i32 %i.gj to i64
  %i.gl = mul nsw i64 %indvars.iv.i, %i.gk        ; 4 uses
  %i.gm = load ptr, ptr %i.cc, align 8, !tbaa !659 ; 4 uses
  %i.gn = load i64, ptr %i.cd, align 8, !tbaa !660 ; 4 uses
  %i.go = add nsw i64 %i.gl, %indvars.iv17.i.i
  %i.gp = mul i64 %i.go, %i.gn
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.gp
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !76
  %.sroa.0.0.vec.extract.i.i.i = extractelement <4 x i32> %i.fs, i64 0
  %i.gs = zext nneg i32 %.sroa.0.0.vec.extract.i.i.i to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.gs ; 2 uses
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !76
  %i.gv = fadd float %i.gr, %i.gu
  store float %i.gv, ptr %i.gt, align 4, !tbaa !76
  %i.gw = add nsw i64 %i.gl, %i.cw
  %i.gx = mul i64 %i.gw, %i.gn
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.gx
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !76
  %.sroa.0.4.vec.extract.i.i.i = extractelement <4 x i32> %i.fs, i64 1
  %i.ha = zext nneg i32 %.sroa.0.4.vec.extract.i.i.i to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ha ; 2 uses
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !76
  %i.hd = fadd float %i.gz, %i.hc
  store float %i.hd, ptr %i.hb, align 4, !tbaa !76
  %i.he = add nsw i64 %i.gl, %i.dc
  %i.hf = mul i64 %i.he, %i.gn
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.hf
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !76
  %.sroa.0.8.vec.extract.i.i.i = extractelement <4 x i32> %i.fs, i64 2
  %i.hi = zext nneg i32 %.sroa.0.8.vec.extract.i.i.i to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.hi ; 2 uses
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !76
  %i.hl = fadd float %i.hh, %i.hk
  store float %i.hl, ptr %i.hj, align 4, !tbaa !76
  %i.hm = add nsw i64 %i.gl, %i.di
  %i.hn = mul i64 %i.hm, %i.gn
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.hn
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !76
  %.sroa.0.12.vec.extract.i.i.i = extractelement <4 x i32> %i.fs, i64 3
  %i.hq = zext nneg i32 %.sroa.0.12.vec.extract.i.i.i to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.hq ; 2 uses
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !76
  %i.ht = fadd float %i.hp, %i.hs
  store float %i.ht, ptr %i.hr, align 4, !tbaa !76
  br label %"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIN5xsimd5batchIfNSO_4sse2EEEEEDai.exit.i.i"

"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIN5xsimd5batchIfNSO_4sse2EEEEEDai.exit.i.i": ; preds = %.split.i.i.i, %.split.us.preheader.i.i.i
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %.not.i.i = icmp sgt i64 %indvars.iv.next.i.i, %i.ax
  %indvars.iv.next18.i.i = add nsw i64 %indvars.iv17.i.i, 4
  br i1 %.not.i.i, label %.preheader.i.i.from..preheader.loopexit.i.i, label %bb.i, !llvm.loop !2463

bb.j:                                             ; preds = %"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIfEEDai.exit.i.i", %.from..lr.ph16.i.i
  %indvars.iv22.i.i = phi i64 [ %i.cp, %.from..lr.ph16.i.i ], [ %indvars.iv.next23.i.i, %"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIfEEDai.exit.i.i" ] ; 3 uses
  %i.hu = add nsw i64 %indvars.iv22.i.i, %i.cj
  %i.hv = mul i64 %i.hu, %i.cl
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.hv
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !76 ; 3 uses
  %.val.i11.i.i = load float, ptr %i.bq, align 4, !tbaa !441
  %.val3.i.i.i = load float, ptr %i.bu, align 4, !tbaa !442
  br i1 %.not.i12.i.i, label %"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIfEEDai.exit.i.i", label %"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIfEEDai.exit.i.i.from."

"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIfEEDai.exit.i.i.from.": ; preds = %bb.j
  %i.hy = load i32, ptr %i.cn, align 4, !tbaa !204
  %i.hz = sext i32 %i.hy to i64
  %i.ia = mul nsw i64 %indvars.iv.i, %i.hz
  %i.ib = add nsw i64 %i.ia, %indvars.iv22.i.i
  %i.ic = load ptr, ptr %i.cm, align 8, !tbaa !659
  %i.id = load i64, ptr %i.co, align 8, !tbaa !660
  %i.ie = mul i64 %i.ib, %i.id
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %i.ie
  %i.ig = load float, ptr %i.if, align 4, !tbaa !76
  br label %"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIfEEDai.exit.i.i"

"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIfEEDai.exit.i.i": ; preds = %bb.j, %"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIfEEDai.exit.i.i.from."
  %i.ih = phi float [ %i.ig, %"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIfEEDai.exit.i.i.from." ], [ 1.000000e+00, %bb.j ]
  %i.ii = fcmp ogt float %i.hx, 0.000000e+00
  %i.ij = insertelement <2 x float> <float poison, float 1.000000e-03>, float %i.hx, i64 0
  %i.ik = insertelement <2 x float> <float -1.000000e-03, float poison>, float %i.hx, i64 1
  %i.il = fsub <2 x float> %i.ij, %i.ik           ; 2 uses
  %i.im = fcmp olt <2 x float> %i.il, splat (float f0x00800000)
  %i.in = bitcast <2 x float> %i.il to <2 x i32>
  %i.io = select <2 x i1> %i.im, <2 x i32> splat (i32 8388608), <2 x i32> %i.in ; 2 uses
  %i.ip = and <2 x i32> %i.io, splat (i32 8388607)
  %i.iq = or disjoint <2 x i32> %i.ip, splat (i32 1065353216)
  %i.ir = bitcast <2 x i32> %i.iq to <2 x float>  ; 2 uses
  %i.is = extractelement <2 x float> %i.ir, i64 0
  %i.it = fadd float %i.is, -1.000000e+00         ; 5 uses
  %i.iu = call noundef float @llvm.fma.f32(float %i.it, float f0x3D3BF404, float f0xBE471796)
  %i.iv = call noundef float @llvm.fma.f32(float %i.iu, float %i.it, float f0x3ED4B281)
  %i.iw = call noundef float @llvm.fma.f32(float %i.iv, float %i.it, float f0xBF356C3D)
  %i.ix = call noundef float @llvm.fma.f32(float %i.iw, float %i.it, float f0x3FB88DC0)
  %i.iy = fmul float %i.it, %i.ix
  %i.iz = extractelement <2 x float> %i.ir, i64 1
  %i.ja = fadd float %i.iz, -1.000000e+00         ; 5 uses
  %i.jb = call noundef float @llvm.fma.f32(float %i.ja, float f0x3D3BF404, float f0xBE471796)
  %i.jc = call noundef float @llvm.fma.f32(float %i.jb, float %i.ja, float f0x3ED4B281)
  %i.jd = call noundef float @llvm.fma.f32(float %i.jc, float %i.ja, float f0xBF356C3D)
  %i.je = call noundef float @llvm.fma.f32(float %i.jd, float %i.ja, float f0x3FB88DC0)
  %i.jf = fmul float %i.ja, %i.je
  %i.jg = lshr <2 x i32> %i.io, splat (i32 23)
  %i.jh = and <2 x i32> %i.jg, splat (i32 255)
  %i.ji = add nsw <2 x i32> %i.jh, splat (i32 -127)
  %i.jj = sitofp <2 x i32> %i.ji to <2 x float>   ; 2 uses
  %i.jk = extractelement <2 x float> %i.jj, i64 0
  %i.jl = fadd float %i.iy, %i.jk
  %i.jm = fsub float %i.jl, %i.as
  %i.jn = extractelement <2 x float> %i.jj, i64 1
  %i.jo = fadd float %i.jf, %i.jn
  %i.jp = fsub float %i.jo, %i.as
  %i.jq = fneg float %i.jp
  %.sroa.speculated.i.i.i.i.i = select i1 %i.ii, float %i.jm, float %i.jq
  %i.jr = fsub float %.sroa.speculated.i.i.i.i.i, %.val.i11.i.i
  %i.js = fmul float %i.jr, 4.000000e+02
  %i.jt = fdiv float %i.js, %.val3.i.i.i
  %i.ju = fptosi float %i.jt to i32
  %i.jv = call i32 @llvm.smax.i32(i32 %i.ju, i32 0)
  %i.jw = call noundef range(i32 0, 400) i32 @llvm.umin.i32(i32 %i.jv, i32 399)
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.jx ; 2 uses
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !76
  %i.ka = fadd float %i.ih, %i.jz
  store float %i.ka, ptr %i.jy, align 4, !tbaa !76
  %indvars.iv.next23.i.i = add nsw i64 %indvars.iv22.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next23.i.i, %i.ax
  br i1 %exitcond.not.i.i, label %"_ZN3tev7simdForITkNSt3__18integralEiZZNS_11ImageCanvas23computeCanvasStatisticsENS1_10shared_ptrINS_5ImageEEES5_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmEUlTyiE_EEvT_SO_OT0_.exit.i", label %bb.j, !llvm.loop !2464

"_ZN3tev7simdForITkNSt3__18integralEiZZNS_11ImageCanvas23computeCanvasStatisticsENS1_10shared_ptrINS_5ImageEEES5_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmEUlTyiE_EEvT_SO_OT0_.exit.i": ; preds = %"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIfEEDai.exit.i.i", %.preheader.i.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.kb = icmp slt i64 %indvars.iv.next.i, %i.bw
  br i1 %i.kb, label %bb.h, label %"_ZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEm.exit", !llvm.loop !2465

"_ZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEm.exit": ; preds = %"_ZN3tev7simdForITkNSt3__18integralEiZZNS_11ImageCanvas23computeCanvasStatisticsENS1_10shared_ptrINS_5ImageEEES5_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmEUlTyiE_EEvT_SO_OT0_.exit.i", %bb.g
  %i.kc = add nuw i64 %.024, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.kc, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !2466

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge
  %i.kd = load ptr, ptr %i.d, align 8, !tbaa !297
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = atomicrmw add ptr %i.ke, i32 -1 acq_rel, align 4 ; 2 uses
  %i.kg = icmp slt i32 %i.kf, 1
  br i1 %i.kg, label %bb.k, label %_ZN3tev5Latch9countDownEv.exit.i

bb.k:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.kh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i:                                       ; preds = %bb.k
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !276 ; 7 uses
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !283
  %i.kk = and i32 %i.kj, 8
  %.not.i.i.i.i = icmp eq i32 %i.kk, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.l:                                             ; preds = %.noexc.i.i
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !284 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !285 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.km, %i.ko
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.l
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ki, i64 32
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ki, i64 48
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ki, i64 33
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ki, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.km, %.from..lr.ph.i.i.i.i.i ], [ %i.le, %.noexc2.i.i ] ; 2 uses
  %i.kt = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !288 ; 2 uses
  %i.ku = load i8, ptr %i.kp, align 8             ; 2 uses
  %i.kv = trunc i8 %i.ku to i1                    ; 2 uses
  %i.kw = load ptr, ptr %i.kq, align 8
  %i.kx = select i1 %i.kv, ptr %i.kw, ptr %i.kr
  %i.ky = load i64, ptr %i.ks, align 8
  %i.kz = lshr i8 %i.ku, 1
  %i.la = zext nneg i8 %i.kz to i64
  %i.lb = select i1 %i.kv, i64 %i.ky, i64 %i.la
  %i.lc = load ptr, ptr %i.kt, align 8, !tbaa !78
  %i.ld = load ptr, ptr %i.lc, align 8
  invoke void %i.ld(ptr noundef nonnull align 8 dereferenceable(8) %i.kt, ptr %i.kx, i64 %i.lb, i32 noundef 8, ptr nonnull @.str.117, i64 36)
          to label %.noexc2.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.le, %i.ko
  br i1 %.not.i.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.i, label %.from..noexc2.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.from..noexc2.i.i, %bb.k
  %lpad.loopexit.split-lp75 = landingpad { ptr, i32 }
          catch ptr null
  %i.lf = extractvalue { ptr, i32 } %lpad.loopexit.split-lp75, 0
  call void @__clang_call_terminate(ptr %i.lf) #52
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.lg = icmp slt i32 %i.kf, 2
  br i1 %i.lg, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.l, %_ZN3tev5Latch9countDownEv.exit.i
  %i.lh = load ptr, ptr %i.d, align 8, !tbaa !297
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !245 ; 2 uses
  %i.lj = inttoptr i64 %i.li to ptr               ; 3 uses
  store ptr %i.lj, ptr %.reload.addr, align 8
  %.not.i = icmp eq i64 %i.li, 0
  br i1 %.not.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr61 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %index.addr61, align 8
  %i.lk = load ptr, ptr %i.lj, align 8
  call void %i.lk(ptr nonnull %i.lj)
  br label %AfterCoroEnd

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.ll = load ptr, ptr %i.h, align 8, !tbaa !298 ; 5 uses
  %.not.i.i21 = icmp eq ptr %i.ll, null
  br i1 %.not.i.i21, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.ln = atomicrmw add ptr %i.lm, i64 -1 acq_rel, align 8
  %i.lo = icmp eq i64 %i.ln, 0
  br i1 %i.lo, label %bb.n, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.lp = load ptr, ptr %i.ll, align 8, !tbaa !78
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %i.lr = load ptr, ptr %i.lq, align 8
  call void %i.lr(ptr noundef nonnull align 8 dereferenceable(24) %i.ll) #47, !inline_history !22
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ll) #47
end_hunk_1
