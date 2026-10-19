Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/data_gen?download=true
inline.NumInlined: 93223
inline.NumDeleted: 25399
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_ZN7coro_io6detail12client_queueISt10unique_ptrINS_16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS4_EEE9clear_oldEm:bb.a
  br label %_ZNSt6vectorISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %.fca.0.insert = insertvalue { i8, i64 } poison, i8 %.lcssa, 0
  %.fca.1.insert = insertvalue { i8, i64 } %.fca.0.insert, i64 %.016.lcssa, 1
  ret { i8, i64 } %.fca.1.insert

bb.j:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @_ZNSt6vectorISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  resume { ptr, i32 } %i.g
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #28

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple4coro6detail15LazyPromiseBase12YieldAwaiter13await_suspendINS1_11LazyPromiseIvEEEEvNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.433", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !5729   ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN12async_simple11logicAssertEbPKc.exit, !prof !291

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.162)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #52
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.h, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.p, %bb.h ], [ %i.p, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #36
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.f, align 8
  %i.g = ptrtoint ptr %1 to i64
  store i64 %i.g, ptr %2, align 8, !tbaa !376
  store ptr @_ZNSt17_Function_handlerIFvvENSt7__n486116coroutine_handleIN12async_simple4coro6detail11LazyPromiseIvEEEEE9_M_invokeERKSt9_Any_data, ptr %i.e, align 8, !tbaa !846
  store ptr @_ZNSt17_Function_handlerIFvvENSt7__n486116coroutine_handleIN12async_simple4coro6detail11LazyPromiseIvEEEEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.d, align 8, !tbaa !623
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !263
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 8)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !623  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #49
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.e, %bb.f
  ret void

bb.h:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !623  ; 2 uses
  %.not.i2 = icmp eq ptr %i.q, null
  br i1 %.not.i2, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %common.resume unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #49
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA29_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(29) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !290  ; 5 uses
  %i.e = sub i64 9223372036854775807, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #52
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.a
  %i.g = add i64 %i.d, %i.b                       ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !286  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.k = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.l = load i64, ptr %i.i, align 8, !tbaa !279
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.m = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.g, %i.m
  br i1 %.not.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %i.b, 0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d ; 2 uses
  %cond.i.i = icmp eq i64 %i.b, 1
  br i1 %cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load i8, ptr %1, align 1, !tbaa !279
  store i8 %i.o, ptr %i.n, align 1, !tbaa !279
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.d, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.b)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.g, ptr %i.c, align 8, !tbaa !290
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !286
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 0, ptr %i.q, align 1, !tbaa !279
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 24 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !460    ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !263
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1538
  %i.i = or i32 %i.h, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.f, i32 noundef %i.i)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #36
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b, i64 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !5734)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5735)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1540, !noalias !5736 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %5 = load ptr, ptr %4, align 8, !tbaa !1541, !noalias !5736 ; 2 uses
  %6 = icmp ugt ptr %i.n, %5
  %.08.i9.i.i = select i1 %6, ptr %i.n, ptr %5    ; 2 uses
  %.not.i.i = icmp eq ptr %.08.i9.i.i, null
  br i1 %.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1542, !noalias !5736
  %i.r = ptrtoint ptr %.08.i9.i.i to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %i.t, ptr %i.u, align 8, !tbaa !290, !noalias !5736
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !286, !noalias !5736
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !279, !noalias !5736
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !289, !alias.scope !5736
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !286, !noalias !5736 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !290, !noalias !5736 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.z, ptr %3, align 8, !tbaa !286, !alias.scope !5736
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !279, !noalias !5736
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !279, !alias.scope !5736
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !290, !noalias !5736
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.d
  %i.ah = phi i64 [ %i.ad, %bb.d ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !290, !alias.scope !5736
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !286, !noalias !5736
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ai, i8 0, i64 9, i1 false), !noalias !5736
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.l, ptr noundef nonnull %i.aa, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %3, align 8, !tbaa !286, !alias.scope !5736 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.y
  br i1 %i.am, label %.body, label %.body.sink.split

_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ao = load ptr, ptr %3, align 8, !tbaa !286   ; 3 uses
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !290 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !290 ; 5 uses
  %i.as = sub i64 9223372036854775807, %i.ar
  %i.at = icmp ult i64 %i.as, %i.ap
  br i1 %i.at, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.f:                                             ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #52
          to label %.noexc10 unwind label %bb.n

