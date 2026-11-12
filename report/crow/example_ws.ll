Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/crow/original/example_ws?download=true
inline.NumInlined: 16068
inline.NumDeleted: 5763
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4asio6detail17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSA_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSE_13SocketAdaptorENSE_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE0_EESL_mEESaIvEE3ptr5resetEv:bb.a
  %.not3 = icmp eq ptr %i.y, null
  br i1 %.not3, label %.thread.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !179
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.k, label %.preheader.1.i.i

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !179
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.k, label %.thread.i.i

bb.k:                                             ; preds = %.preheader.1.i.i, %.preheader.preheader.i.i
  %.lcssa.i.i = phi i64 [ 4, %.preheader.preheader.i.i ], [ 5, %.preheader.1.i.i ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.lcssa.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !165
  store i8 %i.ah, ptr %i.u, align 1, !tbaa !165
  store ptr %i.u, ptr %i.af, align 8, !tbaa !179
  br label %_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSB_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSF_13SocketAdaptorENSF_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE0_EESM_mEESaIvEEENS0_16thread_info_base21executor_function_tagEE10deallocateEPST_m.exit

.thread.i.i:                                      ; preds = %.preheader.1.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i, %bb.j
  tail call void @free(ptr noundef nonnull %i.u) #40
  br label %_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSB_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSF_13SocketAdaptorENSF_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE0_EESM_mEESaIvEEENS0_16thread_info_base21executor_function_tagEE10deallocateEPST_m.exit

_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSB_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSF_13SocketAdaptorENSF_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE0_EESM_mEESaIvEEENS0_16thread_info_base21executor_function_tagEE10deallocateEPST_m.exit: ; preds = %bb.k, %.thread.i.i
  store ptr null, ptr %i.t, align 8, !tbaa !800
  br label %bb.l

bb.l:                                             ; preds = %_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSB_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSF_13SocketAdaptorENSF_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE0_EESM_mEESaIvEEENS0_16thread_info_base21executor_function_tagEE10deallocateEPST_m.exit, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4asio6detail19initiate_async_readINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEEEclIZN4crow9websocket10ConnectionINS9_13SocketAdaptorENS9_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_NS_14mutable_bufferENS0_14transfer_all_tEEEvOT_RKT0_OT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.asio::mutable_buffer", align 8 ; 5 uses
  %5 = alloca %"class.asio::detail::read_op.364", align 8 ; 12 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !802, !nonnull !275, !align !411 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  store ptr %i.a, ptr %5, align 8, !tbaa !681
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !605
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.c, align 8, !tbaa !763
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !179
  store ptr null, ptr %i.f, align 8, !tbaa !312
  store <2 x ptr> %i.g, ptr %i.e, align 8, !tbaa !179
  store ptr null, ptr %1, align 8, !tbaa !583
  store i32 1, ptr %i.d, align 8, !tbaa !805
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !777
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !795
  %spec.select.i1.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 65536)
  store ptr %i.j, ptr %4, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %spec.select.i1.i.i, ptr %i.k, align 8
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !505
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  invoke void @_ZN4asio6detail28reactive_socket_service_base13async_receiveINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEES3_PKS3_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSD_13SocketAdaptorENSD_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES8_EEvRNS1_24base_implementation_typeERKT_iRT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %i.o)
          to label %_ZN4asio6detail13start_read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_13SocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EEvRT_RKT0_RKT1_RT2_RT3_.exit unwind label %bb.b, !inline_history !2055

bb.b:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio6detail7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_13SocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_ED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #40, !inline_history !2056
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  resume { ptr, i32 } %i.p

