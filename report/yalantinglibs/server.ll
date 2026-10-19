Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/server?download=true
inline.NumInlined: 54344
inline.NumDeleted: 20585
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZN7easylog8record_tlsIlEERS0_RKT_:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 noundef %i.bc, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.ba)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.p, %bb.r, %bb.s, %bb.t
  store i64 %i.bf, ptr %i.bb, align 8, !tbaa !288
  %i.bo = load ptr, ptr %i.ax, align 8, !tbaa !287
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bf
  store i8 0, ptr %i.bp, align 1, !tbaa !279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  ret ptr %0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #31

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple4coro6detail15LazyPromiseBase12YieldAwaiter13await_suspendINS1_11LazyPromiseIvEEEEvNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.350", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !5159   ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN12async_simple11logicAssertEbPKc.exit, !prof !284

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.1005)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #54
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.h, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.p, %bb.h ], [ %i.p, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #43
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.f, align 8
  %i.g = ptrtoint ptr %1 to i64
  store i64 %i.g, ptr %2, align 8, !tbaa !306
  store ptr @_ZNSt17_Function_handlerIFvvENSt7__n486116coroutine_handleIN12async_simple4coro6detail11LazyPromiseIvEEEEE9_M_invokeERKSt9_Any_data, ptr %i.e, align 8, !tbaa !705
  store ptr @_ZNSt17_Function_handlerIFvvENSt7__n486116coroutine_handleIN12async_simple4coro6detail11LazyPromiseIvEEEEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.d, align 8, !tbaa !314
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !263
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 8)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !314  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #52
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.e, %bb.f
  ret void

bb.h:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !314  ; 2 uses
  %.not.i2 = icmp eq ptr %i.q, null
  br i1 %.not.i2, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %common.resume unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #52
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA29_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(29) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #43 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !288  ; 5 uses
  %i.e = sub i64 9223372036854775807, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.910) #54
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.a
  %i.g = add i64 %i.d, %i.b                       ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !287  ; 2 uses
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
  store i64 %i.g, ptr %i.c, align 8, !tbaa !288
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !287
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 0, ptr %i.q, align 1, !tbaa !279
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 24 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !515    ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !263
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1368
  %i.i = or i32 %i.h, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.f, i32 noundef %i.i)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #43
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b, i64 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !5164)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5165)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1370, !noalias !5166 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  %5 = load ptr, ptr %i.o, align 8, !tbaa !1371, !noalias !5166 ; 2 uses
  %6 = icmp ugt ptr %i.n, %5
  %.08.i.i.i = select i1 %6, ptr %i.n, ptr %5
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1372, !noalias !5166
  %i.r = ptrtoint ptr %.08.i.i.i to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %i.t, ptr %i.u, align 8, !tbaa !288, !noalias !5166
  %i.v = load ptr, ptr %4, align 8, !tbaa !287, !noalias !5166
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !279, !noalias !5166
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !283, !alias.scope !5166
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !287, !noalias !5166 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !288, !noalias !5166 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.z, ptr %3, align 8, !tbaa !287, !alias.scope !5166
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !279, !noalias !5166
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !279, !alias.scope !5166
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !288, !noalias !5166
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.d
  %i.ah = phi i64 [ %i.ad, %bb.d ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !288, !alias.scope !5166
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !287, !noalias !5166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ai, i8 0, i64 9, i1 false), !noalias !5166
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.l, ptr noundef nonnull %i.aa, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %3, align 8, !tbaa !287, !alias.scope !5166 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.y
  br i1 %i.am, label %.body, label %.body.sink.split

_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ao = load ptr, ptr %3, align 8, !tbaa !287   ; 3 uses
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !288 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !288 ; 5 uses
  %i.as = sub i64 9223372036854775807, %i.ar
  %i.at = icmp ult i64 %i.as, %i.ap
  br i1 %i.at, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.f:                                             ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.910) #54
          to label %.noexc10 unwind label %bb.n

