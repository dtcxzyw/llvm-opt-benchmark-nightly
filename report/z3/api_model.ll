Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/api_model?download=true
inline.NumInlined: 767
inline.NumDeleted: 245
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Z3_func_entry_get_num_args:bb.a
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #18
  unreachable
}

declare void @_Z30log_Z3_func_entry_get_num_argsP11_Z3_contextP14_Z3_func_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define ptr @Z3_func_entry_get_arg(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  invoke void @_Z25log_Z3_func_entry_get_argP11_Z3_contextP14_Z3_func_entryj(ptr noundef %0, ptr noundef %1, i32 noundef %2)
          to label %bb.c unwind label %.thread31

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.c, align 8, !tbaa !167
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !255
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !260
  %.not = icmp ult i32 %2, %i.g
  br i1 %.not, label %bb.g, label %bb.d

.thread:                                          ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.h, align 8, !tbaa !167
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !255
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !260
  %.not29 = icmp ult i32 %2, %i.l
  br i1 %.not29, label %.thread30, label %bb.d

.thread30:                                        ; preds = %.thread
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !256
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = zext i32 %2 to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !224
  br label %_ZN10z3_log_ctxD2Ev.exit24

bb.d:                                             ; preds = %.thread, %bb.c
  invoke void @_ZN3api7context14set_error_codeE13Z3_error_codePKc(ptr noundef nonnull align 8 dereferenceable(3088) %0, i32 noundef 2, ptr noundef null)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  br i1 %i.b, label %bb.f, label %_ZN10z3_log_ctxD2Ev.exit24, !prof !185

bb.f:                                             ; preds = %bb.e
  invoke void @_Z4SetRPKv(ptr noundef null)
          to label %bb.j unwind label %.thread31

bb.g:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !256
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = zext i32 %2 to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !224  ; 2 uses
  invoke void @_Z4SetRPKv(ptr noundef %i.x)
          to label %bb.j unwind label %.thread31

.thread31:                                        ; preds = %bb.f, %bb.b, %bb.g
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %.033 = extractvalue { ptr, i32 } %lpad.thr_comm, 1
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 3 uses
  %.0 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 1 ; 2 uses
  br i1 %i.b, label %bb.i, label %_ZN10z3_log_ctxD2Ev.exit, !prof !186

bb.i:                                             ; preds = %.thread31, %bb.h
  %.037 = phi i32 [ %.033, %.thread31 ], [ %.0, %bb.h ]
  %lpad.phi35 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread31 ], [ %lpad.thr_comm.split-lp, %bb.h ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.h, %bb.i
  %.036 = phi i32 [ %.0, %bb.h ], [ %.037, %bb.i ]
  %lpad.phi34 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.h ], [ %lpad.phi35, %bb.i ] ; 2 uses
  %i.y = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #17
  %i.z = icmp eq i32 %.036, %i.y
  br i1 %i.z, label %bb.k, label %bb.n

bb.j:                                             ; preds = %bb.f, %bb.g
  %.020 = phi ptr [ %i.x, %bb.g ], [ null, %bb.f ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit24

bb.k:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit
  %.018 = extractvalue { ptr, i32 } %lpad.phi34, 0
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %.018) #17
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit24

bb.m:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

_ZN10z3_log_ctxD2Ev.exit24:                       ; preds = %bb.e, %.thread30, %bb.j, %bb.l
  %.121 = phi ptr [ null, %bb.l ], [ %.020, %bb.j ], [ %i.r, %.thread30 ], [ null, %bb.e ]
  ret ptr %.121

bb.n:                                             ; preds = %bb.m, %_ZN10z3_log_ctxD2Ev.exit
  %.merged = phi { ptr, i32 } [ %lpad.phi34, %_ZN10z3_log_ctxD2Ev.exit ], [ %i.ab, %bb.m ]
  resume { ptr, i32 } %.merged

bb.o:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #18
  unreachable
}

