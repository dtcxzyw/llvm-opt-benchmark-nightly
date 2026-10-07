Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/crow/original/example?download=true
inline.NumInlined: 14924
inline.NumDeleted: 5588
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN4asio6detail17executor_function8completeINS0_7binder2IZN4crow10ConnectionINS4_17UnixSocketAdaptorENS4_4CrowIJ17ExampleMiddlewareEEEJS8_EE7do_readEvEUlRKSt10error_codemE_SB_mEESaIvEEEvPNS1_9impl_baseEb:bb.a
  resume { ptr, i32 } %i.m

_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder2IZN4crow10ConnectionINS4_17UnixSocketAdaptorENS4_4CrowIJ17ExampleMiddlewareEEEJS8_EE7do_readEvEUlRKSt10error_codemE_SB_mEESF_EEvRT_RT0_.exit: ; preds = %._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder2IZN4crow10ConnectionINS4_17UnixSocketAdaptorENS4_4CrowIJ17ExampleMiddlewareEEEJS8_EE7do_readEvEUlRKSt10error_codemE_SB_mEESF_EEvRT_RT0_.exit_crit_edge, %bb.b
  %i.p = phi ptr [ %.pre, %._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder2IZN4crow10ConnectionINS4_17UnixSocketAdaptorENS4_4CrowIJ17ExampleMiddlewareEEEJS8_EE7do_readEvEUlRKSt10error_codemE_SB_mEESF_EEvRT_RT0_.exit_crit_edge ], [ %i.f, %bb.b ] ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN4asio6detail7binder2IZN4crow10ConnectionINS2_17UnixSocketAdaptorENS2_4CrowIJ17ExampleMiddlewareEEEJS6_EE7do_readEvEUlRKSt10error_codemE_S9_mED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder2IZN4crow10ConnectionINS4_17UnixSocketAdaptorENS4_4CrowIJ17ExampleMiddlewareEEEJS8_EE7do_readEvEUlRKSt10error_codemE_SB_mEESF_EEvRT_RT0_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.q, align 8, !tbaa !236
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !237
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !229
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #40, !inline_history !79
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !229
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #40, !inline_history !79
  br label %_ZN4asio6detail7binder2IZN4crow10ConnectionINS2_17UnixSocketAdaptorENS2_4CrowIJ17ExampleMiddlewareEEEJS6_EE7do_readEvEUlRKSt10error_codemE_S9_mED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !200
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.t, %bb.i ], [ %i.ad, %bb.j ]
  %i.ae = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ae, label %bb.k, label %_ZN4asio6detail7binder2IZN4crow10ConnectionINS2_17UnixSocketAdaptorENS2_4CrowIJ17ExampleMiddlewareEEEJS6_EE7do_readEvEUlRKSt10error_codemE_S9_mED2Ev.exit, !prof !117

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #40
  br label %_ZN4asio6detail7binder2IZN4crow10ConnectionINS2_17UnixSocketAdaptorENS2_4CrowIJ17ExampleMiddlewareEEEJS6_EE7do_readEvEUlRKSt10error_codemE_S9_mED2Ev.exit

_ZN4asio6detail7binder2IZN4crow10ConnectionINS2_17UnixSocketAdaptorENS2_4CrowIJ17ExampleMiddlewareEEEJS6_EE7do_readEvEUlRKSt10error_codemE_S9_mED2Ev.exit: ; preds = %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder2IZN4crow10ConnectionINS4_17UnixSocketAdaptorENS4_4CrowIJ17ExampleMiddlewareEEEJS8_EE7do_readEvEUlRKSt10error_codemE_SB_mEESF_EEvRT_RT0_.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  invoke void @_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow10ConnectionINS4_17UnixSocketAdaptorENS4_4CrowIJ17ExampleMiddlewareEEEJS8_EE7do_readEvEUlRKSt10error_codemE_SB_mEESaIvEE3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow10ConnectionINS4_17UnixSocketAdaptorENS4_4CrowIJ17ExampleMiddlewareEEEJS8_EE7do_readEvEUlRKSt10error_codemE_SB_mEESaIvEE3ptrD2Ev.exit6 unwind label %bb.l

bb.l:                                             ; preds = %_ZN4asio6detail7binder2IZN4crow10ConnectionINS2_17UnixSocketAdaptorENS2_4CrowIJ17ExampleMiddlewareEEEJS6_EE7do_readEvEUlRKSt10error_codemE_S9_mED2Ev.exit
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #42
  unreachable

