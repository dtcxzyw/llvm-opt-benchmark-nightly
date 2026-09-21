Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImageCanvas?download=true
inline.NumInlined: 10055
inline.NumDeleted: 3878
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 112
begin_hunk_0_@"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_11ImageCanvas23computeCanvasStatisticsENS2_10shared_ptrINS_5ImageEEES9_NS2_17basic_string_viewIcNS2_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS2_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiE3$_5EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESS_S4_S4_mST_iENKUlvE_clEv":.from.
  %i.cj = load i64, ptr %i.cd, align 8
  %i.ck = lshr i8 %i.cf, 1
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = select i1 %i.cg, i64 %i.cj, i64 %i.cl
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !78
  %i.co = load ptr, ptr %i.cn, align 8
  invoke void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr %i.ci, i64 %i.cm, i32 noundef 8, ptr nonnull @.str.117, i64 36)
          to label %.noexc2.i.i26 unwind label %.from..loopexit.i.i24, !inline_history !3

.noexc2.i.i26:                                    ; preds = %.from..noexc2.i.i26
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i23, i64 16 ; 2 uses
  %.not.i.i.i.i.i27 = icmp eq ptr %i.cp, %i.bz
  br i1 %.not.i.i.i.i.i27, label %_ZN3tev5Latch9countDownEv.exit.i15, label %.from..noexc2.i.i26

.from..loopexit.i.i24:                            ; preds = %.from..noexc2.i.i26
  %lpad.loopexit.i.i25 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

.from..loopexit.split-lp.i.i16:                   ; preds = %bb.q
  %lpad.loopexit.split-lp.i.i17 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

bb.s:                                             ; preds = %.from..loopexit.split-lp.i.i16, %.from..loopexit.i.i24
  %lpad.phi.i.i18 = phi { ptr, i32 } [ %lpad.loopexit.i.i25, %.from..loopexit.i.i24 ], [ %lpad.loopexit.split-lp.i.i17, %.from..loopexit.split-lp.i.i16 ]
  %i.cq = extractvalue { ptr, i32 } %lpad.phi.i.i18, 0
  call void @__clang_call_terminate(ptr %i.cq) #52
  unreachable

_ZN3tev5Latch9countDownEv.exit.i15:               ; preds = %.noexc2.i.i26, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cr = icmp slt i32 %i.bq, 2
  br i1 %i.cr, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i19, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i15
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !297
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !245 ; 2 uses
  %i.cu = inttoptr i64 %i.ct to ptr               ; 3 uses
  store ptr %i.cu, ptr %.reload.addr, align 8
  %.not.i28 = icmp eq i64 %i.ct, 0
  br i1 %.not.i28, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend45

AfterCoroSuspend45:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr71 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 1, ptr %index.addr71, align 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr nonnull %i.cu)
  br label %AfterCoroEnd

bb.t:                                             ; preds = %bb.o
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.66 unwind label %bb.w

.from.62:                                         ; preds = %bb.p
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.66

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i15
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !298 ; 5 uses
  %.not.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = atomicrmw add ptr %i.cz, i64 -1 acq_rel, align 8
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !78
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #47, !inline_history !22
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #47
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #47
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #47
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend45, %AfterCoroSave
  ret void

.body.from.66:                                    ; preds = %bb.t, %.from.62
  %.pn9 = phi { ptr, i32 } [ %i.cx, %.from.62 ], [ %i.cw, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #47
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr69) #47
  br label %.body

.body:                                            ; preds = %.body.from.66, %.body.from.64, %.body.from.
  %.merged11 = phi { ptr, i32 } [ %.pn9, %.body.from.66 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.64 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #47
  resume { ptr, i32 } %.merged11

bb.w:                                             ; preds = %bb.t
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
  %.reload.addr69 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2385)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #48
          to label %bb.a unwind label %.body.from.63 ; 5 uses

.body.from.63:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #47
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
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.239") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
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
  %i.ag = add nsw i32 %i.z, 4                     ; 2 uses
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
  %reass.sub72 = sub i32 %smax.i.i, %i.z
  %.reass = add i32 %reass.sub72, -5
  %i.ao = and i32 %.reass, -4
  %i.ap = add i32 %i.ao, %i.ag
  br label %bb.g

._crit_edge:                                      ; preds = %"_ZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_5clEi.exit", %bb.e
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr69)
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
  store double %i.cp, ptr %i.at, align 8, !tbaa !438
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
  %.lcssa1720.i.i = phi double [ %.promoted.i.i, %.lr.ph.i.i.i.from..lr.ph.split.i.i ], [ %i.cp, %._crit_edge.i.i.i ]
  %sext.i.i.i.i = shl nsw i64 %indvars.iv36.i.i, 32 ; 3 uses
  %sext.1.i.i.i.i = add i64 %sext.i.i.i.i, 4294967296
  %i.bf = ashr exact i64 %sext.1.i.i.i.i, 32
  %sext.2.i.i.i.i = add i64 %sext.i.i.i.i, 8589934592
  %i.bg = ashr exact i64 %sext.2.i.i.i.i, 32
  %sext.3.i.i.i.i = add i64 %sext.i.i.i.i, 12884901888
  %i.bh = ashr exact i64 %sext.3.i.i.i.i, 32
  br label %.from.51

