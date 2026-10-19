Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/api_tactic?download=true
inline.NumInlined: 1454
inline.NumDeleted: 419
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Z3_get_probe_name:bb.a
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21log_Z3_get_probe_nameP11_Z3_contextj(ptr noundef %0, i32 noundef %1)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_ZNK14tactic_manager10num_probesEv.exit.thread, %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.l

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.d, align 8, !tbaa !172
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !219  ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZNK14tactic_manager10num_probesEv.exit.thread, label %_ZNK14tactic_manager10num_probesEv.exit

_ZNK14tactic_manager10num_probesEv.exit:          ; preds = %bb.d
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !217
  %.not = icmp ult i32 %1, %i.i
  br i1 %.not, label %bb.e, label %_ZNK14tactic_manager10num_probesEv.exit.thread

_ZNK14tactic_manager10num_probesEv.exit.thread:   ; preds = %bb.d, %_ZNK14tactic_manager10num_probesEv.exit
  invoke void @_ZN3api7context14set_error_codeE13Z3_error_codePKc(ptr noundef nonnull align 8 dereferenceable(3088) %0, i32 noundef 2, ptr noundef null)
          to label %bb.j unwind label %bb.c

bb.e:                                             ; preds = %_ZNK14tactic_manager10num_probesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.j = zext i32 %1 to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !353
  %.sroa.0.0.copyload.i = load ptr, ptr %i.l, align 8, !tbaa !218
  store ptr %.sroa.0.0.copyload.i, ptr %3, align 8
  invoke void @_ZNK6symbol3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = invoke noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %2, align 8, !tbaa !188    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.q = load i64, ptr %i.o, align 8, !tbaa !184
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.i:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.u = load ptr, ptr %2, align 8, !tbaa !188    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !184
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.h
  %.pn = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %i.t, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.l

bb.j:                                             ; preds = %_ZNK14tactic_manager10num_probesEv.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.018 = phi ptr [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ @.str.1, %_ZNK14tactic_manager10num_probesEv.exit.thread ] ; 2 uses
  br i1 %i.b, label %bb.k, label %_ZN10z3_log_ctxD2Ev.exit, !prof !189

bb.k:                                             ; preds = %bb.j
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %bb.c
  %.pn22 = phi { ptr, i32 } [ %i.c, %bb.c ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ] ; 3 uses
  %.1 = extractvalue { ptr, i32 } %.pn22, 1
  br i1 %i.b, label %bb.m, label %_ZN10z3_log_ctxD2Ev.exit27, !prof !189

bb.m:                                             ; preds = %bb.l
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit27

_ZN10z3_log_ctxD2Ev.exit27:                       ; preds = %bb.l, %bb.m
  %i.z = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #20
  %i.aa = icmp eq i32 %.1, %i.z
  br i1 %i.aa, label %bb.n, label %bb.q

bb.n:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit27
  %.116 = extractvalue { ptr, i32 } %.pn22, 0
  %i.ab = call ptr @__cxa_begin_catch(ptr %.116) #20
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.k, %bb.j, %bb.o
  %.119 = phi ptr [ @.str.1, %bb.o ], [ %.018, %bb.j ], [ %.018, %bb.k ]
  ret ptr %.119

bb.q:                                             ; preds = %bb.p, %_ZN10z3_log_ctxD2Ev.exit27
  %.merged = phi { ptr, i32 } [ %.pn22, %_ZN10z3_log_ctxD2Ev.exit27 ], [ %i.ac, %bb.p ]
  resume { ptr, i32 } %.merged

bb.r:                                             ; preds = %bb.p
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #22
  unreachable
}

