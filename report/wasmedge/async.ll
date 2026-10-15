Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/async?download=true
inline.NumInlined: 730
inline.NumDeleted: 418
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6spdlog7details11thread_poolC2EmmSt8functionIFvvEE:bb.a
  br label %_ZNSt8functionIFvvEEC2ERKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !108  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #25
  unreachable

common.resume:                                    ; preds = %bb.o, %_ZNSt14_Function_baseD2Ev.exit7, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.f, %bb.e ], [ %i.u, %_ZNSt14_Function_baseD2Ev.exit7 ], [ %i.u, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFvvEEC2ERKS1_.exit:                ; preds = %bb.a, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvvEZN6spdlog7details11thread_poolC1EmmSt8functionIS0_EE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.l, align 8, !tbaa !109
  store ptr @"_ZNSt17_Function_handlerIFvvEZN6spdlog7details11thread_poolC1EmmSt8functionIS0_EE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation", ptr %i.k, align 8, !tbaa !108
  invoke void @_ZN6spdlog7details11thread_poolC2EmmSt8functionIFvvEES4_(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %1, i64 noundef %2, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %4, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %_ZNSt8functionIFvvEEC2ERKS1_.exit
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !108  ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = invoke noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.g, %bb.h
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !108  ; 2 uses
  %.not.i4 = icmp eq ptr %i.q, null
  br i1 %.not.i4, label %_ZNSt14_Function_baseD2Ev.exit5, label %bb.j

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5 unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit5:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.j
  ret void

bb.l:                                             ; preds = %_ZNSt8functionIFvvEEC2ERKS1_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !108  ; 2 uses
  %.not.i6 = icmp eq ptr %i.v, null
  br i1 %.not.i6, label %_ZNSt14_Function_baseD2Ev.exit7, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = invoke noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit7 unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit7:                  ; preds = %bb.l, %bb.m
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !108  ; 2 uses
  %.not.i8 = icmp eq ptr %i.z, null
  br i1 %.not.i8, label %common.resume, label %bb.o

bb.o:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit7
  %i.aa = invoke noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %common.resume unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #25
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6spdlog7details11thread_poolC2Emm(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function.37", align 8  ; 8 uses
  %4 = alloca %"class.std::function.37", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvvEZN6spdlog7details11thread_poolC1EmmE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.b, align 8, !tbaa !109
  store ptr @"_ZNSt17_Function_handlerIFvvEZN6spdlog7details11thread_poolC1EmmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation", ptr %i.a, align 8, !tbaa !108
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvvEZN6spdlog7details11thread_poolC1EmmE3$_1E9_M_invokeERKSt9_Any_data", ptr %i.d, align 8, !tbaa !109
  store ptr @"_ZNSt17_Function_handlerIFvvEZN6spdlog7details11thread_poolC1EmmE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation", ptr %i.c, align 8, !tbaa !108
  invoke void @_ZN6spdlog7details11thread_poolC2EmmSt8functionIFvvEES4_(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %1, i64 noundef %2, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %3, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !108  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !108  ; 2 uses
  %.not.i4 = icmp eq ptr %i.i, null
  br i1 %.not.i4, label %_ZNSt14_Function_baseD2Ev.exit5, label %bb.e

bb.e:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5 unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit5:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.e
  ret void

bb.g:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !108  ; 2 uses
  %.not.i6 = icmp eq ptr %i.n, null
  br i1 %.not.i6, label %_ZNSt14_Function_baseD2Ev.exit7, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit7 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit7:                  ; preds = %bb.g, %bb.h
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !108  ; 2 uses
  %.not.i8 = icmp eq ptr %i.r, null
  br i1 %.not.i8, label %_ZNSt14_Function_baseD2Ev.exit9, label %bb.j

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit7
  %i.s = invoke noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit9 unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit9:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit7, %bb.j
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6spdlog7details11thread_poolD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.spdlog::details::async_msg", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !114  ; 2 uses
  %.not29 = icmp eq ptr %i.c, %i.d
  br i1 %.not29, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 400
  br label %bb.b

.preheader:                                       ; preds = %_ZN6spdlog7details9async_msgD2Ev.exit
  %.not26 = icmp eq ptr %i.ai, %i.ah
  br i1 %.not26, label %.loopexitthread-pre-split, label %.lr.ph28

bb.b:                                             ; preds = %.lr.ph, %_ZN6spdlog7details9async_msgD2Ev.exit
  %.01024 = phi i64 [ 0, %.lr.ph ], [ %i.ag, %_ZN6spdlog7details9async_msgD2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %1, i8 0, i64 384, i1 false)
  store i32 6, ptr %i.e, align 8, !tbaa !101
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.f, i8 0, i64 44, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE4growERNS0_6detail6bufferIcEEm, ptr %i.j, align 8, !tbaa !102
  store ptr %i.k, ptr %i.h, align 8, !tbaa !98
  store i64 250, ptr %i.i, align 8, !tbaa !99
  store i32 2, ptr %i.l, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  invoke void @_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE7enqueueEOS2_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(408) %1)
          to label %_ZN6spdlog7details11thread_pool15post_async_msg_EONS0_9async_msgENS_21async_overflow_policyE.exit unwind label %bb.j

_ZN6spdlog7details11thread_pool15post_async_msg_EONS0_9async_msgENS_21async_overflow_policyE.exit: ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !67   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN6spdlog7details11thread_pool15post_async_msg_EONS0_9async_msgENS_21async_overflow_policyE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.p, align 8, !tbaa !72
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !73
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #23, !inline_history !5
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #23, !inline_history !5
  br label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !65
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.s, %bb.f ], [ %i.ac, %bb.g ]
  %i.ad = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ad, label %bb.h, label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !74

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #23
  br label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %_ZN6spdlog7details11thread_pool15post_async_msg_EONS0_9async_msgENS_21async_overflow_policyE.exit
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !98  ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ae, %i.k
  br i1 %.not.i.i.i1.i, label %_ZN6spdlog7details9async_msgD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.af = load i64, ptr %i.i, align 8, !tbaa !99
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.af) #22
  br label %_ZN6spdlog7details9async_msgD2Ev.exit

_ZN6spdlog7details9async_msgD2Ev.exit:            ; preds = %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.ag = add nuw i64 %.01024, 1                  ; 2 uses
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !112 ; 3 uses
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !114 ; 3 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3
  %i.an = icmp ult i64 %i.ag, %i.am
  br i1 %i.an, label %bb.b, label %.preheader, !llvm.loop !187

bb.j:                                             ; preds = %bb.b
  %i.ao = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @_ZN6spdlog7details9async_msgD2Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.m

.lr.ph28:                                         ; preds = %.preheader, %bb.k
  %.sroa.014.027 = phi ptr [ %i.ap, %bb.k ], [ %i.ai, %.preheader ] ; 2 uses
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.014.027)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.lr.ph28
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.014.027, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ap, %i.ah
  br i1 %.not, label %.loopexitthread-pre-split, label %.lr.ph28