._crit_edge.i.i.i:                                ; preds = %.from.51
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %.not.i.i = icmp sgt i64 %indvars.iv.next.i.i, %i.aj
  %indvars.iv.next37.i.i = add nsw i64 %indvars.iv36.i.i, 4
  br i1 %.not.i.i, label %.preheader.i.i.from...preheader_crit_edge.split.i.i, label %.from..lr.ph.i.i.i, !llvm.loop !2379

.from.51:                                         ; preds = %.from.51, %.from..lr.ph.i.i.i
  %.sroa.speculated78.i.i.i = phi float [ %.sroa.speculated.i24.i.i, %.from..lr.ph.i.i.i ], [ %.sroa.speculated.i.i.i, %.from.51 ] ; 2 uses
  %.sroa.speculated1476.i.i.i = phi float [ %.sroa.speculated14.i22.i.i, %.from..lr.ph.i.i.i ], [ %.sroa.speculated14.i.i.i, %.from.51 ] ; 2 uses
  %i.bi = phi double [ %.lcssa1720.i.i, %.from..lr.ph.i.i.i ], [ %i.cp, %.from.51 ]
  %.074.i.i.i = phi i64 [ 0, %.from..lr.ph.i.i.i ], [ %i.de, %.from.51 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %.074.i.i.i ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !204
  %i.bm = sext i32 %i.bl to i64
  %i.bn = mul nsw i64 %indvars.iv, %i.bm          ; 4 uses
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !659 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !660 ; 4 uses
  %i.br = add nsw i64 %i.bn, %indvars.iv36.i.i
  %i.bs = mul i64 %i.br, %i.bq
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !76
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <4 x float> poison, float %i.bu, i64 0
  %i.bv = add nsw i64 %i.bn, %i.bf
  %i.bw = mul i64 %i.bv, %i.bq
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bw
  %i.by = load float, ptr %i.bx, align 4, !tbaa !76
  %.sroa.0.4.vec.insert.i.i.i.i = insertelement <4 x float> %.sroa.0.0.vec.insert.i.i.i.i, float %i.by, i64 1
  %i.bz = add nsw i64 %i.bn, %i.bg
  %i.ca = mul i64 %i.bz, %i.bq
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ca
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !76
  %.sroa.0.8.vec.insert.i.i.i.i = insertelement <4 x float> %.sroa.0.4.vec.insert.i.i.i.i, float %i.cc, i64 2
  %i.cd = add nsw i64 %i.bn, %i.bh
  %i.ce = mul i64 %i.cd, %i.bq
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ce
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !76
  %.sroa.0.12.vec.insert.i.i.i.i = insertelement <4 x float> %.sroa.0.8.vec.insert.i.i.i.i, float %i.cg, i64 3 ; 5 uses
  %i.ch = fsub <4 x float> %.sroa.0.12.vec.insert.i.i.i.i, %.sroa.0.12.vec.insert.i.i.i.i
  %i.ci = fcmp une <4 x float> %i.ch, zeroinitializer ; 3 uses
  %i.cj = select <4 x i1> %i.ci, <4 x float> zeroinitializer, <4 x float> %.sroa.0.12.vec.insert.i.i.i.i ; 2 uses
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cl = shufflevector <4 x float> %i.cj, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.cm = fadd <2 x float> %i.ck, %i.cl
  %i.cn = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cm)
  %i.co = fpext float %i.cn to double
  %i.cp = fadd double %i.bi, %i.co                ; 3 uses
  %i.cq = select <4 x i1> %i.ci, <4 x float> splat (float -inf), <4 x float> %.sroa.0.12.vec.insert.i.i.i.i ; 2 uses
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.cs = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cq, <4 x float> %i.cr) ; 2 uses
  %i.ct = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cu = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cs, <4 x float> %i.ct)
  %i.cv = extractelement <4 x float> %i.cu, i64 0 ; 2 uses
  %i.cw = fcmp olt float %.sroa.speculated1476.i.i.i, %i.cv
  %.sroa.speculated14.i.i.i = select i1 %i.cw, float %i.cv, float %.sroa.speculated1476.i.i.i ; 3 uses
  store float %.sroa.speculated14.i.i.i, ptr %i.av, align 8, !tbaa !2396
  %i.cx = select <4 x i1> %i.ci, <4 x float> splat (float +inf), <4 x float> %.sroa.0.12.vec.insert.i.i.i.i ; 2 uses
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.cz = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cx, <4 x float> %i.cy) ; 2 uses
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.db = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cz, <4 x float> %i.da)
  %i.dc = extractelement <4 x float> %i.db, i64 0 ; 2 uses
  %i.dd = fcmp olt float %i.dc, %.sroa.speculated78.i.i.i
  %.sroa.speculated.i.i.i = select i1 %i.dd, float %i.dc, float %.sroa.speculated78.i.i.i ; 3 uses
  store float %.sroa.speculated.i.i.i, ptr %i.aw, align 4, !tbaa !2397
  %i.de = add nuw i64 %.074.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.de, %i.au
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.from.51, !llvm.loop !2380

