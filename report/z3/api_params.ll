Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/api_params?download=true
inline.NumInlined: 245
inline.NumDeleted: 66
begin_hunk_0_@Z3_params_set_double:bb.a
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.k
  ret void

bb.m:                                             ; preds = %bb.l, %_ZN10z3_log_ctxD2Ev.exit21
  %.merged = phi { ptr, i32 } [ %.pn.pn26, %_ZN10z3_log_ctxD2Ev.exit21 ], [ %i.v, %bb.l ]
  resume { ptr, i32 } %.merged

bb.n:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #15
  unreachable
}

declare void @_Z24log_Z3_params_set_doubleP11_Z3_contextP10_Z3_paramsP10_Z3_symbold(ptr noundef, ptr noundef, ptr noundef, double noundef) local_unnamed_addr #2

declare void @_ZN10params_ref10set_doubleEPKcd(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @Z3_params_set_symbol(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %class.symbol, align 8              ; 5 uses
  %6 = alloca %class.symbol, align 8              ; 5 uses
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z24log_Z3_params_set_symbolP11_Z3_contextP10_Z3_paramsP10_Z3_symbolS4_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
          to label %bb.c unwind label %.thread

.thread:                                          ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %.125 = extractvalue { ptr, i32 } %i.c, 1
  br label %bb.i

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.d, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr %2, ptr %5, align 8
  invoke void @_Z15norm_param_nameB5cxx11RK6symbol(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.e = load ptr, ptr %4, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %3, ptr %6, align 8
  invoke void @_ZN10params_ref7set_symEPKcRK6symbol(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.g = load ptr, ptr %4, align 8, !tbaa !165    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !166
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br i1 %i.b, label %bb.f, label %_ZN10z3_log_ctxD2Ev.exit, !prof !163

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19

bb.h:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.n = load ptr, ptr %4, align 8, !tbaa !165    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.h
  %i.q = load i64, ptr %i.o, align 8, !tbaa !166
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19: ; preds = %bb.h, %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  %.pn = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %i.m, %bb.h ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %.1 = extractvalue { ptr, i32 } %.pn, 1         ; 2 uses
  br i1 %i.b, label %bb.i, label %_ZN10z3_log_ctxD2Ev.exit21, !prof !164

bb.i:                                             ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19
  %.129 = phi i32 [ %.125, %.thread ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19 ]
  %.pn.pn27 = phi { ptr, i32 } [ %i.c, %.thread ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19 ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit21

_ZN10z3_log_ctxD2Ev.exit21:                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19, %bb.i
  %.128 = phi i32 [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19 ], [ %.129, %bb.i ]
  %.pn.pn26 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19 ], [ %.pn.pn27, %bb.i ] ; 2 uses
  %i.s = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #14
  %i.t = icmp eq i32 %.128, %i.s
  br i1 %i.t, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit21
  %.114 = extractvalue { ptr, i32 } %.pn.pn26, 0
  %i.u = call ptr @__cxa_begin_catch(ptr %.114) #14
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.k
  ret void

bb.m:                                             ; preds = %bb.l, %_ZN10z3_log_ctxD2Ev.exit21
  %.merged = phi { ptr, i32 } [ %.pn.pn26, %_ZN10z3_log_ctxD2Ev.exit21 ], [ %i.v, %bb.l ]
  resume { ptr, i32 } %.merged

bb.n:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #15
  unreachable
}

declare void @_Z24log_Z3_params_set_symbolP11_Z3_contextP10_Z3_paramsP10_Z3_symbolS4_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN10params_ref7set_symEPKcRK6symbol(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @Z3_params_to_string(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z23log_Z3_params_to_stringP11_Z3_contextP10_Z3_params(ptr noundef %0, ptr noundef %1)
          to label %bb.c unwind label %.thread

.thread:                                          ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %.328 = extractvalue { ptr, i32 } %i.c, 1
  br label %bb.o

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.d, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_ZNK10params_ref7displayERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !170, !noalias !184 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i: ; preds = %bb.e
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !171, !noalias !184 ; 2 uses
  %6 = icmp ugt ptr %i.h, %5
  %.08.i9.i.i = select i1 %6, ptr %i.h, ptr %5    ; 2 uses
  %.not.i.i = icmp eq ptr %.08.i9.i.i, null
  br i1 %.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !172, !noalias !184
  %i.l = ptrtoint ptr %.08.i9.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.n, ptr %i.o, align 8, !tbaa !173, !noalias !184
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !165, !noalias !184
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !166, !noalias !184
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.s, ptr %3, align 8, !tbaa !174, !alias.scope !184
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !165, !noalias !184 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 7 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.x = load i64, ptr %i.w, align 8, !tbaa !173, !noalias !184 ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.t, ptr %3, align 8, !tbaa !165, !alias.scope !184
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !166, !noalias !184
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !166, !alias.scope !184
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !173, !noalias !184
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.f
  %i.ab = phi i64 [ %i.x, %bb.f ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !173, !alias.scope !184
  store ptr %i.u, ptr %i.r, align 8, !tbaa !165, !noalias !184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ac, i8 0, i64 9, i1 false), !noalias !184
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.f, ptr noundef nonnull %i.u, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.af = load ptr, ptr %3, align 8, !tbaa !165, !alias.scope !184 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.s
  br i1 %i.ag, label %.body, label %.body.sink.split

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ah = invoke noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.h unwind label %bb.l       ; 2 uses

bb.h:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ai = load ptr, ptr %3, align 8, !tbaa !165   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.s
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ak = load i64, ptr %i.s, align 8, !tbaa !166
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.am = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.am, ptr %2, align 8, !tbaa !162
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ao = getelementptr i8, ptr %i.am, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %2, i64 %i.ap
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !162
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8, !tbaa !162
  %i.ar = load ptr, ptr %i.r, align 8, !tbaa !165 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.u
  br i1 %i.as, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = load i64, ptr %i.u, align 8, !tbaa !166
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #16
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8, !tbaa !162
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.av) #14
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.aw) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br i1 %i.b, label %bb.i, label %_ZN10z3_log_ctxD2Ev.exit, !prof !163

bb.i:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.j:                                             ; preds = %bb.c
  %i.ax = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.n

bb.k:                                             ; preds = %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.m

bb.l:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.ba = load ptr, ptr %3, align 8, !tbaa !165   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.s
  br i1 %i.bb, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.l, %bb.g
  %.sink = phi ptr [ %i.af, %bb.g ], [ %i.ba, %bb.l ]
  %.pn.ph = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %i.az, %bb.l ]
  %i.bc = load i64, ptr %i.s, align 8, !tbaa !166
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bd) #16
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.l, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %i.az, %bb.l ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.m

bb.m:                                             ; preds = %.body, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ay, %bb.k ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #14
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.m ], [ %i.ax, %bb.j ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %.3 = extractvalue { ptr, i32 } %.pn.pn.pn, 1   ; 2 uses
  br i1 %i.b, label %bb.o, label %_ZN10z3_log_ctxD2Ev.exit24, !prof !164

bb.o:                                             ; preds = %.thread, %bb.n
  %.332 = phi i32 [ %.328, %.thread ], [ %.3, %bb.n ]
  %.pn.pn.pn.pn30 = phi { ptr, i32 } [ %i.c, %.thread ], [ %.pn.pn.pn, %bb.n ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit24

_ZN10z3_log_ctxD2Ev.exit24:                       ; preds = %bb.n, %bb.o
  %.331 = phi i32 [ %.3, %bb.n ], [ %.332, %bb.o ]
  %.pn.pn.pn.pn29 = phi { ptr, i32 } [ %.pn.pn.pn, %bb.n ], [ %.pn.pn.pn.pn30, %bb.o ] ; 2 uses
  %i.be = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #14
  %i.bf = icmp eq i32 %.331, %i.be
  br i1 %i.bf, label %bb.p, label %bb.s

bb.p:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit24
  %.314 = extractvalue { ptr, i32 } %.pn.pn.pn.pn29, 0
  %i.bg = call ptr @__cxa_begin_catch(ptr %.314) #14
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bg)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.i, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.q
  %.016 = phi ptr [ @.str, %bb.q ], [ %i.ah, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %i.ah, %bb.i ]
  ret ptr %.016

bb.s:                                             ; preds = %bb.r, %_ZN10z3_log_ctxD2Ev.exit24
  %.merged = phi { ptr, i32 } [ %.pn.pn.pn.pn29, %_ZN10z3_log_ctxD2Ev.exit24 ], [ %i.bh, %bb.r ]
  resume { ptr, i32 } %.merged

bb.t:                                             ; preds = %bb.r
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #15
  unreachable
}