.noexc10:                                         ; preds = %bb.f
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.au = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.av = load ptr, ptr %i.an, align 8, !tbaa !287 ; 2 uses
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
  store i64 %i.au, ptr %i.aq, align 8, !tbaa !288
  %i.bd = load ptr, ptr %i.an, align 8, !tbaa !287
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.au
  store i8 0, ptr %i.be, align 1, !tbaa !279
  %i.bf = load ptr, ptr %3, align 8, !tbaa !287   ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.y
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.bh = load i64, ptr %i.y, align 8, !tbaa !279
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
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
  %i.bp = load ptr, ptr %i.x, align 8, !tbaa !287 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.aa
  br i1 %i.bq, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.br = load i64, ptr %i.aa, align 8, !tbaa !279
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #53
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.l, align 8, !tbaa !263
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bt) #43
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !263
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bw = getelementptr i8, ptr %i.bu, i64 -24
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds i8, ptr %2, i64 %i.bx
  store ptr %i.bv, ptr %i.by, align 8, !tbaa !263
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bz, align 8, !tbaa !1374
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ca) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  ret ptr %0

bb.m:                                             ; preds = %bb.c, %bb.b
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.f
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %3, align 8, !tbaa !287   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.y
  br i1 %i.ce, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.n, %bb.e
  %.sink = phi ptr [ %i.al, %bb.e ], [ %i.cd, %bb.n ]
  %.pn.ph = phi { ptr, i32 } [ %i.ak, %bb.e ], [ %i.cc, %bb.n ]
  %i.cf = load i64, ptr %i.y, align 8, !tbaa !279
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cg) #53
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.n, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.e ], [ %i.cc, %bb.n ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %bb.o

bb.o:                                             ; preds = %.body, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.cb, %bb.m ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS0_4LazyIvEEEEDaOT_(ptr dead_on_unwind noalias writable sret(%"struct.async_simple::coro::detail::LazyBase<void, false>::ValueAwaiter") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1291
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5173)
  %i.c = load ptr, ptr %2, align 8, !tbaa !1131, !noalias !5174 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %_ZN12async_simple4coro6detail7coAwaitINS0_4LazyIvEEEEDaPNS_8ExecutorEOT_.exit, !prof !284

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE0_clEv:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !1692   ; 9 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !1692
  store ptr null, ptr %0, align 8, !tbaa !1692
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !261
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #43 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %i.d, align 8, !tbaa !263
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt17bad_function_call, ptr nonnull @_ZNSt17bad_function_callD1Ev) #54
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1694
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_ZNK12async_simple4util18move_only_functionIFvONS_3TryIN8coro_rpc8err_codeEEEEEclES6_.exit unwind label %bb.j, !inline_history !1695

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
  tail call void @__clang_call_terminate(ptr %i.n) #52
  unreachable

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i: ; preds = %bb.e, %bb.d, %_ZNK12async_simple4util18move_only_functionIFvONS_3TryIN8coro_rpc8err_codeEEEEEclES6_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.p = atomicrmw sub ptr %i.o, i8 1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %i.p, 1
  br i1 %.not.i.i.i, label %bb.g, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit

bb.g:                                             ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !359   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.r, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i, label %bb.h, !prof !284

bb.h:                                             ; preds = %bb.g
  %i.s = icmp ne i8 %i.r, 2
  %i.t = load ptr, ptr %i.f, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.s, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #43
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(81) %i.a, i64 noundef 88) #53
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit: ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i, %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  ret void

bb.j:                                             ; preds = %bb.c, %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  resume { ptr, i32 } %i.u
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !306    ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !1692 ; 4 uses
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
  tail call void @__clang_call_terminate(ptr %i.k) #52
  unreachable

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !1692 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = atomicrmw sub ptr %i.m, i8 1 acq_rel, align 1
  %.not.i.i.i.i = icmp eq i8 %i.n, 1
  br i1 %.not.i.i.i.i, label %bb.g, label %_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE0_D2Ev.exit

bb.g:                                             ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load i8, ptr %i.p, align 8, !tbaa !359   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i.i, label %bb.h, !prof !284

