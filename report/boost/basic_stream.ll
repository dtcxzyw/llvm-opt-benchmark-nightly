Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/basic_stream?download=true
inline.NumInlined: 19842
inline.NumDeleted: 6964
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5boost4asio6detail17executor_function8completeINS1_7binder1INS_5beast6detail18bind_front_wrapperIMNS5_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEEJSt10shared_ptrISA_EEEESC_EESaIvEEEvPNS2_9impl_baseEb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  invoke fastcc void @_ZN5boost4asio6detail17executor_function4implINS1_7binder1INS_5beast6detail18bind_front_wrapperIMNS5_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEEJSt10shared_ptrISA_EEEESC_EESaIvEE3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN5boost4asio6detail17executor_function4implINS1_7binder1INS_5beast6detail18bind_front_wrapperIMNS5_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEEJSt10shared_ptrISA_EEEESC_EESaIvEE3ptrD2Ev.exit8 unwind label %bb.n

bb.n:                                             ; preds = %_ZN5boost4asio6detail7binder1INS_5beast6detail18bind_front_wrapperIMNS3_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEEJSt10shared_ptrIS8_EEEESA_ED2Ev.exit
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #37
  unreachable

_ZN5boost4asio6detail17executor_function4implINS1_7binder1INS_5beast6detail18bind_front_wrapperIMNS5_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEEJSt10shared_ptrISA_EEEESC_EESaIvEE3ptrD2Ev.exit8: ; preds = %_ZN5boost4asio6detail7binder1INS_5beast6detail18bind_front_wrapperIMNS3_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEEJSt10shared_ptrIS8_EEEESA_ED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5boost4asio6detail17executor_function4implINS1_7binder1INS_5beast6detail18bind_front_wrapperIMNS5_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEEJSt10shared_ptrISA_EEEESC_EESaIvEE3ptr5resetEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !738  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %.val = load ptr, ptr %i.c, align 8, !tbaa !384 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost4asio6detail17executor_function4implINS1_7binder1INS_5beast6detail18bind_front_wrapperIMNS5_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEEJSt10shared_ptrISA_EEEESC_EESaIvEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.d, align 8, !tbaa !386
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !387
  %i.i = load ptr, ptr %.val, align 8, !tbaa !271
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.val) #36, !inline_history !2793
  %i.l = load ptr, ptr %.val, align 8, !tbaa !271
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %.val) #36, !inline_history !2793
  br label %_ZN5boost4asio6detail17executor_function4implINS1_7binder1INS_5beast6detail18bind_front_wrapperIMNS5_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEEJSt10shared_ptrISA_EEEESC_EESaIvEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !280
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !374
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.g, %bb.f ], [ %i.q, %bb.g ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.h, label %_ZN5boost4asio6detail17executor_function4implINS1_7binder1INS_5beast6detail18bind_front_wrapperIMNS5_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEEJSt10shared_ptrISA_EEEESC_EESaIvEED2Ev.exit, !prof !388

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val) #36
  br label %_ZN5boost4asio6detail17executor_function4implINS1_7binder1INS_5beast6detail18bind_front_wrapperIMNS5_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEEJSt10shared_ptrISA_EEEESC_EESaIvEED2Ev.exit

_ZN5boost4asio6detail17executor_function4implINS1_7binder1INS_5beast6detail18bind_front_wrapperIMNS5_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEEJSt10shared_ptrISA_EEEESC_EESaIvEED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.h
  store ptr null, ptr %i.a, align 8, !tbaa !738
  br label %bb.i

bb.i:                                             ; preds = %_ZN5boost4asio6detail17executor_function4implINS1_7binder1INS_5beast6detail18bind_front_wrapperIMNS5_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEEJSt10shared_ptrISA_EEEESC_EESaIvEED2Ev.exit, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !739  ; 5 uses
  %.not1 = icmp eq ptr %i.t, null
  br i1 %.not1, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = tail call noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv() ; 4 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %.thread.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !314
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.k, label %.preheader.1.i.i

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !314
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.k, label %.thread.i.i