declare void @_Z21log_Z3_get_probe_nameP11_Z3_contextj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef ptr @Z3_tactic_get_help(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %3 = alloca %class.param_descrs, align 8        ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z22log_Z3_tactic_get_helpP11_Z3_contextP10_Z3_tactic(ptr noundef %0, ptr noundef %1)
          to label %bb.c unwind label %.thread

.thread:                                          ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %.430 = extractvalue { ptr, i32 } %i.c, 1
  br label %bb.r

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.d, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZN12param_descrsC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_Z13to_tactic_refP10_Z3_tactic.exit unwind label %bb.l

_Z13to_tactic_refP10_Z3_tactic.exit:              ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !197  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %_Z13to_tactic_refP10_Z3_tactic.exit
  invoke void @_ZNK12param_descrs7displayERSojbb(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !186, !noalias !360 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i: ; preds = %bb.f
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %6 = load ptr, ptr %5, align 8, !tbaa !220, !noalias !360 ; 2 uses
  %7 = icmp ugt ptr %i.l, %6
  %.08.i9.i.i = select i1 %7, ptr %i.l, ptr %6    ; 2 uses
  %.not.i.i = icmp eq ptr %.08.i9.i.i, null
  br i1 %.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !187, !noalias !360
  %i.p = ptrtoint ptr %.08.i9.i.i to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.r, ptr %i.s, align 8, !tbaa !183, !noalias !360
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !188, !noalias !360
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !184, !noalias !360
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.w, ptr %4, align 8, !tbaa !182, !alias.scope !360
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !188, !noalias !360 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 7 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !183, !noalias !360 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.x, ptr %4, align 8, !tbaa !188, !alias.scope !360
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !184, !noalias !360
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !184, !alias.scope !360
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !183, !noalias !360
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g
  %i.af = phi i64 [ %i.ab, %bb.g ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !183, !alias.scope !360
  store ptr %i.y, ptr %i.v, align 8, !tbaa !188, !noalias !360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ag, i8 0, i64 9, i1 false), !noalias !360
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.j, ptr noundef nonnull %i.y, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !188, !alias.scope !360 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.w
  br i1 %i.ak, label %.body, label %.body.sink.split

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.al = invoke noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.i unwind label %bb.n       ; 2 uses

bb.i:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.am = load ptr, ptr %4, align 8, !tbaa !188   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.w
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ao = load i64, ptr %i.w, align 8, !tbaa !184
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZN12param_descrsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.aq = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.aq, ptr %2, align 8, !tbaa !14
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.as = getelementptr i8, ptr %i.aq, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %2, i64 %i.at
  store ptr %i.ar, ptr %i.au, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8, !tbaa !14
  %i.av = load ptr, ptr %i.v, align 8, !tbaa !188 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.y
  br i1 %i.aw, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ax = load i64, ptr %i.y, align 8, !tbaa !184
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #21
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.az) #20
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ba) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %i.b, label %bb.j, label %_ZN10z3_log_ctxD2Ev.exit, !prof !189

bb.j:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.k:                                             ; preds = %bb.c
  %i.bb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.q

bb.l:                                             ; preds = %bb.d
  %i.bc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.p

bb.m:                                             ; preds = %bb.e, %_Z13to_tactic_refP10_Z3_tactic.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.o

