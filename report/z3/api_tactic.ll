Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/api_tactic?download=true
inline.NumInlined: 1454
inline.NumDeleted: 419
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Z3_tactic_get_descr:bb.a
bb.g:                                             ; preds = %bb.b, %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.l

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.l

bb.i:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !361
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i
  %.017 = phi ptr [ %i.i, %bb.i ], [ @.str.1, %bb.f ] ; 2 uses
  br i1 %i.b, label %bb.k, label %_ZN10z3_log_ctxD2Ev.exit, !prof !189

bb.k:                                             ; preds = %bb.j
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.l:                                             ; preds = %bb.g, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.g, %bb.h ], [ %i.f, %bb.g ] ; 3 uses
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 1
  br i1 %i.b, label %bb.m, label %_ZN10z3_log_ctxD2Ev.exit22, !prof !189

bb.m:                                             ; preds = %bb.l
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit22

_ZN10z3_log_ctxD2Ev.exit22:                       ; preds = %bb.l, %bb.m
  %i.j = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #20
  %i.k = icmp eq i32 %.1, %i.j
  br i1 %i.k, label %bb.n, label %bb.q

bb.n:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit22
  %.115 = extractvalue { ptr, i32 } %.pn.pn, 0
  %i.l = call ptr @__cxa_begin_catch(ptr %.115) #20
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.k, %bb.j, %bb.o
  %.118 = phi ptr [ @.str.1, %bb.o ], [ %.017, %bb.j ], [ %.017, %bb.k ]
  ret ptr %.118

bb.q:                                             ; preds = %bb.p, %_ZN10z3_log_ctxD2Ev.exit22
  %.merged = phi { ptr, i32 } [ %.pn.pn, %_ZN10z3_log_ctxD2Ev.exit22 ], [ %i.m, %bb.p ]
  resume { ptr, i32 } %.merged

bb.r:                                             ; preds = %bb.p
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #22
  unreachable
}

declare void @_Z23log_Z3_tactic_get_descrP11_Z3_contextPKc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define ptr @Z3_probe_get_descr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.symbol, align 8              ; 5 uses
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z22log_Z3_probe_get_descrP11_Z3_contextPKc(ptr noundef %0, ptr noundef %1)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.c, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.d = invoke noundef ptr @_ZNK14tactic_manager10find_probeERK6symbol(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.h       ; 2 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN3api7context14set_error_codeE13Z3_error_codePKc(ptr noundef nonnull align 8 dereferenceable(3088) %0, i32 noundef 3, ptr noundef null)
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.l

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.l

bb.i:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !363
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i
  %.017 = phi ptr [ %i.i, %bb.i ], [ @.str.1, %bb.f ] ; 2 uses
  br i1 %i.b, label %bb.k, label %_ZN10z3_log_ctxD2Ev.exit, !prof !189

bb.k:                                             ; preds = %bb.j
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.l:                                             ; preds = %bb.g, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.g, %bb.h ], [ %i.f, %bb.g ] ; 3 uses
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 1
  br i1 %i.b, label %bb.m, label %_ZN10z3_log_ctxD2Ev.exit22, !prof !189

bb.m:                                             ; preds = %bb.l
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit22

_ZN10z3_log_ctxD2Ev.exit22:                       ; preds = %bb.l, %bb.m
  %i.j = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #20
  %i.k = icmp eq i32 %.1, %i.j
  br i1 %i.k, label %bb.n, label %bb.q

bb.n:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit22
  %.115 = extractvalue { ptr, i32 } %.pn.pn, 0
  %i.l = call ptr @__cxa_begin_catch(ptr %.115) #20
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.k, %bb.j, %bb.o
  %.118 = phi ptr [ @.str.1, %bb.o ], [ %.017, %bb.j ], [ %.017, %bb.k ]
  ret ptr %.118

bb.q:                                             ; preds = %bb.p, %_ZN10z3_log_ctxD2Ev.exit22
  %.merged = phi { ptr, i32 } [ %.pn.pn, %_ZN10z3_log_ctxD2Ev.exit22 ], [ %i.m, %bb.p ]
  resume { ptr, i32 } %.merged

bb.r:                                             ; preds = %bb.p
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #22
  unreachable
}

declare void @_Z22log_Z3_probe_get_descrP11_Z3_contextPKc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define double @Z3_probe_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.ref.67, align 8              ; 5 uses
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %_Z12to_probe_refP9_Z3_probe.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z18log_Z3_probe_applyP11_Z3_contextP9_Z3_probeP8_Z3_goal(ptr noundef %0, ptr noundef %1, ptr noundef %2)
          to label %_Z12to_probe_refP9_Z3_probe.exit unwind label %.thread

