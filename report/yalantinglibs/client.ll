Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/client?download=true
inline.NumInlined: 70008
inline.NumDeleted: 19195
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZNK4asio9execution6detail17any_executor_base7executeINS_6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEEEEvOSL_:bb.a
  call void @__clang_call_terminate(ptr %i.at) #50
  unreachable

_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_15any_io_executorEEESt14default_deleteIS8_EED2Ev.exit.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  br label %bb.s

bb.o:                                             ; preds = %_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEES8_E3ptr8allocateERKS8_.exit.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4asio6detail17executor_functionD2Ev.exit7

bb.p:                                             ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %3, align 8, !tbaa !725   ; 3 uses
  %.not.i6 = icmp eq ptr %i.aw, null
  br i1 %.not.i6, label %_ZN4asio6detail17executor_functionD2Ev.exit7, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !727
  invoke void %i.ax(ptr noundef nonnull %i.aw, i1 noundef zeroext false)
          to label %_ZN4asio6detail17executor_functionD2Ev.exit7 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #50
  unreachable

_ZN4asio6detail17executor_functionD2Ev.exit7:     ; preds = %bb.q, %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.au, %bb.o ], [ %i.av, %bb.p ], [ %i.av, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  call void @_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  resume { ptr, i32 } %.pn

bb.s:                                             ; preds = %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail22executor_function_view8completeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEEEEvPv(ptr noundef %0) #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !617
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEclEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #53
  unreachable

_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEclEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !616
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(56) %0), !inline_history !4158
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4asio6detail16thread_info_base8allocateINS1_21executor_function_tagEEEPvT_PS1_mm(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::bad_alloc", align 8    ; 4 uses
  %i.a = add i64 %1, 3                            ; 3 uses
  %i.b = lshr i64 %i.a, 2                         ; 3 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %.preheader53.preheader

.preheader53.preheader:                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !264  ; 6 uses
  %.not46 = icmp eq ptr %i.d, null                ; 2 uses
  br i1 %.not46, label %.thread.thread, label %bb.b

bb.b:                                             ; preds = %.preheader53.preheader
  %i.e = load i8, ptr %i.d, align 1, !tbaa !231
  %i.f = zext i8 %i.e to i64
  %.not47 = icmp samesign ugt i64 %i.b, %i.f
  br i1 %.not47, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = urem i64 %i.g, %2
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.thread51, label %.thread

.thread51:                                        ; preds = %bb.e, %bb.c
  %.lcssa66 = phi i64 [ 4, %bb.c ], [ 5, %bb.e ]
  %.lcssa64 = phi ptr [ %i.d, %bb.c ], [ %i.p, %bb.e ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.lcssa66
  store ptr null, ptr %i.j, align 8, !tbaa !264
  %i.k = load i8, ptr %.lcssa64, align 1, !tbaa !231
  br label %bb.h

.thread:                                          ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !264  ; 2 uses
  %.not46.1 = icmp eq ptr %i.m, null
  br i1 %.not46.1, label %.preheader.1, label %bb.d

.thread.thread:                                   ; preds = %.preheader53.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !264  ; 3 uses
  %.not46.174 = icmp eq ptr %i.o, null
  br i1 %.not46.174, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.thread.thread, %.thread
  %spec.select76 = phi ptr [ %i.o, %.thread.thread ], [ %i.d, %.thread ]
  %i.p = phi ptr [ %i.o, %.thread.thread ], [ %i.m, %.thread ] ; 3 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !231
  %i.r = zext i8 %i.q to i64
  %.not47.1 = icmp samesign ugt i64 %i.b, %i.r
  br i1 %.not47.1, label %.thread.1, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = urem i64 %i.s, %2
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.thread51, label %.thread.1

.thread.1:                                        ; preds = %bb.e, %bb.d
  %spec.select = select i1 %.not46, i64 5, i64 4
  br label %.preheader.1

.preheader.1:                                     ; preds = %.thread, %.thread.1
  %.lcssa62 = phi i64 [ %spec.select, %.thread.1 ], [ 4, %.thread ]
  %.lcssa = phi ptr [ %spec.select76, %.thread.1 ], [ %i.d, %.thread ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.lcssa62
  store ptr null, ptr %i.v, align 8, !tbaa !264
  tail call void @free(ptr noundef nonnull %.lcssa) #44
  br label %.loopexit

.loopexit:                                        ; preds = %.thread.thread, %.preheader.1, %bb.a
  %i.w = and i64 %i.a, -4
  %i.x = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.y = tail call i64 @llvm.umax.i64(i64 %2, i64 16) ; 4 uses
  %i.z = urem i64 %i.x, %i.y                      ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = sub nuw i64 %i.y, %i.z
  %i.ac = select i1 %i.aa, i64 0, i64 %i.ab
  %i.ad = add i64 %i.ac, %i.x
  %i.ae = tail call noalias ptr @aligned_alloc(i64 noundef %i.y, i64 noundef %i.ad) #57 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ae, i64 %i.y) ]
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %bb.f, label %_ZN4asio11aligned_newEmm.exit

bb.f:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %3, align 8, !tbaa !215
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #44 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !215
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #53
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  resume { ptr, i32 } %i.ag

_ZN4asio11aligned_newEmm.exit:                    ; preds = %.loopexit
  %i.ah = icmp ult i64 %i.a, 1024
  %i.ai = trunc i64 %i.b to i8
  %i.aj = select i1 %i.ah, i8 %i.ai, i8 0
  br label %bb.h

bb.h:                                             ; preds = %.thread51, %_ZN4asio11aligned_newEmm.exit
  %.lcssa64.sink = phi ptr [ %.lcssa64, %.thread51 ], [ %i.ae, %_ZN4asio11aligned_newEmm.exit ] ; 2 uses
  %.sink = phi i8 [ %i.k, %.thread51 ], [ %i.aj, %_ZN4asio11aligned_newEmm.exit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.lcssa64.sink, i64 %1
  store i8 %.sink, ptr %i.ak, align 1, !tbaa !231
  ret ptr %.lcssa64.sink
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function8completeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEES8_EEvPNS1_9impl_baseEb(ptr noundef %0, i1 noundef zeroext %1) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::allocator.310", align 1 ; 4 uses
  %3 = alloca %"struct.asio::detail::executor_function::impl<asio::detail::binder1<(lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/io_context_pool.hpp:142:20), std::error_code>, std::allocator<void>>::ptr", align 8 ; 9 uses
  %4 = alloca %"class.asio::detail::binder1", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  store ptr %2, ptr %3, align 8, !tbaa !768
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !770
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %0, ptr %i.b, align 8, !tbaa !769
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 24, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !616  ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !616
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !617  ; 3 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.not.i.i.i, label %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEC2EOSK_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 16, i1 false), !tbaa.struct !618
  store ptr %i.g, ptr %i.i, align 8, !tbaa !617
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEC2EOSK_.exit

_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEC2EOSK_.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !633  ; 2 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !633
  store ptr null, ptr %i.k, align 8, !tbaa !633
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !531
  invoke void @_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEES8_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEC2EOSK_.exit
  %i.o = inttoptr i64 %i.l to ptr
  br i1 %1, label %bb.d, label %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS1_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEESM_EEvRSJ_RT0_.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN4asio6detail19asio_handler_invokeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEESJ_SK_EEvRSI_PNS2_IT0_T1_EE.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt25__throw_bad_function_callv() #53
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

_ZN4asio6detail19asio_handler_invokeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEESJ_SK_EEvRSI_PNS2_IT0_T1_EE.exit.i: ; preds = %bb.d
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %_ZN4asio6detail19asio_handler_invokeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEESJ_SK_EEvRSI_PNS2_IT0_T1_EE.exit.i._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS1_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEESM_EEvRSJ_RT0_.exit_crit_edge unwind label %bb.f, !inline_history !4159

_ZN4asio6detail19asio_handler_invokeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEESJ_SK_EEvRSI_PNS2_IT0_T1_EE.exit.i._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS1_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEESM_EEvRSJ_RT0_.exit_crit_edge: ; preds = %_ZN4asio6detail19asio_handler_invokeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEESJ_SK_EEvRSI_PNS2_IT0_T1_EE.exit.i
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !633
  br label %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS1_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEESM_EEvRSJ_RT0_.exit

bb.f:                                             ; preds = %_ZN4asio6detail19asio_handler_invokeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEESJ_SK_EEvRSI_PNS2_IT0_T1_EE.exit.i, %bb.e, %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEC2EOSK_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  invoke void @_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEES8_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEES8_E3ptrD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #50
  unreachable

_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEES8_E3ptrD2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  resume { ptr, i32 } %i.p

_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS1_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEESM_EEvRSJ_RT0_.exit: ; preds = %_ZN4asio6detail19asio_handler_invokeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEESJ_SK_EEvRSI_PNS2_IT0_T1_EE.exit.i._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS1_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEESM_EEvRSJ_RT0_.exit_crit_edge, %bb.c
  %i.s = phi ptr [ %.pre, %_ZN4asio6detail19asio_handler_invokeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEESJ_SK_EEvRSI_PNS2_IT0_T1_EE.exit.i._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS1_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEESM_EEvRSJ_RT0_.exit_crit_edge ], [ %i.o, %bb.c ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_15any_io_executorEEESt14default_deleteIS8_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_15any_io_executorEEEEclEPS8_.exit.i.i.i

_ZNKSt14default_deleteIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_15any_io_executorEEEEclEPS8_.exit.i.i.i: ; preds = %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS1_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEESM_EEvRSJ_RT0_.exit
  call void @_ZN4asio6detail14io_object_implINS0_22deadline_timer_serviceINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS6_EEEEEENS_15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.s) #44
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 120) #51
  br label %_ZNSt10unique_ptrIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_15any_io_executorEEESt14default_deleteIS8_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_15any_io_executorEEESt14default_deleteIS8_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_15any_io_executorEEEEclEPS8_.exit.i.i.i, %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS1_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEESM_EEvRSJ_RT0_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !617  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i1.i.i, label %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_15any_io_executorEEESt14default_deleteIS8_EED2Ev.exit.i.i
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %4, i32 noundef 3)
          to label %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeED2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #50
  unreachable

_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_15any_io_executorEEESt14default_deleteIS8_EED2Ev.exit.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  invoke void @_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEES8_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEES8_E3ptrD2Ev.exit7 unwind label %bb.j

bb.j:                                             ; preds = %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeED2Ev.exit
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #50
  unreachable

_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEES8_E3ptrD2Ev.exit7: ; preds = %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEES8_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !769  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !633  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_15any_io_executorEEESt14default_deleteIS8_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_15any_io_executorEEEEclEPS8_.exit.i.i.i.i

_ZNKSt14default_deleteIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_15any_io_executorEEEEclEPS8_.exit.i.i.i.i: ; preds = %bb.b
  tail call void @_ZN4asio6detail14io_object_implINS0_22deadline_timer_serviceINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS6_EEEEEENS_15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.e) #44
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 120) #51
  br label %_ZNSt10unique_ptrIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_15any_io_executorEEESt14default_deleteIS8_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_15any_io_executorEEESt14default_deleteIS8_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_15any_io_executorEEEEclEPS8_.exit.i.i.i.i, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !617  ; 2 uses
  %.not.i1.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i1.i.i.i, label %_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEES8_ED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_15any_io_executorEEESt14default_deleteIS8_EED2Ev.exit.i.i.i
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i32 noundef 3)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEES8_ED2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #50
  unreachable

_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEES8_ED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_15any_io_executorEEESt14default_deleteIS8_EED2Ev.exit.i.i.i, %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !769
  br label %bb.e

bb.e:                                             ; preds = %_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEES8_ED2Ev.exit, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !770  ; 5 uses
  %.not1 = icmp eq ptr %i.l, null
  br i1 %.not1, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !588  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i: ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !587  ; 4 uses
  %.not3 = icmp eq ptr %i.p, null
  br i1 %.not3, label %.thread.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !264
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %.preheader.1.i.i

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !264
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.g, label %.thread.i.i

bb.g:                                             ; preds = %.preheader.1.i.i, %.preheader.preheader.i.i
  %.lcssa.i.i = phi i64 [ 4, %.preheader.preheader.i.i ], [ 5, %.preheader.1.i.i ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.lcssa.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.y = load i8, ptr %i.x, align 1, !tbaa !231
  store i8 %i.y, ptr %i.l, align 1, !tbaa !231
  store ptr %i.l, ptr %i.w, align 8, !tbaa !264
  br label %_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEES9_EENS0_16thread_info_base21executor_function_tagEE10deallocateEPSO_m.exit

.thread.i.i:                                      ; preds = %.preheader.1.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i, %bb.f
  tail call void @free(ptr noundef nonnull %i.l) #44
  br label %_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEES9_EENS0_16thread_info_base21executor_function_tagEE10deallocateEPSO_m.exit

_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEES9_EENS0_16thread_info_base21executor_function_tagEE10deallocateEPSO_m.exit: ; preds = %bb.g, %.thread.i.i
  store ptr null, ptr %i.k, align 8, !tbaa !770
  br label %bb.h

bb.h:                                             ; preds = %_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEUlT_E_St10error_codeEES9_EENS0_16thread_info_base21executor_function_tagEE10deallocateEPSO_m.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17handler_work_baseINS_15any_io_executorEvNS_10io_contextENS_8executorEvEC2EiiRKS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(56) %3) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.asio::execution::prefer_only.471", align 1 ; 3 uses
  %5 = alloca %"class.asio::execution::any_executor", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !623
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4168
  %i.d = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.c()
          to label %_ZNK4asio9execution6detail17any_executor_base11target_typeEv.exit unwind label %bb.f, !inline_history !4160

_ZNK4asio9execution6detail17any_executor_base11target_typeEv.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !430  ; 3 uses
  %i.g = icmp eq ptr %i.f, @_ZTSN4asio10io_context19basic_executor_typeISaIvELm0EEE
  br i1 %i.g, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK4asio9execution6detail17any_executor_base11target_typeEv.exit
  %i.h = load i8, ptr %i.f, align 1, !tbaa !231
  %.not.i = icmp eq i8 %i.h, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread5, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(52) @_ZTSN4asio10io_context19basic_executor_typeISaIvELm0EEE) #44
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread5

end_hunk_0
begin_hunk_1_@_ZNK4asio9execution6detail17any_executor_base7executeINS_6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEEEEvOSO_:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !617
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 16, i1 false), !tbaa.struct !618
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !617
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !617
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.aj = load <2 x ptr>, ptr %i.m, align 8, !tbaa !264
  store ptr null, ptr %i.o, align 8, !tbaa !260
  store <2 x ptr> %i.aj, ptr %i.ai, align 8, !tbaa !264
  store ptr null, ptr %i.m, align 8, !tbaa !645
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !531
  store ptr @_ZN4asio6detail17executor_function8completeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEES8_EEvPNS1_9impl_baseEb, ptr %i.z, align 8, !tbaa !727
  store ptr %i.z, ptr %3, align 8, !tbaa !725
  store ptr null, ptr %i.t, align 8, !tbaa !780
  invoke void @_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEES8_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #50
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.j unwind label %bb.v

bb.j:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %3, align 8, !tbaa !725   ; 3 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %_ZN4asio6detail17executor_functionD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !727
  invoke void %i.ao(ptr noundef nonnull %i.an, i1 noundef zeroext false)
          to label %_ZN4asio6detail17executor_functionD2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #50
  unreachable

