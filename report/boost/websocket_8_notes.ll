Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/websocket_8_notes?download=true
inline.NumInlined: 22911
inline.NumDeleted: 8298
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 237
loop-unroll.NumUnrolled: 250
begin_hunk_0_@_ZN5boost4asio6detail17executor_function8completeINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opISB_NS0_14mutable_bufferEPKSG_NS1_14transfer_all_tENS5_9websocket6streamISB_Lb1EE12idle_ping_opIS9_EEEEEENS_6system10error_codeEmEESaIvEEEvPNS2_9impl_baseEb:bb.a
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #38
  unreachable

_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opISB_NS0_14mutable_bufferEPKSG_NS1_14transfer_all_tENS5_9websocket6streamISB_Lb1EE12idle_ping_opIS9_EEEEEENS_6system10error_codeEmEESaIvEE3ptrD2Ev.exit: ; preds = %_ZN5boost4asio6detail7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opIS9_NS0_14mutable_bufferEPKSE_NS1_14transfer_all_tENS3_9websocket6streamIS9_Lb1EE12idle_ping_opIS7_EEEEEENS_6system10error_codeEmED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void

bb.p:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.g, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  invoke void @_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opISB_NS0_14mutable_bufferEPKSG_NS1_14transfer_all_tENS5_9websocket6streamISB_Lb1EE12idle_ping_opIS9_EEEEEENS_6system10error_codeEmEESaIvEE3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opISB_NS0_14mutable_bufferEPKSG_NS1_14transfer_all_tENS5_9websocket6streamISB_Lb1EE12idle_ping_opIS9_EEEEEENS_6system10error_codeEmEESaIvEE3ptrD2Ev.exit8 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #38
  unreachable

_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opISB_NS0_14mutable_bufferEPKSG_NS1_14transfer_all_tENS5_9websocket6streamISB_Lb1EE12idle_ping_opIS9_EEEEEENS_6system10error_codeEmEESaIvEE3ptrD2Ev.exit8: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opISB_NS0_14mutable_bufferEPKSG_NS1_14transfer_all_tENS5_9websocket6streamISB_Lb1EE12idle_ping_opIS9_EEEEEENS_6system10error_codeEmEESaIvEE3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1151 ; 11 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE3ops11transfer_opILb0ENS2_12const_bufferENS2_6detail8write_opIS7_NS2_14mutable_bufferEPKSD_NSB_14transfer_all_tENS0_9websocket6streamIS7_Lb1EE12idle_ping_opIS5_EEEEEE, i64 16), ptr %i.c, align 8, !tbaa !469
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.e = load i8, ptr %i.d, align 8, !tbaa !1012, !range !510, !noundef !511
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1011 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.h, align 1, !tbaa !882
  br label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i

_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !536  ; 7 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = atomicrmw sub ptr %i.k, i32 1 acq_rel, align 4
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.f, label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !469
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #37, !inline_history !3318
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.r = atomicrmw sub ptr %i.q, i32 1 acq_rel, align 4
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.g, label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !469
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #37, !inline_history !3319
  br label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i

_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.e, %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseINS_4asio6detail8write_opINS0_12basic_streamINS2_2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEEENS2_14mutable_bufferEPKSB_NS3_14transfer_all_tENS0_9websocket6streamISA_Lb1EE12idle_ping_opIS8_EEEES8_SaIvEEE, i64 16), ptr %i.c, align 8, !tbaa !469
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.y = load i8, ptr %i.x, align 8, !tbaa !718, !range !510, !noundef !511
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.h, label %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvED2Ev.exit.i.i.i.i

bb.h:                                             ; preds = %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.aa) #37, !inline_history !1099
  br label %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvED2Ev.exit.i.i.i.i

_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvED2Ev.exit.i.i.i.i: ; preds = %bb.h, %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.w) #37, !inline_history !1099
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !870 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN5boost5beast18flat_static_bufferILm139EEESt14default_deleteIS3_EED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5boost5beast18flat_static_bufferILm139EEEEclEPS3_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN5boost5beast18flat_static_bufferILm139EEEEclEPS3_.exit.i.i.i.i.i.i.i: ; preds = %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvED2Ev.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 184) #40, !inline_history !1099
  br label %_ZNSt10unique_ptrIN5boost5beast18flat_static_bufferILm139EEESt14default_deleteIS3_EED2Ev.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN5boost5beast18flat_static_bufferILm139EEESt14default_deleteIS3_EED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5boost5beast18flat_static_bufferILm139EEEEclEPS3_.exit.i.i.i.i.i.i.i, %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvED2Ev.exit.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !554 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opISB_NS0_14mutable_bufferEPKSG_NS1_14transfer_all_tENS5_9websocket6streamISB_Lb1EE12idle_ping_opIS9_EEEEEENS_6system10error_codeEmEESaIvEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN5boost5beast18flat_static_bufferILm139EEESt14default_deleteIS3_EED2Ev.exit.i.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ag = atomicrmw sub ptr %i.af, i32 1 acq_rel, align 4
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.j, label %_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opISB_NS0_14mutable_bufferEPKSG_NS1_14transfer_all_tENS5_9websocket6streamISB_Lb1EE12idle_ping_opIS9_EEEEEENS_6system10error_codeEmEESaIvEED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !469
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #37, !inline_history !3320
  br label %_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opISB_NS0_14mutable_bufferEPKSG_NS1_14transfer_all_tENS5_9websocket6streamISB_Lb1EE12idle_ping_opIS9_EEEEEENS_6system10error_codeEmEESaIvEED2Ev.exit

_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opISB_NS0_14mutable_bufferEPKSG_NS1_14transfer_all_tENS5_9websocket6streamISB_Lb1EE12idle_ping_opIS9_EEEEEENS_6system10error_codeEmEESaIvEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5boost5beast18flat_static_bufferILm139EEESt14default_deleteIS3_EED2Ev.exit.i.i.i.i.i.i, %bb.i, %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.al) #37, !inline_history !1099
  store ptr null, ptr %i.a, align 8, !tbaa !1151
  br label %bb.k

bb.k:                                             ; preds = %_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opISB_NS0_14mutable_bufferEPKSG_NS1_14transfer_all_tENS5_9websocket6streamISB_Lb1EE12idle_ping_opIS9_EEEEEENS_6system10error_codeEmEESaIvEED2Ev.exit, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1150 ; 5 uses
  %.not1 = icmp eq ptr %i.an, null
  br i1 %.not1, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = tail call noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv() ; 4 uses
  %.not3 = icmp eq ptr %i.ao, null
  br i1 %.not3, label %.thread.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !641
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.m, label %.preheader.1.i.i

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !641
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.m, label %.thread.i.i

bb.m:                                             ; preds = %.preheader.1.i.i, %.preheader.preheader.i.i
  %.lcssa.i.i = phi i64 [ 4, %.preheader.preheader.i.i ], [ 5, %.preheader.1.i.i ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.lcssa.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 360
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !478
  store i8 %i.ax, ptr %i.an, align 1, !tbaa !478
  store ptr %i.an, ptr %i.av, align 8, !tbaa !641
  br label %_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opISC_NS0_14mutable_bufferEPKSH_NS1_14transfer_all_tENS6_9websocket6streamISC_Lb1EE12idle_ping_opISA_EEEEEENS_6system10error_codeEmEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPSW_m.exit

.thread.i.i:                                      ; preds = %.preheader.1.i.i, %bb.l
  tail call void @free(ptr noundef nonnull %i.an) #37
  br label %_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opISC_NS0_14mutable_bufferEPKSH_NS1_14transfer_all_tENS6_9websocket6streamISC_Lb1EE12idle_ping_opISA_EEEEEENS_6system10error_codeEmEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPSW_m.exit

_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opISC_NS0_14mutable_bufferEPKSH_NS1_14transfer_all_tENS6_9websocket6streamISC_Lb1EE12idle_ping_opISA_EEEEEENS_6system10error_codeEmEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPSW_m.exit: ; preds = %bb.m, %.thread.i.i
  store ptr null, ptr %i.am, align 8, !tbaa !1150
  br label %bb.n

bb.n:                                             ; preds = %_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_12const_bufferENS1_8write_opISC_NS0_14mutable_bufferEPKSH_NS1_14transfer_all_tENS6_9websocket6streamISC_Lb1EE12idle_ping_opISA_EEEEEENS_6system10error_codeEmEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPSW_m.exit, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost4asio6detail28reactive_socket_send_op_baseINS_5beast19buffers_prefix_viewINS0_12const_bufferEEEE10do_performEPNS1_10reactor_opE(ptr noundef %0) #5 comdat align 2 {
bb.a:
  %1 = alloca %"class.boost::asio::detail::buffer_sequence_adapter", align 8 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1032 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !641
  %.sroa.4.0..0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..0.sroa_idx.i.i, align 8, !tbaa !475 ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i, ptr %1, align 8, !tbaa !641
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.4.0.copyload.i.i, ptr %i.d, align 8, !tbaa !1153
  store i64 %.sroa.4.0.copyload.i.i, ptr %i.c, align 8, !tbaa !3322
  store i64 1, ptr %i.b, align 8, !tbaa !3323
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i32, ptr %i.e, align 8, !tbaa !1141
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1143
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = call noundef zeroext i1 @_ZN5boost4asio6detail10socket_ops17non_blocking_sendEiPK5iovecmiRNS_6system10error_codeERm(i32 noundef %i.f, ptr noundef nonnull %1, i64 noundef 1, i32 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.m = load i8, ptr %i.l, align 4, !tbaa !1142
  %i.n = and i8 %i.m, 16
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.j, align 8, !tbaa !1154
  %i.p = load i64, ptr %i.c, align 8, !tbaa !3322
  %i.q = icmp ult i64 %i.o, %i.p
  %spec.select = select i1 %i.q, i32 2, i32 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  ret i32 %.0
}

declare noundef zeroext i1 @_ZN5boost4asio6detail10socket_ops17non_blocking_sendEiPK5iovecmiRNS_6system10error_codeERm(i32 noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN5boost4asio15any_io_executorC1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail20cancellation_handlerINS_5beast6detail27filtering_cancellation_slotINS0_17cancellation_slotEE15handler_wrapperINS1_28reactive_socket_service_base23reactor_op_cancellationEEEE4callENS0_17cancellation_typeE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1158
  %i.c = and i32 %i.b, %1
  %.not.i = icmp eq i32 %i.c, 0
  %i.d = and i32 %1, 7
  %i.e = icmp eq i32 %i.d, 0
  %or.cond.i = or i1 %i.e, %.not.i
  br i1 %or.cond.i, label %_ZN5boost5beast6detail27filtering_cancellation_slotINS_4asio17cancellation_slotEE15handler_wrapperINS3_6detail28reactive_socket_service_base23reactor_op_cancellationEEclENS3_17cancellation_typeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1159
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1160
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1161
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !1162
  tail call void @_ZN5boost4asio6detail13epoll_reactor17cancel_ops_by_keyEiRPNS2_16descriptor_stateEiPv(ptr noundef nonnull align 8 dereferenceable(152) %i.g, i32 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(28) %i.f)
  br label %_ZN5boost5beast6detail27filtering_cancellation_slotINS_4asio17cancellation_slotEE15handler_wrapperINS3_6detail28reactive_socket_service_base23reactor_op_cancellationEEclENS3_17cancellation_typeE.exit

_ZN5boost5beast6detail27filtering_cancellation_slotINS_4asio17cancellation_slotEE15handler_wrapperINS3_6detail28reactive_socket_service_base23reactor_op_cancellationEEclENS3_17cancellation_typeE.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN5boost4asio6detail20cancellation_handlerINS_5beast6detail27filtering_cancellation_slotINS0_17cancellation_slotEE15handler_wrapperINS1_28reactive_socket_service_base23reactor_op_cancellationEEEE7destroyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !475
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.b, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare void @_ZN5boost4asio6detail13epoll_reactor17cancel_ops_by_keyEiRPNS2_16descriptor_stateEiPv(ptr noundef nonnull align 8 dereferenceable(152), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef) local_unnamed_addr #9

declare void @_ZN5boost4asio6detail28reactive_socket_service_base11do_start_opERNS2_24base_implementation_typeEiPNS1_10reactor_opEbbbbPFvPNS1_19scheduler_operationEbPKvESA_(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @_ZN5boost4asio6detail13epoll_reactor30call_post_immediate_completionEPNS1_19scheduler_operationEbPKv(ptr noundef, i1 noundef zeroext, ptr noundef) #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail22deadline_timer_serviceINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10async_waitINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENSC_21unlimited_rate_policyEE15timeout_handlerISG_EESG_EEvRNSA_19implementation_typeERT_RKT0_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(56) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::asio::detail::wait_handler<boost::beast::basic_stream<boost::asio::ip::tcp>::timeout_handler<boost::asio::any_io_executor>, boost::asio::any_io_executor>::ptr", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store ptr %2, ptr %4, align 8, !tbaa !1166
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = tail call noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
  %i.c = tail call noundef ptr @_ZN5boost4asio6detail16thread_info_base8allocateINS2_11default_tagEEEPvT_PS2_mm(ptr noundef %i.b, i64 noundef 256, i64 noundef 8) ; 12 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !1167
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.c, align 8, !tbaa !584
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_ZN5boost4asio6detail12wait_handlerINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE15timeout_handlerIS7_EES7_E11do_completeEPvPNS1_19scheduler_operationERKNS_6system10error_codeEm, ptr %i.e, align 8, !tbaa !586
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 0, ptr %i.f, align 8, !tbaa !639
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load <2 x ptr>, ptr %2, align 8, !tbaa !641
  store <2 x ptr> %i.j, ptr %i.h, align 8, !tbaa !641
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !554
  store ptr %i.m, ptr %i.k, align 8, !tbaa !554
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !1105
  store i64 %i.p, ptr %i.n, align 8, !tbaa !1105
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull align 8 dereferenceable(56) %i.r) #37
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  tail call void @_ZN5boost4asio6detail12handler_workINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE15timeout_handlerIS7_EES7_vEC2ERSB_RKS7_(ptr noundef nonnull align 8 dereferenceable(112) %i.s, ptr noundef nonnull align 8 dereferenceable(88) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %3) #37
  store ptr %i.c, ptr %i.d, align 8, !tbaa !1168
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !534
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 1, ptr %i.t, align 8, !tbaa !509
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_ZN5boost4asio6detail13epoll_reactor14schedule_timerINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS7_EEEENS0_17execution_context9allocatorIvEEEEvRNS1_11timer_queueIT_T0_EERKNSF_9time_typeERNSH_14per_timer_dataEPNS1_7wait_opE(ptr noundef nonnull align 8 dereferenceable(152) %.pre, ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull %i.c)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  invoke void @_ZN5boost4asio6detail12wait_handlerINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE15timeout_handlerIS7_EES7_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZN5boost4asio6detail12wait_handlerINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE15timeout_handlerIS7_EES7_E3ptrD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #38
  unreachable

_ZN5boost4asio6detail12wait_handlerINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE15timeout_handlerIS7_EES7_E3ptrD2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void

bb.d:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN5boost4asio6detail12wait_handlerINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE15timeout_handlerIS7_EES7_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZN5boost4asio6detail12wait_handlerINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE15timeout_handlerIS7_EES7_E3ptrD2Ev.exit13 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #38
  unreachable

_ZN5boost4asio6detail12wait_handlerINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE15timeout_handlerIS7_EES7_E3ptrD2Ev.exit13: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail12wait_handlerINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE15timeout_handlerIS7_EES7_E11do_completeEPvPNS1_19scheduler_operationERKNS_6system10error_codeEm(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3) #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::asio::detail::wait_handler<boost::beast::basic_stream<boost::asio::ip::tcp>::timeout_handler<boost::asio::any_io_executor>, boost::asio::any_io_executor>::ptr", align 8 ; 9 uses
  %5 = alloca %"class.boost::asio::detail::handler_work.233", align 8 ; 9 uses
  %6 = alloca %"class.boost::asio::detail::binder1.236", align 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !1167
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !1168
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 8 dereferenceable(112) %i.d) #37
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.f) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = load <2 x ptr>, ptr %i.a, align 8, !tbaa !641
  store <2 x ptr> %i.i, ptr %6, align 16, !tbaa !641
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !554
  store ptr %i.l, ptr %i.j, align 16, !tbaa !554
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1105
  store i64 %i.o, ptr %i.m, align 8, !tbaa !1105
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.q) #37
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !960
  store ptr %6, ptr %4, align 8, !tbaa !1166
  invoke void @_ZN5boost4asio6detail12wait_handlerINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE15timeout_handlerIS7_EES7_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !567
  %i.u = icmp ne ptr %i.t, null
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = icmp ne ptr %i.w, null
  %or.cond.i = select i1 %i.u, i1 true, i1 %i.x
  br i1 %or.cond.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE15timeout_handlerIS5_EclENS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %i.r)
  br label %_ZN5boost4asio6detail12handler_workINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE15timeout_handlerIS7_EES7_vE8completeINS1_7binder1ISB_NS_6system10error_codeEEEEEvRT_RSB_.exit