bb.n:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.bf = load ptr, ptr %4, align 8, !tbaa !188   ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.w
  br i1 %i.bg, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.n, %bb.h
  %.sink = phi ptr [ %i.aj, %bb.h ], [ %i.bf, %bb.n ]
  %.pn.ph = phi { ptr, i32 } [ %i.ai, %bb.h ], [ %i.be, %bb.n ]
  %i.bh = load i64, ptr %i.w, align 8, !tbaa !184
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bi) #21
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.n, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.h ], [ %i.be, %bb.n ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.o

bb.o:                                             ; preds = %.body, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bd, %bb.m ]
  call void @_ZN12param_descrsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.o ], [ %i.bc, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #20
  br label %bb.q

bb.q:                                             ; preds = %bb.k, %bb.p
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.p ], [ %i.bb, %bb.k ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.4 = extractvalue { ptr, i32 } %.pn.pn.pn.pn, 1 ; 2 uses
  br i1 %i.b, label %bb.r, label %_ZN10z3_log_ctxD2Ev.exit26, !prof !203

bb.r:                                             ; preds = %.thread, %bb.q
  %.434 = phi i32 [ %.430, %.thread ], [ %.4, %bb.q ]
  %.pn.pn.pn.pn.pn32 = phi { ptr, i32 } [ %i.c, %.thread ], [ %.pn.pn.pn.pn, %bb.q ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit26

_ZN10z3_log_ctxD2Ev.exit26:                       ; preds = %bb.q, %bb.r
  %.433 = phi i32 [ %.4, %bb.q ], [ %.434, %bb.r ]
  %.pn.pn.pn.pn.pn31 = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.q ], [ %.pn.pn.pn.pn.pn32, %bb.r ] ; 2 uses
  %i.bj = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #20
  %i.bk = icmp eq i32 %.433, %i.bj
  br i1 %i.bk, label %bb.s, label %bb.v

bb.s:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit26
  %.415 = extractvalue { ptr, i32 } %.pn.pn.pn.pn.pn31, 0
  %i.bl = call ptr @__cxa_begin_catch(ptr %.415) #20
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

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.j, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.t
  %.017 = phi ptr [ @.str.1, %bb.t ], [ %i.al, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %i.al, %bb.j ]
  ret ptr %.017

bb.v:                                             ; preds = %bb.u, %_ZN10z3_log_ctxD2Ev.exit26
  %.merged = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn31, %_ZN10z3_log_ctxD2Ev.exit26 ], [ %i.bm, %bb.u ]
  resume { ptr, i32 } %.merged

bb.w:                                             ; preds = %bb.u
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #22
  unreachable
}

declare void @_Z22log_Z3_tactic_get_helpP11_Z3_contextP10_Z3_tactic(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare void @_ZNK12param_descrs7displayERSojbb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1
end_hunk_0
begin_hunk_1_@Z3_apply_result_inc_ref:bb.a
_ZN10z3_log_ctxD2Ev.exit11:                       ; preds = %bb.g, %bb.f, %bb.i
  ret void

bb.k:                                             ; preds = %bb.j, %_ZN10z3_log_ctxD2Ev.exit
  %.merged = phi { ptr, i32 } [ %i.j, %_ZN10z3_log_ctxD2Ev.exit ], [ %i.p, %bb.j ]
  resume { ptr, i32 } %.merged

bb.l:                                             ; preds = %bb.j
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #22
  unreachable
}

