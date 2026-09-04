Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/spdlog/original/async?download=true
inline.NumInlined: 885
inline.NumDeleted: 494
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6spdlog7details11thread_poolC2EmmSt8functionIFvvEE:bb.a
  %4 = alloca %"class.std::function.37", align 8  ; 11 uses
  %5 = alloca %"class.std::function.37", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !125
  store ptr %i.c, ptr %i.a, align 8, !tbaa !125
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvvEEC2EOS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !126
  store ptr %i.e, ptr %i.f, align 8, !tbaa !121
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEC2EOS1_.exit

_ZNSt8functionIFvvEEC2EOS1_.exit:                 ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvvEZN6spdlog7details11thread_poolC1EmmSt8functionIS0_EE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.h, align 8, !tbaa !125
  store ptr @"_ZNSt17_Function_handlerIFvvEZN6spdlog7details11thread_poolC1EmmSt8functionIS0_EE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation", ptr %i.g, align 8, !tbaa !121
  invoke void @_ZN6spdlog7details11thread_poolC2EmmSt8functionIFvvEES4_(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull align 8 dereferenceable(32) %4, ptr nofree noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !121  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !121  ; 2 uses
  %.not.i4 = icmp eq ptr %i.n, null
  br i1 %.not.i4, label %_ZNSt14_Function_baseD2Ev.exit5, label %bb.f

bb.f:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit5:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.f
  ret void

bb.h:                                             ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !121  ; 2 uses
  %.not.i6 = icmp eq ptr %i.s, null
  br i1 %.not.i6, label %_ZNSt14_Function_baseD2Ev.exit7, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit7 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit7:                  ; preds = %bb.h, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !121  ; 2 uses
  %.not.i8 = icmp eq ptr %i.x, null
  br i1 %.not.i8, label %_ZNSt14_Function_baseD2Ev.exit9, label %bb.k

bb.k:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit7
  %i.y = invoke noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit9 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit9:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit7, %bb.k
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6spdlog7details11thread_poolC2Emm(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function.37", align 8  ; 8 uses
  %4 = alloca %"class.std::function.37", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvvEZN6spdlog7details11thread_poolC1EmmE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.b, align 8, !tbaa !125
  store ptr @"_ZNSt17_Function_handlerIFvvEZN6spdlog7details11thread_poolC1EmmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation", ptr %i.a, align 8, !tbaa !121
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvvEZN6spdlog7details11thread_poolC1EmmE3$_1E9_M_invokeERKSt9_Any_data", ptr %i.d, align 8, !tbaa !125
  store ptr @"_ZNSt17_Function_handlerIFvvEZN6spdlog7details11thread_poolC1EmmE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation", ptr %i.c, align 8, !tbaa !121
  invoke void @_ZN6spdlog7details11thread_poolC2EmmSt8functionIFvvEES4_(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull align 8 dereferenceable(32) %3, ptr nofree noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !121  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !121  ; 2 uses
  %.not.i4 = icmp eq ptr %i.i, null
  br i1 %.not.i4, label %_ZNSt14_Function_baseD2Ev.exit5, label %bb.e

bb.e:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5 unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit5:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.e
  ret void

bb.g:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !121  ; 2 uses
  %.not.i6 = icmp eq ptr %i.n, null
  br i1 %.not.i6, label %_ZNSt14_Function_baseD2Ev.exit7, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit7 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit7:                  ; preds = %bb.g, %bb.h
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !121  ; 2 uses
  %.not.i8 = icmp eq ptr %i.r, null
  br i1 %.not.i8, label %_ZNSt14_Function_baseD2Ev.exit9, label %bb.j

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit7
  %i.s = invoke noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit9 unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit9:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit7, %bb.j
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6spdlog7details11thread_poolD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.spdlog::details::async_msg", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !124
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !127  ; 2 uses
  %.not29 = icmp eq ptr %i.c, %i.d
  br i1 %.not29, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 400
  br label %bb.b

.preheader:                                       ; preds = %_ZN6spdlog7details9async_msgD2Ev.exit
  %.not26 = icmp eq ptr %i.ah, %i.ag
  br i1 %.not26, label %.loopexitthread-pre-split, label %.lr.ph28

bb.b:                                             ; preds = %.lr.ph, %_ZN6spdlog7details9async_msgD2Ev.exit
  %.01024 = phi i64 [ 0, %.lr.ph ], [ %i.af, %_ZN6spdlog7details9async_msgD2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %1, i8 0, i64 384, i1 false)
  store i32 6, ptr %i.e, align 8, !tbaa !113
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.f, i8 0, i64 44, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.j, align 8, !tbaa !114
  store ptr %i.k, ptr %i.h, align 8, !tbaa !112
  store i64 250, ptr %i.i, align 8, !tbaa !115
  store i32 2, ptr %i.l, align 8, !tbaa !111
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  invoke void @_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE7enqueueEOS2_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(408) %1)
          to label %_ZN6spdlog7details11thread_pool15post_async_msg_EONS0_9async_msgENS_21async_overflow_policyE.exit unwind label %bb.j

_ZN6spdlog7details11thread_pool15post_async_msg_EONS0_9async_msgENS_21async_overflow_policyE.exit: ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !69   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN6spdlog7details11thread_pool15post_async_msg_EONS0_9async_msgENS_21async_overflow_policyE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.p, align 8, !tbaa !74
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !75
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #25, !inline_history !5
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #25, !inline_history !5
  br label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !67
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.s, %bb.f ], [ %i.ac, %bb.g ]
  %i.ad = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ad, label %bb.h, label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !76

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #25
  br label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %_ZN6spdlog7details11thread_pool15post_async_msg_EONS0_9async_msgENS_21async_overflow_policyE.exit
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !112 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ae, %i.k
  br i1 %.not.i.i.i1.i, label %_ZN6spdlog7details9async_msgD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  call void @free(ptr noundef %i.ae) #25
  br label %_ZN6spdlog7details9async_msgD2Ev.exit

_ZN6spdlog7details9async_msgD2Ev.exit:            ; preds = %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.af = add nuw i64 %.01024, 1                  ; 2 uses
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !124 ; 3 uses
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !127 ; 3 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = icmp ult i64 %i.af, %i.al
  br i1 %i.am, label %bb.b, label %.preheader, !llvm.loop !215

bb.j:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @_ZN6spdlog7details9async_msgD2Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.m

.lr.ph28:                                         ; preds = %.preheader, %bb.k
  %.sroa.014.027 = phi ptr [ %i.ao, %bb.k ], [ %i.ah, %.preheader ] ; 2 uses
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.014.027)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.lr.ph28
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.014.027, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ao, %i.ag
  br i1 %.not, label %.loopexitthread-pre-split, label %.lr.ph28

