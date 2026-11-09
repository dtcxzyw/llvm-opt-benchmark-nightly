Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/client?download=true
inline.NumInlined: 70008
inline.NumDeleted: 19195
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN7easylog8record_tlsIlEERS0_RKT_:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 noundef %i.bc, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.ba)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.p, %bb.r, %bb.s, %bb.t
  store i64 %i.bf, ptr %i.bb, align 8, !tbaa !242
  %i.bo = load ptr, ptr %i.ax, align 8, !tbaa !241
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bf
  store i8 0, ptr %i.bp, align 1, !tbaa !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  ret ptr %0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #31

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple4coro6detail15LazyPromiseBase12YieldAwaiter13await_suspendINS1_11LazyPromiseIvEEEEvNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !4485   ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN12async_simple11logicAssertEbPKc.exit, !prof !243

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #44 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.123)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #53
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.h, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.p, %bb.h ], [ %i.p, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #44
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.f, align 8
  %i.g = ptrtoint ptr %1 to i64
  store i64 %i.g, ptr %2, align 8, !tbaa !264
  store ptr @_ZNSt17_Function_handlerIFvvENSt7__n486116coroutine_handleIN12async_simple4coro6detail11LazyPromiseIvEEEEE9_M_invokeERKSt9_Any_data, ptr %i.e, align 8, !tbaa !616
  store ptr @_ZNSt17_Function_handlerIFvvENSt7__n486116coroutine_handleIN12async_simple4coro6detail11LazyPromiseIvEEEEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.d, align 8, !tbaa !617
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !215
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 8)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !617  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #50
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.e, %bb.f
  ret void

bb.h:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !617  ; 2 uses
  %.not.i2 = icmp eq ptr %i.q, null
  br i1 %.not.i2, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %common.resume unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #50
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA29_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(29) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #44 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !242  ; 5 uses
  %i.e = sub i64 9223372036854775807, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #53
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.a
  %i.g = add i64 %i.d, %i.b                       ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !241  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.k = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.l = load i64, ptr %i.i, align 8, !tbaa !231
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
  %i.o = load i8, ptr %1, align 1, !tbaa !231
  store i8 %i.o, ptr %i.n, align 1, !tbaa !231
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.d, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.b)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.g, ptr %i.c, align 8, !tbaa !242
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !241
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 0, ptr %i.q, align 1, !tbaa !231
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 24 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !344    ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !215
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1215
  %i.i = or i32 %i.h, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.f, i32 noundef %i.i)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #44
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b, i64 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  call void @llvm.experimental.noalias.scope.decl(metadata !4490)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4491)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1217, !noalias !4492 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  %5 = load ptr, ptr %i.o, align 8, !tbaa !1218, !noalias !4492 ; 2 uses
  %6 = icmp ugt ptr %i.n, %5
  %.08.i.i.i = select i1 %6, ptr %i.n, ptr %5
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1219, !noalias !4492
  %i.r = ptrtoint ptr %.08.i.i.i to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %i.t, ptr %i.u, align 8, !tbaa !242, !noalias !4492
  %i.v = load ptr, ptr %4, align 8, !tbaa !241, !noalias !4492
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !231, !noalias !4492
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !238, !alias.scope !4492
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !241, !noalias !4492 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !242, !noalias !4492 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.z, ptr %3, align 8, !tbaa !241, !alias.scope !4492
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !231, !noalias !4492
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !231, !alias.scope !4492
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !242, !noalias !4492
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.d
  %i.ah = phi i64 [ %i.ad, %bb.d ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !242, !alias.scope !4492
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !241, !noalias !4492
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ai, i8 0, i64 9, i1 false), !noalias !4492
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.l, ptr noundef nonnull %i.aa, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %3, align 8, !tbaa !241, !alias.scope !4492 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.y
  br i1 %i.am, label %.body, label %.body.sink.split

_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ao = load ptr, ptr %3, align 8, !tbaa !241   ; 3 uses
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !242 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !242 ; 5 uses
  %i.as = sub i64 9223372036854775807, %i.ar
  %i.at = icmp ult i64 %i.as, %i.ap
  br i1 %i.at, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.f:                                             ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #53
          to label %.noexc10 unwind label %bb.n

