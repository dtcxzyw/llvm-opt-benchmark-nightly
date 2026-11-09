Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/api_opt?download=true
inline.NumInlined: 951
inline.NumDeleted: 329
begin_hunk_0_@Z3_optimize_get_upper_as_vector:bb.a
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.x

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.r, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %bb.u
  %.026 = phi ptr [ null, %bb.u ], [ %i.l, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit ], [ %i.l, %bb.r ]
  ret ptr %.026

bb.w:                                             ; preds = %bb.v, %_ZN10z3_log_ctxD2Ev.exit34
  %.merged = phi { ptr, i32 } [ %.pn.pn.pn.pn42, %_ZN10z3_log_ctxD2Ev.exit34 ], [ %i.bo, %bb.v ]
  resume { ptr, i32 } %.merged

bb.x:                                             ; preds = %bb.v
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #21
  unreachable
}

declare void @_Z35log_Z3_optimize_get_upper_as_vectorP11_Z3_contextP12_Z3_optimizej(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @Z3_optimize_to_string(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z25log_Z3_optimize_to_stringP11_Z3_contextP12_Z3_optimize(ptr noundef %0, ptr noundef %1)
          to label %bb.c unwind label %.thread

.thread:                                          ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %.124 = extractvalue { ptr, i32 } %i.c, 1
  br label %bb.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.d, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !171
  invoke void @_ZN3opt7context9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(840) %i.f)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = invoke noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.h       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %2, align 8, !tbaa !202    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.k = load i64, ptr %i.i, align 8, !tbaa !203
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %i.b, label %bb.f, label %_ZN10z3_log_ctxD2Ev.exit, !prof !173

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18

bb.h:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !202    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.h
  %i.r = load i64, ptr %i.p, align 8, !tbaa !203
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18: ; preds = %bb.h, %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  %.pn = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.n, %bb.h ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.1 = extractvalue { ptr, i32 } %.pn, 1         ; 2 uses
  br i1 %i.b, label %bb.i, label %_ZN10z3_log_ctxD2Ev.exit20, !prof !174

bb.i:                                             ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18
  %.128 = phi i32 [ %.124, %.thread ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18 ]
  %.pn.pn26 = phi { ptr, i32 } [ %i.c, %.thread ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18 ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit20

_ZN10z3_log_ctxD2Ev.exit20:                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18, %bb.i
  %.127 = phi i32 [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18 ], [ %.128, %bb.i ]
  %.pn.pn25 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18 ], [ %.pn.pn26, %bb.i ] ; 2 uses
  %i.t = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #20
  %i.u = icmp eq i32 %.127, %i.t
  br i1 %i.u, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit20
  %.112 = extractvalue { ptr, i32 } %.pn.pn25, 0
  %i.v = call ptr @__cxa_begin_catch(ptr %.112) #20
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.k
  %.014 = phi ptr [ @.str.10, %bb.k ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %bb.f ]
  ret ptr %.014

bb.m:                                             ; preds = %bb.l, %_ZN10z3_log_ctxD2Ev.exit20
  %.merged = phi { ptr, i32 } [ %.pn.pn25, %_ZN10z3_log_ctxD2Ev.exit20 ], [ %i.w, %bb.l ]
  resume { ptr, i32 } %.merged

bb.n:                                             ; preds = %bb.l
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #21
  unreachable
}