bb.k:                                             ; preds = %.preheader.1.i.i, %.preheader.preheader.i.i
  %.lcssa.i.i = phi i64 [ 4, %.preheader.preheader.i.i ], [ 5, %.preheader.1.i.i ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.lcssa.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !280
  store i8 %i.ad, ptr %i.t, align 1, !tbaa !280
  store ptr %i.t, ptr %i.ab, align 8, !tbaa !314
  br label %_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder1INS_5beast6detail18bind_front_wrapperIMNS6_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEEJSt10shared_ptrISB_EEEESD_EESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPSN_m.exit

.thread.i.i:                                      ; preds = %.preheader.1.i.i, %bb.j
  tail call void @free(ptr noundef nonnull %i.t) #36
  br label %_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder1INS_5beast6detail18bind_front_wrapperIMNS6_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEEJSt10shared_ptrISB_EEEESD_EESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPSN_m.exit

_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder1INS_5beast6detail18bind_front_wrapperIMNS6_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEEJSt10shared_ptrISB_EEEESD_EESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPSN_m.exit: ; preds = %bb.k, %.thread.i.i
  store ptr null, ptr %i.s, align 8, !tbaa !739
  br label %bb.l

bb.l:                                             ; preds = %_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder1INS_5beast6detail18bind_front_wrapperIMNS6_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEEJSt10shared_ptrISB_EEEESD_EESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPSN_m.exit, %bb.i
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5boost4asio15any_io_executorC1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #13

declare void @_ZNK5boost4asio15any_io_executor6preferINS0_9execution6detail16outstanding_work9tracked_tILi0EEEEES1_RKT_NS0_10constraintIXsr6traits13prefer_memberIRKNS3_12any_executorIJNS3_12context_as_tIRNS0_17execution_contextEEENS4_8blocking7never_tILi0EEENS3_11prefer_onlyINSH_10possibly_tILi0EEEEENSK_IS7_EENSK_INS5_11untracked_tILi0EEEEENSK_INS4_12relationship6fork_tILi0EEEEENSK_INSS_14continuation_tILi0EEEEEEEESA_EE8is_validEiE4typeE(ptr dead_on_unwind writable sret(%"class.boost::asio::any_io_executor") align 8, ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 1 dereferenceable(1), i32 noundef) local_unnamed_addr #9

declare void @_ZN5boost4asio6detail28reactive_socket_service_base11do_start_opERNS2_24base_implementation_typeEiPNS1_10reactor_opEbbbbPFvPNS1_19scheduler_operationEbPKvESA_(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @_ZN5boost4asio6detail13epoll_reactor30call_post_immediate_completionEPNS1_19scheduler_operationEbPKv(ptr noundef, i1 noundef zeroext, ptr noundef) #9

declare { ptr, i64 } @_ZN5boost4asio17cancellation_slot14prepare_memoryEmm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN5boost4asio17cancellation_slot18auto_delete_helperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail20cancellation_handlerINS1_28reactive_socket_service_base23reactor_op_cancellationEE4callENS0_17cancellation_typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = and i32 %1, 7
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_ZN5boost4asio6detail28reactive_socket_service_base23reactor_op_cancellationclENS0_17cancellation_typeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !743
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !744
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !745
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !746
  tail call void @_ZN5boost4asio6detail13epoll_reactor17cancel_ops_by_keyEiRPNS2_16descriptor_stateEiPv(ptr noundef nonnull align 8 dereferenceable(152) %i.d, i32 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i32 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %_ZN5boost4asio6detail28reactive_socket_service_base23reactor_op_cancellationclENS0_17cancellation_typeE.exit

_ZN5boost4asio6detail28reactive_socket_service_base23reactor_op_cancellationclENS0_17cancellation_typeE.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN5boost4asio6detail20cancellation_handlerINS1_28reactive_socket_service_base23reactor_op_cancellationEE7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !277
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.b, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare void @_ZN5boost4asio6detail13epoll_reactor17cancel_ops_by_keyEiRPNS2_16descriptor_stateEiPv(ptr noundef nonnull align 8 dereferenceable(152), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt12bad_weak_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5boost4asio6detail8write_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS0_12const_bufferEPKS8_NS1_14transfer_all_tENS_5beast6detail18bind_front_wrapperIMNSC_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEmEJSt10shared_ptrISH_EEEEEclESJ_mi(ptr noundef nonnull align 8 dereferenceable(72) initializes((32, 36)) %0, ptr noundef byval(%"class.boost::system::error_code") align 8 %1, i64 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::asio::detail::reactive_socket_send_op<boost::asio::const_buffer, boost::asio::detail::write_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::const_buffer, const boost::asio::const_buffer *, boost::asio::detail::transfer_all_t, boost::beast::detail::bind_front_wrapper<void (boost::beast::(anonymous namespace)::test_server::session::*)(const boost::system::error_code &, unsigned long), std::shared_ptr<boost::beast::(anonymous namespace)::test_server::session>>>, boost::asio::any_io_executor>::ptr", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 %3, ptr %i.a, align 8, !tbaa !726
  %cond.not = icmp eq i32 %3, 0                   ; 2 uses
  br i1 %cond.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !290  ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost4asio6detail25base_from_completion_condINS1_14transfer_all_tEE20check_for_completionERKNS_6system10error_codeEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %i.c, 1
  %i.f = load i32, ptr %1, align 8
  %.fr.i.i = freeze i32 %i.f
  %.not.i.i = icmp eq i32 %.fr.i.i, 0
  %or.cond.i.i = and i1 %i.e, %.not.i.i
  %spec.select.i.i = select i1 %or.cond.i.i, i64 65536, i64 0
  br label %_ZN5boost4asio6detail25base_from_completion_condINS1_14transfer_all_tEE20check_for_completionERKNS_6system10error_codeEm.exit

_ZN5boost4asio6detail25base_from_completion_condINS1_14transfer_all_tEE20check_for_completionERKNS_6system10error_codeEm.exit: ; preds = %.thread19, %9, %bb.c, %bb.b
  %.0 = phi i64 [ %spec.select.i.i, %bb.c ], [ 65536, %bb.b ], [ 65536, %9 ], [ 65536, %.thread19 ]
  %i.g = load ptr, ptr %0, align 8, !tbaa !747, !nonnull !310, !align !313 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !722
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !471  ; 2 uses
  %spec.select.i.i8 = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.l) ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !470
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %spec.select.i.i8
  %i.o = sub i64 %i.l, %spec.select.i.i8
  %spec.select.i1.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %.0) ; 2 uses
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !402  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %0, ptr %4, align 8, !tbaa !751
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.u = tail call noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv(), !inline_history !2794
  %i.v = tail call noundef ptr @_ZN5boost4asio6detail16thread_info_base8allocateINS2_11default_tagEEEPvT_PS2_mm(ptr noundef %i.u, i64 noundef 232, i64 noundef 8), !inline_history !2794 ; 21 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !752
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr null, ptr %i.w, align 8, !tbaa !753
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.y = load i32, ptr %i.r, align 8, !tbaa !376
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !412
  store ptr null, ptr %i.v, align 8, !tbaa !519
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_ZN5boost4asio6detail23reactive_socket_send_opINS0_12const_bufferENS1_8write_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEES3_PKS3_NS1_14transfer_all_tENS_5beast6detail18bind_front_wrapperIMNSD_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEmEJSt10shared_ptrISI_EEEEEES8_E11do_completeEPvPNS1_19scheduler_operationESM_m, ptr %i.ab, align 8, !tbaa !521
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i32 0, ptr %i.ac, align 8, !tbaa !622
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.x, i64 24, i1 false), !tbaa.struct !459
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  store ptr @_ZN5boost4asio6detail28reactive_socket_send_op_baseINS0_12const_bufferEE10do_performEPNS1_10reactor_opE, ptr %i.af, align 8, !tbaa !662
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  store i32 %i.y, ptr %i.ag, align 8, !tbaa !755
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 76
  store i8 %i.aa, ptr %i.ah, align 4, !tbaa !756
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  store ptr %i.n, ptr %i.ai, align 8, !tbaa !314
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  store i64 %spec.select.i1.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !277
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  store i32 0, ptr %i.aj, align 8, !tbaa !757
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.al = load ptr, ptr %0, align 8, !tbaa !747, !nonnull !310, !align !313
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !697
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  %i.ao = load i32, ptr %i.a, align 8, !tbaa !726
  store i32 %i.ao, ptr %i.an, align 8, !tbaa !726
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load <2 x i64>, ptr %i.aq, align 8, !tbaa !727
  store <2 x i64> %i.ar, ptr %i.ap, align 8, !tbaa !727
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 168
  store ptr null, ptr %i.au, align 8, !tbaa !384
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aw = load <2 x ptr>, ptr %i.at, align 8, !tbaa !314
  store ptr null, ptr %i.av, align 8, !tbaa !384
  store <2 x ptr> %i.aw, ptr %i.as, align 8, !tbaa !314
  store ptr null, ptr %i.at, align 8, !tbaa !713
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 176 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !594
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNK5boost4asio9execution6detail17any_executor_base11target_typeEv.exit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN5boost4asio6detail25base_from_completion_condINS1_14transfer_all_tEE20check_for_completionERKNS_6system10error_codeEm.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !592
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !609
  %i.bd = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.bc()
          to label %_ZNK5boost4asio9execution6detail17any_executor_base11target_typeEv.exit.i.i.i.i.i.i.i.i unwind label %bb.f, !inline_history !2795

_ZNK5boost4asio9execution6detail17any_executor_base11target_typeEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %_ZN5boost4asio6detail25base_from_completion_condINS1_14transfer_all_tEE20check_for_completionERKNS_6system10error_codeEm.exit
  %i.be = phi ptr [ @_ZTIv, %_ZN5boost4asio6detail25base_from_completion_condINS1_14transfer_all_tEE20check_for_completionERKNS_6system10error_codeEm.exit ], [ %i.bd, %bb.d ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !515 ; 3 uses
  %i.bh = icmp eq ptr %i.bg, @_ZTSN5boost4asio10io_context19basic_executor_typeISaIvELm0EEE
  br i1 %i.bh, label %_ZNKSt9type_infoeqERKS_.exit.thread.i.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK5boost4asio9execution6detail17any_executor_base11target_typeEv.exit.i.i.i.i.i.i.i.i
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !280
  %.not.i3.i.i.i.i.i.i.i.i = icmp eq i8 %i.bi, 42
  br i1 %.not.i3.i.i.i.i.i.i.i.i, label %_ZNKSt9type_infoeqERKS_.exit.thread6.i.i.i.i.i.i.i.i, label %_ZNKSt9type_infoeqERKS_.exit.i.i.i.i.i.i.i.i

_ZNKSt9type_infoeqERKS_.exit.i.i.i.i.i.i.i.i:     ; preds = %bb.e
  %i.bj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bg, ptr noundef nonnull dereferenceable(58) @_ZTSN5boost4asio10io_context19basic_executor_typeISaIvELm0EEE) #36, !inline_history !2796
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %_ZNKSt9type_infoeqERKS_.exit.thread.i.i.i.i.i.i.i.i, label %_ZNKSt9type_infoeqERKS_.exit.thread6.i.i.i.i.i.i.i.i

_ZNKSt9type_infoeqERKS_.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt9type_infoeqERKS_.exit.i.i.i.i.i.i.i.i, %_ZNK5boost4asio9execution6detail17any_executor_base11target_typeEv.exit.i.i.i.i.i.i.i.i
  tail call void @_ZN5boost4asio15any_io_executorC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.ax) #36, !inline_history !2796
  br label %bb.g

_ZNKSt9type_infoeqERKS_.exit.thread6.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt9type_infoeqERKS_.exit.i.i.i.i.i.i.i.i, %bb.e
  invoke void @_ZNK5boost4asio15any_io_executor6preferINS0_9execution6detail16outstanding_work9tracked_tILi0EEEEES1_RKT_NS0_10constraintIXsr6traits13prefer_memberIRKNS3_12any_executorIJNS3_12context_as_tIRNS0_17execution_contextEEENS4_8blocking7never_tILi0EEENS3_11prefer_onlyINSH_10possibly_tILi0EEEEENSK_IS7_EENSK_INS5_11untracked_tILi0EEEEENSK_INS4_12relationship6fork_tILi0EEEEENSK_INSS_14continuation_tILi0EEEEEEEESA_EE8is_validEiE4typeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::asio::any_io_executor") align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5boost4asio9execution6detail18outstanding_work_tILi0EE7trackedE, i32 noundef 0)
          to label %bb.g unwind label %bb.f, !inline_history !2796

bb.f:                                             ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread6.i.i.i.i.i.i.i.i, %bb.d
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #37, !inline_history !2796
  unreachable

bb.g:                                             ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread6.i.i.i.i.i.i.i.i, %_ZNKSt9type_infoeqERKS_.exit.thread.i.i.i.i.i.i.i.i
  store ptr %i.v, ptr %i.w, align 8, !tbaa !753
  %.pre.i.i.i.i.i = load i8, ptr %i.z, align 4, !tbaa !412
  %i.bn = and i8 %.pre.i.i.i.i.i, 16
  %.not.i.i.i.i.i = icmp ne i8 %i.bn, 0
  %i.bo = icmp eq i64 %spec.select.i1.i, 0
  %spec.select = select i1 %.not.i.i.i.i.i, i1 %i.bo, i1 false
  %i.bp = load ptr, ptr %i.q, align 8, !tbaa !673, !nonnull !310, !align !313
  invoke void @_ZN5boost4asio6detail28reactive_socket_service_base11do_start_opERNS2_24base_implementation_typeEiPNS1_10reactor_opEbbbbPFvPNS1_19scheduler_operationEbPKvESA_(ptr noundef nonnull align 8 dereferenceable(33) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i32 noundef 1, ptr noundef nonnull %i.v, i1 noundef zeroext %cond.not, i1 noundef zeroext true, i1 noundef zeroext %spec.select, i1 noundef zeroext false, ptr noundef nonnull @_ZN5boost4asio6detail13epoll_reactor30call_post_immediate_completionEPNS1_19scheduler_operationEbPKv, ptr noundef nonnull %i.bp)
          to label %_ZN5boost4asio6detail28reactive_socket_service_base8start_opINS1_23reactive_socket_send_opINS0_12const_bufferENS1_8write_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEES5_PKS5_NS1_14transfer_all_tENS_5beast6detail18bind_front_wrapperIMNSF_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEmEJSt10shared_ptrISK_EEEEEESA_EEEEvRNS2_24base_implementation_typeEiPT_bbbbPKvPNSt9enable_ifIXsr7is_sameINS0_29associated_immediate_executorINSY_12handler_typeENSY_16io_executor_typeEE51asio_associated_immediate_executor_is_unspecialisedEvEE5valueEvE4typeE.exit.i.i.i.i.i unwind label %bb.i, !inline_history !2794

_ZN5boost4asio6detail28reactive_socket_service_base8start_opINS1_23reactive_socket_send_opINS0_12const_bufferENS1_8write_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEES5_PKS5_NS1_14transfer_all_tENS_5beast6detail18bind_front_wrapperIMNSF_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEmEJSt10shared_ptrISK_EEEEEESA_EEEEvRNS2_24base_implementation_typeEiPT_bbbbPKvPNSt9enable_ifIXsr7is_sameINS0_29associated_immediate_executorINSY_12handler_typeENSY_16io_executor_typeEE51asio_associated_immediate_executor_is_unspecialisedEvEE5valueEvE4typeE.exit.i.i.i.i.i: ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  invoke fastcc void @_ZN5boost4asio6detail23reactive_socket_send_opINS0_12const_bufferENS1_8write_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEES3_PKS3_NS1_14transfer_all_tENS_5beast6detail18bind_front_wrapperIMNSD_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEmEJSt10shared_ptrISI_EEEEEES8_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZN5boost4asio19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEE16async_write_someINS0_12const_bufferENS0_6detail8write_opIS5_S7_PKS7_NS8_14transfer_all_tENS_5beast6detail18bind_front_wrapperIMNSD_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEmEJSt10shared_ptrISI_EEEEEEEEDTcl14async_initiateIT0_FvSK_mEEclL_ZSt7declvalINS5_19initiate_async_sendEEDTcl9__declvalIT_ELi0EEEvEEfp0_fp_cviLi0EEERKSX_OST_.exit unwind label %bb.h, !inline_history !2794

bb.h:                                             ; preds = %_ZN5boost4asio6detail28reactive_socket_service_base8start_opINS1_23reactive_socket_send_opINS0_12const_bufferENS1_8write_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEES5_PKS5_NS1_14transfer_all_tENS_5beast6detail18bind_front_wrapperIMNSF_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEmEJSt10shared_ptrISK_EEEEEESA_EEEEvRNS2_24base_implementation_typeEiPT_bbbbPKvPNSt9enable_ifIXsr7is_sameINS0_29associated_immediate_executorINSY_12handler_typeENSY_16io_executor_typeEE51asio_associated_immediate_executor_is_unspecialisedEvEE5valueEvE4typeE.exit.i.i.i.i.i
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  tail call void @__clang_call_terminate(ptr %i.br) #37, !inline_history !2794
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_ZN5boost4asio6detail23reactive_socket_send_opINS0_12const_bufferENS1_8write_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEES3_PKS3_NS1_14transfer_all_tENS_5beast6detail18bind_front_wrapperIMNSD_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEmEJSt10shared_ptrISI_EEEEEES8_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZN5boost4asio6detail23reactive_socket_send_opINS0_12const_bufferENS1_8write_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEES3_PKS3_NS1_14transfer_all_tENS_5beast6detail18bind_front_wrapperIMNSD_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEmEJSt10shared_ptrISI_EEEEEES8_E3ptrD2Ev.exit21.i.i.i.i.i unwind label %bb.j, !inline_history !2794

bb.j:                                             ; preds = %bb.i
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  tail call void @__clang_call_terminate(ptr %i.bu) #37, !inline_history !2794
  unreachable

_ZN5boost4asio6detail23reactive_socket_send_opINS0_12const_bufferENS1_8write_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEES3_PKS3_NS1_14transfer_all_tENS_5beast6detail18bind_front_wrapperIMNSD_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEmEJSt10shared_ptrISI_EEEEEES8_E3ptrD2Ev.exit21.i.i.i.i.i: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  resume { ptr, i32 } %i.bs

_ZN5boost4asio19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEE16async_write_someINS0_12const_bufferENS0_6detail8write_opIS5_S7_PKS7_NS8_14transfer_all_tENS_5beast6detail18bind_front_wrapperIMNSD_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEmEJSt10shared_ptrISI_EEEEEEEEDTcl14async_initiateIT0_FvSK_mEEclL_ZSt7declvalINS5_19initiate_async_sendEEDTcl9__declvalIT_ELi0EEEvEEfp0_fp_cviLi0EEERKSX_OST_.exit: ; preds = %_ZN5boost4asio6detail28reactive_socket_service_base8start_opINS1_23reactive_socket_send_opINS0_12const_bufferENS1_8write_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEES5_PKS5_NS1_14transfer_all_tENS_5beast6detail18bind_front_wrapperIMNSF_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEmEJSt10shared_ptrISK_EEEEEESA_EEEEvRNS2_24base_implementation_typeEiPT_bbbbPKvPNSt9enable_ifIXsr7is_sameINS0_29associated_immediate_executorINSY_12handler_typeENSY_16io_executor_typeEE51asio_associated_immediate_executor_is_unspecialisedEvEE5valueEvE4typeE.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.p

bb.k:                                             ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !722
  %i.bx = add i64 %i.bw, %2                       ; 3 uses
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !722
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !290 ; 3 uses
  %i.ca = and i64 %i.bz, 1
  %.not.i.i9 = icmp eq i64 %i.ca, 0               ; 2 uses
  br i1 %.not.i.i9, label %_ZNK5boost6system10error_codecvbEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cb = icmp eq i64 %i.bz, 1
  br i1 %i.cb, label %5, label %_ZN5boost4asio6detail25base_from_completion_condINS1_14transfer_all_tEE20check_for_completionERKNS_6system10error_codeEm.exit15

5:                                                ; preds = %bb.l
  %6 = load i32, ptr %1, align 8, !tbaa !403
  %7 = icmp ne i32 %6, 0
  br label %_ZNK5boost6system10error_codecvbEv.exit

_ZNK5boost6system10error_codecvbEv.exit:          ; preds = %bb.k, %5
  %.0.i.i = phi i1 [ %7, %5 ], [ false, %bb.k ]
  %8 = icmp ne i64 %2, 0
  %or.cond.not = or i1 %8, %.0.i.i
  br i1 %or.cond.not, label %bb.m, label %_ZN5boost4asio6detail25base_from_completion_condINS1_14transfer_all_tEE20check_for_completionERKNS_6system10error_codeEm.exit15

bb.m:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !471
  %.not = icmp ult i64 %i.bx, %i.cd
  br i1 %.not, label %9, label %_ZN5boost4asio6detail25base_from_completion_condINS1_14transfer_all_tEE20check_for_completionERKNS_6system10error_codeEm.exit15

9:                                                ; preds = %bb.m
  br i1 %.not.i.i9, label %_ZN5boost4asio6detail25base_from_completion_condINS1_14transfer_all_tEE20check_for_completionERKNS_6system10error_codeEm.exit, label %.thread19

.thread19:                                        ; preds = %9
  %10 = icmp eq i64 %i.bz, 1
  %i.ce = load i32, ptr %1, align 8
  %.fr.i.i11 = freeze i32 %i.ce
  %.not.i.i12 = icmp eq i32 %.fr.i.i11, 0
  %or.cond.i.i13 = and i1 %10, %.not.i.i12
  br i1 %or.cond.i.i13, label %_ZN5boost4asio6detail25base_from_completion_condINS1_14transfer_all_tEE20check_for_completionERKNS_6system10error_codeEm.exit, label %_ZN5boost4asio6detail25base_from_completion_condINS1_14transfer_all_tEE20check_for_completionERKNS_6system10error_codeEm.exit15

_ZN5boost4asio6detail25base_from_completion_condINS1_14transfer_all_tEE20check_for_completionERKNS_6system10error_codeEm.exit15: ; preds = %bb.l, %.thread19, %bb.m, %_ZNK5boost6system10error_codecvbEv.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.unpack.i.i = load i64, ptr %i.cf, align 8, !tbaa !727 ; 3 uses
  %.elt3.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.unpack4.i.i = load i64, ptr %.elt3.i.i, align 8, !tbaa !727
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val6.i.i = load ptr, ptr %i.cg, align 8, !tbaa !713
  %i.ch = getelementptr inbounds i8, ptr %.val6.i.i, i64 %.unpack4.i.i ; 2 uses
  %i.ci = and i64 %.unpack.i.i, 1
  %.not.i.i.i.i.i16 = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i.i.i.i16, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN5boost4asio6detail25base_from_completion_condINS1_14transfer_all_tEE20check_for_completionERKNS_6system10error_codeEm.exit15
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !271
  %i.ck = getelementptr i8, ptr %i.cj, i64 %.unpack.i.i
  %i.cl = getelementptr i8, ptr %i.ck, i64 -1
  %i.cm = load ptr, ptr %i.cl, align 8, !nosanitize !310
  br label %_ZN5boost5beast6detail18bind_front_wrapperIMNS0_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEmEJSt10shared_ptrIS5_EEEclIJS9_RKmEEEvDpOT_.exit

bb.o:                                             ; preds = %_ZN5boost4asio6detail25base_from_completion_condINS1_14transfer_all_tEE20check_for_completionERKNS_6system10error_codeEm.exit15
  %i.cn = inttoptr i64 %.unpack.i.i to ptr
  br label %_ZN5boost5beast6detail18bind_front_wrapperIMNS0_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEmEJSt10shared_ptrIS5_EEEclIJS9_RKmEEEvDpOT_.exit

_ZN5boost5beast6detail18bind_front_wrapperIMNS0_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEmEJSt10shared_ptrIS5_EEEclIJS9_RKmEEEvDpOT_.exit: ; preds = %bb.n, %bb.o
  %i.co = phi ptr [ %i.cm, %bb.n ], [ %i.cn, %bb.o ]
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(120) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bx), !inline_history !2797
  br label %bb.p