.from..lr.ph.i12.i.i:                             ; preds = %._crit_edge.i16.i.i, %.lr.ph.i12.i.i.from..lr.ph26.split.i.i
  %indvars.iv41.i.i = phi i64 [ %i.be, %.lr.ph.i12.i.i.from..lr.ph26.split.i.i ], [ %indvars.iv.next42.i.i, %._crit_edge.i16.i.i ] ; 2 uses
  %.sroa.speculated7.i32.i.i = phi float [ %.promoted31.i.i, %.lr.ph.i12.i.i.from..lr.ph26.split.i.i ], [ %.sroa.speculated7.i.i.i, %._crit_edge.i16.i.i ]
  %.sroa.speculated13.i30.i.i = phi float [ %.promoted29.i.i, %.lr.ph.i12.i.i.from..lr.ph26.split.i.i ], [ %.sroa.speculated13.i.i.i, %._crit_edge.i16.i.i ]
  %.lcssa28.i.i = phi double [ %.promoted27.i.i, %.lr.ph.i12.i.i.from..lr.ph26.split.i.i ], [ %i.dv, %._crit_edge.i16.i.i ]
  br label %.from.57

._crit_edge.i16.i.i:                              ; preds = %.from.57
  %indvars.iv.next42.i.i = add nsw i64 %indvars.iv41.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next42.i.i, %i.aj
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.from..lr.ph.i12.i.i, !llvm.loop !2381

.from.57:                                         ; preds = %.from.57, %.from..lr.ph.i12.i.i
  %.sroa.speculated723.i.i.i = phi float [ %.sroa.speculated7.i32.i.i, %.from..lr.ph.i12.i.i ], [ %.sroa.speculated7.i.i.i, %.from.57 ] ; 2 uses
  %.sroa.speculated1321.i.i.i = phi float [ %.sroa.speculated13.i30.i.i, %.from..lr.ph.i12.i.i ], [ %.sroa.speculated13.i.i.i, %.from.57 ] ; 2 uses
  %i.df = phi double [ %.lcssa28.i.i, %.from..lr.ph.i12.i.i ], [ %i.dv, %.from.57 ]
  %.019.i.i.i = phi i64 [ 0, %.from..lr.ph.i12.i.i ], [ %i.dy, %.from.57 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.019.i.i.i ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !204
  %i.dj = sext i32 %i.di to i64
  %i.dk = mul nsw i64 %indvars.iv, %i.dj
  %i.dl = add nsw i64 %i.dk, %indvars.iv41.i.i
  %i.dm = load ptr, ptr %i.dg, align 8, !tbaa !659
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !660
  %i.dp = mul i64 %i.dl, %i.do
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.dp
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !76 ; 4 uses
  %i.ds = call float @llvm.fabs.f32(float %i.dr)
  %i.dt = fcmp one float %i.ds, +inf              ; 3 uses
  %.sroa.speculated17.i.i.i = select i1 %i.dt, float %i.dr, float 0.000000e+00
  %i.du = fpext float %.sroa.speculated17.i.i.i to double
  %i.dv = fadd double %i.df, %i.du                ; 3 uses
  %.sroa.speculated10.i.i.i = select i1 %i.dt, float %i.dr, float -inf ; 2 uses
  %i.dw = fcmp olt float %.sroa.speculated1321.i.i.i, %.sroa.speculated10.i.i.i
  %.sroa.speculated13.i.i.i = select i1 %i.dw, float %.sroa.speculated10.i.i.i, float %.sroa.speculated1321.i.i.i ; 3 uses
  store float %.sroa.speculated13.i.i.i, ptr %i.bc, align 8, !tbaa !2396
  %.sroa.speculated.i14.i.i = select i1 %i.dt, float %i.dr, float +inf ; 2 uses
  %i.dx = fcmp olt float %.sroa.speculated.i14.i.i, %.sroa.speculated723.i.i.i
  %.sroa.speculated7.i.i.i = select i1 %i.dx, float %.sroa.speculated.i14.i.i, float %.sroa.speculated723.i.i.i ; 3 uses
  store float %.sroa.speculated7.i.i.i, ptr %i.bd, align 4, !tbaa !2397
  %i.dy = add nuw i64 %.019.i.i.i, 1              ; 2 uses
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
  %.reload.addr59 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr59)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2468)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #48
          to label %bb.a unwind label %.body.from.53 ; 5 uses