bb.e:                                             ; preds = %bb.c
  invoke void @_ZNK5boost4asio9execution6detail17any_executor_base7executeINS0_6detail7binder1INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS7_21unlimited_rate_policyEE15timeout_handlerISB_EENS_6system10error_codeEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %_ZN5boost4asio6detail12handler_workINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE15timeout_handlerIS7_EES7_vE8completeINS1_7binder1ISB_NS_6system10error_codeEEEEEvRT_RSB_.exit unwind label %bb.g

end_hunk_0
begin_hunk_1_@"_ZN5boost4asio6detail17executor_function8completeINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_6detail12buffers_pairILb1EEENS5_9websocket6streamISB_Lb1EE12read_some_opINSJ_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS5_17basic_flat_bufferISaIcEEEEENS0_14mutable_bufferEEEEENS_6system10error_codeEmEESaIvEEEvPNS2_9impl_baseEb":bb.a
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #37, !inline_history !98
  br label %"_ZN5boost4asio6detail7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE3ops11transfer_opILb1ENS3_6detail12buffers_pairILb1EEENS3_9websocket6streamIS9_Lb1EE12read_some_opINSH_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS3_17basic_flat_bufferISaIcEEEEENS0_14mutable_bufferEEEEENS_6system10error_codeEmED2Ev.exit"

"_ZN5boost4asio6detail7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE3ops11transfer_opILb1ENS3_6detail12buffers_pairILb1EEENS3_9websocket6streamIS9_Lb1EE12read_some_opINSH_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS3_17basic_flat_bufferISaIcEEEEENS0_14mutable_bufferEEEEENS_6system10error_codeEmED2Ev.exit": ; preds = %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i, %bb.i, %bb.j, %bb.k
  call void @"_ZN5boost5beast10async_baseINS0_9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS5_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE12read_some_opINSB_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS0_17basic_flat_bufferISaIcEEEEENS5_14mutable_bufferEEES8_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(564) dereferenceable(664) %4) #37, !inline_history !1192
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  invoke fastcc void @"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_6detail12buffers_pairILb1EEENS5_9websocket6streamISB_Lb1EE12read_some_opINSJ_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS5_17basic_flat_bufferISaIcEEEEENS0_14mutable_bufferEEEEENS_6system10error_codeEmEESaIvEE3ptr5resetEv"(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_6detail12buffers_pairILb1EEENS5_9websocket6streamISB_Lb1EE12read_some_opINSJ_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS5_17basic_flat_bufferISaIcEEEEENS0_14mutable_bufferEEEEENS_6system10error_codeEmEESaIvEE3ptrD2Ev.exit" unwind label %bb.l

bb.l:                                             ; preds = %"_ZN5boost4asio6detail7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE3ops11transfer_opILb1ENS3_6detail12buffers_pairILb1EEENS3_9websocket6streamIS9_Lb1EE12read_some_opINSH_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS3_17basic_flat_bufferISaIcEEEEENS0_14mutable_bufferEEEEENS_6system10error_codeEmED2Ev.exit"
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #38
  unreachable

"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_6detail12buffers_pairILb1EEENS5_9websocket6streamISB_Lb1EE12read_some_opINSJ_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS5_17basic_flat_bufferISaIcEEEEENS0_14mutable_bufferEEEEENS_6system10error_codeEmEESaIvEE3ptrD2Ev.exit": ; preds = %"_ZN5boost4asio6detail7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE3ops11transfer_opILb1ENS3_6detail12buffers_pairILb1EEENS3_9websocket6streamIS9_Lb1EE12read_some_opINSH_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS3_17basic_flat_bufferISaIcEEEEENS0_14mutable_bufferEEEEENS_6system10error_codeEmED2Ev.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void

bb.m:                                             ; preds = %bb.f
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #38
  unreachable

"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_6detail12buffers_pairILb1EEENS5_9websocket6streamISB_Lb1EE12read_some_opINSJ_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS5_17basic_flat_bufferISaIcEEEEENS0_14mutable_bufferEEEEENS_6system10error_codeEmEESaIvEE3ptrD2Ev.exit8": ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %i.ah
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_6detail12buffers_pairILb1EEENS5_9websocket6streamISB_Lb1EE12read_some_opINSJ_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS5_17basic_flat_bufferISaIcEEEEENS0_14mutable_bufferEEEEENS_6system10error_codeEmEESaIvEE3ptr5resetEv"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1229 ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE3ops11transfer_opILb1ENS0_6detail12buffers_pairILb1EEENS0_9websocket6streamIS7_Lb1EE12read_some_opINSF_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS0_17basic_flat_bufferISaIcEEEEENS2_14mutable_bufferEEEEE", i64 16), ptr %i.c, align 8, !tbaa !469
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 600
  %i.e = load i8, ptr %i.d, align 8, !tbaa !1012, !range !510, !noundef !511
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1011 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.h, align 1, !tbaa !882
  br label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i

_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 584
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !536  ; 7 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_6detail12buffers_pairILb1EEENS5_9websocket6streamISB_Lb1EE12read_some_opINSJ_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS5_17basic_flat_bufferISaIcEEEEENS0_14mutable_bufferEEEEENS_6system10error_codeEmEESaIvEED2Ev.exit", label %bb.e

bb.e:                                             ; preds = %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = atomicrmw sub ptr %i.k, i32 1 acq_rel, align 4
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.f, label %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_6detail12buffers_pairILb1EEENS5_9websocket6streamISB_Lb1EE12read_some_opINSJ_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS5_17basic_flat_bufferISaIcEEEEENS0_14mutable_bufferEEEEENS_6system10error_codeEmEESaIvEED2Ev.exit"

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !469
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #37, !inline_history !3592
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.r = atomicrmw sub ptr %i.q, i32 1 acq_rel, align 4
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.g, label %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_6detail12buffers_pairILb1EEENS5_9websocket6streamISB_Lb1EE12read_some_opINSJ_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS5_17basic_flat_bufferISaIcEEEEENS0_14mutable_bufferEEEEENS_6system10error_codeEmEESaIvEED2Ev.exit"

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !469
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #37, !inline_history !3593
  br label %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_6detail12buffers_pairILb1EEENS5_9websocket6streamISB_Lb1EE12read_some_opINSJ_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS5_17basic_flat_bufferISaIcEEEEENS0_14mutable_bufferEEEEENS_6system10error_codeEmEESaIvEED2Ev.exit"

"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_6detail12buffers_pairILb1EEENS5_9websocket6streamISB_Lb1EE12read_some_opINSJ_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS5_17basic_flat_bufferISaIcEEEEENS0_14mutable_bufferEEEEENS_6system10error_codeEmEESaIvEED2Ev.exit": ; preds = %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i, %bb.e, %bb.f, %bb.g
  tail call void @"_ZN5boost5beast10async_baseINS0_9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS5_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE12read_some_opINSB_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS0_17basic_flat_bufferISaIcEEEEENS5_14mutable_bufferEEES8_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(564) dereferenceable(664) %i.c) #37, !inline_history !1192
  store ptr null, ptr %i.a, align 8, !tbaa !1229
  br label %bb.h

bb.h:                                             ; preds = %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_6detail12buffers_pairILb1EEENS5_9websocket6streamISB_Lb1EE12read_some_opINSJ_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS5_17basic_flat_bufferISaIcEEEEENS0_14mutable_bufferEEEEENS_6system10error_codeEmEESaIvEED2Ev.exit", %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1230 ; 5 uses
  %.not1 = icmp eq ptr %i.x, null
  br i1 %.not1, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = tail call noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv() ; 4 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %.thread.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !641
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.j, label %.preheader.1.i.i

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !641
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.j, label %.thread.i.i

bb.j:                                             ; preds = %.preheader.1.i.i, %.preheader.preheader.i.i
  %.lcssa.i.i = phi i64 [ 4, %.preheader.preheader.i.i ], [ 5, %.preheader.1.i.i ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.lcssa.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 680
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !478
  store i8 %i.ah, ptr %i.x, align 1, !tbaa !478
  store ptr %i.x, ptr %i.af, align 8, !tbaa !641
  br label %"_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb1ENS6_6detail12buffers_pairILb1EEENS6_9websocket6streamISC_Lb1EE12read_some_opINSK_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS6_17basic_flat_bufferISaIcEEEEENS0_14mutable_bufferEEEEENS_6system10error_codeEmEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS10_m.exit"

.thread.i.i:                                      ; preds = %.preheader.1.i.i, %bb.i
  tail call void @free(ptr noundef nonnull %i.x) #37
  br label %"_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb1ENS6_6detail12buffers_pairILb1EEENS6_9websocket6streamISC_Lb1EE12read_some_opINSK_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS6_17basic_flat_bufferISaIcEEEEENS0_14mutable_bufferEEEEENS_6system10error_codeEmEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS10_m.exit"

"_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb1ENS6_6detail12buffers_pairILb1EEENS6_9websocket6streamISC_Lb1EE12read_some_opINSK_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS6_17basic_flat_bufferISaIcEEEEENS0_14mutable_bufferEEEEENS_6system10error_codeEmEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS10_m.exit": ; preds = %bb.j, %.thread.i.i
  store ptr null, ptr %i.w, align 8, !tbaa !1230
  br label %bb.k

bb.k:                                             ; preds = %"_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb1ENS6_6detail12buffers_pairILb1EEENS6_9websocket6streamISC_Lb1EE12read_some_opINSK_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS6_17basic_flat_bufferISaIcEEEEENS0_14mutable_bufferEEEEENS_6system10error_codeEmEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS10_m.exit", %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost4asio6detail28reactive_socket_recv_op_baseINS_5beast19buffers_prefix_viewINS3_6detail12buffers_pairILb1EEEEEE10do_performEPNS1_10reactor_opE(ptr noundef %0) #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::asio::detail::buffer_sequence_adapter.343", align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1032 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !980, !noalias !3603 ; 2 uses
  %.not.i = icmp eq ptr %i.a, %i.e
  br i1 %.not.i, label %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS4_6detail12buffers_pairILb1EEEEEEC2ERKS9_.exit, label %.lr.ph.split.i.preheader.i

.lr.ph.split.i.preheader.i:                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load i64, ptr %i.f, align 8, !tbaa !981, !noalias !3604
  br label %bb.b

.lr.ph.split.i.i:                                 ; preds = %bb.b
  %i.h = sub i64 %.sroa.43.08.i.i19, %.sroa.5.0.copyload.i.i.i
  %exitcond.not.i = icmp eq i64 %i.o, 64
  br i1 %exitcond.not.i, label %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS4_6detail12buffers_pairILb1EEEEEEC2ERKS9_.exit.loopexit, label %bb.b, !llvm.loop !3602

bb.b:                                             ; preds = %.lr.ph.split.i.preheader.i, %.lr.ph.split.i.i
  %.sroa.43.08.i.i19 = phi i64 [ %i.g, %.lr.ph.split.i.preheader.i ], [ %i.h, %.lr.ph.split.i.i ] ; 2 uses
  %.sroa.7.09.i.i18 = phi ptr [ %i.a, %.lr.ph.split.i.preheader.i ], [ %i.n, %.lr.ph.split.i.i ] ; 3 uses
  %i.i = phi i64 [ 0, %.lr.ph.split.i.preheader.i ], [ %i.o, %.lr.ph.split.i.i ] ; 2 uses
  %i.j = phi i64 [ 0, %.lr.ph.split.i.preheader.i ], [ %i.m, %.lr.ph.split.i.i ]
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.7.09.i.i18, align 8, !tbaa !641
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7.09.i.i18, i64 8
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !475 ; 2 uses
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.43.08.i.i19, i64 %.sroa.5.0.copyload.i.i.i) ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.i ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.k, align 8, !tbaa !641
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %spec.select.i.i.i, ptr %i.l, align 8, !tbaa !1153
  %i.m = add i64 %spec.select.i.i.i, %i.j         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.7.09.i.i18, i64 16 ; 2 uses
  %i.o = add nuw nsw i64 %i.i, 1                  ; 4 uses
  %.not.i.i = icmp eq ptr %i.n, %i.e
  br i1 %.not.i.i, label %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS4_6detail12buffers_pairILb1EEEEEEC2ERKS9_.exit.loopexit, label %.lr.ph.split.i.i, !llvm.loop !3602

