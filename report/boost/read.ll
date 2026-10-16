Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/read?download=true
inline.NumInlined: 689
inline.NumDeleted: 414
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5boost6cobalt2opIJNS_6system10error_codeEmEE14awaitable_base13await_suspendINS0_6detail19composition_promiseIJS3_mEEEEEbNSt7__n486116coroutine_handleIT_EE:bb.a
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !39
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !111
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(56) %i.au)
          to label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #26
  unreachable

_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit: ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i, %bb.m
  %i.ba = load i32, ptr %i.a, align 8, !tbaa !125 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 3
  br i1 %i.bb, label %bb.o, label %bb.r

bb.o:                                             ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit
  store i32 0, ptr %i.a, align 8, !tbaa !125
  br label %bb.r

bb.p:                                             ; preds = %bb.e
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #25
  %.0 = extractvalue { ptr, i32 } %i.bc, 0
  %i.bd = call ptr @__cxa_begin_catch(ptr %.0) #25 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #25
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.bf = load ptr, ptr %4, align 8, !tbaa !93
  store ptr null, ptr %4, align 8, !tbaa !93
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !93 ; 2 uses
  store ptr %i.bg, ptr %2, align 8, !tbaa !93
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !93
  %.not.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.p
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  %.pr = load ptr, ptr %4, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.not.i5 = icmp eq ptr %.pr, null
  br i1 %.not.i5, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #25
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

bb.r:                                             ; preds = %bb.o, %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit
  %i.bh = phi i32 [ 0, %bb.o ], [ %i.ba, %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit ]
  %i.bi = icmp ne i32 %i.bh, 2
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %bb.r
  %.04 = phi i1 [ %i.bi, %bb.r ], [ false, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit ]
  ret i1 %.04

bb.t:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #26
  unreachable
}

; Function Attrs: nounwind
declare void @_ZSt17current_exceptionv(ptr dead_on_unwind writable sret(%"class.std::__exception_ptr::exception_ptr") align 8) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef align 8) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io10read_at_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSA_fL1p_onawE16replace_resourcefL1p0_ERNS0_14awaitable_typeINS2_IJDpT_EEEEEEEEDaOT_EN12replacing_opawEv(ptr dead_on_unwind noalias writable sret(%"struct.boost::cobalt::op<boost::system::error_code, unsigned long>::awaitable_base") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::cobalt::op<boost::system::error_code, unsigned long>::awaitable", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = load ptr, ptr %1, align 8, !tbaa !224, !nonnull !62, !align !63
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4168 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !124, !alias.scope !225
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store i8 0, ptr %i.c, align 8, !tbaa !91, !alias.scope !225
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !125, !alias.scope !225
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  store ptr null, ptr %i.e, align 8, !tbaa !93, !alias.scope !225
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %i.b, ptr %i.f, align 8, !tbaa !126, !alias.scope !225
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.h = call noundef nonnull ptr @_ZNSt3pmr20get_default_resourceEv() #25
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5boost6cobalt6detail12sbo_resourceE, i64 16), ptr %i.b, align 8, !tbaa !18, !alias.scope !225
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4176 ; 2 uses
  store ptr %i.g, ptr %i.i, align 8, !tbaa !128, !alias.scope !225
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4184 ; 2 uses
  store i64 4096, ptr %i.j, align 8, !tbaa !129, !alias.scope !225
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4192 ; 2 uses
  store i64 4096, ptr %i.k, align 8, !tbaa !130, !alias.scope !225
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4200
  store i8 0, ptr %i.l, align 8, !tbaa !131, !alias.scope !225
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4208
  store ptr %i.h, ptr %i.m, align 8, !tbaa !134, !alias.scope !225
  %i.n = ptrtoint ptr %i.g to i64
  %i.o = and i64 %i.n, 8                          ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost6cobalt2opIJNS_6system10error_codeEmEEawEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = sub nuw nsw i64 16, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.p
  store ptr %i.q, ptr %i.i, align 8, !tbaa !135, !alias.scope !225
  store i64 4088, ptr %i.k, align 8, !tbaa !136, !alias.scope !225
  store i64 4088, ptr %i.j, align 8, !tbaa !137, !alias.scope !225
  br label %_ZN5boost6cobalt2opIJNS_6system10error_codeEmEEawEv.exit

_ZN5boost6cobalt2opIJNS_6system10error_codeEmEEawEv.exit: ; preds = %bb.a, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !226
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.t = load ptr, ptr %2, align 8, !tbaa !90, !noalias !227, !nonnull !62, !align !63
  store ptr %i.t, ptr %0, align 8, !tbaa !124, !alias.scope !227
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i8 0, ptr %i.u, align 8, !tbaa !91, !alias.scope !227
  %i.v = load i8, ptr %i.c, align 8, !tbaa !91, !range !92, !noalias !227, !noundef !62
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %_ZNO5boost6cobalt2opIJNS_6system10error_codeEmEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE.exit

bb.c:                                             ; preds = %_ZN5boost6cobalt2opIJNS_6system10error_codeEmEEawEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !67, !noalias !227
  store i64 %i.z, ptr %i.x, align 8, !tbaa !67, !alias.scope !227
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !tbaa.struct !138
  store i8 1, ptr %i.u, align 8, !tbaa !91, !alias.scope !227
  br label %_ZNO5boost6cobalt2opIJNS_6system10error_codeEmEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE.exit

_ZNO5boost6cobalt2opIJNS_6system10error_codeEmEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE.exit: ; preds = %_ZN5boost6cobalt2opIJNS_6system10error_codeEmEEawEv.exit, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !125, !noalias !227
  store i32 %i.ad, ptr %i.ac, align 8, !tbaa !125, !alias.scope !227
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !93, !noalias !227
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !93, !alias.scope !227
  store ptr null, ptr %i.e, align 8, !tbaa !93, !noalias !227
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.s, ptr %i.ag, align 8, !tbaa !126, !alias.scope !227
  call void @_ZNSt3pmr15memory_resourceD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.b) #25
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !93
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %_ZN5boost6cobalt2opIJNS_6system10error_codeEmEE9awaitableD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNO5boost6cobalt2opIJNS_6system10error_codeEmEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #25
  br label %_ZN5boost6cobalt2opIJNS_6system10error_codeEmEE9awaitableD2Ev.exit

_ZN5boost6cobalt2opIJNS_6system10error_codeEmEE9awaitableD2Ev.exit: ; preds = %_ZNO5boost6cobalt2opIJNS_6system10error_codeEmEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZSt19uncaught_exceptionsv() local_unnamed_addr #22

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt7__n486116coroutine_handleINS_22noop_coroutine_promiseEE7__frame22__dummy_resume_destroyEv() #8 comdat align 2 {
bb.a:
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: mustprogress uwtable
define internal void @_ZN5boost6cobalt2io8read_all8initiateENS0_18completion_handlerIJNS_6system10error_codeEmEEE.resume(ptr noundef nonnull align 8 dereferenceable(368) %0) #7 align 2 personality ptr @__gxx_personality_v0 {
resume.0.a:
  %1 = alloca %"class.boost::asio::any_io_executor", align 8 ; 9 uses
  %.sroa.9 = alloca [12 x i8], align 4            ; 2 uses
  %.reload.addr247 = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %.reload.addr249 = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %.reload.addr250 = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 6 uses
  %.058.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %.sroa.952.8..sroa_idx217 = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %.sroa.9.8..sroa_idx216 = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %.reload.addr228 = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %index.addr252 = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %3 = load ptr, ptr %2, align 8, !tbaa !93, !noalias !242 ; 2 uses
  %.not.i.i3170 = icmp eq ptr %3, null
  br i1 %.not.i.i3170, label %.lr.ph71, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i

