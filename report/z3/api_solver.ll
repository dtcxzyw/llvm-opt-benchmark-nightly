Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/api_solver?download=true
inline.NumInlined: 2113
inline.NumDeleted: 710
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Z3_mk_simple_solver:bb.a
.body:                                            ; preds = %bb.f, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.k ], [ %i.i, %bb.f ] ; 3 uses
  %.2 = extractvalue { ptr, i32 } %eh.lpad-body, 1
  br i1 %i.b, label %bb.l, label %_ZN10z3_log_ctxD2Ev.exit, !prof !224

bb.l:                                             ; preds = %.body
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %.body, %bb.l
  %i.o = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #22
  %i.p = icmp eq i32 %.2, %i.o
  br i1 %i.p, label %bb.n, label %bb.q

bb.m:                                             ; preds = %bb.j
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit25

bb.n:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit
  %.219 = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %.219) #22
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit25

bb.p:                                             ; preds = %bb.n
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

_ZN10z3_log_ctxD2Ev.exit25:                       ; preds = %bb.m, %bb.i, %bb.o
  %.021 = phi ptr [ null, %bb.o ], [ %i.d, %bb.i ], [ %i.d, %bb.m ]
  ret ptr %.021

bb.q:                                             ; preds = %bb.p, %_ZN10z3_log_ctxD2Ev.exit
  %.merged = phi { ptr, i32 } [ %eh.lpad-body, %_ZN10z3_log_ctxD2Ev.exit ], [ %i.r, %bb.p ]
  resume { ptr, i32 } %.merged

bb.r:                                             ; preds = %bb.p
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #25
  unreachable
}

declare void @_Z23log_Z3_mk_simple_solverP11_Z3_context(ptr noundef) local_unnamed_addr #1

declare noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef) local_unnamed_addr #1

declare noundef ptr @_Z21mk_smt_solver_factoryv() local_unnamed_addr #1

declare void @_ZN3api7context11save_objectEPNS_6objectE(ptr noundef nonnull align 8 dereferenceable(3088), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL15init_solver_logP11_Z3_contextP10_Z3_solver(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %class.symbol, align 8              ; 4 uses
  %3 = alloca %struct.solver_params, align 8      ; 6 uses
  %4 = alloca %class.symbol, align 8              ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 28 uses
  %6 = alloca %class.symbol, align 8              ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = load atomic i8, ptr @_ZGVZL15init_solver_logP11_Z3_contextP10_Z3_solverE11g_thread_id acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d, !prof !407

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL15init_solver_logP11_Z3_contextP10_Z3_solverE11g_thread_id) #22
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @pthread_self() #26
  store i64 %i.e, ptr @_ZZL15init_solver_logP11_Z3_contextP10_Z3_solverE11g_thread_id.0, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZL15init_solver_logP11_Z3_contextP10_Z3_solverE11g_thread_id) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.f, ptr %3, align 8, !tbaa !226
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  call void @_ZN7gparams10get_moduleEPKc(ptr dead_on_unwind nonnull writable sret(%class.params_ref) align 8 %i.g, ptr noundef nonnull @.str.45)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.h = load ptr, ptr %3, align 8, !tbaa !228, !nonnull !33, !align !34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.17)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.d
  %i.i = invoke ptr @_ZNK10params_ref7get_symEPKcRKS_RK6symbol(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.35, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.s       ; 6 uses

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  store ptr %i.i, ptr %4, align 8
  %i.j = icmp eq ptr %i.i, null
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = and i64 %i.k, 7                          ; 2 uses
  %i.m = icmp eq i64 %i.l, 1
  %or.cond.i = or i1 %i.j, %i.m
  br i1 %or.cond.i, label %_ZNK6symbol19is_non_empty_stringEv.exit.thread, label %_ZNK6symbol19is_non_empty_stringEv.exit

_ZNK6symbol19is_non_empty_stringEv.exit:          ; preds = %bb.e
  %i.n = load i8, ptr %i.i, align 1, !tbaa !55
  %.not42 = icmp eq i8 %i.n, 0
  br i1 %.not42, label %_ZNK6symbol19is_non_empty_stringEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK6symbol19is_non_empty_stringEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !86
  %.not43 = icmp eq ptr %i.p, null
  br i1 %.not43, label %bb.g, label %_ZNK6symbol19is_non_empty_stringEv.exit.thread

bb.g:                                             ; preds = %bb.f
  %.b = load i1, ptr @_ZZL15init_solver_logP11_Z3_contextP10_Z3_solverE13g_is_threaded, align 1
  br i1 %.b, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.03.0.copyload = load i64, ptr @_ZZL15init_solver_logP11_Z3_contextP10_Z3_solverE11g_thread_id.0, align 8, !tbaa !229
  %i.q = tail call i64 @pthread_self() #26
  %i.r = icmp eq i64 %.sroa.03.0.copyload, %i.q
  br i1 %i.r, label %bb.y, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i1 true, ptr @_ZZL15init_solver_logP11_Z3_contextP10_Z3_solverE13g_is_threaded, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
          to label %bb.j unwind label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.s = icmp eq i64 %i.l, 0
  br i1 %i.s, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, label %bb.k

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  %i.t = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #22
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.i, i64 noundef %i.t)
          to label %_ZlsRSo6symbol.exit unwind label %bb.u ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.38, i64 noundef 2)
          to label %.noexc22 unwind label %bb.u   ; 0 uses

.noexc22:                                         ; preds = %bb.k
  %i.w = lshr i64 %i.k, 3
  %i.x = trunc i64 %i.w to i32
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %i.x)
          to label %_ZlsRSo6symbol.exit unwind label %bb.u ; 0 uses

_ZlsRSo6symbol.exit:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 45, ptr %i.a, align 1, !tbaa !55
  %i.z = load ptr, ptr %5, align 8, !tbaa !38
  %i.aa = getelementptr i8, ptr %i.z, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %5, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !408
  %.not.i24 = icmp eq i64 %i.ae, 0
  br i1 %.not.i24, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZlsRSo6symbol.exit
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.n unwind label %bb.u

bb.m:                                             ; preds = %_ZlsRSo6symbol.exit
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %5, i8 noundef signext 45)
          to label %bb.n unwind label %bb.u       ; 0 uses

bb.n:                                             ; preds = %bb.l, %bb.m
  %.0.i = phi ptr [ %i.af, %bb.l ], [ %5, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = tail call i64 @pthread_self() #26       ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef nonnull @.str.36, i64 noundef 36)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE.exit unwind label %bb.u ; 0 uses

bb.p:                                             ; preds = %bb.n
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, i64 noundef %i.ah)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE.exit unwind label %bb.u ; 0 uses

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !409)
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !410)
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !231, !noalias !411 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i: ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE.exit
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %10 = load ptr, ptr %9, align 8, !tbaa !232, !noalias !411 ; 2 uses
  %11 = icmp ugt ptr %i.an, %10
  %.08.i9.i.i = select i1 %11, ptr %i.an, ptr %10 ; 2 uses
  %.not.i.i = icmp eq ptr %.08.i9.i.i, null
  br i1 %.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !233, !noalias !411
  %i.ar = ptrtoint ptr %.08.i9.i.i to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i64 %i.at, ptr %i.au, align 8, !tbaa !54, !noalias !411
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !53, !noalias !411
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at
  store i8 0, ptr %i.aw, align 1, !tbaa !55, !noalias !411
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  store ptr %i.ay, ptr %7, align 8, !tbaa !51, !alias.scope !411
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !53, !noalias !411 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 7 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !54, !noalias !411 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.az, ptr %7, align 8, !tbaa !53, !alias.scope !411
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !55, !noalias !411
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !55, !alias.scope !411
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %5, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !54, !noalias !411
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.q
  %i.bh = phi i64 [ %i.bd, %bb.q ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !54, !alias.scope !411
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !53, !noalias !411
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bi, i8 0, i64 9, i1 false), !noalias !411
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.al, ptr noundef nonnull %i.ba, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %7, align 8, !tbaa !53, !alias.scope !411 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.ay
  br i1 %i.bm, label %.body, label %.body.sink.split

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.bn = load ptr, ptr %7, align 8, !tbaa !53
  invoke void @_ZN6symbolC2EPKc(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.bn)
          to label %_ZN6symbolC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.v

_ZN6symbolC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bo = load i64, ptr %6, align 8, !tbaa !223
  store i64 %i.bo, ptr %4, align 8, !tbaa !223
  %i.bp = load ptr, ptr %7, align 8, !tbaa !53    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.ay
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6symbolC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.br = load i64, ptr %i.ay, align 8, !tbaa !55
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6symbolC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bt = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bt, ptr %5, align 8, !tbaa !38
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bv = getelementptr i8, ptr %i.bt, i64 -24
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds i8, ptr %5, i64 %i.bw
  store ptr %i.bu, ptr %i.bx, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.al, align 8, !tbaa !38
  %i.by = load ptr, ptr %i.ax, align 8, !tbaa !53 ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.ba
  br i1 %i.bz, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ca = load i64, ptr %i.ba, align 8, !tbaa !55
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #24
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.al, align 8, !tbaa !38
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cc) #22
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cd) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.y