bb.p:                                             ; preds = %_ZN5boost5beast6detail18bind_front_wrapperIMNS0_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEmEJSt10shared_ptrIS5_EEEclIJS9_RKmEEEvDpOT_.exit, %_ZN5boost4asio19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEE16async_write_someINS0_12const_bufferENS0_6detail8write_opIS5_S7_PKS7_NS8_14transfer_all_tENS_5beast6detail18bind_front_wrapperIMNSD_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEmEJSt10shared_ptrISI_EEEEEEEEDTcl14async_initiateIT0_FvSK_mEEclL_ZSt7declvalINS5_19initiate_async_sendEEDTcl9__declvalIT_ELi0EEEvEEfp0_fp_cviLi0EEERKSX_OST_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN5boost4asio6detail8write_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS0_12const_bufferEPKS8_NS1_14transfer_all_tENS_5beast6detail18bind_front_wrapperIMNSC_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEmEJSt10shared_ptrISH_EEEEED2Ev(ptr %.64.val) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i.i.i = icmp eq ptr %.64.val, null
  br i1 %.not.i.i.i.i, label %_ZN5boost5beast6detail18bind_front_wrapperIMNS0_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEmEJSt10shared_ptrIS5_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.64.val, i64 8 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4294967297
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !386
  %i.e = getelementptr inbounds nuw i8, ptr %.64.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !387
  %i.f = load ptr, ptr %.64.val, align 8, !tbaa !271
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.64.val) #36, !inline_history !2798
  %i.i = load ptr, ptr %.64.val, align 8, !tbaa !271
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.64.val) #36, !inline_history !2798
  br label %_ZN5boost5beast6detail18bind_front_wrapperIMNS0_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEmEJSt10shared_ptrIS5_EEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !280
  %.not.i.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !374
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZN5boost5beast6detail18bind_front_wrapperIMNS0_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEmEJSt10shared_ptrIS5_EEED2Ev.exit, !prof !388

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.64.val) #36
  br label %_ZN5boost5beast6detail18bind_front_wrapperIMNS0_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEmEJSt10shared_ptrIS5_EEED2Ev.exit