bb.l:                                             ; preds = %.lr.ph28
  %i.ap = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.an, %bb.j ], [ %i.ap, %bb.l ] ; 2 uses
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 1
  %.19 = extractvalue { ptr, i32 } %.pn.pn, 0     ; 2 uses
  %i.aq = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #25
  %i.ar = icmp eq i32 %.1, %i.aq
  br i1 %i.ar, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.as = call ptr @__cxa_begin_catch(ptr %.19) #25 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %.loopexitthread-pre-split unwind label %bb.r

.loopexitthread-pre-split:                        ; preds = %bb.k, %bb.n, %.preheader
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !127
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %.loopexitthread-pre-split
  %2 = phi ptr [ %.pr, %.loopexitthread-pre-split ], [ %i.d, %bb.a ] ; 4 uses
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !124 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %2, %i.at
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i

bb.o:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %i.au, %i.at
  br i1 %.not.i.i.i13, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i, !llvm.loop !6

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i:          ; preds = %.loopexit, %bb.o
  %.05.i.i.i = phi ptr [ %i.au, %bb.o ], [ %2, %.loopexit ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.05.i.i.i, align 8, !tbaa !97
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  call void @_ZSt9terminatev() #27
  unreachable

_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %bb.o, %.loopexit
  %.not.i.i1.i = icmp eq ptr %2, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %2) #24
  br label %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit

_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @_ZNSt6vectorIN6spdlog7details9async_msgESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.av) #25
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.aw) #25
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.ax) #25
  ret void

bb.r:                                             ; preds = %bb.n
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #27
  unreachable

bb.s:                                             ; preds = %bb.m
  call void @__clang_call_terminate(ptr %.19) #27
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6spdlog7details11thread_pool15post_async_msg_EONS0_9async_msgENS_21async_overflow_policyE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(408) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE7enqueueEOS2_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(408) %1)
  br label %_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE20enqueue_if_have_roomEOS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(200) %0) #25 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE14enqueue_nowaitEOS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #26
  unreachable

_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE14enqueue_nowaitEOS2_.exit: ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN6spdlog7details10circular_qINS0_9async_msgEE9push_backEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(408) %1)
  %i.c = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(200) %0) #25 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.d) #25
  br label %_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE20enqueue_if_have_roomEOS2_.exit

bb.e:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(200) %0) #25 ; 2 uses
  %.not.i.i.i.i5 = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i5, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #26
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i:       ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !134  ; 2 uses
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i, label %_ZNK6spdlog7details10circular_qINS0_9async_msgEE4fullEv.exit.i

_ZNK6spdlog7details10circular_qINS0_9async_msgEE4fullEv.exit.i: ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.i = load i64, ptr %i.h, align 8, !tbaa !137
  %i.j = add i64 %i.i, 1
  %i.k = urem i64 %i.j, %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i64, ptr %i.l, align 8, !tbaa !138
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %_ZNSt11unique_lockISt5mutexED2Ev.exit3.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i

_ZNSt11unique_lockISt5mutexED2Ev.exit.i:          ; preds = %_ZNK6spdlog7details10circular_qINS0_9async_msgEE4fullEv.exit.i, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i
  tail call void @_ZN6spdlog7details10circular_qINS0_9async_msgEE9push_backEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(408) %1)
  %i.o = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(200) %0) #25 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.p) #25
  br label %_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE20enqueue_if_have_roomEOS2_.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit3.i:         ; preds = %_ZNK6spdlog7details10circular_qINS0_9async_msgEE4fullEv.exit.i
  %i.q = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(200) %0) #25 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.s = atomicrmw add ptr %i.r, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE20enqueue_if_have_roomEOS2_.exit

_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE20enqueue_if_have_roomEOS2_.exit: ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit3.i, %_ZNSt11unique_lockISt5mutexED2Ev.exit.i, %_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE14enqueue_nowaitEOS2_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details9async_msgD2Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !75
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !3
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !3
  br label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !67
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !76

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !112  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.not.i.i.i1 = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i1, label %_ZN6spdlog7details14log_msg_bufferD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  tail call void @free(ptr noundef %i.s) #25
  br label %_ZN6spdlog7details14log_msg_bufferD2Ev.exit

_ZN6spdlog7details14log_msg_bufferD2Ev.exit:      ; preds = %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZN6spdlog7details11thread_pool15overrun_counterEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(200) %0) #25 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i, label %_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE15overrun_counterEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #26
  unreachable

_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE15overrun_counterEv.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load i64, ptr %i.b, align 8, !tbaa !139
end_hunk_0
begin_hunk_1_@_ZN6spdlog6loggerC2IPKSt10shared_ptrINS_5sinks4sinkEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_SE_:bb.a
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt10shared_ptrIN6spdlog5sinks4sinkEESaIS4_EE11_M_allocateEm.exit.thread.i.i ], [ %i.ag, %_ZSt10_ConstructISt10shared_ptrIN6spdlog5sinks4sinkEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.aj, align 8, !tbaa !147
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 2, ptr %i.ak, align 8, !tbaa !233
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 6, ptr %i.al, align 4, !tbaa !233
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.an, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.am, i8 0, i64 73, i1 false)
  ret void