declare void @_Z27log_Z3_apply_result_inc_refP11_Z3_contextP16_Z3_apply_result(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @Z3_apply_result_dec_ref(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  invoke void @_Z27log_Z3_apply_result_dec_refP11_Z3_contextP16_Z3_apply_result(ptr noundef %0, ptr noundef %1)
          to label %bb.e unwind label %.thread

.thread:                                          ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.d = extractvalue { ptr, i32 } %i.c, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.f
  %i.e = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 3 uses
  %i.f = extractvalue { ptr, i32 } %i.e, 1        ; 2 uses
  br i1 %i.b, label %bb.d, label %_ZN10z3_log_ctxD2Ev.exit, !prof !203

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
  br i1 %i.l, label %bb.i, label %bb.l

bb.e:                                             ; preds = %bb.b, %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN3api6object7dec_refEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.g unwind label %bb.c

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %i.b, label %bb.h, label %_ZN10z3_log_ctxD2Ev.exit12, !prof !189

bb.h:                                             ; preds = %bb.g
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit12

bb.i:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit
  %i.m = extractvalue { ptr, i32 } %i.j, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #20
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit12

bb.k:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

_ZN10z3_log_ctxD2Ev.exit12:                       ; preds = %bb.h, %bb.g, %bb.j
  ret void

bb.l:                                             ; preds = %bb.k, %_ZN10z3_log_ctxD2Ev.exit
  %.merged = phi { ptr, i32 } [ %i.j, %_ZN10z3_log_ctxD2Ev.exit ], [ %i.o, %bb.k ]
  resume { ptr, i32 } %.merged

bb.m:                                             ; preds = %bb.k
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #22
  unreachable
}

declare void @_Z27log_Z3_apply_result_dec_refP11_Z3_contextP16_Z3_apply_result(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef ptr @Z3_apply_result_to_string(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 26 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.c = trunc i8 %i.b to i1                      ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z29log_Z3_apply_result_to_stringP11_Z3_contextP16_Z3_apply_result(ptr noundef %0, ptr noundef %1)
          to label %bb.c unwind label %.thread

.thread:                                          ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %.438 = extractvalue { ptr, i32 } %i.d, 1
  br label %bb.p

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.e, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.2, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %wide.trip.count = zext i32 %i.i to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 41, ptr %i.a, align 1, !tbaa !184
  %i.j = load ptr, ptr %2, align 8, !tbaa !14
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %2, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !379
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.f:                                             ; preds = %._crit_edge
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext 41)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.g:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.o

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !256
  invoke void @_ZNK4goal7displayERSo(ptr noundef nonnull align 8 dereferenceable(124) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !374

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.f, %bb.e, %bb.d
  %lpad.loopexit.split-lp58 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %.loopexit.split-lp

bb.i:                                             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !186, !noalias !382 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i: ; preds = %bb.i
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !220, !noalias !382 ; 2 uses
  %6 = icmp ugt ptr %i.x, %5
  %.08.i9.i.i = select i1 %6, ptr %i.x, ptr %5    ; 2 uses
  %.not.i.i = icmp eq ptr %.08.i9.i.i, null
  br i1 %.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !187, !noalias !382
  %i.ab = ptrtoint ptr %.08.i9.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !183, !noalias !382
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !188, !noalias !382
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !184, !noalias !382
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i, %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.ai, ptr %3, align 8, !tbaa !182, !alias.scope !382
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !188, !noalias !382 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 7 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.an = load i64, ptr %i.am, align 8, !tbaa !183, !noalias !382 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  %i.ap = add nuw nsw i64 %i.an, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.ap, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.aj, ptr %3, align 8, !tbaa !188, !alias.scope !382
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !184, !noalias !382
  store i64 %i.aq, ptr %i.ai, align 8, !tbaa !184, !alias.scope !382
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !183, !noalias !382
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.j
  %i.ar = phi i64 [ %i.an, %bb.j ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ar, ptr %i.at, align 8, !tbaa !183, !alias.scope !382
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !188, !noalias !382
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.as, i8 0, i64 9, i1 false), !noalias !382
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.v, ptr noundef nonnull %i.ak, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.av = load ptr, ptr %3, align 8, !tbaa !188, !alias.scope !382 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.ai
  br i1 %i.aw, label %.body, label %.body.sink.split

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ax = invoke noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.l unwind label %bb.n       ; 2 uses

bb.l:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ay = load ptr, ptr %3, align 8, !tbaa !188   ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ai
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.ba = load i64, ptr %i.ai, align 8, !tbaa !184
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bc = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bc, ptr %2, align 8, !tbaa !14
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.be = getelementptr i8, ptr %i.bc, i64 -24
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr %2, i64 %i.bf
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.v, align 8, !tbaa !14
  %i.bh = load ptr, ptr %i.ah, align 8, !tbaa !188 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.ak
  br i1 %i.bi, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bj = load i64, ptr %i.ak, align 8, !tbaa !184
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #21
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.v, align 8, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bl) #20
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bm) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %i.c, label %bb.m, label %_ZN10z3_log_ctxD2Ev.exit, !prof !189

bb.m:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.n:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.bo = load ptr, ptr %3, align 8, !tbaa !188   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.ai
  br i1 %i.bp, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.n, %bb.k
  %.sink = phi ptr [ %i.av, %bb.k ], [ %i.bo, %bb.n ]
  %.pn.ph = phi { ptr, i32 } [ %i.au, %bb.k ], [ %i.bn, %bb.n ]
  %i.bq = load i64, ptr %i.ai, align 8, !tbaa !184
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.br) #21
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.n, %bb.k
  %.pn = phi { ptr, i32 } [ %i.au, %bb.k ], [ %i.bn, %bb.n ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %.pn25.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %lpad.loopexit.split-lp58, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #20
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %.loopexit.split-lp
  %.pn25.pn.pn = phi { ptr, i32 } [ %.pn25.pn, %.loopexit.split-lp ], [ %i.r, %bb.g ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.4 = extractvalue { ptr, i32 } %.pn25.pn.pn, 1 ; 2 uses
  br i1 %i.c, label %bb.p, label %_ZN10z3_log_ctxD2Ev.exit34, !prof !203

bb.p:                                             ; preds = %.thread, %bb.o
  %.442 = phi i32 [ %.438, %.thread ], [ %.4, %bb.o ]
  %.pn25.pn.pn.pn40 = phi { ptr, i32 } [ %i.d, %.thread ], [ %.pn25.pn.pn, %bb.o ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit34

_ZN10z3_log_ctxD2Ev.exit34:                       ; preds = %bb.o, %bb.p
  %.441 = phi i32 [ %.4, %bb.o ], [ %.442, %bb.p ]
  %.pn25.pn.pn.pn39 = phi { ptr, i32 } [ %.pn25.pn.pn, %bb.o ], [ %.pn25.pn.pn.pn40, %bb.p ] ; 2 uses
  %i.bs = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #20
  %i.bt = icmp eq i32 %.441, %i.bs
  br i1 %i.bt, label %bb.q, label %bb.t

bb.q:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit34
  %.421 = extractvalue { ptr, i32 } %.pn25.pn.pn.pn39, 0
  %i.bu = call ptr @__cxa_begin_catch(ptr %.421) #20
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bu)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.u

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.m, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.r
  %.023 = phi ptr [ @.str.1, %bb.r ], [ %i.ax, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %i.ax, %bb.m ]
  ret ptr %.023

bb.t:                                             ; preds = %bb.s, %_ZN10z3_log_ctxD2Ev.exit34
  %.merged = phi { ptr, i32 } [ %.pn25.pn.pn.pn39, %_ZN10z3_log_ctxD2Ev.exit34 ], [ %i.bv, %bb.s ]
  resume { ptr, i32 } %.merged

bb.u:                                             ; preds = %bb.s
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #22
  unreachable
}

declare void @_Z29log_Z3_apply_result_to_stringP11_Z3_contextP16_Z3_apply_result(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZNK4goal7displayERSo(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define i32 @Z3_apply_result_get_num_subgoals(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z36log_Z3_apply_result_get_num_subgoalsP11_Z3_contextP16_Z3_apply_result(ptr noundef %0, ptr noundef %1)
          to label %bb.d unwind label %_ZN10z3_log_ctxD2Ev.exit

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 3 uses
  %i.d = extractvalue { ptr, i32 } %i.c, 1
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  %i.e = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #20
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.e, label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.g, align 8, !tbaa !172
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !20
  br label %_ZN10z3_log_ctxD2Ev.exit13

end_hunk_1
begin_hunk_2_@_ZN20dependent_expr_stateD2Ev:bb.a
  %i.x = load i32, ptr %i.w, align 4, !tbaa !298
  %i.y = add i32 %i.x, -1                         ; 2 uses
  store i32 %i.y, ptr %i.w, align 4, !tbaa !298
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.v, ptr noundef nonnull %i.u)
          to label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.i

_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.ab = icmp ult ptr %i.aa, %i.t
  br i1 %i.ab, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !3

_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !293 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i1, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i
  %i.ac = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.n, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i ]
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ad)
          to label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #22
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #22
  unreachable

_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN11trail_stackD2Ev.exit, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV8ast_mark, i64 16), ptr %i.ai, align 8, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !299 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ak)
          to label %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #22
  unreachable