_ZN4asio6detail17executor_functionD2Ev.exit:      ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  %i.ar = load ptr, ptr %i.o, align 8, !tbaa !260 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZN4asio6detail17executor_functionD2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.as, align 8, !tbaa !262
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !263
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !215
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #44, !inline_history !42
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !215
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #44, !inline_history !42
  br label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !231
  %.not.i.i.i.i.i6 = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i.i6, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !232
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i = phi i32 [ %i.av, %bb.p ], [ %i.bf, %bb.q ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bg, label %bb.r, label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !243

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #44
  br label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.n, %_ZN4asio6detail17executor_functionD2Ev.exit
  %i.bh = load ptr, ptr %i.ae, align 8, !tbaa !617 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i, label %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.bi = invoke noundef zeroext i1 %i.bh(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef 3)
          to label %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeED2Ev.exit unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #50
  unreachable

_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeED2Ev.exit: ; preds = %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  br label %bb.y

bb.u:                                             ; preds = %_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEES8_E3ptr8allocateERKS8_.exit.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4asio6detail17executor_functionD2Ev.exit8

bb.v:                                             ; preds = %bb.i
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %3, align 8, !tbaa !725   ; 3 uses
  %.not.i7 = icmp eq ptr %i.bn, null
  br i1 %.not.i7, label %_ZN4asio6detail17executor_functionD2Ev.exit8, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !727
  invoke void %i.bo(ptr noundef nonnull %i.bn, i1 noundef zeroext false)
          to label %_ZN4asio6detail17executor_functionD2Ev.exit8 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #50
  unreachable

_ZN4asio6detail17executor_functionD2Ev.exit8:     ; preds = %bb.w, %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.u ], [ %i.bm, %bb.v ], [ %i.bm, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  call void @_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  resume { ptr, i32 } %.pn

bb.y:                                             ; preds = %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail22executor_function_view8completeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEEEEvPv(ptr noundef %0) #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !617
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEclEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #53
  unreachable

_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEclEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !616
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(64) %0), !inline_history !4190
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function8completeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEES8_EEvPNS1_9impl_baseEb(ptr noundef %0, i1 noundef zeroext %1) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::allocator.310", align 1 ; 4 uses
  %3 = alloca %"struct.asio::detail::executor_function::impl<asio::detail::binder1<(lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/io_context_pool.hpp:152:31), std::error_code>, std::allocator<void>>::ptr", align 8 ; 9 uses
  %4 = alloca %"class.asio::detail::binder1.529", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  store ptr %2, ptr %3, align 8, !tbaa !778
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !780
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %0, ptr %i.b, align 8, !tbaa !779
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 24, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !616  ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !616
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !617  ; 3 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.not.i.i.i, label %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEC2EOSP_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 16, i1 false), !tbaa.struct !618
  store ptr %i.g, ptr %i.i, align 8, !tbaa !617
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEC2EOSP_.exit

_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEC2EOSP_.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !260
  %i.o = load <2 x ptr>, ptr %i.k, align 8, !tbaa !264
  store ptr null, ptr %i.m, align 8, !tbaa !260
  store <2 x ptr> %i.o, ptr %i.j, align 8, !tbaa !264
  store ptr null, ptr %i.k, align 8, !tbaa !645
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !531
  invoke void @_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEES8_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEC2EOSP_.exit
  br i1 %1, label %bb.d, label %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS1_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEESR_EEvRSM_RT0_.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN4asio6detail19asio_handler_invokeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEESO_SP_EEvRSL_PNS2_IT0_T1_EE.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt25__throw_bad_function_callv() #53
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

_ZN4asio6detail19asio_handler_invokeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEESO_SP_EEvRSL_PNS2_IT0_T1_EE.exit.i: ; preds = %bb.d
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZN4asio6detail19asio_handler_invokeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEESO_SP_EEvRSL_PNS2_IT0_T1_EE.exit.i._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS1_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEESR_EEvRSM_RT0_.exit_crit_edge unwind label %bb.f, !inline_history !4191

_ZN4asio6detail19asio_handler_invokeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEESO_SP_EEvRSL_PNS2_IT0_T1_EE.exit.i._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS1_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEESR_EEvRSM_RT0_.exit_crit_edge: ; preds = %_ZN4asio6detail19asio_handler_invokeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEESO_SP_EEvRSL_PNS2_IT0_T1_EE.exit.i
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !260
  br label %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS1_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEESR_EEvRSM_RT0_.exit

bb.f:                                             ; preds = %_ZN4asio6detail19asio_handler_invokeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEESO_SP_EEvRSL_PNS2_IT0_T1_EE.exit.i, %bb.e, %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEC2EOSP_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  invoke void @_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEES8_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEES8_E3ptrD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #50
  unreachable

_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEES8_E3ptrD2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  resume { ptr, i32 } %i.r

_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS1_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEESR_EEvRSM_RT0_.exit: ; preds = %_ZN4asio6detail19asio_handler_invokeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEESO_SP_EEvRSL_PNS2_IT0_T1_EE.exit.i._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS1_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEESR_EEvRSM_RT0_.exit_crit_edge, %bb.c
  %i.u = phi ptr [ %.pre, %_ZN4asio6detail19asio_handler_invokeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEESO_SP_EEvRSL_PNS2_IT0_T1_EE.exit.i._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS1_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEESR_EEvRSM_RT0_.exit_crit_edge ], [ %i.n, %bb.c ] ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS1_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEESR_EEvRSM_RT0_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !262
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !263
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !215
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #44, !inline_history !42
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !215
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #44, !inline_history !42
  br label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !231
  %.not.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !232
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !243

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #44
  br label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i, %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS1_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEESR_EEvRSM_RT0_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !617 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.am = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef 3)
          to label %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeED2Ev.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #50
  unreachable

_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeED2Ev.exit: ; preds = %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  invoke void @_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEES8_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEES8_E3ptrD2Ev.exit7 unwind label %bb.p

bb.p:                                             ; preds = %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeED2Ev.exit
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #50
  unreachable

_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEES8_E3ptrD2Ev.exit7: ; preds = %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEES8_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !779  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !260  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !262
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !263
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !215
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #44, !inline_history !4192
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !215
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #44, !inline_history !4192
  br label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !231
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !232
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !243

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #44
  br label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !617  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEES8_ED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.w = invoke noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i32 noundef 3)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEES8_ED2Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #50
  unreachable

_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeEES8_ED2Ev.exit: ; preds = %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, %bb.i
  store ptr null, ptr %i.a, align 8, !tbaa !779
  br label %bb.k

end_hunk_1
begin_hunk_2_@_ZNK4asio6detail31initiate_dispatch_with_executorINS_15any_io_executorEEclIRSt8functionIFvvEEEEvOT_PNSt9enable_ifIXsr9execution11is_executorINSt11conditionalILb1ES2_S9_E4typeEEE5valueEvE4typeEPNSB_IXntsr6detail27is_work_dispatcher_requiredINSt5decayIS9_E4typeES2_EE5valueEvE4typeE:bb.a
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #50
  unreachable

_ZN4asio6detail7binder0ISt8functionIFvvEEED2Ev.exit: ; preds = %_ZNK25asio_execution_execute_fn4implclIN4asio15any_io_executorENS2_6detail7binder0ISt8functionIFvvEEEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE0EENS_11call_traitsIS0_SB_SD_vvvvvE11result_typeEE4typeEOSB_OSC_.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !624
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !631
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %_ZN4asio6detail7binder0ISt8functionIFvvEEED2Ev.exit
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #50
  unreachable

_ZN4asio9execution6detail17any_executor_baseD2Ev.exit: ; preds = %_ZN4asio6detail7binder0ISt8functionIFvvEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  ret void

bb.j:                                             ; preds = %_ZN4asio6detail12bind_handlerIRSt8functionIFvvEEEENS0_7binder0INSt5decayIT_E4typeEEEOS8_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !617  ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.u, null
  br i1 %.not.i.i6, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %.body unwind label %bb.l      ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #50
  unreachable

.body:                                            ; preds = %bb.k, %bb.j, %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.t, %bb.k ], [ %i.f, %bb.e ], [ %i.t, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !624
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !631
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit8 unwind label %bb.m

bb.m:                                             ; preds = %.body
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #50
  unreachable

_ZN4asio9execution6detail17any_executor_baseD2Ev.exit8: ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK14asio_prefer_fn4implclIRKN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEENS6_11allocator_tISaIvEEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_T1_EEE8overloadLNS_13overload_typeE5EENS_11call_traitsIS0_SH_SK_vvvvvvvE11result_typeEE4typeEOSH_OSI_OSJ_(ptr dead_on_unwind noalias writable sret(%"class.asio::any_io_executor") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.asio::execution::prefer_only", align 1 ; 3 uses
  %6 = alloca %"class.asio::execution::any_executor", align 8 ; 9 uses
  %7 = alloca %"class.asio::any_io_executor", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4208)
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !4207
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !628, !noalias !4209
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !762, !noalias !4209
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !624, !noalias !4209
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !718, !noalias !4209
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(56) %2), !noalias !4209, !inline_history !4206
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44, !noalias !4209
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.asio::execution::any_executor") align 8 %6, ptr noundef %i.i, ptr noundef nonnull %5), !noalias !4210, !inline_history !4206
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44, !noalias !4209
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !624, !noalias !4210 ; 2 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !624, !alias.scope !4210
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !623, !noalias !4210
  store ptr %i.o, ptr %i.m, align 8, !tbaa !623, !alias.scope !4210
  store ptr @_ZZN4asio9execution6detail17any_executor_base16object_fns_tableIvEEPKNS2_10object_fnsEPNSt9enable_ifIXsr7is_sameIT_vEE5valueEvE4typeEE3fns, ptr %i.k, align 8, !tbaa !624, !noalias !4210
  store ptr @_ZZN4asio9execution6detail17any_executor_base16target_fns_tableIvEEPKNS2_10target_fnsEPNSt9enable_ifIXsr7is_sameIT_vEE5valueEvE4typeEE3fns, ptr %i.n, align 8, !tbaa !623, !noalias !4210
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !761, !noalias !4210
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %_ZN4asio15any_io_executorC2INS_9execution12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS2_6detail8blocking7never_tILi0EEENS2_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS8_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS8_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEEET_NS_10constraintIXsr11conditionalIXaantsr7is_sameISV_S0_EE5valuesr10is_base_ofINS8_17any_executor_baseESV_EE5valueENS8_22supportable_propertiesILm0EFvS7_SB_SF_SJ_SM_SQ_ST_EE15is_valid_targetISV_EESt17integral_constantIbLb0EEE4typeE5valueEiE4typeE.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #50
  unreachable

_ZN4asio15any_io_executorC2INS_9execution12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS2_6detail8blocking7never_tILi0EEENS2_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS8_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS8_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEEET_NS_10constraintIXsr11conditionalIXaantsr7is_sameISV_S0_EE5valuesr10is_base_ofINS8_17any_executor_baseESV_EE5valueENS8_22supportable_propertiesILm0EFvS7_SB_SF_SJ_SM_SQ_ST_EE15is_valid_targetISV_EESt17integral_constantIbLb0EEE4typeE5valueEiE4typeE.exit.i.i: ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr null, ptr %i.t, align 8, !tbaa !625, !noalias !4210
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !628, !noalias !4210
  store ptr %i.w, ptr %i.u, align 8, !tbaa !628, !alias.scope !4210
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.v, align 8, !tbaa !628, !noalias !4210
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !624, !noalias !4210
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !631
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %_ZNK14asio_prefer_fn4implclIRKN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SE_SG_vvvvvvvE11result_typeEE4typeEOSE_OSF_.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZN4asio15any_io_executorC2INS_9execution12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS2_6detail8blocking7never_tILi0EEENS2_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS8_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS8_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEEET_NS_10constraintIXsr11conditionalIXaantsr7is_sameISV_S0_EE5valuesr10is_base_ofINS8_17any_executor_baseESV_EE5valueENS8_22supportable_propertiesILm0EFvS7_SB_SF_SJ_SM_SQ_ST_EE15is_valid_targetISV_EESt17integral_constantIbLb0EEE4typeE5valueEiE4typeE.exit.i.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #50
  unreachable

_ZNK14asio_prefer_fn4implclIRKN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SE_SG_vvvvvvvE11result_typeEE4typeEOSE_OSF_.exit: ; preds = %_ZN4asio15any_io_executorC2INS_9execution12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS2_6detail8blocking7never_tILi0EEENS2_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS8_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS8_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEEET_NS_10constraintIXsr11conditionalIXaantsr7is_sameISV_S0_EE5valuesr10is_base_ofINS8_17any_executor_baseESV_EE5valueENS8_22supportable_propertiesILm0EFvS7_SB_SF_SJ_SM_SQ_ST_EE15is_valid_targetISV_EESt17integral_constantIbLb0EEE4typeE5valueEiE4typeE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !4207
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !624 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !624
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !623
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !623
  store ptr @_ZZN4asio9execution6detail17any_executor_base16object_fns_tableIvEEPKNS2_10object_fnsEPNSt9enable_ifIXsr7is_sameIT_vEE5valueEvE4typeEE3fns, ptr %i.j, align 8, !tbaa !624
  store ptr @_ZZN4asio9execution6detail17any_executor_base16target_fns_tableIvEEPKNS2_10target_fnsEPNSt9enable_ifIXsr7is_sameIT_vEE5valueEvE4typeEE3fns, ptr %i.m, align 8, !tbaa !623
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !761
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %7)
          to label %_ZN4asio15any_io_executorC2EOS0_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNK14asio_prefer_fn4implclIRKN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SE_SG_vvvvvvvE11result_typeEE4typeEOSE_OSF_.exit
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #50
  unreachable

_ZN4asio15any_io_executorC2EOS0_.exit:            ; preds = %_ZNK14asio_prefer_fn4implclIRKN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SE_SG_vvvvvvvE11result_typeEE4typeEOSE_OSF_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr null, ptr %i.aj, align 8, !tbaa !625
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load ptr, ptr %i.u, align 8, !tbaa !628
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !628
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.u, align 8, !tbaa !628
  %i.am = load ptr, ptr %i.j, align 8, !tbaa !624
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !631
  invoke void %i.an(ptr noundef nonnull align 8 dereferenceable(56) %7)
          to label %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN4asio15any_io_executorC2EOS0_.exit
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #50
  unreachable

_ZN4asio9execution6detail17any_executor_baseD2Ev.exit: ; preds = %_ZN4asio15any_io_executorC2EOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4asio9execution6detail17any_executor_base7executeINS_6detail7binder0ISt8functionIFvvEEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.asio::detail::executor_function", align 8 ; 7 uses
  %3 = alloca %"class.asio::detail::binder0", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !623  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !764  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull @_ZN4asio6detail22executor_function_view8completeINS0_7binder0ISt8functionIFvvEEEEEEvPv, ptr nonnull %1)
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !765
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !616  ; 2 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !616
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !617  ; 3 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.not.i.i, label %_ZN4asio6detail7binder0ISt8functionIFvvEEEC2EOS5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !618
  store ptr %i.k, ptr %i.l, align 8, !tbaa !617
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  br label %_ZN4asio6detail7binder0ISt8functionIFvvEEEC2EOS5_.exit

_ZN4asio6detail7binder0ISt8functionIFvvEEEC2EOS5_.exit: ; preds = %bb.c, %bb.d
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !588  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZN4asio6detail17executor_function4implINS0_7binder0ISt8functionIFvvEEEESaIvEE3ptr8allocateERKS8_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4asio6detail7binder0ISt8functionIFvvEEEC2EOS5_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !587
  br label %_ZN4asio6detail17executor_function4implINS0_7binder0ISt8functionIFvvEEEESaIvEE3ptr8allocateERKS8_.exit.i

_ZN4asio6detail17executor_function4implINS0_7binder0ISt8functionIFvvEEEESaIvEE3ptr8allocateERKS8_.exit.i: ; preds = %bb.e, %_ZN4asio6detail7binder0ISt8functionIFvvEEEC2EOS5_.exit
  %i.q = phi ptr [ %i.p, %bb.e ], [ null, %_ZN4asio6detail7binder0ISt8functionIFvvEEEC2EOS5_.exit ]
  %i.r = invoke noundef ptr @_ZN4asio6detail16thread_info_base8allocateINS1_21executor_function_tagEEEPvT_PS1_mm(ptr noundef %i.q, i64 noundef 48, i64 noundef 8)
          to label %.noexc unwind label %bb.m     ; 5 uses

.noexc:                                           ; preds = %_ZN4asio6detail17executor_function4implINS0_7binder0ISt8functionIFvvEEEESaIvEE3ptr8allocateERKS8_.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 24, i1 false)
  store ptr %i.i, ptr %i.t, align 8, !tbaa !616
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !618
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !617
  store ptr %i.w, ptr %i.v, align 8, !tbaa !617
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc
  store ptr @_ZN4asio6detail17executor_function8completeINS0_7binder0ISt8functionIFvvEEEESaIvEEEvPNS1_9impl_baseEb, ptr %i.r, align 8, !tbaa !727
  store ptr %i.r, ptr %2, align 8, !tbaa !725
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %2, align 8, !tbaa !725    ; 3 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZN4asio6detail17executor_functionD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !727
  invoke void %i.y(ptr noundef nonnull %i.x, i1 noundef zeroext false)
          to label %_ZN4asio6detail17executor_functionD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #50
  unreachable

_ZN4asio6detail17executor_functionD2Ev.exit:      ; preds = %bb.h, %bb.i
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !617 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZN4asio6detail7binder0ISt8functionIFvvEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4asio6detail17executor_functionD2Ev.exit
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZN4asio6detail7binder0ISt8functionIFvvEEED2Ev.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #50
  unreachable

