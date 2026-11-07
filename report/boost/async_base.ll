Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/async_base?download=true
inline.NumInlined: 2739
inline.NumDeleted: 1229
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5boost4asio6detail22executor_function_view8completeINS1_7binder0INS1_14append_handlerIZNS_5beast15async_base_test10async_readINS6_4test12basic_streamINS0_15any_io_executorEEEZNS7_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSF_E2opJSH_mEEEEEEEvPv:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerIZNS_5beast15async_base_test10async_readINS6_4test12basic_streamINS0_15any_io_executorEEEZNS7_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSF_E2opJSH_mEEEEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !270  ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseIZNS0_15async_base_test12testJavadocsEvE7handlerNS_4asio15any_io_executorESaIvEEE, i64 16), ptr %i.c, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.e = load i8, ptr %i.d, align 8, !tbaa !196, !range !73, !noundef !74
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerIZNS_5beast15async_base_test10async_readINS6_4test12basic_streamINS0_15any_io_executorEEEZNS7_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSF_E2opJSH_mEEEEESaIvEED2Ev.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.g) #31, !inline_history !197
  br label %_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerIZNS_5beast15async_base_test10async_readINS6_4test12basic_streamINS0_15any_io_executorEEEZNS7_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSF_E2opJSH_mEEEEESaIvEED2Ev.exit.i

_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerIZNS_5beast15async_base_test10async_readINS6_4test12basic_streamINS0_15any_io_executorEEEZNS7_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSF_E2opJSH_mEEEEESaIvEED2Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.h) #31, !inline_history !197
  store ptr null, ptr %i.a, align 8, !tbaa !270
  br label %bb.d

bb.d:                                             ; preds = %_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerIZNS_5beast15async_base_test10async_readINS6_4test12basic_streamINS0_15any_io_executorEEEZNS7_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSF_E2opJSH_mEEEEESaIvEED2Ev.exit.i, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !271  ; 5 uses
  %.not1.i = icmp eq ptr %i.j, null
  br i1 %.not1.i, label %_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerIZNS_5beast15async_base_test10async_readINS6_4test12basic_streamINS0_15any_io_executorEEEZNS7_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSF_E2opJSH_mEEEEESaIvEE3ptr5resetEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = invoke noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
          to label %.noexc unwind label %bb.g     ; 4 uses

.noexc:                                           ; preds = %bb.e
  %.not3.i = icmp eq ptr %i.k, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.noexc
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !77
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !77
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %.thread.i.i.i

bb.f:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.lcssa.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 224
  %i.t = load i8, ptr %i.s, align 1, !tbaa !42
  store i8 %i.t, ptr %i.j, align 1, !tbaa !42
  store ptr %i.j, ptr %i.r, align 8, !tbaa !77
  br label %_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerIZNS_5beast15async_base_test10async_readINS6_4test12basic_streamINS0_15any_io_executorEEEZNS7_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSF_E2opJSH_mEEEEESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %.noexc
  tail call void @free(ptr noundef nonnull %i.j) #31
  br label %_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerIZNS_5beast15async_base_test10async_readINS6_4test12basic_streamINS0_15any_io_executorEEEZNS7_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSF_E2opJSH_mEEEEESaIvEE3ptr5resetEv.exit

_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerIZNS_5beast15async_base_test10async_readINS6_4test12basic_streamINS0_15any_io_executorEEEZNS7_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSF_E2opJSH_mEEEEESaIvEE3ptr5resetEv.exit: ; preds = %bb.f, %.thread.i.i.i, %bb.d
  ret void