bb.a:                                             ; preds = %bb.i, %.loopexit, %.critedge.i
  store i64 %i.am, ptr %.058.reload.addr, align 8
  %.reload235 = load ptr, ptr %.reload.addr228, align 8, !tbaa !66 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i213 = getelementptr inbounds nuw i8, ptr %.reload235, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %.reload235, i64 32
  %.sroa.22.0..sroa_idx.i.i.i208 = getelementptr inbounds nuw i8, ptr %.reload235, i64 24
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i208, align 8, !tbaa !67, !noalias !243 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !69, !noalias !243 ; 3 uses
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i213, align 8, !tbaa !67, !noalias !243 ; 4 uses
  %.not.i = icmp eq i64 %.sroa.2.0.copyload.i.i.i, -1
  br i1 %.not.i, label %.thread.from...thread_crit_edge, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader: ; preds = %bb.a
  %i.h = add i64 %.sroa.2.0.copyload.i.i.i, 1     ; 2 uses
  %i.i = icmp eq i64 %.sroa.2.0.copyload.i.i.i, 0
  br i1 %i.i, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new: ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader
  %unroll_iter = and i64 %i.h, -2
  br label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i

.thread.from...thread_crit_edge:                  ; preds = %bb.a
  %.pre106 = load ptr, ptr %i.c, align 8, !tbaa !72
  br label %.thread

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i: ; preds = %.cont.us.i.i, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new
  %.0.us29.i.i = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new ], [ %i.o, %.cont.us.i.i ]
  %.sroa.11.0.us28.i.i = phi i64 [ -1, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new ], [ %i.p, %.cont.us.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new ], [ %niter.next.1, %.cont.us.i.i ]
  %i.j = icmp eq i64 %.sroa.11.0.us28.i.i, -1
  br i1 %i.j, label %.cont.us.i.i, label %.cont.us.i.i.from..else.us.i.i

.cont.us.i.i.from..else.us.i.i:                   ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.11.0.us28.i.i
  %.sroa.gep2.us.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.else.val.us.i.i = load i64, ptr %.sroa.gep2.us.i.i, align 8, !tbaa !74
  br label %.cont.us.i.i

.cont.us.i.i:                                     ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i, %.cont.us.i.i.from..else.us.i.i
  %i.l = phi i64 [ %.else.val.us.i.i, %.cont.us.i.i.from..else.us.i.i ], [ %.sroa.22.0.copyload.i.i.i, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i ]
  %i.m = add i64 %i.l, %.0.us29.i.i
  %i.n = getelementptr [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.11.0.us28.i.i
  %.sroa.gep2.us.i.i.1 = getelementptr i8, ptr %i.n, i64 24
  %.else.val.us.i.i.1 = load i64, ptr %.sroa.gep2.us.i.i.1, align 8, !tbaa !74
  %i.o = add i64 %.else.val.us.i.i.1, %i.m        ; 3 uses
  %i.p = add i64 %.sroa.11.0.us28.i.i, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i, !llvm.loop !236

_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa: ; preds = %.cont.us.i.i
  %i.q = and i64 %.sroa.2.0.copyload.i.i.i, 1
  %lcmp.mod.not.not = icmp eq i64 %i.q, 0
  br i1 %lcmp.mod.not.not, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader, label %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader: ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader
  %.0.us29.i.i.epil.init = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader ], [ %i.o, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa ]
  %.sroa.11.0.us28.i.i.epil.init = phi i64 [ -1, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader ], [ %i.p, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod230 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod230)
  %i.r = icmp eq i64 %.sroa.11.0.us28.i.i.epil.init, -1
  br i1 %i.r, label %.cont.us.i.i.epil, label %.cont.us.i.i.from..else.us.i.i.epil

.cont.us.i.i.from..else.us.i.i.epil:              ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.11.0.us28.i.i.epil.init
  %.sroa.gep2.us.i.i.epil = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.else.val.us.i.i.epil = load i64, ptr %.sroa.gep2.us.i.i.epil, align 8, !tbaa !74
  br label %.cont.us.i.i.epil

.cont.us.i.i.epil:                                ; preds = %.cont.us.i.i.from..else.us.i.i.epil, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader
  %i.t = phi i64 [ %.else.val.us.i.i.epil, %.cont.us.i.i.from..else.us.i.i.epil ], [ %.sroa.22.0.copyload.i.i.i, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader ]
  %i.u = add i64 %i.t, %.0.us29.i.i.epil.init
  br label %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit

_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit: ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa, %.cont.us.i.i.epil
  %.lcssa200 = phi i64 [ %i.o, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa ], [ %i.u, %.cont.us.i.i.epil ]
  %.not = icmp eq i64 %.lcssa200, 0
  %.pre107 = load ptr, ptr %i.c, align 8, !tbaa !72 ; 3 uses
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit
  %.not.i.i29 = icmp eq ptr %.pre107, null
  br i1 %.not.i.i29, label %.thread63, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.pre107, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !80
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.thread63, label %.thread.thread.thread

.thread63:                                        ; preds = %bb.c, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.reload235, i64 8
  %.sroa.0.0.copyload.i.i30 = load ptr, ptr %i.e, align 8, !tbaa !28
  store ptr %i.y, ptr %.reload.addr249, align 8
  store ptr %.sroa.0.0.copyload.i.i30, ptr %i.d, align 8
  invoke void @_ZZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io7read_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSA_fL1p_onawE16replace_resourcefL1p0_ERNS0_14awaitable_typeINS2_IJDpT_EEEEEEEEDaOT_EN12replacing_opawEv(ptr dead_on_unwind nonnull writable sret(%"struct.boost::cobalt::op<boost::system::error_code, unsigned long>::awaitable_base") align 8 dereferenceable(72) %.reload.addr247, ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr249)
          to label %_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io7read_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit unwind label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.196

_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io7read_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit: ; preds = %.thread63
  %i.z = load ptr, ptr %.reload.addr247, align 8, !tbaa !90, !nonnull !62, !align !63 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr nonnull %i.b)
          to label %bb.d unwind label %.body.from.193, !inline_history !1

bb.d:                                             ; preds = %_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io7read_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit
  %i.ac = load i8, ptr %i.f, align 8, !tbaa !91, !range !92, !noundef !62
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.backedge, label %bb.e

.backedge:                                        ; preds = %bb.d, %bb.e
  %i.ae = load ptr, ptr %2, align 8, !tbaa !93, !noalias !242 ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i31, label %.lr.ph71, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %index.addr252, align 8
  %i.af = tail call noundef zeroext i1 @_ZN5boost6cobalt2opIJNS_6system10error_codeEmEE14awaitable_base13await_suspendINS0_6detail19composition_promiseIJS3_mEEEEEbNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %.reload.addr247, ptr nonnull %0) #25
  br i1 %i.af, label %CoroEnd, label %.backedge

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.196: ; preds = %.thread63
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit

.body.from.193:                                   ; preds = %_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io7read_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.g, %.body.from.191, %.body.from.193
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %.body.from.193 ], [ %i.aj, %.body.from.191 ], [ %i.aj, %bb.g ] ; 2 uses
  %i.ai = load ptr, ptr %2, align 8, !tbaa !93
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit, label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.: ; preds = %.body
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  br label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i: ; preds = %.backedge, %resume.0.a
  %.lcssa7 = phi ptr [ %3, %resume.0.a ], [ %i.ae, %.backedge ]
  store ptr %.lcssa7, ptr %.reload.addr250, align 8, !tbaa !93, !noalias !242
  tail call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr250) #25, !noalias !242
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %.reload.addr250) #28
          to label %bb.f unwind label %bb.g, !noalias !242

bb.f:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  unreachable

bb.g:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  %i.aj = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ak = load ptr, ptr %.reload.addr250, align 8, !tbaa !93, !noalias !242
  %.not.i2.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i2.i.i, label %.body, label %.body.from.191

.body.from.191:                                   ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr250) #25, !noalias !242
  br label %.body

.lr.ph71:                                         ; preds = %resume.0.a, %.backedge
  %.058.reload = load i64, ptr %.058.reload.addr, align 8, !tbaa !66
  %i.al = load i64, ptr %i.b, align 8, !tbaa !67, !noalias !242 ; 5 uses
  %.sroa.650.8.copyload = load i32, ptr %i.a, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.8..sroa_idx216, i64 12, i1 false)
  %.sroa.952.8.copyload = load i64, ptr %.sroa.952.8..sroa_idx217, align 8, !tbaa !67 ; 3 uses
  %i.am = add i64 %i.al, %.058.reload             ; 4 uses
  %i.an = and i64 %.sroa.952.8.copyload, 1
  %.not.i.i34 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i34, label %_ZNK5boost6system10error_codecvbEv.exit.thread65, label %bb.h