_ZN4asio6detail7binder0ISt8functionIFvvEEED2Ev.exit: ; preds = %_ZN4asio6detail17executor_functionD2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  br label %bb.s

bb.m:                                             ; preds = %_ZN4asio6detail17executor_function4implINS0_7binder0ISt8functionIFvvEEEESaIvEE3ptr8allocateERKS8_.exit.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4asio6detail17executor_functionD2Ev.exit7

bb.n:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %2, align 8, !tbaa !725   ; 3 uses
  %.not.i6 = icmp eq ptr %i.ah, null
  br i1 %.not.i6, label %_ZN4asio6detail17executor_functionD2Ev.exit7, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !727
  invoke void %i.ai(ptr noundef nonnull %i.ah, i1 noundef zeroext false)
          to label %_ZN4asio6detail17executor_functionD2Ev.exit7 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #50
  unreachable

_ZN4asio6detail17executor_functionD2Ev.exit7:     ; preds = %bb.o, %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.af, %bb.m ], [ %i.ag, %bb.n ], [ %i.ag, %bb.o ]
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !617 ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.am, null
  br i1 %.not.i.i8, label %_ZN4asio6detail7binder0ISt8functionIFvvEEED2Ev.exit9, label %bb.q

bb.q:                                             ; preds = %_ZN4asio6detail17executor_functionD2Ev.exit7
  %i.an = invoke noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZN4asio6detail7binder0ISt8functionIFvvEEED2Ev.exit9 unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #50
  unreachable

_ZN4asio6detail7binder0ISt8functionIFvvEEED2Ev.exit9: ; preds = %_ZN4asio6detail17executor_functionD2Ev.exit7, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  resume { ptr, i32 } %.pn

bb.s:                                             ; preds = %_ZN4asio6detail7binder0ISt8functionIFvvEEED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail22executor_function_view8completeINS0_7binder0ISt8functionIFvvEEEEEEvPv(ptr noundef %0) #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !617
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZN4asio6detail7binder0ISt8functionIFvvEEEclEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #53
  unreachable

_ZN4asio6detail7binder0ISt8functionIFvvEEEclEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !616
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(32) %0), !inline_history !4211
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function4implINS0_7binder0ISt8functionIFvvEEEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !783  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !617  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN4asio6detail17executor_function4implINS0_7binder0ISt8functionIFvvEEEESaIvEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i32 noundef 3)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder0ISt8functionIFvvEEEESaIvEED2Ev.exit.i unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #50
  unreachable

_ZN4asio6detail17executor_function4implINS0_7binder0ISt8functionIFvvEEEESaIvEED2Ev.exit.i: ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !783
  br label %bb.e

bb.e:                                             ; preds = %_ZN4asio6detail17executor_function4implINS0_7binder0ISt8functionIFvvEEEESaIvEED2Ev.exit.i, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !784  ; 5 uses
  %.not1.i = icmp eq ptr %i.j, null
  br i1 %.not1.i, label %_ZN4asio6detail17executor_function4implINS0_7binder0ISt8functionIFvvEEEESaIvEE3ptr5resetEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !588  ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i2.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !587  ; 4 uses
  %.not4.i = icmp eq ptr %i.n, null
  br i1 %.not4.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !264
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.g, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !264
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %.thread.i.i.i

bb.g:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.lcssa.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.w = load i8, ptr %i.v, align 1, !tbaa !231
  store i8 %i.w, ptr %i.j, align 1, !tbaa !231
  store ptr %i.j, ptr %i.u, align 8, !tbaa !264
  br label %_ZN4asio6detail17executor_function4implINS0_7binder0ISt8functionIFvvEEEESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.f
  tail call void @free(ptr noundef nonnull %i.j) #44
  br label %_ZN4asio6detail17executor_function4implINS0_7binder0ISt8functionIFvvEEEESaIvEE3ptr5resetEv.exit

_ZN4asio6detail17executor_function4implINS0_7binder0ISt8functionIFvvEEEESaIvEE3ptr5resetEv.exit: ; preds = %bb.g, %.thread.i.i.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function8completeINS0_7binder0ISt8functionIFvvEEEESaIvEEEvPNS1_9impl_baseEb(ptr noundef %0, i1 noundef zeroext %1) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_2
begin_hunk_3_@_ZNK4asio9execution6detail17any_executor_base7executeINS_6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEEEEvOSO_:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !617
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 16, i1 false), !tbaa.struct !618
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !617
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !617
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.aj = load <2 x ptr>, ptr %i.m, align 8, !tbaa !264
  store ptr null, ptr %i.o, align 8, !tbaa !260
  store <2 x ptr> %i.aj, ptr %i.ai, align 8, !tbaa !264
  store ptr null, ptr %i.m, align 8, !tbaa !645
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !531
  store ptr @_ZN4asio6detail17executor_function8completeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEES8_EEvPNS1_9impl_baseEb, ptr %i.z, align 8, !tbaa !727
  store ptr %i.z, ptr %3, align 8, !tbaa !725
  store ptr null, ptr %i.t, align 8, !tbaa !794
  invoke void @_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEES8_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #50
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.j unwind label %bb.v

bb.j:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %3, align 8, !tbaa !725   ; 3 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %_ZN4asio6detail17executor_functionD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !727
  invoke void %i.ao(ptr noundef nonnull %i.an, i1 noundef zeroext false)
          to label %_ZN4asio6detail17executor_functionD2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #50
  unreachable

_ZN4asio6detail17executor_functionD2Ev.exit:      ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  %i.ar = load ptr, ptr %i.o, align 8, !tbaa !260 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZN4asio6detail17executor_functionD2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.as, align 8, !tbaa !262
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !263
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !215
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #44, !inline_history !43
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !215
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #44, !inline_history !43
  br label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !231
  %.not.i.i.i.i.i6 = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i.i6, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !232
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i = phi i32 [ %i.av, %bb.p ], [ %i.bf, %bb.q ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bg, label %bb.r, label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !243

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #44
  br label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.n, %_ZN4asio6detail17executor_functionD2Ev.exit
  %i.bh = load ptr, ptr %i.ae, align 8, !tbaa !617 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i, label %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.bi = invoke noundef zeroext i1 %i.bh(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef 3)
          to label %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeED2Ev.exit unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #50
  unreachable

_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeED2Ev.exit: ; preds = %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  br label %bb.y

bb.u:                                             ; preds = %_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEES8_E3ptr8allocateERKS8_.exit.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4asio6detail17executor_functionD2Ev.exit8

bb.v:                                             ; preds = %bb.i
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %3, align 8, !tbaa !725   ; 3 uses
  %.not.i7 = icmp eq ptr %i.bn, null
  br i1 %.not.i7, label %_ZN4asio6detail17executor_functionD2Ev.exit8, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !727
  invoke void %i.bo(ptr noundef nonnull %i.bn, i1 noundef zeroext false)
          to label %_ZN4asio6detail17executor_functionD2Ev.exit8 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #50
  unreachable

_ZN4asio6detail17executor_functionD2Ev.exit8:     ; preds = %bb.w, %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.u ], [ %i.bm, %bb.v ], [ %i.bm, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  call void @_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  resume { ptr, i32 } %.pn

bb.y:                                             ; preds = %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail22executor_function_view8completeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEEEEvPv(ptr noundef %0) #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !617
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEclEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #53
  unreachable

_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEclEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !616
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(64) %0), !inline_history !4225
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function8completeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEES8_EEvPNS1_9impl_baseEb(ptr noundef %0, i1 noundef zeroext %1) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::allocator.310", align 1 ; 4 uses
  %3 = alloca %"struct.asio::detail::executor_function::impl<asio::detail::binder1<(lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/io_context_pool.hpp:169:33), std::error_code>, std::allocator<void>>::ptr", align 8 ; 9 uses
  %4 = alloca %"class.asio::detail::binder1.546", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  store ptr %2, ptr %3, align 8, !tbaa !792
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !794
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %0, ptr %i.b, align 8, !tbaa !793
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 24, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !616  ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !616
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !617  ; 3 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.not.i.i.i, label %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEC2EOSP_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 16, i1 false), !tbaa.struct !618
  store ptr %i.g, ptr %i.i, align 8, !tbaa !617
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEC2EOSP_.exit

_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEC2EOSP_.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !260
  %i.o = load <2 x ptr>, ptr %i.k, align 8, !tbaa !264
  store ptr null, ptr %i.m, align 8, !tbaa !260
  store <2 x ptr> %i.o, ptr %i.j, align 8, !tbaa !264
  store ptr null, ptr %i.k, align 8, !tbaa !645
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !531
  invoke void @_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEES8_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEC2EOSP_.exit
  br i1 %1, label %bb.d, label %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS1_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEESR_EEvRSM_RT0_.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN4asio6detail19asio_handler_invokeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEESO_SP_EEvRSL_PNS2_IT0_T1_EE.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt25__throw_bad_function_callv() #53
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

_ZN4asio6detail19asio_handler_invokeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEESO_SP_EEvRSL_PNS2_IT0_T1_EE.exit.i: ; preds = %bb.d
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZN4asio6detail19asio_handler_invokeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEESO_SP_EEvRSL_PNS2_IT0_T1_EE.exit.i._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS1_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEESR_EEvRSM_RT0_.exit_crit_edge unwind label %bb.f, !inline_history !4226

_ZN4asio6detail19asio_handler_invokeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEESO_SP_EEvRSL_PNS2_IT0_T1_EE.exit.i._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS1_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEESR_EEvRSM_RT0_.exit_crit_edge: ; preds = %_ZN4asio6detail19asio_handler_invokeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEESO_SP_EEvRSL_PNS2_IT0_T1_EE.exit.i
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !260
  br label %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS1_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEESR_EEvRSM_RT0_.exit

bb.f:                                             ; preds = %_ZN4asio6detail19asio_handler_invokeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEESO_SP_EEvRSL_PNS2_IT0_T1_EE.exit.i, %bb.e, %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEC2EOSP_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  invoke void @_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEES8_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEES8_E3ptrD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #50
  unreachable

_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEES8_E3ptrD2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  resume { ptr, i32 } %i.r

_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS1_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEESR_EEvRSM_RT0_.exit: ; preds = %_ZN4asio6detail19asio_handler_invokeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEESO_SP_EEvRSL_PNS2_IT0_T1_EE.exit.i._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS1_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEESR_EEvRSM_RT0_.exit_crit_edge, %bb.c
  %i.u = phi ptr [ %.pre, %_ZN4asio6detail19asio_handler_invokeINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEESO_SP_EEvRSL_PNS2_IT0_T1_EE.exit.i._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS1_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEESR_EEvRSM_RT0_.exit_crit_edge ], [ %i.n, %bb.c ] ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS1_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEESR_EEvRSM_RT0_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !262
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !263
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !215
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #44, !inline_history !43
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !215
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #44, !inline_history !43
  br label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !231
  %.not.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !232
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !243

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #44
  br label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i, %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS1_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEESR_EEvRSM_RT0_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !617 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.am = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef 3)
          to label %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeED2Ev.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #50
  unreachable

_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeED2Ev.exit: ; preds = %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  invoke void @_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEES8_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEES8_E3ptrD2Ev.exit7 unwind label %bb.p

bb.p:                                             ; preds = %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeED2Ev.exit
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #50
  unreachable

_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEES8_E3ptrD2Ev.exit7: ; preds = %_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEES8_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !793  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !260  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !262
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !263
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !215
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #44, !inline_history !4227
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !215
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #44, !inline_history !4227
  br label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !231
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !232
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !243

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #44
  br label %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !617  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEES8_ED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.w = invoke noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i32 noundef 3)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEES8_ED2Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #50
  unreachable

_ZN4asio6detail17executor_function4implINS0_7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeEES8_ED2Ev.exit: ; preds = %_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, %bb.i
  store ptr null, ptr %i.a, align 8, !tbaa !793
  br label %bb.k

end_hunk_3
begin_hunk_4_@_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE28get_or_add_implicit_producerEv:bb.a
  %i.e = mul i64 %i.d, -49064778989728563         ; 2 uses
  %i.f = lshr i64 %i.e, 33
  %i.g = xor i64 %i.f, %i.e
  %i.h = mul i64 %i.g, -4265267296055464877       ; 2 uses
  %i.i = lshr i64 %i.h, 33
  %i.j = xor i64 %i.i, %i.h                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.l = load atomic ptr, ptr %i.k acquire, align 8 ; 6 uses
  %.not150 = icmp eq ptr %i.l, null
  br i1 %.not150, label %.thread131, label %.preheader142

.preheader142:                                    ; preds = %bb.a, %bb.e
  %.087151 = phi ptr [ %i.ai, %bb.e ], [ %i.l, %bb.a ] ; 4 uses
  %i.m = load i64, ptr %.087151, align 8, !tbaa !1149
  %i.n = add i64 %i.m, -1
  %i.o = getelementptr inbounds nuw i8, ptr %.087151, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1150
  br label %bb.b

bb.b:                                             ; preds = %.preheader142, %bb.d
  %.080 = phi i64 [ %i.ag, %bb.d ], [ %i.j, %.preheader142 ]
  %i.q = and i64 %i.n, %.080                      ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load atomic i64, ptr %i.r monotonic, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !4469 ; 3 uses
  %.not103 = icmp eq ptr %.087151, %i.l
  br i1 %.not103, label %.thread134, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112: ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader
  %.181 = phi i64 [ %i.ae, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112 ], [ %i.j, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader ]
  %i.x = load i64, ptr %i.l, align 8, !tbaa !1149
  %i.y = add i64 %i.x, -1
  %i.z = and i64 %i.y, %.181                      ; 3 uses
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !1150
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.z
  %i.ac = cmpxchg ptr %i.ab, i64 0, i64 %i.b seq_cst monotonic, align 8
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  %i.ae = add i64 %i.z, 1
  br i1 %i.ad, label %bb.f, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112

bb.d:                                             ; preds = %bb.b
  %i.af = icmp eq i64 %i.s, 0
  %i.ag = add i64 %i.q, 1
  br i1 %i.af, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.087151, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1151 ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %.thread131, label %.preheader142, !llvm.loop !4463

bb.f:                                             ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !1150
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.z
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.v, ptr %i.al, align 8, !tbaa !4469
  br label %.thread134

.thread131:                                       ; preds = %bb.e, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.an = atomicrmw add ptr %i.am, i64 1 monotonic, align 8
  %i.ao = add i64 %i.an, 1                        ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %.thread131
  %.088 = phi ptr [ %i.l, %.thread131 ], [ %i.cm, %bb.o ] ; 3 uses
  %i.aq = load i64, ptr %.088, align 8, !tbaa !1149
  %i.ar = lshr i64 %i.aq, 1
  %.not104 = icmp ult i64 %i.ao, %i.ar
  br i1 %.not104, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = atomicrmw xchg ptr %i.ap, i8 1 acquire, align 1
  %.0.in.i.not = icmp eq i8 %i.as, 0
  br i1 %.0.in.i.not, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.at = load atomic ptr, ptr %i.k acquire, align 8 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !1149 ; 2 uses
  %i.av = lshr i64 %i.au, 1
  %.not105 = icmp ult i64 %i.ao, %i.av
  br i1 %.not105, label %.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.i, %.preheader
  %.079.in = phi i64 [ %.079, %.preheader ], [ %i.au, %bb.i ] ; 3 uses
  %.079 = shl i64 %.079.in, 1                     ; 4 uses
  %i.aw = and i64 %.079.in, 9223372036854775807
  %.not106 = icmp ult i64 %i.ao, %i.aw
  br i1 %.not106, label %bb.j, label %.preheader, !llvm.loop !4464

bb.j:                                             ; preds = %.preheader
  %i.ax = shl i64 %.079.in, 5
  %i.ay = or disjoint i64 %i.ax, 31
  %i.az = tail call noalias noundef ptr @malloc(i64 noundef %i.ay) #60 ; 7 uses
  %.not108 = icmp eq ptr %i.az, null
  br i1 %.not108, label %.thread136, label %bb.k

.thread136:                                       ; preds = %bb.j
  %i.ba = atomicrmw sub ptr %i.am, i64 1 monotonic, align 8 ; 0 uses
  store atomic i8 0, ptr %i.ap monotonic, align 8
  br label %.thread134