.body.from.53:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr59) #47
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
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.239") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr59)
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
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr59)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #52
  unreachable

bb.g:                                             ; preds = %"_ZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEm.exit", %.from..lr.ph
  %.024 = phi i64 [ %2, %.from..lr.ph ], [ %i.jy, %"_ZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEm.exit" ] ; 4 uses
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
  %indvars.iv17.i.i = phi i64 [ %i.av, %.from..lr.ph.i.i ], [ %indvars.iv.next18.i.i, %"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIN5xsimd5batchIfNSO_4sse2EEEEEDai.exit.i.i" ] ; 7 uses
  %indvars.iv.i.i = phi i64 [ %i.aw, %.from..lr.ph.i.i ], [ %indvars.iv.next.i.i, %"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIN5xsimd5batchIfNSO_4sse2EEEEEDai.exit.i.i" ] ; 2 uses
  %sext.i.i.i.i = shl nsw i64 %indvars.iv17.i.i, 32 ; 3 uses
  %i.cq = add nsw i64 %indvars.iv17.i.i, %i.bz
  %i.cr = mul i64 %i.cq, %i.cb
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cr
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !76
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <4 x float> poison, float %i.ct, i64 0
  %sext.1.i.i.i.i = add i64 %sext.i.i.i.i, 4294967296
  %i.cu = ashr exact i64 %sext.1.i.i.i.i, 32
  %i.cv = add nsw i64 %i.cu, %i.bz
  %i.cw = mul i64 %i.cv, %i.cb
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cw
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !76
  %.sroa.0.4.vec.insert.i.i.i.i = insertelement <4 x float> %.sroa.0.0.vec.insert.i.i.i.i, float %i.cy, i64 1
  %sext.2.i.i.i.i = add i64 %sext.i.i.i.i, 8589934592
  %i.cz = ashr exact i64 %sext.2.i.i.i.i, 32
  %i.da = add nsw i64 %i.cz, %i.bz
  %i.db = mul i64 %i.da, %i.cb
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.db
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !76
  %.sroa.0.8.vec.insert.i.i.i.i = insertelement <4 x float> %.sroa.0.4.vec.insert.i.i.i.i, float %i.dd, i64 2
  %sext.3.i.i.i.i = add i64 %sext.i.i.i.i, 12884901888
  %i.de = ashr exact i64 %sext.3.i.i.i.i, 32
  %i.df = add nsw i64 %i.de, %i.bz
  %i.dg = mul i64 %i.df, %i.cb
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.dg
  %i.di = load float, ptr %i.dh, align 4, !tbaa !76
  %.sroa.0.12.vec.insert.i.i.i.i = insertelement <4 x float> %.sroa.0.8.vec.insert.i.i.i.i, float %i.di, i64 3 ; 3 uses
  %.val.i.i.i = load float, ptr %i.bq, align 4, !tbaa !441
  %.val7.i.i.i = load float, ptr %i.bu, align 4, !tbaa !442
  %i.dj = fcmp ule <4 x float> %.sroa.0.12.vec.insert.i.i.i.i, zeroinitializer
  %i.dk = fadd <4 x float> %.sroa.0.12.vec.insert.i.i.i.i, splat (float 1.000000e-03)
  %i.dl = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float f0x00800000), <4 x float> %i.dk) ; 2 uses
  %i.dm = bitcast <4 x float> %i.dl to <2 x i64>
  %i.dn = bitcast <4 x float> %i.dl to <4 x i32>
  %i.do = lshr <4 x i32> %i.dn, splat (i32 23)
  %i.dp = and <4 x i32> %i.do, splat (i32 255)
  %i.dq = add nsw <4 x i32> %i.dp, splat (i32 -127)
  %i.dr = sitofp <4 x i32> %i.dq to <4 x float>
  %i.ds = and <2 x i64> %i.dm, splat (i64 36028792732385279)
  %i.dt = or disjoint <2 x i64> %i.ds, splat (i64 4575657222473777152)
  %i.du = bitcast <2 x i64> %i.dt to <4 x float>
  %i.dv = fadd <4 x float> %i.du, splat (float -1.000000e+00) ; 5 uses
  %i.dw = fmul <4 x float> %i.dv, splat (float f0x3D3BF404)
  %i.dx = fadd <4 x float> %i.dw, splat (float f0xBE471796)
  %i.dy = fmul <4 x float> %i.dv, %i.dx
  %i.dz = fadd <4 x float> %i.dy, splat (float f0x3ED4B281)
  %i.ea = fmul <4 x float> %i.dv, %i.dz
  %i.eb = fadd <4 x float> %i.ea, splat (float f0xBF356C3D)
  %i.ec = fmul <4 x float> %i.dv, %i.eb
  %i.ed = fadd <4 x float> %i.ec, splat (float f0x3FB88DC0)
  %i.ee = fmul <4 x float> %i.dv, %i.ed
  %i.ef = fadd <4 x float> %i.ee, %i.dr
  %i.eg = fsub <4 x float> %i.ef, %i.au
  %i.eh = fsub <4 x float> splat (float 1.000000e-03), %.sroa.0.12.vec.insert.i.i.i.i
  %i.ei = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float f0x00800000), <4 x float> %i.eh) ; 2 uses
  %i.ej = bitcast <4 x float> %i.ei to <2 x i64>
  %i.ek = bitcast <4 x float> %i.ei to <4 x i32>
  %i.el = lshr <4 x i32> %i.ek, splat (i32 23)
  %i.em = and <4 x i32> %i.el, splat (i32 255)
  %i.en = add nsw <4 x i32> %i.em, splat (i32 -127)
  %i.eo = sitofp <4 x i32> %i.en to <4 x float>
  %i.ep = and <2 x i64> %i.ej, splat (i64 36028792732385279)
  %i.eq = or disjoint <2 x i64> %i.ep, splat (i64 4575657222473777152)
  %i.er = bitcast <2 x i64> %i.eq to <4 x float>
  %i.es = fadd <4 x float> %i.er, splat (float -1.000000e+00) ; 5 uses
  %i.et = fmul <4 x float> %i.es, splat (float f0x3D3BF404)
  %i.eu = fadd <4 x float> %i.et, splat (float f0xBE471796)
  %i.ev = fmul <4 x float> %i.es, %i.eu
  %i.ew = fadd <4 x float> %i.ev, splat (float f0x3ED4B281)
  %i.ex = fmul <4 x float> %i.es, %i.ew
  %i.ey = fadd <4 x float> %i.ex, splat (float f0xBF356C3D)
  %i.ez = fmul <4 x float> %i.es, %i.ey
  %i.fa = fadd <4 x float> %i.ez, splat (float f0x3FB88DC0)
  %i.fb = fmul <4 x float> %i.es, %i.fa
  %i.fc = fadd <4 x float> %i.fb, %i.eo
  %i.fd = fsub <4 x float> %i.fc, %i.au
  %i.fe = fneg <4 x float> %i.fd
  %.v.i.i.i.i.i = select <4 x i1> %i.dj, <4 x float> %i.fe, <4 x float> %i.eg
  %i.ff = insertelement <4 x float> poison, float %.val.i.i.i, i64 0
  %i.fg = shufflevector <4 x float> %i.ff, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fh = fsub <4 x float> %.v.i.i.i.i.i, %i.fg
  %i.fi = fmul <4 x float> %i.fh, splat (float 4.000000e+02)
  %i.fj = insertelement <4 x float> poison, float %.val7.i.i.i, i64 0
  %i.fk = shufflevector <4 x float> %i.fj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fl = fdiv <4 x float> %i.fi, %i.fk
  %i.fm = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.fl)
  %i.fn = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fm, <4 x i32> zeroinitializer)
  %i.fo = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fn, <4 x i32> splat (i32 399)) ; 8 uses
  br i1 %.not.i.i.i20, label %.split.us.preheader.i.i.i, label %.split.i.i.i

