Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/socket?download=true
inline.NumInlined: 2174
inline.NumDeleted: 1029
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5boost4asio6detail10socket_ops7connectEiPKvmRNS_6system10error_codeE:bb.a
  br i1 %i.al, label %bb.k, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread

bb.k:                                             ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit
  %i.am = load i16, ptr %1, align 2, !tbaa !909
  %i.an = icmp eq i16 %i.am, 1
  %i.ao = and i64 %i.af, -2
  %switch.i.i.i.i19 = icmp eq i64 %i.ao, -5572340897628102704 ; 2 uses
  br i1 %i.an, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  br i1 %switch.i.i.i.i19, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit23.thread, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit23

_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit23: ; preds = %bb.l
  %i.ap = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !39, !noalias !910
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !910
  %i.as = tail call noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 115) #31, !noalias !910, !inline_history !11
  br i1 %i.as, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit23.thread, label %bb.m

_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit23.thread: ; preds = %bb.l, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit23
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit23, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit23.thread
  %i.at = phi i64 [ 3, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit23.thread ], [ 2, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit23 ]
  store i64 115, ptr %3, align 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.52.0..sroa_idx.i, align 8, !tbaa !37
  store i64 %i.at, ptr %.sroa.6.0..sroa_idx.i15, align 8, !tbaa !73
  br label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread

bb.n:                                             ; preds = %bb.k
  br i1 %switch.i.i.i.i19, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit28.thread, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit28

_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit28: ; preds = %bb.n
  %i.au = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !39, !noalias !911
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !911
  %i.ax = tail call noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 105) #31, !noalias !911, !inline_history !11
  br i1 %i.ax, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit28.thread, label %bb.o

_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit28.thread: ; preds = %bb.n, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit28
  br label %bb.o

bb.o:                                             ; preds = %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit28, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit28.thread
  %i.ay = phi i64 [ 3, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit28.thread ], [ 2, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit28 ]
  store i64 105, ptr %3, align 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.52.0..sroa_idx.i, align 8, !tbaa !37
  store i64 %i.ay, ptr %.sroa.6.0..sroa_idx.i15, align 8, !tbaa !73
  br label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread

.critedge:                                        ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread: ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit, %.critedge, %bb.o, %bb.m, %bb.c
  %.0 = phi i32 [ -1, %bb.c ], [ %i.j, %bb.m ], [ %i.j, %bb.o ], [ 0, %.critedge ], [ %i.j, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit ], [ %i.j, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread ], [ %i.j, %_ZNK5boost6system10error_code5valueEv.exit17.i ]
  ret i32 %.0
}

declare i32 @connect(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost4asio6detail28initiate_async_range_connectINS_6cobalt2io13protocol_typeENS0_15any_io_executorEEclINS3_18completion_handlerIJNS_6system10error_codeENS4_8endpointEEEESt6vectorISC_NSt3pmr21polymorphic_allocatorISC_EEENS1_25default_connect_conditionEEEvOT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::system::error_code", align 8 ; 4 uses
  %5 = alloca %"class.boost::asio::detail::range_connect_op", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.a = load ptr, ptr %0, align 8, !tbaa !914, !nonnull !51, !align !52
  call void @_ZN5boost4asio6detail16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS4_8endpointENSt3pmr21polymorphic_allocatorIS8_EEENS1_25default_connect_conditionENS3_18completion_handlerIJNS_6system10error_codeES8_EEEEC2ERNS0_12basic_socketIS5_S6_EERKSC_RKSD_RSH_(ptr noundef nonnull align 8 dereferenceable(160) %5, ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(96) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !136
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !136
  invoke void @_ZN5boost4asio6detail16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS4_8endpointENSt3pmr21polymorphic_allocatorIS8_EEENS1_25default_connect_conditionENS3_18completion_handlerIJNS_6system10error_codeES8_EEEE7processIN9__gnu_cxx17__normal_iteratorIPKS8_SC_EEEEvSG_iT_SP_(ptr noundef nonnull align 8 dereferenceable(160) %5, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %4, i32 noundef 1, ptr %i.c, ptr %i.e)
          to label %bb.b unwind label %bb.m, !inline_history !912

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !238  ; 3 uses
  %.not2.i.i = icmp eq ptr %i.g, null
  br i1 %.not2.i.i, label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !269  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.i, align 4, !tbaa !271
  %i.k = icmp eq i32 %i.j, 3
  br i1 %i.k, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = call noundef i32 @_ZSt19uncaught_exceptionsv() #37
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.f, align 8, !tbaa !238
  br label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  invoke void %i.o(ptr nonnull %i.g)
          to label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i unwind label %bb.h, !inline_history !17

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #32
  unreachable

_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i:  ; preds = %bb.g, %bb.f, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !249
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io8endpointEEED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !250
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !272
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(56) %i.u)
          to label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io8endpointEEED2Ev.exit.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #32
  unreachable

_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io8endpointEEED2Ev.exit.i: ; preds = %bb.i, %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !147 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZN5boost4asio6detail16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS4_8endpointENSt3pmr21polymorphic_allocatorIS8_EEENS1_25default_connect_conditionENS3_18completion_handlerIJNS_6system10error_codeES8_EEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io8endpointEEED2Ev.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !148
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.aa to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !149 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !39
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull %i.aa, i64 noundef %i.ag, i64 noundef 8)
          to label %_ZN5boost4asio6detail16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS4_8endpointENSt3pmr21polymorphic_allocatorIS8_EEENS1_25default_connect_conditionENS3_18completion_handlerIJNS_6system10error_codeES8_EEEED2Ev.exit unwind label %bb.l, !inline_history !2