.noexc10:                                         ; preds = %bb.f
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.au = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.av = load ptr, ptr %i.an, align 8, !tbaa !286 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i9: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ay = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.ay)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.az = load i64, ptr %i.aw, align 8, !tbaa !279
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i9
  %i.ba = phi i64 [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i9 ]
  %.not.i.i.i = icmp ugt i64 %i.au, %i.ba
  br i1 %.not.i.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not8.i.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ar ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.ap, 1
  br i1 %cond.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bc = load i8, ptr %i.ao, align 1, !tbaa !279
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !279
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.ao, i64 %i.ap, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 noundef %i.ar, i64 noundef 0, ptr noundef %i.ao, i64 noundef %i.ap)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.g, %bb.k
  store i64 %i.au, ptr %i.aq, align 8, !tbaa !290
  %i.bd = load ptr, ptr %i.an, align 8, !tbaa !286
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.au
  store i8 0, ptr %i.be, align 1, !tbaa !279
  %i.bf = load ptr, ptr %3, align 8, !tbaa !286   ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.y
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.bh = load i64, ptr %i.y, align 8, !tbaa !279
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.bj = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bj, ptr %2, align 8, !tbaa !263
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bl = getelementptr i8, ptr %i.bj, i64 -24
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds i8, ptr %2, i64 %i.bm
  store ptr %i.bk, ptr %i.bn, align 8, !tbaa !263
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bo, ptr %i.a, align 8, !tbaa !263
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.l, align 8, !tbaa !263
  %i.bp = load ptr, ptr %i.x, align 8, !tbaa !286 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.aa
  br i1 %i.bq, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.br = load i64, ptr %i.aa, align 8, !tbaa !279
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #50
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.l, align 8, !tbaa !263
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bt) #36
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !263
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bw = getelementptr i8, ptr %i.bu, i64 -24
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds i8, ptr %2, i64 %i.bx
  store ptr %i.bv, ptr %i.by, align 8, !tbaa !263
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bz, align 8, !tbaa !1544
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ca) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret ptr %0

bb.m:                                             ; preds = %bb.c, %bb.b
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.f
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %3, align 8, !tbaa !286   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.y
  br i1 %i.ce, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.n, %bb.e
  %.sink = phi ptr [ %i.al, %bb.e ], [ %i.cd, %bb.n ]
  %.pn.ph = phi { ptr, i32 } [ %i.ak, %bb.e ], [ %i.cc, %bb.n ]
  %i.cf = load i64, ptr %i.y, align 8, !tbaa !279
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cg) #50
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.n, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.e ], [ %i.cc, %bb.n ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.o

bb.o:                                             ; preds = %.body, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.cb, %bb.m ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(113) ptr @_ZN7coro_io17g_io_context_poolINS_15io_context_poolEEERT_j(i32 noundef %0) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %1 = alloca %class.anon.1392, align 1           ; 4 uses
  %2 = alloca %"class.std::shared_ptr.1389", align 16 ; 4 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !280
  %i.b = load atomic i8, ptr @_ZGVZN7coro_io17g_io_context_poolINS_15io_context_poolEEERT_jE18_g_io_context_pool acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e, !prof !281

end_hunk_0
begin_hunk_1_@_ZNSt4pairISt10error_codeN4asio2ip23basic_resolver_iteratorINS2_3tcpEEEED2Ev:bb.a
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEED2Ev.exit, !prof !291

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36
  br label %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEED2Ev.exit

_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !308  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrISt6vectorIN4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !310
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !311
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !263
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36, !inline_history !7427
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !263
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36, !inline_history !7427
  br label %_ZNSt12__shared_ptrISt6vectorIN4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !280
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrISt6vectorIN4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !291

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36
  br label %_ZNSt12__shared_ptrISt6vectorIN4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt6vectorIN4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7coro_io16socket_wrapper_t5visitIZN8coro_rpc15coro_rpc_client12connect_implINS_11ib_socket_tEEEN12async_simple4coro4LazyINS2_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorIN4asio2ip14basic_endpointINSK_3tcpEEESaISN_EEEUlSC_E_EEDaOSB_(ptr dead_on_unwind noalias writable sret(%"class.async_simple::coro::Lazy.816") align 8 %0, ptr noundef nonnull align 8 dereferenceable(65) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1186 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7448)
  %i.c = load ptr, ptr %2, align 8, !tbaa !2274, !noalias !7448
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7449)
  %i.d = tail call noalias noundef dereferenceable_or_null(120) ptr @_ZnamRKSt9nothrow_t(i64 noundef 120, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #53, !noalias !7450, !inline_history !131 ; 10 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i.i

.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store ptr @_ZZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEmENUlPvmE_8__invokeES4_m, ptr %i.f, align 1, !noalias !7450
  store ptr @_ZN7coro_io11ib_socket_t7connectISt6vectorIN4asio2ip14basic_endpointINS4_3tcpEEESaIS7_EEEEN12async_simple4coro4LazyISt10error_codeEERKT_.resume, ptr %i.d, align 8, !noalias !7450
  %destroy.addr.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_ZN7coro_io11ib_socket_t7connectISt6vectorIN4asio2ip14basic_endpointINS4_3tcpEEESaIS7_EEEEN12async_simple4coro4LazyISt10error_codeEERKT_.destroy, ptr %destroy.addr.i.i.i, align 8, !noalias !7450
  %.reload.addr132.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.spill.addr124.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store ptr %i.c, ptr %.spill.addr124.i.i.i, align 8, !noalias !7450
  %.spill.addr.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr %i.b, ptr %.spill.addr.i.i.i, align 8, !noalias !7450
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.reload.addr132.i.i.i, i8 0, i64 24, i1 false), !noalias !7450
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i8 0, ptr %i.g, align 8, !tbaa !1096, !noalias !7450
  store ptr %i.d, ptr %0, align 8, !tbaa !376, !alias.scope !7451
  %index.addr133.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store i8 0, ptr %index.addr133.i.i.i, align 8, !noalias !7450
  br label %_ZZN8coro_rpc15coro_rpc_client12connect_implIN7coro_io11ib_socket_tEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorIN4asio2ip14basic_endpointINSI_3tcpEEESaISL_EEENKUlSA_E_clIS3_EEDaSA_.exit

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !376, !alias.scope !7452
  br label %_ZZN8coro_rpc15coro_rpc_client12connect_implIN7coro_io11ib_socket_tEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorIN4asio2ip14basic_endpointINSI_3tcpEEESaISL_EEENKUlSA_E_clIS3_EEDaSA_.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1189 ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.i, null
  br i1 %.not.i.i.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7453)
  %i.j = load ptr, ptr %2, align 8, !tbaa !2274, !noalias !7453
  %i.k = tail call noalias noundef dereferenceable_or_null(128) ptr @_ZnamRKSt9nothrow_t(i64 noundef 128, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #53, !noalias !7453, !inline_history !132 ; 10 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i

.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i: ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  store ptr @_ZZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEmENUlPvmE_8__invokeES4_m, ptr %i.m, align 1, !noalias !7453
  store ptr @_ZN7coro_io13async_connectISt6vectorIN4asio2ip14basic_endpointINS3_3tcpEEESaIS6_EEEEN12async_simple4coro4LazyISt10error_codeEERNS2_3ssl6streamIRNS2_19basic_stream_socketIS5_NS2_15any_io_executorEEEEERKT_.resume, ptr %i.k, align 8, !noalias !7453
  %destroy.addr.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_ZN7coro_io13async_connectISt6vectorIN4asio2ip14basic_endpointINS3_3tcpEEESaIS6_EEEEN12async_simple4coro4LazyISt10error_codeEERNS2_3ssl6streamIRNS2_19basic_stream_socketIS5_NS2_15any_io_executorEEEEERKT_.destroy, ptr %destroy.addr.i.i, align 8, !noalias !7453
  %.reload.addr124.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.spill.addr115.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  store ptr %i.j, ptr %.spill.addr115.i.i, align 8, !noalias !7453
  %.spill.addr.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  store ptr %i.i, ptr %.spill.addr.i.i, align 8, !noalias !7453
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.reload.addr124.i.i, i8 0, i64 24, i1 false), !noalias !7453
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i8 0, ptr %i.n, align 8, !tbaa !1096, !noalias !7453
  store ptr %i.k, ptr %0, align 8, !tbaa !376, !alias.scope !7454
  %index.addr125.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  store i8 0, ptr %index.addr125.i.i, align 8, !noalias !7453
  br label %_ZZN8coro_rpc15coro_rpc_client12connect_implIN7coro_io11ib_socket_tEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorIN4asio2ip14basic_endpointINSI_3tcpEEESaISL_EEENKUlSA_E_clIS3_EEDaSA_.exit

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %0, align 8, !tbaa !376, !alias.scope !7455
  br label %_ZZN8coro_rpc15coro_rpc_client12connect_implIN7coro_io11ib_socket_tEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorIN4asio2ip14basic_endpointINSI_3tcpEEESaISL_EEENKUlSA_E_clIS3_EEDaSA_.exit