bb.s:                                             ; preds = %.noexc, %bb.d, %bb.y
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.t:                                             ; preds = %bb.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.u:                                             ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %.noexc22, %bb.k, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %7, align 8, !tbaa !53    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ay
  br i1 %i.cj, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.v, %bb.r
  %.sink = phi ptr [ %i.bl, %bb.r ], [ %i.ci, %bb.v ]
  %.pn.ph = phi { ptr, i32 } [ %i.bk, %bb.r ], [ %i.ch, %bb.v ]
  %i.ck = load i64, ptr %i.ay, align 8, !tbaa !55
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cl) #24
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.v, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.r ], [ %i.ch, %bb.v ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.w

bb.w:                                             ; preds = %.body, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.cg, %bb.u ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.w ], [ %i.cf, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.ag

bb.y:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.h
  %i.cm = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 1296)
          to label %bb.z unwind label %bb.s       ; 3 uses

bb.z:                                             ; preds = %bb.y
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZNK6symbol3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN14solver2smt2_ppC2ER11ast_managerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1296) %i.cm, ptr noundef nonnull align 8 dereferenceable(952) %i.co, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.cp = load ptr, ptr %i.o, align 8, !tbaa !86  ; 4 uses
  %.not.i34 = icmp eq ptr %i.cp, %i.cm
  br i1 %.not.i34, label %_ZN10scoped_ptrI14solver2smt2_ppEaSEPS0_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %_Z7deallocI14solver2smt2_ppEvPT_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN14solver2smt2_ppD2Ev(ptr noundef nonnull align 8 dead_on_return(1296) dereferenceable(1296) %i.cp) #22
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cp)
          to label %_Z7deallocI14solver2smt2_ppEvPT_.exit.i unwind label %bb.af

_Z7deallocI14solver2smt2_ppEvPT_.exit.i:          ; preds = %bb.ad, %bb.ac
  store ptr %i.cm, ptr %i.o, align 8, !tbaa !86
  br label %_ZN10scoped_ptrI14solver2smt2_ppEaSEPS0_.exit

_ZN10scoped_ptrI14solver2smt2_ppEaSEPS0_.exit:    ; preds = %_Z7deallocI14solver2smt2_ppEvPT_.exit.i, %bb.ab
  %i.cr = load ptr, ptr %8, align 8, !tbaa !53    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZN10scoped_ptrI14solver2smt2_ppEaSEPS0_.exit
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !55
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZN10scoped_ptrI14solver2smt2_ppEaSEPS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %_ZNK6symbol19is_non_empty_stringEv.exit.thread

bb.ae:                                            ; preds = %bb.z
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

bb.af:                                            ; preds = %bb.ad, %bb.aa
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = load ptr, ptr %8, align 8, !tbaa !53    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.af
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !55
end_hunk_0
begin_hunk_1_@Z3_mk_solver:bb.a
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z16log_Z3_mk_solverP11_Z3_context(ptr noundef %0)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.c, align 8, !tbaa !221
  %i.d = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 128)
          to label %bb.d unwind label %bb.k       ; 13 uses

bb.d:                                             ; preds = %bb.c
  %i.e = invoke noundef ptr @_Z31mk_smt_strategic_solver_factoryRK6symbol(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6symbol4nullE)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN3api6objectC2ERNS_7contextE(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(3088) %0)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13Z3_solver_ref, i64 16), ptr %i.d, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !222
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  invoke void @_ZN12param_descrsC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  tail call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.j) #22
  tail call void @_ZN3refI6solverED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #22
  tail call void @_ZN10scoped_ptrI14solver_factoryED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.f) #22
  br label %.body

bb.g:                                             ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.l = load i64, ptr @_ZN6symbol4nullE, align 8, !tbaa !223
  store i64 %i.l, ptr %i.k, align 8, !tbaa !223
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i8 0, i64 64, i1 false)
  invoke void @_ZN3api7context11save_objectEPNS_6objectE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull %i.d)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_ZL15init_solver_logP11_Z3_contextP10_Z3_solver(ptr noundef nonnull %0, ptr noundef nonnull %i.d)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  br i1 %i.b, label %bb.j, label %_ZN10z3_log_ctxD2Ev.exit25, !prof !224

bb.j:                                             ; preds = %bb.i
  invoke void @_Z4SetRPKv(ptr noundef nonnull %i.d)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.c, %bb.d, %bb.g, %bb.b, %bb.h, %bb.j
  %i.n = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %.body

.body:                                            ; preds = %bb.f, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.k ], [ %i.i, %bb.f ] ; 3 uses
  %.2 = extractvalue { ptr, i32 } %eh.lpad-body, 1
  br i1 %i.b, label %bb.l, label %_ZN10z3_log_ctxD2Ev.exit, !prof !224

bb.l:                                             ; preds = %.body
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %.body, %bb.l
  %i.o = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #22
  %i.p = icmp eq i32 %.2, %i.o
  br i1 %i.p, label %bb.n, label %bb.q

bb.m:                                             ; preds = %bb.j
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit25

bb.n:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit
  %.219 = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %.219) #22
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit25

bb.p:                                             ; preds = %bb.n
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

_ZN10z3_log_ctxD2Ev.exit25:                       ; preds = %bb.m, %bb.i, %bb.o
  %.021 = phi ptr [ null, %bb.o ], [ %i.d, %bb.i ], [ %i.d, %bb.m ]
  ret ptr %.021

bb.q:                                             ; preds = %bb.p, %_ZN10z3_log_ctxD2Ev.exit
  %.merged = phi { ptr, i32 } [ %eh.lpad-body, %_ZN10z3_log_ctxD2Ev.exit ], [ %i.r, %bb.p ]
  resume { ptr, i32 } %.merged

bb.r:                                             ; preds = %bb.p
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #25
  unreachable
}

declare void @_Z16log_Z3_mk_solverP11_Z3_context(ptr noundef) local_unnamed_addr #1

declare noundef ptr @_Z31mk_smt_strategic_solver_factoryRK6symbol(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef ptr @Z3_mk_solver_for_logic(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.symbol, align 8              ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 25 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %class.symbol, align 8              ; 5 uses
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 5 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z26log_Z3_mk_solver_for_logicP11_Z3_contextP10_Z3_symbol(ptr noundef %0, ptr noundef %1)
          to label %bb.c unwind label %bb.ac

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.c, align 8, !tbaa !221
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %1, ptr %2, align 8
  %i.d = invoke noundef zeroext i1 @_ZN10smt_logics15supported_logicERK6symbol(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %i.d, label %bb.t, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.11, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  %i.f = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.g = and i64 %i.f, 7
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.g
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22
  br label %.invoke

.invoke:                                          ; preds = %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.j = phi ptr [ %1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ @.str.37, %bb.g ]
  %i.k = phi i64 [ %i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ 4, %bb.g ]
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.j, i64 noundef %i.k)
          to label %_ZlsRSo6symbol.exit unwind label %bb.p ; 0 uses

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.38, i64 noundef 2)
          to label %.noexc44 unwind label %bb.p   ; 0 uses

.noexc44:                                         ; preds = %bb.h
  %i.n = lshr i64 %i.f, 3
  %i.o = trunc i64 %i.n to i32
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.o)
          to label %_ZlsRSo6symbol.exit unwind label %bb.p ; 0 uses

_ZlsRSo6symbol.exit:                              ; preds = %.invoke, %.noexc44
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.12, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47: ; preds = %_ZlsRSo6symbol.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !416)
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !417)
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !231, !noalias !418 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %7 = load ptr, ptr %6, align 8, !tbaa !232, !noalias !418 ; 2 uses
  %8 = icmp ugt ptr %i.t, %7
  %.08.i9.i.i = select i1 %8, ptr %i.t, ptr %7    ; 2 uses
  %.not.i.i = icmp eq ptr %.08.i9.i.i, null
  br i1 %.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !233, !noalias !418
  %i.x = ptrtoint ptr %.08.i9.i.i to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !54, !noalias !418
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !53, !noalias !418
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !55, !noalias !418
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.ae, ptr %4, align 8, !tbaa !51, !alias.scope !418
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !53, !noalias !418 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 7 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !54, !noalias !418 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.af, ptr %4, align 8, !tbaa !53, !alias.scope !418
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !55, !noalias !418
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !55, !alias.scope !418
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %3, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !54, !noalias !418
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.i
  %i.an = phi i64 [ %i.aj, %bb.i ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !54, !alias.scope !418
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !53, !noalias !418
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ao, i8 0, i64 9, i1 false), !noalias !418
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.r, ptr noundef nonnull %i.ag, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.ar = load ptr, ptr %4, align 8, !tbaa !53, !alias.scope !418 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ae
  br i1 %i.as, label %.body, label %.body.sink.split

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  invoke void @_ZN3api7context14set_error_codeE13Z3_error_codeONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.at = load ptr, ptr %4, align 8, !tbaa !53    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ae
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.av = load i64, ptr %i.ae, align 8, !tbaa !55
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %i.b, label %bb.l, label %bb.q, !prof !224

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_Z4SetRPKv(ptr noundef null)
          to label %bb.q unwind label %bb.p