_ZN5boost5beast6detail18bind_front_wrapperIMNS0_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEmEJSt10shared_ptrIS5_EEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5boost4asio6detail23reactive_socket_send_opINS0_12const_bufferENS1_8write_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEES3_PKS3_NS1_14transfer_all_tENS_5beast6detail18bind_front_wrapperIMNSD_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEmEJSt10shared_ptrISI_EEEEEES8_E11do_completeEPvPNS1_19scheduler_operationESM_m(ptr nofree noundef readnone captures(address_is_null) %0, ptr noundef %1, ptr nofree nonnull readnone align 8 captures(none) %2, i64 %3) #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder2<boost::asio::detail::write_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::const_buffer, const boost::asio::const_buffer *, boost::asio::detail::transfer_all_t, boost::beast::detail::bind_front_wrapper<void (boost::beast::(anonymous namespace)::test_server::session::*)(const boost::system::error_code &, unsigned long), std::shared_ptr<boost::beast::(anonymous namespace)::test_server::session>>>, boost::system::error_code, unsigned long>, std::allocator<void>>::ptr", align 8 ; 6 uses
  %5 = alloca %"class.boost::asio::detail::executor_function", align 8 ; 7 uses
  %.sroa.2.i.i.i = alloca %"class.boost::asio::detail::consuming_single_buffer", align 8 ; 4 uses
  %.sroa.19.i.i.i = alloca %"class.boost::system::error_code", align 8 ; 4 uses
  %6 = alloca %"class.std::allocator.21", align 1 ; 4 uses
  %7 = alloca %"struct.boost::asio::detail::reactive_socket_send_op<boost::asio::const_buffer, boost::asio::detail::write_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::const_buffer, const boost::asio::const_buffer *, boost::asio::detail::transfer_all_t, boost::beast::detail::bind_front_wrapper<void (boost::beast::(anonymous namespace)::test_server::session::*)(const boost::system::error_code &, unsigned long), std::shared_ptr<boost::beast::(anonymous namespace)::test_server::session>>>, boost::asio::any_io_executor>::ptr", align 8 ; 9 uses
  %8 = alloca %"class.boost::asio::detail::handler_work.152", align 8 ; 10 uses
  %9 = alloca %"class.boost::asio::detail::binder2", align 8 ; 15 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !752
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !753
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %i.d) #36
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.5.0.copyload4.i = load i64, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !277 ; 3 uses
  %switch.i.i = icmp ult i64 %.sroa.5.0.copyload4.i, 2
  %i.f = and i64 %.sroa.5.0.copyload4.i, 1
  %i.g = or disjoint i64 %i.f, ptrtoint (ptr @_ZZN5boost4asio6detail23reactive_socket_send_opINS0_12const_bufferENS1_8write_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEES3_PKS3_NS1_14transfer_all_tENS_5beast6detail18bind_front_wrapperIMNSD_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEmEJSt10shared_ptrISI_EEEEEES8_E11do_completeEPvPNS1_19scheduler_operationESM_mE3loc to i64)
  %.sroa.5.0.i = select i1 %switch.i.i, i64 %.sroa.5.0.copyload4.i, i64 %i.g
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !277
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !747, !nonnull !310, !align !313
  store ptr %i.i, ptr %9, align 8, !tbaa !697
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.n = load i32, ptr %i.m, align 8, !tbaa !726
  store i32 %i.n, ptr %i.l, align 8, !tbaa !726
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.q = load <2 x i64>, ptr %i.p, align 8, !tbaa !727
  store <2 x i64> %i.q, ptr %i.o, align 8, !tbaa !727
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.v = load <2 x ptr>, ptr %i.s, align 8, !tbaa !314
  store ptr null, ptr %i.u, align 8, !tbaa !384
  store <2 x ptr> %i.v, ptr %i.r, align 8, !tbaa !314
  store ptr null, ptr %i.s, align 8, !tbaa !713
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !459
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 3 uses
  %i.y = load i64, ptr %i.h, align 8, !tbaa !277
  store i64 %i.y, ptr %i.x, align 8, !tbaa !759
  store ptr %9, ptr %7, align 8, !tbaa !751
  invoke fastcc void @_ZN5boost4asio6detail23reactive_socket_send_opINS0_12const_bufferENS1_8write_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEES3_PKS3_NS1_14transfer_all_tENS_5beast6detail18bind_front_wrapperIMNSD_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEmEJSt10shared_ptrISI_EEEEEES8_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.b unwind label %bb.r

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !594
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = load i64, ptr %i.x, align 8, !tbaa !759
  invoke fastcc void @_ZN5boost4asio6detail8write_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS0_12const_bufferEPKS8_NS1_14transfer_all_tENS_5beast6detail18bind_front_wrapperIMNSC_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEmEJSt10shared_ptrISH_EEEEEclESJ_mi(ptr noundef nonnull align 8 dereferenceable(104) %9, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %i.w, i64 noundef %i.ab, i32 noundef 0)
          to label %_ZN5boost4asio6detail12handler_workINS1_8write_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS0_12const_bufferEPKS9_NS1_14transfer_all_tENS_5beast6detail18bind_front_wrapperIMNSD_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEmEJSt10shared_ptrISI_EEEEEES7_vE8completeINS1_7binder2ISS_SK_mEEEEvRT_RSS_.exit unwind label %bb.s, !inline_history !2799

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i.i.i)
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !592 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !699 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not6.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr nonnull @_ZN5boost4asio6detail22executor_function_view8completeINS1_7binder2INS1_8write_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS0_12const_bufferEPKSB_NS1_14transfer_all_tENS_5beast6detail18bind_front_wrapperIMNSF_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEmEJSt10shared_ptrISK_EEEEEESM_mEEEEvPv, ptr nonnull align 8 dereferenceable(104) %9)
          to label %_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorEvNS0_10io_contextENS0_8executorEvE8dispatchINS1_7binder2INS1_8write_opINS0_19basic_stream_socketINS0_2ip3tcpES3_EENS0_12const_bufferEPKSE_NS1_14transfer_all_tENS_5beast6detail18bind_front_wrapperIMNSI_12_GLOBAL__N_111test_server7sessionEFvRKNS_6system10error_codeEmEJSt10shared_ptrISN_EEEEEESP_mEESX_EEvRT_RT0_.exit.i unwind label %bb.s, !inline_history !2799

bb.g:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !700
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.ai = load ptr, ptr %9, align 8, !tbaa !747, !nonnull !310, !align !313
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.aj = load i32, ptr %i.l, align 8, !tbaa !726
  %i.ak = load <2 x i64>, ptr %i.o, align 8, !tbaa !727
  %i.al = load ptr, ptr %i.t, align 8, !tbaa !384
  %i.am = load <2 x ptr>, ptr %i.r, align 8, !tbaa !314
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.19.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !tbaa.struct !459
  %i.an = load i64, ptr %i.x, align 8, !tbaa !759
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %6, ptr %4, align 8, !tbaa !762
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = invoke noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
          to label %.noexc.i.i.i unwind label %bb.m, !inline_history !2800

.noexc.i.i.i:                                     ; preds = %bb.g
  %i.aq = invoke noundef ptr @_ZN5boost4asio6detail16thread_info_base8allocateINS2_21executor_function_tagEEEPvT_PS2_mm(ptr noundef %i.ap, i64 noundef 120, i64 noundef 8)
          to label %.noexc10.i.i.i unwind label %bb.m, !inline_history !2800 ; 9 uses

.noexc10.i.i.i:                                   ; preds = %.noexc.i.i.i
end_hunk_0