bb.h:                                             ; preds = %bb.g
  %i.r = icmp ne i8 %i.q, 2
  %i.s = load ptr, ptr %i.o, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.r, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #43
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i.i

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(81) %i.l, i64 noundef 88) #53
  br label %_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE0_D2Ev.exit

_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE0_D2Ev.exit: ; preds = %bb.b, %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i.i, %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #53
  br label %bb.j

bb.j:                                             ; preds = %_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE0_D2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN8coro_rpc20coro_rpc_server_baseINS3_8config_tEE11async_startEvEUlvE2_EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #43
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #53
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN8coro_rpc20coro_rpc_server_baseINS3_8config_tEE11async_startEvEUlvE2_EEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !6016
  tail call void @_ZN7coro_io15io_context_pool3runEv(ptr noundef nonnull align 8 dereferenceable(113) %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIN8coro_rpc8err_codeEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 24 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load i16, ptr %1, align 2, !tbaa !450
  %i.c = icmp ne i16 %i.b, 0
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext %i.c)
          to label %_ZNSolsEb.exit unwind label %bb.k ; 0 uses

_ZNSolsEb.exit:                                   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !6021)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6022)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1370, !noalias !6023 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNSolsEb.exit
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %5 = load ptr, ptr %i.h, align 8, !tbaa !1371, !noalias !6023 ; 2 uses
  %6 = icmp ugt ptr %i.g, %5
  %.08.i.i.i = select i1 %6, ptr %i.g, ptr %5
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1372, !noalias !6023
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %i.m, ptr %i.n, align 8, !tbaa !288, !noalias !6023
  %i.o = load ptr, ptr %4, align 8, !tbaa !287, !noalias !6023
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !279, !noalias !6023
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNSolsEb.exit
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.r, ptr %3, align 8, !tbaa !283, !alias.scope !6023
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !287, !noalias !6023 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.w = load i64, ptr %i.v, align 8, !tbaa !288, !noalias !6023 ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.s, ptr %3, align 8, !tbaa !287, !alias.scope !6023
  %i.z = load i64, ptr %i.t, align 8, !tbaa !279, !noalias !6023
  store i64 %i.z, ptr %i.r, align 8, !tbaa !279, !alias.scope !6023
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !288, !noalias !6023
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.b
  %i.aa = phi i64 [ %i.w, %bb.b ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !288, !alias.scope !6023
  store ptr %i.t, ptr %i.q, align 8, !tbaa !287, !noalias !6023
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ab, i8 0, i64 9, i1 false), !noalias !6023
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.e, ptr noundef nonnull %i.t, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %3, align 8, !tbaa !287, !alias.scope !6023 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.r
  br i1 %i.af, label %.body, label %.body.sink.split

_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ah = load ptr, ptr %3, align 8, !tbaa !287   ; 3 uses
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !288 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !288 ; 5 uses
  %i.al = sub i64 9223372036854775807, %i.ak
  %i.am = icmp ult i64 %i.al, %i.ai
  br i1 %i.am, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.d:                                             ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.910) #54
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.an = add i64 %i.ak, %i.ai                    ; 3 uses
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !287 ; 2 uses
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
  store i64 %i.an, ptr %i.aj, align 8, !tbaa !288
  %i.aw = load ptr, ptr %i.ag, align 8, !tbaa !287
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.an
  store i8 0, ptr %i.ax, align 1, !tbaa !279
  %i.ay = load ptr, ptr %3, align 8, !tbaa !287   ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.r
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ba = load i64, ptr %i.r, align 8, !tbaa !279
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
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
  %i.bi = load ptr, ptr %i.q, align 8, !tbaa !287 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.t
  br i1 %i.bj, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bk = load i64, ptr %i.t, align 8, !tbaa !279
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #53
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.e, align 8, !tbaa !263
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bm) #43
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bn, ptr %2, align 8, !tbaa !263
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bp = getelementptr i8, ptr %i.bn, i64 -24
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = getelementptr inbounds i8, ptr %2, i64 %i.bq
  store ptr %i.bo, ptr %i.br, align 8, !tbaa !263
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bs, align 8, !tbaa !1374
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bt) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  ret ptr %0

