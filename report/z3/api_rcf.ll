Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/api_rcf?download=true
inline.NumInlined: 566
inline.NumDeleted: 89
begin_hunk_0_@Z3_rcf_eq:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.g, %bb.h ], [ %i.c, %bb.c ] ; 3 uses
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 1
  br i1 %i.b, label %bb.j, label %_ZN10z3_log_ctxD2Ev.exit20, !prof !161

bb.j:                                             ; preds = %bb.i
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit20

_ZN10z3_log_ctxD2Ev.exit20:                       ; preds = %bb.i, %bb.j
  %i.h = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #17
  %i.i = icmp eq i32 %.1, %i.h
  br i1 %i.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit20
  %.115 = extractvalue { ptr, i32 } %.pn.pn, 0
  %i.j = call ptr @__cxa_begin_catch(ptr %.115) #17
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.g, %bb.f, %bb.l
  %.017 = phi i1 [ false, %bb.l ], [ %i.f, %bb.f ], [ %i.f, %bb.g ]
  ret i1 %.017

bb.n:                                             ; preds = %bb.m, %_ZN10z3_log_ctxD2Ev.exit20
  %.merged = phi { ptr, i32 } [ %.pn.pn, %_ZN10z3_log_ctxD2Ev.exit20 ], [ %i.k, %bb.m ]
  resume { ptr, i32 } %.merged

bb.o:                                             ; preds = %bb.m
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #18
  unreachable
}

declare void @_Z13log_Z3_rcf_eqP11_Z3_contextP11_Z3_rcf_numS2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11realclosure7manager2eqERKNS_3numES3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @Z3_rcf_neq(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.realclosure::num", align 8  ; 5 uses
  %4 = alloca %"class.realclosure::num", align 8  ; 5 uses
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_Z14log_Z3_rcf_neqP11_Z3_contextP11_Z3_rcf_numS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.i

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.d, align 8, !tbaa !160
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN3api7context4rcfmEv(ptr noundef nonnull align 8 dereferenceable(3088) %0)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %2, ptr %4, align 8
  %i.f = invoke noundef zeroext i1 @_ZN11realclosure7manager2eqERKNS_3numES3_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.g = xor i1 %i.f, true                        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br i1 %i.b, label %bb.g, label %_ZN10z3_log_ctxD2Ev.exit, !prof !161

bb.g:                                             ; preds = %bb.f
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.h, %bb.h ], [ %i.c, %bb.c ] ; 3 uses
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 1
  br i1 %i.b, label %bb.j, label %_ZN10z3_log_ctxD2Ev.exit20, !prof !161

bb.j:                                             ; preds = %bb.i
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit20

_ZN10z3_log_ctxD2Ev.exit20:                       ; preds = %bb.i, %bb.j
  %i.i = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #17
  %i.j = icmp eq i32 %.1, %i.i
  br i1 %i.j, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit20
  %.115 = extractvalue { ptr, i32 } %.pn.pn, 0
  %i.k = call ptr @__cxa_begin_catch(ptr %.115) #17
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.g, %bb.f, %bb.l
  %.017 = phi i1 [ false, %bb.l ], [ %i.g, %bb.f ], [ %i.g, %bb.g ]
  ret i1 %.017

bb.n:                                             ; preds = %bb.m, %_ZN10z3_log_ctxD2Ev.exit20
  %.merged = phi { ptr, i32 } [ %.pn.pn, %_ZN10z3_log_ctxD2Ev.exit20 ], [ %i.l, %bb.m ]
  resume { ptr, i32 } %.merged

bb.o:                                             ; preds = %bb.m
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #18
  unreachable
}

declare void @_Z14log_Z3_rcf_neqP11_Z3_contextP11_Z3_rcf_numS2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @Z3_rcf_num_to_string(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %5 = alloca %"class.realclosure::num", align 8  ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z24log_Z3_rcf_num_to_stringP11_Z3_contextP11_Z3_rcf_numbb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3)
          to label %bb.c unwind label %.thread

