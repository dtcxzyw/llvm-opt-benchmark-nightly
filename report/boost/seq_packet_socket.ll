Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/seq_packet_socket?download=true
inline.NumInlined: 1892
inline.NumDeleted: 873
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN5boost4asio6detail23reactive_socket_send_opINS_6cobalt2io21const_buffer_sequenceENS3_18completion_handlerIJNS_6system10error_codeEmEEENS0_15any_io_executorEE11do_completeEPvPNS1_19scheduler_operationERKS8_m:bb.a
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #35
  unreachable

_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit.i: ; preds = %bb.af, %_ZN5boost4asio6detail7binder2INS_6cobalt18completion_handlerIJNS_6system10error_codeEmEEES6_mED2Ev.exit
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !59
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %_ZN5boost4asio6detail23reactive_socket_send_opINS_6cobalt2io21const_buffer_sequenceENS3_18completion_handlerIJNS_6system10error_codeEmEEENS0_15any_io_executorEE3ptrD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !60
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !176
  invoke void %i.dz(ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %_ZN5boost4asio6detail23reactive_socket_send_opINS_6cobalt2io21const_buffer_sequenceENS3_18completion_handlerIJNS_6system10error_codeEmEEENS0_15any_io_executorEE3ptrD2Ev.exit unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  call void @__clang_call_terminate(ptr %i.eb) #35
  unreachable

_ZN5boost4asio6detail23reactive_socket_send_opINS_6cobalt2io21const_buffer_sequenceENS3_18completion_handlerIJNS_6system10error_codeEmEEENS0_15any_io_executorEE3ptrD2Ev.exit: ; preds = %_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail23reactive_socket_send_opINS_6cobalt2io21const_buffer_sequenceENS3_18completion_handlerIJNS_6system10error_codeEmEEENS0_15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !60
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !176
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #35
  unreachable

_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !59
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN5boost4asio6detail12handler_workINS_6cobalt18completion_handlerIJNS_6system10error_codeEmEEENS0_15any_io_executorEvED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !60
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !176
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(112) %i.a)
          to label %_ZN5boost4asio6detail12handler_workINS_6cobalt18completion_handlerIJNS_6system10error_codeEmEEENS0_15any_io_executorEvED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #35
  unreachable

_ZN5boost4asio6detail12handler_workINS_6cobalt18completion_handlerIJNS_6system10error_codeEmEEENS0_15any_io_executorEvED2Ev.exit: ; preds = %_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit.i, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !81   ; 3 uses
  %.not2.i = icmp eq ptr %i.t, null
  br i1 %.not2.i, label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN5boost4asio6detail12handler_workINS_6cobalt18completion_handlerIJNS_6system10error_codeEmEEENS0_15any_io_executorEvED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !173  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load i32, ptr %i.v, align 4, !tbaa !175
  %i.x = icmp eq i32 %i.w, 3
  br i1 %i.x, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.y = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #39
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.s, align 8, !tbaa !81
  br label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr nonnull %i.t)
          to label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i unwind label %bb.k, !inline_history !3

bb.k:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #35
  unreachable

_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i:    ; preds = %bb.j, %bb.i, %_ZN5boost4asio6detail12handler_workINS_6cobalt18completion_handlerIJNS_6system10error_codeEmEEENS0_15any_io_executorEvED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !59
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !60
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !176
  invoke void %i.ak(ptr noundef nonnull align 8 dereferenceable(56) %i.ah)
          to label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #35
  unreachable

_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit: ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost4asio6detail28reactive_socket_send_op_baseINS_6cobalt2io21const_buffer_sequenceEE10do_performEPNS1_10reactor_opE(ptr noundef %0) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::asio::detail::buffer_sequence_adapter.62", align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1032 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !89, !noalias !539
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !82, !noalias !539 ; 3 uses
  %.not.i = icmp eq i64 %.sroa.2.0.copyload.i.i.i, -1
  br i1 %.not.i, label %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_6cobalt2io21const_buffer_sequenceEEC2ERKS6_.exit, label %.cont.us.i.peel.i