bb.m:                                             ; preds = %bb.c
  %i.ax = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.ad

bb.n:                                             ; preds = %bb.e
  %i.ay = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.s

bb.o:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.ba = load ptr, ptr %4, align 8, !tbaa !53    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ae
  br i1 %i.bb, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.o, %bb.j
  %.sink = phi ptr [ %i.ar, %bb.j ], [ %i.ba, %bb.o ]
  %.pn37.ph = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %i.az, %bb.o ]
  %i.bc = load i64, ptr %i.ae, align 8, !tbaa !55
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bd) #24
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.o, %bb.j
  %.pn37 = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %i.az, %bb.o ], [ %.pn37.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.r

bb.p:                                             ; preds = %.invoke, %_ZlsRSo6symbol.exit, %.noexc44, %bb.h, %bb.f, %bb.l
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.r

bb.q:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bf = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bf, ptr %3, align 8, !tbaa !38
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bh = getelementptr i8, ptr %i.bf, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %3, i64 %i.bi
  store ptr %i.bg, ptr %i.bj, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.r, align 8, !tbaa !38
  %i.bk = load ptr, ptr %i.ad, align 8, !tbaa !53 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.ag
  br i1 %i.bl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.q
  %i.bm = load i64, ptr %i.ag, align 8, !tbaa !55
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.r:                                             ; preds = %bb.p, %.body
  %.pn39 = phi { ptr, i32 } [ %i.be, %bb.p ], [ %.pn37, %.body ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #22
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.n
  %.pn39.pn = phi { ptr, i32 } [ %.pn39, %bb.r ], [ %i.ay, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.ad

bb.t:                                             ; preds = %bb.d
  %i.bo = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 128)
          to label %bb.u unwind label %bb.ac      ; 13 uses

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %1, ptr %5, align 8
  %i.bp = invoke noundef ptr @_Z31mk_smt_strategic_solver_factoryRK6symbol(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.v unwind label %bb.ab

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN3api6objectC2ERNS_7contextE(ptr noundef nonnull align 8 dereferenceable(128) %i.bo, ptr noundef nonnull align 8 dereferenceable(3088) %0)
          to label %.noexc51 unwind label %bb.ab

.noexc51:                                         ; preds = %bb.v
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13Z3_solver_ref, i64 16), ptr %i.bo, align 8, !tbaa !38
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 2 uses
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !222
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 32 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  invoke void @_ZN12param_descrsC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.bs)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %.noexc51
  %i.bt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bu) #22
  call void @_ZN3refI6solverED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.br) #22
  call void @_ZN10scoped_ptrI14solver_factoryED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bq) #22
  br label %.body52

bb.x:                                             ; preds = %.noexc51
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.bw = load i64, ptr @_ZN6symbol4nullE, align 8, !tbaa !223
  store i64 %i.bw, ptr %i.bv, align 8, !tbaa !223
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bx, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  invoke void @_ZN3api7context11save_objectEPNS_6objectE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull %i.bo)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  invoke fastcc void @_ZL15init_solver_logP11_Z3_contextP10_Z3_solver(ptr noundef nonnull %0, ptr noundef nonnull %i.bo)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %bb.y
  br i1 %i.b, label %bb.aa, label %_ZN10z3_log_ctxD2Ev.exit, !prof !224

bb.aa:                                            ; preds = %bb.z
  invoke void @_Z4SetRPKv(ptr noundef nonnull %i.bo)
          to label %.thread unwind label %bb.ac

bb.ab:                                            ; preds = %bb.v, %bb.u
  %i.by = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %.body52

.body52:                                          ; preds = %bb.w, %bb.ab
  %eh.lpad-body53 = phi { ptr, i32 } [ %i.by, %bb.ab ], [ %i.bt, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.ad
end_hunk_1
begin_hunk_2_@Z3_solver_import_model_converter:bb.a
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #25
  unreachable

_ZN3refI15model_converterED2Ev.exit:              ; preds = %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %i.b, label %bb.m, label %_ZN10z3_log_ctxD2Ev.exit, !prof !224

bb.m:                                             ; preds = %_ZN3refI15model_converterED2Ev.exit
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.n:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.p

bb.o:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  call void @_ZN3refI15model_converterED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #22
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.o ], [ %i.af, %bb.n ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %.1 = extractvalue { ptr, i32 } %.pn, 1         ; 2 uses
  br i1 %i.b, label %bb.q, label %_ZN10z3_log_ctxD2Ev.exit16, !prof !249

bb.q:                                             ; preds = %.thread, %bb.p
  %.124 = phi i32 [ %.120, %.thread ], [ %.1, %bb.p ]
  %.pn.pn22 = phi { ptr, i32 } [ %i.c, %.thread ], [ %.pn, %bb.p ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit16

_ZN10z3_log_ctxD2Ev.exit16:                       ; preds = %bb.p, %bb.q
  %.123 = phi i32 [ %.1, %bb.p ], [ %.124, %bb.q ]
  %.pn.pn21 = phi { ptr, i32 } [ %.pn, %bb.p ], [ %.pn.pn22, %bb.q ] ; 2 uses
  %i.ah = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #22
  %i.ai = icmp eq i32 %.123, %i.ah
  br i1 %i.ai, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit16
  %.111 = extractvalue { ptr, i32 } %.pn.pn21, 0
  %i.aj = call ptr @__cxa_begin_catch(ptr %.111) #22
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.u unwind label %bb.v

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.m, %_ZN3refI15model_converterED2Ev.exit, %bb.s
  ret void

bb.u:                                             ; preds = %bb.t, %_ZN10z3_log_ctxD2Ev.exit16
  %.merged = phi { ptr, i32 } [ %.pn.pn21, %_ZN10z3_log_ctxD2Ev.exit16 ], [ %i.ak, %bb.t ]
  resume { ptr, i32 } %.merged

bb.v:                                             ; preds = %bb.t
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #25
  unreachable
}

declare void @_Z36log_Z3_solver_import_model_converterP11_Z3_contextP10_Z3_solverS2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3refI15model_converterED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !252    ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN3refI15model_converterE7dec_refEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !254
  %i.d = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !254
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN3refI15model_converterE7dec_refEv.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.a) #22, !inline_history !428
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(12) %i.a)
          to label %_ZN3refI15model_converterE7dec_refEv.exit unwind label %bb.d

_ZN3refI15model_converterE7dec_refEv.exit:        ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #25
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @solver_from_stream(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 27 uses
  %4 = alloca %class.params_ref, align 8          ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %class.vector.142, align 8          ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 12 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !255  ; 2 uses
  %.not74 = icmp eq ptr %i.b, null
  br i1 %.not74, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 936) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !234
  tail call void @_ZN11cmd_contextC1EbP11ast_managerRK6symbol(ptr noundef nonnull align 8 dereferenceable(936) %i.c, i1 noundef zeroext false, ptr noundef nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(8) @_ZN6symbol4nullE)
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !255  ; 6 uses
  %.not.i = icmp eq ptr %i.f, %i.c
  br i1 %.not.i, label %_ZN10scoped_ptrI11cmd_contextEaSEPS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_Z7deallocI11cmd_contextEvPT_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dead_on_return(936) dereferenceable(936) %i.f) #22, !inline_history !4
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.f)
  br label %_Z7deallocI11cmd_contextEvPT_.exit.i

_Z7deallocI11cmd_contextEvPT_.exit.i:             ; preds = %bb.d, %bb.c
  store ptr %i.c, ptr %i.a, align 8, !tbaa !255
  br label %_ZN10scoped_ptrI11cmd_contextEaSEPS0_.exit

_ZN10scoped_ptrI11cmd_contextEaSEPS0_.exit:       ; preds = %bb.b, %_Z7deallocI11cmd_contextEvPT_.exit.i
  %i.j = phi ptr [ %i.f, %bb.b ], [ %i.c, %_Z7deallocI11cmd_contextEvPT_.exit.i ]
  tail call void @_Z18install_proof_cmdsR11cmd_context(ptr noundef nonnull align 8 dereferenceable(936) %i.j)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !255
  br label %bb.e