bb.h:                                             ; preds = %.lr.ph71
  %i.ao = icmp ne i64 %.sroa.952.8.copyload, 1
  %i.ap = icmp ne i32 %.sroa.650.8.copyload, 0
  %or.cond = select i1 %i.ao, i1 true, i1 %i.ap
  br i1 %or.cond, label %_ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit.thread, label %_ZNK5boost6system10error_codecvbEv.exit.thread65

_ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit.thread: ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !96, !nonnull !62, !align !63 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store i64 %i.am, ptr %i.ar, align 8, !tbaa !67
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i32 %.sroa.650.8.copyload, ptr %i.at, align 8
  %.sroa.247.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.247.sroa.2.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9, i64 12, i1 false)
  %.sroa.247.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store i64 %.sroa.952.8.copyload, ptr %.sroa.247.sroa.3.0..sroa_idx, align 8, !tbaa !67
  store i8 1, ptr %i.as, align 8, !tbaa !91
  br label %.thread74

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit: ; preds = %.body, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from., %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.196
  %.pn = phi { ptr, i32 } [ %i.ag, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.196 ], [ %eh.lpad-body, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from. ], [ %eh.lpad-body, %.body ]
  %.015 = extractvalue { ptr, i32 } %.pn, 0
  %i.au = tail call ptr @__cxa_begin_catch(ptr %.015) #25 ; 0 uses
  invoke void @__cxa_rethrow() #28
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit
  unreachable

_ZNK5boost6system10error_codecvbEv.exit.thread65: ; preds = %bb.h, %.lr.ph71
  %.reload229 = load ptr, ptr %.reload.addr228, align 8, !tbaa !66 ; 6 uses
  %.sroa.22.0..sroa_idx.i.i.i212 = getelementptr inbounds nuw i8, ptr %.reload229, i64 24 ; 4 uses
  %i.av = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i212, align 8, !tbaa !74 ; 3 uses
  %i.aw = icmp ult i64 %i.al, %i.av
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread65
  %i.ax = getelementptr inbounds nuw i8, ptr %.reload229, i64 16 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !97
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.al
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !97
  %i.ba = sub nuw i64 %i.av, %i.al
  store i64 %i.ba, ptr %.sroa.22.0..sroa_idx.i.i.i212, align 8, !tbaa !74
  br label %bb.a

bb.j:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread65
  %.sroa.2.0..sroa_idx.i.i.i215 = getelementptr inbounds nuw i8, ptr %.reload229, i64 40 ; 2 uses
  %i.bb = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i215, align 8, !tbaa !99 ; 4 uses
  %.not.i35 = icmp eq i64 %i.bb, 0
  br i1 %.not.i35, label %.loopexit, label %.from..lr.ph.i

.from..lr.ph.i:                                   ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %.reload229, i64 32 ; 2 uses
  %i.bd = sub nuw i64 %i.al, %i.av                ; 3 uses
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !101 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !74 ; 2 uses
  %i.bh = icmp ugt i64 %i.bd, %i.bg
  br i1 %i.bh, label %.lr.ph.preheader, label %.critedge.i

.lr.ph.preheader:                                 ; preds = %.from..lr.ph.i
  %exitcond.not.i192 = icmp eq i64 %i.bb, 1
  br i1 %exitcond.not.i192, label %.loopexit, label %.from.197.lr.ph, !llvm.loop !237

.from.197.lr.ph:                                  ; preds = %.lr.ph.preheader
  br label %.from.197, !llvm.loop !237

.lr.ph:                                           ; preds = %.from.197
  %i.bi = add nuw i64 %i.bj, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bi, %i.bb
  br i1 %exitcond.not.i, label %.lr.ph..loopexit.loopexit_crit_edge, label %.from.197, !llvm.loop !237

.from.197:                                        ; preds = %.from.197.lr.ph, %.lr.ph
  %i.bj = phi i64 [ 1, %.from.197.lr.ph ], [ %i.bi, %.lr.ph ] ; 3 uses
  %.018.i63194 = phi i64 [ %i.bd, %.from.197.lr.ph ], [ %i.bl, %.lr.ph ]
  %.01217.i64193 = phi i64 [ 0, %.from.197.lr.ph ], [ %i.bj, %.lr.ph ]
  %i.bk = phi i64 [ %i.bg, %.from.197.lr.ph ], [ %i.bo, %.lr.ph ]
  %i.bl = sub nuw i64 %.018.i63194, %i.bk         ; 3 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bj ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !74 ; 2 uses
  %i.bp = icmp ugt i64 %i.bl, %i.bo
  br i1 %i.bp, label %.lr.ph, label %.critedge.i.loopexit, !llvm.loop !237

.lr.ph..loopexit.loopexit_crit_edge:              ; preds = %.lr.ph
  br label %.loopexit, !llvm.loop !237

.loopexit:                                        ; preds = %.lr.ph.preheader, %.lr.ph..loopexit.loopexit_crit_edge, %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %.reload229, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, i8 0, i64 32, i1 false)
  %.reload239 = load ptr, ptr %.reload.addr228, align 8, !tbaa !66
  %i.br = getelementptr inbounds nuw i8, ptr %.reload239, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.br, i8 0, i64 16, i1 false)
  br label %bb.a

.critedge.i.loopexit:                             ; preds = %.from.197
  %i.bs = add i64 %.01217.i64193, 2
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %.from..lr.ph.i
  %.018.i.lcssa = phi i64 [ %i.bd, %.from..lr.ph.i ], [ %i.bl, %.critedge.i.loopexit ]
  %.01217.i.lcssa = phi i64 [ 1, %.from..lr.ph.i ], [ %i.bs, %.critedge.i.loopexit ] ; 2 uses
  %.lcssa = phi ptr [ %i.be, %.from..lr.ph.i ], [ %i.bm, %.critedge.i.loopexit ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.reload229, i64 16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %.lcssa, i64 16, i1 false), !tbaa.struct !102
  %i.bu = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i212, align 8, !tbaa !74 ; 2 uses
  %..i14.i = tail call i64 @llvm.umin.i64(i64 %.018.i.lcssa, i64 %i.bu) ; 2 uses
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !97
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %..i14.i
  store ptr %i.bw, ptr %i.bt, align 8, !tbaa !97
  %i.bx = sub i64 %i.bu, %..i14.i
  store i64 %i.bx, ptr %.sroa.22.0..sroa_idx.i.i.i212, align 8, !tbaa !74
  %i.by = sub i64 %i.bb, %.01217.i.lcssa
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %.01217.i.lcssa
  store ptr %i.bz, ptr %i.bc, align 8, !tbaa !69
  store i64 %i.by, ptr %.sroa.2.0..sroa_idx.i.i.i215, align 8, !tbaa !67
  br label %bb.a

.thread:                                          ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit, %.thread.from...thread_crit_edge
  %i.ca = phi ptr [ %.pre106, %.thread.from...thread_crit_edge ], [ %.pre107, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit ] ; 2 uses
  %.not.i.i36 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i36, label %.critedge, label %.thread.thread

.thread.thread:                                   ; preds = %.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !80
  %i.cb = icmp eq i32 %.pre, 0
  br i1 %i.cb, label %.critedge, label %.thread.thread.thread

.thread.thread.thread:                            ; preds = %bb.c, %.thread.thread
  %i.cc = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !107, !noalias !244
  %i.cd = and i64 %i.cc, -2
  %switch.i.i.i.i.i.i.i = icmp eq i64 %i.cd, -5572340897628102704
  br i1 %switch.i.i.i.i.i.i.i, label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread, label %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit

_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit: ; preds = %.thread.thread.thread
  %i.ce = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !18, !noalias !244
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !244
  %i.ch = tail call noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 125) #25, !noalias !244, !inline_history !3
  br i1 %i.ch, label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread, label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit

.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread: ; preds = %.thread.thread.thread, %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit
  br label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit

.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit: ; preds = %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit, %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread
  %i.ci = phi i64 [ 3, %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread ], [ 2, %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit ]
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !96, !nonnull !62, !align !63 ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store i64 %i.am, ptr %i.ck, align 8, !tbaa !67
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i64 125, ptr %i.cm, align 8
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.5.8..sroa_idx, align 8, !tbaa !16
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store i64 %i.ci, ptr %.sroa.6.8..sroa_idx, align 8, !tbaa !67
  store i8 1, ptr %i.cl, align 8, !tbaa !91
  br label %.thread74

.critedge:                                        ; preds = %.thread.thread, %.thread
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !96, !nonnull !62, !align !63 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  store i64 %i.am, ptr %i.co, align 8, !tbaa !67
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.cp, align 8, !tbaa !91
  br label %.thread74

.thread74:                                        ; preds = %.critedge, %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit, %_ZN5boost6cobalt2io23mutable_buffer_sequencepLEm.exit.thread
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !34, !noalias !245
  store i64 %i.cs, ptr %.reload.addr247, align 8, !tbaa !34, !alias.scope !245
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !39, !noalias !245
  %.not.i.i.i.i.i.i38 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i38, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.thread74
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !40, !noalias !245 ; 2 uses
  store ptr %i.cx, ptr %.sroa.952.8..sroa_idx217, align 8, !tbaa !40, !alias.scope !245
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !41, !noalias !245
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !41, !alias.scope !245
  store ptr null, ptr %i.cw, align 8, !tbaa !40, !noalias !245
  store ptr null, ptr %i.cy, align 8, !tbaa !41, !noalias !245
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !43, !noalias !245
  invoke void %i.dc(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.cv)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr %i.ct, align 8, !tbaa !39, !noalias !245
  %.pre108 = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.dd = icmp eq ptr %.pre108, null
  br label %AfterCoroSave170

bb.m:                                             ; preds = %.thread74
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.952.8..sroa_idx217, i8 0, i64 24, i1 false), !alias.scope !245
  br label %AfterCoroSave170

bb.n:                                             ; preds = %bb.k
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  tail call void @__clang_call_terminate(ptr %i.df) #26
  unreachable

AfterCoroSave170:                                 ; preds = %bb.m, %bb.l
  %i.dg = phi i1 [ true, %bb.m ], [ %i.dd, %bb.l ]
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !46, !noalias !245 ; 2 uses
  store ptr %i.dk, ptr %2, align 8, !tbaa !46, !alias.scope !245
  store ptr @_ZZN5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS7_17any_executor_base8prop_fnsIST_EEvE3fns, ptr %i.dj, align 8, !tbaa !46, !noalias !245
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.dn = load i64, ptr %i.di, align 8, !tbaa !47, !noalias !245 ; 2 uses
  store i64 %i.dn, ptr %i.dm, align 8, !tbaa !47, !alias.scope !245
  store ptr null, ptr %i.di, align 8, !tbaa !47, !noalias !245
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.dp = load ptr, ptr %i.dh, align 8, !tbaa !61, !noalias !245, !nonnull !62, !align !63
  store ptr %i.dp, ptr %i.do, align 8, !tbaa !64, !alias.scope !245
  store ptr null, ptr %0, align 8
  store i8 1, ptr %index.addr252, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.dg, label %bb.p, label %bb.o

bb.o:                                             ; preds = %AfterCoroSave170
  %i.dr = load ptr, ptr %.sroa.952.8..sroa_idx217, align 8, !tbaa !40 ; 2 uses
  store ptr %i.dr, ptr %i.dq, align 8, !tbaa !40
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !41
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !41
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !108
  invoke void %i.dw(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge unwind label %bb.q

._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge: ; preds = %bb.o
  %.pre109 = load ptr, ptr %2, align 8, !tbaa !46
  %.pre110 = load ptr, ptr %i.dm, align 8, !tbaa !47
  br label %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i

bb.p:                                             ; preds = %AfterCoroSave170
  %i.dx = inttoptr i64 %i.dn to ptr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i8 0, i64 24, i1 false)
  br label %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  call void @__clang_call_terminate(ptr %i.dz) #26
  unreachable

_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i: ; preds = %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge, %bb.p
  %i.ea = phi ptr [ %.pre110, %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge ], [ %i.dx, %bb.p ] ; 2 uses
  %i.eb = phi ptr [ %.pre109, %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge ], [ %i.dk, %bb.p ]
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !46
  store ptr null, ptr %i.dm, align 8, !tbaa !47
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  invoke void %i.ee(ptr nonnull %0)
          to label %_ZN5boost6cobalt6detail12self_destroyINS1_19composition_promiseIJNS_6system10error_codeEmEEENS_4asio15any_io_executorEEEvNSt7__n486116coroutine_handleIT_EERKT0_.exit.i.i unwind label %bb.r, !inline_history !4

bb.r:                                             ; preds = %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  call void @__clang_call_terminate(ptr %i.eg) #26
  unreachable

_ZN5boost6cobalt6detail12self_destroyINS1_19composition_promiseIJNS_6system10error_codeEmEEENS_4asio15any_io_executorEEEvNSt7__n486116coroutine_handleIT_EERKT0_.exit.i.i: ; preds = %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !109 ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i2, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_ZN5boost6cobalt6detail12self_destroyINS1_19composition_promiseIJNS_6system10error_codeEmEEENS_4asio15any_io_executorEEEvNSt7__n486116coroutine_handleIT_EERKT0_.exit.i.i
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !110
  %i.ek = icmp eq i32 %i.ej, 3
  br i1 %i.ek, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 2, ptr %i.ei, align 4, !tbaa !110
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %_ZN5boost6cobalt6detail12self_destroyINS1_19composition_promiseIJNS_6system10error_codeEmEEENS_4asio15any_io_executorEEEvNSt7__n486116coroutine_handleIT_EERKT0_.exit.i.i
  %.sroa.03.0.i.i = phi ptr [ @_ZNSt7__n486116coroutine_handleINS_22noop_coroutine_promiseEE5_S_frE, %bb.t ], [ %i.ea, %bb.s ], [ %i.ea, %_ZN5boost6cobalt6detail12self_destroyINS1_19composition_promiseIJNS_6system10error_codeEmEEENS_4asio15any_io_executorEEEvNSt7__n486116coroutine_handleIT_EERKT0_.exit.i.i ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !39
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !40
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !111
  invoke void %i.eq(ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #26
  unreachable

bb.x:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.et = load ptr, ptr %.sroa.03.0.i.i, align 8
  musttail call void %i.et(ptr nonnull %.sroa.03.0.i.i)
  ret void

bb.y:                                             ; preds = %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit
  %i.eu = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.z unwind label %bb.aa

CoroEnd:                                          ; preds = %bb.e
  ret void

bb.z:                                             ; preds = %bb.y
  store ptr null, ptr %0, align 8
  store i8 1, ptr %index.addr252, align 8
  resume { ptr, i32 } %i.eu

bb.aa:                                            ; preds = %bb.y
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  %i.ew = extractvalue { ptr, i32 } %i.ev, 0
  tail call void @__clang_call_terminate(ptr %i.ew) #26
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5boost6cobalt2io8read_all8initiateENS0_18completion_handlerIJNS_6system10error_codeEmEEE.destroy(ptr noundef nonnull align 8 dereferenceable(368) %0) #8 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 360
  %index = load i8, ptr %index.addr, align 8
  %i.a = icmp eq i8 %index, 0
  br i1 %i.a, label %AfterCoroSuspend, label %AfterCoroSuspend172, !prof !139

AfterCoroSuspend:                                 ; preds = %resume.entry
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %.pre105 = load ptr, ptr %i.b, align 8, !tbaa !93
  %i.c = icmp eq ptr %.pre105, null
  br i1 %i.c, label %.loopexit75, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #25
  br label %.loopexit75

AfterCoroSuspend172:                              ; preds = %resume.entry
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47   ; 3 uses
  %.not2.i.i = icmp eq ptr %i.e, null
  br i1 %.not2.i.i, label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %AfterCoroSuspend172
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !109  ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.g, null
  br i1 %.not.i.i39, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.g, align 4, !tbaa !110
  %i.i = icmp eq i32 %i.h, 3
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #29
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.d, align 8, !tbaa !47
  br label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr nonnull %i.e)
          to label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i unwind label %bb.g, !inline_history !5

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #26
  unreachable

_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i:  ; preds = %bb.f, %bb.e, %AfterCoroSuspend172
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !39
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.loopexit75, label %bb.h

bb.h:                                             ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !111
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(56) %i.s)
          to label %.loopexit75 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #26
  unreachable