bb.k:                                             ; preds = %bb.j
  store i64 %.079, ptr %i.az, align 8, !tbaa !1149
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 0, %i.bc
  %i.be = and i64 %i.bd, 7
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 5 uses
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !1150
  %.not107152 = icmp eq i64 %.079, 0
  br i1 %.not107152, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %.078153 = phi i64 [ %i.bq, %.lr.ph ], [ 0, %bb.k ] ; 4 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1150
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %.078153
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !1150
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %.078153
  store atomic i64 0, ptr %i.bk monotonic, align 8
  %i.bl = or disjoint i64 %.078153, 1             ; 2 uses
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !1150
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.bl
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false)
  %i.bo = load ptr, ptr %i.bg, align 8, !tbaa !1150
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bl
  store atomic i64 0, ptr %i.bp monotonic, align 8
  %i.bq = add nuw i64 %.078153, 2                 ; 2 uses
  %.not107.1 = icmp eq i64 %i.bq, %.079
  br i1 %.not107.1, label %._crit_edge, label %.lr.ph, !llvm.loop !4465

._crit_edge:                                      ; preds = %.lr.ph, %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %i.at, ptr %i.br, align 8, !tbaa !1151
  store atomic ptr %i.az, ptr %i.k release, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %._crit_edge
  %.290.ph = phi ptr [ %i.az, %._crit_edge ], [ %i.at, %bb.i ]
  store atomic i8 0, ptr %i.ap release, align 8
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.h, %bb.g
  %.290 = phi ptr [ %.088, %bb.h ], [ %.088, %bb.g ], [ %.290.ph, %.sink.split ] ; 3 uses
  %i.bs = load i64, ptr %.290, align 8, !tbaa !1149 ; 2 uses
  %i.bt = lshr i64 %i.bs, 1
  %i.bu = lshr i64 %i.bs, 2
  %i.bv = add nuw i64 %i.bt, %i.bu
  %i.bw = icmp ult i64 %i.ao, %i.bv
  br i1 %i.bw, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bx = tail call noundef ptr @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE26recycle_or_create_producerEb(ptr noundef nonnull align 8 dereferenceable(612) %0, i1 noundef zeroext false) ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.n, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader: ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %.290, i64 8 ; 2 uses
  br label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

bb.n:                                             ; preds = %bb.m
  %i.ca = atomicrmw sub ptr %i.am, i64 1 monotonic, align 8 ; 0 uses
  br label %.thread134

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit: ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader
  %.0 = phi i64 [ %i.ci, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit ], [ %i.j, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader ]
  %i.cb = load i64, ptr %.290, align 8, !tbaa !1149
  %i.cc = add i64 %i.cb, -1
  %i.cd = and i64 %i.cc, %.0                      ; 3 uses
  %i.ce = load ptr, ptr %i.bz, align 8, !tbaa !1150
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.cd
  %i.cg = cmpxchg ptr %i.cf, i64 0, i64 %i.b seq_cst monotonic, align 8
  %i.ch = extractvalue { i64, i1 } %i.cg, 1
  %i.ci = add i64 %i.cd, 1
  br i1 %i.ch, label %.thread139, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

.thread139:                                       ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit
  %i.cj = load ptr, ptr %i.bz, align 8, !tbaa !1150
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.cd
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.bx, ptr %i.cl, align 8, !tbaa !4469
  br label %.thread134

bb.o:                                             ; preds = %bb.l
  %i.cm = load atomic ptr, ptr %i.k acquire, align 8
  br label %bb.g, !llvm.loop !4466

.thread134:                                       ; preds = %bb.f, %bb.c, %.thread139, %.thread136, %bb.n
  %.9 = phi ptr [ %i.v, %bb.f ], [ null, %.thread136 ], [ %i.bx, %.thread139 ], [ null, %bb.n ], [ %i.v, %bb.c ]
  ret ptr %.9
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer7enqueueILNSB_14AllocationModeE0ES9_EEbOT0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load atomic i64, ptr %i.b monotonic, align 8 ; 4 uses
  %i.d = add i64 %i.c, 1
  %i.e = and i64 %i.c, 31                         ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1158
  br label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load atomic i64, ptr %i.g monotonic, align 8
  %reass.sub = sub i64 %i.h, %i.c
  %i.i = add i64 %reass.sub, 9223372036854775775
  %i.j = icmp ult i64 %i.i, 9223372036854775807
  br i1 %i.j, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #44
  %i.k = call noundef zeroext i1 @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer24insert_block_index_entryILNSB_14AllocationModeE0EEEbRPNSC_15BlockIndexEntryEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.c)
  br i1 %i.k, label %bb.d, label %.critedge.critedge

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1159 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.o = load atomic i64, ptr %i.n monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1171 ; 2 uses
  %.not.i.i = icmp ult i64 %i.o, %i.q
  br i1 %.not.i.i, label %bb.e, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.r = atomicrmw add ptr %i.n, i64 1 monotonic, align 8 ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  br i1 %i.s, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1172 ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i: ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i, %bb.e, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 5 uses
  %i.w = load atomic ptr, ptr %i.v acquire, align 8 ; 2 uses
  %.not24.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not24.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i
  %.025.i.i.i = phi ptr [ %.114.i.i.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i ], [ %i.w, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.025.i.i.i, i64 304 ; 6 uses
  %i.y = load atomic i32, ptr %i.x monotonic, align 4 ; 3 uses
  %i.z = and i32 %i.y, 2147483647
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ab = add i32 %i.y, 1
  %i.ac = cmpxchg ptr %i.x, i32 %i.y, i32 %i.ab acquire monotonic, align 4
  %i.ad = extractvalue { i32, i1 } %i.ac, 1
  br i1 %i.ad, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i, %.lr.ph.i.i.i
  %i.ae = load atomic ptr, ptr %i.v acquire, align 8
  br label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i, !llvm.loop !4470

bb.g:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.025.i.i.i, i64 312 ; 2 uses
  %i.ag = load atomic ptr, ptr %i.af monotonic, align 8
  %i.ah = cmpxchg ptr %i.v, ptr %.025.i.i.i, ptr %i.ag acquire monotonic, align 8 ; 2 uses
  %i.ai = extractvalue { ptr, i1 } %i.ah, 1
  br i1 %i.ai, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = extractvalue { ptr, i1 } %i.ah, 0       ; 3 uses
  %i.ak = atomicrmw sub ptr %i.x, i32 1 acq_rel, align 4
  %i.al = icmp eq i32 %i.ak, -2147483647
  br i1 %i.al, label %bb.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.am = load atomic ptr, ptr %i.v monotonic, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.am, %bb.i ], [ %i.ap, %bb.k ] ; 2 uses
  store atomic ptr %.0.i.i.i.i, ptr %i.af monotonic, align 8
  store atomic i32 1, ptr %i.x release, align 8
  %i.an = cmpxchg ptr %i.v, ptr %.0.i.i.i.i, ptr %.025.i.i.i release monotonic, align 8 ; 2 uses
  %i.ao = extractvalue { ptr, i1 } %i.an, 1
  br i1 %i.ao, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = extractvalue { ptr, i1 } %i.an, 0
  %i.aq = atomicrmw add ptr %i.x, i32 2147483647 release, align 4
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %bb.j, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i, !llvm.loop !71

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i: ; preds = %bb.k, %bb.j, %bb.h, %bb.f
  %.114.i.i.i = phi ptr [ %i.ae, %bb.f ], [ %i.aj, %bb.h ], [ %i.aj, %bb.j ], [ %i.aj, %bb.k ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.114.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i: ; preds = %bb.g
  %i.as = atomicrmw sub ptr %i.x, i32 2 release, align 4 ; 0 uses
  br label %.thread

.loopexit.i:                                      ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i
  %i.at = call noalias noundef dereferenceable_or_null(328) ptr @malloc(i64 noundef 328) #60 ; 5 uses
  %.not.i9.i = icmp eq ptr %i.at, null
  br i1 %.not.i9.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit.thread21, label %bb.l

bb.l:                                             ; preds = %.loopexit.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 256
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 312
  store ptr null, ptr %i.av, align 8, !tbaa !1173
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.au, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.aw, align 8, !tbaa !1175
  br label %.thread

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit: ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i
  %i.ax = getelementptr inbounds nuw [328 x i8], ptr %i.u, i64 %i.r
  br label %.thread

.thread:                                          ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i, %bb.l
  %.0.i20 = phi ptr [ %i.ax, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit ], [ %i.at, %bb.l ], [ %.025.i.i.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i20, i64 264
  store atomic i64 0, ptr %i.ay monotonic, align 8
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !1177
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store atomic ptr %.0.i20, ptr %i.ba monotonic, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.0.i20, ptr %i.bb, align 8, !tbaa !1158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  br label %bb.m

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit.thread21: ; preds = %.loopexit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bd = load atomic ptr, ptr %i.bc monotonic, align 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bf = load atomic i64, ptr %i.be monotonic, align 8
  %i.bg = add i64 %i.bf, -1
  %i.bh = load i64, ptr %i.bd, align 8, !tbaa !1181
  %i.bi = add i64 %i.bh, -1
  %i.bj = and i64 %i.bi, %i.bg
  store atomic i64 %i.bj, ptr %i.be monotonic, align 8
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !1177
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store atomic ptr null, ptr %i.bl monotonic, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  br label %.critedge

bb.m:                                             ; preds = %._crit_edge, %.thread
  %i.bm = phi ptr [ %.pre, %._crit_edge ], [ %.0.i20, %.thread ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.e
  %i.bo = load i64, ptr %1, align 8, !tbaa !1144
  store i64 %i.bo, ptr %i.bn, align 8, !tbaa !1144
  store ptr null, ptr %1, align 8, !tbaa !1144
  store atomic i64 %i.d, ptr %i.b release, align 8
  br label %.critedge

.critedge.critedge:                               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  br label %.critedge

.critedge:                                        ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit.thread21, %.critedge.critedge, %bb.b, %bb.m
  %.3 = phi i1 [ true, %bb.m ], [ false, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit.thread21 ], [ false, %bb.b ], [ false, %.critedge.critedge ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE26recycle_or_create_producerEb(ptr noundef nonnull align 8 dereferenceable(612) %0, i1 noundef zeroext %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic ptr, ptr %0 acquire, align 8 ; 2 uses
  %.not27 = icmp eq ptr %i.a, null
  br i1 %.not27, label %select.unfold._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = zext i1 %1 to i8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit
  %.01128 = phi ptr [ %i.a, %.lr.ph ], [ %i.n, %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01128, i64 16 ; 2 uses
  %i.d = load atomic i8, ptr %i.c monotonic, align 1, !range !326, !noundef !327
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit

bb.c:                                             ; preds = %bb.b
end_hunk_4
begin_hunk_5_@_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE28get_or_add_implicit_producerEv:bb.a
  %i.e = mul i64 %i.d, -49064778989728563         ; 2 uses
  %i.f = lshr i64 %i.e, 33
  %i.g = xor i64 %i.f, %i.e
  %i.h = mul i64 %i.g, -4265267296055464877       ; 2 uses
  %i.i = lshr i64 %i.h, 33
  %i.j = xor i64 %i.i, %i.h                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.l = load atomic ptr, ptr %i.k acquire, align 8 ; 6 uses
  %.not150 = icmp eq ptr %i.l, null
  br i1 %.not150, label %.thread131, label %.preheader142

.preheader142:                                    ; preds = %bb.a, %bb.e
  %.087151 = phi ptr [ %i.ai, %bb.e ], [ %i.l, %bb.a ] ; 4 uses
  %i.m = load i64, ptr %.087151, align 8, !tbaa !1342
  %i.n = add i64 %i.m, -1
  %i.o = getelementptr inbounds nuw i8, ptr %.087151, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1343
  br label %bb.b

bb.b:                                             ; preds = %.preheader142, %bb.d
  %.080 = phi i64 [ %i.ag, %bb.d ], [ %i.j, %.preheader142 ]
  %i.q = and i64 %i.n, %.080                      ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load atomic i64, ptr %i.r monotonic, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !4639 ; 3 uses
  %.not103 = icmp eq ptr %.087151, %i.l
  br i1 %.not103, label %.thread134, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112: ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader
  %.181 = phi i64 [ %i.ae, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112 ], [ %i.j, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader ]
  %i.x = load i64, ptr %i.l, align 8, !tbaa !1342
  %i.y = add i64 %i.x, -1
  %i.z = and i64 %i.y, %.181                      ; 3 uses
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !1343
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.z
  %i.ac = cmpxchg ptr %i.ab, i64 0, i64 %i.b seq_cst monotonic, align 8
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  %i.ae = add i64 %i.z, 1
  br i1 %i.ad, label %bb.f, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112

bb.d:                                             ; preds = %bb.b
  %i.af = icmp eq i64 %i.s, 0
  %i.ag = add i64 %i.q, 1
  br i1 %i.af, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.087151, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1344 ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %.thread131, label %.preheader142, !llvm.loop !4633

bb.f:                                             ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !1343
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.z
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.v, ptr %i.al, align 8, !tbaa !4639
  br label %.thread134

.thread131:                                       ; preds = %bb.e, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.an = atomicrmw add ptr %i.am, i64 1 monotonic, align 8
  %i.ao = add i64 %i.an, 1                        ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %.thread131
  %.088 = phi ptr [ %i.l, %.thread131 ], [ %i.cm, %bb.o ] ; 3 uses
  %i.aq = load i64, ptr %.088, align 8, !tbaa !1342
  %i.ar = lshr i64 %i.aq, 1
  %.not104 = icmp ult i64 %i.ao, %i.ar
  br i1 %.not104, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = atomicrmw xchg ptr %i.ap, i8 1 acquire, align 1
  %.0.in.i.not = icmp eq i8 %i.as, 0
  br i1 %.0.in.i.not, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.at = load atomic ptr, ptr %i.k acquire, align 8 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !1342 ; 2 uses
  %i.av = lshr i64 %i.au, 1
  %.not105 = icmp ult i64 %i.ao, %i.av
  br i1 %.not105, label %.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.i, %.preheader
  %.079.in = phi i64 [ %.079, %.preheader ], [ %i.au, %bb.i ] ; 3 uses
  %.079 = shl i64 %.079.in, 1                     ; 4 uses
  %i.aw = and i64 %.079.in, 9223372036854775807
  %.not106 = icmp ult i64 %i.ao, %i.aw
  br i1 %.not106, label %bb.j, label %.preheader, !llvm.loop !4634

bb.j:                                             ; preds = %.preheader
  %i.ax = shl i64 %.079.in, 5
  %i.ay = or disjoint i64 %i.ax, 31
  %i.az = tail call noalias noundef ptr @malloc(i64 noundef %i.ay) #60 ; 7 uses
  %.not108 = icmp eq ptr %i.az, null
  br i1 %.not108, label %.thread136, label %bb.k

.thread136:                                       ; preds = %bb.j
  %i.ba = atomicrmw sub ptr %i.am, i64 1 monotonic, align 8 ; 0 uses
  store atomic i8 0, ptr %i.ap monotonic, align 8
  br label %.thread134

bb.k:                                             ; preds = %bb.j
  store i64 %.079, ptr %i.az, align 8, !tbaa !1342
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 0, %i.bc
  %i.be = and i64 %i.bd, 7
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 5 uses
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !1343
  %.not107152 = icmp eq i64 %.079, 0
  br i1 %.not107152, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %.078153 = phi i64 [ %i.bq, %.lr.ph ], [ 0, %bb.k ] ; 4 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1343
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %.078153
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !1343
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %.078153
  store atomic i64 0, ptr %i.bk monotonic, align 8
  %i.bl = or disjoint i64 %.078153, 1             ; 2 uses
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !1343
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.bl
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false)
  %i.bo = load ptr, ptr %i.bg, align 8, !tbaa !1343
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bl
  store atomic i64 0, ptr %i.bp monotonic, align 8
  %i.bq = add nuw i64 %.078153, 2                 ; 2 uses
  %.not107.1 = icmp eq i64 %i.bq, %.079
  br i1 %.not107.1, label %._crit_edge, label %.lr.ph, !llvm.loop !4635

._crit_edge:                                      ; preds = %.lr.ph, %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %i.at, ptr %i.br, align 8, !tbaa !1344
  store atomic ptr %i.az, ptr %i.k release, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %._crit_edge
  %.290.ph = phi ptr [ %i.az, %._crit_edge ], [ %i.at, %bb.i ]
  store atomic i8 0, ptr %i.ap release, align 8
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.h, %bb.g
  %.290 = phi ptr [ %.088, %bb.h ], [ %.088, %bb.g ], [ %.290.ph, %.sink.split ] ; 3 uses
  %i.bs = load i64, ptr %.290, align 8, !tbaa !1342 ; 2 uses
  %i.bt = lshr i64 %i.bs, 1
  %i.bu = lshr i64 %i.bs, 2
  %i.bv = add nuw i64 %i.bt, %i.bu
  %i.bw = icmp ult i64 %i.ao, %i.bv
  br i1 %i.bw, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bx = tail call noundef ptr @_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE26recycle_or_create_producerEb(ptr noundef nonnull align 8 dereferenceable(612) %0, i1 noundef zeroext false) ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.n, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader: ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %.290, i64 8 ; 2 uses
  br label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

bb.n:                                             ; preds = %bb.m
  %i.ca = atomicrmw sub ptr %i.am, i64 1 monotonic, align 8 ; 0 uses
  br label %.thread134

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit: ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader
  %.0 = phi i64 [ %i.ci, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit ], [ %i.j, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader ]
  %i.cb = load i64, ptr %.290, align 8, !tbaa !1342
  %i.cc = add i64 %i.cb, -1
  %i.cd = and i64 %i.cc, %.0                      ; 3 uses
  %i.ce = load ptr, ptr %i.bz, align 8, !tbaa !1343
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.cd
  %i.cg = cmpxchg ptr %i.cf, i64 0, i64 %i.b seq_cst monotonic, align 8
  %i.ch = extractvalue { i64, i1 } %i.cg, 1
  %i.ci = add i64 %i.cd, 1
  br i1 %i.ch, label %.thread139, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

.thread139:                                       ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit
  %i.cj = load ptr, ptr %i.bz, align 8, !tbaa !1343
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.cd
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.bx, ptr %i.cl, align 8, !tbaa !4639
  br label %.thread134

bb.o:                                             ; preds = %bb.l
  %i.cm = load atomic ptr, ptr %i.k acquire, align 8
  br label %bb.g, !llvm.loop !4636

.thread134:                                       ; preds = %bb.f, %bb.c, %.thread139, %.thread136, %bb.n
  %.9 = phi ptr [ %i.v, %bb.f ], [ null, %.thread136 ], [ %i.bx, %.thread139 ], [ null, %bb.n ], [ %i.v, %bb.c ]
  ret ptr %.9
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer7enqueueILNS6_14AllocationModeE0ES4_EEbOT0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load atomic i64, ptr %i.b monotonic, align 8 ; 4 uses
  %i.d = add i64 %i.c, 1
  %i.e = and i64 %i.c, 31                         ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1367
  br label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load atomic i64, ptr %i.g monotonic, align 8
  %reass.sub = sub i64 %i.h, %i.c
  %i.i = add i64 %reass.sub, 9223372036854775775
  %i.j = icmp ult i64 %i.i, 9223372036854775807
  br i1 %i.j, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #44
  %i.k = call noundef zeroext i1 @_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer24insert_block_index_entryILNS6_14AllocationModeE0EEEbRPNS7_15BlockIndexEntryEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.c)
  br i1 %i.k, label %bb.d, label %.critedge.critedge

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1368 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.o = load atomic i64, ptr %i.n monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1354 ; 2 uses
  %.not.i.i = icmp ult i64 %i.o, %i.q
  br i1 %.not.i.i, label %bb.e, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.r = atomicrmw add ptr %i.n, i64 1 monotonic, align 8 ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  br i1 %i.s, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1355 ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i: ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i, %bb.e, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 5 uses
  %i.w = load atomic ptr, ptr %i.v acquire, align 8 ; 2 uses
  %.not24.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not24.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i
  %.025.i.i.i = phi ptr [ %.114.i.i.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i ], [ %i.w, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.025.i.i.i, i64 2608 ; 6 uses
  %i.y = load atomic i32, ptr %i.x monotonic, align 4 ; 3 uses
  %i.z = and i32 %i.y, 2147483647
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ab = add i32 %i.y, 1
  %i.ac = cmpxchg ptr %i.x, i32 %i.y, i32 %i.ab acquire monotonic, align 4
  %i.ad = extractvalue { i32, i1 } %i.ac, 1
  br i1 %i.ad, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i, %.lr.ph.i.i.i
  %i.ae = load atomic ptr, ptr %i.v acquire, align 8
  br label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i, !llvm.loop !4640

bb.g:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.025.i.i.i, i64 2616 ; 2 uses
  %i.ag = load atomic ptr, ptr %i.af monotonic, align 8
  %i.ah = cmpxchg ptr %i.v, ptr %.025.i.i.i, ptr %i.ag acquire monotonic, align 8 ; 2 uses
  %i.ai = extractvalue { ptr, i1 } %i.ah, 1
  br i1 %i.ai, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = extractvalue { ptr, i1 } %i.ah, 0       ; 3 uses
  %i.ak = atomicrmw sub ptr %i.x, i32 1 acq_rel, align 4
  %i.al = icmp eq i32 %i.ak, -2147483647
  br i1 %i.al, label %bb.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.am = load atomic ptr, ptr %i.v monotonic, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.am, %bb.i ], [ %i.ap, %bb.k ] ; 2 uses
  store atomic ptr %.0.i.i.i.i, ptr %i.af monotonic, align 8
  store atomic i32 1, ptr %i.x release, align 8
  %i.an = cmpxchg ptr %i.v, ptr %.0.i.i.i.i, ptr %.025.i.i.i release monotonic, align 8 ; 2 uses
  %i.ao = extractvalue { ptr, i1 } %i.an, 1
  br i1 %i.ao, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = extractvalue { ptr, i1 } %i.an, 0
  %i.aq = atomicrmw add ptr %i.x, i32 2147483647 release, align 4
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %bb.j, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i, !llvm.loop !82

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i: ; preds = %bb.k, %bb.j, %bb.h, %bb.f
  %.114.i.i.i = phi ptr [ %i.ae, %bb.f ], [ %i.aj, %bb.h ], [ %i.aj, %bb.j ], [ %i.aj, %bb.k ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.114.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i: ; preds = %bb.g
  %i.as = atomicrmw sub ptr %i.x, i32 2 release, align 4 ; 0 uses
  br label %.thread

.loopexit.i:                                      ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i
  %i.at = call noalias noundef dereferenceable_or_null(2632) ptr @malloc(i64 noundef 2632) #60 ; 5 uses
  %.not.i9.i = icmp eq ptr %i.at, null
  br i1 %.not.i9.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit.thread21, label %bb.l

bb.l:                                             ; preds = %.loopexit.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2560
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 2616
  store ptr null, ptr %i.av, align 8, !tbaa !1356
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 2624
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.au, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.aw, align 8, !tbaa !1358
  br label %.thread

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit: ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i
  %i.ax = getelementptr inbounds nuw [2632 x i8], ptr %i.u, i64 %i.r
  br label %.thread

.thread:                                          ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i, %bb.l
  %.0.i20 = phi ptr [ %i.ax, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit ], [ %i.at, %bb.l ], [ %.025.i.i.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i20, i64 2568
  store atomic i64 0, ptr %i.ay monotonic, align 8
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !1370
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store atomic ptr %.0.i20, ptr %i.ba monotonic, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.0.i20, ptr %i.bb, align 8, !tbaa !1367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  br label %bb.m

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit.thread21: ; preds = %.loopexit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bd = load atomic ptr, ptr %i.bc monotonic, align 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bf = load atomic i64, ptr %i.be monotonic, align 8
  %i.bg = add i64 %i.bf, -1
  %i.bh = load i64, ptr %i.bd, align 8, !tbaa !1374
  %i.bi = add i64 %i.bh, -1
  %i.bj = and i64 %i.bi, %i.bg
  store atomic i64 %i.bj, ptr %i.be monotonic, align 8
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !1370
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store atomic ptr null, ptr %i.bl monotonic, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  br label %.critedge

bb.m:                                             ; preds = %._crit_edge, %.thread
  %i.bm = phi ptr [ %.pre, %._crit_edge ], [ %.0.i20, %.thread ]
  %i.bn = getelementptr inbounds nuw [80 x i8], ptr %i.bm, i64 %i.e ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bn, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 16, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 32 ; 3 uses
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !238
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !241 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !242 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, 16
  call void @llvm.assume(i1 %i.bw)
  %i.bx = add nuw nsw i64 %i.bv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bq, ptr noundef nonnull align 8 dereferenceable(1) %i.bs, i64 %i.bx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  store ptr %i.br, ptr %i.bo, align 8, !tbaa !241
  %i.by = load i64, ptr %i.bs, align 8, !tbaa !231
  store i64 %i.by, ptr %i.bq, align 8, !tbaa !231
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !242
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !242
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !241
  store i64 0, ptr %i.bz, align 8, !tbaa !242
  store i8 0, ptr %i.bs, align 8, !tbaa !231
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bn, i64 48 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN7coro_io6detail24ib_socket_shared_state_t8shutdownEv.resume:resume.entry
bb.d:                                             ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit
  %i.i = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #44 ; 2 uses
  %i.j = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.e, label %_ZN7easylog6loggerILm0EE8instanceEv.exit28, !prof !233

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #44
  %.not.i25 = icmp eq i32 %i.l, 0
  br i1 %.not.i25, label %_ZN7easylog6loggerILm0EE8instanceEv.exit28, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.g unwind label %.body.from.176

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #44
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit28

.body.from.176:                                   ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #44
  br label %.body

_ZN7easylog6loggerILm0EE8instanceEv.exit28:       ; preds = %bb.g, %bb.e, %bb.d
  %i.o = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 8) monotonic, align 8
  %i.p = icmp slt i64 %i.o, 1
  br i1 %i.p, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit: ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit28
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 24), align 8, !tbaa !323
  %i.q = sub nsw i64 %i.i, %.sroa.0.0.copyload.i2.i.i
  %i.r = sdiv i64 %i.q, 1000000
  %i.s = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 8) monotonic, align 8
  %i.t = srem i64 %i.r, %i.s
  %i.u = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 16) monotonic, align 8
  %i.v = icmp slt i64 %i.t, %i.u
  br i1 %i.v, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %_ZN7easylog8record_tD2Ev.exit

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread: ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit, %_ZN7easylog6loggerILm0EE8instanceEv.exit28
  store i8 91, ptr %.reload.addr192, align 8, !alias.scope !9273
  %.sroa.0.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 185
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %.sroa.0.i.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(17) @__const._ZZN7coro_io6detail24ib_socket_shared_state_t8shutdownEvENKUlvE_clEv.prefix, i64 17, i1 false), !tbaa.struct !987
  %.sroa.0.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 202
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(3) %.sroa.0.i.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.94, i64 3, i1 false), !tbaa.struct !325
  store i64 %i.i, ptr %.reload.addr190, align 8, !tbaa !323
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.w, align 8, !tbaa !818
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.y = load i8, ptr @_ZGVZN7easylog8record_t8_get_tidEvE3tid, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.h, label %._crit_edge.i.i, !prof !819