bb.e:                                             ; preds = %_ZN10scoped_ptrI11cmd_contextEaSEPS0_.exit, %bb.a
  %i.k = phi ptr [ %.pre, %_ZN10scoped_ptrI11cmd_contextEaSEPS0_.exit ], [ %i.b, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 273
  store i8 1, ptr %i.l, align 1, !tbaa !515
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !255
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 336
  invoke void @_ZN10stream_ref3setERSo(ptr noundef nonnull align 8 dereferenceable(81) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_ZN11cmd_context18set_regular_streamERSo.exit unwind label %bb.s

_ZN11cmd_context18set_regular_streamERSo.exit:    ; preds = %bb.e
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !255
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !248
  %i.q = invoke noundef zeroext i1 @_Z19parse_smt2_commandsR11cmd_contextRSibRK10params_refPKc(ptr noundef nonnull align 8 dereferenceable(936) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %_ZN11cmd_context18set_regular_streamERSo.exit
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %i.q, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !255  ; 4 uses
  %.not.i55 = icmp eq ptr %i.r, null
  br i1 %.not.i55, label %_ZN10scoped_ptrI11cmd_contextEaSEPS0_.exit57, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !38
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dead_on_return(936) dereferenceable(936) %i.r) #22, !inline_history !4
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.r)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.h
  store ptr null, ptr %i.a, align 8, !tbaa !255
  br label %_ZN10scoped_ptrI11cmd_contextEaSEPS0_.exit57

_ZN10scoped_ptrI11cmd_contextEaSEPS0_.exit57:     ; preds = %.noexc, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !516)
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !517)
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !231, !noalias !518 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i: ; preds = %_ZN10scoped_ptrI11cmd_contextEaSEPS0_.exit57
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %8 = load ptr, ptr %7, align 8, !tbaa !232, !noalias !518 ; 2 uses
  %9 = icmp ugt ptr %i.w, %8
  %.08.i9.i.i = select i1 %9, ptr %i.w, ptr %8    ; 2 uses
  %.not.i.i = icmp eq ptr %.08.i9.i.i, null
  br i1 %.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !233, !noalias !518
  %i.aa = ptrtoint ptr %.08.i9.i.i to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !54, !noalias !518
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !53, !noalias !518
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !55, !noalias !518
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i, %_ZN10scoped_ptrI11cmd_contextEaSEPS0_.exit57
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.ah, ptr %5, align 8, !tbaa !51, !alias.scope !518
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !53, !noalias !518 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.am = load i64, ptr %i.al, align 8, !tbaa !54, !noalias !518 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.ai, ptr %5, align 8, !tbaa !53, !alias.scope !518
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !55, !noalias !518
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !55, !alias.scope !518
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %3, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !54, !noalias !518
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.i
  %i.aq = phi i64 [ %i.am, %bb.i ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !54, !alias.scope !518
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !53, !noalias !518
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ar, i8 0, i64 9, i1 false), !noalias !518
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.u, ptr noundef nonnull %i.aj, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %5, align 8, !tbaa !53, !alias.scope !518 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ah
  br i1 %i.av, label %.body, label %.body.sink.split

_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  invoke void @_ZN3api7context14set_error_codeE13Z3_error_codeONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.aw = load ptr, ptr %5, align 8, !tbaa !53    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ah
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ay = load i64, ptr %i.ah, align 8, !tbaa !55
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.ao

bb.l:                                             ; preds = %_ZN11cmd_context18set_regular_streamERSo.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.ap

bb.m:                                             ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %5, align 8, !tbaa !53    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ah
  br i1 %i.bd, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.m, %bb.j
  %.sink = phi ptr [ %i.au, %bb.j ], [ %i.bc, %bb.m ]
  %.pn52.ph = phi { ptr, i32 } [ %i.at, %bb.j ], [ %i.bb, %bb.m ]
  %i.be = load i64, ptr %i.ah, align 8, !tbaa !55
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bf) #24
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.m, %bb.j
  %.pn52 = phi { ptr, i32 } [ %i.at, %bb.j ], [ %i.bb, %bb.m ], [ %.pn52.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.ap

bb.n:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !87
  %.not = icmp eq ptr %i.bh, null
  br i1 %.not, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke fastcc void @_ZL11init_solverP11_Z3_contextP10_Z3_solver(ptr noundef %0, ptr noundef nonnull %1)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !255
  invoke void @_ZN11cmd_context18tracked_assertionsEv(ptr dead_on_unwind nonnull writable sret(%class.vector.142) align 8 %6, ptr noundef nonnull align 8 dereferenceable(936) %i.bi)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %6, align 8, !tbaa !264   ; 5 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %_ZN6vectorISt4pairIP4exprS2_ELb1EjED2Ev.exit, label %_ZN6vectorISt4pairIP4exprS2_ELb1EjE3endEv.exit

_ZN6vectorISt4pairIP4exprS2_ELb1EjE3endEv.exit:   ; preds = %bb.q
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !24 ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bo
  %.not4675 = icmp eq i32 %i.bm, 0
  br i1 %.not4675, label %._crit_edge.thread109, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorISt4pairIP4exprS2_ELb1EjE3endEv.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.t

._crit_edge:                                      ; preds = %_ZN13Z3_solver_ref11assert_exprEP4exprS1_.exit
  %.pre77 = load ptr, ptr %6, align 8, !tbaa !264 ; 2 uses
  %.not.i.i61 = icmp eq ptr %.pre77, null
  br i1 %.not.i.i61, label %_ZN6vectorISt4pairIP4exprS2_ELb1EjED2Ev.exit, label %._crit_edge.thread109

._crit_edge.thread109:                            ; preds = %_ZN6vectorISt4pairIP4exprS2_ELb1EjE3endEv.exit, %._crit_edge
  %i.br = phi ptr [ %.pre77, %._crit_edge ], [ %i.bj, %_ZN6vectorISt4pairIP4exprS2_ELb1EjE3endEv.exit ]
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bs)
          to label %_ZN6vectorISt4pairIP4exprS2_ELb1EjED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread109
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #25
  unreachable

_ZN6vectorISt4pairIP4exprS2_ELb1EjED2Ev.exit:     ; preds = %bb.q, %._crit_edge, %._crit_edge.thread109
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !255
  invoke void @_ZN11cmd_context24reset_tracked_assertionsEv(ptr noundef nonnull align 8 dereferenceable(936) %i.bv)
          to label %bb.z unwind label %bb.s

bb.s:                                             ; preds = %bb.an, %bb.af, %bb.h, %bb.e, %bb.ah, %bb.aj, %_ZN6vectorISt4pairIP4exprS2_ELb1EjED2Ev.exit, %bb.o, %bb.p
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.t:                                             ; preds = %.lr.ph, %_ZN13Z3_solver_ref11assert_exprEP4exprS1_.exit
  %.076 = phi ptr [ %i.bj, %.lr.ph ], [ %i.cf, %_ZN13Z3_solver_ref11assert_exprEP4exprS1_.exit ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.076, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !26 ; 3 uses
  %.not49 = icmp eq ptr %i.by, null
  %i.bz = load ptr, ptr %.076, align 8, !tbaa !26 ; 5 uses
  %i.ca = load ptr, ptr %i.bq, align 8, !tbaa !86 ; 6 uses
  %.not.i65 = icmp eq ptr %i.ca, null             ; 2 uses
  br i1 %.not49, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %.not.i65, label %.noexc63, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN14solver2smt2_pp11assert_exprEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(1296) %i.ca, ptr noundef %i.bz, ptr noundef nonnull %i.by)
          to label %.noexc63 unwind label %bb.w

.noexc63:                                         ; preds = %bb.v, %bb.u
  %i.cb = load ptr, ptr %i.bg, align 8, !tbaa !87
  invoke void @_ZN6solver11assert_exprEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(112) %i.cb, ptr noundef %i.bz, ptr noundef nonnull %i.by)
          to label %_ZN13Z3_solver_ref11assert_exprEP4exprS1_.exit unwind label %bb.w

bb.w:                                             ; preds = %.noexc68, %.noexc67.a, %.noexc66.a, %bb.y, %.noexc63, %bb.v
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorISt4pairIP4exprS2_ELb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.ap

bb.x:                                             ; preds = %bb.t
  br i1 %.not.i65, label %.noexc68, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN11ast_pp_util7collectEP4expr(ptr noundef nonnull align 8 dereferenceable(1296) %i.ca, ptr noundef %i.bz)
          to label %.noexc66.a unwind label %bb.w

.noexc66.a:                                       ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 760 ; 2 uses
  invoke void @_ZN11ast_pp_util13display_declsERSo(ptr noundef nonnull align 8 dereferenceable(1296) %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %i.cd)
          to label %.noexc67.a unwind label %bb.w

.noexc67.a:                                       ; preds = %.noexc66.a
  invoke void @_ZN11ast_pp_util14display_assertERSoP4exprb(ptr noundef nonnull align 8 dereferenceable(1296) %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef %i.bz, i1 noundef zeroext true)
          to label %.noexc68 unwind label %bb.w

.noexc68:                                         ; preds = %.noexc67.a, %bb.x
  %i.ce = load ptr, ptr %i.bg, align 8, !tbaa !87
  invoke void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.ce, ptr noundef %i.bz)
          to label %_ZN13Z3_solver_ref11assert_exprEP4exprS1_.exit unwind label %bb.w
end_hunk_2
begin_hunk_3_@Z3_solver_from_string:bb.a
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !53 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.q
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !55
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #24
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.an, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.au) #22
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.av, ptr %3, align 8, !tbaa !38
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.ax = getelementptr i8, ptr %i.av, i64 -24
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds i8, ptr %3, i64 %i.ay
  store ptr %i.aw, ptr %i.az, align 8, !tbaa !38
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ba, align 8, !tbaa !266
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bb) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %i.b, label %bb.r, label %_ZN10z3_log_ctxD2Ev.exit, !prof !224