bb.g:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost4asio6detail16thread_info_base8allocateINS2_21executor_function_tagEEEPvT_PS2_mm(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  %i.a = add i64 %1, 3                            ; 3 uses
  %i.b = lshr i64 %i.a, 2                         ; 3 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %.preheader53.preheader

.preheader53.preheader:                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77   ; 6 uses
  %.not46 = icmp eq ptr %i.d, null                ; 2 uses
  br i1 %.not46, label %.thread.thread, label %bb.b

bb.b:                                             ; preds = %.preheader53.preheader
  %i.e = load i8, ptr %i.d, align 1, !tbaa !42
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
  store ptr null, ptr %i.j, align 8, !tbaa !77
  %i.k = load i8, ptr %.lcssa64, align 1, !tbaa !42
  br label %bb.i

.thread:                                          ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !77   ; 2 uses
  %.not46.1 = icmp eq ptr %i.m, null
  br i1 %.not46.1, label %.preheader.1, label %bb.d

.thread.thread:                                   ; preds = %.preheader53.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !77   ; 3 uses
  %.not46.174 = icmp eq ptr %i.o, null
  br i1 %.not46.174, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.thread.thread, %.thread
  %spec.select76 = phi ptr [ %i.o, %.thread.thread ], [ %i.d, %.thread ]
  %i.p = phi ptr [ %i.o, %.thread.thread ], [ %i.m, %.thread ] ; 3 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !42
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
  store ptr null, ptr %i.v, align 8, !tbaa !77
  tail call void @free(ptr noundef nonnull %.lcssa) #31
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
  %i.ae = tail call noalias ptr @aligned_alloc(i64 noundef %i.y, i64 noundef %i.ad) #37 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ae, i64 %i.y) ]
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %bb.f, label %_ZN5boost4asio11aligned_newEmm.exit

bb.f:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %3, align 8, !tbaa !47
  invoke void @_ZN5boost15throw_exceptionISt9bad_allocEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #33
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %i.af

_ZN5boost4asio11aligned_newEmm.exit:              ; preds = %.loopexit
  %i.ag = icmp ult i64 %i.a, 1024
  %i.ah = trunc i64 %i.b to i8
  %i.ai = select i1 %i.ag, i8 %i.ah, i8 0
  br label %bb.i

bb.i:                                             ; preds = %.thread51, %_ZN5boost4asio11aligned_newEmm.exit
  %.lcssa64.sink = phi ptr [ %.lcssa64, %.thread51 ], [ %i.ae, %_ZN5boost4asio11aligned_newEmm.exit ] ; 2 uses
  %.sink = phi i8 [ %i.k, %.thread51 ], [ %i.ai, %_ZN5boost4asio11aligned_newEmm.exit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.lcssa64.sink, i64 %1
  store i8 %.sink, ptr %i.aj, align 1, !tbaa !42
  ret ptr %.lcssa64.sink
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail17executor_function8completeINS1_7binder0INS1_14append_handlerIZNS_5beast15async_base_test10async_readINS6_4test12basic_streamINS0_15any_io_executorEEEZNS7_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSF_E2opJSH_mEEEEESaIvEEEvPNS2_9impl_baseEb(ptr noundef %0, i1 noundef zeroext %1) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::beast::test::basic_stream<>::run_read_op", align 8 ; 4 uses
  %3 = alloca %"class.std::allocator.20", align 1 ; 4 uses
  %4 = alloca %"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder0<boost::asio::detail::append_handler<op, boost::system::error_code, unsigned long>>, std::allocator<void>>::ptr", align 8 ; 7 uses
  %5 = alloca %"class.boost::asio::detail::binder0.117", align 8 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %3, ptr %4, align 8, !tbaa !801
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !271
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseIZNS0_15async_base_test12testJavadocsEvE7handlerNS_4asio15any_io_executorESaIvEEE, i64 16), ptr %5, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(113) %i.c, ptr noundef nonnull align 8 dereferenceable(113) %i.d) #31
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !196, !range !73, !noundef !74 ; 2 uses
  %i.h = trunc nuw i8 %i.g to i1
  store i8 %i.g, ptr %i.e, align 8, !tbaa !196
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.j) #31
  store i8 0, ptr %i.f, align 8, !tbaa !196
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !207
  store i32 %i.m, ptr %i.k, align 8, !tbaa !207
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVZN5boost5beast15async_base_test10async_readINS0_4test12basic_streamINS_4asio15any_io_executorEEEZNS1_12testJavadocsEvE7handlerEENS5_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS5_14mutable_bufferEOSA_E2op, i64 16), ptr %5, align 8, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 176 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = load i64, ptr %i.q, align 8, !tbaa !39
  store i64 %i.r, ptr %i.p, align 8, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !tbaa.struct !144
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseIZNS0_15async_base_test12testJavadocsEvE7handlerNS_4asio15any_io_executorESaIvEEE, i64 16), ptr %i.u, align 8, !tbaa !47
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.d) #31, !inline_history !197
  store ptr null, ptr %i.b, align 8, !tbaa !270
  %i.v = invoke noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
          to label %.noexc unwind label %bb.i     ; 4 uses