.body:                                            ; preds = %bb.g, %bb.h
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.b
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  tail call void @_ZdlPv(ptr noundef %i.ao) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ah
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #18

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt12bad_weak_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

declare void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3fmt3v126detail19parse_format_stringIcNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %struct.id_adapter, align 8         ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 9 uses
  %.not50 = icmp samesign eq i64 %1, 0
  br i1 %.not50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = ptrtoaddr ptr %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S8_S8_OT0_.exit
  %.051 = phi ptr [ %0, %.lr.ph ], [ %.1, %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S8_S8_OT0_.exit ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.051, i64 1 ; 8 uses
  %i.j = load i8, ptr %.051, align 1, !tbaa !27
  switch i8 %i.j, label %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S8_S8_OT0_.exit [
    i8 123, label %bb.c
    i8 125, label %bb.z
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq ptr %i.i, %i.a
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.9) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = load i8, ptr %i.i, align 1, !tbaa !27
  switch i8 %i.l, label %bb.n [
    i8 125, label %bb.f
    i8 123, label %bb.j
    i8 58, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.b, align 8, !tbaa !99   ; 5 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.g, label %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.13) #26
  unreachable

_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i.i: ; preds = %bb.f
  %i.o = add nuw nsw i32 %i.m, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !99
  %i.p = load i32, ptr %i.c, align 4, !tbaa !101
  %.not.i.i = icmp slt i32 %i.m, %i.p
  br i1 %.not.i.i, label %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE9on_arg_idEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i.i
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.12) #26
  unreachable

_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE9on_arg_idEv.exit: ; preds = %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i.i
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !148  ; 2 uses
  %i.r = ptrtoint ptr %i.i to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.t
  store ptr %i.u, ptr %i.d, align 8, !tbaa !148
  %i.v = load i64, ptr %i.e, align 8, !tbaa !149
  %i.w = sub i64 %i.v, %i.t
  store i64 %i.w, ptr %i.e, align 8, !tbaa !149
  %or.cond.i.i = icmp samesign ult i32 %i.m, 3
  br i1 %or.cond.i.i, label %bb.i, label %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE20on_replacement_fieldEiPKc.exit

bb.i:                                             ; preds = %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE9on_arg_idEv.exit
  %i.x = zext nneg i32 %i.m to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31
  %i.aa = call noundef ptr %i.z(ptr noundef nonnull align 8 dereferenceable(20) %i.d), !inline_history !234 ; 0 uses
  br label %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE20on_replacement_fieldEiPKc.exit

_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE20on_replacement_fieldEiPKc.exit: ; preds = %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE9on_arg_idEv.exit, %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.051, i64 2
  br label %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S8_S8_OT0_.exit

bb.j:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.051, i64 2
  br label %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S8_S8_OT0_.exit

bb.k:                                             ; preds = %bb.e
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !99  ; 4 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.l, label %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i.i31

bb.l:                                             ; preds = %bb.k
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.13) #26
  unreachable

_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i.i31: ; preds = %bb.k
  %i.af = add nuw nsw i32 %i.ad, 1
  store i32 %i.af, ptr %i.b, align 8, !tbaa !99
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !101
  %.not.i.i32 = icmp slt i32 %i.ad, %i.ag
  br i1 %.not.i.i32, label %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE9on_arg_idEv.exit33, label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i.i31
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.12) #26
  unreachable

bb.n:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %2, ptr %3, align 8, !tbaa !237
  store i32 0, ptr %i.g, align 8, !tbaa !152
  %i.ah = call noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcRZNS1_23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S9_S9_OT0_E10id_adapterEES9_S9_S9_SB_(ptr noundef nonnull %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(12) %3) ; 5 uses
  %i.ai = load i32, ptr %i.g, align 8, !tbaa !152 ; 3 uses
  %.not.i = icmp eq ptr %i.ah, %i.a
  br i1 %.not.i, label %.thread44, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = load i8, ptr %i.ah, align 1, !tbaa !27
  switch i8 %i.aj, label %.thread44 [
    i8 125, label %bb.p
    i8 58, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !148 ; 2 uses
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an
  store ptr %i.ao, ptr %i.d, align 8, !tbaa !148
  %i.ap = load i64, ptr %i.e, align 8, !tbaa !149
  %i.aq = sub i64 %i.ap, %i.an
  store i64 %i.aq, ptr %i.e, align 8, !tbaa !149
  %or.cond.i.i34 = icmp ult i32 %i.ai, 3
  br i1 %or.cond.i.i34, label %bb.q, label %.thread47

bb.q:                                             ; preds = %bb.p
  %i.ar = zext nneg i32 %i.ai to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !31
  %i.au = call noundef ptr %i.at(ptr noundef nonnull align 8 dereferenceable(20) %i.d), !inline_history !234 ; 0 uses
  br label %.thread47

.thread47:                                        ; preds = %bb.q, %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S8_S8_OT0_.exit

.thread44:                                        ; preds = %bb.o, %bb.n
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.10) #26
  unreachable

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE9on_arg_idEv.exit33