.cont.us.i.peel.i:                                ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !82, !noalias !539 ; 3 uses
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !81, !noalias !539
  store ptr %.sroa.01.0.copyload.i.i.i, ptr %1, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.22.0.copyload.i.i.i, ptr %i.e, align 8, !tbaa !199
  store i64 %.sroa.22.0.copyload.i.i.i, ptr %i.b, align 8, !tbaa !541
  store i64 1, ptr %i.a, align 8, !tbaa !542
  %.not.i.peel.i = icmp eq i64 %.sroa.2.0.copyload.i.i.i, 0
  br i1 %.not.i.peel.i, label %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_6cobalt2io21const_buffer_sequenceEEC2ERKS6_.exit, label %_ZN5boost6cobalt2ioneERKNS1_21const_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i

_ZN5boost6cobalt2ioneERKNS1_21const_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i: ; preds = %.cont.us.i.peel.i, %.cont.us.i.i
  %i.f = phi i64 [ %i.k, %.cont.us.i.i ], [ %.sroa.22.0.copyload.i.i.i, %.cont.us.i.peel.i ]
  %i.g = phi i64 [ %i.m, %.cont.us.i.i ], [ 1, %.cont.us.i.peel.i ] ; 3 uses
  %.sroa.11.0.us29.i.i = phi i64 [ %i.l, %.cont.us.i.i ], [ 0, %.cont.us.i.peel.i ] ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.g, 64
  br i1 %exitcond.not.i, label %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_6cobalt2io21const_buffer_sequenceEEC2ERKS6_.exit, label %.cont.us.i.i

.cont.us.i.i:                                     ; preds = %_ZN5boost6cobalt2ioneERKNS1_21const_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.11.0.us29.i.i ; 2 uses
  %.sroa.gep2.us.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4.0.copyload.else.val.us.i.i = load i64, ptr %.sroa.gep2.us.i.i, align 8, !tbaa !82 ; 2 uses
  %.sroa.0.0.copyload.else.val.us.i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.g ; 2 uses
  store ptr %.sroa.0.0.copyload.else.val.us.i.i, ptr %i.i, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.4.0.copyload.else.val.us.i.i, ptr %i.j, align 8, !tbaa !199
  %i.k = add i64 %.sroa.4.0.copyload.else.val.us.i.i, %i.f ; 2 uses
  store i64 %i.k, ptr %i.b, align 8, !tbaa !541
  %i.l = add nuw nsw i64 %.sroa.11.0.us29.i.i, 1  ; 2 uses
  %i.m = add nuw nsw i64 %i.g, 1                  ; 3 uses
  store i64 %i.m, ptr %i.a, align 8, !tbaa !542
  %.not.i.i = icmp eq i64 %i.l, %.sroa.2.0.copyload.i.i.i
  br i1 %.not.i.i, label %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_6cobalt2io21const_buffer_sequenceEEC2ERKS6_.exit, label %_ZN5boost6cobalt2ioneERKNS1_21const_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i, !llvm.loop !538