.noexc:                                           ; preds = %bb.c
  %.not3.i = icmp eq ptr %i.v, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !77
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.d, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !77
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.d, label %.thread.i.i.i

bb.d:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.lcssa.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !42
  store i8 %i.ae, ptr %0, align 8, !tbaa !42
  store ptr %0, ptr %i.ac, align 8, !tbaa !77
  br label %_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerIZNS_5beast15async_base_test10async_readINS6_4test12basic_streamINS0_15any_io_executorEEEZNS7_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSF_E2opJSH_mEEEEESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %.noexc
  call void @free(ptr noundef nonnull %0) #31
  br label %_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerIZNS_5beast15async_base_test10async_readINS6_4test12basic_streamINS0_15any_io_executorEEEZNS7_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSF_E2opJSH_mEEEEESaIvEE3ptr5resetEv.exit

_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerIZNS_5beast15async_base_test10async_readINS6_4test12basic_streamINS0_15any_io_executorEEEZNS7_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSF_E2opJSH_mEEEEESaIvEE3ptr5resetEv.exit: ; preds = %bb.d, %.thread.i.i.i
  store ptr null, ptr %i.a, align 8, !tbaa !271
  br i1 %1, label %bb.e, label %_ZN5boost4asio6detail7binder0INS1_14append_handlerIZNS_5beast15async_base_test10async_readINS4_4test12basic_streamINS0_15any_io_executorEEEZNS5_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSD_E2opJSF_mEEEEclEv.exit

bb.e:                                             ; preds = %_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerIZNS_5beast15async_base_test10async_readINS6_4test12basic_streamINS0_15any_io_executorEEEZNS7_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSF_E2opJSH_mEEEEESaIvEE3ptr5resetEv.exit
  %.sroa.02.0.copyload.i.i.i = load i32, ptr %i.s, align 8
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 200
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !tbaa !39 ; 2 uses
  %i.af = load i64, ptr %i.p, align 8, !tbaa !39  ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !212
  %i.ai = add i64 %i.ah, %i.af
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !212
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 152 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 160 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !257 ; 4 uses
  %spec.select.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.af, i64 %i.al) ; 2 uses
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !258
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %spec.select.i.i.i.i.i
  %i.ao = sub i64 %i.al, %spec.select.i.i.i.i.i
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !77
  store i64 %i.ao, ptr %i.ak, align 8, !tbaa !39
  %i.ap = and i64 %.sroa.3.0.copyload.i.i.i, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread4.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = icmp ne i64 %.sroa.3.0.copyload.i.i.i, 1
  %i.ar = icmp ne i32 %.sroa.02.0.copyload.i.i.i, 0
  %or.cond.i.i.i.i = select i1 %i.aq, i1 true, i1 %i.ar
  %.not.i.i.i.i = icmp ule i64 %i.al, %i.af
  %or.cond7.i.i.i.i = select i1 %or.cond.i.i.i.i, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond7.i.i.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i.i.i, label %bb.g

_ZNK5boost6system10error_codecvbEv.exit.thread4.i.i.i.i: ; preds = %bb.e
  %.not.old.not.i.i.i.i = icmp ugt i64 %i.al, %i.af
  br i1 %.not.old.not.i.i.i.i, label %bb.g, label %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i.i.i

bb.g:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread4.i.i.i.i, %bb.f
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !267, !nonnull !74, !align !76
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr %i.as, ptr %2, align 8, !tbaa !214
  invoke void @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE11run_read_opclIZNS0_15async_base_test10async_readIS5_ZNS8_12testJavadocsEvE7handlerEENS3_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS3_14mutable_bufferEOSC_E2opSK_EEvOSI_RKSC_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.aj)
          to label %.noexc6 unwind label %bb.i, !inline_history !800

.noexc6:                                          ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %_ZN5boost4asio6detail7binder0INS1_14append_handlerIZNS_5beast15async_base_test10async_readINS4_4test12basic_streamINS0_15any_io_executorEEEZNS5_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSD_E2opJSF_mEEEEclEv.exit