_ZN5boost4asio6detail23buffer_sequence_adapterINS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS4_6detail12buffers_pairILb1EEEEEEC2ERKS9_.exit.loopexit: ; preds = %bb.b, %.lr.ph.split.i.i
  %.ph = phi i64 [ 64, %.lr.ph.split.i.i ], [ %i.o, %bb.b ]
  store i64 %i.m, ptr %i.c, align 8, !tbaa !3606
  store i64 %i.o, ptr %i.b, align 8, !tbaa !3607
  br label %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS4_6detail12buffers_pairILb1EEEEEEC2ERKS9_.exit

_ZN5boost4asio6detail23buffer_sequence_adapterINS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS4_6detail12buffers_pairILb1EEEEEEC2ERKS9_.exit: ; preds = %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS4_6detail12buffers_pairILb1EEEEEEC2ERKS9_.exit.loopexit, %bb.a
  %i.p = phi i64 [ 0, %bb.a ], [ %.ph, %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS4_6detail12buffers_pairILb1EEEEEEC2ERKS9_.exit.loopexit ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load i32, ptr %i.q, align 8, !tbaa !1215
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load i32, ptr %i.s, align 8, !tbaa !1217
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.v = load i8, ptr %i.u, align 4, !tbaa !1216
  %i.w = and i8 %i.v, 16
  %i.x = icmp ne i8 %i.w, 0
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aa = call noundef zeroext i1 @_ZN5boost4asio6detail10socket_ops17non_blocking_recvEiP5iovecmibRNS_6system10error_codeERm(i32 noundef %i.r, ptr noundef nonnull %1, i64 noundef %i.p, i32 noundef %i.t, i1 noundef zeroext %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  br i1 %i.aa, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS4_6detail12buffers_pairILb1EEEEEEC2ERKS9_.exit
  %i.ab = load i8, ptr %i.u, align 4, !tbaa !1216 ; 2 uses
  %i.ac = and i8 %i.ab, 16
  %.not = icmp eq i8 %i.ac, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load i64, ptr %i.z, align 8, !tbaa !1154
  %.not12 = icmp sgt i8 %i.ab, -1
  %i.ae = load i64, ptr %i.c, align 8
  %spec.select13 = select i1 %.not12, i64 1, i64 %i.ae
  %i.af = icmp ult i64 %i.ad, %spec.select13
  %spec.select = select i1 %i.af, i32 2, i32 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS4_6detail12buffers_pairILb1EEEEEEC2ERKS9_.exit
  %.0 = phi i32 [ 0, %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS4_6detail12buffers_pairILb1EEEEEEC2ERKS9_.exit ], [ %spec.select, %bb.d ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  ret i32 %.0
}

declare noundef zeroext i1 @_ZN5boost4asio6detail10socket_ops17non_blocking_recvEiP5iovecmibRNS_6system10error_codeERm(i32 noundef, ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail20cancellation_handlerINS_5beast6detail27filtering_cancellation_slotINS0_17cancellation_slotEE15handler_wrapperINS5_IS7_E15handler_wrapperINS5_IS9_E15handler_wrapperINS1_28reactive_socket_service_base23reactor_op_cancellationEEEEEEEE4callENS0_17cancellation_typeE(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1234
  %i.d = and i32 %i.c, %1
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN5boost5beast6detail27filtering_cancellation_slotINS_4asio17cancellation_slotEE15handler_wrapperINS2_IS5_E15handler_wrapperINS2_IS7_E15handler_wrapperINS3_6detail28reactive_socket_service_base23reactor_op_cancellationEEEEEEclENS3_17cancellation_typeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !1235
  %i.g = and i32 %i.f, %1
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %_ZN5boost5beast6detail27filtering_cancellation_slotINS_4asio17cancellation_slotEE15handler_wrapperINS2_IS5_E15handler_wrapperINS2_IS7_E15handler_wrapperINS3_6detail28reactive_socket_service_base23reactor_op_cancellationEEEEEEclENS3_17cancellation_typeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1236
  %i.j = and i32 %i.i, %1
  %.not.i.i.i = icmp eq i32 %i.j, 0
  %i.k = and i32 %1, 7
  %i.l = icmp eq i32 %i.k, 0
  %or.cond.i.i.i = or i1 %i.l, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5boost5beast6detail27filtering_cancellation_slotINS_4asio17cancellation_slotEE15handler_wrapperINS2_IS5_E15handler_wrapperINS2_IS7_E15handler_wrapperINS3_6detail28reactive_socket_service_base23reactor_op_cancellationEEEEEEclENS3_17cancellation_typeE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !1159
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !1160
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1161
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !1162
  tail call void @_ZN5boost4asio6detail13epoll_reactor17cancel_ops_by_keyEiRPNS2_16descriptor_stateEiPv(ptr noundef nonnull align 8 dereferenceable(152) %i.m, i32 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i32 noundef %i.s, ptr noundef nonnull align 8 dereferenceable(44) %i.a)
  br label %_ZN5boost5beast6detail27filtering_cancellation_slotINS_4asio17cancellation_slotEE15handler_wrapperINS2_IS5_E15handler_wrapperINS2_IS7_E15handler_wrapperINS3_6detail28reactive_socket_service_base23reactor_op_cancellationEEEEEEclENS3_17cancellation_typeE.exit

_ZN5boost5beast6detail27filtering_cancellation_slotINS_4asio17cancellation_slotEE15handler_wrapperINS2_IS5_E15handler_wrapperINS2_IS7_E15handler_wrapperINS3_6detail28reactive_socket_service_base23reactor_op_cancellationEEEEEEclENS3_17cancellation_typeE.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN5boost4asio6detail20cancellation_handlerINS_5beast6detail27filtering_cancellation_slotINS0_17cancellation_slotEE15handler_wrapperINS5_IS7_E15handler_wrapperINS5_IS9_E15handler_wrapperINS1_28reactive_socket_service_base23reactor_op_cancellationEEEEEEEE7destroyEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i64, ptr %i.a, align 8, !tbaa !475
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.b, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare void @_ZN5boost5beast9websocket6detail12mask_inplaceERKNS_4asio14mutable_bufferERSt5arrayIhLm4EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(4)) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef %0) local_unnamed_addr #33 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::length_error", align 8 ; 5 uses
  %2 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  store ptr @.str.67, ptr %2, align 8, !tbaa !901
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.68, ptr %i.a, align 8, !tbaa !902
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 1026, ptr %i.b, align 8, !tbaa !903
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 43, ptr %i.c, align 4, !tbaa !904
  invoke void @_ZN5boost15throw_exceptionISt12length_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #39
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  resume { ptr, i32 } %i.d
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = alloca [14 x i8], align 1                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.c = load i8, ptr %i.b, align 1               ; 6 uses
  %i.d = shl i8 %i.c, 7
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = load i8, ptr %i.e, align 4, !tbaa !1050
  %i.g = or i8 %i.d, %i.f
  %i.h = shl i8 %i.c, 4
  %i.i = and i8 %i.h, 64
  %spec.select = or i8 %i.g, %i.i
  %.4..4.gep27.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.10..10.gep28.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.j = shl i8 %i.c, 2
  %i.k = and i8 %i.j, 32
  %spec.select29 = or i8 %spec.select, %i.k
  %i.l = and i8 %i.c, 16
  %spec.select37 = or i8 %spec.select29, %i.l
  store i8 %spec.select37, ptr %i.a, align 1, !tbaa !478
  %i.m = shl i8 %i.c, 6                           ; 3 uses
  %i.n = load i64, ptr %1, align 8, !tbaa !1049   ; 5 uses
  %i.o = icmp ult i64 %i.n, 126
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.2..2.gep.sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.p = and i8 %i.m, -128
  %i.q = trunc nuw nsw i64 %i.n to i8
  %i.r = or disjoint i8 %i.p, %i.q
  %.1..1..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.r, ptr %.1..1..sroa_idx39, align 1, !tbaa !478
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.s = icmp ult i64 %i.n, 65536
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = or i8 %i.m, 126
  %.1..1..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.t, ptr %.1..1..sroa_idx38, align 1, !tbaa !478
  %i.u = trunc nuw i64 %i.n to i16
  %i.v = tail call noundef i16 @llvm.bswap.i16(i16 %i.u)
  %.2..2.gep.sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 %i.v, ptr %.2..2.gep.sroa_idx41, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.w = or i8 %i.m, 127
  %.1..1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.w, ptr %.1..1..sroa_idx, align 1, !tbaa !478
  %i.x = tail call noundef i64 @llvm.bswap.i64(i64 %i.n)
  %.2..2.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i64 %i.x, ptr %.2..2.gep.sroa_idx, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0.sroa.phi = phi ptr [ %.2..2.gep.sroa_idx40, %bb.b ], [ %.4..4.gep27.sroa_idx, %bb.d ], [ %.10..10.gep28.sroa_idx, %bb.e ]
  %.0 = phi i64 [ 2, %bb.b ], [ 4, %bb.d ], [ 10, %bb.e ] ; 2 uses
  %i.y = and i8 %i.c, 2
  %.not24 = icmp eq i8 %i.y, 0
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !1053
  store i32 %i.aa, ptr %.0.sroa.phi, align 1
  %i.ab = add nuw nsw i64 %.0, 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i64 [ %i.ab, %bb.g ], [ %.0, %bb.f ]
  %i.ac = tail call { ptr, i64 } @_ZN5boost5beast23flat_static_buffer_base7prepareEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %.1) ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ac, 1      ; 2 uses
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 14) ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferES2_EEmRKT_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = extractvalue { ptr, i64 } %i.ac, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr nonnull align 1 %i.a, i64 %i.ae, i1 false)
  br label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferES2_EEmRKT_RKT0_.exit

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferES2_EEmRKT_RKT0_.exit: ; preds = %bb.h, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1054
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !987 ; 2 uses
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.am, i64 %i.ae)
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sroa.speculated.i
  store ptr %i.an, ptr %i.ai, align 8, !tbaa !987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

declare { ptr, i64 } @_ZN5boost5beast23flat_static_buffer_base7prepareEm(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef) local_unnamed_addr #9

end_hunk_1
begin_hunk_2_@"_ZN5boost4asio6detail17executor_function8completeINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_19buffers_prefix_viewINS5_14buffers_suffixINS0_14mutable_bufferEEEEENS5_9websocket6streamISB_Lb1EE12read_some_opINSL_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS5_17basic_flat_bufferISaIcEEEEESG_EEEENS_6system10error_codeEmEESaIvEEEvPNS2_9impl_baseEb":bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE3ops11transfer_opILb1ENS0_19buffers_prefix_viewINS0_14buffers_suffixINS2_14mutable_bufferEEEEENS0_9websocket6streamIS7_Lb1EE12read_some_opINSH_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS0_17basic_flat_bufferISaIcEEEEESC_EEEE", i64 16), ptr %4, align 8, !tbaa !469
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 592
  %i.i = load i8, ptr %i.h, align 8, !tbaa !1012, !range !510, !noundef !511
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.e, label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i

bb.e:                                             ; preds = %"_ZN5boost4asio6detail7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE3ops11transfer_opILb1ENS3_19buffers_prefix_viewINS3_14buffers_suffixINS0_14mutable_bufferEEEEENS3_9websocket6streamIS9_Lb1EE12read_some_opINSJ_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS3_17basic_flat_bufferISaIcEEEEESE_EEEENS_6system10error_codeEmEclEv.exit"
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 584
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1011 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.l, align 1, !tbaa !882
  br label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i

_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i: ; preds = %bb.f, %bb.e, %"_ZN5boost4asio6detail7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE3ops11transfer_opILb1ENS3_19buffers_prefix_viewINS3_14buffers_suffixINS0_14mutable_bufferEEEEENS3_9websocket6streamIS9_Lb1EE12read_some_opINSJ_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS3_17basic_flat_bufferISaIcEEEEESE_EEEENS_6system10error_codeEmEclEv.exit"
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 576
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !536  ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %"_ZN5boost4asio6detail7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE3ops11transfer_opILb1ENS3_19buffers_prefix_viewINS3_14buffers_suffixINS0_14mutable_bufferEEEEENS3_9websocket6streamIS9_Lb1EE12read_some_opINSJ_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS3_17basic_flat_bufferISaIcEEEEESE_EEEENS_6system10error_codeEmED2Ev.exit", label %bb.g