bb.l:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #32
  unreachable

_ZN5boost4asio6detail16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS4_8endpointENSt3pmr21polymorphic_allocatorIS8_EEENS1_25default_connect_conditionENS3_18completion_handlerIJNS_6system10error_codeES8_EEEED2Ev.exit: ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io8endpointEEED2Ev.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret void

bb.m:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost4asio6detail16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS4_8endpointENSt3pmr21polymorphic_allocatorIS8_EEENS1_25default_connect_conditionENS3_18completion_handlerIJNS_6system10error_codeES8_EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  resume { ptr, i32 } %i.an
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS4_8endpointENSt3pmr21polymorphic_allocatorIS8_EEENS1_25default_connect_conditionENS3_18completion_handlerIJNS_6system10error_codeES8_EEEEC2ERNS0_12basic_socketIS5_S6_EERKSC_RKSD_RSH_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(96) %4) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !228
  tail call void @_ZN5boost4asio18cancellation_stateC2INS0_17cancellation_slotENS0_19cancellation_filterILNS0_17cancellation_typeE3EEES6_EET_T0_T1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %.sroa.0.0.copyload.i.i.i.i)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !143
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !317  ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !147  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = tail call noundef nonnull ptr @_ZNSt3pmr20get_default_resourceEv() #31 ; 3 uses
  %i.k = ptrtoint ptr %i.j to i64
  store i64 %i.k, ptr %i.b, align 8, !tbaa !233
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN5boost6cobalt2io8endpointENSt3pmr21polymorphic_allocatorIS3_EEEC2EmRKS6_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %5 = sdiv exact i64 %i.i, 144
  %6 = icmp ugt i64 %5, 128102389400760775
  br i1 %6, label %bb.c, label %_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorIN5boost6cobalt2io8endpointEEEE8allocateERS6_m.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #35
  unreachable