.thread:                                          ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %.123 = extractvalue { ptr, i32 } %i.c, 1
  br label %bb.h

_Z12to_probe_refP9_Z3_probe.exit:                 ; preds = %bb.b, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.d, align 8, !tbaa !172
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !206  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !223, !noalias !366, !nonnull !224, !noundef !224 ; 6 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !223, !alias.scope !366
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !236, !noalias !366
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !236, !noalias !366
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke double %i.n(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull align 8 dereferenceable(124) %i.h)
          to label %bb.c unwind label %bb.g       ; 2 uses

bb.c:                                             ; preds = %_Z12to_probe_refP9_Z3_probe.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !236
  %i.r = add i32 %i.q, -1                         ; 2 uses
  store i32 %i.r, ptr %i.p, align 8, !tbaa !236
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.d, label %_ZN3refI4goalED2Ev.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4goalD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %i.h) #20
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(124) %i.h)
          to label %_ZN3refI4goalED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #22
  unreachable

_ZN3refI4goalED2Ev.exit:                          ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br i1 %i.b, label %bb.f, label %_ZN10z3_log_ctxD2Ev.exit, !prof !189

bb.f:                                             ; preds = %_ZN3refI4goalED2Ev.exit
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.g:                                             ; preds = %_Z12to_probe_refP9_Z3_probe.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 3 uses
  call void @_ZN3refI4goalED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.1 = extractvalue { ptr, i32 } %i.v, 1         ; 2 uses
  br i1 %i.b, label %bb.h, label %_ZN10z3_log_ctxD2Ev.exit18, !prof !203

bb.h:                                             ; preds = %.thread, %bb.g
  %.127 = phi i32 [ %.123, %.thread ], [ %.1, %bb.g ]
  %.pn.pn25 = phi { ptr, i32 } [ %i.c, %.thread ], [ %i.v, %bb.g ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit18

_ZN10z3_log_ctxD2Ev.exit18:                       ; preds = %bb.g, %bb.h
  %.126 = phi i32 [ %.1, %bb.g ], [ %.127, %bb.h ]
  %.pn.pn24 = phi { ptr, i32 } [ %i.v, %bb.g ], [ %.pn.pn25, %bb.h ] ; 2 uses
  %i.w = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #20
  %i.x = icmp eq i32 %.126, %i.w
  br i1 %i.x, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit18
  %.113 = extractvalue { ptr, i32 } %.pn.pn24, 0
  %i.y = call ptr @__cxa_begin_catch(ptr %.113) #20
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.f, %_ZN3refI4goalED2Ev.exit, %bb.j
  %.015 = phi double [ 0.000000e+00, %bb.j ], [ %i.o, %_ZN3refI4goalED2Ev.exit ], [ %i.o, %bb.f ]
  ret double %.015

bb.l:                                             ; preds = %bb.k, %_ZN10z3_log_ctxD2Ev.exit18
  %.merged = phi { ptr, i32 } [ %.pn.pn24, %_ZN10z3_log_ctxD2Ev.exit18 ], [ %i.z, %bb.k ]
  resume { ptr, i32 } %.merged

bb.m:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #22
  unreachable
}

declare void @_Z18log_Z3_probe_applyP11_Z3_contextP9_Z3_probeP8_Z3_goal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3refI4goalED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !223    ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN3refI4goalE7dec_refEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !236
  %i.d = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !236
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN3refI4goalE7dec_refEv.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4goalD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %i.a) #20
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(124) %i.a)
          to label %_ZN3refI4goalE7dec_refEv.exit unwind label %bb.d

_ZN3refI4goalE7dec_refEv.exit:                    ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef ptr @Z3_tactic_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.params_ref, align 8          ; 9 uses
  %4 = alloca %class.params_ref, align 8          ; 4 uses
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z19log_Z3_tactic_applyP11_Z3_contextP10_Z3_tacticP8_Z3_goal(ptr noundef %0, ptr noundef %1, ptr noundef %2)
          to label %bb.c unwind label %.thread26