_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow10ConnectionINS4_17UnixSocketAdaptorENS4_4CrowIJ17ExampleMiddlewareEEEJS8_EE7do_readEvEUlRKSt10error_codemE_SB_mEESaIvEE3ptrD2Ev.exit6: ; preds = %_ZN4asio6detail7binder2IZN4crow10ConnectionINS2_17UnixSocketAdaptorENS2_4CrowIJ17ExampleMiddlewareEEEJS6_EE7do_readEvEUlRKSt10error_codemE_S9_mED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow10ConnectionINS4_17UnixSocketAdaptorENS4_4CrowIJ17ExampleMiddlewareEEEJS8_EE7do_readEvEUlRKSt10error_codemE_SB_mEESaIvEE3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1172 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !234  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow10ConnectionINS4_17UnixSocketAdaptorENS4_4CrowIJ17ExampleMiddlewareEEEJS8_EE7do_readEvEUlRKSt10error_codemE_SB_mEESaIvEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !236
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !237
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !229
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #40, !inline_history !2801
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !229
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #40, !inline_history !2801
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow10ConnectionINS4_17UnixSocketAdaptorENS4_4CrowIJ17ExampleMiddlewareEEEJS8_EE7do_readEvEUlRKSt10error_codemE_SB_mEESaIvEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !200
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow10ConnectionINS4_17UnixSocketAdaptorENS4_4CrowIJ17ExampleMiddlewareEEEJS8_EE7do_readEvEUlRKSt10error_codemE_SB_mEESaIvEED2Ev.exit, !prof !117

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #40
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow10ConnectionINS4_17UnixSocketAdaptorENS4_4CrowIJ17ExampleMiddlewareEEEJS8_EE7do_readEvEUlRKSt10error_codemE_SB_mEESaIvEED2Ev.exit

_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow10ConnectionINS4_17UnixSocketAdaptorENS4_4CrowIJ17ExampleMiddlewareEEEJS8_EE7do_readEvEUlRKSt10error_codemE_SB_mEESaIvEED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.h
  store ptr null, ptr %i.a, align 8, !tbaa !1172
  br label %bb.i

bb.i:                                             ; preds = %_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow10ConnectionINS4_17UnixSocketAdaptorENS4_4CrowIJ17ExampleMiddlewareEEEJS8_EE7do_readEvEUlRKSt10error_codemE_SB_mEESaIvEED2Ev.exit, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1173 ; 5 uses
  %.not1 = icmp eq ptr %i.u, null
  br i1 %.not1, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !376  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i: ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !377  ; 4 uses
  %.not3 = icmp eq ptr %i.y, null
  br i1 %.not3, label %.thread.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !119
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.k, label %.preheader.1.i.i

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !119
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.k, label %.thread.i.i