_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE9on_arg_idEv.exit33: ; preds = %bb.r, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i.i31
  %.039.i = phi ptr [ %i.ah, %bb.r ], [ %i.i, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i.i31 ]
  %.037.i = phi i32 [ %i.ai, %bb.r ], [ %i.ad, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i.i31 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.039.i, i64 1 ; 4 uses
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !148 ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ba
  store ptr %i.bb, ptr %i.d, align 8, !tbaa !148
  %i.bc = load i64, ptr %i.e, align 8, !tbaa !149
  %i.bd = sub i64 %i.bc, %i.ba
  store i64 %i.bd, ptr %i.e, align 8, !tbaa !149
  %or.cond.i = icmp ult i32 %.037.i, 3
  br i1 %or.cond.i, label %bb.s, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE9on_arg_idEv.exit33
  %.not23.i = icmp eq ptr %i.aw, %i.a
  br i1 %.not23.i, label %bb.x, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.be = sub i64 %i.h, %i.ay
  %scevgep.i = getelementptr i8, ptr %i.aw, i64 %i.be
  br label %.lr.ph.i

bb.s:                                             ; preds = %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE9on_arg_idEv.exit33
  %i.bf = zext nneg i32 %.037.i to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !31
  %i.bi = call noundef ptr %i.bh(ptr noundef nonnull align 8 dereferenceable(20) %i.d), !inline_history !235
  br label %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE15on_format_specsEiPKcS5_.exit

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.preheader.i
  %.025.i = phi i32 [ %.1.i37, %bb.v ], [ 0, %.lr.ph.preheader.i ] ; 4 uses
  %.01924.i = phi ptr [ %i.bm, %bb.v ], [ %i.aw, %.lr.ph.preheader.i ] ; 3 uses
  %i.bj = icmp slt i32 %.025.i, 1
  %.pr.i = load i8, ptr %.01924.i, align 1, !tbaa !27 ; 2 uses
  %.not22.i = icmp eq i8 %.pr.i, 125
  %or.cond33.i = select i1 %i.bj, i1 %.not22.i, i1 false
  br i1 %or.cond33.i, label %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE15on_format_specsEiPKcS5_.exit, label %.critedge3.i

.critedge3.i:                                     ; preds = %.lr.ph.i
  switch i8 %.pr.i, label %bb.v [
    i8 123, label %bb.t
    i8 125, label %bb.u
  ]

bb.t:                                             ; preds = %.critedge3.i
  %i.bk = add nsw i32 %.025.i, 1
  br label %bb.v

bb.u:                                             ; preds = %.critedge3.i
  %i.bl = add nsw i32 %.025.i, -1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %.critedge3.i
  %.1.i37 = phi i32 [ %i.bk, %bb.t ], [ %i.bl, %bb.u ], [ %.025.i, %.critedge3.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.01924.i, i64 1 ; 2 uses
  %.not.i38 = icmp eq ptr %i.bm, %i.a
  br i1 %.not.i38, label %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE15on_format_specsEiPKcS5_.exit, label %.lr.ph.i, !llvm.loop !236

_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE15on_format_specsEiPKcS5_.exit: ; preds = %.lr.ph.i, %bb.v, %bb.s
  %.018.i = phi ptr [ %i.bi, %bb.s ], [ %scevgep.i, %bb.v ], [ %.01924.i, %.lr.ph.i ] ; 3 uses
  %i.bn = icmp eq ptr %.018.i, %i.a
  br i1 %i.bn, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE15on_format_specsEiPKcS5_.exit
  %i.bo = load i8, ptr %.018.i, align 1, !tbaa !27
  %.not47.i = icmp eq i8 %i.bo, 125
  br i1 %.not47.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.preheader.i, %bb.w, %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE15on_format_specsEiPKcS5_.exit
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.11) #26
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bp = getelementptr inbounds nuw i8, ptr %.018.i, i64 1
  br label %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S8_S8_OT0_.exit

bb.z:                                             ; preds = %bb.b
  %i.bq = icmp eq ptr %i.i, %i.a
  br i1 %i.bq, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.br = load i8, ptr %i.i, align 1, !tbaa !27
  %.not30 = icmp eq i8 %i.br, 125
  br i1 %.not30, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.8) #26
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.bs = getelementptr inbounds nuw i8, ptr %.051, i64 2
  br label %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S8_S8_OT0_.exit

_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S8_S8_OT0_.exit: ; preds = %bb.y, %bb.j, %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE20on_replacement_fieldEiPKc.exit, %.thread47, %bb.b, %bb.ac
  %.1 = phi ptr [ %i.i, %bb.b ], [ %i.bs, %bb.ac ], [ %i.bp, %bb.y ], [ %i.av, %.thread47 ], [ %i.ab, %_ZN3fmt3v126detail21format_string_checkerIcLi3ELi0ELb0EE20on_replacement_fieldEiPKc.exit ], [ %i.ac, %bb.j ] ; 2 uses
  %.not = icmp eq ptr %.1, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S8_S8_OT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcRZNS1_23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S9_S9_OT0_E10id_adapterEES9_S9_S9_SB_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !27      ; 5 uses
  %i.b = add i8 %i.a, -48
  %or.cond = icmp ult i8 %i.b, 10
  br i1 %or.cond, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %.not28 = icmp eq i8 %i.a, 48
  br i1 %.not28, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.d = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.e = xor i64 %i.d, -1
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %scevgep.i = getelementptr i8, ptr %i.f, i64 %i.c ; 2 uses
  %i.g = sub i64 %i.c, %i.d
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.g ; 2 uses
  %i.h = zext nneg i8 %i.a to i32
  %i.i = add nsw i32 %i.h, -48                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i41 = icmp eq ptr %i.j, %1
  br i1 %.not34.i41, label %.critedge.i, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.k = mul i32 %i.q, 10
  %i.l = zext nneg i8 %i.r to i32
  %i.m = add nsw i32 %i.l, -48
  %i.n = add i32 %i.m, %i.k                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.o, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph, !llvm.loop !9

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.j, %bb.c ] ; 4 uses
  %i.q = phi i32 [ %i.n, %bb.d ], [ %i.i, %bb.c ] ; 4 uses
  %.0.i43 = phi ptr [ %i.p, %bb.d ], [ %0, %bb.c ]
  %.027.i42 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %i.r = load i8, ptr %i.p, align 1, !tbaa !27    ; 2 uses
  %i.s = add i8 %i.r, -48
  %or.cond.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i, label %bb.d, label %..critedge.i_crit_edge, !llvm.loop !9

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !9