bb.k:                                             ; preds = %bb.a
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.i, %bb.d
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %3, align 8, !tbaa !287   ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.r
  br i1 %i.bx, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.l, %bb.c
  %.sink = phi ptr [ %i.ae, %bb.c ], [ %i.bw, %bb.l ]
  %.pn.ph = phi { ptr, i32 } [ %i.ad, %bb.c ], [ %i.bv, %bb.l ]
  %i.by = load i64, ptr %i.r, align 8, !tbaa !279
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bz) #53
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.l, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.c ], [ %i.bv, %bb.l ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %bb.m

bb.m:                                             ; preds = %.body, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bu, %bb.k ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN12async_simple4coro4LazyIN8coro_rpc8err_codeEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1698   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1699 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN12async_simple4coro4LazyIN8coro_rpc8err_codeEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN12async_simple4coro4LazyIN8coro_rpc8err_codeEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN12async_simple4coro4LazyIN8coro_rpc8err_codeEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN12async_simple4coro4LazyIN8coro_rpc8err_codeEEESaIS5_EED2Ev:bb.a
_ZSt8_DestroyIPN12async_simple4coro4LazyIN8coro_rpc8err_codeEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN12async_simple4coro4LazyIN8coro_rpc8err_codeEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPN12async_simple4coro4LazyIN8coro_rpc8err_codeEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN12async_simple4coro4LazyIN8coro_rpc8err_codeEEESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN12async_simple4coro4LazyIN8coro_rpc8err_codeEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1700
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #53
  br label %_ZNSt12_Vector_baseIN12async_simple4coro4LazyIN8coro_rpc8err_codeEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseIN12async_simple4coro4LazyIN8coro_rpc8err_codeEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN12async_simple4coro4LazyIN8coro_rpc8err_codeEEES5_EvT_S7_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12async_simple4coro6detail11LazyPromiseIN8coro_rpc8err_codeEE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %1) #43
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !359   ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.c, -1
  br i1 %.not.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.b, !prof !284

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ne i8 %i.c, 2
  %i.e = load ptr, ptr %i.a, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  %or.cond.i.i.i.i.i = select i1 %i.d, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(9) %i.a) #43
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.a, %bb.b, %bb.c
  %i.f = load ptr, ptr %1, align 8, !tbaa !698
  store ptr %i.f, ptr %i.a, align 8, !tbaa !698
  store i8 2, ptr %i.b, align 8, !tbaa !359
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA24_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #43 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !288  ; 5 uses
  %i.e = sub i64 9223372036854775807, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.910) #54
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.a
  %i.g = add i64 %i.d, %i.b                       ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !287  ; 2 uses
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
  store i64 %i.g, ptr %i.c, align 8, !tbaa !288
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !287
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 0, ptr %i.q, align 1, !tbaa !279
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA20_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(20) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #43 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !288  ; 5 uses
  %i.e = sub i64 9223372036854775807, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.910) #54
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.a
  %i.g = add i64 %i.d, %i.b                       ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !287  ; 2 uses
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
  store i64 %i.g, ptr %i.c, align 8, !tbaa !288
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !287
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 0, ptr %i.q, align 1, !tbaa !279
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIN7coro_io8endpointEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(36) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 24 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7coro_iolsERSoRKNS_8endpointE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(36) %1)
          to label %bb.b unwind label %bb.l       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !6028)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6029)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1370, !noalias !6030 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %bb.b
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %5 = load ptr, ptr %i.f, align 8, !tbaa !1371, !noalias !6030 ; 2 uses
  %6 = icmp ugt ptr %i.e, %5
  %.08.i.i.i = select i1 %6, ptr %i.e, ptr %5
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1372, !noalias !6030
  %i.i = ptrtoint ptr %.08.i.i.i to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %i.k, ptr %i.l, align 8, !tbaa !288, !noalias !6030
  %i.m = load ptr, ptr %4, align 8, !tbaa !287, !noalias !6030
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !279, !noalias !6030
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !283, !alias.scope !6030
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !287, !noalias !6030 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.u = load i64, ptr %i.t, align 8, !tbaa !288, !noalias !6030 ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.q, ptr %3, align 8, !tbaa !287, !alias.scope !6030
  %i.x = load i64, ptr %i.r, align 8, !tbaa !279, !noalias !6030
  store i64 %i.x, ptr %i.p, align 8, !tbaa !279, !alias.scope !6030
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !288, !noalias !6030
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.c
  %i.y = phi i64 [ %i.u, %bb.c ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !288, !alias.scope !6030
  store ptr %i.r, ptr %i.o, align 8, !tbaa !287, !noalias !6030
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.z, i8 0, i64 9, i1 false), !noalias !6030
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull %i.r, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %3, align 8, !tbaa !287, !alias.scope !6030 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.p
  br i1 %i.ad, label %.body, label %.body.sink.split