.thread:                                          ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %.334 = extractvalue { ptr, i32 } %i.c, 1
  br label %bb.q

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.d, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN3api7context4rcfmEv(ptr noundef nonnull align 8 dereferenceable(3088) %0)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr %1, ptr %5, align 8
  invoke void @_ZNK11realclosure7manager7displayERSoRKNS_3numEbb(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext %2, i1 noundef zeroext %3)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !181, !noalias !207 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %bb.f
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %8 = load ptr, ptr %i.i, align 8, !tbaa !182, !noalias !207 ; 2 uses
  %9 = icmp ugt ptr %i.h, %8
  %.08.i.i.i = select i1 %9, ptr %i.h, ptr %8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !183, !noalias !207
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 %i.n, ptr %i.o, align 8, !tbaa !184, !noalias !207
  %i.p = load ptr, ptr %7, align 8, !tbaa !185, !noalias !207
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !186, !noalias !207
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.s, ptr %6, align 8, !tbaa !187, !alias.scope !207
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !185, !noalias !207 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 7 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.x = load i64, ptr %i.w, align 8, !tbaa !184, !noalias !207 ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.t, ptr %6, align 8, !tbaa !185, !alias.scope !207
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !186, !noalias !207
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !186, !alias.scope !207
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !184, !noalias !207
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g
  %i.ab = phi i64 [ %i.x, %bb.g ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !184, !alias.scope !207
  store ptr %i.u, ptr %i.r, align 8, !tbaa !185, !noalias !207
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ac, i8 0, i64 9, i1 false), !noalias !207
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.f, ptr noundef nonnull %i.u, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !185, !alias.scope !207 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.s
  br i1 %i.ag, label %.body, label %.body.sink.split

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ah = invoke noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.n       ; 2 uses

bb.i:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ai = load ptr, ptr %6, align 8, !tbaa !185   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.s
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ak = load i64, ptr %i.s, align 8, !tbaa !186
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.am = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.am, ptr %4, align 8, !tbaa !189
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ao = getelementptr i8, ptr %i.am, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %4, i64 %i.ap
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !189
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8, !tbaa !189
  %i.ar = load ptr, ptr %i.r, align 8, !tbaa !185 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.u
  br i1 %i.as, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = load i64, ptr %i.u, align 8, !tbaa !186
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #19
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8, !tbaa !189
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.av) #17
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.aw) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br i1 %i.b, label %bb.j, label %_ZN10z3_log_ctxD2Ev.exit, !prof !161

bb.j:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.k:                                             ; preds = %bb.c
  %i.ax = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.p

bb.l:                                             ; preds = %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.o

bb.m:                                             ; preds = %bb.e
  %i.az = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.o

bb.n:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.bb = load ptr, ptr %6, align 8, !tbaa !185   ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.s
  br i1 %i.bc, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.n, %bb.h
  %.sink = phi ptr [ %i.af, %bb.h ], [ %i.bb, %bb.n ]
  %.pn.ph = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %i.ba, %bb.n ]
  %i.bd = load i64, ptr %i.s, align 8, !tbaa !186
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.be) #19
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.n, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %i.ba, %bb.n ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.o