.split.us.preheader.i.i.i:                        ; preds = %bb.i
  %.sroa.0.0.vec.extract16.i.i.i = extractelement <4 x i32> %i.fo, i64 0
  %i.fp = zext nneg i32 %.sroa.0.0.vec.extract16.i.i.i to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.fp ; 2 uses
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !76
  %i.fs = fadd float %i.fr, 1.000000e+00
  store float %i.fs, ptr %i.fq, align 4, !tbaa !76
  %.sroa.0.4.vec.extract18.i.i.i = extractelement <4 x i32> %i.fo, i64 1
  %i.ft = zext nneg i32 %.sroa.0.4.vec.extract18.i.i.i to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ft ; 2 uses
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !76
  %i.fw = fadd float %i.fv, 1.000000e+00
  store float %i.fw, ptr %i.fu, align 4, !tbaa !76
  %.sroa.0.8.vec.extract20.i.i.i = extractelement <4 x i32> %i.fo, i64 2
  %i.fx = zext nneg i32 %.sroa.0.8.vec.extract20.i.i.i to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.fx ; 2 uses
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !76
  %i.ga = fadd float %i.fz, 1.000000e+00
  store float %i.ga, ptr %i.fy, align 4, !tbaa !76
  %.sroa.0.12.vec.extract22.i.i.i = extractelement <4 x i32> %i.fo, i64 3
  %i.gb = zext nneg i32 %.sroa.0.12.vec.extract22.i.i.i to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.gb ; 2 uses
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !76
  %i.ge = fadd float %i.gd, 1.000000e+00
  store float %i.ge, ptr %i.gc, align 4, !tbaa !76
  br label %"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIN5xsimd5batchIfNSO_4sse2EEEEEDai.exit.i.i"