_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.af = load ptr, ptr %3, align 8, !tbaa !287   ; 3 uses
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !288 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !288 ; 5 uses
  %i.aj = sub i64 9223372036854775807, %i.ai
  %i.ak = icmp ult i64 %i.aj, %i.ag
  br i1 %i.ak, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.e:                                             ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.910) #54
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = add i64 %i.ai, %i.ag                    ; 3 uses
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !287 ; 2 uses
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
  store i64 %i.al, ptr %i.ah, align 8, !tbaa !288
  %i.au = load ptr, ptr %i.ae, align 8, !tbaa !287
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.al
  store i8 0, ptr %i.av, align 1, !tbaa !279
  %i.aw = load ptr, ptr %3, align 8, !tbaa !287   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.p
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ay = load i64, ptr %i.p, align 8, !tbaa !279
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
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
  %i.bg = load ptr, ptr %i.o, align 8, !tbaa !287 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.r
  br i1 %i.bh, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bi = load i64, ptr %i.r, align 8, !tbaa !279
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #53
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.c, align 8, !tbaa !263
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bk) #43
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bl, ptr %2, align 8, !tbaa !263
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bn = getelementptr i8, ptr %i.bl, i64 -24
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds i8, ptr %2, i64 %i.bo
  store ptr %i.bm, ptr %i.bp, align 8, !tbaa !263
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bq, align 8, !tbaa !1374
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.br) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  ret ptr %0