bb.g:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %1, align 8, !tbaa !1190
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7456)
  %i.p = load ptr, ptr %2, align 8, !tbaa !2274, !noalias !7456
  %i.q = tail call noalias noundef dereferenceable_or_null(504) ptr @_ZnamRKSt9nothrow_t(i64 noundef 504, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #53, !noalias !7456, !inline_history !133 ; 10 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i7

.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i7: ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 496
  store ptr @_ZZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEmENUlPvmE_8__invokeES4_m, ptr %i.s, align 1, !noalias !7456
  store ptr @_ZN7coro_io13async_connectISt6vectorIN4asio2ip14basic_endpointINS3_3tcpEEESaIS6_EEEEN12async_simple4coro4LazyISt10error_codeEERNS2_19basic_stream_socketIS5_NS2_15any_io_executorEEERKT_.resume, ptr %i.q, align 8, !noalias !7456
  %destroy.addr.i.i5 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_ZN7coro_io13async_connectISt6vectorIN4asio2ip14basic_endpointINS3_3tcpEEESaIS6_EEEEN12async_simple4coro4LazyISt10error_codeEERNS2_19basic_stream_socketIS5_NS2_15any_io_executorEEERKT_.destroy, ptr %destroy.addr.i.i5, align 8, !noalias !7456
  %.reload.addr248.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.spill.addr233.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 440
  store ptr %i.p, ptr %.spill.addr233.i.i, align 8, !noalias !7456
  %.spill.addr.i.i6 = getelementptr inbounds nuw i8, ptr %i.q, i64 432
  store ptr %i.o, ptr %.spill.addr.i.i6, align 8, !noalias !7456
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.reload.addr248.i.i, i8 0, i64 24, i1 false), !noalias !7456
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store i8 0, ptr %i.t, align 8, !tbaa !1096, !noalias !7456
  store ptr %i.q, ptr %0, align 8, !tbaa !376, !alias.scope !7457
  %index.addr249.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 492
  store i8 0, ptr %index.addr249.i.i, align 4, !noalias !7456
  br label %_ZZN8coro_rpc15coro_rpc_client12connect_implIN7coro_io11ib_socket_tEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorIN4asio2ip14basic_endpointINSI_3tcpEEESaISL_EEENKUlSA_E_clIS3_EEDaSA_.exit

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %0, align 8, !tbaa !376, !alias.scope !7458
  br label %_ZZN8coro_rpc15coro_rpc_client12connect_implIN7coro_io11ib_socket_tEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorIN4asio2ip14basic_endpointINSI_3tcpEEESaISL_EEENKUlSA_E_clIS3_EEDaSA_.exit