_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorIN5boost6cobalt2io8endpointEEEE8allocateERS6_m.exit.i.i.i.i: ; preds = %bb.b
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef nonnull align 8 ptr %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef %i.i, i64 noundef 8), !inline_history !23
  br label %_ZNSt12_Vector_baseIN5boost6cobalt2io8endpointENSt3pmr21polymorphic_allocatorIS3_EEEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseIN5boost6cobalt2io8endpointENSt3pmr21polymorphic_allocatorIS3_EEEC2EmRKS6_.exit.i: ; preds = %_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorIN5boost6cobalt2io8endpointEEEE8allocateERS6_m.exit.i.i.i.i, %bb.a
  %i.q = phi ptr [ %i.p, %_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorIN5boost6cobalt2io8endpointEEEE8allocateERS6_m.exit.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.q, ptr %i.l, align 8, !tbaa !147
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !317
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.s, ptr %i.t, align 8, !tbaa !148
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !136  ; 2 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !136  ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt6vectorIN5boost6cobalt2io8endpointENSt3pmr21polymorphic_allocatorIS3_EEEC2ERKS7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt12_Vector_baseIN5boost6cobalt2io8endpointENSt3pmr21polymorphic_allocatorIS3_EEEC2EmRKS6_.exit.i, %.lr.ph.i.i
  %.014.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %i.q, %_ZNSt12_Vector_baseIN5boost6cobalt2io8endpointENSt3pmr21polymorphic_allocatorIS3_EEEC2EmRKS6_.exit.i ] ; 4 uses
  %.sroa.010.013.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %i.u, %_ZNSt12_Vector_baseIN5boost6cobalt2io8endpointENSt3pmr21polymorphic_allocatorIS3_EEEC2EmRKS6_.exit.i ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.014.i.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.010.013.i.i, i64 128, i1 false), !tbaa.struct !319
  %i.x = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 128
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i, i64 128
  %i.z = load i64, ptr %i.y, align 8, !tbaa !90
  store i64 %i.z, ptr %i.x, align 8, !tbaa !90
  %i.aa = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 136
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i, i64 136
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !72
  store <2 x i32> %i.ac, ptr %i.aa, align 8, !tbaa !72
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i, i64 144 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 144 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.v
  br i1 %i.af, label %_ZNSt6vectorIN5boost6cobalt2io8endpointENSt3pmr21polymorphic_allocatorIS3_EEEC2ERKS7_.exit, label %.lr.ph.i.i, !llvm.loop !24

_ZNSt6vectorIN5boost6cobalt2io8endpointENSt3pmr21polymorphic_allocatorIS3_EEEC2ERKS7_.exit: ; preds = %.lr.ph.i.i, %_ZNSt12_Vector_baseIN5boost6cobalt2io8endpointENSt3pmr21polymorphic_allocatorIS3_EEEC2EmRKS6_.exit.i
  %.0.lcssa.i.i = phi ptr [ %i.q, %_ZNSt12_Vector_baseIN5boost6cobalt2io8endpointENSt3pmr21polymorphic_allocatorIS3_EEEC2EmRKS6_.exit.i ], [ %i.ae, %.lr.ph.i.i ]
  store ptr %.0.lcssa.i.i, ptr %i.r, align 8, !tbaa !317
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.ag, align 8, !tbaa !326
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.ah, align 8, !tbaa !327
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aj = load i64, ptr %4, align 8, !tbaa !228
  store i64 %i.aj, ptr %i.ai, align 8, !tbaa !228
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !249
  %.not.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5boost6cobalt2io8endpointENSt3pmr21polymorphic_allocatorIS3_EEEC2ERKS7_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !250
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !250
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !251
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.as, ptr %i.at, align 8, !tbaa !251
  store ptr null, ptr %i.ao, align 8, !tbaa !250
  store ptr null, ptr %i.ar, align 8, !tbaa !251
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !250
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !253
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(56) %i.an, ptr noundef nonnull align 8 dereferenceable(56) %i.am)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.ak, align 8, !tbaa !249
  br label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io8endpointEEEC2EOS6_.exit

bb.f:                                             ; preds = %_ZNSt6vectorIN5boost6cobalt2io8endpointENSt3pmr21polymorphic_allocatorIS3_EEEC2ERKS7_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false)
  br label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io8endpointEEEC2EOS6_.exit

bb.g:                                             ; preds = %bb.d
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  tail call void @__clang_call_terminate(ptr %i.az) #32
  unreachable

_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io8endpointEEEC2EOS6_.exit: ; preds = %bb.e, %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !254
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !254
  store ptr @_ZZN5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS7_17any_executor_base8prop_fnsIST_EEvE3fns, ptr %i.bb, align 8, !tbaa !254
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 16, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !238
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !238
  store ptr null, ptr %i.bg, align 8, !tbaa !238
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !328, !nonnull !51, !align !52
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !329
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS4_8endpointENSt3pmr21polymorphic_allocatorIS8_EEENS1_25default_connect_conditionENS3_18completion_handlerIJNS_6system10error_codeES8_EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !238  ; 3 uses
  %.not2.i = icmp eq ptr %i.b, null
  br i1 %.not2.i, label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !269  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.d, align 4, !tbaa !271
  %i.f = icmp eq i32 %i.e, 3
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #37
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.a, align 8, !tbaa !238
  br label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr nonnull %i.b)
          to label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i unwind label %bb.g, !inline_history !17

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #32
  unreachable