_ZNK5boost6system10error_codecvbEv.exit.thread.i.i.i.i: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread4.i.i.i.i, %bb.f
  %i.at = load ptr, ptr %5, align 8, !tbaa !47
  %i.au = load ptr, ptr %i.at, align 8
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(208) %5)
          to label %.noexc7 unwind label %bb.i, !inline_history !800

.noexc7:                                          ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i.i.i
  %i.av = load i8, ptr %i.e, align 8, !tbaa !196, !range !73, !noundef !74
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.h, label %_ZN5boost4asio6detail7binder0INS1_14append_handlerIZNS_5beast15async_base_test10async_readINS4_4test12basic_streamINS0_15any_io_executorEEEZNS5_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSD_E2opJSF_mEEEEclEv.exit.thread

bb.h:                                             ; preds = %.noexc7
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ax) #31, !inline_history !16
  store i8 0, ptr %i.e, align 8, !tbaa !196
  br label %_ZN5boost4asio6detail7binder0INS1_14append_handlerIZNS_5beast15async_base_test10async_readINS4_4test12basic_streamINS0_15any_io_executorEEEZNS5_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSD_E2opJSF_mEEEEclEv.exit.thread

bb.i:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i.i.i, %bb.g, %bb.c
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost4asio6detail7binder0INS1_14append_handlerIZNS_5beast15async_base_test10async_readINS4_4test12basic_streamINS0_15any_io_executorEEEZNS5_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSD_E2opJSF_mEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerIZNS_5beast15async_base_test10async_readINS6_4test12basic_streamINS0_15any_io_executorEEEZNS7_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSF_E2opJSH_mEEEEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %i.ay

_ZN5boost4asio6detail7binder0INS1_14append_handlerIZNS_5beast15async_base_test10async_readINS4_4test12basic_streamINS0_15any_io_executorEEEZNS5_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSD_E2opJSF_mEEEEclEv.exit.thread: ; preds = %bb.h, %.noexc7
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseIZNS0_15async_base_test12testJavadocsEvE7handlerNS_4asio15any_io_executorESaIvEEE, i64 16), ptr %5, align 8, !tbaa !47
  br label %_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerIZNS_5beast15async_base_test10async_readINS6_4test12basic_streamINS0_15any_io_executorEEEZNS7_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSF_E2opJSH_mEEEEESaIvEE3ptrD2Ev.exit

_ZN5boost4asio6detail7binder0INS1_14append_handlerIZNS_5beast15async_base_test10async_readINS4_4test12basic_streamINS0_15any_io_executorEEEZNS5_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSD_E2opJSF_mEEEEclEv.exit: ; preds = %.noexc6, %_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerIZNS_5beast15async_base_test10async_readINS6_4test12basic_streamINS0_15any_io_executorEEEZNS7_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSF_E2opJSH_mEEEEESaIvEE3ptr5resetEv.exit
  %.pr = load i8, ptr %i.e, align 8, !tbaa !196
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseIZNS0_15async_base_test12testJavadocsEvE7handlerNS_4asio15any_io_executorESaIvEEE, i64 16), ptr %5, align 8, !tbaa !47
  %i.az = trunc nuw i8 %.pr to i1
  br i1 %i.az, label %bb.j, label %_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerIZNS_5beast15async_base_test10async_readINS6_4test12basic_streamINS0_15any_io_executorEEEZNS7_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSF_E2opJSH_mEEEEESaIvEE3ptrD2Ev.exit

bb.j:                                             ; preds = %_ZN5boost4asio6detail7binder0INS1_14append_handlerIZNS_5beast15async_base_test10async_readINS4_4test12basic_streamINS0_15any_io_executorEEEZNS5_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSD_E2opJSF_mEEEEclEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ba) #31, !inline_history !197
  br label %_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerIZNS_5beast15async_base_test10async_readINS6_4test12basic_streamINS0_15any_io_executorEEEZNS7_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSF_E2opJSH_mEEEEESaIvEE3ptrD2Ev.exit