declare void @_Z25log_Z3_func_entry_get_argP11_Z3_contextP14_Z3_func_entryj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @Z3_model_to_string(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 36 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %struct.model_params, align 8       ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_Z22log_Z3_model_to_stringP11_Z3_contextP9_Z3_model(ptr noundef %0, ptr noundef %1)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.al

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.d, align 8, !tbaa !167
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN3api7context14set_error_codeE13Z3_error_codePKc(ptr noundef nonnull align 8 dereferenceable(3088) %0, i32 noundef 3, ptr noundef nonnull @.str)
          to label %bb.aj unwind label %bb.c

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !261
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  store i64 0, ptr %i.g, align 8, !tbaa !262
  store i8 0, ptr %i.f, align 8, !tbaa !263
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.i = load i32, ptr %i.h, align 8, !tbaa !303
  %i.j = icmp eq i32 %i.i, 2
  br i1 %i.j, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !173
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !172
  invoke void @_Z13model_smt2_ppRSoR11ast_managerRK10model_corej(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(952) %i.l, ptr noundef nonnull align 8 dereferenceable(96) %i.n, i32 noundef 0)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !309, !noalias !310 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i: ; preds = %bb.i
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %8 = load ptr, ptr %7, align 8, !tbaa !311, !noalias !310 ; 2 uses
  %9 = icmp ugt ptr %i.q, %8
  %.08.i9.i.i = select i1 %9, ptr %i.q, ptr %8    ; 2 uses
  %.not.i.i = icmp eq ptr %.08.i9.i.i, null
  br i1 %.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !312, !noalias !310
  %i.u = ptrtoint ptr %.08.i9.i.i to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.w, ptr %i.x, align 8, !tbaa !262, !noalias !310
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !264, !noalias !310
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !263, !noalias !310
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !261, !alias.scope !310
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !264, !noalias !310 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 5 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !262, !noalias !310 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ah)
  %i.ai = add nuw nsw i64 %i.ag, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.ai, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.ac, ptr %4, align 8, !tbaa !264, !alias.scope !310
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !263, !noalias !310
  store i64 %i.aj, ptr %i.ab, align 8, !tbaa !263, !alias.scope !310
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !262, !noalias !310
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.j
  %i.ak = phi i64 [ %i.ag, %bb.j ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !262, !alias.scope !310
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !264, !noalias !310
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.al, i8 0, i64 9, i1 false), !noalias !310
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.o, ptr noundef nonnull %i.ad, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  %i.ao = load ptr, ptr %4, align 8, !tbaa !264, !alias.scope !310 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.ab
  br i1 %i.ap, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.aq = load i64, ptr %i.ab, align 8, !tbaa !263, !alias.scope !310
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #20
  br label %.body

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.as = load ptr, ptr %3, align 8, !tbaa !264   ; 6 uses
  %i.at = icmp eq ptr %i.as, %i.f
  %i.au = load ptr, ptr %4, align 8, !tbaa !264   ; 5 uses
  %i.av = icmp eq ptr %i.au, %i.ab                ; 2 uses
  br i1 %i.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.av, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.av, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aw = load i64, ptr %i.am, align 8, !tbaa !262 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.ax)
  switch i64 %i.aw, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.ay = load i8, ptr %i.au, align 1, !tbaa !263
  store i8 %i.ay, ptr %i.as, align 1, !tbaa !263
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.au, i64 %i.aw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.az = load i64, ptr %i.am, align 8, !tbaa !262 ; 2 uses
  store i64 %i.az, ptr %i.g, align 8, !tbaa !262
  %i.ba = load ptr, ptr %3, align 8, !tbaa !264
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az
  store i8 0, ptr %i.bb, align 1, !tbaa !263
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !264
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.au, ptr %3, align 8, !tbaa !264
  %i.bc = load <2 x i64>, ptr %i.am, align 8, !tbaa !263
  store <2 x i64> %i.bc, ptr %i.g, align 8, !tbaa !263
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bd = load i64, ptr %i.f, align 8, !tbaa !263
  store ptr %i.au, ptr %3, align 8, !tbaa !264
  %i.be = load <2 x i64>, ptr %i.am, align 8, !tbaa !263
  store <2 x i64> %i.be, ptr %i.g, align 8, !tbaa !263
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.as, ptr %4, align 8, !tbaa !264
  store i64 %i.bd, ptr %i.ab, align 8, !tbaa !263
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ab, ptr %4, align 8, !tbaa !264
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.o, %bb.p
  %i.bf = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.as, %bb.o ], [ %i.ab, %bb.p ]
  store i64 0, ptr %i.am, align 8, !tbaa !262
  store i8 0, ptr %i.bf, align 1, !tbaa !263
  %i.bg = load ptr, ptr %4, align 8, !tbaa !264   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.ab
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bi = load i64, ptr %i.ab, align 8, !tbaa !263
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.bk = load i64, ptr %i.g, align 8, !tbaa !262 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bm = add i64 %i.bk, -1                       ; 2 uses
  store i64 %i.bm, ptr %i.g, align 8, !tbaa !262
  %i.bn = load ptr, ptr %3, align 8, !tbaa !264
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bm
  store i8 0, ptr %i.bo, align 1, !tbaa !263
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