.split.i.i.i:                                     ; preds = %bb.i
  %i.gf = load i32, ptr %i.ce, align 4, !tbaa !204
  %i.gg = sext i32 %i.gf to i64
  %i.gh = mul nsw i64 %indvars.iv.i, %i.gg        ; 4 uses
  %i.gi = load ptr, ptr %i.cc, align 8, !tbaa !659 ; 4 uses
  %i.gj = load i64, ptr %i.cd, align 8, !tbaa !660 ; 4 uses
  %i.gk = add nsw i64 %i.gh, %indvars.iv17.i.i
  %i.gl = mul i64 %i.gk, %i.gj
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.gl
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !76
  %.sroa.0.0.vec.extract.i.i.i = extractelement <4 x i32> %i.fo, i64 0
  %i.go = zext nneg i32 %.sroa.0.0.vec.extract.i.i.i to i64
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.go ; 2 uses
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !76
  %i.gr = fadd float %i.gn, %i.gq
  store float %i.gr, ptr %i.gp, align 4, !tbaa !76
  %5 = add nsw i64 %indvars.iv17.i.i, 1
  %i.gs = add nsw i64 %5, %i.gh
  %i.gt = mul i64 %i.gs, %i.gj
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.gt
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !76
  %.sroa.0.4.vec.extract.i.i.i = extractelement <4 x i32> %i.fo, i64 1
  %i.gw = zext nneg i32 %.sroa.0.4.vec.extract.i.i.i to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.gw ; 2 uses
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !76
  %i.gz = fadd float %i.gv, %i.gy
  store float %i.gz, ptr %i.gx, align 4, !tbaa !76
  %6 = add nsw i64 %indvars.iv17.i.i, 2
  %i.ha = add nsw i64 %6, %i.gh
  %i.hb = mul i64 %i.ha, %i.gj
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.hb
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !76
  %.sroa.0.8.vec.extract.i.i.i = extractelement <4 x i32> %i.fo, i64 2
  %i.he = zext nneg i32 %.sroa.0.8.vec.extract.i.i.i to i64
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.he ; 2 uses
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !76
  %i.hh = fadd float %i.hd, %i.hg
  store float %i.hh, ptr %i.hf, align 4, !tbaa !76
  %7 = add nsw i64 %indvars.iv17.i.i, 3
  %i.hi = add nsw i64 %7, %i.gh
  %i.hj = mul i64 %i.hi, %i.gj
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.hj
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !76
  %.sroa.0.12.vec.extract.i.i.i = extractelement <4 x i32> %i.fo, i64 3
  %i.hm = zext nneg i32 %.sroa.0.12.vec.extract.i.i.i to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.hm ; 2 uses
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !76
  %i.hp = fadd float %i.hl, %i.ho
  store float %i.hp, ptr %i.hn, align 4, !tbaa !76
  br label %"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIN5xsimd5batchIfNSO_4sse2EEEEEDai.exit.i.i"

"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIN5xsimd5batchIfNSO_4sse2EEEEEDai.exit.i.i": ; preds = %.split.i.i.i, %.split.us.preheader.i.i.i
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %.not.i.i = icmp sgt i64 %indvars.iv.next.i.i, %i.ax
  %indvars.iv.next18.i.i = add nsw i64 %indvars.iv17.i.i, 4
  br i1 %.not.i.i, label %.preheader.i.i.from..preheader.loopexit.i.i, label %bb.i, !llvm.loop !2463

bb.j:                                             ; preds = %"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIfEEDai.exit.i.i", %.from..lr.ph16.i.i
  %indvars.iv22.i.i = phi i64 [ %i.cp, %.from..lr.ph16.i.i ], [ %indvars.iv.next23.i.i, %"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIfEEDai.exit.i.i" ] ; 3 uses
  %i.hq = add nsw i64 %indvars.iv22.i.i, %i.cj
  %i.hr = mul i64 %i.hq, %i.cl
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.hr
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !76 ; 3 uses
  %.val.i11.i.i = load float, ptr %i.bq, align 4, !tbaa !441
  %.val3.i.i.i = load float, ptr %i.bu, align 4, !tbaa !442
  br i1 %.not.i12.i.i, label %"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIfEEDai.exit.i.i", label %"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIfEEDai.exit.i.i.from."

