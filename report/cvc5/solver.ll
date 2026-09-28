Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/solver?download=true
inline.NumInlined: 528
inline.NumDeleted: 203
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7CaDiCaL6Solver11trace_proofEPKc:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  %or.cond = select i1 %i.c, i1 true, i1 %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.81, ptr noundef %1) #23 ; 0 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !162
  %i.h = tail call i32 @fflush(ptr noundef %i.g)  ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN7CaDiCaL37require_solver_pointer_to_be_non_zeroEPKvPKcS3_(ptr noundef nonnull %0, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN7CaDiCaL6Solver11trace_proofEPKc, ptr noundef nonnull @.str.16)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !160
  %.not6 = icmp eq ptr %i.j, null
  br i1 %.not6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7CaDiCaL19fatal_message_startEv()
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN7CaDiCaL6Solver11trace_proofEPKc, ptr noundef nonnull @.str.16) #26 ; 0 uses
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !170
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.18, i64 31, i64 1, ptr %i.m) #27 ; 0 uses
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.o = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.n) ; 0 uses
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.q = tail call i32 @fflush(ptr noundef %i.p)  ; 0 uses
  tail call void @abort() #28
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not7 = icmp eq ptr %i.r, null
  br i1 %.not7, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN7CaDiCaL19fatal_message_startEv()
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN7CaDiCaL6Solver11trace_proofEPKc, ptr noundef nonnull @.str.16) #26 ; 0 uses
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !170
  %fwrite8 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 31, i64 1, ptr %i.u) #27 ; 0 uses
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.w = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.v) ; 0 uses
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.y = tail call i32 @fflush(ptr noundef %i.x)  ; 0 uses
  tail call void @abort() #28
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !11  ; 2 uses
  %i.ab = and i32 %i.aa, 110
  %.not9 = icmp eq i32 %i.ab, 0
  br i1 %.not9, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN7CaDiCaL19fatal_message_startEv()
  %i.ac = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ac, ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN7CaDiCaL6Solver11trace_proofEPKc, ptr noundef nonnull @.str.16) #26 ; 0 uses
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !170
  %fwrite10 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 23, i64 1, ptr %i.ae) #27 ; 0 uses
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.ag = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.af) ; 0 uses
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.ai = tail call i32 @fflush(ptr noundef %i.ah) ; 0 uses
  tail call void @abort() #28
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aj = icmp eq i32 %i.aa, 2
  br i1 %i.aj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN7CaDiCaL19fatal_message_startEv()
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.al = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ak, ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN7CaDiCaL6Solver11trace_proofEPKc, ptr noundef nonnull @.str.16) #26 ; 0 uses
  %i.am = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.an = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.am, ptr noundef nonnull @.str.82, ptr noundef %1) #26 ; 0 uses
  %i.ao = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.ap = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.ao) ; 0 uses
  %i.aq = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.ar = tail call i32 @fflush(ptr noundef %i.aq) ; 0 uses
  tail call void @abort() #28
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.as = tail call noundef ptr @_ZN7CaDiCaL4File5writeEPNS_8InternalEPKc(ptr noundef nonnull %i.r, ptr noundef %1) ; 2 uses
  %i.at = icmp ne ptr %i.as, null
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !18
  tail call void @_ZN7CaDiCaL8Internal5traceEPNS_4FileE(ptr noundef nonnull align 8 dereferenceable(5704) %i.au, ptr noundef %i.as)
  ret i1 %i.at
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL14DeferDeletePtrINS_8ExternalEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !169    ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL8ExternalD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %i.a) #23
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL14DeferDeletePtrINS_8InternalEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !167    ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL8InternalD1Ev(ptr noundef nonnull align 8 dead_on_return(5704) dereferenceable(5704) %i.a) #23
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL6SolverD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  %or.cond = select i1 %i.c, i1 true, i1 %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.e, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15) #23 ; 0 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !162
  %i.h = tail call i32 @fflush(ptr noundef %i.g)  ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  invoke void @_ZN7CaDiCaL37require_solver_pointer_to_be_non_zeroEPKvPKcS3_(ptr noundef nonnull %0, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN7CaDiCaL6SolverD2Ev, ptr noundef nonnull @.str.16)
          to label %bb.d unwind label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !160
  %.not2 = icmp eq ptr %i.j, null
  br i1 %.not2, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7CaDiCaL19fatal_message_startEv()
          to label %bb.f unwind label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN7CaDiCaL6SolverD2Ev, ptr noundef nonnull @.str.16) #26 ; 0 uses
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !170
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.18, i64 31, i64 1, ptr %i.m) #27 ; 0 uses
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.o = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.n) ; 0 uses
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.q = tail call i32 @fflush(ptr noundef %i.p)  ; 0 uses
  tail call void @abort() #28
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %.not3 = icmp eq ptr %i.r, null
  br i1 %.not3, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN7CaDiCaL19fatal_message_startEv()
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN7CaDiCaL6SolverD2Ev, ptr noundef nonnull @.str.16) #26 ; 0 uses
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !170
  %fwrite4 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 31, i64 1, ptr %i.u) #27 ; 0 uses
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.w = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.v) ; 0 uses
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.y = tail call i32 @fflush(ptr noundef %i.x)  ; 0 uses
  tail call void @abort() #28
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !11
  %i.ab = and i32 %i.aa, 126
  %.not5 = icmp eq i32 %i.ab, 0
  br i1 %.not5, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN7CaDiCaL19fatal_message_startEv()
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.ac = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ac, ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN7CaDiCaL6SolverD2Ev, ptr noundef nonnull @.str.16) #26 ; 0 uses
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !170
  %fwrite6 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 41, i64 1, ptr %i.ae) #27 ; 0 uses
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.ag = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.af) ; 0 uses
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.ai = tail call i32 @fflush(ptr noundef %i.ah) ; 0 uses
  tail call void @abort() #28
  unreachable