_ZZN8coro_rpc15coro_rpc_client12connect_implIN7coro_io11ib_socket_tEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorIN4asio2ip14basic_endpointINSI_3tcpEEESaISL_EEENKUlSA_E_clIS3_EEDaSA_.exit: ; preds = %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i7, %bb.h, %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i, %bb.f, %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIN7coro_io8endpointEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(36) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 24 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7coro_iolsERSoRKNS_8endpointE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(36) %1)
          to label %bb.b unwind label %bb.l       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !7463)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7464)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1540, !noalias !7465 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i: ; preds = %bb.b
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %5 = load ptr, ptr %4, align 8, !tbaa !1541, !noalias !7465 ; 2 uses
  %6 = icmp ugt ptr %i.e, %5
  %.08.i9.i.i = select i1 %6, ptr %i.e, ptr %5    ; 2 uses
  %.not.i.i = icmp eq ptr %.08.i9.i.i, null
  br i1 %.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1542, !noalias !7465
  %i.i = ptrtoint ptr %.08.i9.i.i to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %i.k, ptr %i.l, align 8, !tbaa !290, !noalias !7465
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !286, !noalias !7465
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !279, !noalias !7465
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !289, !alias.scope !7465
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !286, !noalias !7465 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.u = load i64, ptr %i.t, align 8, !tbaa !290, !noalias !7465 ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.q, ptr %3, align 8, !tbaa !286, !alias.scope !7465
  %i.x = load i64, ptr %i.r, align 8, !tbaa !279, !noalias !7465
  store i64 %i.x, ptr %i.p, align 8, !tbaa !279, !alias.scope !7465
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !290, !noalias !7465
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.c
  %i.y = phi i64 [ %i.u, %bb.c ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !290, !alias.scope !7465
  store ptr %i.r, ptr %i.o, align 8, !tbaa !286, !noalias !7465
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.z, i8 0, i64 9, i1 false), !noalias !7465
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull %i.r, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %3, align 8, !tbaa !286, !alias.scope !7465 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.p
  br i1 %i.ad, label %.body, label %.body.sink.split

_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.af = load ptr, ptr %3, align 8, !tbaa !286   ; 3 uses
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !290 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !290 ; 5 uses
  %i.aj = sub i64 9223372036854775807, %i.ai
  %i.ak = icmp ult i64 %i.aj, %i.ag
  br i1 %i.ak, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.e:                                             ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #52
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = add i64 %i.ai, %i.ag                    ; 3 uses
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !286 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i8: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ap = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.ap)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i7: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.aq = load i64, ptr %i.an, align 8, !tbaa !279
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i8
  %i.ar = phi i64 [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i7 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i8 ]
  %.not.i.i.i = icmp ugt i64 %i.al, %i.ar
  br i1 %.not.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not8.i.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ai ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.ag, 1
  br i1 %cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.at = load i8, ptr %i.af, align 1, !tbaa !279
  store i8 %i.at, ptr %i.as, align 1, !tbaa !279
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.af, i64 %i.ag, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef %i.ai, i64 noundef 0, ptr noundef %i.af, i64 noundef %i.ag)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.j
  store i64 %i.al, ptr %i.ah, align 8, !tbaa !290
  %i.au = load ptr, ptr %i.ae, align 8, !tbaa !286
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.al
  store i8 0, ptr %i.av, align 1, !tbaa !279
  %i.aw = load ptr, ptr %3, align 8, !tbaa !286   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.p
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ay = load i64, ptr %i.p, align 8, !tbaa !279
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.ba = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ba, ptr %2, align 8, !tbaa !263
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bc = getelementptr i8, ptr %i.ba, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds i8, ptr %2, i64 %i.bd
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !263
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bf, ptr %i.a, align 8, !tbaa !263
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.c, align 8, !tbaa !263
  %i.bg = load ptr, ptr %i.o, align 8, !tbaa !286 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.r
  br i1 %i.bh, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bi = load i64, ptr %i.r, align 8, !tbaa !279
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #50
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.c, align 8, !tbaa !263
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bk) #36
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bl, ptr %2, align 8, !tbaa !263
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bn = getelementptr i8, ptr %i.bl, i64 -24
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds i8, ptr %2, i64 %i.bo
  store ptr %i.bm, ptr %i.bp, align 8, !tbaa !263
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bq, align 8, !tbaa !1544
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.br) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret ptr %0