.thread26:                                        ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %.128 = extractvalue { ptr, i32 } %i.c, 1
  br label %bb.l

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.d, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr null, ptr %3, align 8, !tbaa !194
  invoke void @_ZN10params_refC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.e = invoke fastcc noundef ptr @_ZL13_tactic_applyP11_Z3_contextP10_Z3_tacticP8_Z3_goal10params_ref(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 %4)
          to label %bb.e unwind label %bb.g       ; 3 uses

bb.e:                                             ; preds = %bb.d
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #20
  br i1 %i.b, label %bb.f, label %bb.i, !prof !189

bb.f:                                             ; preds = %bb.e
  invoke void @_Z4SetRPKv(ptr noundef %i.e)
          to label %bb.j unwind label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #20
  br label %bb.k

bb.h:                                             ; preds = %bb.c, %bb.f
  %i.g = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.j:                                             ; preds = %bb.f
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.k:                                             ; preds = %bb.g, %bb.h
  %.pn = phi { ptr, i32 } [ %i.g, %bb.h ], [ %i.f, %bb.g ] ; 3 uses
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.1 = extractvalue { ptr, i32 } %.pn, 1         ; 2 uses
  br i1 %i.b, label %bb.l, label %_ZN10z3_log_ctxD2Ev.exit22, !prof !203

bb.l:                                             ; preds = %.thread26, %bb.k
  %.132 = phi i32 [ %.128, %.thread26 ], [ %.1, %bb.k ]
  %.pn.pn30 = phi { ptr, i32 } [ %i.c, %.thread26 ], [ %.pn, %bb.k ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit22

_ZN10z3_log_ctxD2Ev.exit22:                       ; preds = %bb.k, %bb.l
  %.131 = phi i32 [ %.1, %bb.k ], [ %.132, %bb.l ]
  %.pn.pn29 = phi { ptr, i32 } [ %.pn, %bb.k ], [ %.pn.pn30, %bb.l ] ; 2 uses
  %i.h = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #20
  %i.i = icmp eq i32 %.131, %i.h
  br i1 %i.i, label %bb.m, label %bb.p

bb.m:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit22
  %.117 = extractvalue { ptr, i32 } %.pn.pn29, 0
  %i.j = call ptr @__cxa_begin_catch(ptr %.117) #20
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.p unwind label %bb.q

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.j, %bb.i, %bb.n
  %.019 = phi ptr [ null, %bb.n ], [ %i.e, %bb.i ], [ %i.e, %bb.j ]
  ret ptr %.019

bb.p:                                             ; preds = %bb.o, %_ZN10z3_log_ctxD2Ev.exit22
  %.merged = phi { ptr, i32 } [ %.pn.pn29, %_ZN10z3_log_ctxD2Ev.exit22 ], [ %i.k, %bb.o ]
  resume { ptr, i32 } %.merged

bb.q:                                             ; preds = %bb.o
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #22
  unreachable
}

declare void @_Z19log_Z3_tactic_applyP11_Z3_contextP10_Z3_tacticP8_Z3_goal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL13_tactic_applyP11_Z3_contextP10_Z3_tacticP8_Z3_goal10params_ref(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef nonnull align 8 %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.ref.67, align 8              ; 11 uses
  %5 = alloca %class.ref.67, align 8              ; 5 uses
  %6 = alloca %class.cancel_eh, align 8           ; 14 uses
  %7 = alloca %"class.api::context::set_interruptable", align 8 ; 6 uses
  %8 = alloca %struct.scoped_ctrl_c, align 8      ; 6 uses
  %9 = alloca %class.scoped_timer, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr null, ptr %4, align 8, !tbaa !223
  %i.a = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 128)
          to label %_Z11to_goal_refP8_Z3_goal.exit unwind label %bb.ah ; 3 uses

_Z11to_goal_refP8_Z3_goal.exit:                   ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !223, !noalias !371, !nonnull !224, !noundef !224 ; 6 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !223, !alias.scope !371
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !236, !noalias !371
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8, !tbaa !236, !noalias !371
  invoke void @_ZN4goalC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %i.a, ptr noundef nonnull align 8 dereferenceable(124) %i.c)
          to label %bb.b unwind label %bb.ag

bb.b:                                             ; preds = %_Z11to_goal_refP8_Z3_goal.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !236
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !236
  %i.j = load ptr, ptr %4, align 8, !tbaa !223    ; 4 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !236
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 8, !tbaa !236
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4goalD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %i.j) #20
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(124) %i.j)
          to label %bb.e unwind label %bb.ag

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c
  store ptr %i.a, ptr %4, align 8, !tbaa !223
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !236
  %i.q = add i32 %i.p, -1                         ; 2 uses
  store i32 %i.q, ptr %i.o, align 8, !tbaa !236
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %_ZN3refI4goalED2Ev.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4goalD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %i.c) #20
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(124) %i.c)
          to label %_ZN3refI4goalED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #22
  unreachable