bb.r:                                             ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %bb.p
  %.pn19 = phi { ptr, i32 } [ %i.ah, %bb.p ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %.2 = extractvalue { ptr, i32 } %.pn19, 1       ; 2 uses
  br i1 %i.b, label %bb.t, label %_ZN10z3_log_ctxD2Ev.exit28, !prof !249

bb.t:                                             ; preds = %.thread, %bb.s
  %.237 = phi i32 [ %.233, %.thread ], [ %.2, %bb.s ]
  %.pn19.pn35 = phi { ptr, i32 } [ %i.c, %.thread ], [ %.pn19, %bb.s ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit28

_ZN10z3_log_ctxD2Ev.exit28:                       ; preds = %bb.s, %bb.t
  %.236 = phi i32 [ %.2, %bb.s ], [ %.237, %bb.t ]
  %.pn19.pn34 = phi { ptr, i32 } [ %.pn19, %bb.s ], [ %.pn19.pn35, %bb.t ] ; 2 uses
  %i.bc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #22
  %i.bd = icmp eq i32 %.236, %i.bc
  br i1 %i.bd, label %bb.u, label %bb.x

bb.u:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit28
  %.216 = extractvalue { ptr, i32 } %.pn19.pn34, 0
  %i.be = call ptr @__cxa_begin_catch(ptr %.216) #22
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.x unwind label %bb.y

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.r, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.v
  ret void

bb.x:                                             ; preds = %bb.w, %_ZN10z3_log_ctxD2Ev.exit28
  %.merged = phi { ptr, i32 } [ %.pn19.pn34, %_ZN10z3_log_ctxD2Ev.exit28 ], [ %i.bf, %bb.w ]
  resume { ptr, i32 } %.merged

bb.y:                                             ; preds = %bb.w
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #25
  unreachable
}

declare void @_Z25log_Z3_solver_from_stringP11_Z3_contextP10_Z3_solverPKc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !51
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.39) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !224

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !53
  store i64 %i.c, ptr %i.a, align 8, !tbaa !55
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !55
  store i8 %i.j, ptr %i.i, align 1, !tbaa !55
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !55
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1EONS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL25solver_from_dimacs_streamP11_Z3_contextP10_Z3_solverRSi(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 27 uses
  %4 = alloca %"class.sat::solver", align 8       ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %class.sat2goal, align 8            ; 5 uses
  %7 = alloca %class.ref.240, align 8             ; 7 uses
  %8 = alloca %class.atom2bool_var, align 8       ; 8 uses
  %9 = alloca %class.symbol, align 8              ; 5 uses
  %10 = alloca %class.goal, align 8               ; 10 uses
  tail call fastcc void @_ZL11init_solverP11_Z3_contextP10_Z3_solver(ptr noundef %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(952) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(88) %i.b) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.j(ptr noundef nonnull align 8 dereferenceable(112) %i.g)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3sat6solverC1ERK10params_refR8reslimit(ptr noundef nonnull align 8 dereferenceable(4264) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = invoke noundef zeroext i1 @_Z12parse_dimacsRSiRSoRN3sat6solverE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(4264) %4)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !231, !noalias !533 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i: ; preds = %bb.e
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %12 = load ptr, ptr %11, align 8, !tbaa !232, !noalias !533 ; 2 uses
  %13 = icmp ugt ptr %i.p, %12
  %.08.i9.i.i = select i1 %13, ptr %i.p, ptr %12  ; 2 uses
  %.not.i.i = icmp eq ptr %.08.i9.i.i, null
  br i1 %.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !233, !noalias !533
  %i.t = ptrtoint ptr %.08.i9.i.i to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 %i.v, ptr %i.w, align 8, !tbaa !54, !noalias !533
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !53, !noalias !533
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !55, !noalias !533
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.aa, ptr %5, align 8, !tbaa !51, !alias.scope !533
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !53, !noalias !533 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 5 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !54, !noalias !533 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw nsw i64 %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.ah, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.ab, ptr %5, align 8, !tbaa !53, !alias.scope !533
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !55, !noalias !533
  store i64 %i.ai, ptr %i.aa, align 8, !tbaa !55, !alias.scope !533
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %3, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !54, !noalias !533
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.f
  %i.aj = phi i64 [ %i.af, %bb.f ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.aj, ptr %i.al, align 8, !tbaa !54, !alias.scope !533
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !53, !noalias !533
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ak, i8 0, i64 9, i1 false), !noalias !533
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.n, ptr noundef nonnull %i.ac, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %5, align 8, !tbaa !53, !alias.scope !533 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.aa
  br i1 %i.ao, label %.body, label %.body.sink.split

_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  invoke void @_ZN3api7context14set_error_codeE13Z3_error_codeONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ap = load ptr, ptr %5, align 8, !tbaa !53    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.aa
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ar = load i64, ptr %i.aa, align 8, !tbaa !55
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.ai

bb.i:                                             ; preds = %bb.b, %bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.j:                                             ; preds = %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.k:                                             ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %5, align 8, !tbaa !53    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.aa
  br i1 %i.ax, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.k, %bb.g
  %.sink = phi ptr [ %i.an, %bb.g ], [ %i.aw, %bb.k ]
  %.pn.ph = phi { ptr, i32 } [ %i.am, %bb.g ], [ %i.av, %bb.k ]
  %i.ay = load i64, ptr %i.aa, align 8, !tbaa !55
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.az) #24
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.k, %bb.g
  %.pn = phi { ptr, i32 } [ %i.am, %bb.g ], [ %i.av, %bb.k ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.an

bb.l:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN8sat2goalC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr null, ptr %7, align 8, !tbaa !269
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZN8expr2varC2ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(41) %8, ptr noundef nonnull align 8 dereferenceable(952) %i.f)
          to label %_ZN13atom2bool_varC2ER11ast_manager.exit.preheader unwind label %bb.o

_ZN13atom2bool_varC2ER11ast_manager.exit.preheader: ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 3280 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !536 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %.critedge, label %_ZNK3sat6solver8num_varsEv.exit.lr.ph

_ZNK3sat6solver8num_varsEv.exit.lr.ph:            ; preds = %_ZN13atom2bool_varC2ER11ast_manager.exit.preheader
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 816
  br label %_ZNK3sat6solver8num_varsEv.exit

_ZNK3sat6solver8num_varsEv.exit:                  ; preds = %_ZNK3sat6solver8num_varsEv.exit.lr.ph, %_ZN13atom2bool_var6insertEP4exprj.exit
  %indvars.iv = phi i64 [ 0, %_ZNK3sat6solver8num_varsEv.exit.lr.ph ], [ %indvars.iv.next, %_ZN13atom2bool_var6insertEP4exprj.exit ] ; 4 uses
  %i.be = phi ptr [ %i.bb, %_ZNK3sat6solver8num_varsEv.exit.lr.ph ], [ %i.bs, %_ZN13atom2bool_var6insertEP4exprj.exit ]
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !24
  %i.bh = zext i32 %i.bg to i64
  %i.bi = icmp samesign ult i64 %indvars.iv, %i.bh
  br i1 %i.bi, label %bb.p, label %.critedge

.critedge:                                        ; preds = %_ZNK3sat6solver8num_varsEv.exit, %_ZN13atom2bool_var6insertEP4exprj.exit, %_ZN13atom2bool_varC2ER11ast_manager.exit.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZN4goalC1ER11ast_managerbb(ptr noundef nonnull align 8 dereferenceable(124) %10, ptr noundef nonnull align 8 dereferenceable(952) %i.f, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.r unwind label %bb.ac

bb.n:                                             ; preds = %bb.l
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.o:                                             ; preds = %bb.m
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.p:                                             ; preds = %_ZNK3sat6solver8num_varsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.bl = shl nuw nsw i64 %indvars.iv, 3
  %i.bm = or disjoint i64 %i.bl, 1
  %i.bn = inttoptr i64 %i.bm to ptr
  store ptr %i.bn, ptr %9, align 8, !tbaa !270
  %i.bo = load ptr, ptr %i.bd, align 8, !tbaa !537
  %i.bp = invoke noundef ptr @_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_P14func_decl_info(ptr noundef nonnull align 8 dereferenceable(952) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 0, ptr noundef null, ptr noundef %i.bo, ptr noundef null)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.p
  %i.bq = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.f, ptr noundef %i.bp, i32 noundef 0, ptr noundef null)
          to label %_ZN11ast_manager8mk_constERK6symbolP4sort.exit unwind label %bb.q

_ZN11ast_manager8mk_constERK6symbolP4sort.exit:   ; preds = %.noexc
  %i.br = trunc nuw i64 %indvars.iv to i32
  invoke void @_ZN8expr2var6insertEP4exprj(ptr noundef nonnull align 8 dereferenceable(41) %8, ptr noundef %i.bq, i32 noundef %i.br)
          to label %_ZN13atom2bool_var6insertEP4exprj.exit unwind label %bb.q

_ZN13atom2bool_var6insertEP4exprj.exit:           ; preds = %_ZN11ast_manager8mk_constERK6symbolP4sort.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bs = load ptr, ptr %i.ba, align 8, !tbaa !536 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %.critedge, label %_ZNK3sat6solver8num_varsEv.exit, !llvm.loop !528