bb.l:                                             ; preds = %bb.a
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.e
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %3, align 8, !tbaa !286   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.p
  br i1 %i.bv, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.m, %bb.d
  %.sink = phi ptr [ %i.ac, %bb.d ], [ %i.bu, %bb.m ]
  %.pn.ph = phi { ptr, i32 } [ %i.ab, %bb.d ], [ %i.bt, %bb.m ]
  %i.bw = load i64, ptr %i.p, align 8, !tbaa !279
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bx) #50
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.m, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.d ], [ %i.bt, %bb.m ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.n

bb.n:                                             ; preds = %.body, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bs, %bb.l ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7coro_io16socket_wrapper_t15remote_endpointEv(ptr dead_on_unwind noalias writable sret(%"struct.coro_io::endpoint") align 4 %0, ptr noundef nonnull align 8 dereferenceable(65) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.asio::ip::basic_endpoint", align 4 ; 7 uses
  %3 = alloca %"class.asio::ip::basic_endpoint", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1186 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_ZN11struct_pack14deserialize_toILm0EN7coro_io11ib_socket_t14ib_socket_infoEJETkNS_6detail16deserialize_viewESt4spanIcLm32EEEENS_8err_codeERT0_RKT2_DpRT1_:bb.a

bb.f:                                             ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.i.i
  %i.k = ptrtoint ptr %.sroa.0.0 to i64
  %i.l = sub i64 %i.c, %i.k
  %i.m = icmp ult i64 %i.l, 11
  br i1 %i.m, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE11deserializeIN7coro_io11ib_socket_t14ib_socket_infoEJEEENS_8err_codeERT_DpRT0_.exit, label %bb.g, !prof !291

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 11
  %i.o = load i64, ptr %.sroa.0.0, align 1
  %i.p = xor i64 %i.o, -8862518880895598083
  %i.q = getelementptr i8, ptr %.sroa.0.0, i64 3
  %i.r = load i64, ptr %i.q, align 1
  %i.s = xor i64 %i.r, 71922925372049553
  %i.t = or i64 %i.p, %i.s
  %i.u = icmp ne i64 %i.t, 0
  %i.v = zext i1 %i.u to i32
  %.not4.i.i = icmp eq i32 %i.v, 0
  br i1 %.not4.i.i, label %bb.h, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE11deserializeIN7coro_io11ib_socket_t14ib_socket_infoEJEEENS_8err_codeERT_DpRT0_.exit, !prof !687

bb.h:                                             ; preds = %bb.g, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.i.i
  %i.w = phi ptr [ %i.n, %bb.g ], [ %.sroa.0.0, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.i.i ] ; 3 uses
  %i.x = and i8 %.0.copyload.i, 24
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %.thread.i, label %bb.i

.thread.i:                                        ; preds = %bb.b, %bb.h
  %i.z = phi ptr [ %i.w, %bb.h ], [ %i.d, %bb.b ] ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.c, %i.aa
  %i.ac = icmp ugt i64 %i.ab, 27
  br i1 %i.ac, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0EN7coro_io11ib_socket_t14ib_socket_infoEEENS_8err_codeERT3_.exit.sink.split.i, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE11deserializeIN7coro_io11ib_socket_t14ib_socket_infoEJEEENS_8err_codeERT_DpRT0_.exit, !prof !687

bb.i:                                             ; preds = %bb.h
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = sub i64 %i.c, %i.ad
  %i.af = icmp ugt i64 %i.ae, 27
  br i1 %i.af, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0EN7coro_io11ib_socket_t14ib_socket_infoEEENS_8err_codeERT3_.exit.sink.split.i, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE11deserializeIN7coro_io11ib_socket_t14ib_socket_infoEJEEENS_8err_codeERT_DpRT0_.exit, !prof !687

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0EN7coro_io11ib_socket_t14ib_socket_infoEEENS_8err_codeERT3_.exit.sink.split.i: ; preds = %bb.i, %.thread.i
  %.sink.i = phi ptr [ %i.z, %.thread.i ], [ %i.w, %bb.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 1 dereferenceable(28) %.sink.i, i64 28, i1 false)
  br label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE11deserializeIN7coro_io11ib_socket_t14ib_socket_infoEJEEENS_8err_codeERT_DpRT0_.exit

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE11deserializeIN7coro_io11ib_socket_t14ib_socket_infoEJEEENS_8err_codeERT_DpRT0_.exit: ; preds = %bb.a, %bb.f, %bb.g, %.thread.i, %bb.i, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0EN7coro_io11ib_socket_t14ib_socket_infoEEENS_8err_codeERT3_.exit.sink.split.i
  %.sroa.011.0.i = phi i32 [ 2, %bb.a ], [ 3, %bb.g ], [ 1, %.thread.i ], [ 0, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0EN7coro_io11ib_socket_t14ib_socket_infoEEENS_8err_codeERT3_.exit.sink.split.i ], [ 1, %bb.i ], [ 1, %bb.f ]
  ret i32 %.sroa.011.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA51_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(51) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !290  ; 5 uses
  %i.e = sub i64 9223372036854775807, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #52
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.a
  %i.g = add i64 %i.d, %i.b                       ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !286  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.k = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.l = load i64, ptr %i.i, align 8, !tbaa !279
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.m = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.g, %i.m
  br i1 %.not.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %i.b, 0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d ; 2 uses
  %cond.i.i = icmp eq i64 %i.b, 1
  br i1 %cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load i8, ptr %1, align 1, !tbaa !279
  store i8 %i.o, ptr %i.n, align 1, !tbaa !279
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.d, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.b)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.g, ptr %i.c, align 8, !tbaa !290
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !286
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 0, ptr %i.q, align 1, !tbaa !279
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA63_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(63) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !290  ; 5 uses
  %i.e = sub i64 9223372036854775807, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #52
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.a
  %i.g = add i64 %i.d, %i.b                       ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !286  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.k = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.l = load i64, ptr %i.i, align 8, !tbaa !279
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.m = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.g, %i.m
  br i1 %.not.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %i.b, 0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d ; 2 uses
  %cond.i.i = icmp eq i64 %i.b, 1
  br i1 %cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load i8, ptr %1, align 1, !tbaa !279
  store i8 %i.o, ptr %i.n, align 1, !tbaa !279
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.d, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.b)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.g, ptr %i.c, align 8, !tbaa !290
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !286
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 0, ptr %i.q, align 1, !tbaa !279
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIN4asio2ip7addressEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(28) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 24 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4asio2iplsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_7addressE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(28) %1)
          to label %bb.b unwind label %bb.l       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !7893)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7894)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1540, !noalias !7895 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i: ; preds = %bb.b
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %5 = load ptr, ptr %4, align 8, !tbaa !1541, !noalias !7895 ; 2 uses
  %6 = icmp ugt ptr %i.e, %5
  %.08.i9.i.i = select i1 %6, ptr %i.e, ptr %5    ; 2 uses
  %.not.i.i = icmp eq ptr %.08.i9.i.i, null
  br i1 %.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1542, !noalias !7895
  %i.i = ptrtoint ptr %.08.i9.i.i to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %i.k, ptr %i.l, align 8, !tbaa !290, !noalias !7895
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !286, !noalias !7895
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !279, !noalias !7895
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !289, !alias.scope !7895
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !286, !noalias !7895 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.u = load i64, ptr %i.t, align 8, !tbaa !290, !noalias !7895 ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.q, ptr %3, align 8, !tbaa !286, !alias.scope !7895
  %i.x = load i64, ptr %i.r, align 8, !tbaa !279, !noalias !7895
  store i64 %i.x, ptr %i.p, align 8, !tbaa !279, !alias.scope !7895
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !290, !noalias !7895
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.c
  %i.y = phi i64 [ %i.u, %bb.c ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !290, !alias.scope !7895
  store ptr %i.r, ptr %i.o, align 8, !tbaa !286, !noalias !7895
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.z, i8 0, i64 9, i1 false), !noalias !7895
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull %i.r, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %3, align 8, !tbaa !286, !alias.scope !7895 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.p
  br i1 %i.ad, label %.body, label %.body.sink.split

