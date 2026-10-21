Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/DicomImageLoader?download=true
inline.NumInlined: 15066
inline.NumDeleted: 4736
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 140
begin_hunk_0_@_ZNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEE18destroy_deallocateEv:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEEclEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !670
  tail call void @_ZNSt3__113packaged_taskIFvvEEclEv(ptr noundef nonnull align 16 dereferenceable(56) %i.b)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEE6targetERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !521
  %i.c = icmp eq ptr %i.b, @_ZTSZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibEUlvE_
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %spec.select = select i1 %i.c, ptr %i.d, ptr null
  ret ptr %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEE11target_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret ptr @_ZTIZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibEUlvE_
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__113packaged_taskIFvvEEclEv(ptr noundef nonnull align 16 dereferenceable(56) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::exception_ptr", align 8 ; 4 uses
  %2 = alloca %"class.std::exception_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !2612 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 3) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.e = load i32, ptr %i.d, align 8, !tbaa !192
  %i.f = and i32 %i.e, 1
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit, label %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread

_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  store ptr null, ptr %1, align 8, !tbaa !193
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !193
  %.not = icmp eq ptr %i.h, null
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  br i1 %.not, label %bb.d, label %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread

_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread: ; preds = %bb.c, %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit
  call void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 2) #42
  unreachable

bb.d:                                             ; preds = %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !667 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !93
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZNKSt3__124__packaged_task_functionIFvvEEclEv.exit unwind label %bb.e, !inline_history !2609

_ZNKSt3__124__packaged_task_functionIFvvEEclEv.exit: ; preds = %bb.d
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNKSt3__124__packaged_task_functionIFvvEEclEv.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = call ptr @__cxa_begin_catch(ptr %i.o) #41 ; 0 uses
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %2) #41
  invoke void @_ZNSt3__17promiseIvE13set_exceptionESt13exception_ptr(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr nofree noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #41
  call void @__cxa_end_catch()
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt3__124__packaged_task_functionIFvvEEclEv.exit, %bb.f
  ret void

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #41
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.q

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #46
  unreachable
}

declare void @_ZNSt3__17promiseIvE13set_exceptionESt13exception_ptr(ptr noundef nonnull align 8 dereferenceable(8), ptr nofree noundef align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZSt17current_exceptionv(ptr dead_on_unwind writable sret(%"class.std::exception_ptr") align 8) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @sem_post(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZZNS_14readDicomImageERKN4gdcm11ImageReaderERKNS_19ImageLoaderSettingsEiENK3$_0clEmEUlmE_EENS_4TaskIvEES4_S4_mT0_iENKUlmmE_clEmm"(ptr dead_on_unwind nofree writable writeonly sret(%"class.tev::Task") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #45 ; 11 uses
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZZNS_14readDicomImageERKN4gdcm11ImageReaderERKNS_19ImageLoaderSettingsEiENK3$_0clEmEUlmE_EENS_4TaskIvEES4_S4_mT0_iENKUlmmE_clEmm.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZZNS_14readDicomImageERKN4gdcm11ImageReaderERKNS_19ImageLoaderSettingsEiENK3$_0clEmEUlmE_EENS_4TaskIvEES4_S4_mT0_iENKUlmmE_clEmm.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.reload.addr55 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr55)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2624)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #43
          to label %bb.a unwind label %.body.from.49 ; 5 uses

.body.from.49:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr55) #41
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !2625
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !93, !noalias !2625
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !2625
  store i32 2, ptr %i.g, align 8, !tbaa !95, !noalias !2625
  store ptr %i.f, ptr %i.d, align 8, !tbaa !100, !alias.scope !2626
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !101, !alias.scope !2626
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2627)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41, !noalias !2627
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr55)
          to label %bb.b unwind label %bb.d, !noalias !2627

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !102, !alias.scope !2627
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !105, !noalias !2627
  store ptr %i.j, ptr %i.i, align 8, !tbaa !105, !alias.scope !2627
  store ptr null, ptr %4, align 8, !tbaa !105, !noalias !2627
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !101, !noalias !2627 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !102, !noalias !2627
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !102, !alias.scope !2627
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !2627 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #46, !noalias !2627
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #41, !noalias !2627
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41, !noalias !2627
  %i.s = icmp ult i64 %2, %3
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.t = load ptr, ptr %1, align 8, !tbaa !2629, !nonnull !203, !align !219 ; 3 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !109
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %"_ZZZN3tev14readDicomImageERKN4gdcm11ImageReaderERKNS_19ImageLoaderSettingsEiENK3$_0clEmENKUlmE_clEm.exit", %.lr.ph, %bb.e
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr55)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #46
  unreachable