._crit_edge.i.i:                                  ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread
  %.pre.i.i = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN7easylog8record_t8_get_tidEvE3tid)
  %.pre.i = load i32, ptr %.pre.i.i, align 4, !tbaa !232
  br label %_ZN7easylog8record_t8_get_tidEv.exit.i

bb.h:                                             ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread
  %i.aa = tail call i64 (i64, ...) @syscall(i64 noundef 186) #44
  %i.ab = trunc i64 %i.aa to i32                  ; 2 uses
  %i.ac = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN7easylog8record_t8_get_tidEvE3tid)
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !232
  store i8 1, ptr @_ZGVZN7easylog8record_t8_get_tidEvE3tid, align 8
  br label %_ZN7easylog8record_t8_get_tidEv.exit.i

_ZN7easylog8record_t8_get_tidEv.exit.i:           ; preds = %bb.h, %._crit_edge.i.i
  %i.ad = phi i32 [ %.pre.i, %._crit_edge.i.i ], [ %i.ab, %bb.h ]
  store i32 %i.ad, ptr %i.x, align 4, !tbaa !820
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !238
  %i.ag = invoke noalias noundef nonnull dereferenceable(21) ptr @_Znwm(i64 noundef 21) #52
          to label %.noexc3 unwind label %bb.n    ; 5 uses

.noexc3:                                          ; preds = %_ZN7easylog8record_t8_get_tidEv.exit.i
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !241
  store i64 20, ptr %i.af, align 8, !tbaa !231
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.ag, ptr noundef nonnull align 8 dereferenceable(20) %.reload.addr192, i64 20, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 20, ptr %i.ah, align 8, !tbaa !242
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  store i8 0, ptr %i.ai, align 1, !tbaa !231
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 8 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !238
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store i64 0, ptr %i.al, align 8, !tbaa !242
  store i8 0, ptr %i.ak, align 8, !tbaa !231
  %i.am = invoke noalias noundef nonnull dereferenceable(65) ptr @_Znwm(i64 noundef 65) #52
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2 ; 5 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2: ; preds = %.noexc3
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = icmp ne ptr %i.ag, %i.af
  tail call void @llvm.assume(i1 %i.ao)
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 21) #51
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %.noexc3
  %i.ap = load i8, ptr %i.ak, align 8, !tbaa !231
  store i8 %i.ap, ptr %i.am, align 1, !tbaa !231
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !241
  store i64 64, ptr %i.ak, align 8, !tbaa !231
  %i.aq = icmp eq ptr %i.am, %i.ak
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.am, ptr noundef nonnull align 1 dereferenceable(26) @.str.91, i64 26, i1 false)
  br label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ar = invoke noalias noundef nonnull dereferenceable(31) ptr @_Znwm(i64 noundef 31) #52
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i unwind label %.body31.from.153 ; 3 uses

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.ar, ptr noundef nonnull align 1 dereferenceable(26) @.str.91, i64 26, i1 false)
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !241
  store i64 30, ptr %i.ak, align 8, !tbaa !231
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.as = phi ptr [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  store i64 26, ptr %i.al, align 8, !tbaa !242
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 26
  store i8 0, ptr %i.at, align 1, !tbaa !231
  %i.au = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.j, label %_ZN7easylog6loggerILm0EE8instanceEv.exit33, !prof !233

bb.j:                                             ; preds = %bb.i
  %i.aw = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #44
  %.not.i30 = icmp eq i32 %i.aw, 0
  br i1 %.not.i30, label %_ZN7easylog6loggerILm0EE8instanceEv.exit33, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.l unwind label %.body31.from.

bb.l:                                             ; preds = %bb.k
  %i.ax = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #44
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit33

.body31.from.:                                    ; preds = %bb.k
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #44
  br label %.from..body31

_ZN7easylog6loggerILm0EE8instanceEv.exit33:       ; preds = %bb.l, %bb.j, %bb.i
  %i.az = load atomic i8, ptr @_ZN7easylog6loggerILm0EE13has_destruct_E seq_cst, align 1, !range !326, !noundef !327
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit, label %bb.m, !prof !243

bb.m:                                             ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit33
  invoke void @_ZN7easylog6loggerILm0EE5writeERNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr noundef nonnull align 8 dereferenceable(80) %.reload.addr190)
          to label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit unwind label %.body31.from.153

_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit:   ; preds = %bb.m, %_ZN7easylog6loggerILm0EE8instanceEv.exit33
  %i.bb = load ptr, ptr %i.aj, align 8, !tbaa !241 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ak
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit
  %i.bd = load i64, ptr %i.ak, align 8, !tbaa !231
  %i.be = add i64 %i.bd, 1
  tail call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bf = load ptr, ptr %i.ae, align 8, !tbaa !241 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.af
  br i1 %i.bg, label %_ZN7easylog8record_tD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bh = load i64, ptr %i.af, align 8, !tbaa !231
  %i.bi = add i64 %i.bh, 1
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #51
  br label %_ZN7easylog8record_tD2Ev.exit

bb.n:                                             ; preds = %_ZN7easylog8record_t8_get_tidEv.exit.i
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body31.from.153:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, %bb.m
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body31

.from..body31:                                    ; preds = %.body31.from., %.body31.from.153
  %eh.lpad-body32 = phi { ptr, i32 } [ %i.bk, %.body31.from.153 ], [ %i.ay, %.body31.from. ]
  tail call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.reload.addr190) #44
  br label %.body