bb.l:                                             ; preds = %bb.a
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.e
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %3, align 8, !tbaa !287   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.p
  br i1 %i.bv, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.m, %bb.d
  %.sink = phi ptr [ %i.ac, %bb.d ], [ %i.bu, %bb.m ]
  %.pn.ph = phi { ptr, i32 } [ %i.ab, %bb.d ], [ %i.bt, %bb.m ]
  %i.bw = load i64, ptr %i.p, align 8, !tbaa !279
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bx) #53
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.m, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.d ], [ %i.bt, %bb.m ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %bb.n

bb.n:                                             ; preds = %.body, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bs, %bb.l ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7coro_io16socket_wrapper_tC2EON4asio19basic_stream_socketINS1_2ip3tcpENS1_15any_io_executorEEEPNS_15ExecutorWrapperINS1_10io_context19basic_executor_typeISaIvELm0EEEEERNS1_3ssl7contextE(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6033)
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #55, !noalias !6033 ; 10 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !923, !noalias !6033
  store ptr %i.b, ptr %i.a, align 8, !tbaa !923, !noalias !6033
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store i32 2, ptr %i.c, align 8, !noalias !6033
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
end_hunk_2
begin_hunk_3_@_ZN8coro_rpc15coro_connection19direct_response_msgINS_8protocol17coro_rpc_protocolEEEvNSt6chrono10time_pointINS4_3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEmRNS_8err_codeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNT_10req_headerEOSt8functionIFN7coro_io9data_viewEvEEOSQ_IFvRKSt10error_codemEE:bb.a
bb.bj:                                            ; preds = %_ZN12async_simple4coro6detail8LazyBaseIvLb0EED2Ev.exit83
  %i.hf = invoke noundef zeroext i1 %i.he(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %18, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit85 unwind label %bb.bk ; 0 uses

bb.bk:                                            ; preds = %bb.bj
  %i.hg = landingpad { ptr, i32 }
          catch ptr null
  %i.hh = extractvalue { ptr, i32 } %i.hg, 0
  call void @__clang_call_terminate(ptr %i.hh) #52
  unreachable

_ZNSt14_Function_baseD2Ev.exit85:                 ; preds = %bb.bj, %_ZN12async_simple4coro6detail8LazyBaseIvLb0EED2Ev.exit83, %bb.bf
  %.pn26 = phi { ptr, i32 } [ %i.gw, %bb.bf ], [ %i.gx, %_ZN12async_simple4coro6detail8LazyBaseIvLb0EED2Ev.exit83 ], [ %i.gx, %bb.bj ] ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !314 ; 2 uses
  %.not.i86 = icmp eq ptr %i.hj, null
  br i1 %.not.i86, label %_ZNSt14_Function_baseD2Ev.exit87, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit85
  %i.hk = invoke noundef zeroext i1 %i.hj(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit87 unwind label %bb.bm ; 0 uses

bb.bm:                                            ; preds = %bb.bl
  %i.hl = landingpad { ptr, i32 }
          catch ptr null
  %i.hm = extractvalue { ptr, i32 } %i.hl, 0
  call void @__clang_call_terminate(ptr %i.hm) #52
  unreachable

_ZNSt14_Function_baseD2Ev.exit87:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit85, %bb.bl
  %i.hn = load ptr, ptr %16, align 8, !tbaa !287  ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.dv
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZNSt14_Function_baseD2Ev.exit87
  %i.hp = load i64, ptr %i.dv, align 8, !tbaa !279
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hq) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZNSt14_Function_baseD2Ev.exit87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  %i.hr = load ptr, ptr %15, align 8, !tbaa !287  ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.di
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %i.ht = load i64, ptr %i.di, align 8, !tbaa !279
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hu) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #43
  %i.hv = load ptr, ptr %11, align 8, !tbaa !287  ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.dk
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %i.hx = load i64, ptr %i.dk, align 8, !tbaa !279
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.be
  %.pn26.pn = phi { ptr, i32 } [ %i.gv, %bb.be ], [ %.pn26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #43
  br label %.body

.body:                                            ; preds = %bb.j, %bb.o, %bb.ai, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %.pn, %bb.al ], [ %i.y, %bb.j ], [ %i.cw, %bb.ai ], [ %i.ag, %bb.o ]
  %i.hz = load ptr, ptr %8, align 8, !tbaa !287   ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.a
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %.body
  %i.ib = load i64, ptr %i.a, align 8, !tbaa !279
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  resume { ptr, i32 } %.pn26.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE12return_valueIRS3_EEvOT_Qsr3stdE16is_convertible_vIOTL0__S7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !977   ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.c, -1
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b, !prof !284

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ne i8 %i.c, 2
  %i.e = load ptr, ptr %i.a, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  %or.cond.i.i.i.i.i = select i1 %i.d, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S4_S6_EEEEDcOT0_DpOT1_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(17) %i.a) #43
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S4_S6_EEEEDcOT0_DpOT1_.exit.i.i.i.i

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S4_S6_EEEEDcOT0_DpOT1_.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  store i8 -1, ptr %i.b, align 8, !tbaa !977
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S4_S6_EEEEDcOT0_DpOT1_.exit.i.i.i.i, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !564
  store i8 1, ptr %i.b, align 8, !tbaa !977
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA36_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(36) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #43 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !288  ; 5 uses
  %i.e = sub i64 9223372036854775807, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.910) #54
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.a
  %i.g = add i64 %i.d, %i.b                       ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !287  ; 2 uses
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
  store i64 %i.g, ptr %i.c, align 8, !tbaa !288
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !287
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 0, ptr %i.q, align 1, !tbaa !279
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIN4asio2ip7addressEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(28) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 24 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4asio2iplsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_7addressE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(28) %1)
          to label %bb.b unwind label %bb.l       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !7080)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7081)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1370, !noalias !7082 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %bb.b
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %5 = load ptr, ptr %i.f, align 8, !tbaa !1371, !noalias !7082 ; 2 uses
  %6 = icmp ugt ptr %i.e, %5
  %.08.i.i.i = select i1 %6, ptr %i.e, ptr %5
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1372, !noalias !7082
  %i.i = ptrtoint ptr %.08.i.i.i to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %i.k, ptr %i.l, align 8, !tbaa !288, !noalias !7082
  %i.m = load ptr, ptr %4, align 8, !tbaa !287, !noalias !7082
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !279, !noalias !7082
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !283, !alias.scope !7082
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !287, !noalias !7082 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.u = load i64, ptr %i.t, align 8, !tbaa !288, !noalias !7082 ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.q, ptr %3, align 8, !tbaa !287, !alias.scope !7082
  %i.x = load i64, ptr %i.r, align 8, !tbaa !279, !noalias !7082
  store i64 %i.x, ptr %i.p, align 8, !tbaa !279, !alias.scope !7082
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !288, !noalias !7082
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.c
  %i.y = phi i64 [ %i.u, %bb.c ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !288, !alias.scope !7082
  store ptr %i.r, ptr %i.o, align 8, !tbaa !287, !noalias !7082
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.z, i8 0, i64 9, i1 false), !noalias !7082
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull %i.r, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %3, align 8, !tbaa !287, !alias.scope !7082 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.p
  br i1 %i.ad, label %.body, label %.body.sink.split