_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i: ; preds = %bb.j, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !299 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN8ast_markD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ap)
          to label %_ZN8ast_markD2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #22
  unreachable

_ZN8ast_markD2Ev.exit:                            ; preds = %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @Z3_simplifier_get_help(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %3 = alloca %class.param_descrs, align 8        ; 8 uses
  %4 = alloca %class.default_dependent_expr_state, align 8 ; 20 uses
  %5 = alloca %class.params_ref, align 8          ; 7 uses
  %6 = alloca %class.scoped_ptr.77, align 8       ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z26log_Z3_simplifier_get_helpP11_Z3_contextP14_Z3_simplifier(ptr noundef %0, ptr noundef %1)
          to label %bb.c unwind label %.thread

.thread:                                          ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %.743 = extractvalue { ptr, i32 } %i.c, 1
  br label %bb.y

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.d, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.p

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZN12param_descrsC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !190  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV20dependent_expr_state, i64 16), ptr %4, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.g, align 8, !tbaa !283
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i8 0, ptr %i.h, align 4, !tbaa !284
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.i, align 8, !tbaa !285
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.j, align 4, !tbaa !286
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV8ast_mark, i64 16), ptr %i.k, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.o = ptrtoint ptr %i.f to i64
  store i64 %i.o, ptr %i.n, align 8, !tbaa !287
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  invoke void @_ZN6regionC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %bb.f unwind label %.body.i.i