_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i:    ; preds = %bb.f, %bb.e, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !249
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io8endpointEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !250
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !272
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(56) %i.p)
          to label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io8endpointEEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #32
  unreachable

_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io8endpointEEED2Ev.exit: ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i, %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !147  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5boost6cobalt2io8endpointENSt3pmr21polymorphic_allocatorIS3_EEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io8endpointEEED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !148
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.w to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !149 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !39
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull %i.w, i64 noundef %i.ac, i64 noundef 8)
          to label %_ZNSt6vectorIN5boost6cobalt2io8endpointENSt3pmr21polymorphic_allocatorIS3_EEED2Ev.exit unwind label %bb.k, !inline_history !2

bb.k:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #32
end_hunk_0
begin_hunk_1_@_ZN5boost4asio6detail26reactive_socket_connect_opINS1_16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS5_8endpointENSt3pmr21polymorphic_allocatorIS9_EEENS1_25default_connect_conditionENS4_18completion_handlerIJNS_6system10error_codeES9_EEEEES7_E11do_completeEPvPNS1_19scheduler_operationERKSH_m:bb.a

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !136
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !136
  invoke void @_ZN5boost4asio6detail16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS4_8endpointENSt3pmr21polymorphic_allocatorIS8_EEENS1_25default_connect_conditionENS3_18completion_handlerIJNS_6system10error_codeES8_EEEE7processIN9__gnu_cxx17__normal_iteratorIPKS8_SC_EEEEvSG_iT_SP_(ptr noundef nonnull align 8 dereferenceable(184) %6, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %i.ap, i32 noundef 0, ptr %i.bd, ptr %i.bf)
          to label %_ZN5boost4asio6detail12handler_workINS1_16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS5_8endpointENSt3pmr21polymorphic_allocatorIS9_EEENS1_25default_connect_conditionENS4_18completion_handlerIJNS_6system10error_codeES9_EEEEES7_vE8completeINS1_7binder1ISJ_SH_EEEEvRT_RSJ_.exit unwind label %bb.p, !inline_history !950

bb.n:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 56
  invoke void @_ZNK5boost4asio9execution6detail17any_executor_base7executeINS0_6detail7binder1INS5_16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS9_8endpointENSt3pmr21polymorphic_allocatorISD_EEENS5_25default_connect_conditionENS8_18completion_handlerIJNS_6system10error_codeESD_EEEEESL_EEEEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.bg, ptr noundef nonnull align 8 dereferenceable(184) %6)
          to label %_ZN5boost4asio6detail12handler_workINS1_16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS5_8endpointENSt3pmr21polymorphic_allocatorIS9_EEENS1_25default_connect_conditionENS4_18completion_handlerIJNS_6system10error_codeES9_EEEEES7_vE8completeINS1_7binder1ISJ_SH_EEEEvRT_RSJ_.exit unwind label %bb.p, !inline_history !950

_ZN5boost4asio6detail12handler_workINS1_16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS5_8endpointENSt3pmr21polymorphic_allocatorIS9_EEENS1_25default_connect_conditionENS4_18completion_handlerIJNS_6system10error_codeES9_EEEEES7_vE8completeINS1_7binder1ISJ_SH_EEEEvRT_RSJ_.exit: ; preds = %bb.m, %bb.n
  fence release
  br label %bb.q

bb.o:                                             ; preds = %_ZN5boost4asio6detail12handler_workINS1_16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS5_8endpointENSt3pmr21polymorphic_allocatorIS9_EEENS1_25default_connect_conditionENS4_18completion_handlerIJNS_6system10error_codeES9_EEEEES7_vEC2EOSK_.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.bi = landingpad { ptr, i32 }
          cleanup
  fence release
  call void @_ZN5boost4asio6detail7binder1INS1_16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS5_8endpointENSt3pmr21polymorphic_allocatorIS9_EEENS1_25default_connect_conditionENS4_18completion_handlerIJNS_6system10error_codeES9_EEEEESH_ED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %6) #31
  br label %bb.af

