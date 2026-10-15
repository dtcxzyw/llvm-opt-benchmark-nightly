Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/api_quant?download=true
inline.NumInlined: 593
inline.NumDeleted: 161
begin_hunk_0_@_Z31log_Z3_get_quantifier_skolem_idP11_Z3_contextP7_Z3_ast

; Function Attrs: mustprogress uwtable
define ptr @Z3_get_quantifier_id(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z31log_Z3_get_quantifier_skolem_idP11_Z3_contextP7_Z3_ast(ptr noundef %0, ptr noundef %1)
          to label %bb.c unwind label %.thread

.thread:                                          ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %.01724 = extractvalue { ptr, i32 } %i.c, 1
  br label %bb.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.d, align 8, !tbaa !164
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 65535
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  invoke void @_ZN3api7context14set_error_codeE13Z3_error_codePKc(ptr noundef nonnull align 8 dereferenceable(3088) %0, i32 noundef 1, ptr noundef null)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.in = phi ptr [ %i.i, %bb.d ], [ @_ZN6symbol4nullE, %bb.e ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !11  ; 2 uses
  br i1 %i.b, label %bb.g, label %_ZN10z3_log_ctxD2Ev.exit, !prof !12

bb.g:                                             ; preds = %bb.f
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 3 uses
  %.017 = extractvalue { ptr, i32 } %i.j, 1       ; 2 uses
  br i1 %i.b, label %bb.i, label %_ZN10z3_log_ctxD2Ev.exit20, !prof !13

bb.i:                                             ; preds = %.thread, %bb.h
  %.01728 = phi i32 [ %.01724, %.thread ], [ %.017, %bb.h ]
  %.pn26 = phi { ptr, i32 } [ %i.c, %.thread ], [ %i.j, %bb.h ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit20

_ZN10z3_log_ctxD2Ev.exit20:                       ; preds = %bb.h, %bb.i
  %.01727 = phi i32 [ %.017, %bb.h ], [ %.01728, %bb.i ]
  %.pn25 = phi { ptr, i32 } [ %i.j, %bb.h ], [ %.pn26, %bb.i ] ; 2 uses
  %i.k = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #16
  %i.l = icmp eq i32 %.01727, %i.k
  br i1 %i.l, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit20
  %.015 = extractvalue { ptr, i32 } %.pn25, 0
  %i.m = tail call ptr @__cxa_begin_catch(ptr %.015) #16
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload = load ptr, ptr @_ZN6symbol4nullE, align 8, !tbaa !11
  tail call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.g, %bb.f, %bb.k
  %.1 = phi ptr [ %.sroa.0.0.copyload, %bb.k ], [ %.0, %bb.f ], [ %.0, %bb.g ]
  ret ptr %.1

bb.m:                                             ; preds = %bb.l, %_ZN10z3_log_ctxD2Ev.exit20
  %.merged = phi { ptr, i32 } [ %.pn25, %_ZN10z3_log_ctxD2Ev.exit20 ], [ %i.n, %bb.l ]
  resume { ptr, i32 } %.merged

bb.n:                                             ; preds = %bb.l
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define i32 @Z3_get_quantifier_num_patterns(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z34log_Z3_get_quantifier_num_patternsP11_Z3_contextP7_Z3_ast(ptr noundef %0, ptr noundef %1)
          to label %bb.c unwind label %.thread

.thread:                                          ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %.022 = extractvalue { ptr, i32 } %i.c, 1
  br label %bb.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.d, align 8, !tbaa !164
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 65535
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = load i32, ptr %i.i, align 8, !tbaa !248
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  invoke void @_ZN3api7context14set_error_codeE13Z3_error_codePKc(ptr noundef nonnull align 8 dereferenceable(3088) %0, i32 noundef 1, ptr noundef null)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %.015 = phi i32 [ %i.j, %bb.d ], [ 0, %bb.e ]   ; 2 uses
  br i1 %i.b, label %bb.g, label %_ZN10z3_log_ctxD2Ev.exit, !prof !12

bb.g:                                             ; preds = %bb.f
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 3 uses
  %.0 = extractvalue { ptr, i32 } %i.k, 1         ; 2 uses
  br i1 %i.b, label %bb.i, label %_ZN10z3_log_ctxD2Ev.exit18, !prof !13

bb.i:                                             ; preds = %.thread, %bb.h
  %.026 = phi i32 [ %.022, %.thread ], [ %.0, %bb.h ]
  %.pn24 = phi { ptr, i32 } [ %i.c, %.thread ], [ %i.k, %bb.h ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit18

_ZN10z3_log_ctxD2Ev.exit18:                       ; preds = %bb.h, %bb.i
  %.025 = phi i32 [ %.0, %bb.h ], [ %.026, %bb.i ]
  %.pn23 = phi { ptr, i32 } [ %i.k, %bb.h ], [ %.pn24, %bb.i ] ; 2 uses
  %i.l = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #16
  %i.m = icmp eq i32 %.025, %i.l
  br i1 %i.m, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit18
  %.013 = extractvalue { ptr, i32 } %.pn23, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %.013) #16
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.g, %bb.f, %bb.k
  %.116 = phi i32 [ 0, %bb.k ], [ %.015, %bb.f ], [ %.015, %bb.g ]
  ret i32 %.116

bb.m:                                             ; preds = %bb.l, %_ZN10z3_log_ctxD2Ev.exit18
  %.merged = phi { ptr, i32 } [ %.pn23, %_ZN10z3_log_ctxD2Ev.exit18 ], [ %i.o, %bb.l ]
  resume { ptr, i32 } %.merged

bb.n:                                             ; preds = %bb.l
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #17
  unreachable
}

declare void @_Z34log_Z3_get_quantifier_num_patternsP11_Z3_contextP7_Z3_ast(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define ptr @Z3_get_quantifier_pattern_ast(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 4 uses
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  invoke void @_Z33log_Z3_get_quantifier_pattern_astP11_Z3_contextP7_Z3_astj(ptr noundef %0, ptr noundef %1, i32 noundef %2)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %.thread38

.thread:                                          ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.d, align 8, !tbaa !164
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 65535
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %.thread33, label %bb.g

.thread33:                                        ; preds = %.thread
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !216
  %i.l = zext i32 %i.k to i64
  %.idx.i = shl nuw nsw i64 %i.l, 4
  %3 = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i
  %i.m = zext i32 %2 to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !168  ; 3 uses
  br i1 %i.b, label %bb.d, label %_ZN10z3_log_ctxD2Ev.exit, !prof !12

bb.d:                                             ; preds = %.thread33
  invoke void @_Z4SetRPKv(ptr noundef %i.o)
          to label %bb.k unwind label %bb.f

bb.e:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 3 uses
  %.2 = extractvalue { ptr, i32 } %i.p, 1         ; 2 uses
  br i1 %i.b, label %bb.l, label %_ZN10z3_log_ctxD2Ev.exit28, !prof !13

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %.thread38

bb.g:                                             ; preds = %.thread
  invoke void @_ZN3api7context14set_error_codeE13Z3_error_codePKc(ptr noundef nonnull align 8 dereferenceable(3088) %0, i32 noundef 1, ptr noundef null)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  br i1 %i.b, label %bb.i, label %_ZN10z3_log_ctxD2Ev.exit, !prof !12

bb.i:                                             ; preds = %bb.h
  invoke void @_Z4SetRPKv(ptr noundef null)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %.thread38

bb.k:                                             ; preds = %bb.i, %bb.d
  %.023 = phi ptr [ null, %bb.i ], [ %i.o, %bb.d ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

.thread38:                                        ; preds = %bb.j, %bb.f, %bb.c
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.r, %bb.j ], [ %i.c, %bb.c ] ; 2 uses
  %.240 = extractvalue { ptr, i32 } %.pn.pn.pn.ph, 1
  br label %bb.l

bb.l:                                             ; preds = %.thread38, %bb.e
  %.244 = phi i32 [ %.240, %.thread38 ], [ %.2, %bb.e ]
  %.pn.pn.pn42 = phi { ptr, i32 } [ %.pn.pn.pn.ph, %.thread38 ], [ %i.p, %bb.e ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit28

_ZN10z3_log_ctxD2Ev.exit28:                       ; preds = %bb.e, %bb.l
  %.243 = phi i32 [ %.2, %bb.e ], [ %.244, %bb.l ]
  %.pn.pn.pn41 = phi { ptr, i32 } [ %i.p, %bb.e ], [ %.pn.pn.pn42, %bb.l ] ; 2 uses
  %i.s = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #16
  %i.t = icmp eq i32 %.243, %i.s
  br i1 %i.t, label %bb.m, label %bb.p

bb.m:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit28
  %.221 = extractvalue { ptr, i32 } %.pn.pn.pn41, 0
  %i.u = tail call ptr @__cxa_begin_catch(ptr %.221) #16
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.p unwind label %bb.q

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.k, %bb.h, %.thread33, %bb.n
  %.124 = phi ptr [ null, %bb.n ], [ %.023, %bb.k ], [ %i.o, %.thread33 ], [ null, %bb.h ]
  ret ptr %.124

bb.p:                                             ; preds = %bb.o, %_ZN10z3_log_ctxD2Ev.exit28
  %.merged = phi { ptr, i32 } [ %.pn.pn.pn41, %_ZN10z3_log_ctxD2Ev.exit28 ], [ %i.v, %bb.o ]
  resume { ptr, i32 } %.merged

bb.q:                                             ; preds = %bb.o
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #17
  unreachable
}

declare void @_Z33log_Z3_get_quantifier_pattern_astP11_Z3_contextP7_Z3_astj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define i32 @Z3_get_quantifier_num_no_patterns(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z37log_Z3_get_quantifier_num_no_patternsP11_Z3_contextP7_Z3_ast(ptr noundef %0, ptr noundef %1)
          to label %bb.c unwind label %.thread

.thread:                                          ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %.022 = extractvalue { ptr, i32 } %i.c, 1
  br label %bb.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.d, align 8, !tbaa !164
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 65535
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.j = load i32, ptr %i.i, align 4, !tbaa !249
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  invoke void @_ZN3api7context14set_error_codeE13Z3_error_codePKc(ptr noundef nonnull align 8 dereferenceable(3088) %0, i32 noundef 1, ptr noundef null)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %.015 = phi i32 [ %i.j, %bb.d ], [ 0, %bb.e ]   ; 2 uses
  br i1 %i.b, label %bb.g, label %_ZN10z3_log_ctxD2Ev.exit, !prof !12

bb.g:                                             ; preds = %bb.f
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 3 uses
  %.0 = extractvalue { ptr, i32 } %i.k, 1         ; 2 uses
  br i1 %i.b, label %bb.i, label %_ZN10z3_log_ctxD2Ev.exit18, !prof !13

bb.i:                                             ; preds = %.thread, %bb.h
  %.026 = phi i32 [ %.022, %.thread ], [ %.0, %bb.h ]
  %.pn24 = phi { ptr, i32 } [ %i.c, %.thread ], [ %i.k, %bb.h ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit18

_ZN10z3_log_ctxD2Ev.exit18:                       ; preds = %bb.h, %bb.i
  %.025 = phi i32 [ %.0, %bb.h ], [ %.026, %bb.i ]
  %.pn23 = phi { ptr, i32 } [ %i.k, %bb.h ], [ %.pn24, %bb.i ] ; 2 uses
  %i.l = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #16
  %i.m = icmp eq i32 %.025, %i.l
  br i1 %i.m, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit18
  %.013 = extractvalue { ptr, i32 } %.pn23, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %.013) #16
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.g, %bb.f, %bb.k
  %.116 = phi i32 [ 0, %bb.k ], [ %.015, %bb.f ], [ %.015, %bb.g ]
  ret i32 %.116

bb.m:                                             ; preds = %bb.l, %_ZN10z3_log_ctxD2Ev.exit18
  %.merged = phi { ptr, i32 } [ %.pn23, %_ZN10z3_log_ctxD2Ev.exit18 ], [ %i.o, %bb.l ]
  resume { ptr, i32 } %.merged

bb.n:                                             ; preds = %bb.l
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #17
  unreachable
}

declare void @_Z37log_Z3_get_quantifier_num_no_patternsP11_Z3_contextP7_Z3_ast(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define ptr @Z3_get_quantifier_no_pattern_ast(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 4 uses
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  invoke void @_Z36log_Z3_get_quantifier_no_pattern_astP11_Z3_contextP7_Z3_astj(ptr noundef %0, ptr noundef %1, i32 noundef %2)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %.thread38

.thread:                                          ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.d, align 8, !tbaa !164
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 65535
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %.thread33, label %bb.g

.thread33:                                        ; preds = %.thread
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !216
  %i.l = zext i32 %i.k to i64
  %.idx.i.i = shl nuw nsw i64 %i.l, 4
  %3 = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i.i
  %i.m = zext i32 %2 to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !168  ; 3 uses
  br i1 %i.b, label %bb.d, label %_ZN10z3_log_ctxD2Ev.exit, !prof !12

bb.d:                                             ; preds = %.thread33
  invoke void @_Z4SetRPKv(ptr noundef %i.o)
          to label %bb.k unwind label %bb.f

bb.e:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 3 uses
  %.2 = extractvalue { ptr, i32 } %i.p, 1         ; 2 uses
  br i1 %i.b, label %bb.l, label %_ZN10z3_log_ctxD2Ev.exit28, !prof !13

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %.thread38

bb.g:                                             ; preds = %.thread
  invoke void @_ZN3api7context14set_error_codeE13Z3_error_codePKc(ptr noundef nonnull align 8 dereferenceable(3088) %0, i32 noundef 1, ptr noundef null)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  br i1 %i.b, label %bb.i, label %_ZN10z3_log_ctxD2Ev.exit, !prof !12

bb.i:                                             ; preds = %bb.h
  invoke void @_Z4SetRPKv(ptr noundef null)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %.thread38

bb.k:                                             ; preds = %bb.i, %bb.d
  %.023 = phi ptr [ null, %bb.i ], [ %i.o, %bb.d ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

.thread38:                                        ; preds = %bb.j, %bb.f, %bb.c
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.r, %bb.j ], [ %i.c, %bb.c ] ; 2 uses
  %.240 = extractvalue { ptr, i32 } %.pn.pn.pn.ph, 1
  br label %bb.l

bb.l:                                             ; preds = %.thread38, %bb.e
  %.244 = phi i32 [ %.240, %.thread38 ], [ %.2, %bb.e ]
  %.pn.pn.pn42 = phi { ptr, i32 } [ %.pn.pn.pn.ph, %.thread38 ], [ %i.p, %bb.e ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit28

_ZN10z3_log_ctxD2Ev.exit28:                       ; preds = %bb.e, %bb.l
  %.243 = phi i32 [ %.2, %bb.e ], [ %.244, %bb.l ]
  %.pn.pn.pn41 = phi { ptr, i32 } [ %i.p, %bb.e ], [ %.pn.pn.pn42, %bb.l ] ; 2 uses
  %i.s = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #16
  %i.t = icmp eq i32 %.243, %i.s
  br i1 %i.t, label %bb.m, label %bb.p

bb.m:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit28
  %.221 = extractvalue { ptr, i32 } %.pn.pn.pn41, 0
  %i.u = tail call ptr @__cxa_begin_catch(ptr %.221) #16
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.p unwind label %bb.q

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.k, %bb.h, %.thread33, %bb.n
  %.124 = phi ptr [ null, %bb.n ], [ %.023, %bb.k ], [ %i.o, %.thread33 ], [ null, %bb.h ]
  ret ptr %.124

bb.p:                                             ; preds = %bb.o, %_ZN10z3_log_ctxD2Ev.exit28
  %.merged = phi { ptr, i32 } [ %.pn.pn.pn41, %_ZN10z3_log_ctxD2Ev.exit28 ], [ %i.v, %bb.o ]
  resume { ptr, i32 } %.merged

bb.q:                                             ; preds = %bb.o
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #17
  unreachable
}

declare void @_Z36log_Z3_get_quantifier_no_pattern_astP11_Z3_contextP7_Z3_astj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define ptr @Z3_get_quantifier_bound_name(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z32log_Z3_get_quantifier_bound_nameP11_Z3_contextP7_Z3_astj(ptr noundef %0, ptr noundef %1, i32 noundef %2)
          to label %bb.c unwind label %.thread

.thread:                                          ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %.01926 = extractvalue { ptr, i32 } %i.c, 1
  br label %bb.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.d, align 8, !tbaa !164
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 65535
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !216
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.l
  %i.n = zext i32 %2 to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  invoke void @_ZN3api7context14set_error_codeE13Z3_error_codePKc(ptr noundef nonnull align 8 dereferenceable(3088) %0, i32 noundef 1, ptr noundef null)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.in = phi ptr [ %i.o, %bb.d ], [ @_ZN6symbol4nullE, %bb.e ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !11  ; 2 uses
  br i1 %i.b, label %bb.g, label %_ZN10z3_log_ctxD2Ev.exit, !prof !12

bb.g:                                             ; preds = %bb.f
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 3 uses
  %.019 = extractvalue { ptr, i32 } %i.p, 1       ; 2 uses
  br i1 %i.b, label %bb.i, label %_ZN10z3_log_ctxD2Ev.exit22, !prof !13

bb.i:                                             ; preds = %.thread, %bb.h
  %.01930 = phi i32 [ %.01926, %.thread ], [ %.019, %bb.h ]
  %.pn28 = phi { ptr, i32 } [ %i.c, %.thread ], [ %i.p, %bb.h ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit22

_ZN10z3_log_ctxD2Ev.exit22:                       ; preds = %bb.h, %bb.i
  %.01929 = phi i32 [ %.019, %bb.h ], [ %.01930, %bb.i ]
  %.pn27 = phi { ptr, i32 } [ %i.p, %bb.h ], [ %.pn28, %bb.i ] ; 2 uses
  %i.q = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #16
  %i.r = icmp eq i32 %.01929, %i.q
  br i1 %i.r, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit22
  %.017 = extractvalue { ptr, i32 } %.pn27, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %.017) #16
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload = load ptr, ptr @_ZN6symbol4nullE, align 8, !tbaa !11
  tail call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.g, %bb.f, %bb.k
  %.1 = phi ptr [ %.sroa.0.0.copyload, %bb.k ], [ %.0, %bb.f ], [ %.0, %bb.g ]
  ret ptr %.1

bb.m:                                             ; preds = %bb.l, %_ZN10z3_log_ctxD2Ev.exit22
  %.merged = phi { ptr, i32 } [ %.pn27, %_ZN10z3_log_ctxD2Ev.exit22 ], [ %i.t, %bb.l ]
  resume { ptr, i32 } %.merged

bb.n:                                             ; preds = %bb.l
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #17
  unreachable
}

declare void @_Z32log_Z3_get_quantifier_bound_nameP11_Z3_contextP7_Z3_astj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define ptr @Z3_get_quantifier_bound_sort(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  invoke void @_Z32log_Z3_get_quantifier_bound_sortP11_Z3_contextP7_Z3_astj(ptr noundef %0, ptr noundef %1, i32 noundef %2)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %.thread36

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.d, align 8, !tbaa !164
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 65535
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.e, label %bb.g

.thread:                                          ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.i, align 8, !tbaa !164
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 65535
  %i.m = icmp eq i32 %i.l, 2
  br i1 %i.m, label %.thread31, label %bb.g

.thread31:                                        ; preds = %.thread
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.o = zext i32 %2 to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !196
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = zext i32 %2 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !196  ; 2 uses
  invoke void @_Z4SetRPKv(ptr noundef %i.u)
          to label %bb.k unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %.thread36

bb.g:                                             ; preds = %.thread, %bb.d
  invoke void @_ZN3api7context14set_error_codeE13Z3_error_codePKc(ptr noundef nonnull align 8 dereferenceable(3088) %0, i32 noundef 1, ptr noundef null)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  br i1 %i.b, label %bb.i, label %_ZN10z3_log_ctxD2Ev.exit, !prof !12

bb.i:                                             ; preds = %bb.h
  invoke void @_Z4SetRPKv(ptr noundef null)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %.thread36

bb.k:                                             ; preds = %bb.e, %bb.i
  %.022 = phi ptr [ null, %bb.i ], [ %i.u, %bb.e ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

end_hunk_0