.body.i.i:                                        ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 104
  call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.t) #20
  call void @_ZN6vectorIP5trailLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(56) %i.s) #20
  call void @_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.n) #20
  call void @_ZN8ast_markD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.k) #20
  br label %.body

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV28default_dependent_expr_state, i64 16), ptr %4, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr null, ptr %5, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !258
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt25__throw_bad_function_callv() #24
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !263
  %i.z = invoke noundef ptr %i.y(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(952) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(152) %4)
          to label %_ZNKSt8functionIFP25dependent_expr_simplifierR11ast_managerRK10params_refR20dependent_expr_stateEEclES3_S6_S8_.exit unwind label %bb.r, !inline_history !1 ; 6 uses

_ZNKSt8functionIFP25dependent_expr_simplifierR11ast_managerRK10params_refR20dependent_expr_stateEEclES3_S6_S8_.exit: ; preds = %bb.h
  store ptr %i.z, ptr %6, align 8, !tbaa !290
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %_ZNKSt8functionIFP25dependent_expr_simplifierR11ast_managerRK10params_refR20dependent_expr_stateEEclES3_S6_S8_.exit
  invoke void @_ZNK12param_descrs7displayERSojbb(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !400)
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !186, !noalias !402 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i: ; preds = %bb.j
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %9 = load ptr, ptr %8, align 8, !tbaa !220, !noalias !402 ; 2 uses
  %10 = icmp ugt ptr %i.af, %9
  %.08.i9.i.i = select i1 %10, ptr %i.af, ptr %9  ; 2 uses
  %.not.i.i33 = icmp eq ptr %.08.i9.i.i, null
  br i1 %.not.i.i33, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !187, !noalias !402
  %i.aj = ptrtoint ptr %.08.i9.i.i to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.al, ptr %i.am, align 8, !tbaa !183, !noalias !402
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !188, !noalias !402
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !184, !noalias !402
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i, %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  store ptr %i.aq, ptr %7, align 8, !tbaa !182, !alias.scope !402
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !188, !noalias !402 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 7 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.av = load i64, ptr %i.au, align 8, !tbaa !183, !noalias !402 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.ar, ptr %7, align 8, !tbaa !188, !alias.scope !402
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !184, !noalias !402
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !184, !alias.scope !402
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !183, !noalias !402
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.k
  %i.az = phi i64 [ %i.av, %bb.k ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !183, !alias.scope !402
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !188, !noalias !402
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ba, i8 0, i64 9, i1 false), !noalias !402
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.ad, ptr noundef nonnull %i.as, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.bd = load ptr, ptr %7, align 8, !tbaa !188, !alias.scope !402 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.aq
  br i1 %i.be, label %.body34, label %.body34.sink.split

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.bf = invoke noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.m unwind label %bb.t       ; 2 uses

bb.m:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bg = load ptr, ptr %7, align 8, !tbaa !188   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.aq
  br i1 %i.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.bi = load i64, ptr %i.aq, align 8, !tbaa !184
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.bk = load ptr, ptr %i.z, align 8, !tbaa !14
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.z) #20, !inline_history !2
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.z)
          to label %_ZN10scoped_ptrI25dependent_expr_simplifierED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #22
  unreachable