bb.q:                                             ; preds = %_ZN5boost4asio6detail12handler_workINS1_16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS5_8endpointENSt3pmr21polymorphic_allocatorIS9_EEENS1_25default_connect_conditionENS4_18completion_handlerIJNS_6system10error_codeES9_EEEEES7_vE8completeINS1_7binder1ISJ_SH_EEEEvRT_RSJ_.exit, %_ZN5boost4asio6detail26reactive_socket_connect_opINS1_16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS5_8endpointENSt3pmr21polymorphic_allocatorIS9_EEENS1_25default_connect_conditionENS4_18completion_handlerIJNS_6system10error_codeES9_EEEEES7_E3ptr5resetEv.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !238 ; 3 uses
  %.not2.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not2.i.i.i, label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !269 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !271
  %i.bo = icmp eq i32 %i.bn, 3
  br i1 %i.bo, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bp = call noundef i32 @_ZSt19uncaught_exceptionsv() #37
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr null, ptr %i.bj, align 8, !tbaa !238
  br label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i.i

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  invoke void %i.bs(ptr nonnull %i.bk)
          to label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i.i unwind label %bb.w, !inline_history !17

bb.w:                                             ; preds = %bb.v
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #32
  unreachable

_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i.i: ; preds = %bb.v, %bb.u, %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !249
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io8endpointEEED2Ev.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !250
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !272
  invoke void %i.cb(ptr noundef nonnull align 8 dereferenceable(56) %i.by)
          to label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io8endpointEEED2Ev.exit.i.i unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #32
  unreachable

_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io8endpointEEED2Ev.exit.i.i: ; preds = %bb.x, %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !147 ; 3 uses
  %.not.i.i.i.i.i15 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i15, label %_ZN5boost4asio6detail7binder1INS1_16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS5_8endpointENSt3pmr21polymorphic_allocatorIS9_EEENS1_25default_connect_conditionENS4_18completion_handlerIJNS_6system10error_codeES9_EEEEESH_ED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io8endpointEEED2Ev.exit.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !148
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cf to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = load ptr, ptr %i.cg, align 8, !tbaa !149 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !39
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  invoke void %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull %i.cf, i64 noundef %i.cl, i64 noundef 8)
          to label %_ZN5boost4asio6detail7binder1INS1_16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS5_8endpointENSt3pmr21polymorphic_allocatorIS9_EEENS1_25default_connect_conditionENS4_18completion_handlerIJNS_6system10error_codeES9_EEEEESH_ED2Ev.exit unwind label %bb.aa, !inline_history !2

bb.aa:                                            ; preds = %bb.z
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #32
  unreachable

_ZN5boost4asio6detail7binder1INS1_16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS5_8endpointENSt3pmr21polymorphic_allocatorIS9_EEENS1_25default_connect_conditionENS4_18completion_handlerIJNS_6system10error_codeES9_EEEEESH_ED2Ev.exit: ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io8endpointEEED2Ev.exit.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !249
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost4asio6detail7binder1INS1_16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS5_8endpointENSt3pmr21polymorphic_allocatorIS9_EEENS1_25default_connect_conditionENS4_18completion_handlerIJNS_6system10error_codeES9_EEEEESH_ED2Ev.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !250
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !272
  invoke void %i.cy(ptr noundef nonnull align 8 dereferenceable(56) %i.cv)
          to label %_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit.i unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #32
  unreachable

_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit.i: ; preds = %bb.ab, %_ZN5boost4asio6detail7binder1INS1_16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS5_8endpointENSt3pmr21polymorphic_allocatorIS9_EEENS1_25default_connect_conditionENS4_18completion_handlerIJNS_6system10error_codeES9_EEEEESH_ED2Ev.exit
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !249
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %_ZN5boost4asio6detail26reactive_socket_connect_opINS1_16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS5_8endpointENSt3pmr21polymorphic_allocatorIS9_EEENS1_25default_connect_conditionENS4_18completion_handlerIJNS_6system10error_codeES9_EEEEES7_E3ptrD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit.i
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !250
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !272
  invoke void %i.dg(ptr noundef nonnull align 8 dereferenceable(112) %5)
          to label %_ZN5boost4asio6detail26reactive_socket_connect_opINS1_16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS5_8endpointENSt3pmr21polymorphic_allocatorIS9_EEENS1_25default_connect_conditionENS4_18completion_handlerIJNS_6system10error_codeES9_EEEEES7_E3ptrD2Ev.exit unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #32
  unreachable