_ZN3refI4goalED2Ev.exit:                          ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.u = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 184)
          to label %bb.h unwind label %bb.ah      ; 10 uses

bb.h:                                             ; preds = %_ZN3refI4goalED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 232
  invoke void @_ZN3api6objectC2ERNS_7contextE(ptr noundef nonnull align 8 dereferenceable(184) %i.u, ptr noundef nonnull align 8 dereferenceable(3088) %0)
          to label %bb.i unwind label %bb.ah

bb.i:                                             ; preds = %bb.h
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV19Z3_apply_result_ref, i64 16), ptr %i.u, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store ptr %i.x, ptr %i.w, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i32 0, ptr %i.y, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  store i32 16, ptr %i.z, align 4, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 168 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  invoke void @_ZN3api7context11save_objectEPNS_6objectE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull %i.u)
          to label %bb.j unwind label %bb.ah

bb.j:                                             ; preds = %bb.i
  %i.ab = invoke noundef i32 @_ZNK10params_ref8get_uintEPKcj(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.4, i32 noundef -1)
          to label %bb.k unwind label %bb.ah

bb.k:                                             ; preds = %bb.j
  %i.ac = invoke noundef zeroext i1 @_ZNK10params_ref8get_boolEPKcb(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.5, i1 noundef zeroext false)
          to label %_Z13to_tactic_refP10_Z3_tactic.exit unwind label %bb.ah

_Z13to_tactic_refP10_Z3_tactic.exit:              ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !190
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.ae, align 8, !tbaa !239
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV9cancel_ehI8reslimitE, i64 16), ptr %6, align 8, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(42) %i.af, i8 0, i64 42, i1 false)
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !372
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !197 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 112
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(12) %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.l unwind label %bb.ai

bb.l:                                             ; preds = %_Z13to_tactic_refP10_Z3_tactic.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZN3api7context17set_interruptableC1ERS0_R13event_handler(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %bb.m unwind label %bb.aj

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  invoke void @_ZN13scoped_ctrl_cC1ER13event_handlerb(ptr noundef nonnull align 8 dereferenceable(9) %8, ptr noundef nonnull align 8 dereferenceable(12) %6, i1 noundef zeroext %i.ac)
          to label %bb.n unwind label %bb.ak

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZN12scoped_timerC1EjP13event_handler(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef %i.ab, ptr noundef nonnull %6)
          to label %_Z13to_tactic_refP10_Z3_tactic.exit50 unwind label %bb.al

_Z13to_tactic_refP10_Z3_tactic.exit50:            ; preds = %bb.n
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !197
  invoke void @_Z4execR6tacticRK3refI4goalER11sref_bufferIS2_Lj16EE(ptr noundef nonnull align 8 dereferenceable(12) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(144) %i.w)
          to label %bb.o unwind label %bb.am

bb.o:                                             ; preds = %_Z13to_tactic_refP10_Z3_tactic.exit50
  %i.an = load ptr, ptr %4, align 8, !tbaa !223   ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 120
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = and i32 %i.ap, 536870912
  %.not.i51 = icmp eq i32 %i.aq, 0
  br i1 %.not.i51, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !373, !nonnull !224, !align !241 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 88 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !242 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZNK4goal2prEj.exit.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.p, %bb.q
  %.0.i.i.i.i = phi ptr [ %i.ay, %bb.q ], [ %i.at, %bb.p ] ; 5 uses
  %i.av = load i32, ptr %.0.i.i.i.i, align 8
  %i.aw = lshr i32 %i.av, 30
  switch i32 %i.aw, label %default.unreachable [
    i32 0, label %bb.q
    i32 1, label %bb.r
    i32 2, label %bb.s
    i32 3, label %bb.t
  ]

bb.q:                                             ; preds = %.preheader.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !184
  br label %.preheader.i.i.i.i, !llvm.loop !0

bb.r:                                             ; preds = %.preheader.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !184
  %i.bb = add i32 %i.ba, 1
  br label %_ZNK11ast_manager4sizeERKN14parray_managerINS_17expr_array_configEE3refE.exit.i.i

bb.s:                                             ; preds = %.preheader.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !184
  %i.be = add i32 %i.bd, -1
  br label %_ZNK11ast_manager4sizeERKN14parray_managerINS_17expr_array_configEE3refE.exit.i.i

bb.t:                                             ; preds = %.preheader.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !184
  br label %_ZNK11ast_manager4sizeERKN14parray_managerINS_17expr_array_configEE3refE.exit.i.i

default.unreachable:                              ; preds = %.preheader.i.i.i.i
  unreachable

_ZNK11ast_manager4sizeERKN14parray_managerINS_17expr_array_configEE3refE.exit.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.07.i.i.i.i = phi i32 [ %i.bg, %bb.t ], [ %i.bb, %bb.r ], [ %i.be, %bb.s ]
  %.not1.i = icmp eq i32 %.07.i.i.i.i, 0
  br i1 %.not1.i, label %_ZNK4goal2prEj.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNK11ast_manager4sizeERKN14parray_managerINS_17expr_array_configEE3refE.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 616
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN11ast_manager17expr_array_configEE3getERKNS2_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 8 dereferenceable(12) %i.as, i32 noundef 0)
          to label %.noexc52 unwind label %bb.am