declare void @_Z23log_Z3_params_to_stringP11_Z3_contextP10_Z3_params(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare void @_ZNK10params_ref7displayERSo(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #6 align 2

; Function Attrs: mustprogress uwtable
define void @Z3_params_validate(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@Z3_param_descrs_get_documentation:bb.a
  ret ptr %.119

bb.p:                                             ; preds = %bb.o, %_ZN10z3_log_ctxD2Ev.exit23
  %.merged = phi { ptr, i32 } [ %.pn.pn, %_ZN10z3_log_ctxD2Ev.exit23 ], [ %i.l, %bb.o ]
  resume { ptr, i32 } %.merged

bb.q:                                             ; preds = %bb.o
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #15
  unreachable
}

declare void @_Z37log_Z3_param_descrs_get_documentationP11_Z3_contextP16_Z3_param_descrsP10_Z3_symbol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK12param_descrs9get_descrERK6symbol(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @Z3_param_descrs_to_string(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 35 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.d = trunc i8 %i.c to i1                      ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z29log_Z3_param_descrs_to_stringP11_Z3_contextP16_Z3_param_descrs(ptr noundef %0, ptr noundef %1)
          to label %bb.c unwind label %.thread

.thread:                                          ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %.451 = extractvalue { ptr, i32 } %i.e, 1
  br label %bb.x

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.f, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 40, ptr %i.b, align 1, !tbaa !166
  %i.g = load ptr, ptr %2, align 8, !tbaa !162
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !198
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.f:                                             ; preds = %bb.d
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext 40)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.p = invoke noundef i32 @_ZNK12param_descrs4sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.preheader:                                       ; preds = %bb.g
  %.not57 = icmp eq i32 %i.p, 0
  br i1 %.not57, label %._crit_edge, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel: ; preds = %.preheader
  %i.q = invoke ptr @_ZNK12param_descrs14get_param_nameEj(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i32 noundef 0)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.s = and i64 %i.r, 7
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %.noexc42.peel unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc42.peel:                                    ; preds = %bb.i
  %i.v = lshr i64 %i.r, 3
  %i.w = trunc i64 %i.v to i32
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.w)
          to label %_ZlsRSo6symbol.exit.peel unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.j:                                             ; preds = %bb.h
  %.not.i39.peel = icmp eq ptr %i.q, null
  br i1 %.not.i39.peel, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.peel.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.peel

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.peel: ; preds = %bb.j
  %i.y = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #14
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.peel.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.peel.invoke: ; preds = %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.peel
  %i.z = phi ptr [ %i.q, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.peel ], [ @.str.2, %bb.j ]
  %i.aa = phi i64 [ %i.y, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.peel ], [ 4, %bb.j ]
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.z, i64 noundef %i.aa)
          to label %_ZlsRSo6symbol.exit.peel unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZlsRSo6symbol.exit.peel:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.peel.invoke, %.noexc42.peel
  %exitcond.peel.not = icmp eq i32 %i.p, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph.peel.next

._crit_edge:                                      ; preds = %_ZlsRSo6symbol.exit, %_ZlsRSo6symbol.exit.peel, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 41, ptr %i.a, align 1, !tbaa !166
  %i.ac = load ptr, ptr %2, align 8, !tbaa !162
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !198
  %.not.i32 = icmp eq i64 %i.ah, 0
  br i1 %.not.i32, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.l:                                             ; preds = %._crit_edge
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext 41)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.m:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.w