.noexc10:                                         ; preds = %bb.f
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.au = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.av = load ptr, ptr %i.an, align 8, !tbaa !241 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i9: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ay = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.ay)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.az = load i64, ptr %i.aw, align 8, !tbaa !231
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
  %i.bc = load i8, ptr %i.ao, align 1, !tbaa !231
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !231
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.ao, i64 %i.ap, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 noundef %i.ar, i64 noundef 0, ptr noundef %i.ao, i64 noundef %i.ap)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.g, %bb.k
  store i64 %i.au, ptr %i.aq, align 8, !tbaa !242
  %i.bd = load ptr, ptr %i.an, align 8, !tbaa !241
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.au
  store i8 0, ptr %i.be, align 1, !tbaa !231
  %i.bf = load ptr, ptr %3, align 8, !tbaa !241   ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.y
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.bh = load i64, ptr %i.y, align 8, !tbaa !231
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  %i.bj = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bj, ptr %2, align 8, !tbaa !215
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bl = getelementptr i8, ptr %i.bj, i64 -24
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds i8, ptr %2, i64 %i.bm
  store ptr %i.bk, ptr %i.bn, align 8, !tbaa !215
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bo, ptr %i.a, align 8, !tbaa !215
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.l, align 8, !tbaa !215
  %i.bp = load ptr, ptr %i.x, align 8, !tbaa !241 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.aa
  br i1 %i.bq, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.br = load i64, ptr %i.aa, align 8, !tbaa !231
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #51
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.l, align 8, !tbaa !215
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bt) #44
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !215
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bw = getelementptr i8, ptr %i.bu, i64 -24
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds i8, ptr %2, i64 %i.bx
  store ptr %i.bv, ptr %i.by, align 8, !tbaa !215
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bz, align 8, !tbaa !1221
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ca) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  ret ptr %0

