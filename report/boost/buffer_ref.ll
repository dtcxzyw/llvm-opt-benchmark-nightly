Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/buffer_ref?download=true
inline.NumInlined: 4775
inline.NumDeleted: 1323
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZNK5boost4asio9execution6detail17any_executor_base7executeINS0_6detail7binder2INS5_22read_until_delim_op_v1INS0_19basic_readable_pipeINS0_15any_io_executorEEENS_5beast10buffer_refINSB_18basic_multi_bufferISaIcEEEEENS5_16detached_handlerEEENS_6system10error_codeEmEEEEvOT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.o

bb.n:                                             ; preds = %bb.c, %_ZN5boost4asio6detail17executor_functionD2Ev.exit
  ret void

bb.o:                                             ; preds = %bb.m, %_ZN5boost4asio6detail17executor_functionD2Ev.exit8
  %.pn = phi { ptr, i32 } [ %i.ah, %_ZN5boost4asio6detail17executor_functionD2Ev.exit8 ], [ %i.am, %bb.m ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail22executor_function_view8completeINS1_7binder2INS1_22read_until_delim_op_v1INS0_19basic_readable_pipeINS0_15any_io_executorEEENS_5beast10buffer_refINS9_18basic_multi_bufferISaIcEEEEENS1_16detached_handlerEEENS_6system10error_codeEmEEEEvPv(ptr noundef %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i64, ptr %i.b, align 8, !tbaa !366
  tail call void @_ZN5boost4asio6detail22read_until_delim_op_v1INS0_19basic_readable_pipeINS0_15any_io_executorEEENS_5beast10buffer_refINS6_18basic_multi_bufferISaIcEEEEENS1_16detached_handlerEEclENS_6system10error_codeEmi(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %i.a, i64 noundef %i.c, i32 noundef 0), !inline_history !21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS1_22read_until_delim_op_v1INS0_19basic_readable_pipeINS0_15any_io_executorEEENS_5beast10buffer_refINS9_18basic_multi_bufferISaIcEEEEENS1_16detached_handlerEEENS_6system10error_codeEmEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !369
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !369
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !370  ; 5 uses
  %.not1.i = icmp eq ptr %i.d, null
  br i1 %.not1.i, label %_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS1_22read_until_delim_op_v1INS0_19basic_readable_pipeINS0_15any_io_executorEEENS_5beast10buffer_refINS9_18basic_multi_bufferISaIcEEEEENS1_16detached_handlerEEENS_6system10error_codeEmEESaIvEE3ptr5resetEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = invoke noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
          to label %.noexc unwind label %bb.f     ; 4 uses

.noexc:                                           ; preds = %bb.d
  %.not3.i = icmp eq ptr %i.e, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !111
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !111
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %.thread.i.i.i

bb.e:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.lcssa.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.n = load i8, ptr %i.m, align 1, !tbaa !40
  store i8 %i.n, ptr %i.d, align 1, !tbaa !40
  store ptr %i.d, ptr %i.l, align 8, !tbaa !111
  br label %_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS1_22read_until_delim_op_v1INS0_19basic_readable_pipeINS0_15any_io_executorEEENS_5beast10buffer_refINS9_18basic_multi_bufferISaIcEEEEENS1_16detached_handlerEEENS_6system10error_codeEmEESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %.noexc
  tail call void @free(ptr noundef nonnull %i.d) #31
  br label %_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS1_22read_until_delim_op_v1INS0_19basic_readable_pipeINS0_15any_io_executorEEENS_5beast10buffer_refINS9_18basic_multi_bufferISaIcEEEEENS1_16detached_handlerEEENS_6system10error_codeEmEESaIvEE3ptr5resetEv.exit

_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS1_22read_until_delim_op_v1INS0_19basic_readable_pipeINS0_15any_io_executorEEENS_5beast10buffer_refINS9_18basic_multi_bufferISaIcEEEEENS1_16detached_handlerEEENS_6system10error_codeEmEESaIvEE3ptr5resetEv.exit: ; preds = %bb.e, %.thread.i.i.i, %bb.c
  ret void

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail17executor_function8completeINS1_7binder2INS1_22read_until_delim_op_v1INS0_19basic_readable_pipeINS0_15any_io_executorEEENS_5beast10buffer_refINS9_18basic_multi_bufferISaIcEEEEENS1_16detached_handlerEEENS_6system10error_codeEmEESaIvEEEvPNS2_9impl_baseEb(ptr noundef %0, i1 noundef zeroext %1) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::allocator.35", align 1 ; 4 uses
  %3 = alloca %"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder2<boost::asio::detail::read_until_delim_op_v1<boost::asio::basic_readable_pipe<>, boost::beast::buffer_ref<multi_buffer>, boost::asio::detail::detached_handler>, boost::system::error_code, unsigned long>, std::allocator<void>>::ptr", align 8 ; 7 uses
  %4 = alloca %"class.boost::asio::detail::binder2.122", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %2, ptr %3, align 8, !tbaa !1166
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !370
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !355, !nonnull !47, !align !48
  store ptr %i.d, ptr %4, align 8, !tbaa !221
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !102
  store i64 %i.g, ptr %i.e, align 8, !tbaa !102
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i8, ptr %i.i, align 8, !tbaa !235
  store i8 %i.j, ptr %i.h, align 8, !tbaa !235
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !236
  store i32 %i.m, ptr %i.k, align 4, !tbaa !236
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !237
  store i64 %i.p, ptr %i.n, align 8, !tbaa !237
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !tbaa.struct !297
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = load i64, ptr %i.t, align 8, !tbaa !366  ; 2 uses
  store i64 %i.u, ptr %i.s, align 8, !tbaa !366
  store ptr null, ptr %i.b, align 8, !tbaa !369
  %i.v = invoke noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
          to label %.noexc unwind label %bb.e     ; 4 uses

.noexc:                                           ; preds = %bb.a
  %.not3.i = icmp eq ptr %i.v, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !111
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.b, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !111
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.lcssa.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !40
  store i8 %i.ae, ptr %0, align 8, !tbaa !40
  store ptr %0, ptr %i.ac, align 8, !tbaa !111
  br label %bb.c

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %.noexc
  call void @free(ptr noundef nonnull %0) #31
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !370
  br i1 %1, label %bb.d, label %_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS1_22read_until_delim_op_v1INS0_19basic_readable_pipeINS0_15any_io_executorEEENS_5beast10buffer_refINS9_18basic_multi_bufferISaIcEEEEENS1_16detached_handlerEEENS_6system10error_codeEmEESaIvEE3ptrD2Ev.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5boost4asio6detail22read_until_delim_op_v1INS0_19basic_readable_pipeINS0_15any_io_executorEEENS_5beast10buffer_refINS6_18basic_multi_bufferISaIcEEEEENS1_16detached_handlerEEclENS_6system10error_codeEmi(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %i.q, i64 noundef %i.u, i32 noundef 0)
          to label %_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS1_22read_until_delim_op_v1INS0_19basic_readable_pipeINS0_15any_io_executorEEENS_5beast10buffer_refINS9_18basic_multi_bufferISaIcEEEEENS1_16detached_handlerEEENS_6system10error_codeEmEESaIvEE3ptrD2Ev.exit unwind label %bb.e, !inline_history !21

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS1_22read_until_delim_op_v1INS0_19basic_readable_pipeINS0_15any_io_executorEEENS_5beast10buffer_refINS9_18basic_multi_bufferISaIcEEEEENS1_16detached_handlerEEENS_6system10error_codeEmEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %i.af

_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS1_22read_until_delim_op_v1INS0_19basic_readable_pipeINS0_15any_io_executorEEENS_5beast10buffer_refINS9_18basic_multi_bufferISaIcEEEEENS1_16detached_handlerEEENS_6system10error_codeEmEESaIvEE3ptrD2Ev.exit: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost4asio6detail23descriptor_read_op_baseINS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEEE10do_performEPNS1_10reactor_opE(ptr noundef %0) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::asio::detail::buffer_sequence_adapter", align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !129, !noalias !1176 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !129, !noalias !1177 ; 3 uses
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_14mutable_bufferENS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEEEC2ERKS9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %2 = load ptr, ptr %i.j, align 8, !tbaa !93
  br label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i

bb.b:                                             ; preds = %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i
  %exitcond.not.i = icmp eq i64 %i.t, 64
  br i1 %exitcond.not.i, label %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_14mutable_bufferENS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEEEC2ERKS9_.exit.loopexit, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i, !llvm.loop !1175

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i: ; preds = %.lr.ph.i.i, %bb.b
  %.sroa.5.07.i.i9 = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.s, %bb.b ] ; 5 uses
  %i.k = phi i64 [ 0, %.lr.ph.i.i ], [ %i.t, %bb.b ] ; 2 uses
  %i.l = phi i64 [ 0, %.lr.ph.i.i ], [ %i.r, %bb.b ]
  %i.m = icmp eq ptr %.sroa.5.07.i.i9, %2
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.5.07.i.i9, i64 16
  %.sroa.6.0.in.i.i.i = select i1 %i.m, ptr %i.g, ptr %i.n
  %.sroa.6.0.i.i.i = load i64, ptr %.sroa.6.0.in.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.sroa.07.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.07.i.i9, i64 24
  %i.o = icmp eq ptr %.sroa.5.07.i.i9, %i.d
  %..i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %.sroa.6.0.i.i.i)
  %.sroa.07.1.i.i.idx.i = select i1 %i.o, i64 %..i.i.i.i, i64 0 ; 2 uses
  %.sroa.07.1.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i, i64 %.sroa.07.1.i.i.idx.i
  %.sroa.6.1.i.i.i = sub i64 %.sroa.6.0.i.i.i, %.sroa.07.1.i.i.idx.i ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.k ; 2 uses
  store ptr %.sroa.07.1.i.i.i, ptr %i.p, align 8, !tbaa !111
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.6.1.i.i.i, ptr %i.q, align 8, !tbaa !372
  %i.r = add i64 %.sroa.6.1.i.i.i, %i.l           ; 2 uses
  %i.s = load ptr, ptr %.sroa.5.07.i.i9, align 8, !tbaa !90 ; 2 uses
  %i.t = add nuw nsw i64 %i.k, 1                  ; 4 uses
  %.not6.i = icmp eq ptr %i.s, %i.f
  br i1 %.not6.i, label %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_14mutable_bufferENS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEEEC2ERKS9_.exit.loopexit, label %bb.b, !llvm.loop !1175