.lr.ph.peel.next:                                 ; preds = %_ZlsRSo6symbol.exit.peel, %_ZlsRSo6symbol.exit
  %.01756 = phi i32 [ %i.ay, %_ZlsRSo6symbol.exit ], [ 1, %_ZlsRSo6symbol.exit.peel ] ; 2 uses
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.1, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %.lr.ph.peel.next, %bb.p, %.noexc42, %.invoke, %bb.g, %bb.e, %bb.f, %bb.k, %bb.l, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.peel.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel, %bb.i, %.noexc42.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %.loopexit.split-lp

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %.lr.ph.peel.next
  %i.am = invoke ptr @_ZNK12param_descrs14get_param_nameEj(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i32 noundef %.01756)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.an = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ao = and i64 %i.an, 7
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.not.i39 = icmp eq ptr %i.am, null
  br i1 %.not.i39, label %.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.o
  %i.aq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.am) #14
  br label %.invoke

.invoke:                                          ; preds = %bb.o, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.ar = phi ptr [ %i.am, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ @.str.2, %bb.o ]
  %i.as = phi i64 [ %i.aq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ 4, %bb.o ]
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.ar, i64 noundef %i.as)
          to label %_ZlsRSo6symbol.exit unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.p:                                             ; preds = %bb.n
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc42:                                         ; preds = %bb.p
  %i.av = lshr i64 %i.an, 3
  %i.aw = trunc i64 %i.av to i32
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.aw)
          to label %_ZlsRSo6symbol.exit unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZlsRSo6symbol.exit:                              ; preds = %.invoke, %.noexc42
  %i.ay = add nuw i32 %.01756, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.ay, %i.p
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.peel.next, !llvm.loop !187