bb.m:                                             ; preds = %bb.c, %bb.b
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.f
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %3, align 8, !tbaa !241   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.y
  br i1 %i.ce, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.n, %bb.e
  %.sink = phi ptr [ %i.al, %bb.e ], [ %i.cd, %bb.n ]
  %.pn.ph = phi { ptr, i32 } [ %i.ak, %bb.e ], [ %i.cc, %bb.n ]
  %i.cf = load i64, ptr %i.y, align 8, !tbaa !231
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cg) #51
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.n, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.e ], [ %i.cc, %bb.n ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  br label %bb.o

bb.o:                                             ; preds = %.body, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.cb, %bb.m ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12async_simple4coro6detail11LazyPromiseIbE12return_valueIbEEvOT_Qsr3stdE16is_convertible_vIOTL0__S5_E(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !1008  ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.c, -1
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b, !prof !243

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ne i8 %i.c, 2
end_hunk_0
begin_hunk_1_@_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEED2Ev:bb.a

_ZNSt12__shared_ptrISt6vectorIN4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7coro_io16socket_wrapper_t5visitIZN8coro_rpc15coro_rpc_client12connect_implINS_11ib_socket_tEEEN12async_simple4coro4LazyINS2_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorIN4asio2ip14basic_endpointINSK_3tcpEEESaISN_EEEUlSC_E_EEDaOSB_(ptr dead_on_unwind noalias writable sret(%"class.async_simple::coro::Lazy.1032") align 8 %0, ptr noundef nonnull align 8 dereferenceable(65) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !883  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5296)
  %i.c = load ptr, ptr %2, align 8, !tbaa !1589, !noalias !5296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5297)
  %i.d = tail call noalias noundef dereferenceable_or_null(120) ptr @_ZnamRKSt9nothrow_t(i64 noundef 120, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #54, !noalias !5298, !inline_history !101 ; 10 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i.i

.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store ptr @_ZZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEmENUlPvmE_8__invokeES4_m, ptr %i.f, align 1, !noalias !5298
  store ptr @_ZN7coro_io11ib_socket_t7connectISt6vectorIN4asio2ip14basic_endpointINS4_3tcpEEESaIS7_EEEEN12async_simple4coro4LazyISt10error_codeEERKT_.resume, ptr %i.d, align 8, !noalias !5298
  %destroy.addr.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_ZN7coro_io11ib_socket_t7connectISt6vectorIN4asio2ip14basic_endpointINS4_3tcpEEESaIS7_EEEEN12async_simple4coro4LazyISt10error_codeEERKT_.destroy, ptr %destroy.addr.i.i.i, align 8, !noalias !5298
  %.reload.addr132.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.spill.addr124.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store ptr %i.c, ptr %.spill.addr124.i.i.i, align 8, !noalias !5298
  %.spill.addr.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr %i.b, ptr %.spill.addr.i.i.i, align 8, !noalias !5298
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.reload.addr132.i.i.i, i8 0, i64 24, i1 false), !noalias !5298
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i8 0, ptr %i.g, align 8, !tbaa !1229, !noalias !5298
  store ptr %i.d, ptr %0, align 8, !tbaa !264, !alias.scope !5299
  %index.addr133.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store i8 0, ptr %index.addr133.i.i.i, align 8, !noalias !5298
  br label %_ZZN8coro_rpc15coro_rpc_client12connect_implIN7coro_io11ib_socket_tEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorIN4asio2ip14basic_endpointINSI_3tcpEEESaISL_EEENKUlSA_E_clIS3_EEDaSA_.exit

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !264, !alias.scope !5300
  br label %_ZZN8coro_rpc15coro_rpc_client12connect_implIN7coro_io11ib_socket_tEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorIN4asio2ip14basic_endpointINSI_3tcpEEESaISL_EEENKUlSA_E_clIS3_EEDaSA_.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !884  ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.i, null
  br i1 %.not.i.i.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5301)
  %i.j = load ptr, ptr %2, align 8, !tbaa !1589, !noalias !5301
  %i.k = tail call noalias noundef dereferenceable_or_null(128) ptr @_ZnamRKSt9nothrow_t(i64 noundef 128, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #54, !noalias !5301, !inline_history !102 ; 10 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i

.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i: ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  store ptr @_ZZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEmENUlPvmE_8__invokeES4_m, ptr %i.m, align 1, !noalias !5301
  store ptr @_ZN7coro_io13async_connectISt6vectorIN4asio2ip14basic_endpointINS3_3tcpEEESaIS6_EEEEN12async_simple4coro4LazyISt10error_codeEERNS2_3ssl6streamIRNS2_19basic_stream_socketIS5_NS2_15any_io_executorEEEEERKT_.resume, ptr %i.k, align 8, !noalias !5301
  %destroy.addr.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_ZN7coro_io13async_connectISt6vectorIN4asio2ip14basic_endpointINS3_3tcpEEESaIS6_EEEEN12async_simple4coro4LazyISt10error_codeEERNS2_3ssl6streamIRNS2_19basic_stream_socketIS5_NS2_15any_io_executorEEEEERKT_.destroy, ptr %destroy.addr.i.i, align 8, !noalias !5301
  %.reload.addr124.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.spill.addr115.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  store ptr %i.j, ptr %.spill.addr115.i.i, align 8, !noalias !5301
  %.spill.addr.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  store ptr %i.i, ptr %.spill.addr.i.i, align 8, !noalias !5301
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.reload.addr124.i.i, i8 0, i64 24, i1 false), !noalias !5301
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i8 0, ptr %i.n, align 8, !tbaa !1229, !noalias !5301
  store ptr %i.k, ptr %0, align 8, !tbaa !264, !alias.scope !5302
  %index.addr125.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  store i8 0, ptr %index.addr125.i.i, align 8, !noalias !5301
  br label %_ZZN8coro_rpc15coro_rpc_client12connect_implIN7coro_io11ib_socket_tEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorIN4asio2ip14basic_endpointINSI_3tcpEEESaISL_EEENKUlSA_E_clIS3_EEDaSA_.exit

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %0, align 8, !tbaa !264, !alias.scope !5303
  br label %_ZZN8coro_rpc15coro_rpc_client12connect_implIN7coro_io11ib_socket_tEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorIN4asio2ip14basic_endpointINSI_3tcpEEESaISL_EEENKUlSA_E_clIS3_EEDaSA_.exit