bb.g:                                             ; preds = %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = atomicrmw sub ptr %i.o, i32 1 acq_rel, align 4
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.h, label %"_ZN5boost4asio6detail7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE3ops11transfer_opILb1ENS3_19buffers_prefix_viewINS3_14buffers_suffixINS0_14mutable_bufferEEEEENS3_9websocket6streamIS9_Lb1EE12read_some_opINSJ_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS3_17basic_flat_bufferISaIcEEEEESE_EEEENS_6system10error_codeEmED2Ev.exit"

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !469
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #37, !inline_history !122
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.v = atomicrmw sub ptr %i.u, i32 1 acq_rel, align 4
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.i, label %"_ZN5boost4asio6detail7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE3ops11transfer_opILb1ENS3_19buffers_prefix_viewINS3_14buffers_suffixINS0_14mutable_bufferEEEEENS3_9websocket6streamIS9_Lb1EE12read_some_opINSJ_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS3_17basic_flat_bufferISaIcEEEEESE_EEEENS_6system10error_codeEmED2Ev.exit"

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !469
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #37, !inline_history !123
  br label %"_ZN5boost4asio6detail7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE3ops11transfer_opILb1ENS3_19buffers_prefix_viewINS3_14buffers_suffixINS0_14mutable_bufferEEEEENS3_9websocket6streamIS9_Lb1EE12read_some_opINSJ_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS3_17basic_flat_bufferISaIcEEEEESE_EEEENS_6system10error_codeEmED2Ev.exit"

"_ZN5boost4asio6detail7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE3ops11transfer_opILb1ENS3_19buffers_prefix_viewINS3_14buffers_suffixINS0_14mutable_bufferEEEEENS3_9websocket6streamIS9_Lb1EE12read_some_opINSJ_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS3_17basic_flat_bufferISaIcEEEEESE_EEEENS_6system10error_codeEmED2Ev.exit": ; preds = %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i, %bb.g, %bb.h, %bb.i
  call void @"_ZN5boost5beast10async_baseINS0_9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS5_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE12read_some_opINSB_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS0_17basic_flat_bufferISaIcEEEEENS5_14mutable_bufferEEES8_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(564) dereferenceable(696) %4) #37, !inline_history !1306
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  invoke fastcc void @"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_19buffers_prefix_viewINS5_14buffers_suffixINS0_14mutable_bufferEEEEENS5_9websocket6streamISB_Lb1EE12read_some_opINSL_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS5_17basic_flat_bufferISaIcEEEEESG_EEEENS_6system10error_codeEmEESaIvEE3ptr5resetEv"(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_19buffers_prefix_viewINS5_14buffers_suffixINS0_14mutable_bufferEEEEENS5_9websocket6streamISB_Lb1EE12read_some_opINSL_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS5_17basic_flat_bufferISaIcEEEEESG_EEEENS_6system10error_codeEmEESaIvEE3ptrD2Ev.exit" unwind label %bb.j

bb.j:                                             ; preds = %"_ZN5boost4asio6detail7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE3ops11transfer_opILb1ENS3_19buffers_prefix_viewINS3_14buffers_suffixINS0_14mutable_bufferEEEEENS3_9websocket6streamIS9_Lb1EE12read_some_opINSJ_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS3_17basic_flat_bufferISaIcEEEEESE_EEEENS_6system10error_codeEmED2Ev.exit"
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #38
  unreachable

"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_19buffers_prefix_viewINS5_14buffers_suffixINS0_14mutable_bufferEEEEENS5_9websocket6streamISB_Lb1EE12read_some_opINSL_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS5_17basic_flat_bufferISaIcEEEEESG_EEEENS_6system10error_codeEmEESaIvEE3ptrD2Ev.exit": ; preds = %"_ZN5boost4asio6detail7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE3ops11transfer_opILb1ENS3_19buffers_prefix_viewINS3_14buffers_suffixINS0_14mutable_bufferEEEEENS3_9websocket6streamIS9_Lb1EE12read_some_opINSJ_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS3_17basic_flat_bufferISaIcEEEEESE_EEEENS_6system10error_codeEmED2Ev.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void

bb.k:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #38
  unreachable

"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_19buffers_prefix_viewINS5_14buffers_suffixINS0_14mutable_bufferEEEEENS5_9websocket6streamISB_Lb1EE12read_some_opINSL_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS5_17basic_flat_bufferISaIcEEEEESG_EEEENS_6system10error_codeEmEESaIvEE3ptrD2Ev.exit8": ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_19buffers_prefix_viewINS5_14buffers_suffixINS0_14mutable_bufferEEEEENS5_9websocket6streamISB_Lb1EE12read_some_opINSL_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS5_17basic_flat_bufferISaIcEEEEESG_EEEENS_6system10error_codeEmEESaIvEE3ptr5resetEv"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1334 ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE3ops11transfer_opILb1ENS0_19buffers_prefix_viewINS0_14buffers_suffixINS2_14mutable_bufferEEEEENS0_9websocket6streamIS7_Lb1EE12read_some_opINSH_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS0_17basic_flat_bufferISaIcEEEEESC_EEEE", i64 16), ptr %i.c, align 8, !tbaa !469
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 600
  %i.e = load i8, ptr %i.d, align 8, !tbaa !1012, !range !510, !noundef !511
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1011 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.h, align 1, !tbaa !882
  br label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i

_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 584
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !536  ; 7 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_19buffers_prefix_viewINS5_14buffers_suffixINS0_14mutable_bufferEEEEENS5_9websocket6streamISB_Lb1EE12read_some_opINSL_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS5_17basic_flat_bufferISaIcEEEEESG_EEEENS_6system10error_codeEmEESaIvEED2Ev.exit", label %bb.e

bb.e:                                             ; preds = %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = atomicrmw sub ptr %i.k, i32 1 acq_rel, align 4
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.f, label %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_19buffers_prefix_viewINS5_14buffers_suffixINS0_14mutable_bufferEEEEENS5_9websocket6streamISB_Lb1EE12read_some_opINSL_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS5_17basic_flat_bufferISaIcEEEEESG_EEEENS_6system10error_codeEmEESaIvEED2Ev.exit"

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !469
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #37, !inline_history !4001
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.r = atomicrmw sub ptr %i.q, i32 1 acq_rel, align 4
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.g, label %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_19buffers_prefix_viewINS5_14buffers_suffixINS0_14mutable_bufferEEEEENS5_9websocket6streamISB_Lb1EE12read_some_opINSL_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS5_17basic_flat_bufferISaIcEEEEESG_EEEENS_6system10error_codeEmEESaIvEED2Ev.exit"

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !469
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #37, !inline_history !4002
  br label %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_19buffers_prefix_viewINS5_14buffers_suffixINS0_14mutable_bufferEEEEENS5_9websocket6streamISB_Lb1EE12read_some_opINSL_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS5_17basic_flat_bufferISaIcEEEEESG_EEEENS_6system10error_codeEmEESaIvEED2Ev.exit"

"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_19buffers_prefix_viewINS5_14buffers_suffixINS0_14mutable_bufferEEEEENS5_9websocket6streamISB_Lb1EE12read_some_opINSL_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS5_17basic_flat_bufferISaIcEEEEESG_EEEENS_6system10error_codeEmEESaIvEED2Ev.exit": ; preds = %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i, %bb.e, %bb.f, %bb.g
  tail call void @"_ZN5boost5beast10async_baseINS0_9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS5_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE12read_some_opINSB_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS0_17basic_flat_bufferISaIcEEEEENS5_14mutable_bufferEEES8_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(564) dereferenceable(696) %i.c) #37, !inline_history !1306
  store ptr null, ptr %i.a, align 8, !tbaa !1334
  br label %bb.h

bb.h:                                             ; preds = %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_19buffers_prefix_viewINS5_14buffers_suffixINS0_14mutable_bufferEEEEENS5_9websocket6streamISB_Lb1EE12read_some_opINSL_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS5_17basic_flat_bufferISaIcEEEEESG_EEEENS_6system10error_codeEmEESaIvEED2Ev.exit", %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1335 ; 5 uses
  %.not1 = icmp eq ptr %i.x, null
  br i1 %.not1, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = tail call noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv() ; 4 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %.thread.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !641
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.j, label %.preheader.1.i.i

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !641
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.j, label %.thread.i.i

bb.j:                                             ; preds = %.preheader.1.i.i, %.preheader.preheader.i.i
  %.lcssa.i.i = phi i64 [ 4, %.preheader.preheader.i.i ], [ 5, %.preheader.1.i.i ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.lcssa.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 712
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !478
  store i8 %i.ah, ptr %i.x, align 1, !tbaa !478
  store ptr %i.x, ptr %i.af, align 8, !tbaa !641
  br label %"_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb1ENS6_19buffers_prefix_viewINS6_14buffers_suffixINS0_14mutable_bufferEEEEENS6_9websocket6streamISC_Lb1EE12read_some_opINSM_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS6_17basic_flat_bufferISaIcEEEEESH_EEEENS_6system10error_codeEmEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS11_m.exit"

.thread.i.i:                                      ; preds = %.preheader.1.i.i, %bb.i
  tail call void @free(ptr noundef nonnull %i.x) #37
  br label %"_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb1ENS6_19buffers_prefix_viewINS6_14buffers_suffixINS0_14mutable_bufferEEEEENS6_9websocket6streamISC_Lb1EE12read_some_opINSM_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS6_17basic_flat_bufferISaIcEEEEESH_EEEENS_6system10error_codeEmEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS11_m.exit"

"_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb1ENS6_19buffers_prefix_viewINS6_14buffers_suffixINS0_14mutable_bufferEEEEENS6_9websocket6streamISC_Lb1EE12read_some_opINSM_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS6_17basic_flat_bufferISaIcEEEEESH_EEEENS_6system10error_codeEmEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS11_m.exit": ; preds = %bb.j, %.thread.i.i
  store ptr null, ptr %i.w, align 8, !tbaa !1335
  br label %bb.k

bb.k:                                             ; preds = %"_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb1ENS6_19buffers_prefix_viewINS6_14buffers_suffixINS0_14mutable_bufferEEEEENS6_9websocket6streamISC_Lb1EE12read_some_opINSM_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_0NS6_17basic_flat_bufferISaIcEEEEESH_EEEENS_6system10error_codeEmEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS11_m.exit", %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost4asio6detail28reactive_socket_recv_op_baseINS_5beast19buffers_prefix_viewINS4_INS3_14buffers_suffixINS0_14mutable_bufferEEEEEEEE10do_performEPNS1_10reactor_opE(ptr noundef %0) #5 comdat align 2 {
bb.a:
  %1 = alloca %"class.boost::asio::detail::buffer_sequence_adapter.462", align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS5_INS4_14buffers_suffixIS3_EEEEEEEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(1040) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1337
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1341
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = load i32, ptr %i.f, align 8, !tbaa !1339
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !1338
  %i.j = and i8 %i.i, 16
  %i.k = icmp ne i8 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = call noundef zeroext i1 @_ZN5boost4asio6detail10socket_ops17non_blocking_recvEiP5iovecmibRNS_6system10error_codeERm(i32 noundef %i.c, ptr noundef nonnull %1, i64 noundef %i.e, i32 noundef %i.g, i1 noundef zeroext %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  br i1 %i.n, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.o = load i8, ptr %i.h, align 4, !tbaa !1338  ; 2 uses
  %i.p = and i8 %i.o, 16
  %.not = icmp eq i8 %i.p, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.m, align 8, !tbaa !1154
  %.not12 = icmp sgt i8 %i.o, -1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %i.s = load i64, ptr %i.r, align 8
  %i.t = select i1 %.not12, i64 1, i64 %i.s
  %i.u = icmp ult i64 %i.q, %i.t
  %spec.select = select i1 %i.u, i32 2, i32 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS5_INS4_14buffers_suffixIS3_EEEEEEEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1326, !noalias !4014 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1005, !noalias !4015 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !955, !noalias !4015 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.3.sroa.0.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !1327
  %.sroa.3.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.3.sroa.3.0.copyload = load ptr, ptr %.sroa.3.sroa.3.0..sroa_idx, align 8, !tbaa !1000 ; 2 uses
  %.sroa.3.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.3.sroa.4.0.copyload = load ptr, ptr %.sroa.3.sroa.4.0..sroa_idx, align 8, !tbaa !1002
  %i.j = icmp eq ptr %1, %.sroa.3.sroa.0.0.copyload
  %.sroa.3.sroa.4.0.copyload.fr = freeze ptr %.sroa.3.sroa.4.0.copyload
  %i.k = icmp ne ptr %1, %.sroa.3.sroa.4.0.copyload.fr ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.j, label %.split.us.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  br label %.lr.ph.i

.split.us.i:                                      ; preds = %bb.a
  %i.n = icmp ne ptr %i.h, %.sroa.3.sroa.3.0.copyload
  %.not3.i.us16.i = select i1 %i.k, i1 true, i1 %i.n
  br i1 %.not3.i.us16.i, label %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratorneERKS8_.exit.thread.us.i.preheader, label %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS5_INS4_14buffers_suffixIS3_EEEEEEE4initINS9_14const_iteratorEEEvT_SD_.exit

_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratorneERKS8_.exit.thread.us.i.preheader: ; preds = %.split.us.i
  %i.o = load i64, ptr %i.l, align 8              ; 4 uses
  br i1 %i.k, label %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratordeEv.exit.us.i.us, label %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratordeEv.exit.us.i

_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratordeEv.exit.us.i.us: ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratorneERKS8_.exit.thread.us.i.preheader, %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratordeEv.exit.us.i.us
  %i.p = phi ptr [ %i.x, %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratordeEv.exit.us.i.us ], [ %i.h, %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratorneERKS8_.exit.thread.us.i.preheader ]
  %.sroa.12.0.us17.i.us17 = phi ptr [ %i.w, %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratordeEv.exit.us.i.us ], [ %i.h, %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratorneERKS8_.exit.thread.us.i.preheader ] ; 5 uses
  %.sroa.8.0.us18.i.us16 = phi i64 [ %.sroa.8.1.us.i.us, %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratordeEv.exit.us.i.us ], [ %i.f, %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratorneERKS8_.exit.thread.us.i.preheader ] ; 3 uses
  %.sroa.46.0.us19.i.us15 = phi i64 [ %i.aa, %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratordeEv.exit.us.i.us ], [ %i.d, %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratorneERKS8_.exit.thread.us.i.preheader ] ; 2 uses
  %i.q = phi i64 [ %i.ab, %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratordeEv.exit.us.i.us ], [ 0, %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratorneERKS8_.exit.thread.us.i.preheader ] ; 2 uses
  %i.r = phi i64 [ %i.v, %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratordeEv.exit.us.i.us ], [ 0, %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratorneERKS8_.exit.thread.us.i.preheader ]
  %i.s = icmp eq ptr %.sroa.12.0.us17.i.us17, %i.p
  %.sroa.0.0.copyload1.i.i.i.us.i.us = load ptr, ptr %.sroa.12.0.us17.i.us17, align 8, !tbaa !641
  %.sroa.4.0..sroa_idx.i.i.i.us.i.us = getelementptr inbounds nuw i8, ptr %.sroa.12.0.us17.i.us17, i64 8 ; 2 uses
  %.sroa.4.0.copyload.i.i.i.us.i.us = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.us.i.us, align 8, !tbaa !475 ; 2 uses
  %spec.select.i.i.i.i.us.i.us = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %.sroa.4.0.copyload.i.i.i.us.i.us)
  %.pn3.i.i.i.us.i.us.idx = select i1 %i.s, i64 %spec.select.i.i.i.i.us.i.us, i64 0 ; 2 uses
  %.pn3.i.i.i.us.i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i.i.us.i.us, i64 %.pn3.i.i.i.us.i.us.idx
  %.pn.i.i.i.us.i.us = sub i64 %.sroa.4.0.copyload.i.i.i.us.i.us, %.pn3.i.i.i.us.i.us.idx
  %spec.select.i.i.us.i.us = tail call i64 @llvm.umin.i64(i64 %.sroa.8.0.us18.i.us16, i64 %.pn.i.i.i.us.i.us)
  %spec.select.i.us.i.us = tail call i64 @llvm.umin.i64(i64 %.sroa.46.0.us19.i.us15, i64 %spec.select.i.i.us.i.us) ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.q ; 2 uses
  store ptr %.pn3.i.i.i.us.i.us, ptr %i.t, align 8, !tbaa !641
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %spec.select.i.us.i.us, ptr %i.u, align 8, !tbaa !1153
  %i.v = add i64 %i.r, %spec.select.i.us.i.us     ; 2 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !4016
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.12.0.us17.i.us17, i64 16
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !955, !noalias !4017 ; 2 uses
  %i.y = icmp eq ptr %.sroa.12.0.us17.i.us17, %i.x
  %.sroa.4.0.copyload.i.i.i2.us.i.us = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.us.i.us, align 8, !tbaa !475, !noalias !4017 ; 2 uses
  %i.z = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i.i.i2.us.i.us, i64 %i.o)
  %.pn.i.i3.i.us.i.us = select i1 %i.y, i64 %i.z, i64 %.sroa.4.0.copyload.i.i.i2.us.i.us ; 2 uses
  %.sroa.8.1.us.i.us = sub i64 %.sroa.8.0.us18.i.us16, %.pn.i.i3.i.us.i.us
  %spec.select.i.i3.us.i.us = tail call i64 @llvm.umin.i64(i64 %.sroa.8.0.us18.i.us16, i64 %.pn.i.i3.i.us.i.us)
  %i.aa = sub i64 %.sroa.46.0.us19.i.us15, %spec.select.i.i3.us.i.us
  %i.ab = add nuw nsw i64 %i.q, 1                 ; 3 uses
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !1341
  %exitcond21.not = icmp eq i64 %i.ab, 64
  br i1 %exitcond21.not, label %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS5_INS4_14buffers_suffixIS3_EEEEEEE4initINS9_14const_iteratorEEEvT_SD_.exit, label %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratordeEv.exit.us.i.us