bb.q:                                             ; preds = %bb.f
  %i.bp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.ai

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit, %bb.h
  %i.bq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.ah

.body:                                            ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.ah

bb.s:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr @_ZN10params_ref18g_empty_params_refE, ptr %5, align 8, !tbaa !314
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  invoke void @_ZN7gparams10get_moduleEPKc(ptr dead_on_unwind nonnull writable sret(%class.params_ref) align 8 %i.br, ptr noundef nonnull @.str.7)
          to label %bb.t unwind label %bb.ac

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !172
  %i.bu = load ptr, ptr %5, align 8, !tbaa !316, !nonnull !221, !align !222
  %i.bv = invoke noundef zeroext i1 @_ZNK10params_ref8get_boolEPKcRKS_b(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull @.str.8, ptr noundef nonnull align 8 dereferenceable(8) %i.br, i1 noundef zeroext false)
          to label %_ZNK12model_params7partialEv.exit unwind label %bb.ad

_ZNK12model_params7partialEv.exit:                ; preds = %bb.t
  invoke void @_Z11model_v2_ppRSoRK10model_coreb(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(96) %i.bt, i1 noundef zeroext %i.bv)
          to label %bb.u unwind label %bb.ad

bb.u:                                             ; preds = %_ZNK12model_params7partialEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !309, !noalias !319 ; 3 uses
  %.not.i4.not.i.i36 = icmp eq ptr %i.by, null
  br i1 %.not.i4.not.i.i36, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i41, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i37

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i37: ; preds = %bb.u
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %11 = load ptr, ptr %10, align 8, !tbaa !311, !noalias !319 ; 2 uses
  %12 = icmp ugt ptr %i.by, %11
  %.08.i9.i.i38 = select i1 %12, ptr %i.by, ptr %11 ; 2 uses
  %.not.i.i39 = icmp eq ptr %.08.i9.i.i38, null
  br i1 %.not.i.i39, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i41, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i40

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i40: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i37
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !312, !noalias !319
  %i.cc = ptrtoint ptr %.08.i9.i.i38 to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !262, !noalias !319
  %i.cg = load ptr, ptr %i.bz, align 8, !tbaa !264, !noalias !319
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ce
  store i8 0, ptr %i.ch, align 1, !tbaa !263, !noalias !319
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i41

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i41: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i40, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i37, %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 11 uses
  store ptr %i.cj, ptr %6, align 8, !tbaa !261, !alias.scope !319
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !264, !noalias !319 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 5 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42