_ZN7easylog8record_tD2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZN7easylog6loggerILm0EE8instanceEv.exit, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.bl = tail call noalias noundef dereferenceable_or_null(264) ptr @_ZnamRKSt9nothrow_t(i64 noundef 264, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #54, !inline_history !9261 ; 13 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %._ZN7coro_io8async_ioISt4pairISt10error_codemEZNS_6detail24ib_socket_shared_state_t8shutdownEvEUlOT_E_S5_EEN12async_simple4coro4LazyIS6_EET0_RT1_.exit_crit_edge, label %AfterCoroSuspend.i.from..from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i

._ZN7coro_io8async_ioISt4pairISt10error_codemEZNS_6detail24ib_socket_shared_state_t8shutdownEvEUlOT_E_S5_EEN12async_simple4coro4LazyIS6_EET0_RT1_.exit_crit_edge: ; preds = %_ZN7easylog8record_tD2Ev.exit
  %.reload.addr188.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.reload189.pre = load ptr, ptr %.reload.addr188.phi.trans.insert, align 8, !tbaa !9275
  br label %_ZN7coro_io8async_ioISt4pairISt10error_codemEZNS_6detail24ib_socket_shared_state_t8shutdownEvEUlOT_E_S5_EEN12async_simple4coro4LazyIS6_EET0_RT1_.exit

AfterCoroSuspend.i.from..from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i: ; preds = %_ZN7easylog8record_tD2Ev.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 256
  store ptr @_ZZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEmENUlPvmE_8__invokeES4_m, ptr %i.bn, align 1
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !9275 ; 3 uses
  store ptr @_ZN7coro_io8async_ioISt4pairISt10error_codemEZNS_6detail24ib_socket_shared_state_t8shutdownEvEUlOT_E_S5_EEN12async_simple4coro4LazyIS6_EET0_RT1_.resume, ptr %i.bl, align 8
  %destroy.addr.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr @_ZN7coro_io8async_ioISt4pairISt10error_codemEZNS_6detail24ib_socket_shared_state_t8shutdownEvEUlOT_E_S5_EEN12async_simple4coro4LazyIS6_EET0_RT1_.destroy, ptr %destroy.addr.i, align 8
  %.reload.addr134.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 208
  %.reload.addr143.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %.spill.addr.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 240
  store ptr %.reload, ptr %.spill.addr.i, align 8
  store ptr %.reload, ptr %.reload.addr134.i, align 8, !tbaa !1289
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.reload.addr143.i, i8 0, i64 24, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  store i8 0, ptr %i.bo, align 8, !tbaa !1006
  %index.addr144.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 248
  store i8 0, ptr %index.addr144.i, align 8
  br label %_ZN7coro_io8async_ioISt4pairISt10error_codemEZNS_6detail24ib_socket_shared_state_t8shutdownEvEUlOT_E_S5_EEN12async_simple4coro4LazyIS6_EET0_RT1_.exit

_ZN7coro_io8async_ioISt4pairISt10error_codemEZNS_6detail24ib_socket_shared_state_t8shutdownEvEUlOT_E_S5_EEN12async_simple4coro4LazyIS6_EET0_RT1_.exit: ; preds = %._ZN7coro_io8async_ioISt4pairISt10error_codemEZNS_6detail24ib_socket_shared_state_t8shutdownEvEUlOT_E_S5_EEN12async_simple4coro4LazyIS6_EET0_RT1_.exit_crit_edge, %AfterCoroSuspend.i.from..from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i
  %.reload189 = phi ptr [ %.reload, %AfterCoroSuspend.i.from..from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i ], [ %.reload189.pre, %._ZN7coro_io8async_ioISt4pairISt10error_codemEZNS_6detail24ib_socket_shared_state_t8shutdownEvEUlOT_E_S5_EEN12async_simple4coro4LazyIS6_EET0_RT1_.exit_crit_edge ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.reload189, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1539
  %i.br = tail call noalias noundef dereferenceable_or_null(216) ptr @_ZnamRKSt9nothrow_t(i64 noundef 216, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #54, !inline_history !9262 ; 13 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZN7coro_io9sleep_forINSt6chrono8durationIlSt5ratioILl1ELl1EEEENS_15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEEEEN12async_simple4coro4LazyIbEET_PT0_.exit, label %AfterCoroSuspend.i35.from..from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i38

AfterCoroSuspend.i35.from..from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i38: ; preds = %_ZN7coro_io8async_ioISt4pairISt10error_codemEZNS_6detail24ib_socket_shared_state_t8shutdownEvEUlOT_E_S5_EEN12async_simple4coro4LazyIS6_EET0_RT1_.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 208
  store ptr @_ZZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEmENUlPvmE_8__invokeES4_m, ptr %i.bt, align 1
  store ptr @_ZN7coro_io9sleep_forINSt6chrono8durationIlSt5ratioILl1ELl1EEEENS_15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEEEEN12async_simple4coro4LazyIbEET_PT0_.resume, ptr %i.br, align 8
  %destroy.addr.i36 = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr @_ZN7coro_io9sleep_forINSt6chrono8durationIlSt5ratioILl1ELl1EEEENS_15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEEEEN12async_simple4coro4LazyIbEET_PT0_.destroy, ptr %destroy.addr.i36, align 8
  %.reload.addr90.i = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %.spill.addr83.i = getelementptr inbounds nuw i8, ptr %i.br, i64 192
  store ptr %i.bq, ptr %.spill.addr83.i, align 8
  %.spill.addr.i37 = getelementptr inbounds nuw i8, ptr %i.br, i64 184
  store i64 1, ptr %.spill.addr.i37, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.reload.addr90.i, i8 0, i64 24, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  store i8 0, ptr %i.bu, align 8, !tbaa !1008
  %index.addr91.i = getelementptr inbounds nuw i8, ptr %i.br, i64 200
  store i8 0, ptr %index.addr91.i, align 8
  br label %_ZN7coro_io9sleep_forINSt6chrono8durationIlSt5ratioILl1ELl1EEEENS_15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEEEEN12async_simple4coro4LazyIbEET_PT0_.exit

_ZN7coro_io9sleep_forINSt6chrono8durationIlSt5ratioILl1ELl1EEEENS_15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEEEEN12async_simple4coro4LazyIbEET_PT0_.exit: ; preds = %AfterCoroSuspend.i35.from..from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i38, %_ZN7coro_io8async_ioISt4pairISt10error_codemEZNS_6detail24ib_socket_shared_state_t8shutdownEvEUlOT_E_S5_EEN12async_simple4coro4LazyIS6_EET0_RT1_.exit
  %i.bv = tail call noalias noundef dereferenceable_or_null(320) ptr @_ZnamRKSt9nothrow_t(i64 noundef 320, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #54, !inline_history !9263 ; 12 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.o, label %.from..from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i41

.from..from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i41: ; preds = %_ZN7coro_io9sleep_forINSt6chrono8durationIlSt5ratioILl1ELl1EEEENS_15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEEEEN12async_simple4coro4LazyIbEET_PT0_.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 312
  store ptr @_ZZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEmENUlPvmE_8__invokeES4_m, ptr %i.bx, align 1
  store ptr @_ZN12async_simple4coro10collectAllILNS_10SignalTypeE1ENS0_4LazyEJSt4pairISt10error_codemEbEEENS3_ISt5tupleIJDpNS_3TryINT0_IT1_E9ValueTypeEEEEEEEDpSB_.resume, ptr %i.bv, align 8
  %destroy.addr.i39 = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr @_ZN12async_simple4coro10collectAllILNS_10SignalTypeE1ENS0_4LazyEJSt4pairISt10error_codemEbEEENS3_ISt5tupleIJDpNS_3TryINT0_IT1_E9ValueTypeEEEEEEEDpSB_.destroy, ptr %destroy.addr.i39, align 8
  %.reload.addr92.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.by = ptrtoint ptr %i.bl to i64
  %.spill.addr.i40 = getelementptr inbounds nuw i8, ptr %i.bv, i64 288
  store i64 %i.by, ptr %.spill.addr.i40, align 8
  %i.bz = ptrtoint ptr %i.br to i64
  %.spill.addr82.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 296
  store i64 %i.bz, ptr %.spill.addr82.i, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 88
  store i8 0, ptr %i.ca, align 8, !tbaa !1014
  %index.addr93.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 304
  store i8 0, ptr %index.addr93.i, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9276)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9277)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store ptr %i.bv, ptr %.reload.addr190, align 8, !alias.scope !9278
  store i8 1, ptr %index.addr, align 1
  store ptr %0, ptr %.reload.addr92.i, align 8, !tbaa !264
  %i.cd = load <2 x ptr>, ptr %i.cb, align 8, !tbaa !264
  store <2 x ptr> %i.cd, ptr %i.cc, align 8, !tbaa !264
  musttail call void @_ZN12async_simple4coro10collectAllILNS_10SignalTypeE1ENS0_4LazyEJSt4pairISt10error_codemEbEEENS3_ISt5tupleIJDpNS_3TryINT0_IT1_E9ValueTypeEEEEEEEDpSB_.resume(ptr nonnull %i.bv)
  ret void

bb.o:                                             ; preds = %_ZN7coro_io9sleep_forINSt6chrono8durationIlSt5ratioILl1ELl1EEEENS_15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEEEEN12async_simple4coro4LazyIbEET_PT0_.exit
  %i.ce = tail call ptr @__cxa_allocate_exception(i64 16) #44, !noalias !9279 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull @.str.95)
          to label %bb.p unwind label %_ZN12async_simple4coro6detail8LazyBaseISt5tupleIJNS_3TryISt4pairISt10error_codemEEENS4_IbEEEELb0EED2Ev.exit57.from.167, !noalias !9279

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.ce, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #53
          to label %.noexc43 unwind label %_ZN12async_simple4coro6detail8LazyBaseISt5tupleIJNS_3TryISt4pairISt10error_codemEEENS4_IbEEEELb0EED2Ev.exit57.from.

.noexc43:                                         ; preds = %bb.p
  unreachable

_ZN12async_simple4coro6detail8LazyBaseISt5tupleIJNS_3TryISt4pairISt10error_codemEEENS4_IbEEEELb0EED2Ev.exit57.from.167: ; preds = %bb.o
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.ce) #44, !noalias !9279
  br label %_ZN12async_simple4coro6detail8LazyBaseISt5tupleIJNS_3TryISt4pairISt10error_codemEEENS4_IbEEEELb0EED2Ev.exit57

_ZN12async_simple4coro6detail8LazyBaseISt5tupleIJNS_3TryISt4pairISt10error_codemEEENS4_IbEEEELb0EED2Ev.exit57.from.: ; preds = %bb.p
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN12async_simple4coro6detail8LazyBaseISt5tupleIJNS_3TryISt4pairISt10error_codemEEENS4_IbEEEELb0EED2Ev.exit57

bb.q:                                             ; preds = %AfterCoroSuspend144
  %i.ch = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ci = load ptr, ptr %.reload.addr190, align 8, !tbaa !1305 ; 3 uses
  %.not.i46 = icmp eq ptr %i.ci, null
  br i1 %.not.i46, label %.body, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  invoke void %i.ck(ptr nonnull %i.ci)
          to label %.body unwind label %bb.s, !inline_history !80

bb.s:                                             ; preds = %bb.r
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  tail call void @__clang_call_terminate(ptr %i.cm) #50
  unreachable

AfterCoroSuspend144:                              ; preds = %resume.entry
  invoke void @_ZN12async_simple4coro6detail15LazyAwaiterBaseISt5tupleIJNS_3TryISt4pairISt10error_codemEEENS4_IbEEEEE11awaitResumeEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.790") align 8 %.reload.addr191, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr190)
          to label %_ZN12async_simple4coro6detail8LazyBaseISt5tupleIJNS_3TryISt4pairISt10error_codemEEENS4_IbEEEELb0EE12ValueAwaiter12await_resumeEv.exit unwind label %bb.q

_ZN12async_simple4coro6detail8LazyBaseISt5tupleIJNS_3TryISt4pairISt10error_codemEEENS4_IbEEEELb0EE12ValueAwaiter12await_resumeEv.exit: ; preds = %AfterCoroSuspend144
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !1006 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.cp, -1
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_Head_baseILm0EN12async_simple3TryISt4pairISt10error_codemEEELb0EED2Ev.exit.i, label %bb.t, !prof !243

bb.t:                                             ; preds = %_ZN12async_simple4coro6detail8LazyBaseISt5tupleIJNS_3TryISt4pairISt10error_codemEEENS4_IbEEEELb0EE12ValueAwaiter12await_resumeEv.exit
  %i.cq = icmp ne i8 %i.cp, 2
  %i.cr = load ptr, ptr %i.cn, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cr, null
  %or.cond.i.i.i.i.i.i = select i1 %i.cq, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZNSt10_Head_baseILm0EN12async_simple3TryISt4pairISt10error_codemEEELb0EED2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %i.cn) #44
  br label %_ZNSt10_Head_baseILm0EN12async_simple3TryISt4pairISt10error_codemEEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0EN12async_simple3TryISt4pairISt10error_codemEEELb0EED2Ev.exit.i: ; preds = %bb.u, %bb.t, %_ZN12async_simple4coro6detail8LazyBaseISt5tupleIJNS_3TryISt4pairISt10error_codemEEENS4_IbEEEELb0EE12ValueAwaiter12await_resumeEv.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !1008 ; 2 uses
  %.not.i.i.i.i1.i = icmp eq i8 %i.ct, -1
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJN12async_simple3TryISt4pairISt10error_codemEEENS1_IbEEEED2Ev.exit, label %bb.v, !prof !243

bb.v:                                             ; preds = %_ZNSt10_Head_baseILm0EN12async_simple3TryISt4pairISt10error_codemEEELb0EED2Ev.exit.i
  %i.cu = icmp ne i8 %i.ct, 2
  %i.cv = load ptr, ptr %.reload.addr191, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i = icmp eq ptr %i.cv, null
  %or.cond.i.i.i.i.i3.i = select i1 %i.cu, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i
  br i1 %or.cond.i.i.i.i.i3.i, label %_ZNSt11_Tuple_implILm0EJN12async_simple3TryISt4pairISt10error_codemEEENS1_IbEEEED2Ev.exit, label %_ZNSt11_Tuple_implILm0EJN12async_simple3TryISt4pairISt10error_codemEEENS1_IbEEEED2Ev.exit.from.

_ZNSt11_Tuple_implILm0EJN12async_simple3TryISt4pairISt10error_codemEEENS1_IbEEEED2Ev.exit.from.: ; preds = %bb.v
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(48) %.reload.addr191) #44
  br label %_ZNSt11_Tuple_implILm0EJN12async_simple3TryISt4pairISt10error_codemEEENS1_IbEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJN12async_simple3TryISt4pairISt10error_codemEEENS1_IbEEEED2Ev.exit: ; preds = %bb.v, %_ZNSt10_Head_baseILm0EN12async_simple3TryISt4pairISt10error_codemEEELb0EED2Ev.exit.i, %_ZNSt11_Tuple_implILm0EJN12async_simple3TryISt4pairISt10error_codemEEENS1_IbEEEED2Ev.exit.from.
  %i.cw = load ptr, ptr %.reload.addr190, align 8, !tbaa !1305 ; 3 uses
  %.not.i47 = icmp eq ptr %i.cw, null
  br i1 %.not.i47, label %_ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt11_Tuple_implILm0EJN12async_simple3TryISt4pairISt10error_codemEEENS1_IbEEEED2Ev.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  invoke void %i.cy(ptr nonnull %i.cw)
          to label %_ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EED2Ev.exit unwind label %bb.x, !inline_history !80

bb.x:                                             ; preds = %bb.w
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  tail call void @__clang_call_terminate(ptr %i.da) #50
  unreachable

_ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EED2Ev.exit: ; preds = %_ZNSt11_Tuple_implILm0EJN12async_simple3TryISt4pairISt10error_codemEEENS1_IbEEEED2Ev.exit, %bb.w
  %i.db = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.dc = icmp eq i8 %i.db, 0
  br i1 %i.dc, label %bb.y, label %_ZN7easylog6loggerILm0EE8instanceEv.exit55, !prof !233

bb.y:                                             ; preds = %_ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EED2Ev.exit
  %i.dd = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #44
  %.not.i52 = icmp eq i32 %i.dd, 0
  br i1 %.not.i52, label %_ZN7easylog6loggerILm0EE8instanceEv.exit55, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.aa unwind label %.body.from.180

bb.aa:                                            ; preds = %bb.z
  %i.de = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #44
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit55

.body.from.180:                                   ; preds = %bb.z
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #44
  br label %.body

_ZN7easylog6loggerILm0EE8instanceEv.exit55:       ; preds = %bb.aa, %bb.y, %_ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EED2Ev.exit
  %i.dg = load atomic i32, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance monotonic, align 8
  %i.dh = icmp slt i32 %i.dg, 2
  br i1 %i.dh, label %bb.ad, label %bb.ap