"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIfEEDai.exit.i.i.from.": ; preds = %bb.j
  %i.hu = load i32, ptr %i.cn, align 4, !tbaa !204
  %i.hv = sext i32 %i.hu to i64
  %i.hw = mul nsw i64 %indvars.iv.i, %i.hv
  %i.hx = add nsw i64 %i.hw, %indvars.iv22.i.i
  %i.hy = load ptr, ptr %i.cm, align 8, !tbaa !659
  %i.hz = load i64, ptr %i.co, align 8, !tbaa !660
  %i.ia = mul i64 %i.hx, %i.hz
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.ia
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !76
  br label %"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIfEEDai.exit.i.i"

"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIfEEDai.exit.i.i": ; preds = %bb.j, %"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIfEEDai.exit.i.i.from."
  %i.id = phi float [ %i.ic, %"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIfEEDai.exit.i.i.from." ], [ 1.000000e+00, %bb.j ]
  %i.ie = fcmp ogt float %i.ht, 0.000000e+00
  %i.if = insertelement <2 x float> <float poison, float 1.000000e-03>, float %i.ht, i64 0
  %i.ig = insertelement <2 x float> <float -1.000000e-03, float poison>, float %i.ht, i64 1
  %i.ih = fsub <2 x float> %i.if, %i.ig           ; 2 uses
  %i.ii = fcmp olt <2 x float> %i.ih, splat (float f0x00800000)
  %i.ij = bitcast <2 x float> %i.ih to <2 x i32>
  %i.ik = select <2 x i1> %i.ii, <2 x i32> splat (i32 8388608), <2 x i32> %i.ij ; 2 uses
  %i.il = and <2 x i32> %i.ik, splat (i32 8388607)
  %i.im = or disjoint <2 x i32> %i.il, splat (i32 1065353216)
  %i.in = bitcast <2 x i32> %i.im to <2 x float>  ; 2 uses
  %i.io = extractelement <2 x float> %i.in, i64 0
  %i.ip = fadd float %i.io, -1.000000e+00         ; 5 uses
  %i.iq = call noundef float @llvm.fma.f32(float %i.ip, float f0x3D3BF404, float f0xBE471796)
  %i.ir = call noundef float @llvm.fma.f32(float %i.iq, float %i.ip, float f0x3ED4B281)
  %i.is = call noundef float @llvm.fma.f32(float %i.ir, float %i.ip, float f0xBF356C3D)
  %i.it = call noundef float @llvm.fma.f32(float %i.is, float %i.ip, float f0x3FB88DC0)
  %i.iu = fmul float %i.ip, %i.it
  %i.iv = extractelement <2 x float> %i.in, i64 1
  %i.iw = fadd float %i.iv, -1.000000e+00         ; 5 uses
  %i.ix = call noundef float @llvm.fma.f32(float %i.iw, float f0x3D3BF404, float f0xBE471796)
  %i.iy = call noundef float @llvm.fma.f32(float %i.ix, float %i.iw, float f0x3ED4B281)
  %i.iz = call noundef float @llvm.fma.f32(float %i.iy, float %i.iw, float f0xBF356C3D)
  %i.ja = call noundef float @llvm.fma.f32(float %i.iz, float %i.iw, float f0x3FB88DC0)
  %i.jb = fmul float %i.iw, %i.ja
  %i.jc = lshr <2 x i32> %i.ik, splat (i32 23)
  %i.jd = and <2 x i32> %i.jc, splat (i32 255)
  %i.je = add nsw <2 x i32> %i.jd, splat (i32 -127)
  %i.jf = sitofp <2 x i32> %i.je to <2 x float>   ; 2 uses
  %i.jg = extractelement <2 x float> %i.jf, i64 0
  %i.jh = fadd float %i.iu, %i.jg
  %i.ji = fsub float %i.jh, %i.as
  %i.jj = extractelement <2 x float> %i.jf, i64 1
  %i.jk = fadd float %i.jb, %i.jj
  %i.jl = fsub float %i.jk, %i.as
  %i.jm = fneg float %i.jl
  %.sroa.speculated.i.i.i.i.i = select i1 %i.ie, float %i.ji, float %i.jm
  %i.jn = fsub float %.sroa.speculated.i.i.i.i.i, %.val.i11.i.i
  %i.jo = fmul float %i.jn, 4.000000e+02
  %i.jp = fdiv float %i.jo, %.val3.i.i.i
  %i.jq = fptosi float %i.jp to i32
  %i.jr = call i32 @llvm.smax.i32(i32 %i.jq, i32 0)
  %i.js = call noundef range(i32 0, 400) i32 @llvm.umin.i32(i32 %i.jr, i32 399)
  %i.jt = zext nneg i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.jt ; 2 uses
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !76
  %i.jw = fadd float %i.id, %i.jv
  store float %i.jw, ptr %i.ju, align 4, !tbaa !76
  %indvars.iv.next23.i.i = add nsw i64 %indvars.iv22.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next23.i.i, %i.ax
  br i1 %exitcond.not.i.i, label %"_ZN3tev7simdForITkNSt3__18integralEiZZNS_11ImageCanvas23computeCanvasStatisticsENS1_10shared_ptrINS_5ImageEEES5_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmEUlTyiE_EEvT_SO_OT0_.exit.i", label %bb.j, !llvm.loop !2464