_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerIZNS_5beast15async_base_test10async_readINS6_4test12basic_streamINS0_15any_io_executorEEEZNS7_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSF_E2opJSH_mEEEEESaIvEE3ptrD2Ev.exit: ; preds = %_ZN5boost4asio6detail7binder0INS1_14append_handlerIZNS_5beast15async_base_test10async_readINS4_4test12basic_streamINS0_15any_io_executorEEEZNS5_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSD_E2opJSF_mEEEEclEv.exit.thread, %_ZN5boost4asio6detail7binder0INS1_14append_handlerIZNS_5beast15async_base_test10async_readINS4_4test12basic_streamINS0_15any_io_executorEEEZNS5_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSD_E2opJSF_mEEEEclEv.exit, %bb.j
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.c) #31, !inline_history !197
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerIZNS_5beast15async_base_test10async_readINS7_4test12basic_streamINS0_15any_io_executorEEEZNS8_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSG_E2opJSI_mEEESC_vEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !265  ; 6 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.d) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseIZNS0_15async_base_test12testJavadocsEvE7handlerNS_4asio15any_io_executorESaIvEEE, i64 16), ptr %i.c, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.f = load i8, ptr %i.e, align 8, !tbaa !196, !range !73, !noundef !74
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerIZNS_5beast15async_base_test10async_readINS7_4test12basic_streamINS0_15any_io_executorEEEZNS8_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSG_E2opJSI_mEEESC_vEESaIvEED2Ev.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.h) #31, !inline_history !197
  br label %_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerIZNS_5beast15async_base_test10async_readINS7_4test12basic_streamINS0_15any_io_executorEEEZNS8_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSG_E2opJSI_mEEESC_vEESaIvEED2Ev.exit.i

_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerIZNS_5beast15async_base_test10async_readINS7_4test12basic_streamINS0_15any_io_executorEEEZNS8_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSG_E2opJSI_mEEESC_vEESaIvEED2Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.i) #31, !inline_history !197
  store ptr null, ptr %i.a, align 8, !tbaa !265
  br label %bb.d

bb.d:                                             ; preds = %_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerIZNS_5beast15async_base_test10async_readINS7_4test12basic_streamINS0_15any_io_executorEEEZNS8_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSG_E2opJSI_mEEESC_vEESaIvEED2Ev.exit.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !266  ; 5 uses
  %.not1.i = icmp eq ptr %i.k, null
  br i1 %.not1.i, label %_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerIZNS_5beast15async_base_test10async_readINS7_4test12basic_streamINS0_15any_io_executorEEEZNS8_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSG_E2opJSI_mEEESC_vEESaIvEE3ptr5resetEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = invoke noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
          to label %.noexc unwind label %bb.g     ; 4 uses

.noexc:                                           ; preds = %bb.e
  %.not3.i = icmp eq ptr %i.l, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !77
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !77
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %.thread.i.i.i

bb.f:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.lcssa.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 280
  %i.u = load i8, ptr %i.t, align 1, !tbaa !42
  store i8 %i.u, ptr %i.k, align 1, !tbaa !42
  store ptr %i.k, ptr %i.s, align 8, !tbaa !77
  br label %_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerIZNS_5beast15async_base_test10async_readINS7_4test12basic_streamINS0_15any_io_executorEEEZNS8_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSG_E2opJSI_mEEESC_vEESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %.noexc
  tail call void @free(ptr noundef nonnull %i.k) #31
  br label %_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerIZNS_5beast15async_base_test10async_readINS7_4test12basic_streamINS0_15any_io_executorEEEZNS8_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSG_E2opJSI_mEEESC_vEESaIvEE3ptr5resetEv.exit

_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerIZNS_5beast15async_base_test10async_readINS7_4test12basic_streamINS0_15any_io_executorEEEZNS8_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSG_E2opJSI_mEEESC_vEESaIvEE3ptr5resetEv.exit: ; preds = %bb.f, %.thread.i.i.i, %bb.d
  ret void