bb.q:                                             ; preds = %_ZN11ast_manager8mk_constERK6symbolP4sort.exit, %.noexc, %bb.p
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.ak

bb.r:                                             ; preds = %.critedge
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !87  ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !38
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 104
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.by(ptr noundef nonnull align 8 dereferenceable(112) %i.bv)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN8sat2goalclERN3sat6solverERK13atom2bool_varRK10params_refR4goalR3refINS_2mcEE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(4264) %4, ptr noundef nonnull align 8 dereferenceable(41) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull align 8 dereferenceable(124) %10, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 120
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.t

bb.t:                                             ; preds = %.preheader, %_ZN13Z3_solver_ref11assert_exprEP4expr.exit
  %.0 = phi i32 [ %i.dm, %_ZN13Z3_solver_ref11assert_exprEP4expr.exit ], [ 0, %.preheader ] ; 3 uses
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !314 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_ZNK4goal4sizeEv.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.t, %bb.u
  %.0.i.i.i = phi ptr [ %i.ci, %bb.u ], [ %i.cd, %bb.t ] ; 5 uses
  %i.cf = load i32, ptr %.0.i.i.i, align 8
  %i.cg = lshr i32 %i.cf, 30
  switch i32 %i.cg, label %default.unreachable [
    i32 0, label %bb.u
    i32 1, label %bb.v
end_hunk_3
begin_hunk_4_@Z3_solver_from_file:bb.a

bb.i:                                             ; preds = %.critedge66.thread102, %.critedge66
  invoke fastcc void @_ZL11init_solverP11_Z3_contextP10_Z3_solver(ptr noundef %0, ptr noundef %1)
          to label %bb.j unwind label %bb.g

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_ZL25solver_from_dimacs_streamP11_Z3_contextP10_Z3_solverRSi(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.l unwind label %bb.g

.critedge66.thread:                               ; preds = %.critedge66.thread104, %bb.h, %.critedge66
  invoke fastcc void @_ZL11init_solverP11_Z3_contextP10_Z3_solver(ptr noundef %0, ptr noundef %1)
          to label %bb.k unwind label %bb.g

bb.k:                                             ; preds = %.critedge66.thread
  invoke void @solver_from_stream(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.l unwind label %bb.g

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.e
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %i.b, label %bb.m, label %_ZN10z3_log_ctxD2Ev.exit, !prof !224

bb.m:                                             ; preds = %bb.l
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.n:                                             ; preds = %bb.f, %bb.g
  %.pn57.pn = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.n, %bb.f ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %.5 = extractvalue { ptr, i32 } %.pn57.pn, 1    ; 2 uses
  br i1 %i.b, label %bb.o, label %_ZN10z3_log_ctxD2Ev.exit88, !prof !249

bb.o:                                             ; preds = %.thread, %bb.n
  %.5101 = phi i32 [ %.597, %.thread ], [ %.5, %bb.n ]
  %.pn57.pn.pn99 = phi { ptr, i32 } [ %i.c, %.thread ], [ %.pn57.pn, %bb.n ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit88

_ZN10z3_log_ctxD2Ev.exit88:                       ; preds = %bb.n, %bb.o
  %.5100 = phi i32 [ %.5, %bb.n ], [ %.5101, %bb.o ]
  %.pn57.pn.pn98 = phi { ptr, i32 } [ %.pn57.pn, %bb.n ], [ %.pn57.pn.pn99, %bb.o ] ; 2 uses
  %i.bb = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #22
  %i.bc = icmp eq i32 %.5100, %i.bb
  br i1 %i.bc, label %bb.p, label %bb.s

bb.p:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit88
  %.551 = extractvalue { ptr, i32 } %.pn57.pn.pn98, 0
  %i.bd = call ptr @__cxa_begin_catch(ptr %.551) #22
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bd)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.m, %bb.l, %bb.q
  ret void

bb.s:                                             ; preds = %bb.r, %_ZN10z3_log_ctxD2Ev.exit88
  %.merged = phi { ptr, i32 } [ %.pn57.pn.pn98, %_ZN10z3_log_ctxD2Ev.exit88 ], [ %i.be, %bb.r ]
  resume { ptr, i32 } %.merged

bb.t:                                             ; preds = %bb.r
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #25
  unreachable
}

declare void @_Z23log_Z3_solver_from_fileP11_Z3_contextP10_Z3_solverPKc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #6 align 2

; Function Attrs: mustprogress uwtable
define noundef ptr @Z3_solver_get_help(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %3 = alloca %class.param_descrs, align 8        ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z22log_Z3_solver_get_helpP11_Z3_contextP10_Z3_solver(ptr noundef %0, ptr noundef %1)
          to label %bb.c unwind label %.thread

.thread:                                          ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %.437 = extractvalue { ptr, i32 } %i.c, 1
  br label %bb.z

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.d, align 8, !tbaa !221
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZN12param_descrsC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !87   ; 2 uses
  %.not = icmp eq ptr %i.f, null                  ; 2 uses
  br i1 %.not, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_ZL11init_solverP11_Z3_contextP10_Z3_solver(ptr noundef nonnull %0, ptr noundef nonnull %1)
          to label %._crit_edge unwind label %bb.i

._crit_edge:                                      ; preds = %bb.f
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !87
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.y

bb.h:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.x

bb.i:                                             ; preds = %bb.o, %bb.p, %bb.k, %bb.j, %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.w

bb.j:                                             ; preds = %._crit_edge, %bb.e
  %i.j = phi ptr [ %.pre, %._crit_edge ], [ %i.f, %bb.e ] ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(112) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN14context_params27collect_solver_param_descrsER12param_descrs(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.l unwind label %bb.i

bb.l:                                             ; preds = %bb.k
  br i1 %.not, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !87   ; 5 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZN3refI6solverEaSEPS0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !247
  %i.q = add i32 %i.p, -1                         ; 2 uses
  store i32 %i.q, ptr %i.o, align 8, !tbaa !247
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.o, label %_ZN3refI6solverEaSEPS0_.exit

bb.o:                                             ; preds = %bb.n
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !38
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.n) #22, !inline_history !1
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(88) %i.n)
          to label %_ZN3refI6solverEaSEPS0_.exit unwind label %bb.i

_ZN3refI6solverEaSEPS0_.exit:                     ; preds = %bb.o, %bb.m, %bb.n
  store ptr null, ptr %i.e, align 8, !tbaa !87
  br label %bb.p

bb.p:                                             ; preds = %_ZN3refI6solverEaSEPS0_.exit, %bb.l
  invoke void @_ZNK12param_descrs7displayERSojbb(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.q unwind label %bb.i

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !551)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !552)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !231, !noalias !553 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i: ; preds = %bb.q
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %6 = load ptr, ptr %5, align 8, !tbaa !232, !noalias !553 ; 2 uses
  %7 = icmp ugt ptr %i.w, %6
  %.08.i9.i.i = select i1 %7, ptr %i.w, ptr %6    ; 2 uses
  %.not.i.i29 = icmp eq ptr %.08.i9.i.i, null
  br i1 %.not.i.i29, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !233, !noalias !553
  %i.aa = ptrtoint ptr %.08.i9.i.i to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !54, !noalias !553
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !53, !noalias !553
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !55, !noalias !553
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i, %bb.q
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.ah, ptr %4, align 8, !tbaa !51, !alias.scope !553
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !53, !noalias !553 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 7 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.r:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.am = load i64, ptr %i.al, align 8, !tbaa !54, !noalias !553 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.ai, ptr %4, align 8, !tbaa !53, !alias.scope !553
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !55, !noalias !553
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !55, !alias.scope !553
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !54, !noalias !553
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.r
  %i.aq = phi i64 [ %i.am, %bb.r ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !54, !alias.scope !553
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !53, !noalias !553
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ar, i8 0, i64 9, i1 false), !noalias !553
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.u, ptr noundef nonnull %i.aj, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.au = load ptr, ptr %4, align 8, !tbaa !53, !alias.scope !553 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ah
  br i1 %i.av, label %.body, label %.body.sink.split

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.aw = invoke noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.t unwind label %bb.v       ; 2 uses

bb.t:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ax = load ptr, ptr %4, align 8, !tbaa !53    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ah
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  %i.az = load i64, ptr %i.ah, align 8, !tbaa !55
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN12param_descrsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.bb = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bb, ptr %2, align 8, !tbaa !38
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bd = getelementptr i8, ptr %i.bb, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %2, i64 %i.be
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.u, align 8, !tbaa !38
  %i.bg = load ptr, ptr %i.ag, align 8, !tbaa !53 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.aj
  br i1 %i.bh, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bi = load i64, ptr %i.aj, align 8, !tbaa !55
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #24
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.u, align 8, !tbaa !38
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bk) #22
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bl) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %i.b, label %bb.u, label %_ZN10z3_log_ctxD2Ev.exit, !prof !224