_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.af = load ptr, ptr %3, align 8, !tbaa !287   ; 3 uses
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !288 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !288 ; 5 uses
  %i.aj = sub i64 9223372036854775807, %i.ai
  %i.ak = icmp ult i64 %i.aj, %i.ag
  br i1 %i.ak, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.e:                                             ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.910) #54
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = add i64 %i.ai, %i.ag                    ; 3 uses
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !287 ; 2 uses
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
  store i64 %i.al, ptr %i.ah, align 8, !tbaa !288
  %i.au = load ptr, ptr %i.ae, align 8, !tbaa !287
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.al
  store i8 0, ptr %i.av, align 1, !tbaa !279
  %i.aw = load ptr, ptr %3, align 8, !tbaa !287   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.p
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ay = load i64, ptr %i.p, align 8, !tbaa !279
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
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
  %i.bg = load ptr, ptr %i.o, align 8, !tbaa !287 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.r
  br i1 %i.bh, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bi = load i64, ptr %i.r, align 8, !tbaa !279
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #53
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.c, align 8, !tbaa !263
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bk) #43
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bl, ptr %2, align 8, !tbaa !263
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bn = getelementptr i8, ptr %i.bl, i64 -24
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds i8, ptr %2, i64 %i.bo
  store ptr %i.bm, ptr %i.bp, align 8, !tbaa !263
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bq, align 8, !tbaa !1374
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.br) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  ret ptr %0

bb.l:                                             ; preds = %bb.a
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.e
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %3, align 8, !tbaa !287   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.p
  br i1 %i.bv, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.m, %bb.d
  %.sink = phi ptr [ %i.ac, %bb.d ], [ %i.bu, %bb.m ]
  %.pn.ph = phi { ptr, i32 } [ %i.ab, %bb.d ], [ %i.bt, %bb.m ]
  %i.bw = load i64, ptr %i.p, align 8, !tbaa !279
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bx) #53
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.m, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.d ], [ %i.bt, %bb.m ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %bb.n

bb.n:                                             ; preds = %.body, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bs, %bb.l ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7coro_io11ib_socket_t7init_qpEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.ibv_qp_init_attr, align 8   ; 13 uses
  %2 = alloca %"class.easylog::record_t", align 8 ; 7 uses
  %3 = alloca %"struct.refvalue::meta_string.960", align 1 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 0, i64 64, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7090
end_hunk_3