.lr.ph.split:                                     ; preds = %.lr.ph, %"_ZZZN3tev14readDicomImageERKN4gdcm11ImageReaderERKNS_19ImageLoaderSettingsEiENK3$_0clEmENKUlmE_clEm.exit"
  %.024 = phi i64 [ %i.at, %"_ZZZN3tev14readDicomImageERKN4gdcm11ImageReaderERKNS_19ImageLoaderSettingsEiENK3$_0clEmENKUlmE_clEm.exit" ], [ %2, %.lr.ph ] ; 2 uses
  %.val = load ptr, ptr %i.t, align 8             ; 2 uses
  %.val20 = load ptr, ptr %i.u, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !109 ; 3 uses
  %.not2.i = icmp eq i64 %i.ac, 0
  br i1 %.not2.i, label %"_ZZZN3tev14readDicomImageERKN4gdcm11ImageReaderERKNS_19ImageLoaderSettingsEiENK3$_0clEmENKUlmE_clEm.exit", label %.from..lr.ph.i

.from..lr.ph.i:                                   ; preds = %.lr.ph.split
  %i.ad = load ptr, ptr %.val, align 8, !tbaa !110
  br label %.from.44

.from.44:                                         ; preds = %.from.44, %.from..lr.ph.i
  %.01.i = phi i64 [ 0, %.from..lr.ph.i ], [ %i.as, %.from.44 ] ; 4 uses
  %i.ae = and i64 %.01.i, 2147483648
  %.not.i = icmp eq i64 %i.ae, 0
  %sext.i = shl i64 %.01.i, 32
  %i.af = ashr exact i64 %sext.i, 32
  %i.ag = add i64 %i.af, %i.ac
  %i.ah = and i64 %.01.i, 4294967295
  %i.ai = select i1 %.not.i, i64 %i.ah, i64 %i.ag
  %i.aj = getelementptr inbounds [24 x i8], ptr %i.ad, i64 %i.ai ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !686
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !687
  %i.an = mul i64 %i.am, %.024
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.an ; 2 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !90
  %i.aq = load float, ptr %.val20, align 4, !tbaa !90
  %i.ar = fmul float %i.ap, %i.aq
  store float %i.ar, ptr %i.ao, align 4, !tbaa !90
  %i.as = add nuw i64 %.01.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.as, %i.ac
  br i1 %exitcond.not.i, label %"_ZZZN3tev14readDicomImageERKN4gdcm11ImageReaderERKNS_19ImageLoaderSettingsEiENK3$_0clEmENKUlmE_clEm.exit", label %.from.44, !llvm.loop !2621