bb.g:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail17executor_function8completeINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerIZNS_5beast15async_base_test10async_readINS7_4test12basic_streamINS0_15any_io_executorEEEZNS8_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSG_E2opJSI_mEEESC_vEESaIvEEEvPNS2_9impl_baseEb(ptr noundef %0, i1 noundef zeroext %1) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::allocator.20", align 1 ; 4 uses
  %3 = alloca %"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::work_dispatcher<boost::asio::detail::empty_work_function, boost::asio::detail::append_handler<op, boost::system::error_code, unsigned long>, boost::asio::any_io_executor>, std::allocator<void>>::ptr", align 8 ; 8 uses
  %4 = alloca %"class.boost::asio::detail::work_dispatcher.115", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %2, ptr %3, align 8, !tbaa !264
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !266
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !265
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseIZNS0_15async_base_test12testJavadocsEvE7handlerNS_4asio15any_io_executorESaIvEEE, i64 16), ptr %4, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(113) %i.c, ptr noundef nonnull align 8 dereferenceable(113) %i.d) #31
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !196, !range !73, !noundef !74 ; 2 uses
  %i.h = trunc nuw i8 %i.g to i1
  store i8 %i.g, ptr %i.e, align 8, !tbaa !196
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.j) #31
  store i8 0, ptr %i.f, align 8, !tbaa !196
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !207
  store i32 %i.m, ptr %i.k, align 8, !tbaa !207
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVZN5boost5beast15async_base_test10async_readINS0_4test12basic_streamINS_4asio15any_io_executorEEEZNS1_12testJavadocsEvE7handlerEENS5_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS5_14mutable_bufferEOSA_E2op, i64 16), ptr %4, align 8, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = load i64, ptr %i.q, align 8, !tbaa !39
  store i64 %i.r, ptr %i.p, align 8, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 184
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !tbaa.struct !144
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 8 dereferenceable(56) %i.v) #31
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.v) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseIZNS0_15async_base_test12testJavadocsEvE7handlerNS_4asio15any_io_executorESaIvEEE, i64 16), ptr %i.w, align 8, !tbaa !47
  %i.x = load i8, ptr %i.f, align 8, !tbaa !196, !range !73, !noundef !74
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.z) #31, !inline_history !197
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.d) #31, !inline_history !197
  store ptr null, ptr %i.b, align 8, !tbaa !265
  %i.aa = invoke noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
          to label %.noexc unwind label %bb.h     ; 4 uses

.noexc:                                           ; preds = %bb.e
  %.not3.i = icmp eq ptr %i.aa, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.noexc
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !77
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.f, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !77
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.f, label %.thread.i.i.i

bb.f:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.lcssa.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !42
  store i8 %i.aj, ptr %0, align 8, !tbaa !42
  store ptr %0, ptr %i.ah, align 8, !tbaa !77
  br label %_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerIZNS_5beast15async_base_test10async_readINS7_4test12basic_streamINS0_15any_io_executorEEEZNS8_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSG_E2opJSI_mEEESC_vEESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %.noexc
  call void @free(ptr noundef nonnull %0) #31
  br label %_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerIZNS_5beast15async_base_test10async_readINS7_4test12basic_streamINS0_15any_io_executorEEEZNS8_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSG_E2opJSI_mEEESC_vEESaIvEE3ptr5resetEv.exit

_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerIZNS_5beast15async_base_test10async_readINS7_4test12basic_streamINS0_15any_io_executorEEEZNS8_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSG_E2opJSI_mEEESC_vEESaIvEE3ptr5resetEv.exit: ; preds = %bb.f, %.thread.i.i.i
  store ptr null, ptr %i.a, align 8, !tbaa !266
  br i1 %1, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerIZNS_5beast15async_base_test10async_readINS7_4test12basic_streamINS0_15any_io_executorEEEZNS8_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSG_E2opJSI_mEEESC_vEESaIvEE3ptr5resetEv.exit
  invoke void @_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerIZNS_5beast15async_base_test10async_readINS5_4test12basic_streamINS0_15any_io_executorEEEZNS6_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSE_E2opJSG_mEEESA_vEclEv(ptr noundef nonnull align 8 dereferenceable(264) %4)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerIZNS_5beast15async_base_test10async_readINS5_4test12basic_streamINS0_15any_io_executorEEEZNS6_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSE_E2opJSG_mEEESA_vED2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_14append_handlerIZNS_5beast15async_base_test10async_readINS7_4test12basic_streamINS0_15any_io_executorEEEZNS8_12testJavadocsEvE7handlerEENS0_12async_resultIT0_JFvNS_6system10error_codeEmEEE11return_typeERT_NS0_14mutable_bufferEOSG_E2opJSI_mEEESC_vEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
end_hunk_0