_ZN5boost4asio6detail26reactive_socket_connect_opINS1_16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS5_8endpointENSt3pmr21polymorphic_allocatorIS9_EEENS1_25default_connect_conditionENS4_18completion_handlerIJNS_6system10error_codeES9_EEEEES7_E3ptrD2Ev.exit: ; preds = %_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

bb.af:                                            ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.p ], [ %i.bh, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @_ZN5boost4asio6detail12handler_workINS1_16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS5_8endpointENSt3pmr21polymorphic_allocatorIS9_EEENS1_25default_connect_conditionENS4_18completion_handlerIJNS_6system10error_codeES9_EEEEES7_vED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @_ZN5boost4asio6detail26reactive_socket_connect_opINS1_16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS5_8endpointENSt3pmr21polymorphic_allocatorIS9_EEENS1_25default_connect_conditionENS4_18completion_handlerIJNS_6system10error_codeES9_EEEEES7_E3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS4_8endpointENSt3pmr21polymorphic_allocatorIS8_EEENS1_25default_connect_conditionENS3_18completion_handlerIJNS_6system10error_codeES8_EEEEC2EOSI_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !951
  store i64 %i.a, ptr %0, align 8, !tbaa !951
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !336, !nonnull !51, !align !52
  store ptr %i.d, ptr %i.b, align 8, !tbaa !143
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !317  ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !147  ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = tail call noundef nonnull ptr @_ZNSt3pmr20get_default_resourceEv() #31 ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  store i64 %i.n, ptr %i.e, align 8, !tbaa !233
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN5boost6cobalt2io8endpointENSt3pmr21polymorphic_allocatorIS3_EEEC2EmRKS6_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.l, 144
  %3 = icmp ugt i64 %2, 128102389400760775
  br i1 %3, label %bb.c, label %_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorIN5boost6cobalt2io8endpointEEEE8allocateERS6_m.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #35
  unreachable

_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorIN5boost6cobalt2io8endpointEEEE8allocateERS6_m.exit.i.i.i.i: ; preds = %bb.b
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef nonnull align 8 ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef %i.l, i64 noundef 8), !inline_history !23
  br label %_ZNSt12_Vector_baseIN5boost6cobalt2io8endpointENSt3pmr21polymorphic_allocatorIS3_EEEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseIN5boost6cobalt2io8endpointENSt3pmr21polymorphic_allocatorIS3_EEEC2EmRKS6_.exit.i: ; preds = %_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorIN5boost6cobalt2io8endpointEEEE8allocateERS6_m.exit.i.i.i.i, %bb.a
  %i.t = phi ptr [ %i.s, %_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorIN5boost6cobalt2io8endpointEEEE8allocateERS6_m.exit.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.t, ptr %i.o, align 8, !tbaa !147
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !317
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.v, ptr %i.w, align 8, !tbaa !148
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !136  ; 2 uses
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !136  ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt6vectorIN5boost6cobalt2io8endpointENSt3pmr21polymorphic_allocatorIS3_EEEC2ERKS7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt12_Vector_baseIN5boost6cobalt2io8endpointENSt3pmr21polymorphic_allocatorIS3_EEEC2EmRKS6_.exit.i, %.lr.ph.i.i
  %.014.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %i.t, %_ZNSt12_Vector_baseIN5boost6cobalt2io8endpointENSt3pmr21polymorphic_allocatorIS3_EEEC2EmRKS6_.exit.i ] ; 4 uses
  %.sroa.010.013.i.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %i.x, %_ZNSt12_Vector_baseIN5boost6cobalt2io8endpointENSt3pmr21polymorphic_allocatorIS3_EEEC2EmRKS6_.exit.i ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.014.i.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.010.013.i.i, i64 128, i1 false), !tbaa.struct !319
  %i.aa = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 128
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i, i64 128
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !90
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !90
  %i.ad = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 136
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i, i64 136
  %i.af = load <2 x i32>, ptr %i.ae, align 8, !tbaa !72
  store <2 x i32> %i.af, ptr %i.ad, align 8, !tbaa !72
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i, i64 144 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 144 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.y
  br i1 %i.ai, label %_ZNSt6vectorIN5boost6cobalt2io8endpointENSt3pmr21polymorphic_allocatorIS3_EEEC2ERKS7_.exit, label %.lr.ph.i.i, !llvm.loop !24