_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_6cobalt2io21const_buffer_sequenceEEC2ERKS6_.exit: ; preds = %_ZN5boost6cobalt2ioneERKNS1_21const_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i, %.cont.us.i.i, %bb.a, %.cont.us.i.peel.i
  %i.n = phi i64 [ 1, %.cont.us.i.peel.i ], [ 0, %bb.a ], [ 64, %_ZN5boost6cobalt2ioneERKNS1_21const_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i ], [ %i.m, %.cont.us.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load i32, ptr %i.o, align 8, !tbaa !302
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load i32, ptr %i.q, align 8, !tbaa !304
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = call noundef zeroext i1 @_ZN5boost4asio6detail10socket_ops17non_blocking_sendEiPK5iovecmiRNS_6system10error_codeERm(i32 noundef %i.p, ptr noundef nonnull %1, i64 noundef %i.n, i32 noundef %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.t) ; 2 uses
  %2 = zext i1 %i.u to i32
  br i1 %i.u, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_6cobalt2io21const_buffer_sequenceEEC2ERKS6_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.w = load i8, ptr %i.v, align 4, !tbaa !303
  %i.x = and i8 %i.w, 16
  %.not = icmp eq i8 %i.x, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load i64, ptr %i.t, align 8, !tbaa !305
  %i.z = load i64, ptr %i.b, align 8, !tbaa !541
  %i.aa = icmp ult i64 %i.y, %i.z
  %spec.select = select i1 %i.aa, i32 2, i32 %2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_6cobalt2io21const_buffer_sequenceEEC2ERKS6_.exit
  %.0 = phi i32 [ 0, %_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_6cobalt2io21const_buffer_sequenceEEC2ERKS6_.exit ], [ %spec.select, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost4asio6detail10socket_ops17non_blocking_sendEiPK5iovecmiRNS_6system10error_codeERm(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %struct.msghdr, align 8             ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  %sext.i = shl i64 %2, 32
  %i.b = ashr exact i64 %sext.i, 32
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.d = or i32 %3, 16448
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.52.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br label %.critedge

.critedge:                                        ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  store ptr %1, ptr %i.a, align 8, !tbaa !205
  store i64 %i.b, ptr %i.c, align 8, !tbaa !206
  %i.e = call i64 @sendmsg(i32 noundef %0, ptr noundef nonnull %6, i32 noundef %i.d) ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.critedge
  %i.g = tail call ptr @__errno_location() #41
  %i.h = load i32, ptr %i.g, align 4, !tbaa !44   ; 3 uses
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !98
  %i.j = and i64 %i.i, -2
  %switch.i.i.i.i = icmp eq i64 %i.j, -5572340897628102704
  br i1 %switch.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ne i32 %i.h, 0
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef %i.h) #34, !inline_history !543
  br label %bb.f

bb.e:                                             ; preds = %.critedge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %.sink.split

bb.f:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i1 [ %i.k, %bb.c ], [ %i.o, %bb.d ]
  %i.p = select i1 %.0.i.i.i.i, i64 3, i64 2      ; 2 uses
  store i32 %i.h, ptr %4, align 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !tbaa !31
  store i64 %i.p, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !98, !noalias !551
  %i.r = and i64 %i.q, -2
  %switch.i.i.i.i16 = icmp eq i64 %i.r, -5572340897628102704
  br i1 %switch.i.i.i.i16, label %_ZNK5boost6system10error_code5valueEv.exit17.i, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %bb.f
  %i.s = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !33, !noalias !551
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !noalias !551
  %i.v = call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 4) #34, !noalias !551, !inline_history !6 ; 0 uses
  %.pre = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !100 ; 2 uses
  %i.w = icmp eq i64 %.pre, 1
  br i1 %i.w, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread, label %_ZNK5boost6system10error_code5valueEv.exit17.i

_ZNK5boost6system10error_code5valueEv.exit17.i:   ; preds = %bb.f, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.x = phi i64 [ %.pre, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread ], [ %i.p, %bb.f ] ; 3 uses
  %i.y = load i32, ptr %4, align 8, !tbaa !31
  %i.z = icmp eq i32 %i.y, 4
  br i1 %i.z, label %bb.g, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread

bb.g:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i
  %cond75 = icmp eq i64 %i.x, 0
  br i1 %cond75, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !tbaa !31
  br label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit:   ; preds = %bb.h, %bb.g
  %.0.i18.i = phi ptr [ %i.aa, %bb.h ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.g ] ; 2 uses
  %i.ab = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !98 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  %i.ad = icmp eq ptr %.0.i18.i, @_ZN5boost6system6detail17system_cat_holderIvE8instanceE
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i18.i, i64 8
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = icmp eq i64 %i.af, %i.ab
  %i.ah = select i1 %i.ac, i1 %i.ad, i1 %i.ag
  br i1 %i.ah, label %.critedge, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread, !llvm.loop !546

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread: ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit
  %i.ai = phi i64 [ %i.x, %_ZNK5boost6system10error_code5valueEv.exit17.i ], [ 1, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread ], [ %i.x, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit ]
  %i.aj = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !98, !noalias !552
  %i.ak = and i64 %i.aj, -2
  %switch.i.i.i.i18 = icmp eq i64 %i.ak, -5572340897628102704
  br i1 %switch.i.i.i.i18, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit21.thread, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit21

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit21: ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread
  %i.al = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !33, !noalias !552
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !noalias !552
  %i.ao = call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 11) #34, !noalias !552, !inline_history !6 ; 0 uses
  %.pre79 = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !100
  br label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit21.thread

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit21.thread: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit21, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread
  %i.ap = phi i64 [ %.pre79, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit21 ], [ %i.ai, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread ] ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit32.thread, label %_ZNK5boost6system10error_code5valueEv.exit17.i25