_ZN10scoped_ptrI25dependent_expr_simplifierED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZN20dependent_expr_stateD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZN12param_descrsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bo = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bo, ptr %2, align 8, !tbaa !14
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bq = getelementptr i8, ptr %i.bo, i64 -24
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds i8, ptr %2, i64 %i.br
  store ptr %i.bp, ptr %i.bs, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ad, align 8, !tbaa !14
  %i.bt = load ptr, ptr %i.ap, align 8, !tbaa !188 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.as
  br i1 %i.bu, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN10scoped_ptrI25dependent_expr_simplifierED2Ev.exit
  %i.bv = load i64, ptr %i.as, align 8, !tbaa !184
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #21
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZN10scoped_ptrI25dependent_expr_simplifierED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ad, align 8, !tbaa !14
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bx) #20
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.by) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %i.b, label %bb.o, label %_ZN10z3_log_ctxD2Ev.exit, !prof !189

bb.o:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.p:                                             ; preds = %bb.c
  %i.bz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.x

bb.q:                                             ; preds = %bb.d
  %i.ca = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.w

bb.r:                                             ; preds = %bb.h, %bb.g
  %i.cb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.v

bb.s:                                             ; preds = %bb.i, %_ZNKSt8functionIFP25dependent_expr_simplifierR11ast_managerRK10params_refR20dependent_expr_stateEEclES3_S6_S8_.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.u

bb.t:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.ce = load ptr, ptr %7, align 8, !tbaa !188   ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.aq
  br i1 %i.cf, label %.body34, label %.body34.sink.split

.body34.sink.split:                               ; preds = %bb.t, %bb.l
  %.sink = phi ptr [ %i.bd, %bb.l ], [ %i.ce, %bb.t ]
  %.pn.ph = phi { ptr, i32 } [ %i.bc, %bb.l ], [ %i.cd, %bb.t ]
  %i.cg = load i64, ptr %i.aq, align 8, !tbaa !184
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ch) #21
  br label %.body34

.body34:                                          ; preds = %.body34.sink.split, %bb.t, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.l ], [ %i.cd, %bb.t ], [ %.pn.ph, %.body34.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.u

bb.u:                                             ; preds = %.body34, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body34 ], [ %i.cc, %bb.s ]
  call void @_ZN10scoped_ptrI25dependent_expr_simplifierED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.u ], [ %i.cb, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZN20dependent_expr_stateD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %4) #20
  br label %.body

.body:                                            ; preds = %.body.i.i, %bb.v
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.v ], [ %i.r, %.body.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZN12param_descrsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  br label %bb.w

bb.w:                                             ; preds = %.body, %bb.q
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.body ], [ %i.ca, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #20
  br label %bb.x

bb.x:                                             ; preds = %bb.p, %bb.w
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.w ], [ %i.bz, %bb.p ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.7 = extractvalue { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn, 1 ; 2 uses
  br i1 %i.b, label %bb.y, label %_ZN10z3_log_ctxD2Ev.exit39, !prof !203

bb.y:                                             ; preds = %.thread, %bb.x
  %.747 = phi i32 [ %.743, %.thread ], [ %.7, %bb.x ]
  %.pn.pn.pn.pn.pn.pn.pn.pn45 = phi { ptr, i32 } [ %i.c, %.thread ], [ %.pn.pn.pn.pn.pn.pn.pn, %bb.x ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit39

_ZN10z3_log_ctxD2Ev.exit39:                       ; preds = %bb.x, %bb.y
  %.746 = phi i32 [ %.7, %bb.x ], [ %.747, %bb.y ]
  %.pn.pn.pn.pn.pn.pn.pn.pn44 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.x ], [ %.pn.pn.pn.pn.pn.pn.pn.pn45, %bb.y ] ; 2 uses
  %i.ci = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #20
  %i.cj = icmp eq i32 %.746, %i.ci
  br i1 %i.cj, label %bb.z, label %bb.ac
end_hunk_2