_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratorneERKS8_.exit.thread.us.i: ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratordeEv.exit.us.i
  %i.ac = icmp eq ptr %.sroa.12.0.us17.i30, %i.an
  %i.ad = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i.i.i2.us.i, i64 %i.o)
  %.pn.i.i3.i.us.i = select i1 %i.ac, i64 %i.ad, i64 %.sroa.4.0.copyload.i.i.i2.us.i ; 2 uses
  %.sroa.8.1.us.i = sub i64 %.sroa.8.0.us18.i29, %.pn.i.i3.i.us.i
  %spec.select.i.i3.us.i = tail call i64 @llvm.umin.i64(i64 %.sroa.8.0.us18.i29, i64 %.pn.i.i3.i.us.i)
  %i.ae = sub i64 %.sroa.46.0.us19.i28, %spec.select.i.i3.us.i
  %exitcond.not = icmp eq i64 %i.ao, 64
  br i1 %exitcond.not, label %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS5_INS4_14buffers_suffixIS3_EEEEEEE4initINS9_14const_iteratorEEEvT_SD_.exit, label %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratordeEv.exit.us.i, !llvm.loop !4013

_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratordeEv.exit.us.i: ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratorneERKS8_.exit.thread.us.i.preheader, %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratorneERKS8_.exit.thread.us.i
  %.sroa.12.0.us17.i30 = phi ptr [ %i.am, %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratorneERKS8_.exit.thread.us.i ], [ %i.h, %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratorneERKS8_.exit.thread.us.i.preheader ] ; 5 uses
  %.sroa.8.0.us18.i29 = phi i64 [ %.sroa.8.1.us.i, %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratorneERKS8_.exit.thread.us.i ], [ %i.f, %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratorneERKS8_.exit.thread.us.i.preheader ] ; 3 uses
  %.sroa.46.0.us19.i28 = phi i64 [ %i.ae, %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratorneERKS8_.exit.thread.us.i ], [ %i.d, %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratorneERKS8_.exit.thread.us.i.preheader ] ; 2 uses
  %i.af = phi i64 [ %i.ao, %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratorneERKS8_.exit.thread.us.i ], [ 0, %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratorneERKS8_.exit.thread.us.i.preheader ] ; 2 uses
  %i.ag = phi ptr [ %i.an, %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratorneERKS8_.exit.thread.us.i ], [ %i.h, %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratorneERKS8_.exit.thread.us.i.preheader ]
  %i.ah = phi i64 [ %i.al, %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratorneERKS8_.exit.thread.us.i ], [ 0, %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratorneERKS8_.exit.thread.us.i.preheader ]
  %i.ai = icmp eq ptr %.sroa.12.0.us17.i30, %i.ag
  %.sroa.0.0.copyload1.i.i.i.us.i = load ptr, ptr %.sroa.12.0.us17.i30, align 8, !tbaa !641
  %.sroa.4.0..sroa_idx.i.i.i.us.i = getelementptr inbounds nuw i8, ptr %.sroa.12.0.us17.i30, i64 8 ; 2 uses
  %.sroa.4.0.copyload.i.i.i.us.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.us.i, align 8, !tbaa !475 ; 2 uses
  %spec.select.i.i.i.i.us.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %.sroa.4.0.copyload.i.i.i.us.i)
  %.pn3.i.i.i.us.i.idx = select i1 %i.ai, i64 %spec.select.i.i.i.i.us.i, i64 0 ; 2 uses
  %.pn3.i.i.i.us.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i.i.us.i, i64 %.pn3.i.i.i.us.i.idx
  %.pn.i.i.i.us.i = sub i64 %.sroa.4.0.copyload.i.i.i.us.i, %.pn3.i.i.i.us.i.idx
  %spec.select.i.i.us.i = tail call i64 @llvm.umin.i64(i64 %.sroa.8.0.us18.i29, i64 %.pn.i.i.i.us.i)
  %spec.select.i.us.i = tail call i64 @llvm.umin.i64(i64 %.sroa.46.0.us19.i28, i64 %spec.select.i.i.us.i) ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.af ; 2 uses
  store ptr %.pn3.i.i.i.us.i, ptr %i.aj, align 8, !tbaa !641
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %spec.select.i.us.i, ptr %i.ak, align 8, !tbaa !1153
  %i.al = add i64 %i.ah, %spec.select.i.us.i      ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !4016
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.12.0.us17.i30, i64 16 ; 2 uses
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !955, !noalias !4017 ; 2 uses
  %.sroa.4.0.copyload.i.i.i2.us.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.us.i, align 8, !tbaa !475, !noalias !4017 ; 2 uses
  %i.ao = add nuw nsw i64 %i.af, 1                ; 3 uses
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !1341
  %.not = icmp eq ptr %i.am, %.sroa.3.sroa.3.0.copyload
  br i1 %.not, label %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS5_INS4_14buffers_suffixIS3_EEEEEEE4initINS9_14const_iteratorEEEvT_SD_.exit, label %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratorneERKS8_.exit.thread.us.i, !llvm.loop !4013

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ap = phi ptr [ %i.ax, %.lr.ph.i ], [ %i.h, %.lr.ph.i.preheader ]
  %i.aq = phi i64 [ %i.av, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.ar = phi i64 [ %i.bb, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.46.014.i = phi i64 [ %i.ba, %.lr.ph.i ], [ %i.d, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.8.013.i = phi i64 [ %.sroa.8.1.i, %.lr.ph.i ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.12.012.i = phi ptr [ %i.aw, %.lr.ph.i ], [ %i.h, %.lr.ph.i.preheader ] ; 5 uses
  %i.as = icmp eq ptr %.sroa.12.012.i, %i.ap
  %.sroa.0.0.copyload1.i.i.i.i = load ptr, ptr %.sroa.12.012.i, align 8, !tbaa !641
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.12.012.i, i64 8 ; 2 uses
  %.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !475 ; 2 uses
  %spec.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %.sroa.4.0.copyload.i.i.i.i)
  %.pn3.i.i.i.i.idx = select i1 %i.as, i64 %spec.select.i.i.i.i.i, i64 0 ; 2 uses
  %.pn3.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i.i.i, i64 %.pn3.i.i.i.i.idx
  %.pn.i.i.i.i = sub i64 %.sroa.4.0.copyload.i.i.i.i, %.pn3.i.i.i.i.idx
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.8.013.i, i64 %.pn.i.i.i.i)
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.46.014.i, i64 %spec.select.i.i.i) ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ar ; 2 uses
  store ptr %.pn3.i.i.i.i, ptr %i.at, align 8, !tbaa !641
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %spec.select.i.i, ptr %i.au, align 8, !tbaa !1153
  %i.av = add i64 %spec.select.i.i, %i.aq         ; 2 uses
  store i64 %i.av, ptr %i.b, align 8, !tbaa !4016
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.12.012.i, i64 16
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !955, !noalias !4017 ; 2 uses
  %i.ay = icmp eq ptr %.sroa.12.012.i, %i.ax
  %.sroa.4.0.copyload.i.i.i2.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !475, !noalias !4017 ; 2 uses
  %i.az = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i.i.i2.i, i64 %i.m)
  %.pn.i.i3.i.i = select i1 %i.ay, i64 %i.az, i64 %.sroa.4.0.copyload.i.i.i2.i ; 2 uses
  %.sroa.8.1.i = sub i64 %.sroa.8.013.i, %.pn.i.i3.i.i
  %spec.select.i.i3.i = tail call i64 @llvm.umin.i64(i64 %.sroa.8.013.i, i64 %.pn.i.i3.i.i)
  %i.ba = sub i64 %.sroa.46.014.i, %spec.select.i.i3.i
  %i.bb = add nuw nsw i64 %i.ar, 1                ; 3 uses
  store i64 %i.bb, ptr %i.a, align 8, !tbaa !1341
  %exitcond.not.i = icmp eq i64 %i.bb, 64
  br i1 %exitcond.not.i, label %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS5_INS4_14buffers_suffixIS3_EEEEEEE4initINS9_14const_iteratorEEEvT_SD_.exit, label %.lr.ph.i, !llvm.loop !4013

_ZN5boost4asio6detail23buffer_sequence_adapterINS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS5_INS4_14buffers_suffixIS3_EEEEEEE4initINS9_14const_iteratorEEEvT_SD_.exit: ; preds = %.lr.ph.i, %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratordeEv.exit.us.i, %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratorneERKS8_.exit.thread.us.i, %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEE14const_iteratordeEv.exit.us.i.us, %.split.us.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS_4asio14mutable_bufferEEEEEEC2EmRKS6_(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !955  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !1000 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !1002
  %.sroa.2.0.copyload.fr.i = freeze ptr %.sroa.2.0.copyload.i
  %i.d = icmp ne ptr %2, %.sroa.2.0.copyload.fr.i ; 2 uses
  %i.e = icmp ne ptr %i.b, %.sroa.0.0.copyload.i
  %.not3.i4.i.i = select i1 %i.d, i1 true, i1 %i.e
  br i1 %.not3.i4.i.i, label %.lr.ph.i.i, label %_ZSt10__distanceIN5boost5beast14buffers_suffixINS0_4asio14mutable_bufferEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.f = ptrtoaddr ptr %.sroa.0.0.copyload.i to i64
  %i.g = ptrtoaddr ptr %i.b to i64
  %i.h = xor i1 %i.d, true
  tail call void @llvm.assume(i1 %i.h)
  %reass.sub.i = sub i64 %i.f, %i.g
  %i.i = and i64 %reass.sub.i, -16
  br label %_ZSt10__distanceIN5boost5beast14buffers_suffixINS0_4asio14mutable_bufferEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i

_ZSt10__distanceIN5boost5beast14buffers_suffixINS0_4asio14mutable_bufferEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  %.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.i, %.lr.ph.i.i ] ; 3 uses
  %i.j = ptrtoint ptr %i.b to i64
  %i.k = ptrtoint ptr %2 to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !998
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.l ; 5 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !955
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !999  ; 3 uses
end_hunk_2
begin_hunk_3_@"_ZN5boost4asio6detail17executor_function8completeINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_19buffers_prefix_viewINS5_14buffers_suffixINS5_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEENS5_9websocket6streamISB_Lb1EE12read_some_opINSP_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_1SI_EESK_EEEENS_6system10error_codeEmEESaIvEEEvPNS2_9impl_baseEb":bb.a
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #38
  unreachable