bb.g:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %1, align 8, !tbaa !872
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5304)
  %i.p = load ptr, ptr %2, align 8, !tbaa !1589, !noalias !5304
  %i.q = tail call noalias noundef dereferenceable_or_null(504) ptr @_ZnamRKSt9nothrow_t(i64 noundef 504, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #54, !noalias !5304, !inline_history !103 ; 10 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i7

.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i7: ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 496
  store ptr @_ZZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEmENUlPvmE_8__invokeES4_m, ptr %i.s, align 1, !noalias !5304
  store ptr @_ZN7coro_io13async_connectISt6vectorIN4asio2ip14basic_endpointINS3_3tcpEEESaIS6_EEEEN12async_simple4coro4LazyISt10error_codeEERNS2_19basic_stream_socketIS5_NS2_15any_io_executorEEERKT_.resume, ptr %i.q, align 8, !noalias !5304
  %destroy.addr.i.i5 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_ZN7coro_io13async_connectISt6vectorIN4asio2ip14basic_endpointINS3_3tcpEEESaIS6_EEEEN12async_simple4coro4LazyISt10error_codeEERNS2_19basic_stream_socketIS5_NS2_15any_io_executorEEERKT_.destroy, ptr %destroy.addr.i.i5, align 8, !noalias !5304
  %.reload.addr248.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.spill.addr233.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 440
  store ptr %i.p, ptr %.spill.addr233.i.i, align 8, !noalias !5304
  %.spill.addr.i.i6 = getelementptr inbounds nuw i8, ptr %i.q, i64 432
  store ptr %i.o, ptr %.spill.addr.i.i6, align 8, !noalias !5304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.reload.addr248.i.i, i8 0, i64 24, i1 false), !noalias !5304
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store i8 0, ptr %i.t, align 8, !tbaa !1229, !noalias !5304
  store ptr %i.q, ptr %0, align 8, !tbaa !264, !alias.scope !5305
  %index.addr249.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 492
  store i8 0, ptr %index.addr249.i.i, align 4, !noalias !5304
  br label %_ZZN8coro_rpc15coro_rpc_client12connect_implIN7coro_io11ib_socket_tEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorIN4asio2ip14basic_endpointINSI_3tcpEEESaISL_EEENKUlSA_E_clIS3_EEDaSA_.exit

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %0, align 8, !tbaa !264, !alias.scope !5306
  br label %_ZZN8coro_rpc15coro_rpc_client12connect_implIN7coro_io11ib_socket_tEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorIN4asio2ip14basic_endpointINSI_3tcpEEESaISL_EEENKUlSA_E_clIS3_EEDaSA_.exit

_ZZN8coro_rpc15coro_rpc_client12connect_implIN7coro_io11ib_socket_tEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorIN4asio2ip14basic_endpointINSI_3tcpEEESaISL_EEENKUlSA_E_clIS3_EEDaSA_.exit: ; preds = %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i7, %bb.h, %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i, %bb.f, %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA17_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(17) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #44 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !242  ; 5 uses
  %i.e = sub i64 9223372036854775807, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #53
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.a
  %i.g = add i64 %i.d, %i.b                       ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !241  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.k = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.l = load i64, ptr %i.i, align 8, !tbaa !231
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
  %i.o = load i8, ptr %1, align 1, !tbaa !231
  store i8 %i.o, ptr %i.n, align 1, !tbaa !231
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.d, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.b)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.g, ptr %i.c, align 8, !tbaa !242
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !241
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 0, ptr %i.q, align 1, !tbaa !231
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIN7coro_io8endpointEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(36) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 24 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7coro_iolsERSoRKNS_8endpointE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(36) %1)
          to label %bb.b unwind label %bb.l       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  call void @llvm.experimental.noalias.scope.decl(metadata !5311)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5312)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1217, !noalias !5313 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %bb.b
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %5 = load ptr, ptr %i.f, align 8, !tbaa !1218, !noalias !5313 ; 2 uses
  %6 = icmp ugt ptr %i.e, %5
  %.08.i.i.i = select i1 %6, ptr %i.e, ptr %5
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1219, !noalias !5313
  %i.i = ptrtoint ptr %.08.i.i.i to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %i.k, ptr %i.l, align 8, !tbaa !242, !noalias !5313
  %i.m = load ptr, ptr %4, align 8, !tbaa !241, !noalias !5313
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !231, !noalias !5313
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !238, !alias.scope !5313
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !241, !noalias !5313 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.u = load i64, ptr %i.t, align 8, !tbaa !242, !noalias !5313 ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.q, ptr %3, align 8, !tbaa !241, !alias.scope !5313
  %i.x = load i64, ptr %i.r, align 8, !tbaa !231, !noalias !5313
  store i64 %i.x, ptr %i.p, align 8, !tbaa !231, !alias.scope !5313
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !242, !noalias !5313
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.c
  %i.y = phi i64 [ %i.u, %bb.c ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !242, !alias.scope !5313
  store ptr %i.r, ptr %i.o, align 8, !tbaa !241, !noalias !5313
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.z, i8 0, i64 9, i1 false), !noalias !5313
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull %i.r, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %3, align 8, !tbaa !241, !alias.scope !5313 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.p
  br i1 %i.ad, label %.body, label %.body.sink.split