.loopexit75:                                      ; preds = %AfterCoroSuspend, %bb.a, %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !47   ; 3 uses
  %.not2.i.i40 = icmp eq ptr %i.z, null
  br i1 %.not2.i.i40, label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i42, label %bb.j

bb.j:                                             ; preds = %.loopexit75
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !109 ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i41, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !110
  %i.ad = icmp eq i32 %i.ac, 3
  br i1 %i.ad, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ae = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #29
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.y, align 8, !tbaa !47
  br label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i42

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr nonnull %i.z)
          to label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i42 unwind label %bb.o, !inline_history !5

bb.o:                                             ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #26
  unreachable

_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i42: ; preds = %bb.n, %bb.m, %.loopexit75
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !39
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i42
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !111
  invoke void %i.aq(ptr noundef nonnull align 8 dereferenceable(56) %i.an)
          to label %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEED2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #26
  unreachable

_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEED2Ev.exit: ; preds = %bb.p, %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i42
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !47 ; 3 uses
  %.not2.i = icmp eq ptr %i.au, null
  br i1 %.not2.i, label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEED2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !109 ; 2 uses
  %.not.i43 = icmp eq ptr %i.aw, null
  br i1 %.not.i43, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !110
  %i.ay = icmp eq i32 %i.ax, 3
  br i1 %i.ay, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.az = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #29
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr null, ptr %i.at, align 8, !tbaa !47
  br label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  invoke void %i.bc(ptr nonnull %i.au)
          to label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i unwind label %bb.w, !inline_history !5

bb.w:                                             ; preds = %bb.v
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  tail call void @__clang_call_terminate(ptr %i.be) #26
  unreachable

_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i:    ; preds = %bb.v, %bb.u, %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEED2Ev.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !39
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !111
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(56) %i.bi)
          to label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  tail call void @__clang_call_terminate(ptr %i.bn) #26
  unreachable

_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit: ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i, %bb.x
  %i.bo = getelementptr inbounds i8, ptr %0, i64 -32 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bo, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %0, i64 -24
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.bp = add i64 %.sroa.4.0.copyload.i, 32
  %i.bq = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  invoke void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i, ptr noundef nonnull %i.bo, i64 noundef %i.bp, i64 noundef 16)
          to label %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEEdlEPv.exit unwind label %bb.z, !inline_history !6

bb.z:                                             ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  tail call void @__clang_call_terminate(ptr %i.bu) #26
  unreachable

_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEEdlEPv.exit: ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5boost6cobalt2io11read_all_at8initiateENS0_18completion_handlerIJNS_6system10error_codeEmEEE.resume(ptr noundef nonnull align 8 dereferenceable(368) %0) #7 align 2 personality ptr @__gxx_personality_v0 {
resume.0.a:
  %1 = alloca %"class.boost::asio::any_io_executor", align 8 ; 9 uses
  %.sroa.10 = alloca [12 x i8], align 4           ; 2 uses
  %.reload.addr252 = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %.reload.addr254 = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %.reload.addr255 = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 6 uses
  %.059.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %.sroa.1053.8..sroa_idx220 = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %.sroa.10.8..sroa_idx219 = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %.reload.addr233 = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %index.addr257 = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %3 = load ptr, ptr %2, align 8, !tbaa !93, !noalias !260 ; 2 uses
  %.not.i.i3270 = icmp eq ptr %3, null
  br i1 %.not.i.i3270, label %.lr.ph71, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i

bb.a:                                             ; preds = %bb.i, %.loopexit, %.critedge.i
  %.reload = load ptr, ptr %.reload.addr233, align 8, !tbaa !113 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.reload, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !118
  %i.i = add i64 %i.h, %i.ao
  store i64 %i.i, ptr %i.g, align 8, !tbaa !118
  store i64 %i.ap, ptr %.059.reload.addr, align 8
  %.sroa.2.0..sroa_idx.i.i.i216 = getelementptr inbounds nuw i8, ptr %.reload, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %.reload, i64 40
  %.sroa.22.0..sroa_idx.i.i.i211 = getelementptr inbounds nuw i8, ptr %.reload, i64 32
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i211, align 8, !tbaa !67, !noalias !261 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !69, !noalias !261 ; 3 uses
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i216, align 8, !tbaa !67, !noalias !261 ; 4 uses
  %.not.i = icmp eq i64 %.sroa.2.0.copyload.i.i.i, -1
  br i1 %.not.i, label %.thread.from...thread_crit_edge, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader: ; preds = %bb.a
  %i.k = add i64 %.sroa.2.0.copyload.i.i.i, 1     ; 2 uses
  %i.l = icmp eq i64 %.sroa.2.0.copyload.i.i.i, 0
  br i1 %i.l, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new: ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader
  %unroll_iter = and i64 %i.k, -2
  br label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i

.thread.from...thread_crit_edge:                  ; preds = %bb.a
  %.pre108 = load ptr, ptr %i.c, align 8, !tbaa !72
  br label %.thread

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i: ; preds = %.cont.us.i.i, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new
  %.0.us29.i.i = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new ], [ %i.r, %.cont.us.i.i ]
  %.sroa.11.0.us28.i.i = phi i64 [ -1, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new ], [ %i.s, %.cont.us.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader.new ], [ %niter.next.1, %.cont.us.i.i ]
  %i.m = icmp eq i64 %.sroa.11.0.us28.i.i, -1
  br i1 %i.m, label %.cont.us.i.i, label %.cont.us.i.i.from..else.us.i.i

.cont.us.i.i.from..else.us.i.i:                   ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.11.0.us28.i.i
  %.sroa.gep2.us.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.else.val.us.i.i = load i64, ptr %.sroa.gep2.us.i.i, align 8, !tbaa !74
  br label %.cont.us.i.i

.cont.us.i.i:                                     ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i, %.cont.us.i.i.from..else.us.i.i
  %i.o = phi i64 [ %.else.val.us.i.i, %.cont.us.i.i.from..else.us.i.i ], [ %.sroa.22.0.copyload.i.i.i, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i ]
  %i.p = add i64 %i.o, %.0.us29.i.i
  %i.q = getelementptr [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.11.0.us28.i.i
  %.sroa.gep2.us.i.i.1 = getelementptr i8, ptr %i.q, i64 24
  %.else.val.us.i.i.1 = load i64, ptr %.sroa.gep2.us.i.i.1, align 8, !tbaa !74
  %i.r = add i64 %.else.val.us.i.i.1, %i.p        ; 3 uses
  %i.s = add i64 %.sroa.11.0.us28.i.i, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i, !llvm.loop !254

_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa: ; preds = %.cont.us.i.i
  %i.t = and i64 %.sroa.2.0.copyload.i.i.i, 1
  %lcmp.mod.not.not = icmp eq i64 %i.t, 0
  br i1 %lcmp.mod.not.not, label %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader, label %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit

_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader: ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader
  %.0.us29.i.i.epil.init = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader ], [ %i.r, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa ]
  %.sroa.11.0.us28.i.i.epil.init = phi i64 [ -1, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.preheader ], [ %i.s, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod231 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod231)
  %i.u = icmp eq i64 %.sroa.11.0.us28.i.i.epil.init, -1
  br i1 %i.u, label %.cont.us.i.i.epil, label %.cont.us.i.i.from..else.us.i.i.epil

.cont.us.i.i.from..else.us.i.i.epil:              ; preds = %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.11.0.us28.i.i.epil.init
  %.sroa.gep2.us.i.i.epil = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.else.val.us.i.i.epil = load i64, ptr %.sroa.gep2.us.i.i.epil, align 8, !tbaa !74
  br label %.cont.us.i.i.epil