.critedge.i:                                      ; preds = %bb.d, %..critedge.i_crit_edge, %bb.c
  %.027.i.lcssa = phi i32 [ %.027.i42, %..critedge.i_crit_edge ], [ 0, %bb.c ], [ %i.q, %bb.d ]
  %.lcssa = phi i32 [ %i.q, %..critedge.i_crit_edge ], [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.0.i43, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.c ], [ %scevgep.i, %bb.d ]
  %.lcssa.i = phi ptr [ %i.p, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.c ], [ %scevgep37.i, %bb.d ] ; 4 uses
  %i.t = ptrtoint ptr %.lcssa.i to i64
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = icmp slt i64 %i.v, 10
  br i1 %i.w, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.x = icmp eq i64 %i.v, 10
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = zext i32 %.027.i.lcssa to i64
  %i.z = mul nuw nsw i64 %i.y, 10
  %i.aa = load i8, ptr %.0.lcssa.i, align 1, !tbaa !27
  %i.ab = sext i8 %i.aa to i64
  %i.ac = add nsw i64 %i.ab, 4294967248
  %i.ad = and i64 %i.ac, 4294967294
  %i.ae = add nuw nsw i64 %i.ad, %i.z
  %i.af = icmp samesign ult i64 %i.ae, 2147483648
  br i1 %i.af, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

bb.h:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %bb.g, %bb.f, %.critedge.i, %bb.h
  %.037 = phi ptr [ %i.ag, %bb.h ], [ %.lcssa.i, %.critedge.i ], [ %.lcssa.i, %bb.f ], [ %.lcssa.i, %bb.g ] ; 3 uses
  %.021 = phi i32 [ 0, %bb.h ], [ %.lcssa, %.critedge.i ], [ %.lcssa, %bb.f ], [ 2147483647, %bb.g ] ; 2 uses
  %i.ah = icmp eq ptr %.037, %1
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  %i.ai = load i8, ptr %.037, align 1, !tbaa !27
  switch i8 %i.ai, label %bb.j [
    i8 125, label %bb.k
    i8 58, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.9) #26
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.aj = load ptr, ptr %2, align 8, !tbaa !238, !nonnull !145, !align !153 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !99
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.l, label %_ZN3fmt3v1213parse_contextIcE12check_arg_idEi.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.14) #26
  unreachable

_ZN3fmt3v1213parse_contextIcE12check_arg_idEi.exit.i.i.i: ; preds = %bb.k
  store i32 -1, ptr %i.ak, align 8, !tbaa !99
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 52
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !101
  %.not.i.i.i = icmp slt i32 %.021, %i.ao
  br i1 %.not.i.i.i, label %_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S8_S8_OT0_EN10id_adapter8on_indexEi.exit, label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v1213parse_contextIcE12check_arg_idEi.exit.i.i.i
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.12) #26
  unreachable

_ZZN3fmt3v126detail23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi3ELi0ELb0EEEEEPKT_S8_S8_OT0_EN10id_adapter8on_indexEi.exit: ; preds = %_ZN3fmt3v1213parse_contextIcE12check_arg_idEi.exit.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.021, ptr %i.ap, align 8, !tbaa !152
  ret ptr %.037

bb.n:                                             ; preds = %bb.a
  %i.aq = and i8 %i.a, -33
  %i.ar = add i8 %i.aq, -65
  %or.cond10.i = icmp ult i8 %i.ar, 26
  %i.as = icmp eq i8 %i.a, 95
  %i.at = or i1 %i.as, %or.cond10.i
  br i1 %i.at, label %.critedge4.preheader, label %bb.o

.critedge4.preheader:                             ; preds = %bb.n
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.12) #26
  unreachable

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.9) #26
  unreachable
}

; Function Attrs: noreturn
declare void @_ZN3fmt3v1212report_errorEPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail12invoke_parseIPKccEEPKT0_RNS0_13parse_contextIS5_EE(ptr noundef nonnull align 8 dereferenceable(20) %0) #0 comdat {
bb.a:
  %1 = alloca %"struct.fmt::v12::formatter", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store i32 32768, ptr %1, align 8, !tbaa !155
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 32, ptr %i.b, align 4, !tbaa !27
  %scevgep.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.c, align 4, !tbaa !157
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.d, align 8, !tbaa !27
  %i.e = load ptr, ptr %0, align 8, !tbaa !148    ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !149  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = icmp samesign eq i64 %i.g, 0
  br i1 %i.i, label %_ZN3fmt3v126detail16native_formatterIPKccLNS1_4typeE12EE5parseERNS0_13parse_contextIcEE.exit, label %bb.b
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE:bb.a
  %i.ev = sub i64 %i.a, %i.eu
  %i.ew = icmp slt i64 %i.ev, 1
  br i1 %i.ew, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.17) #26
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.ex = icmp eq i8 %i.el, 123
  br i1 %i.ex, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.18) #26
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.ey = load i8, ptr %i.et, align 1, !tbaa !27
  switch i8 %i.ey, label %_ZN3fmt3v126detail11parse_alignEc.exit76.thread [
    i8 60, label %_ZN3fmt3v126detail11parse_alignEc.exit76
    i8 62, label %bb.bh
    i8 94, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  br label %_ZN3fmt3v126detail11parse_alignEc.exit76

bb.bi:                                            ; preds = %bb.bg
  br label %_ZN3fmt3v126detail11parse_alignEc.exit76

_ZN3fmt3v126detail11parse_alignEc.exit76:         ; preds = %bb.bg, %bb.bh, %bb.bi
  %.0.i75 = phi i32 [ 8, %bb.bg ], [ 24, %bb.bi ], [ 16, %bb.bh ]
  %i.ez = icmp eq i32 %.sroa.0113.0, 0
  br i1 %i.ez, label %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit78, label %_ZN3fmt3v126detail11parse_alignEc.exit76.thread

_ZN3fmt3v126detail11parse_alignEc.exit76.thread:  ; preds = %bb.bg, %_ZN3fmt3v126detail11parse_alignEc.exit76
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.17) #26
  unreachable