_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.af = load ptr, ptr %3, align 8, !tbaa !241   ; 3 uses
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !242 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !242 ; 5 uses
  %i.aj = sub i64 9223372036854775807, %i.ai
  %i.ak = icmp ult i64 %i.aj, %i.ag
  br i1 %i.ak, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.e:                                             ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #53
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = add i64 %i.ai, %i.ag                    ; 3 uses
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !241 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i8: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ap = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.ap)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i7: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.aq = load i64, ptr %i.an, align 8, !tbaa !231
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
  %i.at = load i8, ptr %i.af, align 1, !tbaa !231
  store i8 %i.at, ptr %i.as, align 1, !tbaa !231
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.af, i64 %i.ag, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef %i.ai, i64 noundef 0, ptr noundef %i.af, i64 noundef %i.ag)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.j
  store i64 %i.al, ptr %i.ah, align 8, !tbaa !242
  %i.au = load ptr, ptr %i.ae, align 8, !tbaa !241
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.al
  store i8 0, ptr %i.av, align 1, !tbaa !231
  %i.aw = load ptr, ptr %3, align 8, !tbaa !241   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.p
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ay = load i64, ptr %i.p, align 8, !tbaa !231
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  %i.ba = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ba, ptr %2, align 8, !tbaa !215
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bc = getelementptr i8, ptr %i.ba, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds i8, ptr %2, i64 %i.bd
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !215
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bf, ptr %i.a, align 8, !tbaa !215
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.c, align 8, !tbaa !215
  %i.bg = load ptr, ptr %i.o, align 8, !tbaa !241 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.r
  br i1 %i.bh, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bi = load i64, ptr %i.r, align 8, !tbaa !231
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #51
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.c, align 8, !tbaa !215
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bk) #44
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bl, ptr %2, align 8, !tbaa !215
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bn = getelementptr i8, ptr %i.bl, i64 -24
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds i8, ptr %2, i64 %i.bo
  store ptr %i.bm, ptr %i.bp, align 8, !tbaa !215
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bq, align 8, !tbaa !1221
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.br) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  ret ptr %0