_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.af = load ptr, ptr %3, align 8, !tbaa !286   ; 3 uses
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !290 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !290 ; 5 uses
  %i.aj = sub i64 9223372036854775807, %i.ai
  %i.ak = icmp ult i64 %i.aj, %i.ag
  br i1 %i.ak, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.e:                                             ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #52
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = add i64 %i.ai, %i.ag                    ; 3 uses
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !286 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i8: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ap = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.ap)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i7: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.aq = load i64, ptr %i.an, align 8, !tbaa !279
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i8
  %i.ar = phi i64 [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i7 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i8 ]
  %.not.i.i.i = icmp ugt i64 %i.al, %i.ar
  br i1 %.not.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not8.i.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ai ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.ag, 1
  br i1 %cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.at = load i8, ptr %i.af, align 1, !tbaa !279
  store i8 %i.at, ptr %i.as, align 1, !tbaa !279
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.af, i64 %i.ag, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef %i.ai, i64 noundef 0, ptr noundef %i.af, i64 noundef %i.ag)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.j
  store i64 %i.al, ptr %i.ah, align 8, !tbaa !290
  %i.au = load ptr, ptr %i.ae, align 8, !tbaa !286
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.al
  store i8 0, ptr %i.av, align 1, !tbaa !279
  %i.aw = load ptr, ptr %3, align 8, !tbaa !286   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.p
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ay = load i64, ptr %i.p, align 8, !tbaa !279
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.ba = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ba, ptr %2, align 8, !tbaa !263
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bc = getelementptr i8, ptr %i.ba, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds i8, ptr %2, i64 %i.bd
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !263
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bf, ptr %i.a, align 8, !tbaa !263
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.c, align 8, !tbaa !263
  %i.bg = load ptr, ptr %i.o, align 8, !tbaa !286 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.r
  br i1 %i.bh, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bi = load i64, ptr %i.r, align 8, !tbaa !279
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #50
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.c, align 8, !tbaa !263
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bk) #36
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bl, ptr %2, align 8, !tbaa !263
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bn = getelementptr i8, ptr %i.bl, i64 -24
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds i8, ptr %2, i64 %i.bo
  store ptr %i.bm, ptr %i.bp, align 8, !tbaa !263
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bq, align 8, !tbaa !1544
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.br) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret ptr %0