_ZN5boost4asio6detail23buffer_sequence_adapterINS0_14mutable_bufferENS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEEEC2ERKS9_.exit.loopexit: ; preds = %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i, %bb.b
  %.ph = phi i64 [ 64, %bb.b ], [ %i.t, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i ]
  store i64 %i.r, ptr %i.b, align 8, !tbaa !1179
  store i64 %i.t, ptr %i.a, align 8, !tbaa !1180
  br label %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_14mutable_bufferENS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEEEC2ERKS9_.exit

_ZN5boost4asio6detail23buffer_sequence_adapterINS0_14mutable_bufferENS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEEEC2ERKS9_.exit: ; preds = %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_14mutable_bufferENS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEEEC2ERKS9_.exit.loopexit, %bb.a
  %3 = phi i64 [ 0, %bb.a ], [ %.ph, %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_14mutable_bufferENS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEEEC2ERKS9_.exit.loopexit ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load i32, ptr %i.u, align 8, !tbaa !364
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = call noundef zeroext i1 @_ZN5boost4asio6detail14descriptor_ops17non_blocking_readEiP5iovecmRNS_6system10error_codeERm(i32 noundef %i.v, ptr noundef nonnull %1, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  %i.z = zext i1 %i.y to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret i32 %i.z
}

declare noundef zeroext i1 @_ZN5boost4asio6detail14descriptor_ops17non_blocking_readEiP5iovecmRNS_6system10error_codeERm(i32 noundef, ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast18basic_multi_bufferISaIcEE11move_assignERS3_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90, !noalias !1183
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !83
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  invoke void @_ZN5boost5beast18basic_multi_bufferISaIcEE13shrink_to_fitEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 14 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.h = icmp eq ptr %i.g, %i.f
  %i.i = icmp eq ptr %1, %0
  br i1 %i.i, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvEaSEOSE_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !90   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null          ; 2 uses
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !90
  %.not.i24.i.i.i = icmp eq ptr %i.k, null        ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.a, ptr %i.a, align 8, !tbaa !90
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.l, align 8, !tbaa !93
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = phi ptr [ %i.a, %bb.d ], [ %i.j, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not.i24.i.i.i, label %bb.f, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.e
  %.pre25.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !90 ; 2 uses
  %.pre26.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !93 ; 2 uses
  %.phi.trans.insert27.i.i.i = getelementptr inbounds nuw i8, ptr %.pre25.i.i.i, i64 8
  %.pre28.i.i.i = load ptr, ptr %.phi.trans.insert27.i.i.i, align 8, !tbaa !93
  %.pre29.i.i.i = load ptr, ptr %.pre26.i.i.i, align 8, !tbaa !90
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.f, ptr %i.f, align 8, !tbaa !90
  store ptr %i.f, ptr %i.n, align 8, !tbaa !93
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !90
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i
  %i.o = phi ptr [ %i.f, %bb.f ], [ %.pre29.i.i.i, %._crit_edge.i.i.i ]
  %i.p = phi ptr [ %i.f, %bb.f ], [ %.pre28.i.i.i, %._crit_edge.i.i.i ]
  %i.q = phi ptr [ %i.f, %bb.f ], [ %.pre26.i.i.i, %._crit_edge.i.i.i ]
  %i.r = phi ptr [ %i.f, %bb.f ], [ %.pre25.i.i.i, %._crit_edge.i.i.i ]
  %i.s = phi ptr [ %.pre.i.i.i, %bb.f ], [ %i.m, %._crit_edge.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !93   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !93
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.p, ptr %i.v, align 8, !tbaa !93
  store ptr %i.w, ptr %i.x, align 8, !tbaa !93
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !90
  store ptr %i.o, ptr %i.u, align 8, !tbaa !90
  store ptr %i.y, ptr %i.q, align 8, !tbaa !90
  %i.z = load <2 x ptr>, ptr %i.f, align 8, !tbaa !238
  %i.aa = load <2 x ptr>, ptr %i.a, align 8, !tbaa !238
  store <2 x ptr> %i.z, ptr %i.a, align 8, !tbaa !238
  store <2 x ptr> %i.aa, ptr %i.f, align 8, !tbaa !238
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %.not.i24.i.i.i, label %bb.j, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvEaSEOSE_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvEaSEOSE_.exit

_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvEaSEOSE_.exit: ; preds = %bb.b, %bb.i, %bb.j
  br i1 %i.h, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvEaSEOSE_.exit
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !83
  br label %bb.l

bb.l:                                             ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvEaSEOSE_.exit, %bb.k
  %.sroa.017.0 = phi ptr [ %i.ab, %bb.k ], [ %i.a, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvEaSEOSE_.exit ]
  store ptr %.sroa.017.0, ptr %i.c, align 8, !tbaa !83
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = load <2 x i64>, ptr %i.ac, align 8, !tbaa !37
  store <2 x i64> %i.ae, ptr %i.d, align 8, !tbaa !37
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = load <2 x i64>, ptr %i.af, align 8, !tbaa !37
  store <2 x i64> %i.ah, ptr %i.ag, align 8, !tbaa !37
  %i.ai = load i64, ptr %1, align 8, !tbaa !82
  store i64 %i.ai, ptr %0, align 8, !tbaa !82
  store i64 0, ptr %i.ac, align 8, !tbaa !81
  store ptr %i.f, ptr %i.e, align 8, !tbaa !83
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  ret void

bb.m:                                             ; preds = %bb.a
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast18basic_multi_bufferISaIcEE13shrink_to_fitEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::length_error", align 8 ; 5 uses
  %2 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %3 = alloca %"class.std::length_error", align 8 ; 5 uses
  %4 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %5 = alloca %"class.std::length_error", align 8 ; 5 uses
  %6 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %7 = alloca %"class.boost::intrusive::list_impl", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 20 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  %i.c = icmp eq ptr %i.b, %i.a
  %i.d = or i1 %.not.i.i, %i.c
  br i1 %i.d, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !81
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %.lr.ph.i, label %bb.c

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.04.07.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.b, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.sroa.04.07.i, align 8, !tbaa !90, !noalias !1220 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !88
  %i.k = add i64 %i.j, 31
  %i.l = and i64 %i.k, -8
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.07.i, i64 noundef %i.l) #35
  %.not.i = icmp eq ptr %i.h, %i.a
  br i1 %.not.i, label %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit, label %.lr.ph.i, !llvm.loop !3

_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit: ; preds = %.lr.ph.i
  store ptr %i.a, ptr %i.a, align 8, !tbaa !90
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.m, align 8, !tbaa !93
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.n, align 8, !tbaa !83
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  br label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !83   ; 5 uses
  %.not51 = icmp eq ptr %i.p, %i.a
  br i1 %.not51, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !93   ; 3 uses
  %.not52 = icmp eq ptr %i.p, %i.r
  br i1 %.not52, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %7, ptr %i.s, align 8, !tbaa !93
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !90   ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.a
  %.not23.i.i.i = icmp eq ptr %7, %i.t
  %or.cond.i.i.i = or i1 %.not23.i.i.i, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit24, label %.lr.ph.i21.preheader

.lr.ph.i21.preheader:                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !93   ; 2 uses
  store ptr %7, ptr %i.r, align 8, !tbaa !90
  store ptr %i.r, ptr %i.s, align 8, !tbaa !93
end_hunk_0