"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_19buffers_prefix_viewINS5_14buffers_suffixINS5_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEENS5_9websocket6streamISB_Lb1EE12read_some_opINSP_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_1SI_EESK_EEEENS_6system10error_codeEmEESaIvEE3ptrD2Ev.exit": ; preds = %"_ZN5boost4asio6detail7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEE3ops11transfer_opILb1ENS3_19buffers_prefix_viewINS3_14buffers_suffixINS3_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEENS3_9websocket6streamIS9_Lb1EE12read_some_opINSN_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_1SG_EESI_EEEENS_6system10error_codeEmED2Ev.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void

bb.m:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.j, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  invoke fastcc void @"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_19buffers_prefix_viewINS5_14buffers_suffixINS5_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEENS5_9websocket6streamISB_Lb1EE12read_some_opINSP_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_1SI_EESK_EEEENS_6system10error_codeEmEESaIvEE3ptr5resetEv"(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_19buffers_prefix_viewINS5_14buffers_suffixINS5_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEENS5_9websocket6streamISB_Lb1EE12read_some_opINSP_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_1SI_EESK_EEEENS_6system10error_codeEmEESaIvEE3ptrD2Ev.exit8" unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #38
  unreachable

"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_19buffers_prefix_viewINS5_14buffers_suffixINS5_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEENS5_9websocket6streamISB_Lb1EE12read_some_opINSP_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_1SI_EESK_EEEENS_6system10error_codeEmEESaIvEE3ptrD2Ev.exit8": ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_19buffers_prefix_viewINS5_14buffers_suffixINS5_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEENS5_9websocket6streamISB_Lb1EE12read_some_opINSP_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_1SI_EESK_EEEENS_6system10error_codeEmEESaIvEE3ptr5resetEv"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1516 ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE3ops11transfer_opILb1ENS0_19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEENS0_9websocket6streamIS7_Lb1EE12read_some_opINSL_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_1SE_EESG_EEEE", i64 16), ptr %i.c, align 8, !tbaa !469
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 656
  %i.e = load i8, ptr %i.d, align 8, !tbaa !1012, !range !510, !noundef !511
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 648
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1011 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.h, align 1, !tbaa !882
  br label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i

_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !536  ; 7 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_19buffers_prefix_viewINS5_14buffers_suffixINS5_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEENS5_9websocket6streamISB_Lb1EE12read_some_opINSP_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_1SI_EESK_EEEENS_6system10error_codeEmEESaIvEED2Ev.exit", label %bb.e

bb.e:                                             ; preds = %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = atomicrmw sub ptr %i.k, i32 1 acq_rel, align 4
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.f, label %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_19buffers_prefix_viewINS5_14buffers_suffixINS5_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEENS5_9websocket6streamISB_Lb1EE12read_some_opINSP_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_1SI_EESK_EEEENS_6system10error_codeEmEESaIvEED2Ev.exit"

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !469
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #37, !inline_history !5256
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.r = atomicrmw sub ptr %i.q, i32 1 acq_rel, align 4
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.g, label %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_19buffers_prefix_viewINS5_14buffers_suffixINS5_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEENS5_9websocket6streamISB_Lb1EE12read_some_opINSP_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_1SI_EESK_EEEENS_6system10error_codeEmEESaIvEED2Ev.exit"

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !469
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #37, !inline_history !5257
  br label %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_19buffers_prefix_viewINS5_14buffers_suffixINS5_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEENS5_9websocket6streamISB_Lb1EE12read_some_opINSP_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_1SI_EESK_EEEENS_6system10error_codeEmEESaIvEED2Ev.exit"

"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_19buffers_prefix_viewINS5_14buffers_suffixINS5_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEENS5_9websocket6streamISB_Lb1EE12read_some_opINSP_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_1SI_EESK_EEEENS_6system10error_codeEmEESaIvEED2Ev.exit": ; preds = %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i, %bb.e, %bb.f, %bb.g
  tail call void @"_ZN5boost5beast10async_baseINS0_9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS5_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE12read_some_opINSB_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_1NS0_18basic_multi_bufferISaIcEEEEENSI_8subrangeILb1EEEEES8_SaIvEED2Ev"(ptr noundef nonnull align 8 dead_on_return(620) dereferenceable(792) %i.c) #37, !inline_history !1482
  store ptr null, ptr %i.a, align 8, !tbaa !1516
  br label %bb.h

bb.h:                                             ; preds = %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb1ENS5_19buffers_prefix_viewINS5_14buffers_suffixINS5_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEENS5_9websocket6streamISB_Lb1EE12read_some_opINSP_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_1SI_EESK_EEEENS_6system10error_codeEmEESaIvEED2Ev.exit", %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1515 ; 5 uses
  %.not1 = icmp eq ptr %i.x, null
  br i1 %.not1, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = tail call noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv() ; 4 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %.thread.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !641
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.j, label %.preheader.1.i.i

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !641
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.j, label %.thread.i.i

bb.j:                                             ; preds = %.preheader.1.i.i, %.preheader.preheader.i.i
  %.lcssa.i.i = phi i64 [ 4, %.preheader.preheader.i.i ], [ 5, %.preheader.1.i.i ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.lcssa.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 808
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !478
  store i8 %i.ah, ptr %i.x, align 1, !tbaa !478
  store ptr %i.x, ptr %i.af, align 8, !tbaa !641
  br label %"_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb1ENS6_19buffers_prefix_viewINS6_14buffers_suffixINS6_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEENS6_9websocket6streamISC_Lb1EE12read_some_opINSQ_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_1SJ_EESL_EEEENS_6system10error_codeEmEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS12_m.exit"

.thread.i.i:                                      ; preds = %.preheader.1.i.i, %bb.i
  tail call void @free(ptr noundef nonnull %i.x) #37
  br label %"_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb1ENS6_19buffers_prefix_viewINS6_14buffers_suffixINS6_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEENS6_9websocket6streamISC_Lb1EE12read_some_opINSQ_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_1SJ_EESL_EEEENS_6system10error_codeEmEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS12_m.exit"

"_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb1ENS6_19buffers_prefix_viewINS6_14buffers_suffixINS6_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEENS6_9websocket6streamISC_Lb1EE12read_some_opINSQ_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_1SJ_EESL_EEEENS_6system10error_codeEmEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS12_m.exit": ; preds = %bb.j, %.thread.i.i
  store ptr null, ptr %i.w, align 8, !tbaa !1515
  br label %bb.k

bb.k:                                             ; preds = %"_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb1ENS6_19buffers_prefix_viewINS6_14buffers_suffixINS6_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEENS6_9websocket6streamISC_Lb1EE12read_some_opINSQ_7read_opIZN12_GLOBAL__N_18snippetsEvE3$_1SJ_EESL_EEEENS_6system10error_codeEmEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS12_m.exit", %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost4asio6detail28reactive_socket_recv_op_baseINS_5beast19buffers_prefix_viewINS4_INS3_14buffers_suffixINS3_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEEEE10do_performEPNS1_10reactor_opE(ptr noundef %0) #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::beast::buffers_prefix_view<boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::beast::basic_multi_buffer<std::allocator<char>>::subrange<true>>>>::const_iterator", align 8 ; 9 uses
  %2 = alloca %"class.boost::beast::buffers_prefix_view<boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::beast::basic_multi_buffer<std::allocator<char>>::subrange<true>>>>::const_iterator", align 8 ; 8 uses
  %3 = alloca %"class.boost::asio::detail::buffer_sequence_adapter.704", align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 1024 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5275)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %1, align 8, !tbaa !1519, !alias.scope !5276
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1503, !noalias !5276
  store i64 %i.e, ptr %i.c, align 8, !tbaa !5277, !alias.scope !5276
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5279)
  store ptr %i.a, ptr %i.f, align 8, !tbaa !1500, !alias.scope !5280
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1378, !noalias !5280
  store i64 %i.i, ptr %i.g, align 8, !tbaa !1501, !alias.scope !5280
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5282)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = load <2 x ptr>, ptr %i.k, align 8, !tbaa !641, !noalias !5283
  store <2 x ptr> %i.l, ptr %i.j, align 8, !tbaa !641, !alias.scope !5283
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.a, ptr %i.m, align 8, !tbaa !1376, !alias.scope !5283
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5285)
  store ptr %i.a, ptr %2, align 8, !tbaa !1519, !alias.scope !5286
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.p = load i64, ptr %i.o, align 8, !tbaa !1520, !noalias !5286
  store i64 %i.p, ptr %i.n, align 8, !tbaa !5277, !alias.scope !5286
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.u = load <2 x ptr>, ptr %i.t, align 8, !tbaa !641, !noalias !5286
  store <2 x ptr> %i.u, ptr %i.s, align 8, !tbaa !641, !alias.scope !5286
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1376, !noalias !5286
  store ptr %i.x, ptr %i.v, align 8, !tbaa !1376, !alias.scope !5286
  call void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS5_INS4_14buffers_suffixINS4_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEEEE4initINSE_14const_iteratorEEEvT_SI_(ptr noundef nonnull align 8 dereferenceable(1040) %3, ptr noundef nonnull align 8 dead_on_return %1, ptr noundef nonnull align 8 dead_on_return %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load i32, ptr %i.y, align 8, !tbaa !1498
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !1522
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !1502
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !1499
  %i.af = and i8 %i.ae, 16
  %i.ag = icmp ne i8 %i.af, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aj = call noundef zeroext i1 @_ZN5boost4asio6detail10socket_ops17non_blocking_recvEiP5iovecmibRNS_6system10error_codeERm(i32 noundef %i.z, ptr noundef nonnull %3, i64 noundef %i.aa, i32 noundef %i.ac, i1 noundef zeroext %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.ai)
  br i1 %i.aj, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.ak = load i8, ptr %i.ad, align 4, !tbaa !1499 ; 2 uses
  %i.al = and i8 %i.ak, 16
  %.not = icmp eq i8 %i.al, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = load i64, ptr %i.ai, align 8, !tbaa !1154
  %.not12 = icmp sgt i8 %i.ak, -1
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 1032
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = select i1 %.not12, i64 1, i64 %i.ao
  %i.aq = icmp ult i64 %i.am, %i.ap
  %spec.select = select i1 %i.aq, i32 2, i32 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS5_INS4_14buffers_suffixINS4_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEEEE4initINSE_14const_iteratorEEEvT_SI_(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.06.0.copyload = load ptr, ptr %1, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.47.0.copyload = load i64, ptr %.sroa.47.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.16.copyload = load ptr, ptr %i.a, align 8
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.9.16.copyload = load i64, ptr %.sroa.9.16..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !790  ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !856
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1376 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEE14const_iteratorppEv.exit, %bb.a
  %.sroa.18.0 = phi ptr [ %i.e, %bb.a ], [ %i.bf, %_ZN5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEE14const_iteratorppEv.exit ] ; 10 uses
  %.sroa.9.0 = phi i64 [ %.sroa.9.16.copyload, %bb.a ], [ %.sroa.9.4, %_ZN5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEE14const_iteratorppEv.exit ] ; 3 uses
  %.sroa.47.0 = phi i64 [ %.sroa.47.0.copyload, %bb.a ], [ %i.bz, %_ZN5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEE14const_iteratorppEv.exit ] ; 2 uses
  %i.u = load ptr, ptr %2, align 8, !tbaa !1519
  %i.v = icmp eq ptr %.sroa.06.0.copyload, %i.u
  br i1 %i.v, label %bb.c, label %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEE14const_iteratorneERKSB_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !1500
  %i.x = icmp eq ptr %.sroa.7.16.copyload, %i.w
  br i1 %i.x, label %bb.d, label %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEE14const_iteratorneERKSB_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !1376
  %i.z = icmp eq ptr %i.g, %i.y
  br i1 %i.z, label %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEE14const_iteratorneERKSB_.exit, label %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEE14const_iteratorneERKSB_.exit.thread

_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEE14const_iteratorneERKSB_.exit: ; preds = %bb.d
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !790
  %i.ab = icmp ne ptr %i.c, %i.aa
  %i.ac = load ptr, ptr %i.k, align 8
  %i.ad = icmp ne ptr %.sroa.18.0, %i.ac
  %.not3.i = select i1 %i.ab, i1 true, i1 %i.ad
  br i1 %.not3.i, label %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEE14const_iteratorneERKSB_.exit.thread, label %.critedge

_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEE14const_iteratorneERKSB_.exit.thread: ; preds = %bb.d, %bb.c, %bb.b, %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEE14const_iteratorneERKSB_.exit
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !1522 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 64
  br i1 %i.af, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEE14const_iteratorneERKSB_.exit.thread
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !790
  %i.ah = icmp eq ptr %i.c, %i.ag
  %i.ai = load ptr, ptr %i.n, align 8
  %i.aj = icmp eq ptr %.sroa.18.0, %i.ai
  %i.ak = select i1 %i.ah, i1 %i.aj, i1 false
  %i.al = load ptr, ptr %i.o, align 8, !tbaa !856
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !745
  %i.ao = icmp eq ptr %.sroa.18.0, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.18.0, i64 16 ; 2 uses
  %.sroa.6.0.in.i.i.i.i = select i1 %i.ao, ptr %i.p, ptr %i.ap
  %.sroa.6.0.i.i.i.i = load i64, ptr %.sroa.6.0.in.i.i.i.i, align 8, !tbaa !475 ; 6 uses
  %.sroa.07.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.18.0, i64 24 ; 4 uses
  %i.aq = load ptr, ptr %i.q, align 8, !tbaa !856
  %i.ar = icmp eq ptr %.sroa.18.0, %i.aq          ; 2 uses
  br i1 %i.ak, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %i.ar, label %bb.g, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.as = load i64, ptr %i.r, align 8, !tbaa !858
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.as, i64 %.sroa.6.0.i.i.i.i) ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i, i64 %..i.i.i.i.i
  %i.au = sub i64 %.sroa.6.0.i.i.i.i, %..i.i.i.i.i
  br label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i.i

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.sroa.07.1.i.i.i.i = phi ptr [ %i.at, %bb.g ], [ %.sroa.07.0.i.i.i.i, %bb.f ]
  %.sroa.6.1.i.i.i.i = phi i64 [ %i.au, %bb.g ], [ %.sroa.6.0.i.i.i.i, %bb.f ] ; 2 uses
  %i.av = load i64, ptr %i.s, align 8, !tbaa !792
  %spec.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.av, i64 %.sroa.6.1.i.i.i.i) ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i, i64 %spec.select.i.i.i.i
  %i.ax = sub i64 %.sroa.6.1.i.i.i.i, %spec.select.i.i.i.i
  br label %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEE14const_iteratordeEv.exit