bb.l:                                             ; preds = %.lr.ph28
  %i.aq = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.j ], [ %i.aq, %bb.l ] ; 2 uses
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 1
  %.19 = extractvalue { ptr, i32 } %.pn.pn, 0     ; 2 uses
  %i.ar = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #23
  %i.as = icmp eq i32 %.1, %i.ar
  br i1 %i.as, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.at = call ptr @__cxa_begin_catch(ptr %.19) #23 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %.loopexitthread-pre-split unwind label %bb.r

.loopexitthread-pre-split:                        ; preds = %bb.k, %bb.n, %.preheader
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !114
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %.loopexitthread-pre-split
  %2 = phi ptr [ %.pr, %.loopexitthread-pre-split ], [ %i.d, %bb.a ] ; 5 uses
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !112 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %2, %i.au
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i

bb.o:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %i.av, %i.au
  br i1 %.not.i.i.i13, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i, !llvm.loop !6

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i:          ; preds = %.loopexit, %bb.o
  %.05.i.i.i = phi ptr [ %i.av, %bb.o ], [ %2, %.loopexit ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.05.i.i.i, align 8, !tbaa !100
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  call void @_ZSt9terminatev() #25
  unreachable

_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %bb.o, %.loopexit
  %.not.i.i1.i = icmp eq ptr %2, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !113
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %2 to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %2, i64 noundef %i.ba) #22
  br label %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit

_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @_ZNSt6vectorIN6spdlog7details9async_msgESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bb) #23
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.bc) #23
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.bd) #23
  ret void

bb.r:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #25
  unreachable

bb.s:                                             ; preds = %bb.m
  call void @__clang_call_terminate(ptr %.19) #25
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6spdlog7details11thread_pool15post_async_msg_EONS0_9async_msgENS_21async_overflow_policyE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(408) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE7enqueueEOS2_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(408) %1)
  br label %_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE20enqueue_if_have_roomEOS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(200) %0) #23 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE14enqueue_nowaitEOS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #24
  unreachable

_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE14enqueue_nowaitEOS2_.exit: ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN6spdlog7details10circular_qINS0_9async_msgEE9push_backEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(408) %1)
  %i.c = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(200) %0) #23 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.d) #23
  br label %_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE20enqueue_if_have_roomEOS2_.exit

bb.e:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(200) %0) #23 ; 2 uses
  %.not.i.i.i.i5 = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i5, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #24
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i:       ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !121  ; 2 uses
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i, label %_ZNK6spdlog7details10circular_qINS0_9async_msgEE4fullEv.exit.i

_ZNK6spdlog7details10circular_qINS0_9async_msgEE4fullEv.exit.i: ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.i = load i64, ptr %i.h, align 8, !tbaa !125
  %i.j = add i64 %i.i, 1
  %i.k = urem i64 %i.j, %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i64, ptr %i.l, align 8, !tbaa !126
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %_ZNSt11unique_lockISt5mutexED2Ev.exit3.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i

_ZNSt11unique_lockISt5mutexED2Ev.exit.i:          ; preds = %_ZNK6spdlog7details10circular_qINS0_9async_msgEE4fullEv.exit.i, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i
  tail call void @_ZN6spdlog7details10circular_qINS0_9async_msgEE9push_backEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(408) %1)
  %i.o = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(200) %0) #23 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.p) #23
  br label %_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE20enqueue_if_have_roomEOS2_.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit3.i:         ; preds = %_ZNK6spdlog7details10circular_qINS0_9async_msgEE4fullEv.exit.i
  %i.q = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(200) %0) #23 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.s = atomicrmw add ptr %i.r, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE20enqueue_if_have_roomEOS2_.exit

_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE20enqueue_if_have_roomEOS2_.exit: ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit3.i, %_ZNSt11unique_lockISt5mutexED2Ev.exit.i, %_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE14enqueue_nowaitEOS2_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details9async_msgD2Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !72
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !73
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !3
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !3
  br label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !65
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !74

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !98   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.not.i.i.i1 = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i1, label %_ZN6spdlog7details14log_msg_bufferD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.v = load i64, ptr %i.u, align 8, !tbaa !99
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #22
  br label %_ZN6spdlog7details14log_msg_bufferD2Ev.exit

_ZN6spdlog7details14log_msg_bufferD2Ev.exit:      ; preds = %_ZNSt12__shared_ptrIN6spdlog12async_loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6spdlog7details11thread_pool15overrun_counterEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(200) %0) #23 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEE15overrun_counterEv.exit, label %bb.b

end_hunk_0