bb.u:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.v:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.bn = load ptr, ptr %4, align 8, !tbaa !53    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.ah
  br i1 %i.bo, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.v, %bb.s
  %.sink = phi ptr [ %i.au, %bb.s ], [ %i.bn, %bb.v ]
  %.pn.ph = phi { ptr, i32 } [ %i.at, %bb.s ], [ %i.bm, %bb.v ]
  %i.bp = load i64, ptr %i.ah, align 8, !tbaa !55
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bq) #24
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.v, %bb.s
  %.pn = phi { ptr, i32 } [ %i.at, %bb.s ], [ %i.bm, %bb.v ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.w

bb.w:                                             ; preds = %.body, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.i, %bb.i ]
  call void @_ZN12param_descrsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.w ], [ %i.h, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #22
  br label %bb.y

bb.y:                                             ; preds = %bb.g, %bb.x
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.x ], [ %i.g, %bb.g ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %.4 = extractvalue { ptr, i32 } %.pn.pn.pn.pn, 1 ; 2 uses
  br i1 %i.b, label %bb.z, label %_ZN10z3_log_ctxD2Ev.exit33, !prof !249

bb.z:                                             ; preds = %.thread, %bb.y
  %.441 = phi i32 [ %.437, %.thread ], [ %.4, %bb.y ]
  %.pn.pn.pn.pn.pn39 = phi { ptr, i32 } [ %i.c, %.thread ], [ %.pn.pn.pn.pn, %bb.y ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit33

_ZN10z3_log_ctxD2Ev.exit33:                       ; preds = %bb.y, %bb.z
  %.440 = phi i32 [ %.4, %bb.y ], [ %.441, %bb.z ]
  %.pn.pn.pn.pn.pn38 = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.y ], [ %.pn.pn.pn.pn.pn39, %bb.z ] ; 2 uses
  %i.br = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #22
  %i.bs = icmp eq i32 %.440, %i.br
  br i1 %i.bs, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %_ZN10z3_log_ctxD2Ev.exit33
  %.421 = extractvalue { ptr, i32 } %.pn.pn.pn.pn.pn38, 0
  %i.bt = call ptr @__cxa_begin_catch(ptr %.421) #22
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bt)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.ac:                                            ; preds = %bb.aa
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ad unwind label %bb.ae

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.u, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.ab
  %.023 = phi ptr [ @.str.17, %bb.ab ], [ %i.aw, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %i.aw, %bb.u ]
  ret ptr %.023

bb.ad:                                            ; preds = %bb.ac, %_ZN10z3_log_ctxD2Ev.exit33
  %.merged = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn38, %_ZN10z3_log_ctxD2Ev.exit33 ], [ %i.bu, %bb.ac ]
  resume { ptr, i32 } %.merged

bb.ae:                                            ; preds = %bb.ac
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #25
  unreachable
}

declare void @_Z22log_Z3_solver_get_helpP11_Z3_contextP10_Z3_solver(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN12param_descrsC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN14context_params27collect_solver_param_descrsER12param_descrs(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZNK12param_descrs7displayERSojbb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

declare noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN12param_descrsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

; Function Attrs: mustprogress uwtable
define noundef ptr @Z3_solver_get_param_descrs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z30log_Z3_solver_get_param_descrsP11_Z3_contextP10_Z3_solver(ptr noundef %0, ptr noundef %1)
          to label %bb.c unwind label %.thread

end_hunk_4
begin_hunk_5_@Z3_solver_get_reason_unknown:bb.a
bb.q:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #25
  unreachable
}

declare void @_Z32log_Z3_solver_get_reason_unknownP11_Z3_contextP10_Z3_solver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef ptr @Z3_solver_get_statistics(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z28log_Z3_solver_get_statisticsP11_Z3_contextP10_Z3_solver(ptr noundef %0, ptr noundef %1)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.c, align 8, !tbaa !221
  invoke fastcc void @_ZL11init_solverP11_Z3_contextP10_Z3_solver(ptr noundef nonnull %0, ptr noundef %1)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.d = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 40)
          to label %bb.e unwind label %bb.l       ; 7 uses

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN3api6objectC2ERNS_7contextE(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(3088) %0)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV12Z3_stats_ref, i64 16), ptr %i.d, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !87   ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.noexc unwind label %bb.l, !inline_history !574

.noexc:                                           ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  invoke void @_ZN10statistics4copyERKS_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %_ZNK16check_sat_result18collect_statisticsER10statistics.exit unwind label %bb.l

_ZNK16check_sat_result18collect_statisticsER10statistics.exit: ; preds = %.noexc
  invoke void @_Z21get_memory_statisticsR10statistics(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %_ZNK16check_sat_result18collect_statisticsER10statistics.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !234
  invoke void @_Z21get_rlimit_statisticsR8reslimitR10statistics(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !87
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = load double, ptr %i.o, align 8, !tbaa !575 ; 2 uses
  %i.q = fcmp une double %i.p, 0.000000e+00
  br i1 %i.q, label %bb.i, label %_ZNK16check_sat_result19collect_timer_statsER10statistics.exit

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN10statistics6updateEPKcd(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.46, double noundef %i.p)
          to label %_ZNK16check_sat_result19collect_timer_statsER10statistics.exit unwind label %bb.l

_ZNK16check_sat_result19collect_timer_statsER10statistics.exit: ; preds = %bb.h, %bb.i
  invoke void @_ZN3api7context11save_objectEPNS_6objectE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull %i.d)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZNK16check_sat_result19collect_timer_statsER10statistics.exit
  br i1 %i.b, label %bb.k, label %_ZN10z3_log_ctxD2Ev.exit33, !prof !224

bb.k:                                             ; preds = %bb.j
  invoke void @_Z4SetRPKv(ptr noundef nonnull %i.d)
          to label %bb.n unwind label %.thread

.thread:                                          ; preds = %bb.b, %bb.k
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %.138 = extractvalue { ptr, i32 } %lpad.thr_comm, 1
  br label %bb.m

bb.l:                                             ; preds = %bb.i, %.noexc, %bb.f, %bb.e, %bb.c, %bb.d, %_ZNK16check_sat_result18collect_statisticsER10statistics.exit, %bb.g, %_ZNK16check_sat_result19collect_timer_statsER10statistics.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 3 uses
  %.1 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 1 ; 2 uses
  br i1 %i.b, label %bb.m, label %_ZN10z3_log_ctxD2Ev.exit, !prof !249

bb.m:                                             ; preds = %.thread, %bb.l
  %.142 = phi i32 [ %.138, %.thread ], [ %.1, %bb.l ]
  %lpad.phi40 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.thr_comm.split-lp, %bb.l ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.l, %bb.m
  %.141 = phi i32 [ %.1, %bb.l ], [ %.142, %bb.m ]
  %lpad.phi39 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.l ], [ %lpad.phi40, %bb.m ] ; 2 uses
  %i.r = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #22
  %i.s = icmp eq i32 %.141, %i.r
  br i1 %i.s, label %bb.o, label %bb.r

bb.n:                                             ; preds = %bb.k
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit33

bb.o:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit
  %.126 = extractvalue { ptr, i32 } %lpad.phi39, 0
  %i.t = tail call ptr @__cxa_begin_catch(ptr %.126) #22
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit33

bb.q:                                             ; preds = %bb.o
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.s

_ZN10z3_log_ctxD2Ev.exit33:                       ; preds = %bb.n, %bb.j, %bb.p
  %.028 = phi ptr [ null, %bb.p ], [ %i.d, %bb.j ], [ %i.d, %bb.n ]
  ret ptr %.028

bb.r:                                             ; preds = %bb.q, %_ZN10z3_log_ctxD2Ev.exit
  %.merged = phi { ptr, i32 } [ %lpad.phi39, %_ZN10z3_log_ctxD2Ev.exit ], [ %i.u, %bb.q ]
  resume { ptr, i32 } %.merged

bb.s:                                             ; preds = %bb.q
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #25
  unreachable
}