bb.h:                                             ; preds = %bb.e
  br i1 %i.ar, label %bb.i, label %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEE14const_iteratordeEv.exit

bb.i:                                             ; preds = %bb.h
  %i.ay = load i64, ptr %i.r, align 8, !tbaa !858
  %..i.i11.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 %.sroa.6.0.i.i.i.i) ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i, i64 %..i.i11.i.i.i
  %i.ba = sub i64 %.sroa.6.0.i.i.i.i, %..i.i11.i.i.i
  br label %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEE14const_iteratordeEv.exit

_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEE14const_iteratordeEv.exit: ; preds = %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i.i, %bb.h, %bb.i
  %.pn15.i.i.i = phi ptr [ %i.aw, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i.i ], [ %i.az, %bb.i ], [ %.sroa.07.0.i.i.i.i, %bb.h ]
  %.pn13.i.i.i = phi i64 [ %i.ax, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i.i ], [ %i.ba, %bb.i ], [ %.sroa.6.0.i.i.i.i, %bb.h ]
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.9.0, i64 %.pn13.i.i.i)
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %.sroa.47.0, i64 %spec.select.i.i) ; 2 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ae ; 2 uses
  store ptr %.pn15.i.i.i, ptr %i.bb, align 8, !tbaa !641
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %spec.select.i, ptr %i.bc, align 8, !tbaa !1153
  %i.bd = load i64, ptr %i.t, align 8, !tbaa !5292
  %i.be = add i64 %i.bd, %spec.select.i
  store i64 %i.be, ptr %i.t, align 8, !tbaa !5292
  %i.bf = load ptr, ptr %.sroa.18.0, align 8, !tbaa !744, !noalias !5293
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !790, !noalias !5294
  %i.bh = icmp eq ptr %i.c, %i.bg
  %i.bi = load ptr, ptr %i.n, align 8, !noalias !5294
  %i.bj = icmp eq ptr %.sroa.18.0, %i.bi
  %i.bk = select i1 %i.bh, i1 %i.bj, i1 false
  %i.bl = load ptr, ptr %i.o, align 8, !tbaa !856, !noalias !5294
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !745, !noalias !5294
  %i.bo = icmp eq ptr %.sroa.18.0, %i.bn
  %.sroa.6.0.in.i.i.i.i1 = select i1 %i.bo, ptr %i.p, ptr %i.ap
  %.sroa.6.0.i.i.i.i2 = load i64, ptr %.sroa.6.0.in.i.i.i.i1, align 8, !tbaa !475, !noalias !5294 ; 4 uses
  %i.bp = load ptr, ptr %i.q, align 8, !tbaa !856, !noalias !5294
  %i.bq = icmp eq ptr %.sroa.18.0, %i.bp          ; 2 uses
  br i1 %i.bk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEE14const_iteratordeEv.exit
  br i1 %i.bq, label %.thread21.i, label %bb.l

bb.k:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEE14const_iteratordeEv.exit
  br i1 %i.bq, label %.thread26.i, label %_ZN5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEE14const_iteratorppEv.exit

bb.l:                                             ; preds = %bb.j
  %i.br = load i64, ptr %i.s, align 8, !tbaa !792, !noalias !5294
  %i.bs = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.i.i2, i64 %i.br)
  br label %_ZN5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEE14const_iteratorppEv.exit

.thread21.i:                                      ; preds = %bb.j
  %i.bt = load i64, ptr %i.r, align 8, !tbaa !858, !noalias !5294
  %i.bu = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.i.i2, i64 %i.bt)
  %i.bv = load i64, ptr %i.s, align 8, !tbaa !792, !noalias !5294
  %i.bw = tail call i64 @llvm.usub.sat.i64(i64 %i.bu, i64 %i.bv)
  br label %_ZN5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEE14const_iteratorppEv.exit

.thread26.i:                                      ; preds = %bb.k
  %i.bx = load i64, ptr %i.r, align 8, !tbaa !858, !noalias !5294
  %i.by = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.i.i2, i64 %i.bx)
  br label %_ZN5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEE14const_iteratorppEv.exit

_ZN5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEE14const_iteratorppEv.exit: ; preds = %.thread21.i, %bb.l, %bb.k, %.thread26.i
  %.pn13.i.i3.i = phi i64 [ %.sroa.6.0.i.i.i.i2, %bb.k ], [ %i.by, %.thread26.i ], [ %i.bs, %bb.l ], [ %i.bw, %.thread21.i ] ; 2 uses
  %.sroa.9.4 = sub i64 %.sroa.9.0, %.pn13.i.i3.i
  %spec.select.i.i3 = tail call i64 @llvm.umin.i64(i64 %.sroa.9.0, i64 %.pn13.i.i3.i)
  %i.bz = sub i64 %.sroa.47.0, %spec.select.i.i3
  %i.ca = add nuw nsw i64 %i.ae, 1
  store i64 %i.ca, ptr %i.l, align 8, !tbaa !1522
  br label %bb.b, !llvm.loop !5291

.critedge:                                        ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEE14const_iteratorneERKSB_.exit, %_ZNK5boost5beast19buffers_prefix_viewINS1_INS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEE14const_iteratorneERKSB_.exit.thread
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt9__advanceIN5boost5beast19buffers_prefix_viewINS1_14buffers_suffixINS1_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i64 %1, 0
  br i1 %i.a, label %.preheader, label %.preheader12

.preheader12:                                     ; preds = %bb.a
  %.not14 = icmp eq i64 %1, 0
  br i1 %.not14, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1376 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !790  ; 5 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !790
  %i.i = icmp eq ptr %i.g, %i.h
end_hunk_3
begin_hunk_4_@"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS1_16prepared_buffersINS0_12const_bufferELm64EEENS1_8write_opISB_NS5_16buffers_cat_viewIJSF_SF_NS5_14buffers_suffixINS5_18basic_multi_bufferISaIcEE8subrangeILb1EEEEENS5_19buffers_prefix_viewISP_EEEEENSS_14const_iteratorENS1_14transfer_all_tENS5_9websocket6streamISB_Lb1EE13write_some_opIZN12_GLOBAL__N_18snippetsEvE3$_4SO_EEEEEENS_6system10error_codeEmEESaIvEE3ptr5resetEv":bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE3ops11transfer_opILb0ENS2_6detail16prepared_buffersINS2_12const_bufferELm64EEENSA_8write_opIS7_NS0_16buffers_cat_viewIJSC_SC_NS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEENS0_19buffers_prefix_viewISM_EEEEENSP_14const_iteratorENSA_14transfer_all_tENS0_9websocket6streamIS7_Lb1EE13write_some_opIZN12_GLOBAL__N_18snippetsEvE3$_4SL_EEEEEE", i64 16), ptr %i.c, align 8, !tbaa !469
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 704
  %i.e = load i8, ptr %i.d, align 8, !tbaa !1012, !range !510, !noundef !511
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 696
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1011 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.h, align 1, !tbaa !882
  br label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i

_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 688
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !536  ; 7 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = atomicrmw sub ptr %i.k, i32 1 acq_rel, align 4
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.f, label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !469
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #37, !inline_history !8340
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.r = atomicrmw sub ptr %i.q, i32 1 acq_rel, align 4
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.g, label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !469
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #37, !inline_history !8341
  br label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i

_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.e, %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast10async_baseINS_4asio6detail8write_opINS0_12basic_streamINS2_2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEEENS0_16buffers_cat_viewIJNS2_12const_bufferESC_NS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEENS0_19buffers_prefix_viewISJ_EEEEENSM_14const_iteratorENS3_14transfer_all_tENS0_9websocket6streamISA_Lb1EE13write_some_opIZN12_GLOBAL__N_18snippetsEvE3$_4SI_EEEES8_SaIvEEE", i64 16), ptr %i.c, align 8, !tbaa !469
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 552
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 664
  %i.y = load i8, ptr %i.x, align 8, !tbaa !718, !range !510, !noundef !511
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.h, label %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvED2Ev.exit.i.i.i.i

bb.h:                                             ; preds = %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.aa) #37, !inline_history !1902
  br label %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvED2Ev.exit.i.i.i.i

_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvED2Ev.exit.i.i.i.i: ; preds = %bb.h, %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i.i.i
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.w) #37, !inline_history !1902
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 272 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE13write_some_opIZN12_GLOBAL__N_18snippetsEvE3$_4NS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEE", i64 16), ptr %i.ab, align 8, !tbaa !469
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !554 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5boost8weak_ptrINS_5beast9websocket6streamINS1_12basic_streamINS_4asio2ip3tcpENS5_15any_io_executorENS1_21unlimited_rate_policyEEELb1EE9impl_typeEED2Ev.exit.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvED2Ev.exit.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.af = atomicrmw sub ptr %i.ae, i32 1 acq_rel, align 4
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %bb.j, label %_ZN5boost8weak_ptrINS_5beast9websocket6streamINS1_12basic_streamINS_4asio2ip3tcpENS5_15any_io_executorENS1_21unlimited_rate_policyEEELb1EE9impl_typeEED2Ev.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !469
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #37, !inline_history !8342
  br label %_ZN5boost8weak_ptrINS_5beast9websocket6streamINS1_12basic_streamINS_4asio2ip3tcpENS5_15any_io_executorENS1_21unlimited_rate_policyEEELb1EE9impl_typeEED2Ev.exit.i.i.i.i.i.i

_ZN5boost8weak_ptrINS_5beast9websocket6streamINS1_12basic_streamINS_4asio2ip3tcpENS5_15any_io_executorENS1_21unlimited_rate_policyEEELb1EE9impl_typeEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.i, %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvED2Ev.exit.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5boost5beast10async_baseIZN12_GLOBAL__N_18snippetsEvE3$_4NS_4asio15any_io_executorESaIvEEE", i64 16), ptr %i.ab, align 8, !tbaa !469
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !718, !range !510, !noundef !511
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.k, label %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS1_16prepared_buffersINS0_12const_bufferELm64EEENS1_8write_opISB_NS5_16buffers_cat_viewIJSF_SF_NS5_14buffers_suffixINS5_18basic_multi_bufferISaIcEE8subrangeILb1EEEEENS5_19buffers_prefix_viewISP_EEEEENSS_14const_iteratorENS1_14transfer_all_tENS5_9websocket6streamISB_Lb1EE13write_some_opIZN12_GLOBAL__N_18snippetsEvE3$_4SO_EEEEEENS_6system10error_codeEmEESaIvEED2Ev.exit"

bb.k:                                             ; preds = %_ZN5boost8weak_ptrINS_5beast9websocket6streamINS1_12basic_streamINS_4asio2ip3tcpENS5_15any_io_executorENS1_21unlimited_rate_policyEEELb1EE9impl_typeEED2Ev.exit.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.an) #37, !inline_history !1903
  br label %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS1_16prepared_buffersINS0_12const_bufferELm64EEENS1_8write_opISB_NS5_16buffers_cat_viewIJSF_SF_NS5_14buffers_suffixINS5_18basic_multi_bufferISaIcEE8subrangeILb1EEEEENS5_19buffers_prefix_viewISP_EEEEENSS_14const_iteratorENS1_14transfer_all_tENS5_9websocket6streamISB_Lb1EE13write_some_opIZN12_GLOBAL__N_18snippetsEvE3$_4SO_EEEEEENS_6system10error_codeEmEESaIvEED2Ev.exit"

"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS1_16prepared_buffersINS0_12const_bufferELm64EEENS1_8write_opISB_NS5_16buffers_cat_viewIJSF_SF_NS5_14buffers_suffixINS5_18basic_multi_bufferISaIcEE8subrangeILb1EEEEENS5_19buffers_prefix_viewISP_EEEEENSS_14const_iteratorENS1_14transfer_all_tENS5_9websocket6streamISB_Lb1EE13write_some_opIZN12_GLOBAL__N_18snippetsEvE3$_4SO_EEEEEENS_6system10error_codeEmEESaIvEED2Ev.exit": ; preds = %_ZN5boost8weak_ptrINS_5beast9websocket6streamINS1_12basic_streamINS_4asio2ip3tcpENS5_15any_io_executorENS1_21unlimited_rate_policyEEELb1EE9impl_typeEED2Ev.exit.i.i.i.i.i.i, %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.ao) #37, !inline_history !1903
  store ptr null, ptr %i.a, align 8, !tbaa !1942
  br label %bb.l

bb.l:                                             ; preds = %"_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS1_16prepared_buffersINS0_12const_bufferELm64EEENS1_8write_opISB_NS5_16buffers_cat_viewIJSF_SF_NS5_14buffers_suffixINS5_18basic_multi_bufferISaIcEE8subrangeILb1EEEEENS5_19buffers_prefix_viewISP_EEEEENSS_14const_iteratorENS1_14transfer_all_tENS5_9websocket6streamISB_Lb1EE13write_some_opIZN12_GLOBAL__N_18snippetsEvE3$_4SO_EEEEEENS_6system10error_codeEmEESaIvEED2Ev.exit", %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1941 ; 5 uses
  %.not1 = icmp eq ptr %i.aq, null
  br i1 %.not1, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = tail call noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv() ; 4 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %.thread.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !641
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.n, label %.preheader.1.i.i

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !641
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.n, label %.thread.i.i