.cont.us.i.i.epil:                                ; preds = %.cont.us.i.i.from..else.us.i.i.epil, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader
  %i.w = phi i64 [ %.else.val.us.i.i.epil, %.cont.us.i.i.from..else.us.i.i.epil ], [ %.sroa.22.0.copyload.i.i.i, %_ZN5boost6cobalt2ioneERKNS1_23mutable_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.epil.preheader ]
  %i.x = add i64 %i.w, %.0.us29.i.i.epil.init
  br label %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit

_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit: ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa, %.cont.us.i.i.epil
  %.lcssa201 = phi i64 [ %i.r, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit.unr-lcssa ], [ %i.x, %.cont.us.i.i.epil ]
  %.not = icmp eq i64 %.lcssa201, 0
  %.pre109 = load ptr, ptr %i.c, align 8, !tbaa !72 ; 3 uses
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit
  %.not.i.i30 = icmp eq ptr %.pre109, null
  br i1 %.not.i.i30, label %.thread64, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.pre109, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !80
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.thread64, label %.thread.thread.thread

.thread64:                                        ; preds = %bb.c, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %.reload, i64 8
  %.sroa.0.0.copyload.i.i31 = load ptr, ptr %i.e, align 8, !tbaa !28
  store ptr %i.ab, ptr %.reload.addr254, align 8
  store ptr %.sroa.0.0.copyload.i.i31, ptr %i.d, align 8
  invoke void @_ZZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io10read_at_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSA_fL1p_onawE16replace_resourcefL1p0_ERNS0_14awaitable_typeINS2_IJDpT_EEEEEEEEDaOT_EN12replacing_opawEv(ptr dead_on_unwind nonnull writable sret(%"struct.boost::cobalt::op<boost::system::error_code, unsigned long>::awaitable_base") align 8 dereferenceable(72) %.reload.addr252, ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr254)
          to label %_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io10read_at_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit unwind label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.199

_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io10read_at_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit: ; preds = %.thread64
  %i.ac = load ptr, ptr %.reload.addr252, align 8, !tbaa !90, !nonnull !62, !align !63 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !18
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr nonnull %i.b)
          to label %bb.d unwind label %.body.from.196, !inline_history !1

bb.d:                                             ; preds = %_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io10read_at_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit
  %i.af = load i8, ptr %i.f, align 8, !tbaa !91, !range !92, !noundef !62
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %.backedge, label %bb.e

.backedge:                                        ; preds = %bb.d, %bb.e
  %i.ah = load ptr, ptr %2, align 8, !tbaa !93, !noalias !260 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i32, label %.lr.ph71, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %index.addr257, align 8
  %i.ai = tail call noundef zeroext i1 @_ZN5boost6cobalt2opIJNS_6system10error_codeEmEE14awaitable_base13await_suspendINS0_6detail19composition_promiseIJS3_mEEEEEbNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %.reload.addr252, ptr nonnull %0) #25
  br i1 %i.ai, label %CoroEnd, label %.backedge

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.199: ; preds = %.thread64
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit

.body.from.196:                                   ; preds = %_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeEmEE15await_transformIRNS0_2io10read_at_opEQrQOTL0__PNSt3pmr15memory_resourceE_XcldtcldtscSB_fL2p_onawE16replace_resourcefL2p0_ERNS0_14awaitable_typeINS3_IJDpT_EEEEEEEEDaOT_E12replacing_opQrQSM__Xcldtclsr3stdE7forwardISL_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSM_EN10lazy_tupleawEv.exit
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.g, %.body.from.194, %.body.from.196
  %eh.lpad-body = phi { ptr, i32 } [ %i.ak, %.body.from.196 ], [ %i.am, %.body.from.194 ], [ %i.am, %bb.g ] ; 2 uses
  %i.al = load ptr, ptr %2, align 8, !tbaa !93
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit, label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.: ; preds = %.body
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  br label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i: ; preds = %.backedge, %resume.0.a
  %.lcssa7 = phi ptr [ %3, %resume.0.a ], [ %i.ah, %.backedge ]
  store ptr %.lcssa7, ptr %.reload.addr255, align 8, !tbaa !93, !noalias !260
  tail call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr255) #25, !noalias !260
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %.reload.addr255) #28
          to label %bb.f unwind label %bb.g, !noalias !260

bb.f:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  unreachable

bb.g:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  %i.am = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.an = load ptr, ptr %.reload.addr255, align 8, !tbaa !93, !noalias !260
  %.not.i2.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i2.i.i, label %.body, label %.body.from.194

.body.from.194:                                   ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr255) #25, !noalias !260
  br label %.body

.lr.ph71:                                         ; preds = %resume.0.a, %.backedge
  %.059.reload = load i64, ptr %.059.reload.addr, align 8, !tbaa !113
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !67, !noalias !260 ; 6 uses
  %.sroa.7.8.copyload = load i32, ptr %i.a, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.8..sroa_idx219, i64 12, i1 false)
  %.sroa.1053.8.copyload = load i64, ptr %.sroa.1053.8..sroa_idx220, align 8, !tbaa !67 ; 3 uses
  %i.ap = add i64 %i.ao, %.059.reload             ; 4 uses
  %i.aq = and i64 %.sroa.1053.8.copyload, 1
  %.not.i.i35 = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i35, label %_ZNK5boost6system10error_codecvbEv.exit.thread66, label %bb.h

bb.h:                                             ; preds = %.lr.ph71
  %i.ar = icmp ne i64 %.sroa.1053.8.copyload, 1
  %i.as = icmp ne i32 %.sroa.7.8.copyload, 0
  %or.cond = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond, label %.thread71, label %_ZNK5boost6system10error_codecvbEv.exit.thread66

.thread71:                                        ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !96, !nonnull !62, !align !63 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store i64 %i.ap, ptr %i.au, align 8, !tbaa !67
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 %.sroa.7.8.copyload, ptr %i.aw, align 8
  %.sroa.248.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.248.sroa.2.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10, i64 12, i1 false)
  %.sroa.248.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store i64 %.sroa.1053.8.copyload, ptr %.sroa.248.sroa.3.0..sroa_idx, align 8, !tbaa !67
  store i8 1, ptr %i.av, align 8, !tbaa !91
  br label %.thread76

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit: ; preds = %.body, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from., %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.199
  %.pn = phi { ptr, i32 } [ %i.aj, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from.199 ], [ %eh.lpad-body, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit.from. ], [ %eh.lpad-body, %.body ]
  %.016 = extractvalue { ptr, i32 } %.pn, 0
  %i.ax = tail call ptr @__cxa_begin_catch(ptr %.016) #25 ; 0 uses
  invoke void @__cxa_rethrow() #28
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit
  unreachable

_ZNK5boost6system10error_codecvbEv.exit.thread66: ; preds = %bb.h, %.lr.ph71
  %.reload234 = load ptr, ptr %.reload.addr233, align 8, !tbaa !113 ; 6 uses
  %.sroa.22.0..sroa_idx.i.i.i215 = getelementptr inbounds nuw i8, ptr %.reload234, i64 32 ; 4 uses
  %i.ay = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i215, align 8, !tbaa !74 ; 3 uses
  %i.az = icmp ult i64 %i.ao, %i.ay
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread66
  %i.ba = getelementptr inbounds nuw i8, ptr %.reload234, i64 24 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !97
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ao
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !97
  %i.bd = sub nuw i64 %i.ay, %i.ao
  store i64 %i.bd, ptr %.sroa.22.0..sroa_idx.i.i.i215, align 8, !tbaa !74
  br label %bb.a

bb.j:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread66
  %.sroa.2.0..sroa_idx.i.i.i218 = getelementptr inbounds nuw i8, ptr %.reload234, i64 48 ; 2 uses
  %i.be = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i218, align 8, !tbaa !99 ; 4 uses
  %.not.i36 = icmp eq i64 %i.be, 0
  br i1 %.not.i36, label %.loopexit, label %.from..lr.ph.i

.from..lr.ph.i:                                   ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %.reload234, i64 40 ; 2 uses
  %i.bg = sub nuw i64 %i.ao, %i.ay                ; 3 uses
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !101 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !74 ; 2 uses
  %i.bk = icmp ugt i64 %i.bg, %i.bj
  br i1 %i.bk, label %.lr.ph.preheader, label %.critedge.i