.noexc52:                                         ; preds = %bb.u
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !244
  br label %_ZNK4goal2prEj.exit.i

_ZNK4goal2prEj.exit.i:                            ; preds = %.noexc52, %_ZNK11ast_manager4sizeERKN14parray_managerINS_17expr_array_configEE3refE.exit.i.i, %bb.p
  %i.bk = phi ptr [ %i.bj, %.noexc52 ], [ null, %_ZNK11ast_manager4sizeERKN14parray_managerINS_17expr_array_configEE3refE.exit.i.i ], [ null, %bb.p ]
  %i.bl = invoke noundef ptr @_Z21proof2proof_converterR11ast_managerP3app(ptr noundef nonnull align 8 dereferenceable(952) %i.ar, ptr noundef %i.bk)
          to label %_ZNK4goal2pcEv.exit unwind label %bb.am

bb.v:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !245
  br label %_ZNK4goal2pcEv.exit

_ZNK4goal2pcEv.exit:                              ; preds = %bb.v, %_ZNK4goal2prEj.exit.i
  %i.bo = phi ptr [ %i.bn, %bb.v ], [ %i.bl, %_ZNK4goal2prEj.exit.i ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 176 ; 2 uses
  %.not.i54 = icmp eq ptr %i.bo, null
  br i1 %.not.i54, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNK4goal2pcEv.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !247
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 8, !tbaa !247
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZNK4goal2pcEv.exit
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !245 ; 5 uses
  %.not.i.i55 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i55, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !247
  %i.bw = add i32 %i.bv, -1                       ; 2 uses
  store i32 %i.bw, ptr %i.bu, align 8, !tbaa !247
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.by = load ptr, ptr %i.bt, align 8, !tbaa !14
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.bt) #20, !inline_history !369
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(12) %i.bt)
          to label %bb.aa unwind label %bb.am

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.y
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !245
  %i.ca = load ptr, ptr %4, align 8, !tbaa !223
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !248 ; 3 uses
  %.not.i57 = icmp eq ptr %i.cc, null
  br i1 %.not.i57, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !247
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cd, align 8, !tbaa !247
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cg = load ptr, ptr %i.aa, align 8, !tbaa !248 ; 5 uses
  %.not.i.i58 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i58, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !247
  %i.cj = add i32 %i.ci, -1                       ; 2 uses
  store i32 %i.cj, ptr %i.ch, align 8, !tbaa !247
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cl = load ptr, ptr %i.cg, align 8, !tbaa !14
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.cg) #20, !inline_history !370
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(12) %i.cg)
          to label %bb.af unwind label %bb.am

bb.af:                                            ; preds = %bb.ad, %bb.ac, %bb.ae
  store ptr %i.cc, ptr %i.aa, align 8, !tbaa !248
  br label %bb.ar

bb.ag:                                            ; preds = %bb.d, %_Z11to_goal_refP8_Z3_goal.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3refI4goalED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.be

bb.ah:                                            ; preds = %bb.h, %bb.j, %_ZN3refI4goalED2Ev.exit, %bb.i, %bb.a, %bb.k
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.ai:                                            ; preds = %_Z13to_tactic_refP10_Z3_tactic.exit
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.aj:                                            ; preds = %bb.l
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ak:                                            ; preds = %bb.m
  %i.cr = landingpad { ptr, i32 }
          cleanup
end_hunk_0