_ZN4asio6detail13start_read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_13SocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EEvRT_RKT0_RKT1_RT2_RT3_.exit: ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !312  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZN4asio6detail7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_13SocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_ED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4asio6detail13start_read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_13SocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EEvRT_RKT0_RKT1_RT2_RT3_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.s, align 8, !tbaa !314
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !315
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !257
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #40, !inline_history !2057
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !257
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #40, !inline_history !2057
  br label %_ZN4asio6detail7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_13SocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_ED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.v, %bb.f ], [ %i.af, %bb.g ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.h, label %_ZN4asio6detail7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_13SocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_ED2Ev.exit, !prof !316

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #40
  br label %_ZN4asio6detail7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_13SocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_ED2Ev.exit

_ZN4asio6detail7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_13SocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_ED2Ev.exit: ; preds = %_ZN4asio6detail13start_read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_13SocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EEvRT_RKT0_RKT1_RT2_RT3_.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_13SocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_ED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !312  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZZN4crow9websocket10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEE7do_readEvENUlRKSt10error_codemE1_D2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !314
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !315
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !257
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !63
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !257
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !63
  br label %_ZZN4crow9websocket10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEE7do_readEvENUlRKSt10error_codemE1_D2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZZN4crow9websocket10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEE7do_readEvENUlRKSt10error_codemE1_D2Ev.exit, !prof !316

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40
  br label %_ZZN4crow9websocket10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEE7do_readEvENUlRKSt10error_codemE1_D2Ev.exit

_ZZN4crow9websocket10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEE7do_readEvENUlRKSt10error_codemE1_D2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN4crow9websocket10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEE7do_readEvENKUlRKSt10error_codemE1_clES8_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::error_code", align 8   ; 5 uses
  %4 = alloca %"class.std::error_code", align 8   ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !583    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4401
  store i8 0, ptr %i.b, align 1, !tbaa !632
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4352 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !629
  %i.e = tail call i64 @llvm.bswap.i64(i64 %i.d)
  store i64 %i.e, ptr %i.c, align 8, !tbaa !629
  %i.f = load i32, ptr %1, align 8, !tbaa !285
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4344
  store i32 3, ptr %i.g, align 8, !tbaa !627
  tail call void @_ZN4crow9websocket10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEE7do_readEv(ptr noundef nonnull align 8 dereferenceable(4592) %i.a)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4400
  store i8 1, ptr %i.h, align 8, !tbaa !631
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  store i32 0, ptr %4, align 8, !tbaa !285
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #44 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !286
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.l = load i32, ptr %i.k, align 8, !tbaa !485
  %i.m = call noundef i32 @_ZN4asio6detail10socket_ops8shutdownEiiRSt10error_code(i32 noundef %i.l, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %i.n = load ptr, ptr %0, align 8, !tbaa !583    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  store i32 0, ptr %3, align 8, !tbaa !285
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.j, ptr %i.p, align 8, !tbaa !286
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !505
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.t = call { i32, ptr } @_ZN4asio6detail28reactive_socket_service_base5closeERNS1_24base_implementation_typeERSt10error_code(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  %i.u = load ptr, ptr %0, align 8, !tbaa !583    ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4528
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4544 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !244
  %.not.i.i.not = icmp eq ptr %i.x, null
  br i1 %.not.i.i.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !286, !noalias !2060 ; 2 uses
  %i.aa = load i32, ptr %1, align 8, !tbaa !285, !noalias !2060
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !257, !noalias !2060
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !2060
  call void %i.ad(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.z, i32 noundef %i.aa), !inline_history !1
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !244
  %.not.i.i4 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i4, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt25__throw_bad_function_callv() #39
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 4552
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !579
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNKSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES3_SB_.exit unwind label %bb.g, !inline_history !64

_ZNKSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES3_SB_.exit: ; preds = %bb.f
  %i.ah = load ptr, ptr %5, align 8, !tbaa !164   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES3_SB_.exit
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !165
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES3_SB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %.pre = load ptr, ptr %0, align 8, !tbaa !583
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %5, align 8, !tbaa !164   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.g
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !165
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  resume { ptr, i32 } %i.am

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %i.as = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %bb.c ]
  call void @_ZN4crow9websocket10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEE13check_destroyENS0_15CloseStatusCodeE(ptr noundef nonnull align 8 dereferenceable(4592) %i.as, i16 noundef zeroext 1006)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail28reactive_socket_service_base13async_receiveINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEES3_PKS3_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSD_13SocketAdaptorENSD_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES8_EEvRNS1_24base_implementation_typeERKT_iRT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %5) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.asio::detail::reactive_socket_recv_op<asio::mutable_buffer, asio::detail::read_op<asio::basic_stream_socket<asio::ip::tcp>, asio::mutable_buffer, const asio::mutable_buffer *, asio::detail::transfer_all_t, (lambda at /opt-bench/work/crow/Crow/include/crow/websocket.h:478:27)>, asio::any_io_executor>::ptr", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !805
  %i.c = icmp eq i32 %i.b, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  store ptr %4, ptr %6, align 8, !tbaa !809
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !448  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_13SocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptr8allocateERSN_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !449
  br label %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_13SocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptr8allocateERSN_.exit

_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_13SocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptr8allocateERSN_.exit: ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  %i.j = tail call noundef ptr @_ZN4asio6detail16thread_info_base8allocateINS1_11default_tagEEEPvT_PS1_mm(ptr noundef %i.i, i64 noundef 208, i64 noundef 8) ; 4 uses
  store ptr %i.j, ptr %i.d, align 8, !tbaa !810
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr null, ptr %i.k, align 8, !tbaa !811
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %1, align 8, !tbaa !485
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4, !tbaa !488
  invoke void @_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_13SocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_EC2ESL_ihRS9_iRSN_RKS7_(ptr noundef nonnull align 8 dereferenceable(208) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i32 noundef %i.m, i8 noundef zeroext %i.o, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_13SocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptr8allocateERSN_.exit
  store ptr %i.j, ptr %i.k, align 8, !tbaa !811
  %i.p = and i32 %3, 1                            ; 2 uses
  %i.q = shl nuw nsw i32 %i.p, 1
  %i.r = icmp eq i32 %i.p, 0
  %i.s = load i8, ptr %i.n, align 4, !tbaa !488
  %i.t = and i8 %i.s, 16
  %.not = icmp eq i8 %i.t, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !777
  %i.w = icmp eq i64 %i.v, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = phi i1 [ false, %bb.c ], [ %i.w, %bb.d ]
  invoke void @_ZN4asio6detail28reactive_socket_service_base8start_opINS0_23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEES4_PKS4_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSE_13SocketAdaptorENSE_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES9_EEEEvRNS1_24base_implementation_typeEiPT_bbbPKvPNSt9enable_ifIXsr7is_sameINS_29associated_immediate_executorINST_12handler_typeENST_16io_executor_typeEE51asio_associated_immediate_executor_is_unspecialisedEvEE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.q, ptr noundef nonnull %i.j, i1 noundef zeroext %i.c, i1 noundef zeroext %i.r, i1 noundef zeroext %i.x, ptr noundef nonnull %5, ptr noundef null)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  invoke void @_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_13SocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_13SocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptrD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #42
  unreachable

_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_13SocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptrD2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  ret void

bb.h:                                             ; preds = %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_13SocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptr8allocateERSN_.exit, %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_13SocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_13SocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptrD2Ev.exit23 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #42
  unreachable

_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_13SocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptrD2Ev.exit23: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  resume { ptr, i32 } %i.aa
}