.lr.ph.preheader:                                 ; preds = %.from..lr.ph.i
  %exitcond.not.i193 = icmp eq i64 %i.be, 1
  br i1 %exitcond.not.i193, label %.loopexit, label %.from.200.lr.ph, !llvm.loop !255

.from.200.lr.ph:                                  ; preds = %.lr.ph.preheader
  br label %.from.200, !llvm.loop !255

.lr.ph:                                           ; preds = %.from.200
  %i.bl = add nuw i64 %i.bm, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bl, %i.be
  br i1 %exitcond.not.i, label %.lr.ph..loopexit.loopexit_crit_edge, label %.from.200, !llvm.loop !255

.from.200:                                        ; preds = %.from.200.lr.ph, %.lr.ph
  %i.bm = phi i64 [ 1, %.from.200.lr.ph ], [ %i.bl, %.lr.ph ] ; 3 uses
  %.018.i63195 = phi i64 [ %i.bg, %.from.200.lr.ph ], [ %i.bo, %.lr.ph ]
  %.01217.i64194 = phi i64 [ 0, %.from.200.lr.ph ], [ %i.bm, %.lr.ph ]
  %i.bn = phi i64 [ %i.bj, %.from.200.lr.ph ], [ %i.br, %.lr.ph ]
  %i.bo = sub nuw i64 %.018.i63195, %i.bn         ; 3 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.bm ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !74 ; 2 uses
  %i.bs = icmp ugt i64 %i.bo, %i.br
  br i1 %i.bs, label %.lr.ph, label %.critedge.i.loopexit, !llvm.loop !255

.lr.ph..loopexit.loopexit_crit_edge:              ; preds = %.lr.ph
  br label %.loopexit, !llvm.loop !255

.loopexit:                                        ; preds = %.lr.ph.preheader, %.lr.ph..loopexit.loopexit_crit_edge, %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %.reload234, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i8 0, i64 32, i1 false)
  %.reload244 = load ptr, ptr %.reload.addr233, align 8, !tbaa !113
  %i.bu = getelementptr inbounds nuw i8, ptr %.reload244, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i8 0, i64 16, i1 false)
  br label %bb.a

.critedge.i.loopexit:                             ; preds = %.from.200
  %i.bv = add i64 %.01217.i64194, 2
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %.from..lr.ph.i
  %.018.i.lcssa = phi i64 [ %i.bg, %.from..lr.ph.i ], [ %i.bo, %.critedge.i.loopexit ]
  %.01217.i.lcssa = phi i64 [ 1, %.from..lr.ph.i ], [ %i.bv, %.critedge.i.loopexit ] ; 2 uses
  %.lcssa = phi ptr [ %i.bh, %.from..lr.ph.i ], [ %i.bp, %.critedge.i.loopexit ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.reload234, i64 24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %.lcssa, i64 16, i1 false), !tbaa.struct !102
  %i.bx = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i215, align 8, !tbaa !74 ; 2 uses
  %..i14.i = tail call i64 @llvm.umin.i64(i64 %.018.i.lcssa, i64 %i.bx) ; 2 uses
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !97
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %..i14.i
  store ptr %i.bz, ptr %i.bw, align 8, !tbaa !97
  %i.ca = sub i64 %i.bx, %..i14.i
  store i64 %i.ca, ptr %.sroa.22.0..sroa_idx.i.i.i215, align 8, !tbaa !74
  %i.cb = sub i64 %i.be, %.01217.i.lcssa
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %.01217.i.lcssa
  store ptr %i.cc, ptr %i.bf, align 8, !tbaa !69
  store i64 %i.cb, ptr %.sroa.2.0..sroa_idx.i.i.i218, align 8, !tbaa !67
  br label %bb.a

.thread:                                          ; preds = %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit, %.thread.from...thread_crit_edge
  %i.cd = phi ptr [ %.pre108, %.thread.from...thread_crit_edge ], [ %.pre109, %_ZN5boost4asio11buffer_sizeINS_6cobalt2io23mutable_buffer_sequenceEEEmRKT_.exit ] ; 2 uses
  %.not.i.i37 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i37, label %.critedge, label %.thread.thread

.thread.thread:                                   ; preds = %.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !80
  %i.ce = icmp eq i32 %.pre, 0
  br i1 %i.ce, label %.critedge, label %.thread.thread.thread

.thread.thread.thread:                            ; preds = %bb.c, %.thread.thread
  %i.cf = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !107, !noalias !262
  %i.cg = and i64 %i.cf, -2
  %switch.i.i.i.i.i.i.i = icmp eq i64 %i.cg, -5572340897628102704
  br i1 %switch.i.i.i.i.i.i.i, label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread, label %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit

_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit: ; preds = %.thread.thread.thread
  %i.ch = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !18, !noalias !262
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !262
  %i.ck = tail call noundef zeroext i1 %i.cj(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 125) #25, !noalias !262, !inline_history !3
  br i1 %i.ck, label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread, label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit

.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread: ; preds = %.thread.thread.thread, %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit
  br label %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit

.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit: ; preds = %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit, %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread
  %i.cl = phi i64 [ 3, %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit.thread ], [ 2, %_ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !96, !nonnull !62, !align !63 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  store i64 %i.ap, ptr %i.cn, align 8, !tbaa !67
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 125, ptr %i.cp, align 8
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.5.8..sroa_idx, align 8, !tbaa !16
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  store i64 %i.cl, ptr %.sroa.6.8..sroa_idx, align 8, !tbaa !67
  store i8 1, ptr %i.co, align 8, !tbaa !91
  br label %.thread76

.critedge:                                        ; preds = %.thread.thread, %.thread
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !96, !nonnull !62, !align !63 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  store i64 %i.ap, ptr %i.cr, align 8, !tbaa !67
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.cs, align 8, !tbaa !91
  br label %.thread76

.thread76:                                        ; preds = %.critedge, %.from._ZNSt5tupleIJN5boost6system10error_codeEmEEC2INS0_4asio5error12basic_errorsERmTnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISA_T0_EEEbE4typeELb1EEEOSA_OSB_.exit, %.thread71
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !34, !noalias !263
  store i64 %i.cv, ptr %.reload.addr252, align 8, !tbaa !34, !alias.scope !263
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !39, !noalias !263
  %.not.i.i.i.i.i.i39 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i.i.i39, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.thread76
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !40, !noalias !263 ; 2 uses
  store ptr %i.da, ptr %.sroa.1053.8..sroa_idx220, align 8, !tbaa !40, !alias.scope !263
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !41, !noalias !263
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !41, !alias.scope !263
  store ptr null, ptr %i.cz, align 8, !tbaa !40, !noalias !263
  store ptr null, ptr %i.db, align 8, !tbaa !41, !noalias !263
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !43, !noalias !263
  invoke void %i.df(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.cy)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr %i.cw, align 8, !tbaa !39, !noalias !263
  %.pre107.a = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.dg = icmp eq ptr %.pre107.a, null
  br label %AfterCoroSave172

bb.m:                                             ; preds = %.thread76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1053.8..sroa_idx220, i8 0, i64 24, i1 false), !alias.scope !263
  br label %AfterCoroSave172

bb.n:                                             ; preds = %bb.k
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  tail call void @__clang_call_terminate(ptr %i.di) #26
  unreachable

AfterCoroSave172:                                 ; preds = %bb.m, %bb.l
  %i.dj = phi i1 [ true, %bb.m ], [ %i.dg, %bb.l ]
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !46, !noalias !263 ; 2 uses
  store ptr %i.dn, ptr %2, align 8, !tbaa !46, !alias.scope !263
  store ptr @_ZZN5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS7_17any_executor_base8prop_fnsIST_EEvE3fns, ptr %i.dm, align 8, !tbaa !46, !noalias !263
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.do, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.dq = load i64, ptr %i.dl, align 8, !tbaa !47, !noalias !263 ; 2 uses
  store i64 %i.dq, ptr %i.dp, align 8, !tbaa !47, !alias.scope !263
  store ptr null, ptr %i.dl, align 8, !tbaa !47, !noalias !263
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ds = load ptr, ptr %i.dk, align 8, !tbaa !61, !noalias !263, !nonnull !62, !align !63
  store ptr %i.ds, ptr %i.dr, align 8, !tbaa !64, !alias.scope !263
  store ptr null, ptr %0, align 8
  store i8 1, ptr %index.addr257, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.dj, label %bb.p, label %bb.o