_ZNK5boost6system10error_code5valueEv.exit17.i25: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit21.thread
  %i.ar = load i32, ptr %4, align 8, !tbaa !31
  %i.as = icmp eq i32 %i.ar, 11
  br i1 %i.as, label %bb.i, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit32.thread

bb.i:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i25
  %cond74 = icmp eq i64 %i.ap, 0
  br i1 %cond74, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit32, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !tbaa !31
  br label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit32

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit32: ; preds = %bb.j, %bb.i
  %.0.i18.i29 = phi ptr [ %i.at, %bb.j ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.i ] ; 2 uses
  %i.au = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !98 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  %i.aw = icmp eq ptr %.0.i18.i29, @_ZN5boost6system6detail17system_cat_holderIvE8instanceE
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i18.i29, i64 8
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = icmp eq i64 %i.ay, %i.au
  %i.ba = select i1 %i.av, i1 %i.aw, i1 %i.az
  br i1 %i.ba, label %bb.m, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit32.thread

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit32.thread: ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i25, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit21.thread, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit32
  %i.bb = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !98, !noalias !553
  %i.bc = and i64 %i.bb, -2
  %switch.i.i.i.i33 = icmp eq i64 %i.bc, -5572340897628102704
  br i1 %switch.i.i.i.i33, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit36.thread, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit36

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit36: ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit32.thread
  %i.bd = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !33, !noalias !553
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !553
  %i.bg = call noundef zeroext i1 %i.bf(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 11) #34, !noalias !553, !inline_history !6 ; 0 uses
  %.pre80 = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !100
  br label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit36.thread

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit36.thread: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit36, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit32.thread
  %i.bh = phi i64 [ %.pre80, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit36 ], [ %i.ap, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit32.thread ] ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 1
  br i1 %i.bi, label %.sink.split, label %_ZNK5boost6system10error_code5valueEv.exit17.i40

_ZNK5boost6system10error_code5valueEv.exit17.i40: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit36.thread
  %i.bj = load i32, ptr %4, align 8, !tbaa !31
  %i.bk = icmp eq i32 %i.bj, 11
  br i1 %i.bk, label %bb.k, label %.sink.split

bb.k:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i40
  %cond = icmp eq i64 %i.bh, 0
  br i1 %cond, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit47, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !tbaa !31
  br label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit47

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit47: ; preds = %bb.l, %bb.k
  %.0.i18.i44 = phi ptr [ %i.bl, %bb.l ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.k ] ; 2 uses
  %i.bm = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !98 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  %i.bo = icmp eq ptr %.0.i18.i44, @_ZN5boost6system6detail17system_cat_holderIvE8instanceE
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i18.i44, i64 8
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = icmp eq i64 %i.bq, %i.bm
  %i.bs = select i1 %i.bn, i1 %i.bo, i1 %i.br
  br i1 %i.bs, label %bb.m, label %.sink.split

.sink.split:                                      ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit47, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit36.thread, %_ZNK5boost6system10error_code5valueEv.exit17.i40, %bb.e
  %.lcssa.sink = phi i64 [ %i.e, %bb.e ], [ 0, %_ZNK5boost6system10error_code5valueEv.exit17.i40 ], [ 0, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit36.thread ], [ 0, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit47 ]
  store i64 %.lcssa.sink, ptr %5, align 8, !tbaa !82
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit47, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit32
  %.1.ph = phi i1 [ false, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit32 ], [ false, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit47 ], [ true, %.sink.split ]
  ret i1 %.1.ph
}

declare i64 @sendmsg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #27
end_hunk_0
begin_hunk_1_@_ZN5boost4asio6detail23reactive_socket_send_opINS0_12const_bufferENS_6cobalt18completion_handlerIJNS_6system10error_codeEmEEENS0_15any_io_executorEE11do_completeEPvPNS1_19scheduler_operationERKS7_m:bb.a
          to label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i unwind label %bb.ac, !inline_history !3

bb.ac:                                            ; preds = %bb.ab
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #35
  unreachable