bb.o:                                             ; preds = %.body, %bb.m, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.az, %bb.m ], [ %i.ay, %bb.l ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.o ], [ %i.ax, %bb.k ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %.3 = extractvalue { ptr, i32 } %.pn.pn.pn, 1   ; 2 uses
  br i1 %i.b, label %bb.q, label %_ZN10z3_log_ctxD2Ev.exit30, !prof !162

bb.q:                                             ; preds = %.thread, %bb.p
  %.338 = phi i32 [ %.334, %.thread ], [ %.3, %bb.p ]
  %.pn.pn.pn.pn36 = phi { ptr, i32 } [ %i.c, %.thread ], [ %.pn.pn.pn, %bb.p ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit30

_ZN10z3_log_ctxD2Ev.exit30:                       ; preds = %bb.p, %bb.q
  %.337 = phi i32 [ %.3, %bb.p ], [ %.338, %bb.q ]
  %.pn.pn.pn.pn35 = phi { ptr, i32 } [ %.pn.pn.pn, %bb.p ], [ %.pn.pn.pn.pn36, %bb.q ] ; 2 uses
  %i.bf = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #17
  %i.bg = icmp eq i32 %.337, %i.bf
  br i1 %i.bg, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit30
  %.320 = extractvalue { ptr, i32 } %.pn.pn.pn.pn35, 0
  %i.bh = call ptr @__cxa_begin_catch(ptr %.320) #17
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bh)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.u unwind label %bb.v

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.j, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.s
  %.022 = phi ptr [ @.str, %bb.s ], [ %i.ah, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %i.ah, %bb.j ]
  ret ptr %.022

bb.u:                                             ; preds = %bb.t, %_ZN10z3_log_ctxD2Ev.exit30
  %.merged = phi { ptr, i32 } [ %.pn.pn.pn.pn35, %_ZN10z3_log_ctxD2Ev.exit30 ], [ %i.bi, %bb.t ]
  resume { ptr, i32 } %.merged

bb.v:                                             ; preds = %bb.t
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #18
  unreachable
}

declare void @_Z24log_Z3_rcf_num_to_stringP11_Z3_contextP11_Z3_rcf_numbb(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare void @_ZNK11realclosure7manager7displayERSoRKNS_3numEbb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #6 align 2

; Function Attrs: mustprogress uwtable
define noundef ptr @Z3_rcf_num_to_decimal_string(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %4 = alloca %"class.realclosure::num", align 8  ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z32log_Z3_rcf_num_to_decimal_stringP11_Z3_contextP11_Z3_rcf_numj(ptr noundef %0, ptr noundef %1, i32 noundef %2)
          to label %bb.c unwind label %.thread

.thread:                                          ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %.332 = extractvalue { ptr, i32 } %i.c, 1
  br label %bb.q

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.d, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN3api7context4rcfmEv(ptr noundef nonnull align 8 dereferenceable(3088) %0)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %1, ptr %4, align 8
  invoke void @_ZNK11realclosure7manager15display_decimalERSoRKNS_3numEj(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %2)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !181, !noalias !214 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %bb.f
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %7 = load ptr, ptr %i.i, align 8, !tbaa !182, !noalias !214 ; 2 uses
  %8 = icmp ugt ptr %i.h, %7
  %.08.i.i.i = select i1 %8, ptr %i.h, ptr %7
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !183, !noalias !214
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %i.n, ptr %i.o, align 8, !tbaa !184, !noalias !214
  %i.p = load ptr, ptr %6, align 8, !tbaa !185, !noalias !214
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !186, !noalias !214
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.s, ptr %5, align 8, !tbaa !187, !alias.scope !214
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !185, !noalias !214 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 7 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.x = load i64, ptr %i.w, align 8, !tbaa !184, !noalias !214 ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.t, ptr %5, align 8, !tbaa !185, !alias.scope !214
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !186, !noalias !214
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !186, !alias.scope !214
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %3, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !184, !noalias !214
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g
  %i.ab = phi i64 [ %i.x, %bb.g ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !184, !alias.scope !214
  store ptr %i.u, ptr %i.r, align 8, !tbaa !185, !noalias !214
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ac, i8 0, i64 9, i1 false), !noalias !214
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.f, ptr noundef nonnull %i.u, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.af = load ptr, ptr %5, align 8, !tbaa !185, !alias.scope !214 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.s
  br i1 %i.ag, label %.body, label %.body.sink.split

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ah = invoke noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.i unwind label %bb.n       ; 2 uses

bb.i:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ai = load ptr, ptr %5, align 8, !tbaa !185   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.s
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ak = load i64, ptr %i.s, align 8, !tbaa !186
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.am = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.am, ptr %3, align 8, !tbaa !189
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ao = getelementptr i8, ptr %i.am, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %3, i64 %i.ap
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !189
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8, !tbaa !189
  %i.ar = load ptr, ptr %i.r, align 8, !tbaa !185 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.u
  br i1 %i.as, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = load i64, ptr %i.u, align 8, !tbaa !186
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #19
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8, !tbaa !189
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.av) #17
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.aw) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br i1 %i.b, label %bb.j, label %_ZN10z3_log_ctxD2Ev.exit, !prof !161