bb.l:                                             ; preds = %bb.a
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.e
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %3, align 8, !tbaa !241   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.p
  br i1 %i.bv, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.m, %bb.d
  %.sink = phi ptr [ %i.ac, %bb.d ], [ %i.bu, %bb.m ]
  %.pn.ph = phi { ptr, i32 } [ %i.ab, %bb.d ], [ %i.bt, %bb.m ]
  %i.bw = load i64, ptr %i.p, align 8, !tbaa !231
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bx) #51
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.m, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.d ], [ %i.bt, %bb.m ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  br label %bb.n

bb.n:                                             ; preds = %.body, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bs, %bb.l ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7coro_io16socket_wrapper_t15remote_endpointEv(ptr dead_on_unwind noalias writable sret(%"struct.coro_io::endpoint") align 4 %0, ptr noundef nonnull align 8 dereferenceable(65) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.asio::ip::basic_endpoint", align 4 ; 7 uses
  %3 = alloca %"class.asio::ip::basic_endpoint", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !883  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_ZN11struct_pack14deserialize_toILm0EN7coro_io11ib_socket_t14ib_socket_infoEJETkNS_6detail16deserialize_viewESt4spanIcLm32EEEENS_8err_codeERT0_RKT2_DpRT1_:bb.a

bb.f:                                             ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.i
  %i.k = ptrtoint ptr %.sroa.0.0 to i64
  %i.l = sub i64 %i.c, %i.k
  %i.m = icmp ult i64 %i.l, 11
  br i1 %i.m, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE11deserializeIN7coro_io11ib_socket_t14ib_socket_infoEJEEENS_8err_codeERT_DpRT0_.exit, label %bb.g, !prof !243

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
  br i1 %.not4.i.i, label %bb.h, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE11deserializeIN7coro_io11ib_socket_t14ib_socket_infoEJEEENS_8err_codeERT_DpRT0_.exit, !prof !328

bb.h:                                             ; preds = %bb.g, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.i
  %i.w = phi ptr [ %i.n, %bb.g ], [ %.sroa.0.0, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.i ] ; 3 uses
  %i.x = and i8 %.0.copyload.i, 24
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %.thread.i, label %bb.i

.thread.i:                                        ; preds = %bb.b, %bb.h
  %i.z = phi ptr [ %i.w, %bb.h ], [ %i.d, %bb.b ] ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.c, %i.aa
  %i.ac = icmp ugt i64 %i.ab, 27
  br i1 %i.ac, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0EN7coro_io11ib_socket_t14ib_socket_infoEEENS_8err_codeERT3_.exit.sink.split.i, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE11deserializeIN7coro_io11ib_socket_t14ib_socket_infoEJEEENS_8err_codeERT_DpRT0_.exit, !prof !328

bb.i:                                             ; preds = %bb.h
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = sub i64 %i.c, %i.ad
  %i.af = icmp ugt i64 %i.ae, 27
  br i1 %i.af, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0EN7coro_io11ib_socket_t14ib_socket_infoEEENS_8err_codeERT3_.exit.sink.split.i, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE11deserializeIN7coro_io11ib_socket_t14ib_socket_infoEJEEENS_8err_codeERT_DpRT0_.exit, !prof !328

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0EN7coro_io11ib_socket_t14ib_socket_infoEEENS_8err_codeERT3_.exit.sink.split.i: ; preds = %bb.i, %.thread.i
  %.sink.i = phi ptr [ %i.z, %.thread.i ], [ %i.w, %bb.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 1 dereferenceable(28) %.sink.i, i64 28, i1 false)
  br label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE11deserializeIN7coro_io11ib_socket_t14ib_socket_infoEJEEENS_8err_codeERT_DpRT0_.exit

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE11deserializeIN7coro_io11ib_socket_t14ib_socket_infoEJEEENS_8err_codeERT_DpRT0_.exit: ; preds = %bb.a, %bb.f, %bb.g, %.thread.i, %bb.i, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0EN7coro_io11ib_socket_t14ib_socket_infoEEENS_8err_codeERT3_.exit.sink.split.i
  %.sroa.011.0.i = phi i32 [ 2, %bb.a ], [ 3, %bb.g ], [ 1, %.thread.i ], [ 0, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0EN7coro_io11ib_socket_t14ib_socket_infoEEENS_8err_codeERT3_.exit.sink.split.i ], [ 1, %bb.i ], [ 1, %bb.f ]
  ret i32 %.sroa.011.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA51_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(51) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #44 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !242  ; 5 uses
  %i.e = sub i64 9223372036854775807, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #53
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.a
  %i.g = add i64 %i.d, %i.b                       ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !241  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.k = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.l = load i64, ptr %i.i, align 8, !tbaa !231
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
  %i.o = load i8, ptr %1, align 1, !tbaa !231
  store i8 %i.o, ptr %i.n, align 1, !tbaa !231
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.d, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.b)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.g, ptr %i.c, align 8, !tbaa !242
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !241
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 0, ptr %i.q, align 1, !tbaa !231
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA63_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(63) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #44 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !242  ; 5 uses
  %i.e = sub i64 9223372036854775807, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #53
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.a
  %i.g = add i64 %i.d, %i.b                       ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !241  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.k = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.l = load i64, ptr %i.i, align 8, !tbaa !231
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
  %i.o = load i8, ptr %1, align 1, !tbaa !231
  store i8 %i.o, ptr %i.n, align 1, !tbaa !231
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.d, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.b)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.g, ptr %i.c, align 8, !tbaa !242
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !241
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 0, ptr %i.q, align 1, !tbaa !231
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIN4asio2ip7addressEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(28) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 24 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4asio2iplsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_7addressE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(28) %1)
          to label %bb.b unwind label %bb.l       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  call void @llvm.experimental.noalias.scope.decl(metadata !5755)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5756)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1217, !noalias !5757 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %bb.b
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %5 = load ptr, ptr %i.f, align 8, !tbaa !1218, !noalias !5757 ; 2 uses
  %6 = icmp ugt ptr %i.e, %5
  %.08.i.i.i = select i1 %6, ptr %i.e, ptr %5
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1219, !noalias !5757
  %i.i = ptrtoint ptr %.08.i.i.i to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %i.k, ptr %i.l, align 8, !tbaa !242, !noalias !5757
  %i.m = load ptr, ptr %4, align 8, !tbaa !241, !noalias !5757
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !231, !noalias !5757
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !238, !alias.scope !5757
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !241, !noalias !5757 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.u = load i64, ptr %i.t, align 8, !tbaa !242, !noalias !5757 ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.q, ptr %3, align 8, !tbaa !241, !alias.scope !5757
  %i.x = load i64, ptr %i.r, align 8, !tbaa !231, !noalias !5757
  store i64 %i.x, ptr %i.p, align 8, !tbaa !231, !alias.scope !5757
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !242, !noalias !5757
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.c
  %i.y = phi i64 [ %i.u, %bb.c ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !242, !alias.scope !5757
  store ptr %i.r, ptr %i.o, align 8, !tbaa !241, !noalias !5757
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.z, i8 0, i64 9, i1 false), !noalias !5757
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull %i.r, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %3, align 8, !tbaa !241, !alias.scope !5757 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.p
  br i1 %i.ad, label %.body, label %.body.sink.split