bb.n:                                             ; preds = %.preheader.1.i.i, %.preheader.preheader.i.i
  %.lcssa.i.i = phi i64 [ 4, %.preheader.preheader.i.i ], [ 5, %.preheader.1.i.i ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.lcssa.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 1016
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !478
  store i8 %i.ba, ptr %i.aq, align 1, !tbaa !478
  store ptr %i.aq, ptr %i.ay, align 8, !tbaa !641
  br label %"_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb0ENS1_16prepared_buffersINS0_12const_bufferELm64EEENS1_8write_opISC_NS6_16buffers_cat_viewIJSG_SG_NS6_14buffers_suffixINS6_18basic_multi_bufferISaIcEE8subrangeILb1EEEEENS6_19buffers_prefix_viewISQ_EEEEENST_14const_iteratorENS1_14transfer_all_tENS6_9websocket6streamISC_Lb1EE13write_some_opIZN12_GLOBAL__N_18snippetsEvE3$_4SP_EEEEEENS_6system10error_codeEmEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS19_m.exit"

.thread.i.i:                                      ; preds = %.preheader.1.i.i, %bb.m
  tail call void @free(ptr noundef nonnull %i.aq) #37
  br label %"_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb0ENS1_16prepared_buffersINS0_12const_bufferELm64EEENS1_8write_opISC_NS6_16buffers_cat_viewIJSG_SG_NS6_14buffers_suffixINS6_18basic_multi_bufferISaIcEE8subrangeILb1EEEEENS6_19buffers_prefix_viewISQ_EEEEENST_14const_iteratorENS1_14transfer_all_tENS6_9websocket6streamISC_Lb1EE13write_some_opIZN12_GLOBAL__N_18snippetsEvE3$_4SP_EEEEEENS_6system10error_codeEmEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS19_m.exit"

"_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb0ENS1_16prepared_buffersINS0_12const_bufferELm64EEENS1_8write_opISC_NS6_16buffers_cat_viewIJSG_SG_NS6_14buffers_suffixINS6_18basic_multi_bufferISaIcEE8subrangeILb1EEEEENS6_19buffers_prefix_viewISQ_EEEEENST_14const_iteratorENS1_14transfer_all_tENS6_9websocket6streamISC_Lb1EE13write_some_opIZN12_GLOBAL__N_18snippetsEvE3$_4SP_EEEEEENS_6system10error_codeEmEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS19_m.exit": ; preds = %bb.n, %.thread.i.i
  store ptr null, ptr %i.ap, align 8, !tbaa !1941
  br label %bb.o

bb.o:                                             ; preds = %"_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb0ENS1_16prepared_buffersINS0_12const_bufferELm64EEENS1_8write_opISC_NS6_16buffers_cat_viewIJSG_SG_NS6_14buffers_suffixINS6_18basic_multi_bufferISaIcEE8subrangeILb1EEEEENS6_19buffers_prefix_viewISQ_EEEEENST_14const_iteratorENS1_14transfer_all_tENS6_9websocket6streamISC_Lb1EE13write_some_opIZN12_GLOBAL__N_18snippetsEvE3$_4SP_EEEEEENS_6system10error_codeEmEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS19_m.exit", %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost4asio6detail28reactive_socket_send_op_baseINS_5beast19buffers_prefix_viewINS1_16prepared_buffersINS0_12const_bufferELm64EEEEEE10do_performEPNS1_10reactor_opE(ptr noundef %0) #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::asio::detail::buffer_sequence_adapter.1285", align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1032 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1917, !noalias !8352 ; 2 uses
  %.not.i = icmp eq ptr %i.a, %i.e
  br i1 %.not.i, label %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast19buffers_prefix_viewINS1_16prepared_buffersIS3_Lm64EEEEEEC2ERKS8_.exit, label %.lr.ph.split.i.preheader.i

.lr.ph.split.i.preheader.i:                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1918, !noalias !8353
  br label %bb.b

.lr.ph.split.i.i:                                 ; preds = %bb.b
  %i.h = sub i64 %.sroa.43.08.i.i15, %.sroa.5.0.copyload.i.i.i
  %exitcond.not.i = icmp eq i64 %i.o, 64
  br i1 %exitcond.not.i, label %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast19buffers_prefix_viewINS1_16prepared_buffersIS3_Lm64EEEEEEC2ERKS8_.exit.loopexit, label %bb.b, !llvm.loop !8351

bb.b:                                             ; preds = %.lr.ph.split.i.preheader.i, %.lr.ph.split.i.i
  %.sroa.43.08.i.i15 = phi i64 [ %i.g, %.lr.ph.split.i.preheader.i ], [ %i.h, %.lr.ph.split.i.i ] ; 2 uses
  %.sroa.7.09.i.i14 = phi ptr [ %i.a, %.lr.ph.split.i.preheader.i ], [ %i.n, %.lr.ph.split.i.i ] ; 3 uses
  %i.i = phi i64 [ 0, %.lr.ph.split.i.preheader.i ], [ %i.o, %.lr.ph.split.i.i ] ; 2 uses
  %i.j = phi i64 [ 0, %.lr.ph.split.i.preheader.i ], [ %i.m, %.lr.ph.split.i.i ]
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.7.09.i.i14, align 8, !tbaa !641
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7.09.i.i14, i64 8
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !475 ; 2 uses
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.43.08.i.i15, i64 %.sroa.5.0.copyload.i.i.i) ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.i ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.k, align 8, !tbaa !641
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %spec.select.i.i.i, ptr %i.l, align 8, !tbaa !1153
  %i.m = add i64 %spec.select.i.i.i, %i.j         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.7.09.i.i14, i64 16 ; 2 uses
  %i.o = add nuw nsw i64 %i.i, 1                  ; 4 uses
  %.not.i.i = icmp eq ptr %i.n, %i.e
  br i1 %.not.i.i, label %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast19buffers_prefix_viewINS1_16prepared_buffersIS3_Lm64EEEEEEC2ERKS8_.exit.loopexit, label %.lr.ph.split.i.i, !llvm.loop !8351

_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast19buffers_prefix_viewINS1_16prepared_buffersIS3_Lm64EEEEEEC2ERKS8_.exit.loopexit: ; preds = %bb.b, %.lr.ph.split.i.i
  %.ph = phi i64 [ 64, %.lr.ph.split.i.i ], [ %i.o, %bb.b ]
  store i64 %i.m, ptr %i.c, align 8, !tbaa !8355
  store i64 %i.o, ptr %i.b, align 8, !tbaa !8356
  br label %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast19buffers_prefix_viewINS1_16prepared_buffersIS3_Lm64EEEEEEC2ERKS8_.exit

_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast19buffers_prefix_viewINS1_16prepared_buffersIS3_Lm64EEEEEEC2ERKS8_.exit: ; preds = %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast19buffers_prefix_viewINS1_16prepared_buffersIS3_Lm64EEEEEEC2ERKS8_.exit.loopexit, %bb.a
  %i.p = phi i64 [ 0, %bb.a ], [ %.ph, %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast19buffers_prefix_viewINS1_16prepared_buffersIS3_Lm64EEEEEEC2ERKS8_.exit.loopexit ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load i32, ptr %i.q, align 8, !tbaa !1927
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.t = load i32, ptr %i.s, align 8, !tbaa !1929
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.w = call noundef zeroext i1 @_ZN5boost4asio6detail10socket_ops17non_blocking_sendEiPK5iovecmiRNS_6system10error_codeERm(i32 noundef %i.r, ptr noundef nonnull %1, i64 noundef %i.p, i32 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  br i1 %i.w, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast19buffers_prefix_viewINS1_16prepared_buffersIS3_Lm64EEEEEEC2ERKS8_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.y = load i8, ptr %i.x, align 4, !tbaa !1928
  %i.z = and i8 %i.y, 16
  %.not = icmp eq i8 %i.z, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load i64, ptr %i.v, align 8, !tbaa !1154
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !8355
  %i.ac = icmp ult i64 %i.aa, %i.ab
  %spec.select = select i1 %i.ac, i32 2, i32 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast19buffers_prefix_viewINS1_16prepared_buffersIS3_Lm64EEEEEEC2ERKS8_.exit
  %.0 = phi i32 [ 0, %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast19buffers_prefix_viewINS1_16prepared_buffersIS3_Lm64EEEEEEC2ERKS8_.exit ], [ %spec.select, %bb.d ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4mp116detail19mp_with_index_impl_ILm6EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_NS5_14buffers_suffixINS5_18basic_multi_bufferISaIcEE8subrangeILb1EEEEENS5_19buffers_prefix_viewISF_EEEE14const_iterator9decrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSL_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %3 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %4 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %5 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %6 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %7 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  switch i64 %0, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.f
    i64 2, label %bb.l
    i64 3, label %bb.s
    i64 4, label %bb.t
    i64 5, label %bb.u
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.82)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  store ptr @.str.78, ptr %7, align 8, !tbaa !901
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.47, ptr %i.a, align 8, !tbaa !902
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 278, ptr %i.b, align 8, !tbaa !903
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 62, ptr %i.c, align 4, !tbaa !904
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) #39
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.r, %bb.j, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.m, %bb.j ], [ %i.z, %bb.r ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %common.resume

bb.f:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !1944, !nonnull !511, !align !535 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !1869
  %.promoted.i = load ptr, ptr %i.f, align 8, !tbaa !1870
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %bb.f
  %i.h = phi ptr [ %i.n, %bb.k ], [ %.promoted.i, %bb.f ] ; 3 uses
  %i.i = icmp eq ptr %i.h, %i.g
  br i1 %i.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.83)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  store ptr @.str.78, ptr %5, align 8, !tbaa !901
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.47, ptr %i.j, align 8, !tbaa !902
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 293, ptr %i.k, align 8, !tbaa !903
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 68, ptr %i.l, align 4, !tbaa !904
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #39
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %common.resume

bb.k:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  store ptr %i.n, ptr %i.f, align 8, !tbaa !1870
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.h, i64 -8
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !475
  %.not.i = icmp eq i64 %.sroa.3.0.copyload.i, 0
  br i1 %.not.i, label %bb.g, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEENS0_19buffers_prefix_viewISA_EEEE14const_iterator9decrementclESt17integral_constantImLm1EE.exit, !llvm.loop !8357

bb.l:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %1, align 8, !tbaa !1944, !nonnull !511, !align !535 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !1869 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.promoted.i6 = load ptr, ptr %i.p, align 8, !tbaa !1870
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.s = phi ptr [ %i.u, %bb.n ], [ %.promoted.i6, %bb.l ] ; 3 uses
  %i.t = icmp eq ptr %i.s, %i.r
  br i1 %i.t, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -16 ; 2 uses
  store ptr %i.u, ptr %i.p, align 8, !tbaa !1870
  %.sroa.3.0..sroa_idx.i7 = getelementptr inbounds i8, ptr %i.s, i64 -8
  %.sroa.3.0.copyload.i8 = load i64, ptr %.sroa.3.0..sroa_idx.i7, align 8, !tbaa !475
  %.not.i9 = icmp eq i64 %.sroa.3.0.copyload.i8, 0
  br i1 %.not.i9, label %bb.m, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEENS0_19buffers_prefix_viewISA_EEEE14const_iterator9decrementclESt17integral_constantImLm1EE.exit, !llvm.loop !312

bb.o:                                             ; preds = %bb.m
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i8 1, ptr %i.v, align 8, !tbaa !1871
  store ptr %i.q, ptr %i.p, align 8, !tbaa !1870
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !475
  %.not.i.i = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  br i1 %.not.i.i, label %bb.p, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEENS0_19buffers_prefix_viewISA_EEEE14const_iterator9decrementclESt17integral_constantImLm1EE.exit

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.83)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store ptr @.str.78, ptr %3, align 8, !tbaa !901
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.47, ptr %i.w, align 8, !tbaa !902
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 293, ptr %i.x, align 8, !tbaa !903
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 68, ptr %i.y, align 4, !tbaa !904
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #39
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

bb.s:                                             ; preds = %bb.a
  tail call void @_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEENS0_19buffers_prefix_viewISA_EEEE14const_iterator9decrementclILm3EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEENS0_19buffers_prefix_viewISA_EEEE14const_iterator9decrementclESt17integral_constantImLm1EE.exit

bb.t:                                             ; preds = %bb.a
  tail call void @_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEENS0_19buffers_prefix_viewISA_EEEE14const_iterator9decrementclILm4EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEENS0_19buffers_prefix_viewISA_EEEE14const_iterator9decrementclESt17integral_constantImLm1EE.exit

bb.u:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %1, align 8, !tbaa !1944, !nonnull !511, !align !535 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !1869 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 168
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !1379, !noalias !8362
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 176
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 192
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1376, !noalias !8362
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.al = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !641, !noalias !8362
  store ptr %i.ad, ptr %i.ab, align 8
  store i64 %i.af, ptr %.sroa.4.0..sroa_idx.i, align 8
  store <2 x ptr> %i.al, ptr %i.ak, align 8, !tbaa !641
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !1376
  store i8 4, ptr %i.aj, align 8, !tbaa !1871
  tail call void @_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEENS0_19buffers_prefix_viewISA_EEEE14const_iterator9decrementclILm4EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEENS0_19buffers_prefix_viewISA_EEEE14const_iterator9decrementclESt17integral_constantImLm1EE.exit

_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEENS0_19buffers_prefix_viewISA_EEEE14const_iterator9decrementclESt17integral_constantImLm1EE.exit: ; preds = %bb.n, %bb.k, %bb.o, %bb.u, %bb.t, %bb.s
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_NS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEENS0_19buffers_prefix_viewISA_EEEE14const_iterator9decrementclILm3EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %2 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1944, !nonnull !511, !align !535 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
end_hunk_4