declare void @_Z25log_Z3_optimize_to_stringP11_Z3_contextP12_Z3_optimize(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN3opt7context9to_stringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(840)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @Z3_optimize_get_help(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %3 = alloca %class.param_descrs, align 8        ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z24log_Z3_optimize_get_helpP11_Z3_contextP12_Z3_optimize(ptr noundef %0, ptr noundef %1)
          to label %bb.c unwind label %.thread

.thread:                                          ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %.430 = extractvalue { ptr, i32 } %i.c, 1
  br label %bb.s

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.d, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZN12param_descrsC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN3opt7context20collect_param_descrsER12param_descrs(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK12param_descrs7displayERSojbb(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !228, !noalias !279 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i: ; preds = %bb.g
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %6 = load ptr, ptr %5, align 8, !tbaa !280, !noalias !279 ; 2 uses
  %7 = icmp ugt ptr %i.g, %6
  %.08.i9.i.i = select i1 %7, ptr %i.g, ptr %6    ; 2 uses
  %.not.i.i = icmp eq ptr %.08.i9.i.i, null
  br i1 %.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !229, !noalias !279
  %i.k = ptrtoint ptr %.08.i9.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.m, ptr %i.n, align 8, !tbaa !230, !noalias !279
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !202, !noalias !279
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !203, !noalias !279
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.r, ptr %4, align 8, !tbaa !231, !alias.scope !279
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !202, !noalias !279 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 7 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.w = load i64, ptr %i.v, align 8, !tbaa !230, !noalias !279 ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.s, ptr %4, align 8, !tbaa !202, !alias.scope !279
  %i.z = load i64, ptr %i.t, align 8, !tbaa !203, !noalias !279
  store i64 %i.z, ptr %i.r, align 8, !tbaa !203, !alias.scope !279
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !230, !noalias !279
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.h
  %i.aa = phi i64 [ %i.w, %bb.h ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !230, !alias.scope !279
  store ptr %i.t, ptr %i.q, align 8, !tbaa !202, !noalias !279
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ab, i8 0, i64 9, i1 false), !noalias !279
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.e, ptr noundef nonnull %i.t, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.ae = load ptr, ptr %4, align 8, !tbaa !202, !alias.scope !279 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.r
  br i1 %i.af, label %.body, label %.body.sink.split

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ag = invoke noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.j unwind label %bb.o       ; 2 uses

bb.j:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ah = load ptr, ptr %4, align 8, !tbaa !202   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.r
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.aj = load i64, ptr %i.r, align 8, !tbaa !203
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZN12param_descrsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.al = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.al, ptr %2, align 8, !tbaa !166
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.an = getelementptr i8, ptr %i.al, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %2, i64 %i.ao
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !166
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.e, align 8, !tbaa !166
  %i.aq = load ptr, ptr %i.q, align 8, !tbaa !202 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.t
  br i1 %i.ar, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = load i64, ptr %i.t, align 8, !tbaa !203
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #22
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.e, align 8, !tbaa !166
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.au) #20
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.av) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %i.b, label %bb.k, label %_ZN10z3_log_ctxD2Ev.exit, !prof !173

bb.k:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.l:                                             ; preds = %bb.c
  %i.aw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.r

bb.m:                                             ; preds = %bb.d
  %i.ax = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.q

bb.n:                                             ; preds = %bb.f, %bb.e
  %i.ay = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.p

bb.o:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.ba = load ptr, ptr %4, align 8, !tbaa !202   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.r
  br i1 %i.bb, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.o, %bb.i
  %.sink = phi ptr [ %i.ae, %bb.i ], [ %i.ba, %bb.o ]
  %.pn.ph = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.az, %bb.o ]
  %i.bc = load i64, ptr %i.r, align 8, !tbaa !203
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bd) #22
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.o, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.az, %bb.o ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.p

bb.p:                                             ; preds = %.body, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ay, %bb.n ]
  call void @_ZN12param_descrsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.p ], [ %i.ax, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #20
  br label %bb.r

bb.r:                                             ; preds = %bb.l, %bb.q
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.q ], [ %i.aw, %bb.l ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.4 = extractvalue { ptr, i32 } %.pn.pn.pn.pn, 1 ; 2 uses
  br i1 %i.b, label %bb.s, label %_ZN10z3_log_ctxD2Ev.exit26, !prof !174

bb.s:                                             ; preds = %.thread, %bb.r
  %.434 = phi i32 [ %.430, %.thread ], [ %.4, %bb.r ]
  %.pn.pn.pn.pn.pn32 = phi { ptr, i32 } [ %i.c, %.thread ], [ %.pn.pn.pn.pn, %bb.r ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit26

_ZN10z3_log_ctxD2Ev.exit26:                       ; preds = %bb.r, %bb.s
  %.433 = phi i32 [ %.4, %bb.r ], [ %.434, %bb.s ]
  %.pn.pn.pn.pn.pn31 = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.r ], [ %.pn.pn.pn.pn.pn32, %bb.s ] ; 2 uses
  %i.be = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #20
  %i.bf = icmp eq i32 %.433, %i.be
  br i1 %i.bf, label %bb.t, label %bb.w

bb.t:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit26
  %.415 = extractvalue { ptr, i32 } %.pn.pn.pn.pn.pn31, 0
  %i.bg = call ptr @__cxa_begin_catch(ptr %.415) #20
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bg)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.x

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.k, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.u
  %.017 = phi ptr [ @.str.10, %bb.u ], [ %i.ag, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %i.ag, %bb.k ]
  ret ptr %.017

bb.w:                                             ; preds = %bb.v, %_ZN10z3_log_ctxD2Ev.exit26
  %.merged = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn31, %_ZN10z3_log_ctxD2Ev.exit26 ], [ %i.bh, %bb.v ]
  resume { ptr, i32 } %.merged

bb.x:                                             ; preds = %bb.v
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #21
  unreachable
}

declare void @_Z24log_Z3_optimize_get_helpP11_Z3_contextP12_Z3_optimize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare void @_ZNK12param_descrs7displayERSojbb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2
end_hunk_0