_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit78: ; preds = %_ZN3fmt3v126detail11parse_alignEc.exit76
  %i.fa = load i32, ptr %2, align 8, !tbaa !155
  %i.fb = and i32 %i.fa, -229377
  %i.fc = trunc nuw nsw i64 %i.er to i32
  %i.fd = shl nuw nsw i32 %i.fc, 15
  %i.fe = add nuw nsw i32 %i.fd, 32768
  %i.ff = or disjoint i32 %i.fb, %i.fe            ; 2 uses
  store i32 %i.ff, ptr %2, align 8, !tbaa !155
  %cond = icmp eq i64 %i.er, 0
  br i1 %cond, label %bb.bj, label %.lr.ph.i

bb.bj:                                            ; preds = %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit78
  %i.fg = load i8, ptr %.0145, align 1, !tbaa !27
  store i8 %i.fg, ptr %i.q, align 4, !tbaa !27
  store i8 0, ptr %i.t, align 1, !tbaa !27
  store i8 0, ptr %i.u, align 2, !tbaa !27
  br label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit

.lr.ph.i:                                         ; preds = %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit78
  %i.fh = load i8, ptr %.0145, align 1, !tbaa !27
  store i8 %i.fh, ptr %i.q, align 4, !tbaa !27
  %i.fi = getelementptr inbounds nuw i8, ptr %.0145, i64 1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !27
  store i8 %i.fj, ptr %i.v, align 1, !tbaa !27
  %exitcond.not.i.1 = icmp eq i64 %i.er, 1
  br i1 %exitcond.not.i.1, label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.0145, i64 2
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !27
  store i8 %i.fl, ptr %i.w, align 2, !tbaa !27
  %exitcond.not.i.2 = icmp eq i64 %i.er, 2
  br i1 %exitcond.not.i.2, label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.fm = getelementptr inbounds nuw i8, ptr %.0145, i64 3
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !27
  store i8 %i.fn, ptr %i.x, align 1, !tbaa !27
  br label %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit

_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit: ; preds = %.lr.ph.i, %.lr.ph.i.2, %.lr.ph.i.3, %bb.bj
  %i.fo = and i32 %i.ff, -57
  %i.fp = or disjoint i32 %i.fo, %.0.i75
  store i32 %i.fp, ptr %2, align 8, !tbaa !155
  %i.fq = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit63, %_ZN3fmt3v126detail15parse_precisionIcEEPKT_S5_S5_RNS0_12format_specsERNS1_7arg_refIS3_EERNS0_13parse_contextIS3_EE.exit, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit59, %bb.t, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit55, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit53, %_ZN3fmt3v126detail11parse_alignEc.exit52
  %.1146 = phi ptr [ %i.fq, %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit ], [ %i.ac, %_ZN3fmt3v126detail11parse_alignEc.exit52 ], [ %i.aj, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit53 ], [ %i.an, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit55 ], [ %i.au, %bb.t ], [ %i.ax, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit59 ], [ %i.bh, %_ZN3fmt3v126detail15parse_precisionIcEEPKT_S5_S5_RNS0_12format_specsERNS1_7arg_refIS3_EERNS0_13parse_contextIS3_EE.exit ], [ %i.bq, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit63 ] ; 4 uses
  %.sroa.0113.1 = phi i32 [ 1, %_ZN3fmt3v1211basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit ], [ 1, %_ZN3fmt3v126detail11parse_alignEc.exit52 ], [ 2, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit53 ], [ 3, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit55 ], [ 4, %bb.t ], [ 5, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit59 ], [ 6, %_ZN3fmt3v126detail15parse_precisionIcEEPKT_S5_S5_RNS0_12format_specsERNS1_7arg_refIS3_EERNS0_13parse_contextIS3_EE.exit ], [ 7, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit63 ]
  %i.fr = icmp eq ptr %.1146, %1
  br i1 %i.fr, label %.loopexit155, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fs = load i8, ptr %.1146, align 1, !tbaa !27
  br label %bb.d, !llvm.loop !239

.loopexit155.sink.split:                          ; preds = %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit74, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit73, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit72, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit71, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit70, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit69, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit68, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit67, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit66, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit65, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit64, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit
  %.sink = phi i32 [ %i.bv, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit ], [ %i.cc, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit64 ], [ %i.ch, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit65 ], [ %i.co, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit66 ], [ %i.cv, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit67 ], [ %i.dc, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit68 ], [ %i.dj, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit69 ], [ %i.dq, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit70 ], [ %i.dv, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit71 ], [ %i.ea, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit72 ], [ %i.ef, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit73 ], [ %i.ek, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit74 ]
  store i32 %.sink, ptr %2, align 8, !tbaa !155
  %i.ft = getelementptr inbounds nuw i8, ptr %.0145, i64 1
  br label %.loopexit155