_ZN12async_simple4coro6detail8LazyBaseISt5tupleIJNS_3TryISt4pairISt10error_codemEEENS4_IbEEEELb0EED2Ev.exit57: ; preds = %_ZN12async_simple4coro6detail8LazyBaseISt5tupleIJNS_3TryISt4pairISt10error_codemEEENS4_IbEEEELb0EED2Ev.exit57.from., %_ZN12async_simple4coro6detail8LazyBaseISt5tupleIJNS_3TryISt4pairISt10error_codemEEENS4_IbEEEELb0EED2Ev.exit57.from.167
  %.pn19.pn = phi { ptr, i32 } [ %i.cg, %_ZN12async_simple4coro6detail8LazyBaseISt5tupleIJNS_3TryISt4pairISt10error_codemEEENS4_IbEEEELb0EED2Ev.exit57.from. ], [ %i.cf, %_ZN12async_simple4coro6detail8LazyBaseISt5tupleIJNS_3TryISt4pairISt10error_codemEEENS4_IbEEEELb0EED2Ev.exit57.from.167 ] ; 2 uses
  %.not.i58 = icmp eq ptr %i.br, null
  br i1 %.not.i58, label %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit59, label %_ZN12async_simple4coro6detail8LazyBaseISt5tupleIJNS_3TryISt4pairISt10error_codemEEENS4_IbEEEELb0EED2Ev.exit57.thread107

_ZN12async_simple4coro6detail8LazyBaseISt5tupleIJNS_3TryISt4pairISt10error_codemEEENS4_IbEEEELb0EED2Ev.exit57.thread107: ; preds = %_ZN12async_simple4coro6detail8LazyBaseISt5tupleIJNS_3TryISt4pairISt10error_codemEEENS4_IbEEEELb0EED2Ev.exit57
  %i.di = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  invoke void %i.dj(ptr nonnull %i.br)
          to label %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit59 unwind label %bb.ab, !inline_history !54

bb.ab:                                            ; preds = %_ZN12async_simple4coro6detail8LazyBaseISt5tupleIJNS_3TryISt4pairISt10error_codemEEENS4_IbEEEELb0EED2Ev.exit57.thread107
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  tail call void @__clang_call_terminate(ptr %i.dl) #50
  unreachable

_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit59: ; preds = %_ZN12async_simple4coro6detail8LazyBaseISt5tupleIJNS_3TryISt4pairISt10error_codemEEENS4_IbEEEELb0EED2Ev.exit57.thread107, %_ZN12async_simple4coro6detail8LazyBaseISt5tupleIJNS_3TryISt4pairISt10error_codemEEENS4_IbEEEELb0EED2Ev.exit57
  %.not.i60 = icmp eq ptr %i.bl, null
  br i1 %.not.i60, label %.body, label %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit59.thread119

_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit59.thread119: ; preds = %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit59
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  invoke void %i.dn(ptr nonnull %i.bl)
          to label %.body unwind label %bb.ac, !inline_history !53

bb.ac:                                            ; preds = %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit59.thread119
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  tail call void @__clang_call_terminate(ptr %i.dp) #50
  unreachable

bb.ad:                                            ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit55
  %i.dq = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #44 ; 2 uses
  %i.dr = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.ds = icmp eq i8 %i.dr, 0
  br i1 %i.ds, label %bb.ae, label %_ZN7easylog6loggerILm0EE8instanceEv.exit65, !prof !233

bb.ae:                                            ; preds = %bb.ad
  %i.dt = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #44
  %.not.i62 = icmp eq i32 %i.dt, 0
  br i1 %.not.i62, label %_ZN7easylog6loggerILm0EE8instanceEv.exit65, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.ag unwind label %.body.from.

bb.ag:                                            ; preds = %bb.af
  %i.du = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #44
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit65

.body.from.:                                      ; preds = %bb.af
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #44
  br label %.body

_ZN7easylog6loggerILm0EE8instanceEv.exit65:       ; preds = %bb.ag, %bb.ae, %bb.ad
  %i.dw = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 8) monotonic, align 8
  %i.dx = icmp slt i64 %i.dw, 1
  br i1 %i.dx, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit68.thread, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit68

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit68: ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit65
  %.sroa.0.0.copyload.i2.i.i66 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 24), align 8, !tbaa !323
  %i.dy = sub nsw i64 %i.dq, %.sroa.0.0.copyload.i2.i.i66
  %i.dz = sdiv i64 %i.dy, 1000000
  %i.ea = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 8) monotonic, align 8
  %i.eb = srem i64 %i.dz, %i.ea
  %i.ec = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 16) monotonic, align 8
  %i.ed = icmp slt i64 %i.eb, %i.ec
  br i1 %i.ed, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit68.thread, label %bb.ap

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit68.thread: ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit68, %_ZN7easylog6loggerILm0EE8instanceEv.exit65
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #44
  store i64 %i.dq, ptr %1, align 8, !tbaa !323
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %i.ee, align 8, !tbaa !818
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.eg = load i8, ptr @_ZGVZN7easylog8record_t8_get_tidEvE3tid, align 8
  %i.eh = icmp eq i8 %i.eg, 0
  br i1 %i.eh, label %bb.ah, label %._crit_edge.i.i5, !prof !819

._crit_edge.i.i5:                                 ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit68.thread
  %.pre.i.i6 = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN7easylog8record_t8_get_tidEvE3tid)
  %.pre.i7 = load i32, ptr %.pre.i.i6, align 4, !tbaa !232
  br label %_ZN7easylog8record_t8_get_tidEv.exit.i8

bb.ah:                                            ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit68.thread
  %i.ei = tail call i64 (i64, ...) @syscall(i64 noundef 186) #44
  %i.ej = trunc i64 %i.ei to i32                  ; 2 uses
  %i.ek = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN7easylog8record_t8_get_tidEvE3tid)
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !232
  store i8 1, ptr @_ZGVZN7easylog8record_t8_get_tidEvE3tid, align 8
  br label %_ZN7easylog8record_t8_get_tidEv.exit.i8

_ZN7easylog8record_t8_get_tidEv.exit.i8:          ; preds = %bb.ah, %._crit_edge.i.i5
  %i.el = phi i32 [ %.pre.i7, %._crit_edge.i.i5 ], [ %i.ej, %bb.ah ]
  store i32 %i.el, ptr %i.ef, align 4, !tbaa !820
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.eo = invoke noalias noundef nonnull dereferenceable(21) ptr @_Znwm(i64 noundef 21) #52
          to label %.noexc14 unwind label %bb.an  ; 6 uses

.noexc14:                                         ; preds = %_ZN7easylog8record_t8_get_tidEv.exit.i8
  store ptr %i.eo, ptr %i.em, align 8, !tbaa !241
  store i64 20, ptr %i.en, align 8, !tbaa !231
  store i8 91, ptr %i.eo, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(17) @__const._ZZN7coro_io6detail24ib_socket_shared_state_t8shutdownEvENKUlvE0_clEv.prefix, i64 17, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 18
  store i16 8285, ptr %.sroa.6.0..sroa_idx, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 20, ptr %i.ep, align 8, !tbaa !242
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 20
  store i8 0, ptr %i.eq, align 1, !tbaa !231
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  store ptr %i.es, ptr %i.er, align 8, !tbaa !238
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  store i64 0, ptr %i.et, align 8, !tbaa !242
  store i8 0, ptr %i.es, align 8, !tbaa !231
  %i.eu = invoke noalias noundef nonnull dereferenceable(65) ptr @_Znwm(i64 noundef 65) #52
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i20 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i12 ; 3 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i12: ; preds = %.noexc14
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef 21) #51
  br label %.body.from.182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i20: ; preds = %.noexc14
  store ptr %i.eu, ptr %i.er, align 8, !tbaa !241
  store i64 64, ptr %i.es, align 8, !tbaa !231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.eu, ptr noundef nonnull align 1 dereferenceable(29) @.str.92, i64 29, i1 false)
  store i64 29, ptr %i.et, align 8, !tbaa !242
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 29
  store i8 0, ptr %i.ew, align 1, !tbaa !231
  %i.ex = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.ey = icmp eq i8 %i.ex, 0
  br i1 %i.ey, label %bb.ai, label %_ZN7easylog6loggerILm0EE8instanceEv.exit29, !prof !233

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i20
  %i.ez = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #44
  %.not.i26 = icmp eq i32 %i.ez, 0
  br i1 %.not.i26, label %_ZN7easylog6loggerILm0EE8instanceEv.exit29, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fa = call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #44
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit29

bb.al:                                            ; preds = %bb.aj
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #44
  br label %.from.172

_ZN7easylog6loggerILm0EE8instanceEv.exit29:       ; preds = %bb.ak, %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i20
  %i.fc = load atomic i8, ptr @_ZN7easylog6loggerILm0EE13has_destruct_E seq_cst, align 1, !range !326, !noundef !327
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit73, label %bb.am, !prof !243

bb.am:                                            ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit29
  invoke void @_ZN7easylog6loggerILm0EE5writeERNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr noundef nonnull align 8 dereferenceable(80) %1)
          to label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit73 unwind label %bb.ao

_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit73: ; preds = %bb.am, %_ZN7easylog6loggerILm0EE8instanceEv.exit29
  %i.fe = load ptr, ptr %i.er, align 8, !tbaa !241 ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.es
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit73
  %i.fg = load i64, ptr %i.es, align 8, !tbaa !231
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30
  %i.fi = load ptr, ptr %i.em, align 8, !tbaa !241 ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.en
  br i1 %i.fj, label %_ZN7easylog8record_tD2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31
  %i.fk = load i64, ptr %i.en, align 8, !tbaa !231
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #51
  br label %_ZN7easylog8record_tD2Ev.exit35

_ZN7easylog8record_tD2Ev.exit35:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #44
  br label %bb.ap

bb.an:                                            ; preds = %_ZN7easylog8record_t8_get_tidEv.exit.i8
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.from.182

bb.ao:                                            ; preds = %bb.am
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.172

.from.172:                                        ; preds = %bb.ao, %bb.al
  %eh.lpad-body28 = phi { ptr, i32 } [ %i.fn, %bb.ao ], [ %i.fb, %bb.al ]
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %1) #44
  br label %.body.from.182

.body.from.182:                                   ; preds = %.from.172, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i12
  %.pn20 = phi { ptr, i32 } [ %eh.lpad-body28, %.from.172 ], [ %i.fm, %bb.an ], [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #44
  br label %.body

.body:                                            ; preds = %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit59.thread119, %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit59, %bb.r, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2, %bb.n, %.from..body31, %.body.from.182, %.body.from., %.body.from.180, %.body.from.176, %.body.from.178
  %.pn20.pn.pn = phi { ptr, i32 } [ %i.df, %.body.from.180 ], [ %i.n, %.body.from.176 ], [ %.pn19.pn, %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit59.thread119 ], [ %i.dv, %.body.from. ], [ %.pn20, %.body.from.182 ], [ %i.f, %.body.from.178 ], [ %eh.lpad-body32, %.from..body31 ], [ %i.bj, %bb.n ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2 ], [ %.pn19.pn, %_ZN12async_simple4coro6detail8LazyBaseIbLb0EED2Ev.exit59 ], [ %i.ch, %bb.r ], [ %i.ch, %bb.q ]
  %.7 = extractvalue { ptr, i32 } %.pn20.pn.pn, 0
  %i.fo = call ptr @__cxa_begin_catch(ptr %.7) #44 ; 0 uses
  call void @_ZN12async_simple4coro6detail11LazyPromiseIvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr196) #44
  invoke void @__cxa_end_catch()
end_hunk_6
begin_hunk_7_@_ZN7coro_io13async_connectISt6vectorIN4asio2ip14basic_endpointINS3_3tcpEEESaIS6_EEEEN12async_simple4coro4LazyISt10error_codeEERNS2_19basic_stream_socketIS5_NS2_15any_io_executorEEERKT_.resume:resume.entry
  %.not.i27 = icmp eq i32 %i.ca, 0
  br i1 %.not.i27, label %_ZN7easylog6loggerILm0EE8instanceEv.exit30, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cb = call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #44
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit30

bb.v:                                             ; preds = %bb.t
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #44
  br label %.body28

_ZN7easylog6loggerILm0EE8instanceEv.exit30:       ; preds = %bb.u, %bb.s, %bb.r
  %i.cd = load atomic i8, ptr @_ZN7easylog6loggerILm0EE13has_destruct_E seq_cst, align 1, !range !326, !noundef !327
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit, label %bb.w, !prof !243

bb.w:                                             ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit30
  invoke void @_ZN7easylog6loggerILm0EE5writeERNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr noundef nonnull align 8 dereferenceable(80) %3)
          to label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit unwind label %bb.x

_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit:   ; preds = %bb.w, %_ZN7easylog6loggerILm0EE8instanceEv.exit30
  %i.cf = load ptr, ptr %2, align 8, !tbaa !241   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !231
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  %i.ck = load ptr, ptr %i.as, align 8, !tbaa !241 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.at
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cm = load i64, ptr %i.at, align 8, !tbaa !231
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.co = load ptr, ptr %i.an, align 8, !tbaa !241 ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.ao
  br i1 %i.cp, label %_ZN7easylog8record_tD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31
  %i.cq = load i64, ptr %i.ao, align 8, !tbaa !231
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #51
  br label %_ZN7easylog8record_tD2Ev.exit

_ZN7easylog8record_tD2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  br label %bb.y

.from.199:                                        ; preds = %_ZN7easylog8record_t8_get_tidEv.exit.i
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.from.221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.from.: ; preds = %bb.k, %bb.j
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.x:                                             ; preds = %bb.q, %bb.l, %bb.w
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  br label %.body28