declare void @_Z28log_Z3_solver_get_statisticsP11_Z3_contextP10_Z3_solver(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z21get_memory_statisticsR10statistics(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_Z21get_rlimit_statisticsR8reslimitR10statistics(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef ptr @Z3_solver_to_string(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_Z23log_Z3_solver_to_stringP11_Z3_contextP10_Z3_solver(ptr noundef %0, ptr noundef %1)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.q

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.d, align 8, !tbaa !221
  invoke fastcc void @_ZL11init_solverP11_Z3_contextP10_Z3_solver(ptr noundef nonnull %0, ptr noundef %1)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !87   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.i(ptr noundef nonnull align 8 dereferenceable(112) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, ptr noundef null)
          to label %bb.g unwind label %bb.m       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !580)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !581)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !231, !noalias !582 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i: ; preds = %bb.g
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !232, !noalias !582 ; 2 uses
  %6 = icmp ugt ptr %i.m, %5
  %.08.i9.i.i = select i1 %6, ptr %i.m, ptr %5    ; 2 uses
  %.not.i.i = icmp eq ptr %.08.i9.i.i, null
  br i1 %.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !233, !noalias !582
  %i.q = ptrtoint ptr %.08.i9.i.i to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.s, ptr %i.t, align 8, !tbaa !54, !noalias !582
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !53, !noalias !582
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !55, !noalias !582
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.x, ptr %3, align 8, !tbaa !51, !alias.scope !582
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !53, !noalias !582 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 7 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !54, !noalias !582 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.ae, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.y, ptr %3, align 8, !tbaa !53, !alias.scope !582
  %i.af = load i64, ptr %i.z, align 8, !tbaa !55, !noalias !582
  store i64 %i.af, ptr %i.x, align 8, !tbaa !55, !alias.scope !582
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !54, !noalias !582
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.h
  %i.ag = phi i64 [ %i.ac, %bb.h ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !54, !alias.scope !582
  store ptr %i.z, ptr %i.w, align 8, !tbaa !53, !noalias !582
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ah, i8 0, i64 9, i1 false), !noalias !582
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.k, ptr noundef nonnull %i.z, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.ak = load ptr, ptr %3, align 8, !tbaa !53, !alias.scope !582 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.x
  br i1 %i.al, label %.body, label %.body.sink.split

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.am = invoke noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.j unwind label %bb.n       ; 2 uses

bb.j:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.an = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.x
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ap = load i64, ptr %i.x, align 8, !tbaa !55
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ar = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ar, ptr %2, align 8, !tbaa !38
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.at = getelementptr i8, ptr %i.ar, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %2, i64 %i.au
  store ptr %i.as, ptr %i.av, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.k, align 8, !tbaa !38
  %i.aw = load ptr, ptr %i.w, align 8, !tbaa !53  ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.z
  br i1 %i.ax, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = load i64, ptr %i.z, align 8, !tbaa !55
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #24
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.k, align 8, !tbaa !38
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ba) #22
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bb) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %i.b, label %bb.k, label %_ZN10z3_log_ctxD2Ev.exit, !prof !224

bb.k:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.l:                                             ; preds = %bb.e
  %i.bc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.p

bb.m:                                             ; preds = %bb.f
  %i.bd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.o

bb.n:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.bf = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.x
  br i1 %i.bg, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.n, %bb.i
  %.sink = phi ptr [ %i.ak, %bb.i ], [ %i.bf, %bb.n ]
  %.pn.ph = phi { ptr, i32 } [ %i.aj, %bb.i ], [ %i.be, %bb.n ]
  %i.bh = load i64, ptr %i.x, align 8, !tbaa !55
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bi) #24
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.n, %bb.i
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.i ], [ %i.be, %bb.n ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.o

bb.o:                                             ; preds = %.body, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bd, %bb.m ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.o ], [ %i.bc, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.c
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.p ], [ %i.c, %bb.c ] ; 3 uses
  %.3 = extractvalue { ptr, i32 } %.pn.pn.pn.pn, 1
  br i1 %i.b, label %bb.r, label %_ZN10z3_log_ctxD2Ev.exit26, !prof !224

bb.r:                                             ; preds = %bb.q
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit26

_ZN10z3_log_ctxD2Ev.exit26:                       ; preds = %bb.q, %bb.r
  %i.bj = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #22
  %i.bk = icmp eq i32 %.3, %i.bj
  br i1 %i.bk, label %bb.s, label %bb.v

bb.s:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit26
  %.316 = extractvalue { ptr, i32 } %.pn.pn.pn.pn, 0
  %i.bl = call ptr @__cxa_begin_catch(ptr %.316) #22
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bl)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.v unwind label %bb.w

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.k, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.t
  %.018 = phi ptr [ @.str.17, %bb.t ], [ %i.am, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %i.am, %bb.k ]
  ret ptr %.018

bb.v:                                             ; preds = %bb.u, %_ZN10z3_log_ctxD2Ev.exit26
  %.merged = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZN10z3_log_ctxD2Ev.exit26 ], [ %i.bm, %bb.u ]
  resume { ptr, i32 } %.merged

bb.w:                                             ; preds = %bb.u
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #25
  unreachable
}

declare void @_Z23log_Z3_solver_to_stringP11_Z3_contextP10_Z3_solver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef ptr @Z3_solver_to_dimacs_string(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_Z23log_Z3_solver_to_stringP11_Z3_contextP10_Z3_solver(ptr noundef %0, ptr noundef %1)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.q

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.d, align 8, !tbaa !221
  invoke fastcc void @_ZL11init_solverP11_Z3_contextP10_Z3_solver(ptr noundef nonnull %0, ptr noundef %1)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !87
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6solver14display_dimacsERSob(ptr noundef nonnull align 8 dereferenceable(112) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %2)
          to label %bb.g unwind label %bb.m       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !587)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !588)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !231, !noalias !589 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i: ; preds = %bb.g
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %6 = load ptr, ptr %5, align 8, !tbaa !232, !noalias !589 ; 2 uses
  %7 = icmp ugt ptr %i.j, %6
  %.08.i9.i.i = select i1 %7, ptr %i.j, ptr %6    ; 2 uses
  %.not.i.i = icmp eq ptr %.08.i9.i.i, null
  br i1 %.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !233, !noalias !589
  %i.n = ptrtoint ptr %.08.i9.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %i.p, ptr %i.q, align 8, !tbaa !54, !noalias !589
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !53, !noalias !589
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !55, !noalias !589
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !51, !alias.scope !589
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !53, !noalias !589 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 7 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.z = load i64, ptr %i.y, align 8, !tbaa !54, !noalias !589 ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.v, ptr %4, align 8, !tbaa !53, !alias.scope !589
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !55, !noalias !589
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !55, !alias.scope !589
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %3, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !54, !noalias !589
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.h
  %i.ad = phi i64 [ %i.z, %bb.h ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !54, !alias.scope !589
  store ptr %i.w, ptr %i.t, align 8, !tbaa !53, !noalias !589
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ae, i8 0, i64 9, i1 false), !noalias !589
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.h, ptr noundef nonnull %i.w, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.ah = load ptr, ptr %4, align 8, !tbaa !53, !alias.scope !589 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.u
  br i1 %i.ai, label %.body, label %.body.sink.split

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.aj = invoke noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.j unwind label %bb.n       ; 2 uses

bb.j:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ak = load ptr, ptr %4, align 8, !tbaa !53    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.u
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.am = load i64, ptr %i.u, align 8, !tbaa !55
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ao = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ao, ptr %3, align 8, !tbaa !38
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aq = getelementptr i8, ptr %i.ao, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %3, i64 %i.ar
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8, !tbaa !38
  %i.at = load ptr, ptr %i.t, align 8, !tbaa !53  ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.w
  br i1 %i.au, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = load i64, ptr %i.w, align 8, !tbaa !55
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #24
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8, !tbaa !38
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ax) #22
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ay) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %i.b, label %bb.k, label %_ZN10z3_log_ctxD2Ev.exit, !prof !224

bb.k:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.l:                                             ; preds = %bb.e
  %i.az = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.p

bb.m:                                             ; preds = %bb.f
  %i.ba = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.o

bb.n:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.bc = load ptr, ptr %4, align 8, !tbaa !53    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.u
  br i1 %i.bd, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.n, %bb.i
  %.sink = phi ptr [ %i.ah, %bb.i ], [ %i.bc, %bb.n ]
  %.pn.ph = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %i.bb, %bb.n ]
  %i.be = load i64, ptr %i.u, align 8, !tbaa !55
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bf) #24
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.n, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %i.bb, %bb.n ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.o

bb.o:                                             ; preds = %.body, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ba, %bb.m ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.o ], [ %i.az, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.c
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.p ], [ %i.c, %bb.c ] ; 3 uses
  %.3 = extractvalue { ptr, i32 } %.pn.pn.pn.pn, 1
  br i1 %i.b, label %bb.r, label %_ZN10z3_log_ctxD2Ev.exit27, !prof !224

bb.r:                                             ; preds = %bb.q
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit27

_ZN10z3_log_ctxD2Ev.exit27:                       ; preds = %bb.q, %bb.r
  %i.bg = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #22
  %i.bh = icmp eq i32 %.3, %i.bg
  br i1 %i.bh, label %bb.s, label %bb.v

bb.s:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit27
  %.317 = extractvalue { ptr, i32 } %.pn.pn.pn.pn, 0
  %i.bi = call ptr @__cxa_begin_catch(ptr %.317) #22
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bi)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.v unwind label %bb.w

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.k, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.t
  %.019 = phi ptr [ @.str.17, %bb.t ], [ %i.aj, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %i.aj, %bb.k ]
  ret ptr %.019

bb.v:                                             ; preds = %bb.u, %_ZN10z3_log_ctxD2Ev.exit27
  %.merged = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZN10z3_log_ctxD2Ev.exit27 ], [ %i.bj, %bb.u ]
  resume { ptr, i32 } %.merged

bb.w:                                             ; preds = %bb.u
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #25
  unreachable
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6solver14display_dimacsERSob(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i32 @Z3_get_implied_equalities(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z29log_Z3_get_implied_equalitiesP11_Z3_contextP10_Z3_solverjPKP7_Z3_astPj(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4)
          to label %bb.c unwind label %.thread

.thread:                                          ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %.131 = extractvalue { ptr, i32 } %i.c, 1
  br label %bb.h

end_hunk_5