bb.m:                                             ; preds = %bb.j
  store i32 128, ptr %i.z, align 4, !tbaa !161
  store i1 false, ptr @_ZN7CaDiCaLL32tracing_nb_lidrup_env_var_methodE, align 1
  tail call void @_ZN7CaDiCaL8InternalD1Ev(ptr noundef nonnull align 8 dead_on_return(5704) dereferenceable(5704) %i.r) #23
  tail call void @_ZdlPv(ptr noundef nonnull %i.r) #25
  %i.aj = load ptr, ptr %i.i, align 8, !tbaa !160 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN7CaDiCaL8ExternalD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %i.aj) #23
  tail call void @_ZdlPv(ptr noundef nonnull %i.aj) #25
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !163, !range !171, !noundef !172
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i8 0, ptr %i.al, align 8, !tbaa !163
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !162
  %i.ap = tail call i32 @fclose(ptr noundef %i.ao) ; 0 uses
  store i1 false, ptr @_ZN7CaDiCaLL53tracing_api_calls_through_environment_variable_methodE, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  ret void

bb.r:                                             ; preds = %bb.k, %bb.h, %bb.e, %bb.c
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #28
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

declare void @_ZN7CaDiCaL37require_solver_pointer_to_be_non_zeroEPKvPKcS3_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN7CaDiCaL19fatal_message_startEv() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZN7CaDiCaL8InternalD1Ev(ptr noundef nonnull align 8 dead_on_return(5704) dereferenceable(5704)) unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZN7CaDiCaL8ExternalD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568)) unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7CaDiCaL6Solver4varsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  %or.cond = select i1 %i.c, i1 true, i1 %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.e, ptr noundef nonnull @.str, ptr noundef nonnull @.str.21) #23 ; 0 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !162
  %i.h = tail call i32 @fflush(ptr noundef %i.g)  ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN7CaDiCaL37require_solver_pointer_to_be_non_zeroEPKvPKcS3_(ptr noundef nonnull %0, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN7CaDiCaL6Solver4varsEv, ptr noundef nonnull @.str.16)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !160  ; 2 uses
  %.not1 = icmp eq ptr %i.j, null
  br i1 %.not1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7CaDiCaL19fatal_message_startEv()
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN7CaDiCaL6Solver4varsEv, ptr noundef nonnull @.str.16) #26 ; 0 uses
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !170
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.18, i64 31, i64 1, ptr %i.m) #27 ; 0 uses
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.o = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.n) ; 0 uses
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.q = tail call i32 @fflush(ptr noundef %i.p)  ; 0 uses
  tail call void @abort() #28
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not2 = icmp eq ptr %i.r, null
  br i1 %.not2, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN7CaDiCaL19fatal_message_startEv()
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN7CaDiCaL6Solver4varsEv, ptr noundef nonnull @.str.16) #26 ; 0 uses
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !170
  %fwrite3 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 31, i64 1, ptr %i.u) #27 ; 0 uses
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.w = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.v) ; 0 uses
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.y = tail call i32 @fflush(ptr noundef %i.x)  ; 0 uses
  tail call void @abort() #28
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !11
  %i.ab = and i32 %i.aa, 126
  %.not4 = icmp eq i32 %i.ab, 0
  br i1 %.not4, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN7CaDiCaL19fatal_message_startEv()
  %i.ac = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ac, ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN7CaDiCaL6Solver4varsEv, ptr noundef nonnull @.str.16) #26 ; 0 uses
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !170
  %fwrite5 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 41, i64 1, ptr %i.ae) #27 ; 0 uses
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.ag = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.af) ; 0 uses
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.ai = tail call i32 @fflush(ptr noundef %i.ah) ; 0 uses
  tail call void @abort() #28
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !191
  ret i32 %i.ak
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL6Solver7reserveEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  %or.cond = select i1 %i.c, i1 true, i1 %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.22, i32 noundef %1) #23 ; 0 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !162
  %i.h = tail call i32 @fflush(ptr noundef %i.g)  ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN7CaDiCaL37require_solver_pointer_to_be_non_zeroEPKvPKcS3_(ptr noundef nonnull %0, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN7CaDiCaL6Solver7reserveEi, ptr noundef nonnull @.str.16)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !160
  %.not2 = icmp eq ptr %i.j, null
  br i1 %.not2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7CaDiCaL19fatal_message_startEv()
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN7CaDiCaL6Solver7reserveEi, ptr noundef nonnull @.str.16) #26 ; 0 uses
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !170
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.18, i64 31, i64 1, ptr %i.m) #27 ; 0 uses
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.o = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.n) ; 0 uses
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.q = tail call i32 @fflush(ptr noundef %i.p)  ; 0 uses
  tail call void @abort() #28
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not3 = icmp eq ptr %i.r, null
  br i1 %.not3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN7CaDiCaL19fatal_message_startEv()
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN7CaDiCaL6Solver7reserveEi, ptr noundef nonnull @.str.16) #26 ; 0 uses
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !170
  %fwrite4 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 31, i64 1, ptr %i.u) #27 ; 0 uses
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !170
end_hunk_0