bb.l:                                             ; preds = %bb.a
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.e
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %3, align 8, !tbaa !286   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.p
  br i1 %i.bv, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.m, %bb.d
  %.sink = phi ptr [ %i.ac, %bb.d ], [ %i.bu, %bb.m ]
  %.pn.ph = phi { ptr, i32 } [ %i.ab, %bb.d ], [ %i.bt, %bb.m ]
  %i.bw = load i64, ptr %i.p, align 8, !tbaa !279
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bx) #50
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.m, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.d ], [ %i.bt, %bb.m ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.n

bb.n:                                             ; preds = %.body, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bs, %bb.l ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7coro_io11ib_socket_t16modify_qp_to_rtrEjtPh(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, i16 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.ibv_qp_attr, align 8        ; 17 uses
  %5 = alloca %"class.easylog::record_t", align 8 ; 7 uses
  %6 = alloca %"struct.refvalue::meta_string.1048", align 1 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i64 144, i1 false)
  store i32 2, ptr %4, align 8, !tbaa !2494
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE0_clEv:bb.a
bb.a:
  %1 = alloca %"class.async_simple::FutureState<coro_rpc::err_code>::ContinuationReference", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.a = load ptr, ptr %0, align 8, !tbaa !2898   ; 9 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !2898
  store ptr null, ptr %0, align 8, !tbaa !2898
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !261
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #36 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %i.d, align 8, !tbaa !263
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt17bad_function_call, ptr nonnull @_ZNSt17bad_function_callD1Ev) #52
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2900
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_ZNK12async_simple4util18move_only_functionIFvONS_3TryIN8coro_rpc8err_codeEEEEEclES6_.exit unwind label %bb.j, !inline_history !2901

_ZNK12async_simple4util18move_only_functionIFvONS_3TryIN8coro_rpc8err_codeEEEEEclES6_.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.j = atomicrmw sub ptr %i.i, i8 1 monotonic, align 1
  %i.k = icmp eq i8 %i.j, 1
  br i1 %i.k, label %bb.d, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i

bb.d:                                             ; preds = %_ZNK12async_simple4util18move_only_functionIFvONS_3TryIN8coro_rpc8err_codeEEEEEclES6_.exit
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !261  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #49
  unreachable

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i: ; preds = %bb.e, %bb.d, %_ZNK12async_simple4util18move_only_functionIFvONS_3TryIN8coro_rpc8err_codeEEEEEclES6_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.p = atomicrmw sub ptr %i.o, i8 1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %i.p, 1
  br i1 %.not.i.i.i, label %bb.g, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit

bb.g:                                             ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !398   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.r, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i, label %bb.h, !prof !291

bb.h:                                             ; preds = %bb.g
  %i.s = icmp ne i8 %i.r, 2
  %i.t = load ptr, ptr %i.f, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.s, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #36
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(81) %i.a, i64 noundef 88) #50
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit: ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i, %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  ret void

bb.j:                                             ; preds = %bb.c, %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  resume { ptr, i32 } %i.u
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !376    ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !2898 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE0_D2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.e = atomicrmw sub ptr %i.d, i8 1 monotonic, align 1
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %bb.d, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !261  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #49
  unreachable

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !2898 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = atomicrmw sub ptr %i.m, i8 1 acq_rel, align 1
  %.not.i.i.i.i = icmp eq i8 %i.n, 1
  br i1 %.not.i.i.i.i, label %bb.g, label %_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE0_D2Ev.exit

bb.g:                                             ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load i8, ptr %i.p, align 8, !tbaa !398   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i.i, label %bb.h, !prof !291

bb.h:                                             ; preds = %bb.g
  %i.r = icmp ne i8 %i.q, 2
  %i.s = load ptr, ptr %i.o, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.r, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #36
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i.i

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(81) %i.l, i64 noundef 88) #50
  br label %_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE0_D2Ev.exit

_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE0_D2Ev.exit: ; preds = %bb.b, %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i.i, %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #50
  br label %bb.j

bb.j:                                             ; preds = %_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE0_D2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN8coro_rpc20coro_rpc_server_baseINS3_8config_tEE11async_startEvEUlvE2_EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #50
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN8coro_rpc20coro_rpc_server_baseINS3_8config_tEE11async_startEvEUlvE2_EEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8758
  tail call void @_ZN7coro_io15io_context_pool3runEv(ptr noundef nonnull align 8 dereferenceable(113) %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIN8coro_rpc8err_codeEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 24 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load i16, ptr %1, align 2, !tbaa !620
  %i.c = icmp ne i16 %i.b, 0
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext %i.c)
          to label %_ZNSolsEb.exit unwind label %bb.k ; 0 uses

