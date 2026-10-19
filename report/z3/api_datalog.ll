Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/api_datalog?download=true
inline.NumInlined: 999
inline.NumDeleted: 315
begin_hunk_0_@Z3_fixedpoint_get_cover_delta:bb.a

bb.p:                                             ; preds = %bb.o
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.s

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.l, %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %bb.p
  %.021 = phi ptr [ null, %bb.p ], [ %i.i, %_ZN7obj_refI4expr11ast_managerED2Ev.exit ], [ %i.i, %bb.l ]
  ret ptr %.021

bb.r:                                             ; preds = %bb.q, %_ZN10z3_log_ctxD2Ev.exit25
  %.merged = phi { ptr, i32 } [ %.pn.pn.pn31, %_ZN10z3_log_ctxD2Ev.exit25 ], [ %i.x, %bb.q ]
  resume { ptr, i32 } %.merged

bb.s:                                             ; preds = %bb.q
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #21
  unreachable
}

declare void @_Z33log_Z3_fixedpoint_get_cover_deltaP11_Z3_contextP14_Z3_fixedpointiP13_Z3_func_decl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !399    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !400, !nonnull !197, !align !202
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !188
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4, !tbaa !188
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.c, ptr noundef nonnull %i.a)
          to label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit unwind label %bb.d

_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit:   ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #21
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @Z3_fixedpoint_add_cover(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  invoke void @_Z27log_Z3_fixedpoint_add_coverP11_Z3_contextP14_Z3_fixedpointiP13_Z3_func_declP7_Z3_ast(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4)
          to label %bb.e unwind label %.thread

.thread:                                          ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.d = extractvalue { ptr, i32 } %i.c, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 3 uses
  %i.f = extractvalue { ptr, i32 } %i.e, 1        ; 2 uses
  br i1 %i.b, label %bb.d, label %_ZN10z3_log_ctxD2Ev.exit, !prof !163

bb.d:                                             ; preds = %.thread, %bb.c
  %i.g = phi i32 [ %i.d, %.thread ], [ %i.f, %bb.c ]
  %i.h = phi { ptr, i32 } [ %i.c, %.thread ], [ %i.e, %bb.c ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.c, %bb.d
  %i.i = phi i32 [ %i.f, %bb.c ], [ %i.g, %bb.d ]
  %i.j = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.k = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #20
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.g, label %bb.j

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.m, align 8, !tbaa !162
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !187
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  invoke void @_ZN7datalog7context9add_coverEiP9func_declP4expr(ptr noundef nonnull align 8 dereferenceable(3028) %i.p, i32 noundef %2, ptr noundef %3, ptr noundef %4)
          to label %_ZN3api18fixedpoint_context9add_coverEiP9func_declP4expr.exit unwind label %bb.c

_ZN3api18fixedpoint_context9add_coverEiP9func_declP4expr.exit: ; preds = %bb.e
  br i1 %i.b, label %bb.f, label %_ZN10z3_log_ctxD2Ev.exit17, !prof !172

bb.f:                                             ; preds = %_ZN3api18fixedpoint_context9add_coverEiP9func_declP4expr.exit
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit17

bb.g:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit
  %i.q = extractvalue { ptr, i32 } %i.j, 0
  %i.r = tail call ptr @__cxa_begin_catch(ptr %i.q) #20
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit17

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

_ZN10z3_log_ctxD2Ev.exit17:                       ; preds = %bb.f, %_ZN3api18fixedpoint_context9add_coverEiP9func_declP4expr.exit, %bb.h
  ret void

bb.j:                                             ; preds = %bb.i, %_ZN10z3_log_ctxD2Ev.exit
  %.merged = phi { ptr, i32 } [ %i.j, %_ZN10z3_log_ctxD2Ev.exit ], [ %i.s, %bb.i ]
  resume { ptr, i32 } %.merged

bb.k:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #21
  unreachable
}

declare void @_Z27log_Z3_fixedpoint_add_coverP11_Z3_contextP14_Z3_fixedpointiP13_Z3_func_declP7_Z3_ast(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @Z3_fixedpoint_get_help(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %3 = alloca %class.param_descrs, align 8        ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z26log_Z3_fixedpoint_get_helpP11_Z3_contextP14_Z3_fixedpoint(ptr noundef %0, ptr noundef %1)
          to label %bb.c unwind label %.thread

.thread:                                          ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %.430 = extractvalue { ptr, i32 } %i.c, 1
  br label %bb.r

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.d, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZN12param_descrsC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  invoke void @_ZN7datalog7context14collect_paramsER12param_descrs(ptr noundef nonnull align 8 dereferenceable(3028) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN3api18fixedpoint_context20collect_param_descrsER12param_descrs.exit unwind label %bb.m

_ZN3api18fixedpoint_context20collect_param_descrsER12param_descrs.exit: ; preds = %bb.e
  invoke void @_ZNK12param_descrs7displayERSojbb(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %_ZN3api18fixedpoint_context20collect_param_descrsER12param_descrs.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !526)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !212, !noalias !527 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %bb.f
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %6 = load ptr, ptr %i.k, align 8, !tbaa !528, !noalias !527 ; 2 uses
  %7 = icmp ugt ptr %i.j, %6
  %.08.i.i.i = select i1 %7, ptr %i.j, ptr %6
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !213, !noalias !527
  %i.n = ptrtoint ptr %.08.i.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.p, ptr %i.q, align 8, !tbaa !206, !noalias !527
  %i.r = load ptr, ptr %5, align 8, !tbaa !208, !noalias !527
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !207, !noalias !527
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !205, !alias.scope !527
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !208, !noalias !527 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 7 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.z = load i64, ptr %i.y, align 8, !tbaa !206, !noalias !527 ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.v, ptr %4, align 8, !tbaa !208, !alias.scope !527
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !207, !noalias !527
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !207, !alias.scope !527
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !206, !noalias !527
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g
  %i.ad = phi i64 [ %i.z, %bb.g ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !206, !alias.scope !527
  store ptr %i.w, ptr %i.t, align 8, !tbaa !208, !noalias !527
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ae, i8 0, i64 9, i1 false), !noalias !527
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.h, ptr noundef nonnull %i.w, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.ah = load ptr, ptr %4, align 8, !tbaa !208, !alias.scope !527 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.u
  br i1 %i.ai, label %.body, label %.body.sink.split

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.aj = invoke noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.i unwind label %bb.n       ; 2 uses

bb.i:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ak = load ptr, ptr %4, align 8, !tbaa !208   ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.u
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.am = load i64, ptr %i.u, align 8, !tbaa !207
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZN12param_descrsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ao = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ao, ptr %2, align 8, !tbaa !176
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aq = getelementptr i8, ptr %i.ao, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %2, i64 %i.ar
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8, !tbaa !176
  %i.at = load ptr, ptr %i.t, align 8, !tbaa !208 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.w
  br i1 %i.au, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = load i64, ptr %i.w, align 8, !tbaa !207
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #22
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8, !tbaa !176
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ax) #20
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ay) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %i.b, label %bb.j, label %_ZN10z3_log_ctxD2Ev.exit, !prof !172

bb.j:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.k:                                             ; preds = %bb.c
  %i.az = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.q

bb.l:                                             ; preds = %bb.d
  %i.ba = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.p

bb.m:                                             ; preds = %bb.e, %_ZN3api18fixedpoint_context20collect_param_descrsER12param_descrs.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.o

bb.n:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.bd = load ptr, ptr %4, align 8, !tbaa !208   ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.u
  br i1 %i.be, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.n, %bb.h
  %.sink = phi ptr [ %i.ah, %bb.h ], [ %i.bd, %bb.n ]
  %.pn.ph = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %i.bc, %bb.n ]
  %i.bf = load i64, ptr %i.u, align 8, !tbaa !207
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bg) #22
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.n, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %i.bc, %bb.n ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.o