bb.k:                                             ; preds = %.preheader.1.i.i, %.preheader.preheader.i.i
  %.lcssa.i.i = phi i64 [ 4, %.preheader.preheader.i.i ], [ 5, %.preheader.1.i.i ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.lcssa.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !114
  store i8 %i.ah, ptr %i.u, align 1, !tbaa !114
  store ptr %i.u, ptr %i.af, align 8, !tbaa !119
  br label %_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder2IZN4crow10ConnectionINS5_17UnixSocketAdaptorENS5_4CrowIJ17ExampleMiddlewareEEEJS9_EE7do_readEvEUlRKSt10error_codemE_SC_mEESaIvEEENS0_16thread_info_base21executor_function_tagEE10deallocateEPSI_m.exit

.thread.i.i:                                      ; preds = %.preheader.1.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i, %bb.j
  tail call void @free(ptr noundef nonnull %i.u) #40
  br label %_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder2IZN4crow10ConnectionINS5_17UnixSocketAdaptorENS5_4CrowIJ17ExampleMiddlewareEEEJS9_EE7do_readEvEUlRKSt10error_codemE_SC_mEESaIvEEENS0_16thread_info_base21executor_function_tagEE10deallocateEPSI_m.exit

_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder2IZN4crow10ConnectionINS5_17UnixSocketAdaptorENS5_4CrowIJ17ExampleMiddlewareEEEJS9_EE7do_readEvEUlRKSt10error_codemE_SC_mEESaIvEEENS0_16thread_info_base21executor_function_tagEE10deallocateEPSI_m.exit: ; preds = %bb.k, %.thread.i.i
  store ptr null, ptr %i.t, align 8, !tbaa !1173
  br label %bb.l

bb.l:                                             ; preds = %_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder2IZN4crow10ConnectionINS5_17UnixSocketAdaptorENS5_4CrowIJ17ExampleMiddlewareEEEJS9_EE7do_readEvEUlRKSt10error_codemE_SC_mEESaIvEEENS0_16thread_info_base21executor_function_tagEE10deallocateEPSI_m.exit, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4asio6detail28reactive_socket_recv_op_baseINS_14mutable_bufferEE10do_performEPNS0_10reactor_opE(ptr noundef %0) #1 comdat align 2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1090
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !119
  %.sroa.2.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..0..sroa_idx.i, align 8, !tbaa !111
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1093
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !1091
  %i.h = and i8 %i.g, 16
  %i.i = icmp ne i8 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = tail call noundef zeroext i1 @_ZN4asio6detail10socket_ops18non_blocking_recv1EiPvmibRSt10error_codeRm(i32 noundef %i.b, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.sroa.2.0.copyload.i, i32 noundef %i.e, i1 noundef zeroext %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = load i8, ptr %i.f, align 4, !tbaa !1091
  %i.n = and i8 %i.m, 16
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.k, align 8, !tbaa !2802
  %i.p = icmp eq i64 %i.o, 0
  %spec.select = select i1 %i.p, i32 2, i32 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4asio6detail10socket_ops18non_blocking_recv1EiPvmibRSt10error_codeRm(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, %bb.a
  %i.a = tail call i64 @recv(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) ; 3 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4asio6detail10socket_ops5recv1EiPvmiRSt10error_code.exit

bb.b:                                             ; preds = %.critedge
  %i.c = tail call ptr @__errno_location() #44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !200
  %i.e = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.i, !prof !116

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #40
  %.not.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #40 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #40
  br label %bb.i

_ZN4asio6detail10socket_ops5recv1EiPvmiRSt10error_code.exit: ; preds = %.critedge
  store i32 0, ptr %5, align 8, !tbaa !209
  %i.i = icmp eq i64 %i.a, 0
  %or.cond = and i1 %4, %i.i
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4asio6detail10socket_ops5recv1EiPvmiRSt10error_code.exit
  %i.j = load atomic i8, ptr @_ZGVZN4asio5error17get_misc_categoryEvE8instance acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.f, label %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit, !prof !116

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio5error17get_misc_categoryEvE8instance) #40
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio5error17get_misc_categoryEvE8instance, ptr nonnull @__dso_handle) #40 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio5error17get_misc_categoryEvE8instance) #40
  br label %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit

_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit: ; preds = %bb.e, %bb.f, %bb.g
  store i32 2, ptr %5, align 8, !tbaa !200
  store ptr @_ZZN4asio5error17get_misc_categoryEvE8instance, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !202
  br label %bb.s

bb.h:                                             ; preds = %_ZN4asio6detail10socket_ops5recv1EiPvmiRSt10error_code.exit
  store i64 %i.a, ptr %6, align 8, !tbaa !111
  br label %bb.s

bb.i:                                             ; preds = %bb.d, %bb.c, %bb.b
  store i32 %i.d, ptr %5, align 8, !tbaa !200
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !202
  %i.n = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.j, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, !prof !116

bb.j:                                             ; preds = %bb.i
  %i.p = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #40
  %.not.i.i.i.i20 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i20, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #40 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #40
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit: ; preds = %bb.i, %bb.j, %bb.k
  %i.r = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !210
  %i.s = icmp eq ptr %i.r, @_ZZN4asio15system_categoryEvE8instance
  %i.t = load i32, ptr %5, align 8
  %i.u = icmp eq i32 %i.t, 4
  %i.v = select i1 %i.s, i1 %i.u, i1 false
  br i1 %i.v, label %.critedge, label %bb.l, !llvm.loop !2803

bb.l:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit
  %i.w = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.m, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23, !prof !116

bb.m:                                             ; preds = %bb.l
  %i.y = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #40
  %.not.i.i.i.i22 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i22, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #40 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #40
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23: ; preds = %bb.l, %bb.m, %bb.n
  %i.aa = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !210
  %i.ab = icmp eq ptr %i.aa, @_ZZN4asio15system_categoryEvE8instance
  %i.ac = load i32, ptr %5, align 8
  %i.ad = icmp eq i32 %i.ac, 11
  %i.ae = select i1 %i.ab, i1 %i.ad, i1 false
  br i1 %i.ae, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23
  %i.af = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.p, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26, !prof !116

bb.p:                                             ; preds = %bb.o
  %i.ah = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #40
  %.not.i.i.i.i25 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i25, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #40 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #40
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26: ; preds = %bb.o, %bb.p, %bb.q
  %i.aj = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !210
  %i.ak = icmp eq ptr %i.aj, @_ZZN4asio15system_categoryEvE8instance
  %i.al = load i32, ptr %5, align 8
  %i.am = icmp eq i32 %i.al, 11
  %i.an = select i1 %i.ak, i1 %i.am, i1 false
  br i1 %i.an, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26
  store i64 0, ptr %6, align 8, !tbaa !111
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit, %bb.h, %bb.r, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23
  %.1.ph = phi i1 [ false, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23 ], [ false, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26 ], [ true, %bb.r ], [ true, %bb.h ], [ true, %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit ]
  ret i1 %.1.ph
}

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4asio6detail10socket_ops25set_internal_non_blockingEiRhbRSt10error_code(i32 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = icmp eq i32 %0, -1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, !prof !116

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #40
  %.not.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #40 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #40
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit: ; preds = %bb.b, %bb.c, %bb.d
  store i32 9, ptr %3, align 8, !tbaa !200
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.420.0..sroa_idx, align 8, !tbaa !202
  br label %bb.p

bb.e:                                             ; preds = %bb.a
  br i1 %2, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = load i8, ptr %1, align 1, !tbaa !114
  %i.h = and i8 %i.g, 1
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.h, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit16, !prof !116

bb.h:                                             ; preds = %bb.g
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #40
  %.not.i.i.i.i15 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i15, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit16, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #40 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #40
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit16

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit16: ; preds = %bb.g, %bb.h, %bb.i
end_hunk_0