"_ZN3tev7simdForITkNSt3__18integralEiZZNS_11ImageCanvas23computeCanvasStatisticsENS1_10shared_ptrINS_5ImageEEES5_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmEUlTyiE_EEvT_SO_OT0_.exit.i": ; preds = %"_ZZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmENKUlTyiE_clIfEEDai.exit.i.i", %.preheader.i.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.jx = icmp slt i64 %indvars.iv.next.i, %i.bw
  br i1 %i.jx, label %bb.h, label %"_ZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEm.exit", !llvm.loop !2465

"_ZZN3tev11ImageCanvas23computeCanvasStatisticsENSt3__110shared_ptrINS_5ImageEEES4_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEm.exit": ; preds = %"_ZN3tev7simdForITkNSt3__18integralEiZZNS_11ImageCanvas23computeCanvasStatisticsENS1_10shared_ptrINS_5ImageEEES5_NS1_17basic_string_viewIcNS1_11char_traitsIcEEEENS_7EMetricENS_3BoxIiLj2EEERKNS1_5arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_8ituth2739ETransferEbbiENK3$_9clEmEUlTyiE_EEvT_SO_OT0_.exit.i", %bb.g
  %i.jy = add nuw i64 %.024, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.jy, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !2466

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge
  %i.jz = load ptr, ptr %i.d, align 8, !tbaa !297
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = atomicrmw add ptr %i.ka, i32 -1 acq_rel, align 4 ; 2 uses
  %i.kc = icmp slt i32 %i.kb, 1
  br i1 %i.kc, label %bb.k, label %_ZN3tev5Latch9countDownEv.exit.i

bb.k:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.kd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.k
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !276 ; 7 uses
  %i.kf = load i32, ptr %i.ke, align 8, !tbaa !283
  %i.kg = and i32 %i.kf, 8
  %.not.i.i.i.i = icmp eq i32 %i.kg, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.l:                                             ; preds = %.noexc.i.i
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !284 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !285 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.ki, %i.kk
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.l
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ke, i64 32
  %i.km = getelementptr inbounds nuw i8, ptr %i.ke, i64 48
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ke, i64 33
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ke, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.ki, %.from..lr.ph.i.i.i.i.i ], [ %i.la, %.noexc2.i.i ] ; 2 uses
  %i.kp = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !288 ; 2 uses
  %i.kq = load i8, ptr %i.kl, align 8             ; 2 uses
  %i.kr = trunc i8 %i.kq to i1                    ; 2 uses
  %i.ks = load ptr, ptr %i.km, align 8
  %i.kt = select i1 %i.kr, ptr %i.ks, ptr %i.kn
  %i.ku = load i64, ptr %i.ko, align 8
  %i.kv = lshr i8 %i.kq, 1
  %i.kw = zext nneg i8 %i.kv to i64
  %i.kx = select i1 %i.kr, i64 %i.ku, i64 %i.kw
  %i.ky = load ptr, ptr %i.kp, align 8, !tbaa !78
  %i.kz = load ptr, ptr %i.ky, align 8
  invoke void %i.kz(ptr noundef nonnull align 8 dereferenceable(8) %i.kp, ptr %i.kt, i64 %i.kx, i32 noundef 8, ptr nonnull @.str.117, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !3

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.la, %i.kk
  br i1 %.not.i.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.i, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

.from..loopexit.split-lp.i.i:                     ; preds = %bb.k
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

bb.m:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.lb = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.lb) #52
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.lc = icmp slt i32 %i.kb, 2
  br i1 %i.lc, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.l, %_ZN3tev5Latch9countDownEv.exit.i
  %i.ld = load ptr, ptr %i.d, align 8, !tbaa !297
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !245 ; 2 uses
  %i.lf = inttoptr i64 %i.le to ptr               ; 3 uses
  store ptr %i.lf, ptr %.reload.addr, align 8
  %.not.i = icmp eq i64 %i.le, 0
  br i1 %.not.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr60 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %index.addr60, align 8
  %i.lg = load ptr, ptr %i.lf, align 8
  call void %i.lg(ptr nonnull %i.lf)
  br label %AfterCoroEnd

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.lh = load ptr, ptr %i.h, align 8, !tbaa !298 ; 5 uses
  %.not.i.i21 = icmp eq ptr %i.lh, null
  br i1 %.not.i.i21, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lj = atomicrmw add ptr %i.li, i64 -1 acq_rel, align 8
end_hunk_1