bb.v:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i41
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !262, !noalias !319 ; 3 uses
  %i.cp = icmp ult i64 %i.co, 16
  call void @llvm.assume(i1 %i.cp)
  %i.cq = add nuw nsw i64 %i.co, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cj, ptr noundef nonnull align 8 dereferenceable(1) %i.cl, i64 %i.cq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i41
  store ptr %i.ck, ptr %6, align 8, !tbaa !264, !alias.scope !319
  %i.cr = load i64, ptr %i.cl, align 8, !tbaa !263, !noalias !319
  store i64 %i.cr, ptr %i.cj, align 8, !tbaa !263, !alias.scope !319
  %.phi.trans.insert.i.i43 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.pre.i.i44 = load i64, ptr %.phi.trans.insert.i.i43, align 8, !tbaa !262, !noalias !319
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i45: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42, %bb.v
  %i.cs = phi i64 [ %i.co, %bb.v ], [ %.pre.i.i44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42 ]
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 %i.cs, ptr %i.cu, align 8, !tbaa !262, !alias.scope !319
  store ptr %i.cl, ptr %i.ci, align 8, !tbaa !264, !noalias !319
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ct, i8 0, i64 9, i1 false), !noalias !319
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.bw, ptr noundef nonnull %i.cl, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit51 unwind label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i45
  %i.cv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  %i.cw = load ptr, ptr %6, align 8, !tbaa !264, !alias.scope !319 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.cj
  br i1 %i.cx, label %.body49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i46: ; preds = %bb.w
  %i.cy = load i64, ptr %i.cj, align 8, !tbaa !263, !alias.scope !319
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #20
  br label %.body49

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i45
  %i.da = load ptr, ptr %3, align 8, !tbaa !264   ; 6 uses
  %i.db = icmp eq ptr %i.da, %i.f
  %i.dc = load ptr, ptr %6, align 8, !tbaa !264   ; 5 uses
  %i.dd = icmp eq ptr %i.dc, %i.cj                ; 2 uses
  br i1 %i.db, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i57: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit51
  br i1 %i.dd, label %bb.x, label %.thread.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i52: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit51
  br i1 %i.dd, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i53

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i57
  %i.de = load i64, ptr %i.cu, align 8, !tbaa !262 ; 3 uses
  %i.df = icmp ult i64 %i.de, 16
  call void @llvm.assume(i1 %i.df)
  switch i64 %i.de, label %bb.z [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i55
    i64 1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.dg = load i8, ptr %i.dc, align 1, !tbaa !263
  store i8 %i.dg, ptr %i.da, align 1, !tbaa !263
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i55

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.da, ptr align 1 %i.dc, i64 %i.de, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i55: ; preds = %bb.z, %bb.y, %bb.x
  %i.dh = load i64, ptr %i.cu, align 8, !tbaa !262 ; 2 uses
  store i64 %i.dh, ptr %i.g, align 8, !tbaa !262
  %i.di = load ptr, ptr %3, align 8, !tbaa !264
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dh
  store i8 0, ptr %i.dj, align 1, !tbaa !263
  %.pre.i56 = load ptr, ptr %6, align 8, !tbaa !264
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit59

.thread.i58:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i57
  store ptr %i.dc, ptr %3, align 8, !tbaa !264
  %i.dk = load <2 x i64>, ptr %i.cu, align 8, !tbaa !263
  store <2 x i64> %i.dk, ptr %i.g, align 8, !tbaa !263
  br label %bb.ab

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i53: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i52
  %i.dl = load i64, ptr %i.f, align 8, !tbaa !263
  store ptr %i.dc, ptr %3, align 8, !tbaa !264
  %i.dm = load <2 x i64>, ptr %i.cu, align 8, !tbaa !263
  store <2 x i64> %i.dm, ptr %i.g, align 8, !tbaa !263
  %.not.i54 = icmp eq ptr %i.da, null
  br i1 %.not.i54, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i53
  store ptr %i.da, ptr %6, align 8, !tbaa !264
  store i64 %i.dl, ptr %i.cj, align 8, !tbaa !263
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit59

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i53, %.thread.i58
  store ptr %i.cj, ptr %6, align 8, !tbaa !264
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i55, %bb.aa, %bb.ab
  %i.dn = phi ptr [ %.pre.i56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i55 ], [ %i.da, %bb.aa ], [ %i.cj, %bb.ab ]
  store i64 0, ptr %i.cu, align 8, !tbaa !262
  store i8 0, ptr %i.dn, align 1, !tbaa !263
  %i.do = load ptr, ptr %6, align 8, !tbaa !264   ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.cj
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit59
  %i.dq = load i64, ptr %i.cj, align 8, !tbaa !263
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.br) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

bb.ac:                                            ; preds = %bb.s
  %i.ds = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.af

bb.ad:                                            ; preds = %bb.t, %_ZNK12model_params7partialEv.exit
  %i.dt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.ae

.body49:                                          ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.ae

bb.ae:                                            ; preds = %.body49, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.cv, %.body49 ], [ %i.dt, %bb.ad ]
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.br) #17
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ae ], [ %i.ds, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.ah

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %.sink.split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %i.du = invoke noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.ag unwind label %bb.r

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.dv = load ptr, ptr %3, align 8, !tbaa !264   ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.f
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.ag
  %i.dx = load i64, ptr %i.f, align 8, !tbaa !263
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.dz = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.dz, ptr %2, align 8, !tbaa !169
  %i.ea = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.eb = getelementptr i8, ptr %i.dz, i64 -24
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds i8, ptr %2, i64 %i.ec
  store ptr %i.ea, ptr %i.ed, align 8, !tbaa !169
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ee, align 8, !tbaa !169
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !264 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.ej = load i64, ptr %i.eh, align 8, !tbaa !263
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ek) #20
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i66
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ee, align 8, !tbaa !169
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.el) #17
end_hunk_0