_ZNSt6vectorIN5boost6cobalt2io8endpointENSt3pmr21polymorphic_allocatorIS3_EEEC2ERKS7_.exit: ; preds = %.lr.ph.i.i, %_ZNSt12_Vector_baseIN5boost6cobalt2io8endpointENSt3pmr21polymorphic_allocatorIS3_EEEC2EmRKS6_.exit.i
  %.0.lcssa.i.i = phi ptr [ %i.t, %_ZNSt12_Vector_baseIN5boost6cobalt2io8endpointENSt3pmr21polymorphic_allocatorIS3_EEEC2EmRKS6_.exit.i ], [ %i.ah, %.lr.ph.i.i ]
  store ptr %.0.lcssa.i.i, ptr %i.u, align 8, !tbaa !317
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !326
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !326
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !327
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !327
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !228
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !228
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !249
  %.not.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5boost6cobalt2io8endpointENSt3pmr21polymorphic_allocatorIS3_EEEC2ERKS7_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !250
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !250
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !251
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !251
  store ptr null, ptr %i.aw, align 8, !tbaa !250
  store ptr null, ptr %i.az, align 8, !tbaa !251
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !250
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !253
  invoke void %i.be(ptr noundef nonnull align 8 dereferenceable(56) %i.av, ptr noundef nonnull align 8 dereferenceable(56) %i.au)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.as, align 8, !tbaa !249
  br label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io8endpointEEEC2EOS6_.exit

bb.f:                                             ; preds = %_ZNSt6vectorIN5boost6cobalt2io8endpointENSt3pmr21polymorphic_allocatorIS3_EEEC2ERKS7_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  br label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io8endpointEEEC2EOS6_.exit

bb.g:                                             ; preds = %bb.d
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  tail call void @__clang_call_terminate(ptr %i.bh) #32
  unreachable

_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io8endpointEEEC2EOS6_.exit: ; preds = %bb.e, %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !254
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !254
  store ptr @_ZZN5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS7_17any_executor_base8prop_fnsIST_EEvE3fns, ptr %i.bj, align 8, !tbaa !254
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 16, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !238
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !238
  store ptr null, ptr %i.bo, align 8, !tbaa !238
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !328, !nonnull !51, !align !52
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !329
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail12handler_workINS1_16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS5_8endpointENSt3pmr21polymorphic_allocatorIS9_EEENS1_25default_connect_conditionENS4_18completion_handlerIJNS_6system10error_codeES9_EEEEES7_vED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !249
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !250
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !272
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #32
  unreachable

_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !249
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorEvNS0_10io_contextENS0_8executorEvED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !250
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !272
  invoke void %i.o(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorEvNS0_10io_contextENS0_8executorEvED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #32
  unreachable

_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorEvNS0_10io_contextENS0_8executorEvED2Ev.exit: ; preds = %_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail26reactive_socket_connect_opINS1_16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS5_8endpointENSt3pmr21polymorphic_allocatorIS9_EEENS1_25default_connect_conditionENS4_18completion_handlerIJNS_6system10error_codeES9_EEEEES7_ED2Ev(ptr noundef nonnull align 8 dead_on_return(352) dereferenceable(352) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !249
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !250
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !272
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #32
  unreachable

_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !249
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN5boost4asio6detail12handler_workINS1_16range_connect_opINS_6cobalt2io13protocol_typeENS0_15any_io_executorESt6vectorINS5_8endpointENSt3pmr21polymorphic_allocatorIS9_EEENS1_25default_connect_conditionENS4_18completion_handlerIJNS_6system10error_codeES9_EEEEES7_vED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !250
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !272
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(112) %i.a)
end_hunk_1