.body28:                                          ; preds = %bb.v, %bb.x
  %eh.lpad-body29 = phi { ptr, i32 } [ %i.cu, %bb.x ], [ %i.cc, %bb.v ] ; 2 uses
  %i.cv = load ptr, ptr %2, align 8, !tbaa !241   ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %.body28
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !231
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #51
  br label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %.body28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.from., %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  %.pn = phi { ptr, i32 } [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.from. ], [ %eh.lpad-body29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %eh.lpad-body29, %.body28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #44
  br label %.body.from.221

.body.from.221:                                   ; preds = %.from.199, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i, %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %i.cs, %.from.199 ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  br label %.body

bb.y:                                             ; preds = %_ZN7easylog8record_tD2Ev.exit, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit, %_ZN7easylog6loggerILm0EE8instanceEv.exit
  %.reload.addr236 = getelementptr inbounds nuw i8, ptr %0, i64 440
  %.reload237 = load ptr, ptr %.reload.addr236, align 8, !tbaa !9569 ; 2 uses
  %i.da = load ptr, ptr %.reload237, align 8, !tbaa !1760 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.reload237, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1760 ; 2 uses
  %.spill.addr238 = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %i.dc, ptr %.spill.addr238, align 8
  %i.dd = icmp eq ptr %i.da, %i.dc
  br i1 %i.dd, label %.thread129, label %_ZN7coro_io13async_connectISt6vectorIN4asio2ip14basic_endpointINS3_3tcpEEESaIS6_EEEEN12async_simple4coro4LazyISt10error_codeEERNS2_19basic_stream_socketIS5_NS2_15any_io_executorEEERKT_.__await_suspend_wrapper__await.exit

bb.z:                                             ; preds = %bb.ad
  %.sroa.0100.0158.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 456
  %.sroa.0100.0158.reload = load ptr, ptr %.sroa.0100.0158.reload.addr, align 8, !tbaa !9569
  %.reload.addr239 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %.reload240 = load ptr, ptr %.reload.addr239, align 8, !tbaa !9569
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0100.0158.reload, i64 28 ; 2 uses
  %i.df = icmp eq ptr %i.de, %.reload240
  br i1 %i.df, label %.thread129, label %_ZN7coro_io13async_connectISt6vectorIN4asio2ip14basic_endpointINS3_3tcpEEESaIS6_EEEEN12async_simple4coro4LazyISt10error_codeEERNS2_19basic_stream_socketIS5_NS2_15any_io_executorEEERKT_.__await_suspend_wrapper__await.exit

_ZN7coro_io13async_connectISt6vectorIN4asio2ip14basic_endpointINS3_3tcpEEESaIS6_EEEEN12async_simple4coro4LazyISt10error_codeEERNS2_19basic_stream_socketIS5_NS2_15any_io_executorEEERKT_.__await_suspend_wrapper__await.exit: ; preds = %bb.z, %bb.y
  %.sroa.0100.0158 = phi ptr [ %i.da, %bb.y ], [ %i.de, %bb.z ] ; 2 uses
  %.reload.addr241 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.sroa.0100.0158.spill.addr = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %.sroa.0100.0158, ptr %.sroa.0100.0158.spill.addr, align 8
  %.reload.addr231 = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.reload232 = load ptr, ptr %.reload.addr231, align 8, !tbaa !9569 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %index.addr167.i228 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.2.0..sroa_idx.i227 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.spill.addr.i226 = getelementptr inbounds nuw i8, ptr %0, i64 392
  %.reload.addr166.i225 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.reload.addr153.i224 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %destroy.addr.i223 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @_ZN7coro_io8async_ioISt10error_codeZNS_13async_connectISt6vectorIN4asio2ip14basic_endpointINS5_3tcpEEESaIS8_EEEEN12async_simple4coro4LazyIS1_EERNS4_19basic_stream_socketIS7_NS4_15any_io_executorEEERKT_EUlOSJ_E_SH_EENSD_ISJ_EET0_RT1_.resume, ptr %.reload.addr241, align 8
  store ptr @_ZN7coro_io8async_ioISt10error_codeZNS_13async_connectISt6vectorIN4asio2ip14basic_endpointINS5_3tcpEEESaIS8_EEEEN12async_simple4coro4LazyIS1_EERNS4_19basic_stream_socketIS7_NS4_15any_io_executorEEERKT_EUlOSJ_E_SH_EENSD_ISJ_EET0_RT1_.cleanup, ptr %destroy.addr.i223, align 8
  store ptr %.reload232, ptr %.spill.addr.i226, align 8
  store ptr %.reload232, ptr %.reload.addr153.i224, align 8, !tbaa !872
  store ptr %.sroa.0100.0158, ptr %.sroa.2.0..sroa_idx.i227, align 8, !tbaa !1760
  store i8 0, ptr %i.di, align 8, !tbaa !1229
  store i8 0, ptr %index.addr167.i228, align 8
  store ptr %.reload.addr241, ptr %.reload.addr244, align 8, !alias.scope !9575
  store i8 1, ptr %index.addr, align 4
  store ptr %0, ptr %.reload.addr166.i225, align 8, !tbaa !264
  %i.dj = load <2 x ptr>, ptr %i.dh, align 8, !tbaa !264
  store <2 x ptr> %i.dj, ptr %i.dg, align 8, !tbaa !264
  %i.dk = load ptr, ptr %.reload.addr241, align 8
  musttail call void %i.dk(ptr nonnull %.reload.addr241) #44
  ret void

bb.aa:                                            ; preds = %.noexc51, %AfterCoroSuspend180
  %i.dl = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.dm = load ptr, ptr %.reload.addr244, align 8, !tbaa !2179 ; 3 uses
  %.not.i49 = icmp eq ptr %i.dm, null
  br i1 %.not.i49, label %.body, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  invoke void %i.do(ptr nonnull %i.dm)
          to label %.body unwind label %bb.ac, !inline_history !164

bb.ac:                                            ; preds = %bb.ab
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  tail call void @__clang_call_terminate(ptr %i.dq) #50
  unreachable

AfterCoroSuspend180:                              ; preds = %resume.entry
  %i.dr = load ptr, ptr %.reload.addr244, align 8, !tbaa !2179
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNO12async_simple4coro6detail11LazyPromiseISt10error_codeE6resultEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ds)
          to label %.noexc51 unwind label %bb.aa  ; 2 uses

.noexc51:                                         ; preds = %AfterCoroSuspend180
  %.sroa.02.0.copyload.i = load i32, ptr %i.dt, align 8, !tbaa !232 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !530 ; 2 uses
  %i.du = load ptr, ptr %.reload.addr244, align 8, !tbaa !2179 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  invoke void %i.dw(ptr %i.du)
          to label %bb.ad unwind label %bb.aa, !inline_history !165

bb.ad:                                            ; preds = %.noexc51
  %.not156 = icmp eq i32 %.sroa.02.0.copyload.i, 0
  br i1 %.not156, label %.thread129, label %bb.z

.thread129:                                       ; preds = %bb.ad, %bb.z, %bb.y
  %.sroa.0103.2134 = phi i32 [ %.sroa.02.0.copyload.i, %bb.z ], [ 0, %bb.y ], [ 0, %bb.ad ]
  %.sroa.7104.2133 = phi ptr [ %.sroa.5.0.copyload.i, %bb.z ], [ %i.b, %bb.y ], [ %.sroa.5.0.copyload.i, %bb.ad ]
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.dz = load i8, ptr %i.dx, align 8, !tbaa !1229 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.dz, -1
  br i1 %.not.i.i.i.i.i, label %.from._ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE12return_valueIS3_EEvOT_Qsr3stdE16is_convertible_vIOTL0__S6_E.exit, label %bb.ae, !prof !243

bb.ae:                                            ; preds = %.thread129
  %i.ea = icmp ne i8 %i.dz, 2
  %i.eb = load ptr, ptr %i.dy, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.eb, null
  %or.cond.i.i.i.i.i.i = select i1 %i.ea, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %.from._ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE12return_valueIS3_EEvOT_Qsr3stdE16is_convertible_vIOTL0__S6_E.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(17) %i.dy) #44
  br label %.from._ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE12return_valueIS3_EEvOT_Qsr3stdE16is_convertible_vIOTL0__S6_E.exit

.from._ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE12return_valueIS3_EEvOT_Qsr3stdE16is_convertible_vIOTL0__S6_E.exit: ; preds = %.thread129, %bb.ae, %bb.af
  store i32 %.sroa.0103.2134, ptr %i.dy, align 8, !tbaa !232
  br label %bb.ao

.critedge:                                        ; preds = %_ZNK4asio12basic_socketINS_2ip3tcpENS_15any_io_executorEE14local_endpointERSt10error_code.exit, %bb.a
  %i.ec = tail call noalias noundef dereferenceable_or_null(352) ptr @_ZnamRKSt9nothrow_t(i64 noundef 352, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #54, !inline_history !9558 ; 12 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.ag, label %.from..from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i

.from..from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i: ; preds = %.critedge
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 344
  store ptr @_ZZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEmENUlPvmE_8__invokeES4_m, ptr %i.ee, align 1
  store ptr @_ZN7coro_io8async_ioISt10error_codeZNS_13async_connectISt6vectorIN4asio2ip14basic_endpointINS5_3tcpEEESaIS8_EEEEN12async_simple4coro4LazyIS1_EERNS4_19basic_stream_socketIS7_NS4_15any_io_executorEEERKT_EUlOSJ_E0_SH_EENSD_ISJ_EET0_RT1_.resume, ptr %i.ec, align 8
  %destroy.addr.i58 = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr @_ZN7coro_io8async_ioISt10error_codeZNS_13async_connectISt6vectorIN4asio2ip14basic_endpointINS5_3tcpEEESaIS8_EEEEN12async_simple4coro4LazyIS1_EERNS4_19basic_stream_socketIS7_NS4_15any_io_executorEEERKT_EUlOSJ_E0_SH_EENSD_ISJ_EET0_RT1_.destroy, ptr %destroy.addr.i58, align 8
  %.reload.addr153.i59 = getelementptr inbounds nuw i8, ptr %i.ec, i64 248
  %.reload.addr166.i60 = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %.spill.addr.i61 = getelementptr inbounds nuw i8, ptr %i.ec, i64 328
  %i.ef = load <2 x ptr>, ptr %.reload.addr229, align 8, !tbaa !9569
  %.reload = load ptr, ptr %.reload.addr229, align 8, !tbaa !9569
  store ptr %.reload, ptr %.spill.addr.i61, align 8
  store <2 x ptr> %i.ef, ptr %.reload.addr153.i59, align 8, !tbaa !264
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 56
  store i8 0, ptr %i.eg, align 8, !tbaa !1229
  %index.addr167.i63 = getelementptr inbounds nuw i8, ptr %i.ec, i64 336
  store i8 0, ptr %index.addr167.i63, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9576)
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9577)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  store ptr %i.ec, ptr %.reload.addr244, align 8, !alias.scope !9578
  store i8 2, ptr %index.addr, align 4
  store ptr %0, ptr %.reload.addr166.i60, align 8, !tbaa !264
  %i.ej = load <2 x ptr>, ptr %i.eh, align 8, !tbaa !264
  store <2 x ptr> %i.ej, ptr %i.ei, align 8, !tbaa !264
  musttail call void @_ZN7coro_io8async_ioISt10error_codeZNS_13async_connectISt6vectorIN4asio2ip14basic_endpointINS5_3tcpEEESaIS8_EEEEN12async_simple4coro4LazyIS1_EERNS4_19basic_stream_socketIS7_NS4_15any_io_executorEEERKT_EUlOSJ_E0_SH_EENSD_ISJ_EET0_RT1_.resume(ptr nonnull %i.ec) #44
  ret void

bb.ag:                                            ; preds = %.critedge
  %i.ek = tail call ptr @__cxa_allocate_exception(i64 16) #44, !noalias !9579 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull @.str.95)
          to label %bb.ah unwind label %_ZN12async_simple4coro6detail8LazyBaseISt10error_codeLb0EED2Ev.exit90.from., !noalias !9579

bb.ah:                                            ; preds = %bb.ag
  invoke void @__cxa_throw(ptr nonnull %i.ek, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #53
          to label %.noexc66 unwind label %_ZN12async_simple4coro6detail8LazyBaseISt10error_codeLb0EED2Ev.exit90.from.211

.noexc66:                                         ; preds = %bb.ah
  unreachable

_ZN12async_simple4coro6detail8LazyBaseISt10error_codeLb0EED2Ev.exit90.from.: ; preds = %bb.ag
  %i.el = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.ek) #44, !noalias !9579
  br label %.body

_ZN12async_simple4coro6detail8LazyBaseISt10error_codeLb0EED2Ev.exit90.from.211: ; preds = %bb.ah
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

bb.ai:                                            ; preds = %.noexc77, %AfterCoroSuspend184
  %i.en = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.eo = load ptr, ptr %.reload.addr244, align 8, !tbaa !2179 ; 3 uses
  %.not.i70 = icmp eq ptr %i.eo, null
  br i1 %.not.i70, label %.body, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8
  invoke void %i.eq(ptr nonnull %i.eo)
          to label %.body unwind label %bb.ak, !inline_history !164

bb.ak:                                            ; preds = %bb.aj
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  tail call void @__clang_call_terminate(ptr %i.es) #50
  unreachable

AfterCoroSuspend184:                              ; preds = %resume.entry
  %i.et = load ptr, ptr %.reload.addr244, align 8, !tbaa !2179
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNO12async_simple4coro6detail11LazyPromiseISt10error_codeE6resultEv(ptr noundef nonnull align 8 dereferenceable(48) %i.eu)
          to label %.noexc77 unwind label %bb.ai  ; 2 uses

.noexc77:                                         ; preds = %AfterCoroSuspend184
  %.sroa.02.0.copyload.i72 = load i32, ptr %i.ev, align 8, !tbaa !232
  %.sroa.5.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %.sroa.5.0.copyload.i74 = load ptr, ptr %.sroa.5.0..sroa_idx.i73, align 8, !tbaa !530
  %i.ew = load ptr, ptr %.reload.addr244, align 8, !tbaa !2179 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  invoke void %i.ey(ptr %i.ew)
          to label %bb.al unwind label %bb.ai, !inline_history !165

bb.al:                                            ; preds = %.noexc77
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.fb = load i8, ptr %i.ez, align 8, !tbaa !1229 ; 2 uses
  %.not.i.i.i.i.i84 = icmp eq i8 %i.fb, -1
  br i1 %.not.i.i.i.i.i84, label %.from._ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE12return_valueIS3_EEvOT_Qsr3stdE16is_convertible_vIOTL0__S6_E.exit88, label %bb.am, !prof !243

bb.am:                                            ; preds = %bb.al
  %i.fc = icmp ne i8 %i.fb, 2
  %i.fd = load ptr, ptr %i.fa, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i85 = icmp eq ptr %i.fd, null
  %or.cond.i.i.i.i.i.i86 = select i1 %i.fc, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i85
  br i1 %or.cond.i.i.i.i.i.i86, label %.from._ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE12return_valueIS3_EEvOT_Qsr3stdE16is_convertible_vIOTL0__S6_E.exit88, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(17) %i.fa) #44
  br label %.from._ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE12return_valueIS3_EEvOT_Qsr3stdE16is_convertible_vIOTL0__S6_E.exit88

.from._ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE12return_valueIS3_EEvOT_Qsr3stdE16is_convertible_vIOTL0__S6_E.exit88: ; preds = %bb.al, %bb.am, %bb.an
  store i32 %.sroa.02.0.copyload.i72, ptr %i.fa, align 8, !tbaa !232
  br label %bb.ao

bb.ao:                                            ; preds = %.from._ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE12return_valueIS3_EEvOT_Qsr3stdE16is_convertible_vIOTL0__S6_E.exit88, %.from._ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE12return_valueIS3_EEvOT_Qsr3stdE16is_convertible_vIOTL0__S6_E.exit
  %.sroa.5.0.copyload.i74.sink = phi ptr [ %.sroa.5.0.copyload.i74, %.from._ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE12return_valueIS3_EEvOT_Qsr3stdE16is_convertible_vIOTL0__S6_E.exit88 ], [ %.sroa.7104.2133, %.from._ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE12return_valueIS3_EEvOT_Qsr3stdE16is_convertible_vIOTL0__S6_E.exit ]
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.5.0.copyload.i74.sink, ptr %.sroa.595.0..sroa_idx, align 8, !tbaa !530
  store i8 1, ptr %i.fe, align 8, !tbaa !1229
  br label %bb.ap

.body:                                            ; preds = %bb.aj, %bb.ai, %_ZN12async_simple4coro6detail8LazyBaseISt10error_codeLb0EED2Ev.exit90.from.211, %_ZN12async_simple4coro6detail8LazyBaseISt10error_codeLb0EED2Ev.exit90.from., %bb.ab, %bb.aa, %.body.from.221, %.body.from., %.body.from.217, %.body.from.219
  %.pn33.pn = phi { ptr, i32 } [ %i.dl, %bb.ab ], [ %i.w, %.body.from. ], [ %i.n, %.body.from.219 ], [ %.pn.pn.pn, %.body.from.221 ], [ %i.q, %.body.from.217 ], [ %i.dl, %bb.aa ], [ %i.el, %_ZN12async_simple4coro6detail8LazyBaseISt10error_codeLb0EED2Ev.exit90.from. ], [ %i.em, %_ZN12async_simple4coro6detail8LazyBaseISt10error_codeLb0EED2Ev.exit90.from.211 ], [ %i.en, %bb.ai ], [ %i.en, %bb.aj ]
  %.6 = extractvalue { ptr, i32 } %.pn33.pn, 0
  %i.ff = call ptr @__cxa_begin_catch(ptr %.6) #44 ; 0 uses
  call void @_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(48) %.reload.addr248) #44
  invoke void @__cxa_end_catch()
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao, %.body
  store ptr null, ptr %0, align 8
  %.sroa.0.0.copyload.i.i3 = load ptr, ptr %.reload.addr248, align 8, !tbaa !264 ; 2 uses
  %i.fg = load ptr, ptr %.sroa.0.0.copyload.i.i3, align 8
  musttail call void %i.fg(ptr nonnull %.sroa.0.0.copyload.i.i3) #44
  ret void

bb.aq:                                            ; preds = %.body
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #50
  unreachable

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: coro_only_destroy_when_complete inlinehint mustprogress nounwind uwtable
define internal void @_ZN7coro_io13async_connectISt6vectorIN4asio2ip14basic_endpointINS3_3tcpEEESaIS6_EEEEN12async_simple4coro4LazyISt10error_codeEERNS2_19basic_stream_socketIS5_NS2_15any_io_executorEEERKT_.destroy(ptr noundef nonnull align 8 dereferenceable(496) %0) #48 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i8, ptr %i.a, align 8, !tbaa !1229  ; 2 uses
  %.not.i.i.i91 = icmp eq i8 %i.c, -1
  br i1 %.not.i.i.i91, label %_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeED2Ev.exit, label %bb.b, !prof !243

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ne i8 %i.c, 2
  %i.e = load ptr, ptr %i.b, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  %or.cond.i.i.i.i = select i1 %i.d, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(17) %i.b) #44
  br label %_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeED2Ev.exit

_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 496
  %.0.copyload.i = load ptr, ptr %i.f, align 8
  invoke void %.0.copyload.i(ptr noundef nonnull %0, i64 noundef 496)
          to label %CoroEnd unwind label %bb.d

bb.d:                                             ; preds = %_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeED2Ev.exit
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
end_hunk_7