_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.af = load ptr, ptr %3, align 8, !tbaa !241   ; 3 uses
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !242 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !242 ; 5 uses
  %i.aj = sub i64 9223372036854775807, %i.ai
  %i.ak = icmp ult i64 %i.aj, %i.ag
  br i1 %i.ak, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.e:                                             ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #53
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = add i64 %i.ai, %i.ag                    ; 3 uses
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !241 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i8: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ap = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.ap)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i7: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.aq = load i64, ptr %i.an, align 8, !tbaa !231
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
  %i.at = load i8, ptr %i.af, align 1, !tbaa !231
  store i8 %i.at, ptr %i.as, align 1, !tbaa !231
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.af, i64 %i.ag, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef %i.ai, i64 noundef 0, ptr noundef %i.af, i64 noundef %i.ag)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.j
  store i64 %i.al, ptr %i.ah, align 8, !tbaa !242
  %i.au = load ptr, ptr %i.ae, align 8, !tbaa !241
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.al
  store i8 0, ptr %i.av, align 1, !tbaa !231
  %i.aw = load ptr, ptr %3, align 8, !tbaa !241   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.p
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ay = load i64, ptr %i.p, align 8, !tbaa !231
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  %i.ba = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ba, ptr %2, align 8, !tbaa !215
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bc = getelementptr i8, ptr %i.ba, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds i8, ptr %2, i64 %i.bd
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !215
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bf, ptr %i.a, align 8, !tbaa !215
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.c, align 8, !tbaa !215
  %i.bg = load ptr, ptr %i.o, align 8, !tbaa !241 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.r
  br i1 %i.bh, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bi = load i64, ptr %i.r, align 8, !tbaa !231
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #51
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.c, align 8, !tbaa !215
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bk) #44
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bl, ptr %2, align 8, !tbaa !215
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bn = getelementptr i8, ptr %i.bl, i64 -24
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds i8, ptr %2, i64 %i.bo
  store ptr %i.bm, ptr %i.bp, align 8, !tbaa !215
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bq, align 8, !tbaa !1221
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.br) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  ret ptr %0

bb.l:                                             ; preds = %bb.a
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.e
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %3, align 8, !tbaa !241   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.p
  br i1 %i.bv, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.m, %bb.d
  %.sink = phi ptr [ %i.ac, %bb.d ], [ %i.bu, %bb.m ]
  %.pn.ph = phi { ptr, i32 } [ %i.ab, %bb.d ], [ %i.bt, %bb.m ]
  %i.bw = load i64, ptr %i.p, align 8, !tbaa !231
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bx) #51
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.m, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.d ], [ %i.bt, %bb.m ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  br label %bb.n

bb.n:                                             ; preds = %.body, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bs, %bb.l ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7coro_io11ib_socket_t16modify_qp_to_rtrEjtPh(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, i16 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.ibv_qp_attr, align 8        ; 17 uses
  %5 = alloca %"class.easylog::record_t", align 8 ; 7 uses
  %6 = alloca %"struct.refvalue::meta_string.1916", align 1 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i64 144, i1 false)
  store i32 2, ptr %4, align 8, !tbaa !1810
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
end_hunk_2