bb.q:                                             ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !170, !noalias !203 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i: ; preds = %bb.q
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !171, !noalias !203 ; 2 uses
  %6 = icmp ugt ptr %i.bb, %5
  %.08.i9.i.i = select i1 %6, ptr %i.bb, ptr %5   ; 2 uses
  %.not.i.i = icmp eq ptr %.08.i9.i.i, null
  br i1 %.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !172, !noalias !203
  %i.bf = ptrtoint ptr %.08.i9.i.i to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !173, !noalias !203
  %i.bj = load ptr, ptr %i.bc, align 8, !tbaa !165, !noalias !203
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  store i8 0, ptr %i.bk, align 1, !tbaa !166, !noalias !203
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i, %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.bm, ptr %3, align 8, !tbaa !174, !alias.scope !203
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !165, !noalias !203 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 7 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.r:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !173, !noalias !203 ; 3 uses
  %i.bs = icmp ult i64 %i.br, 16
  call void @llvm.assume(i1 %i.bs)
  %i.bt = add nuw nsw i64 %i.br, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bm, ptr noundef nonnull align 8 dereferenceable(1) %i.bo, i64 %i.bt, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.bn, ptr %3, align 8, !tbaa !165, !alias.scope !203
  %i.bu = load i64, ptr %i.bo, align 8, !tbaa !166, !noalias !203
  store i64 %i.bu, ptr %i.bm, align 8, !tbaa !166, !alias.scope !203
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !173, !noalias !203
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.r
  %i.bv = phi i64 [ %i.br, %bb.r ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bv, ptr %i.bx, align 8, !tbaa !173, !alias.scope !203
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !165, !noalias !203
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bw, i8 0, i64 9, i1 false), !noalias !203
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.az, ptr noundef nonnull %i.bo, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.bz = load ptr, ptr %3, align 8, !tbaa !165, !alias.scope !203 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.bm
  br i1 %i.ca, label %.body, label %.body.sink.split

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.cb = invoke noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.t unwind label %bb.v       ; 2 uses