end_hunk_0
begin_hunk_1_@_ZN4asio6detail17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKSA_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSE_17UnixSocketAdaptorENSE_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE0_EESL_mEESaIvEE3ptr5resetEv:bb.a
  %.not3 = icmp eq ptr %i.y, null
  br i1 %.not3, label %.thread.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !179
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.k, label %.preheader.1.i.i

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !179
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.k, label %.thread.i.i

bb.k:                                             ; preds = %.preheader.1.i.i, %.preheader.preheader.i.i
  %.lcssa.i.i = phi i64 [ 4, %.preheader.preheader.i.i ], [ 5, %.preheader.1.i.i ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.lcssa.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !165
  store i8 %i.ah, ptr %i.u, align 1, !tbaa !165
  store ptr %i.u, ptr %i.af, align 8, !tbaa !179
  br label %_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKSB_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSF_17UnixSocketAdaptorENSF_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE0_EESM_mEESaIvEEENS0_16thread_info_base21executor_function_tagEE10deallocateEPST_m.exit

.thread.i.i:                                      ; preds = %.preheader.1.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i, %bb.j
  tail call void @free(ptr noundef nonnull %i.u) #40
  br label %_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKSB_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSF_17UnixSocketAdaptorENSF_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE0_EESM_mEESaIvEEENS0_16thread_info_base21executor_function_tagEE10deallocateEPST_m.exit

_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKSB_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSF_17UnixSocketAdaptorENSF_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE0_EESM_mEESaIvEEENS0_16thread_info_base21executor_function_tagEE10deallocateEPST_m.exit: ; preds = %bb.k, %.thread.i.i
  store ptr null, ptr %i.t, align 8, !tbaa !939
  br label %bb.l

bb.l:                                             ; preds = %_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKSB_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSF_17UnixSocketAdaptorENSF_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE0_EESM_mEESaIvEEENS0_16thread_info_base21executor_function_tagEE10deallocateEPST_m.exit, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4asio6detail19initiate_async_readINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEEEclIZN4crow9websocket10ConnectionINS9_17UnixSocketAdaptorENS9_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_NS_14mutable_bufferENS0_14transfer_all_tEEEvOT_RKT0_OT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.asio::mutable_buffer", align 8 ; 5 uses
  %5 = alloca %"class.asio::detail::read_op.479", align 8 ; 12 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !941, !nonnull !275, !align !411 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  store ptr %i.a, ptr %5, align 8, !tbaa !881
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !605
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.c, align 8, !tbaa !763
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !179
  store ptr null, ptr %i.f, align 8, !tbaa !312
  store <2 x ptr> %i.g, ptr %i.e, align 8, !tbaa !179
  store ptr null, ptr %1, align 8, !tbaa !852
  store i32 1, ptr %i.d, align 8, !tbaa !944
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !777
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !795
  %spec.select.i1.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 65536)
  store ptr %i.j, ptr %4, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %spec.select.i1.i.i, ptr %i.k, align 8
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !349
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  invoke void @_ZN4asio6detail28reactive_socket_service_base13async_receiveINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEES3_PKS3_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSD_17UnixSocketAdaptorENSD_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES8_EEvRNS1_24base_implementation_typeERKT_iRT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %i.o)
          to label %_ZN4asio6detail13start_read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_17UnixSocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EEvRT_RKT0_RKT1_RT2_RT3_.exit unwind label %bb.b, !inline_history !2249