.loopexit155:                                     ; preds = %bb.bb, %bb.bk, %bb.d, %.loopexit155.sink.split, %bb.c
  %.1 = phi ptr [ %0, %bb.c ], [ %i.ft, %.loopexit155.sink.split ], [ %.0145, %bb.d ], [ %.0145, %bb.bb ], [ %.1146, %bb.bk ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(20) %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"struct.fmt::v12::detail::dynamic_spec_handler", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !tbaa !159
  %i.b = load i8, ptr %0, align 1, !tbaa !27      ; 3 uses
  %i.c = add i8 %i.b, -48
  %or.cond23 = icmp ult i8 %i.c, 10
  br i1 %or.cond23, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.e = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.f = xor i64 %i.e, -1
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %scevgep.i = getelementptr i8, ptr %i.g, i64 %i.d ; 2 uses
  %i.h = sub i64 %i.d, %i.e
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.h ; 2 uses
  %i.i = zext nneg i8 %i.b to i32
  %i.j = add nsw i32 %i.i, -48                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i35 = icmp eq ptr %i.k, %1
  br i1 %.not34.i35, label %.critedge.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.l = mul i32 %i.r, 10
  %i.m = zext nneg i8 %i.s to i32
  %i.n = add nsw i32 %i.m, -48
  %i.o = add i32 %i.n, %i.l                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.p, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph, !llvm.loop !9

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ %i.k, %bb.b ] ; 4 uses
  %i.r = phi i32 [ %i.o, %bb.c ], [ %i.j, %bb.b ] ; 4 uses
  %.0.i37 = phi ptr [ %i.q, %bb.c ], [ %0, %bb.b ]
  %.027.i36 = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ]
  %i.s = load i8, ptr %i.q, align 1, !tbaa !27    ; 2 uses
  %i.t = add i8 %i.s, -48
  %or.cond.i = icmp ult i8 %i.t, 10
  br i1 %or.cond.i, label %bb.c, label %..critedge.i_crit_edge, !llvm.loop !9

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !9

.critedge.i:                                      ; preds = %bb.c, %..critedge.i_crit_edge, %bb.b
  %.027.i.lcssa = phi i32 [ %.027.i36, %..critedge.i_crit_edge ], [ 0, %bb.b ], [ %i.r, %bb.c ]
  %.lcssa = phi i32 [ %i.r, %..critedge.i_crit_edge ], [ %i.j, %bb.b ], [ %i.o, %bb.c ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.0.i37, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.b ], [ %scevgep.i, %bb.c ]
  %.lcssa.i = phi ptr [ %i.q, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.b ], [ %scevgep37.i, %bb.c ] ; 2 uses
  %i.u = ptrtoint ptr %.lcssa.i to i64
  %i.v = ptrtoint ptr %0 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp slt i64 %i.w, 10
  br i1 %i.x, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.y = icmp eq i64 %i.w, 10
  br i1 %i.y, label %bb.e, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.z = zext i32 %.027.i.lcssa to i64
  %i.aa = mul nuw nsw i64 %i.z, 10
  %i.ab = load i8, ptr %.0.lcssa.i, align 1, !tbaa !27
  %i.ac = sext i8 %i.ab to i64
  %i.ad = add nsw i64 %i.ac, 4294967248
  %i.ae = and i64 %i.ad, 4294967294
  %i.af = add nuw nsw i64 %i.ae, %i.aa
  %i.ag = icmp samesign ugt i64 %i.af, 2147483647
  %i.ah = icmp eq i32 %.lcssa, -1
  %or.cond = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %.critedge.i
  %.old = icmp eq i32 %.lcssa, -1
  br i1 %.old, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread: ; preds = %bb.e, %bb.d, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.19) #26
  unreachable

bb.f:                                             ; preds = %bb.e, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  store i32 %.lcssa, ptr %2, align 4, !tbaa !67
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.ai = icmp eq i8 %i.b, 123
  br i1 %i.ai, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %.not = icmp eq ptr %i.aj, %1
  br i1 %.not, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !27
  switch i8 %i.ak, label %bb.l [
    i8 125, label %bb.j
    i8 58, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !99 ; 3 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.k, label %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.13) #26
  unreachable

_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit: ; preds = %bb.j
  %i.ao = add nuw nsw i32 %i.am, 1
  store i32 %i.ao, ptr %i.al, align 8, !tbaa !99
  store i32 %i.am, ptr %3, align 8
  store i32 1, ptr %i.a, align 4, !tbaa !159
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %4, ptr %5, align 8, !tbaa !240
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.ap, align 8, !tbaa !241
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.aq, align 8, !tbaa !31
  %i.ar = call noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef nonnull %i.aj, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit, %bb.l
  %.0 = phi ptr [ %i.aj, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit ], [ %i.ar, %bb.l ] ; 3 uses
  %.not22 = icmp eq ptr %.0, %1
  br i1 %.not22, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load i8, ptr %.0, align 1, !tbaa !27
  %i.at = icmp eq i8 %i.as, 125
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %.sroa.3.0.pre = load i32, ptr %i.a, align 4, !tbaa !159
  br label %bb.q

bb.p:                                             ; preds = %bb.h, %bb.m, %bb.n, %bb.g
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.9) #26
  unreachable

bb.q:                                             ; preds = %bb.f, %bb.o
  %.sroa.3.0 = phi i32 [ 0, %bb.f ], [ %.sroa.3.0.pre, %bb.o ]
  %.sroa.0.0 = phi ptr [ %.lcssa.i, %bb.f ], [ %i.au, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !27      ; 5 uses
  %i.d = add i8 %i.c, -48
  %or.cond = icmp ult i8 %i.d, 10
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not28 = icmp eq i8 %i.c, 48
  br i1 %.not28, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = xor i64 %i.a, -1
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %scevgep.i = getelementptr i8, ptr %i.f, i64 %i.b ; 2 uses
  %i.g = sub i64 %i.b, %i.a
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.g ; 2 uses
  %i.h = zext nneg i8 %i.c to i32
  %i.i = add nsw i32 %i.h, -48                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i47 = icmp eq ptr %i.j, %1
  br i1 %.not34.i47, label %.critedge.i, label %.lr.ph50

bb.d:                                             ; preds = %.lr.ph50
  %i.k = mul i32 %i.q, 10
  %i.l = zext nneg i8 %i.r to i32
  %i.m = add nsw i32 %i.l, -48
  %i.n = add i32 %i.m, %i.k                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.o, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph50, !llvm.loop !9

.lr.ph50:                                         ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.j, %bb.c ] ; 4 uses
  %i.q = phi i32 [ %i.n, %bb.d ], [ %i.i, %bb.c ] ; 4 uses
  %.0.i49 = phi ptr [ %i.p, %bb.d ], [ %0, %bb.c ]
  %.027.i48 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %i.r = load i8, ptr %i.p, align 1, !tbaa !27    ; 2 uses
  %i.s = add i8 %i.r, -48
  %or.cond.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i, label %bb.d, label %..critedge.i_crit_edge, !llvm.loop !9