bb.t:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cc = load ptr, ptr %3, align 8, !tbaa !165   ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.bm
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  %i.ce = load i64, ptr %i.bm, align 8, !tbaa !166
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.cg = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cg, ptr %2, align 8, !tbaa !162
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ci = getelementptr i8, ptr %i.cg, i64 -24
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds i8, ptr %2, i64 %i.cj
  store ptr %i.ch, ptr %i.ck, align 8, !tbaa !162
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.az, align 8, !tbaa !162
  %i.cl = load ptr, ptr %i.bl, align 8, !tbaa !165 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bo
  br i1 %i.cm, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cn = load i64, ptr %i.bo, align 8, !tbaa !166
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #16
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.az, align 8, !tbaa !162
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cp) #14
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cq) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br i1 %i.d, label %bb.u, label %_ZN10z3_log_ctxD2Ev.exit, !prof !163

bb.u:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.v:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.cs = load ptr, ptr %3, align 8, !tbaa !165   ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.bm
  br i1 %i.ct, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.v, %bb.s
  %.sink = phi ptr [ %i.bz, %bb.s ], [ %i.cs, %bb.v ]
  %.pn.ph = phi { ptr, i32 } [ %i.by, %bb.s ], [ %i.cr, %bb.v ]
  %i.cu = load i64, ptr %i.bm, align 8, !tbaa !166
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cv) #16
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.v, %bb.s
  %.pn = phi { ptr, i32 } [ %i.by, %bb.s ], [ %i.cr, %bb.v ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %.pn26.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #14
  br label %bb.w

bb.w:                                             ; preds = %bb.m, %.loopexit.split-lp
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %.loopexit.split-lp ], [ %i.ak, %bb.m ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %.4 = extractvalue { ptr, i32 } %.pn26.pn.pn, 1 ; 2 uses
  br i1 %i.d, label %bb.x, label %_ZN10z3_log_ctxD2Ev.exit47, !prof !164

bb.x:                                             ; preds = %.thread, %bb.w
  %.455 = phi i32 [ %.451, %.thread ], [ %.4, %bb.w ]
  %.pn26.pn.pn.pn53 = phi { ptr, i32 } [ %i.e, %.thread ], [ %.pn26.pn.pn, %bb.w ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit47

_ZN10z3_log_ctxD2Ev.exit47:                       ; preds = %bb.w, %bb.x
  %.454 = phi i32 [ %.4, %bb.w ], [ %.455, %bb.x ]
  %.pn26.pn.pn.pn52 = phi { ptr, i32 } [ %.pn26.pn.pn, %bb.w ], [ %.pn26.pn.pn.pn53, %bb.x ] ; 2 uses
  %i.cw = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #14
  %i.cx = icmp eq i32 %.454, %i.cw
  br i1 %i.cx, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit47
  %.423 = extractvalue { ptr, i32 } %.pn26.pn.pn.pn52, 0
  %i.cy = call ptr @__cxa_begin_catch(ptr %.423) #14
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cy)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ab unwind label %bb.ac

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.u, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.z
  %.0 = phi ptr [ @.str, %bb.z ], [ %i.cb, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %i.cb, %bb.u ]
  ret ptr %.0

bb.ab:                                            ; preds = %bb.aa, %_ZN10z3_log_ctxD2Ev.exit47
  %.merged = phi { ptr, i32 } [ %.pn26.pn.pn.pn52, %_ZN10z3_log_ctxD2Ev.exit47 ], [ %i.cz, %bb.aa ]
  resume { ptr, i32 } %.merged

bb.ac:                                            ; preds = %bb.aa
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #15
  unreachable
}

declare void @_Z29log_Z3_param_descrs_to_stringP11_Z3_contextP16_Z3_param_descrs(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN3api6objectC2ERNS_7contextE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(3088)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN13Z3_params_refD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13Z3_params_ref, i64 16), ptr %0, align 8, !tbaa !162
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #14
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN13Z3_params_refD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13Z3_params_ref, i64 16), ptr %0, align 8, !tbaa !162
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #14, !inline_history !204
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #16
  ret void
}

; Function Attrs: nounwind
declare void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2
end_hunk_1