_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i:  ; preds = %bb.ab, %bb.aa, %bb.w
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !59
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %_ZN5boost4asio6detail7binder2INS_6cobalt18completion_handlerIJNS_6system10error_codeEmEEES6_mED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !60
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !176
  invoke void %i.di(ptr noundef nonnull align 8 dereferenceable(56) %i.df)
          to label %_ZN5boost4asio6detail7binder2INS_6cobalt18completion_handlerIJNS_6system10error_codeEmEEES6_mED2Ev.exit unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #35
  unreachable

_ZN5boost4asio6detail7binder2INS_6cobalt18completion_handlerIJNS_6system10error_codeEmEEES6_mED2Ev.exit: ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !59
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZN5boost4asio6detail7binder2INS_6cobalt18completion_handlerIJNS_6system10error_codeEmEEES6_mED2Ev.exit
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !60
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !176
  invoke void %i.dr(ptr noundef nonnull align 8 dereferenceable(56) %i.do)
          to label %_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #35
  unreachable

_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit.i: ; preds = %bb.af, %_ZN5boost4asio6detail7binder2INS_6cobalt18completion_handlerIJNS_6system10error_codeEmEEES6_mED2Ev.exit
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !59
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %_ZN5boost4asio6detail23reactive_socket_send_opINS0_12const_bufferENS_6cobalt18completion_handlerIJNS_6system10error_codeEmEEENS0_15any_io_executorEE3ptrD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !60
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !176
  invoke void %i.dz(ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %_ZN5boost4asio6detail23reactive_socket_send_opINS0_12const_bufferENS_6cobalt18completion_handlerIJNS_6system10error_codeEmEEENS0_15any_io_executorEE3ptrD2Ev.exit unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  call void @__clang_call_terminate(ptr %i.eb) #35
  unreachable

_ZN5boost4asio6detail23reactive_socket_send_opINS0_12const_bufferENS_6cobalt18completion_handlerIJNS_6system10error_codeEmEEENS0_15any_io_executorEE3ptrD2Ev.exit: ; preds = %_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail23reactive_socket_send_opINS0_12const_bufferENS_6cobalt18completion_handlerIJNS_6system10error_codeEmEEENS0_15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !60
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !176
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #35
  unreachable

_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !59
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN5boost4asio6detail12handler_workINS_6cobalt18completion_handlerIJNS_6system10error_codeEmEEENS0_15any_io_executorEvED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !60
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !176
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(112) %i.a)
          to label %_ZN5boost4asio6detail12handler_workINS_6cobalt18completion_handlerIJNS_6system10error_codeEmEEENS0_15any_io_executorEvED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #35
  unreachable

_ZN5boost4asio6detail12handler_workINS_6cobalt18completion_handlerIJNS_6system10error_codeEmEEENS0_15any_io_executorEvED2Ev.exit: ; preds = %_ZN5boost4asio6detail17handler_work_baseINS0_15any_io_executorES3_NS0_10io_contextENS0_8executorEvED2Ev.exit.i, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !81   ; 3 uses
  %.not2.i = icmp eq ptr %i.t, null
  br i1 %.not2.i, label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN5boost4asio6detail12handler_workINS_6cobalt18completion_handlerIJNS_6system10error_codeEmEEENS0_15any_io_executorEvED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !173  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load i32, ptr %i.v, align 4, !tbaa !175
  %i.x = icmp eq i32 %i.w, 3
  br i1 %i.x, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.y = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #39
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.s, align 8, !tbaa !81
  br label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr nonnull %i.t)
          to label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i unwind label %bb.k, !inline_history !3

bb.k:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #35
  unreachable

_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i:    ; preds = %bb.j, %bb.i, %_ZN5boost4asio6detail12handler_workINS_6cobalt18completion_handlerIJNS_6system10error_codeEmEEENS0_15any_io_executorEvED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !59
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !60
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !176
  invoke void %i.ak(ptr noundef nonnull align 8 dereferenceable(56) %i.ah)
          to label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #35
  unreachable