..critedge.i_crit_edge:                           ; preds = %.lr.ph50
  br label %.critedge.i, !llvm.loop !9

.critedge.i:                                      ; preds = %bb.d, %..critedge.i_crit_edge, %bb.c
  %.027.i.lcssa = phi i32 [ %.027.i48, %..critedge.i_crit_edge ], [ 0, %bb.c ], [ %i.q, %bb.d ]
  %.lcssa = phi i32 [ %i.q, %..critedge.i_crit_edge ], [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.0.i49, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.c ], [ %scevgep.i, %bb.d ]
  %.lcssa.i = phi ptr [ %i.p, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.c ], [ %scevgep37.i, %bb.d ] ; 4 uses
  %i.t = ptrtoint ptr %.lcssa.i to i64
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = icmp slt i64 %i.v, 10
  br i1 %i.w, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.x = icmp eq i64 %i.v, 10
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = zext i32 %.027.i.lcssa to i64
  %i.z = mul nuw nsw i64 %i.y, 10
  %i.aa = load i8, ptr %.0.lcssa.i, align 1, !tbaa !27
  %i.ab = sext i8 %i.aa to i64
  %i.ac = add nsw i64 %i.ab, 4294967248
  %i.ad = and i64 %i.ac, 4294967294
  %i.ae = add nuw nsw i64 %i.ad, %i.z
  %i.af = icmp samesign ult i64 %i.ae, 2147483648
  br i1 %i.af, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

bb.h:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %bb.g, %bb.f, %.critedge.i, %bb.h
  %.037 = phi ptr [ %i.ag, %bb.h ], [ %.lcssa.i, %.critedge.i ], [ %.lcssa.i, %bb.f ], [ %.lcssa.i, %bb.g ] ; 3 uses
  %.021 = phi i32 [ 0, %bb.h ], [ %.lcssa, %.critedge.i ], [ %.lcssa, %bb.f ], [ 2147483647, %bb.g ]
  %i.ah = icmp eq ptr %.037, %1
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  %i.ai = load i8, ptr %.037, align 1, !tbaa !27
  switch i8 %i.ai, label %bb.j [
    i8 125, label %bb.k
    i8 58, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.9) #26
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !244, !nonnull !145, !align !153
  store i32 %.021, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !245, !nonnull !145, !align !246
  store i32 1, ptr %i.am, align 4, !tbaa !159
  %i.an = load ptr, ptr %2, align 8, !tbaa !247, !nonnull !145, !align !153
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !99
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.l, label %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.14) #26
  unreachable

_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit: ; preds = %bb.k
  store i32 -1, ptr %i.ao, align 8, !tbaa !99
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.ar = and i8 %i.c, -33
  %i.as = add i8 %i.ar, -65
  %or.cond10.i = icmp ult i8 %i.as, 26
  %i.at = icmp eq i8 %i.c, 95
  %i.au = or i1 %i.at, %or.cond10.i
  br i1 %i.au, label %.critedge4.preheader, label %bb.n

.critedge4.preheader:                             ; preds = %bb.m
  %i.av = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.av  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not45 = icmp eq ptr %i.aw, %1
  br i1 %.not45, label %.critedge, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.9) #26
  unreachable

.critedge4:                                       ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ax, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !242

.lr.ph:                                           ; preds = %.critedge4.preheader, %.critedge4
  %i.ay = phi ptr [ %i.ax, %.critedge4 ], [ %i.aw, %.critedge4.preheader ] ; 3 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !27  ; 3 uses
  %i.ba = and i8 %i.az, -33
  %i.bb = add i8 %i.ba, -65
  %or.cond10.i32 = icmp ult i8 %i.bb, 26
  %i.bc = icmp eq i8 %i.az, 95
  %i.bd = or i1 %i.bc, %or.cond10.i32
  %i.be = add i8 %i.az, -48
  %or.cond31 = icmp ult i8 %i.be, 10
  %or.cond38 = or i1 %or.cond31, %i.bd
  br i1 %or.cond38, label %.critedge4, label %..critedge_crit_edge, !llvm.loop !242

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !242

.critedge:                                        ; preds = %.critedge4, %..critedge_crit_edge, %.critedge4.preheader
  %.lcssa40 = phi ptr [ %i.ay, %..critedge_crit_edge ], [ %scevgep, %.critedge4.preheader ], [ %scevgep, %.critedge4 ] ; 2 uses
  %i.bf = ptrtoint ptr %.lcssa40 to i64
  %i.bg = ptrtoint ptr %0 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !244, !nonnull !145, !align !153 ; 2 uses
  store ptr %0, ptr %i.bj, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %i.bh, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !27
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !245, !nonnull !145, !align !246
  store i32 2, ptr %i.bl, align 4, !tbaa !159
  %i.bm = load ptr, ptr %2, align 8, !tbaa !247, !nonnull !145, !align !153
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i32 -1, ptr %i.bn, align 8, !tbaa !99
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit
  %.022 = phi ptr [ %.037, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit ], [ %.lcssa40, %.critedge ]
  ret ptr %.022
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJRS1_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(248) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !83
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(264) ptr @_Znwm(i64 noundef 264) #28, !inline_history !248 ; 11 uses
end_hunk_2