bb.b:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio6detail7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_17UnixSocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_ED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #40, !inline_history !2250
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  resume { ptr, i32 } %i.p

_ZN4asio6detail13start_read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_17UnixSocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EEvRT_RKT0_RKT1_RT2_RT3_.exit: ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !312  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZN4asio6detail7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_17UnixSocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_ED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4asio6detail13start_read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_17UnixSocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EEvRT_RKT0_RKT1_RT2_RT3_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.s, align 8, !tbaa !314
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !315
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !257
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #40, !inline_history !2251
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !257
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #40, !inline_history !2251
  br label %_ZN4asio6detail7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_17UnixSocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_ED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.v, %bb.f ], [ %i.af, %bb.g ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.h, label %_ZN4asio6detail7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_17UnixSocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_ED2Ev.exit, !prof !316

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #40
  br label %_ZN4asio6detail7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_17UnixSocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_ED2Ev.exit

_ZN4asio6detail7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_17UnixSocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_ED2Ev.exit: ; preds = %_ZN4asio6detail13start_read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_17UnixSocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EEvRT_RKT0_RKT1_RT2_RT3_.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_17UnixSocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_ED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !312  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE7do_readEvENUlRKSt10error_codemE1_D2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !314
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !315
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !257
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !93
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !257
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !93
  br label %_ZZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE7do_readEvENUlRKSt10error_codemE1_D2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE7do_readEvENUlRKSt10error_codemE1_D2Ev.exit, !prof !316

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40
  br label %_ZZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE7do_readEvENUlRKSt10error_codemE1_D2Ev.exit

_ZZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE7do_readEvENUlRKSt10error_codemE1_D2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE7do_readEvENKUlRKSt10error_codemE1_clES8_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::error_code", align 8   ; 5 uses
  %4 = alloca %"class.std::error_code", align 8   ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !852    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4401
  store i8 0, ptr %i.b, align 1, !tbaa !866
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4352 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !863
  %i.e = tail call i64 @llvm.bswap.i64(i64 %i.d)
  store i64 %i.e, ptr %i.c, align 8, !tbaa !863
  %i.f = load i32, ptr %1, align 8, !tbaa !285
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4344
  store i32 3, ptr %i.g, align 8, !tbaa !861
  tail call void @_ZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE7do_readEv(ptr noundef nonnull align 8 dereferenceable(4592) %i.a)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4400
  store i8 1, ptr %i.h, align 8, !tbaa !865
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  store i32 0, ptr %4, align 8, !tbaa !285
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #44 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !286
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.l = load i32, ptr %i.k, align 8, !tbaa !485
  %i.m = call noundef i32 @_ZN4asio6detail10socket_ops8shutdownEiiRSt10error_code(i32 noundef %i.l, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %i.n = load ptr, ptr %0, align 8, !tbaa !852    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  store i32 0, ptr %3, align 8, !tbaa !285
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.j, ptr %i.p, align 8, !tbaa !286
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !349
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.t = call { i32, ptr } @_ZN4asio6detail28reactive_socket_service_base5closeERNS1_24base_implementation_typeERSt10error_code(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  %i.u = load ptr, ptr %0, align 8, !tbaa !852    ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4528
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4544 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !244
  %.not.i.i.not = icmp eq ptr %i.x, null
  br i1 %.not.i.i.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !286, !noalias !2254 ; 2 uses
  %i.aa = load i32, ptr %1, align 8, !tbaa !285, !noalias !2254
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !257, !noalias !2254
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !2254
  call void %i.ad(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.z, i32 noundef %i.aa), !inline_history !1
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !244
  %.not.i.i4 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i4, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt25__throw_bad_function_callv() #39
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 4552
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !579
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNKSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES3_SB_.exit unwind label %bb.g, !inline_history !64

_ZNKSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES3_SB_.exit: ; preds = %bb.f
  %i.ah = load ptr, ptr %5, align 8, !tbaa !164   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES3_SB_.exit
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !165
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES3_SB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %.pre = load ptr, ptr %0, align 8, !tbaa !852
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %5, align 8, !tbaa !164   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.g
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !165
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  resume { ptr, i32 } %i.am

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %i.as = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %bb.c ]
  call void @_ZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE13check_destroyENS0_15CloseStatusCodeE(ptr noundef nonnull align 8 dereferenceable(4592) %i.as, i16 noundef zeroext 1006)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail28reactive_socket_service_base13async_receiveINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEES3_PKS3_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSD_17UnixSocketAdaptorENSD_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES8_EEvRNS1_24base_implementation_typeERKT_iRT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %5) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.asio::detail::reactive_socket_recv_op<asio::mutable_buffer, asio::detail::read_op<asio::basic_stream_socket<asio::local::stream_protocol>, asio::mutable_buffer, const asio::mutable_buffer *, asio::detail::transfer_all_t, (lambda at /opt-bench/work/crow/Crow/include/crow/websocket.h:478:27)>, asio::any_io_executor>::ptr", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !944
  %i.c = icmp eq i32 %i.b, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  store ptr %4, ptr %6, align 8, !tbaa !948
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !448  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_17UnixSocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptr8allocateERSN_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !449
  br label %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_17UnixSocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptr8allocateERSN_.exit

_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_17UnixSocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptr8allocateERSN_.exit: ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  %i.j = tail call noundef ptr @_ZN4asio6detail16thread_info_base8allocateINS1_11default_tagEEEPvT_PS1_mm(ptr noundef %i.i, i64 noundef 208, i64 noundef 8) ; 4 uses
  store ptr %i.j, ptr %i.d, align 8, !tbaa !949
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr null, ptr %i.k, align 8, !tbaa !950
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %1, align 8, !tbaa !485
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4, !tbaa !488
  invoke void @_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_17UnixSocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_EC2ESL_ihRS9_iRSN_RKS7_(ptr noundef nonnull align 8 dereferenceable(208) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i32 noundef %i.m, i8 noundef zeroext %i.o, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_17UnixSocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptr8allocateERSN_.exit
  store ptr %i.j, ptr %i.k, align 8, !tbaa !950
  %i.p = and i32 %3, 1                            ; 2 uses
  %i.q = shl nuw nsw i32 %i.p, 1
  %i.r = icmp eq i32 %i.p, 0
  %i.s = load i8, ptr %i.n, align 4, !tbaa !488
  %i.t = and i8 %i.s, 16
  %.not = icmp eq i8 %i.t, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !777
  %i.w = icmp eq i64 %i.v, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = phi i1 [ false, %bb.c ], [ %i.w, %bb.d ]
  invoke void @_ZN4asio6detail28reactive_socket_service_base8start_opINS0_23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEES4_PKS4_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSE_17UnixSocketAdaptorENSE_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES9_EEEEvRNS1_24base_implementation_typeEiPT_bbbPKvPNSt9enable_ifIXsr7is_sameINS_29associated_immediate_executorINST_12handler_typeENST_16io_executor_typeEE51asio_associated_immediate_executor_is_unspecialisedEvEE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.q, ptr noundef nonnull %i.j, i1 noundef zeroext %i.c, i1 noundef zeroext %i.r, i1 noundef zeroext %i.x, ptr noundef nonnull %5, ptr noundef null)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  invoke void @_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_17UnixSocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_17UnixSocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptrD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #42
  unreachable

_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_17UnixSocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptrD2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  ret void

bb.h:                                             ; preds = %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_17UnixSocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptr8allocateERSN_.exit, %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_17UnixSocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_17UnixSocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptrD2Ev.exit23 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #42
  unreachable

_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_17UnixSocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptrD2Ev.exit23: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  resume { ptr, i32 } %i.aa
}

end_hunk_1