_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit: ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost4asio6detail28reactive_socket_send_op_baseINS0_12const_bufferEE10do_performEPNS1_10reactor_opE(ptr noundef %0) #7 comdat align 2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !312
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !81
  %.sroa.2.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..0..sroa_idx.i, align 8, !tbaa !82
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i32, ptr %i.d, align 8, !tbaa !314
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = tail call noundef zeroext i1 @_ZN5boost4asio6detail10socket_ops18non_blocking_send1EiPKvmiRNS_6system10error_codeERm(i32 noundef %i.b, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.sroa.2.0.copyload.i, i32 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %1 = zext i1 %i.h to i32
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.j = load i8, ptr %i.i, align 4, !tbaa !313
  %i.k = and i8 %i.j, 16
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.g, align 8, !tbaa !305
  %.sroa.2.0.copyload.i19 = load i64, ptr %.sroa.2.0..0..sroa_idx.i, align 8, !tbaa !82
  %i.m = icmp ult i64 %i.l, %.sroa.2.0.copyload.i19
  %spec.select = select i1 %i.m, i32 2, i32 %1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost4asio6detail10socket_ops18non_blocking_send1EiPKvmiRNS_6system10error_codeERm(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = or i32 %3, 16448
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.52.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br label %.critedge

.critedge:                                        ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit, %bb.a
  %i.b = tail call i64 @send(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %i.a) ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.critedge
  %i.d = tail call ptr @__errno_location() #41
  %i.e = load i32, ptr %i.d, align 4, !tbaa !44   ; 3 uses
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !98
  %i.g = and i64 %i.f, -2
  %switch.i.i.i.i = icmp eq i64 %i.g, -5572340897628102704
  br i1 %switch.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ne i32 %i.e, 0
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef %i.e) #34, !inline_history !556
  br label %bb.f

bb.e:                                             ; preds = %.critedge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %.sink.split

bb.f:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i1 [ %i.h, %bb.c ], [ %i.l, %bb.d ]
  %i.m = select i1 %.0.i.i.i.i, i64 3, i64 2      ; 2 uses
  store i32 %i.e, ptr %4, align 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !tbaa !31
  store i64 %i.m, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !82
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !98, !noalias !564
  %i.o = and i64 %i.n, -2
  %switch.i.i.i.i16 = icmp eq i64 %i.o, -5572340897628102704
  br i1 %switch.i.i.i.i16, label %_ZNK5boost6system10error_code5valueEv.exit17.i, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %bb.f
  %i.p = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !33, !noalias !564
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !noalias !564
  %i.s = tail call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 4) #34, !noalias !564, !inline_history !6 ; 0 uses
  %.pre = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !100 ; 2 uses
  %i.t = icmp eq i64 %.pre, 1
  br i1 %i.t, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread, label %_ZNK5boost6system10error_code5valueEv.exit17.i

_ZNK5boost6system10error_code5valueEv.exit17.i:   ; preds = %bb.f, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.u = phi i64 [ %.pre, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread ], [ %i.m, %bb.f ] ; 3 uses
  %i.v = load i32, ptr %4, align 8, !tbaa !31
  %i.w = icmp eq i32 %i.v, 4
  br i1 %i.w, label %bb.g, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread

bb.g:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i
  %cond75 = icmp eq i64 %i.u, 0
  br i1 %cond75, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !tbaa !31
  br label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit:   ; preds = %bb.h, %bb.g
  %.0.i18.i = phi ptr [ %i.x, %bb.h ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.g ] ; 2 uses
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !98 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = icmp eq ptr %.0.i18.i, @_ZN5boost6system6detail17system_cat_holderIvE8instanceE
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i18.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = icmp eq i64 %i.ac, %i.y
  %i.ae = select i1 %i.z, i1 %i.aa, i1 %i.ad
  br i1 %i.ae, label %.critedge, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread, !llvm.loop !559

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread: ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit
  %i.af = phi i64 [ %i.u, %_ZNK5boost6system10error_code5valueEv.exit17.i ], [ 1, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread ], [ %i.u, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit ]
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !98, !noalias !565
  %i.ah = and i64 %i.ag, -2
  %switch.i.i.i.i18 = icmp eq i64 %i.ah, -5572340897628102704
  br i1 %switch.i.i.i.i18, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit21.thread, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit21

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit21: ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread
  %i.ai = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !33, !noalias !565
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !565
  %i.al = tail call noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 11) #34, !noalias !565, !inline_history !6 ; 0 uses
  %.pre79 = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !100
  br label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit21.thread

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit21.thread: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit21, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread
  %i.am = phi i64 [ %.pre79, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit21 ], [ %i.af, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread ] ; 3 uses
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit32.thread, label %_ZNK5boost6system10error_code5valueEv.exit17.i25