bb.o:                                             ; preds = %.body, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bb, %bb.m ]
  call void @_ZN12param_descrsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.o ], [ %i.ba, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #20
  br label %bb.q

bb.q:                                             ; preds = %bb.k, %bb.p
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.p ], [ %i.az, %bb.k ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.4 = extractvalue { ptr, i32 } %.pn.pn.pn.pn, 1 ; 2 uses
  br i1 %i.b, label %bb.r, label %_ZN10z3_log_ctxD2Ev.exit26, !prof !163

bb.r:                                             ; preds = %.thread, %bb.q
  %.434 = phi i32 [ %.430, %.thread ], [ %.4, %bb.q ]
  %.pn.pn.pn.pn.pn32 = phi { ptr, i32 } [ %i.c, %.thread ], [ %.pn.pn.pn.pn, %bb.q ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit26

_ZN10z3_log_ctxD2Ev.exit26:                       ; preds = %bb.q, %bb.r
  %.433 = phi i32 [ %.4, %bb.q ], [ %.434, %bb.r ]
  %.pn.pn.pn.pn.pn31 = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.q ], [ %.pn.pn.pn.pn.pn32, %bb.r ] ; 2 uses
  %i.bh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #20
  %i.bi = icmp eq i32 %.433, %i.bh
  br i1 %i.bi, label %bb.s, label %bb.v

bb.s:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit26
  %.415 = extractvalue { ptr, i32 } %.pn.pn.pn.pn.pn31, 0
  %i.bj = call ptr @__cxa_begin_catch(ptr %.415) #20
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bj)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.v unwind label %bb.w

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.j, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.t
  %.017 = phi ptr [ @.str.8, %bb.t ], [ %i.aj, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %i.aj, %bb.j ]
  ret ptr %.017

bb.v:                                             ; preds = %bb.u, %_ZN10z3_log_ctxD2Ev.exit26
  %.merged = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn31, %_ZN10z3_log_ctxD2Ev.exit26 ], [ %i.bk, %bb.u ]
  resume { ptr, i32 } %.merged

bb.w:                                             ; preds = %bb.u
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #21
  unreachable
}

declare void @_Z26log_Z3_fixedpoint_get_helpP11_Z3_contextP14_Z3_fixedpoint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare void @_ZN12param_descrsC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2
end_hunk_0