"_ZZZN3tev14readDicomImageERKN4gdcm11ImageReaderERKNS_19ImageLoaderSettingsEiENK3$_0clEmENKUlmE_clEm.exit": ; preds = %.from.44, %.lr.ph.split
  %i.at = add nuw i64 %.024, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !2622

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !100
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = atomicrmw add ptr %i.av, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ax = icmp slt i32 %i.aw, 1
  br i1 %i.ax, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i:                                       ; preds = %bb.g
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !113 ; 7 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !124
  %i.bb = and i32 %i.ba, 8
  %.not.i.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !125 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !126 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.bd, %i.bf
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 33
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.bd, %.from..lr.ph.i.i.i.i.i ], [ %i.bv, %.noexc2.i.i ] ; 2 uses
  %i.bk = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !129 ; 2 uses
  %i.bl = load i8, ptr %i.bg, align 8             ; 2 uses
  %i.bm = trunc i8 %i.bl to i1                    ; 2 uses
  %i.bn = load ptr, ptr %i.bh, align 8
  %i.bo = select i1 %i.bm, ptr %i.bn, ptr %i.bi
  %i.bp = load i64, ptr %i.bj, align 8
  %i.bq = lshr i8 %i.bl, 1
  %i.br = zext nneg i8 %i.bq to i64
  %i.bs = select i1 %i.bm, i64 %i.bp, i64 %i.br
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !93
  %i.bu = load ptr, ptr %i.bt, align 8
  invoke void %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr %i.bo, i64 %i.bs, i32 noundef 8, ptr nonnull @.str.60, i64 36)
          to label %.noexc2.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bv, %i.bf
  br i1 %.not.i.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.i, label %.from..noexc2.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.from..noexc2.i.i, %bb.g
  %lpad.loopexit.split-lp68 = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %lpad.loopexit.split-lp68, 0
  call void @__clang_call_terminate(ptr %i.bw) #46
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bx = icmp slt i32 %i.aw, 2
  br i1 %i.bx, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.h, %_ZN3tev5Latch9countDownEv.exit.i
  %i.by = load ptr, ptr %i.d, align 8, !tbaa !100
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !102 ; 2 uses
  %i.ca = inttoptr i64 %i.bz to ptr               ; 3 uses
  store ptr %i.ca, ptr %.reload.addr, align 8
  %.not.i21 = icmp eq i64 %i.bz, 0
  br i1 %.not.i21, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr56 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %index.addr56, align 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr nonnull %i.ca)
  br label %AfterCoroEnd

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.cc = load ptr, ptr %i.h, align 8, !tbaa !101 ; 5 uses
  %.not.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = atomicrmw add ptr %i.cd, i64 -1 acq_rel, align 8
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.j, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !93
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(24) %i.cc) #41, !inline_history !2
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cc) #41
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.i, %bb.j
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr55) #41
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #41
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend
  ret void

.body:                                            ; preds = %.body.from.49, %.body.from.
  %.merged18 = phi { ptr, i32 } [ %i.c, %.body.from.49 ], [ %i.r, %.body.from. ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #41
  resume { ptr, i32 } %.merged18
}

; Function Attrs: nounwind
declare void @_ZNSt3__115recursive_mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !469  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !471
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1) #41
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE24__emplace_back_slow_pathIJS1_EEEPS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ]  ; 2 uses
  store ptr %.0, ptr %i.a, align 8, !tbaa !469
  %i.h = getelementptr inbounds i8, ptr %.0, i64 -8
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev17CompoundExceptionC2ENSt3__14spanIKSt13exception_ptrLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i64 %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__1::__exception_guard_exceptions.744", align 8 ; 6 uses
  %4 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  call void @_ZN3tev17CompoundException12buildMessageENSt3__14spanIKSt13exception_ptrLm18446744073709551615EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %4, ptr %1, i64 %2)
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %4, align 8
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.e = load i64, ptr %4, align 8
  %i.f = and i64 %i.e, -2
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.f) #44
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev17CompoundExceptionE, i64 16), ptr %0, align 8, !tbaa !93
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.idx8 = shl nuw nsw i64 %2, 3                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.idx8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  store ptr %i.g, ptr %3, align 8, !tbaa !2633, !alias.scope !2634
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.k, align 8, !tbaa !692, !alias.scope !2634
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %bb.e, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorISt13exception_ptrEEEEDaRT_m.exit.i.i.i

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorISt13exception_ptrEEEEDaRT_m.exit.i.i.i: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx8) #43
          to label %bb.d unwind label %.body      ; 6 uses

bb.d:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorISt13exception_ptrEEEEDaRT_m.exit.i.i.i
  store ptr %i.l, ptr %i.g, align 8, !tbaa !470
  store ptr %i.l, ptr %i.i, align 8, !tbaa !469
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx8
  store ptr %i.m, ptr %i.j, align 8, !tbaa !471
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.026.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i ], [ %1, %bb.d ] ; 2 uses
  %.02325.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.d ] ; 2 uses
end_hunk_0