_ZNK5boost6system10error_code5valueEv.exit17.i25: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit21.thread
  %i.ao = load i32, ptr %4, align 8, !tbaa !31
  %i.ap = icmp eq i32 %i.ao, 11
  br i1 %i.ap, label %bb.i, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit32.thread

bb.i:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i25
  %cond74 = icmp eq i64 %i.am, 0
  br i1 %cond74, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit32, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !tbaa !31
  br label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit32

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit32: ; preds = %bb.j, %bb.i
  %.0.i18.i29 = phi ptr [ %i.aq, %bb.j ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.i ] ; 2 uses
  %i.ar = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !98 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  %i.at = icmp eq ptr %.0.i18.i29, @_ZN5boost6system6detail17system_cat_holderIvE8instanceE
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i18.i29, i64 8
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = icmp eq i64 %i.av, %i.ar
  %i.ax = select i1 %i.as, i1 %i.at, i1 %i.aw
  br i1 %i.ax, label %bb.m, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit32.thread

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit32.thread: ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i25, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit21.thread, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit32
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !98, !noalias !566
  %i.az = and i64 %i.ay, -2
  %switch.i.i.i.i33 = icmp eq i64 %i.az, -5572340897628102704
  br i1 %switch.i.i.i.i33, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit36.thread, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit36

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit36: ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit32.thread
  %i.ba = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !33, !noalias !566
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !566
  %i.bd = tail call noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 11) #34, !noalias !566, !inline_history !6 ; 0 uses
  %.pre80 = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !100
  br label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit36.thread

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit36.thread: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit36, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit32.thread
  %i.be = phi i64 [ %.pre80, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit36 ], [ %i.am, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit32.thread ] ; 2 uses
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %.sink.split, label %_ZNK5boost6system10error_code5valueEv.exit17.i40

_ZNK5boost6system10error_code5valueEv.exit17.i40: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit36.thread
  %i.bg = load i32, ptr %4, align 8, !tbaa !31
  %i.bh = icmp eq i32 %i.bg, 11
  br i1 %i.bh, label %bb.k, label %.sink.split

bb.k:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i40
  %cond = icmp eq i64 %i.be, 0
  br i1 %cond, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit47, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = load ptr, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !tbaa !31
  br label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit47

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit47: ; preds = %bb.l, %bb.k
  %.0.i18.i44 = phi ptr [ %i.bi, %bb.l ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.k ] ; 2 uses
  %i.bj = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !98 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  %i.bl = icmp eq ptr %.0.i18.i44, @_ZN5boost6system6detail17system_cat_holderIvE8instanceE
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i18.i44, i64 8
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = icmp eq i64 %i.bn, %i.bj
  %i.bp = select i1 %i.bk, i1 %i.bl, i1 %i.bo
  br i1 %i.bp, label %bb.m, label %.sink.split

.sink.split:                                      ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit47, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit36.thread, %_ZNK5boost6system10error_code5valueEv.exit17.i40, %bb.e
  %.lcssa.sink = phi i64 [ %i.b, %bb.e ], [ 0, %_ZNK5boost6system10error_code5valueEv.exit17.i40 ], [ 0, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit36.thread ], [ 0, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit47 ]
  store i64 %.lcssa.sink, ptr %5, align 8, !tbaa !82
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit47, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit32
  %.1.ph = phi i1 [ false, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit32 ], [ false, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit47 ], [ true, %.sink.split ]
  ret i1 %.1.ph
}

declare i64 @send(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #27

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail23reactive_socket_send_opINS0_12const_bufferENS_6cobalt18completion_handlerIJNS_6system10error_codeEmEEENS0_15any_io_executorEE12do_immediateEPNS1_19scheduler_operationEbPKv(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::asio::detail::reactive_socket_send_op<boost::asio::const_buffer, boost::cobalt::completion_handler<boost::system::error_code, unsigned long>, boost::asio::any_io_executor>::ptr", align 8 ; 8 uses
  %4 = alloca %"class.boost::asio::detail::immediate_handler_work", align 8 ; 21 uses
  %5 = alloca %"class.boost::asio::detail::binder2", align 8 ; 22 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !308
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
end_hunk_1