bb.j:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.k:                                             ; preds = %bb.c
  %i.ax = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.p

bb.l:                                             ; preds = %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.o

bb.m:                                             ; preds = %bb.e
  %i.az = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.o

bb.n:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.bb = load ptr, ptr %5, align 8, !tbaa !185   ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.s
  br i1 %i.bc, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.n, %bb.h
  %.sink = phi ptr [ %i.af, %bb.h ], [ %i.bb, %bb.n ]
  %.pn.ph = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %i.ba, %bb.n ]
  %i.bd = load i64, ptr %i.s, align 8, !tbaa !186
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.be) #19
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.n, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %i.ba, %bb.n ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.o

bb.o:                                             ; preds = %.body, %bb.m, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.az, %bb.m ], [ %i.ay, %bb.l ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.o ], [ %i.ax, %bb.k ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %.3 = extractvalue { ptr, i32 } %.pn.pn.pn, 1   ; 2 uses
  br i1 %i.b, label %bb.q, label %_ZN10z3_log_ctxD2Ev.exit28, !prof !162

bb.q:                                             ; preds = %.thread, %bb.p
  %.336 = phi i32 [ %.332, %.thread ], [ %.3, %bb.p ]
  %.pn.pn.pn.pn34 = phi { ptr, i32 } [ %i.c, %.thread ], [ %.pn.pn.pn, %bb.p ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit28

_ZN10z3_log_ctxD2Ev.exit28:                       ; preds = %bb.p, %bb.q
  %.335 = phi i32 [ %.3, %bb.p ], [ %.336, %bb.q ]
  %.pn.pn.pn.pn33 = phi { ptr, i32 } [ %.pn.pn.pn, %bb.p ], [ %.pn.pn.pn.pn34, %bb.q ] ; 2 uses
  %i.bf = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #17
  %i.bg = icmp eq i32 %.335, %i.bf
  br i1 %i.bg, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit28
  %.318 = extractvalue { ptr, i32 } %.pn.pn.pn.pn33, 0
  %i.bh = call ptr @__cxa_begin_catch(ptr %.318) #17
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bh)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.u unwind label %bb.v

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.j, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.s
  %.020 = phi ptr [ @.str, %bb.s ], [ %i.ah, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %i.ah, %bb.j ]
  ret ptr %.020

bb.u:                                             ; preds = %bb.t, %_ZN10z3_log_ctxD2Ev.exit28
  %.merged = phi { ptr, i32 } [ %.pn.pn.pn.pn33, %_ZN10z3_log_ctxD2Ev.exit28 ], [ %i.bi, %bb.t ]
  resume { ptr, i32 } %.merged

bb.v:                                             ; preds = %bb.t
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #18
  unreachable
}

declare void @_Z32log_Z3_rcf_num_to_decimal_stringP11_Z3_contextP11_Z3_rcf_numj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZNK11realclosure7manager15display_decimalERSoRKNS_3numEj(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @Z3_rcf_get_numerator_denominator(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.realclosure::num", align 8  ; 7 uses
  %5 = alloca %"class.realclosure::num", align 8  ; 7 uses
  %6 = alloca %"class.realclosure::num", align 8  ; 5 uses
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c
end_hunk_0