bb.o:                                             ; preds = %AfterCoroSave172
  %i.du = load ptr, ptr %.sroa.1053.8..sroa_idx220, align 8, !tbaa !40 ; 2 uses
  store ptr %i.du, ptr %i.dt, align 8, !tbaa !40
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !41
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !41
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !108
  invoke void %i.dz(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge unwind label %bb.q

._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge: ; preds = %bb.o
  %.pre110.a = load ptr, ptr %2, align 8, !tbaa !46
  %.pre111 = load ptr, ptr %i.dp, align 8, !tbaa !47
  br label %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i

bb.p:                                             ; preds = %AfterCoroSave172
  %i.ea = inttoptr i64 %i.dq to ptr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i8 0, i64 24, i1 false)
  br label %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.eb = landingpad { ptr, i32 }
          catch ptr null
  %i.ec = extractvalue { ptr, i32 } %i.eb, 0
  call void @__clang_call_terminate(ptr %i.ec) #26
  unreachable

_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i: ; preds = %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge, %bb.p
  %i.ed = phi ptr [ %.pre111, %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge ], [ %i.ea, %bb.p ] ; 2 uses
  %i.ee = phi ptr [ %.pre110.a, %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge ], [ %i.dn, %bb.p ]
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !46
  store ptr null, ptr %i.dp, align 8, !tbaa !47
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  invoke void %i.eh(ptr nonnull %0)
          to label %_ZN5boost6cobalt6detail12self_destroyINS1_19composition_promiseIJNS_6system10error_codeEmEEENS_4asio15any_io_executorEEEvNSt7__n486116coroutine_handleIT_EERKT0_.exit.i.i unwind label %bb.r, !inline_history !4

bb.r:                                             ; preds = %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  call void @__clang_call_terminate(ptr %i.ej) #26
  unreachable

_ZN5boost6cobalt6detail12self_destroyINS1_19composition_promiseIJNS_6system10error_codeEmEEENS_4asio15any_io_executorEEEvNSt7__n486116coroutine_handleIT_EERKT0_.exit.i.i: ; preds = %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !109 ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.el, null
  br i1 %.not.i.i2, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_ZN5boost6cobalt6detail12self_destroyINS1_19composition_promiseIJNS_6system10error_codeEmEEENS_4asio15any_io_executorEEEvNSt7__n486116coroutine_handleIT_EERKT0_.exit.i.i
  %i.em = load i32, ptr %i.el, align 4, !tbaa !110
  %i.en = icmp eq i32 %i.em, 3
  br i1 %i.en, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 2, ptr %i.el, align 4, !tbaa !110
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %_ZN5boost6cobalt6detail12self_destroyINS1_19composition_promiseIJNS_6system10error_codeEmEEENS_4asio15any_io_executorEEEvNSt7__n486116coroutine_handleIT_EERKT0_.exit.i.i
  %.sroa.03.0.i.i = phi ptr [ @_ZNSt7__n486116coroutine_handleINS_22noop_coroutine_promiseEE5_S_frE, %bb.t ], [ %i.ed, %bb.s ], [ %i.ed, %_ZN5boost6cobalt6detail12self_destroyINS1_19composition_promiseIJNS_6system10error_codeEmEEENS_4asio15any_io_executorEEEvNSt7__n486116coroutine_handleIT_EERKT0_.exit.i.i ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !39
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !40
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !111
  invoke void %i.et(ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eu = landingpad { ptr, i32 }
          catch ptr null
  %i.ev = extractvalue { ptr, i32 } %i.eu, 0
  call void @__clang_call_terminate(ptr %i.ev) #26
  unreachable

bb.x:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.ew = load ptr, ptr %.sroa.03.0.i.i, align 8
  musttail call void %i.ew(ptr nonnull %.sroa.03.0.i.i)
  ret void

bb.y:                                             ; preds = %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEmEE14awaitable_baseEED2Ev.exit
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.z unwind label %bb.aa

CoroEnd:                                          ; preds = %bb.e
  ret void

bb.z:                                             ; preds = %bb.y
  store ptr null, ptr %0, align 8
  store i8 1, ptr %index.addr257, align 8
  resume { ptr, i32 } %i.ex

bb.aa:                                            ; preds = %bb.y
  %i.ey = landingpad { ptr, i32 }
          catch ptr null
  %i.ez = extractvalue { ptr, i32 } %i.ey, 0
  tail call void @__clang_call_terminate(ptr %i.ez) #26
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5boost6cobalt2io11read_all_at8initiateENS0_18completion_handlerIJNS_6system10error_codeEmEEE.destroy(ptr noundef nonnull align 8 dereferenceable(368) %0) #8 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 360
  %index = load i8, ptr %index.addr, align 8
  %i.a = icmp eq i8 %index, 0
  br i1 %i.a, label %AfterCoroSuspend, label %AfterCoroSuspend174, !prof !139

AfterCoroSuspend:                                 ; preds = %resume.entry
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %.pre107 = load ptr, ptr %i.b, align 8, !tbaa !93
  %i.c = icmp eq ptr %.pre107, null
  br i1 %i.c, label %.loopexit77, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #25
  br label %.loopexit77

AfterCoroSuspend174:                              ; preds = %resume.entry
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47   ; 3 uses
  %.not2.i.i = icmp eq ptr %i.e, null
  br i1 %.not2.i.i, label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %AfterCoroSuspend174
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !109  ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.g, null
  br i1 %.not.i.i40, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.g, align 4, !tbaa !110
  %i.i = icmp eq i32 %i.h, 3
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #29
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.d, align 8, !tbaa !47
  br label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr nonnull %i.e)
          to label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i unwind label %bb.g, !inline_history !5

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #26
  unreachable

_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i:  ; preds = %bb.f, %bb.e, %AfterCoroSuspend174
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !39
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.loopexit77, label %bb.h

bb.h:                                             ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !111
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(56) %i.s)
          to label %.loopexit77 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #26
  unreachable

.loopexit77:                                      ; preds = %AfterCoroSuspend, %bb.a, %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !47   ; 3 uses
  %.not2.i.i41 = icmp eq ptr %i.z, null
  br i1 %.not2.i.i41, label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i43, label %bb.j

bb.j:                                             ; preds = %.loopexit77
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !109 ; 2 uses
  %.not.i.i42 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i42, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !110
  %i.ad = icmp eq i32 %i.ac, 3
  br i1 %i.ad, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ae = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #29
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.y, align 8, !tbaa !47
  br label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i43

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr nonnull %i.z)
          to label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i43 unwind label %bb.o, !inline_history !5

bb.o:                                             ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #26
  unreachable

_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i43: ; preds = %bb.n, %bb.m, %.loopexit77
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !39
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i43
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !111
  invoke void %i.aq(ptr noundef nonnull align 8 dereferenceable(56) %i.an)
          to label %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEED2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #26
  unreachable

_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEED2Ev.exit: ; preds = %bb.p, %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i43
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !47 ; 3 uses
  %.not2.i = icmp eq ptr %i.au, null
  br i1 %.not2.i, label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEED2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !109 ; 2 uses
  %.not.i44 = icmp eq ptr %i.aw, null
  br i1 %.not.i44, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !110
  %i.ay = icmp eq i32 %i.ax, 3
  br i1 %i.ay, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.az = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #29
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr null, ptr %i.at, align 8, !tbaa !47
  br label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  invoke void %i.bc(ptr nonnull %i.au)
          to label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i unwind label %bb.w, !inline_history !5

bb.w:                                             ; preds = %bb.v
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  tail call void @__clang_call_terminate(ptr %i.be) #26
  unreachable

_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i:    ; preds = %bb.v, %bb.u, %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeEmEED2Ev.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !39
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !111
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(56) %i.bi)
          to label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeEmEED2Ev.exit unwind label %bb.y
end_hunk_0