_ZNSolsEb.exit:                                   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !8763)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8764)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1540, !noalias !8765 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i: ; preds = %_ZNSolsEb.exit
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %5 = load ptr, ptr %4, align 8, !tbaa !1541, !noalias !8765 ; 2 uses
  %6 = icmp ugt ptr %i.g, %5
  %.08.i9.i.i = select i1 %6, ptr %i.g, ptr %5    ; 2 uses
  %.not.i.i = icmp eq ptr %.08.i9.i.i, null
  br i1 %.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1542, !noalias !8765
  %i.k = ptrtoint ptr %.08.i9.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %i.m, ptr %i.n, align 8, !tbaa !290, !noalias !8765
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !286, !noalias !8765
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !279, !noalias !8765
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i, %_ZNSolsEb.exit
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.r, ptr %3, align 8, !tbaa !289, !alias.scope !8765
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !286, !noalias !8765 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.w = load i64, ptr %i.v, align 8, !tbaa !290, !noalias !8765 ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.s, ptr %3, align 8, !tbaa !286, !alias.scope !8765
  %i.z = load i64, ptr %i.t, align 8, !tbaa !279, !noalias !8765
  store i64 %i.z, ptr %i.r, align 8, !tbaa !279, !alias.scope !8765
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !290, !noalias !8765
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.b
  %i.aa = phi i64 [ %i.w, %bb.b ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !290, !alias.scope !8765
  store ptr %i.t, ptr %i.q, align 8, !tbaa !286, !noalias !8765
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ab, i8 0, i64 9, i1 false), !noalias !8765
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.e, ptr noundef nonnull %i.t, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %3, align 8, !tbaa !286, !alias.scope !8765 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.r
  br i1 %i.af, label %.body, label %.body.sink.split

_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ah = load ptr, ptr %3, align 8, !tbaa !286   ; 3 uses
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !290 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !290 ; 5 uses
  %i.al = sub i64 9223372036854775807, %i.ak
  %i.am = icmp ult i64 %i.al, %i.ai
  br i1 %i.am, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.d:                                             ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #52
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.an = add i64 %i.ak, %i.ai                    ; 3 uses
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !286 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i8: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ar = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.ar)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i7: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.as = load i64, ptr %i.ap, align 8, !tbaa !279
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i8
  %i.at = phi i64 [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i7 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i8 ]
  %.not.i.i.i = icmp ugt i64 %i.an, %i.at
  br i1 %.not.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not8.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ak ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.ai, 1
  br i1 %cond.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = load i8, ptr %i.ah, align 1, !tbaa !279
  store i8 %i.av, ptr %i.au, align 1, !tbaa !279
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ah, i64 %i.ai, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 noundef %i.ak, i64 noundef 0, ptr noundef %i.ah, i64 noundef %i.ai)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.i
  store i64 %i.an, ptr %i.aj, align 8, !tbaa !290
  %i.aw = load ptr, ptr %i.ag, align 8, !tbaa !286
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.an
  store i8 0, ptr %i.ax, align 1, !tbaa !279
  %i.ay = load ptr, ptr %3, align 8, !tbaa !286   ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.r
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ba = load i64, ptr %i.r, align 8, !tbaa !279
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.bc = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bc, ptr %2, align 8, !tbaa !263
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.be = getelementptr i8, ptr %i.bc, i64 -24
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr %2, i64 %i.bf
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !263
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !263
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.e, align 8, !tbaa !263
  %i.bi = load ptr, ptr %i.q, align 8, !tbaa !286 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.t
  br i1 %i.bj, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bk = load i64, ptr %i.t, align 8, !tbaa !279
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #50
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.e, align 8, !tbaa !263
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bm) #36
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bn, ptr %2, align 8, !tbaa !263
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bp = getelementptr i8, ptr %i.bn, i64 -24
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = getelementptr inbounds i8, ptr %2, i64 %i.bq
  store ptr %i.bo, ptr %i.br, align 8, !tbaa !263
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bs, align 8, !tbaa !1544
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bt) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret ptr %0

bb.k:                                             ; preds = %bb.a
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.i, %bb.d
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %3, align 8, !tbaa !286   ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.r
  br i1 %i.bx, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.l, %bb.c
  %.sink = phi ptr [ %i.ae, %bb.c ], [ %i.bw, %bb.l ]
  %.pn.ph = phi { ptr, i32 } [ %i.ad, %bb.c ], [ %i.bv, %bb.l ]
  %i.by = load i64, ptr %i.r, align 8, !tbaa !279
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bz) #50
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.l, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.c ], [ %i.bv, %bb.l ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.m

bb.m:                                             ; preds = %.body, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bu, %bb.k ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN12async_simple4coro4LazyIN8coro_rpc8err_codeEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2904   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2905 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN12async_simple4coro4LazyIN8coro_rpc8err_codeEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN12async_simple4coro4LazyIN8coro_rpc8err_codeEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN12async_simple4coro4LazyIN8coro_rpc8err_codeEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
end_hunk_3
