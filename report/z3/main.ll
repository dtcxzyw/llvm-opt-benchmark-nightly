Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/main?download=true
inline.NumInlined: 152
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@main:bb.a
  br i1 %i.ja, label %.thread128, label %.thread

.thread128:                                       ; preds = %bb.ct
  store i32 9, ptr @_ZL12g_input_kind, align 4, !tbaa !22
  br label %bb.db

.thread:                                          ; preds = %bb.cm, %bb.cs, %_Z13get_extensionPKc.exit, %bb.ct, %bb.cn
  invoke void @_ZN6memory23exit_when_out_of_memoryEbPKc(i1 noundef zeroext true, ptr noundef nonnull @.str.56)
          to label %bb.cu unwind label %.loopexit.split-lp.loopexit.split-lp

bb.cu:                                            ; preds = %.thread
  %i.jb = load ptr, ptr @_ZL12g_input_file, align 8, !tbaa !17
  %i.jc = invoke noundef i32 @_Z21read_smtlib2_commandsPKc(ptr noundef %i.jb)
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.split-lp

bb.cv:                                            ; preds = %bb.cm, %.thread122
  %i.jd = invoke noundef i32 @_Z11read_dimacsPKc(ptr noundef %i.hq)
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.split-lp

bb.cw:                                            ; preds = %bb.cm, %.thread124
  br label %.invoke410

bb.cx:                                            ; preds = %bb.cm, %.thread125
  br label %.invoke410

.invoke410:                                       ; preds = %.thread123, %bb.cm, %bb.cw, %bb.cx
  %i.je = phi i32 [ 2, %bb.cx ], [ 0, %bb.cw ], [ 1, %bb.cm ], [ 1, %.thread123 ]
  %i.jf = invoke noundef i32 @_Z9parse_optPKc10opt_format(ptr noundef %i.hq, i32 noundef %i.je)
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.split-lp

bb.cy:                                            ; preds = %bb.cm, %.thread126
  %i.jg = invoke noundef i32 @_Z12read_datalogPKc(ptr noundef %i.hq)
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.cz:                                            ; preds = %bb.cm, %.thread127
  invoke void @_Z13replay_z3_logPKc(ptr noundef %i.hq)
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.split-lp

bb.da:                                            ; preds = %bb.cm
  %i.jh = load ptr, ptr @_ZL17g_drat_input_file, align 8, !tbaa !17
  %i.ji = invoke noundef i32 @_Z9read_dratPKc(ptr noundef %i.jh)
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.split-lp

bb.db:                                            ; preds = %bb.cm, %.thread128
  %i.jj = invoke noundef i32 @_Z9read_tptpPKc(ptr noundef %i.hq)
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.split-lp

bb.dc:                                            ; preds = %bb.cm
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.57, i32 noundef 464, ptr noundef nonnull @.str.58)
          to label %bb.dd unwind label %.loopexit.split-lp.loopexit.split-lp

bb.dd:                                            ; preds = %bb.dc
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.split-lp

bb.de:                                            ; preds = %.invoke410, %bb.db, %bb.da, %bb.cv, %bb.cu, %bb.dd, %bb.cz, %bb.cy
  %.026 = phi i32 [ 0, %bb.dd ], [ %i.ji, %bb.da ], [ %i.jc, %bb.cu ], [ %i.jd, %bb.cv ], [ %i.jf, %.invoke410 ], [ %i.jj, %bb.db ], [ 0, %bb.cy ], [ 0, %bb.cz ]
  invoke void @_Z15disable_timeoutv()
          to label %bb.df unwind label %.loopexit.split-lp.loopexit.split-lp

bb.df:                                            ; preds = %bb.de
  invoke void @_ZN6memory8finalizeEb(i1 noundef zeroext true)
          to label %bb.dg unwind label %.loopexit.split-lp.loopexit.split-lp

bb.dg:                                            ; preds = %bb.df
  %i.jk = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.jl = icmp eq ptr %i.jk, %i.a
  br i1 %i.jl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.dg
  %i.jm = load i64, ptr %i.a, align 8, !tbaa !16
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.do

bb.dh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ck
  %.pn = phi { ptr, i32 } [ %lpad.phi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.hs, %bb.ck ] ; 3 uses
  %.0 = extractvalue { ptr, i32 } %.pn, 1
  %i.jo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #19
  %i.jp = icmp eq i32 %.0, %i.jo
  br i1 %i.jp, label %bb.di, label %bb.dp

bb.di:                                            ; preds = %bb.dh
  %.024 = extractvalue { ptr, i32 } %.pn, 0
  %i.jq = call ptr @__cxa_begin_catch(ptr %.024) #19 ; 5 uses
  %i.jr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.59, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.dm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.di
  %i.js = load ptr, ptr %i.jq, align 8, !tbaa !28
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.ju = load ptr, ptr %i.jt, align 8
  %i.jv = call noundef ptr %i.ju(ptr noundef nonnull align 8 dereferenceable(8) %i.jq) #19
  %i.jw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.jv)
          to label %bb.dj unwind label %bb.dm

bb.dj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.jx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jw, ptr noundef nonnull @.str.60, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92 unwind label %bb.dm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92: ; preds = %bb.dj
  %i.jy = invoke noundef zeroext i1 @_ZNK12z3_exception14has_error_codeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jq)
          to label %bb.dk unwind label %bb.dm

bb.dk:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92
  br i1 %i.jy, label %bb.dl, label %bb.dn

bb.dl:                                            ; preds = %bb.dk
  %i.jz = load ptr, ptr %i.jq, align 8, !tbaa !28
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %i.kb = load ptr, ptr %i.ka, align 8
  %i.kc = invoke noundef i32 %i.kb(ptr noundef nonnull align 8 dereferenceable(8) %i.jq)
          to label %bb.dn unwind label %bb.dm

bb.dm:                                            ; preds = %bb.dj, %bb.di, %bb.dl, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.kd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dp unwind label %bb.dq

bb.dn:                                            ; preds = %bb.dk, %bb.dl
  %.027 = phi i32 [ %i.kc, %bb.dl ], [ 110, %bb.dk ]
  call void @__cxa_end_catch()
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %.128 = phi i32 [ %.026, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %.027, %bb.dn ]
  ret i32 %.128

bb.dp:                                            ; preds = %bb.dm, %bb.dh
  %.merged = phi { ptr, i32 } [ %.pn, %bb.dh ], [ %i.kd, %bb.dm ]
  resume { ptr, i32 } %.merged

bb.dq:                                            ; preds = %bb.dm
  %i.ke = landingpad { ptr, i32 }
          catch ptr null
  %i.kf = extractvalue { ptr, i32 } %i.ke, 0
  call void @__clang_call_terminate(ptr %i.kf) #23
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @_ZN6memory10initializeEm(i64 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN6memory23exit_when_out_of_memoryEbPKc(i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @_ZN10env_params11updt_paramsEv() local_unnamed_addr #2

; Function Attrs: cold mustprogress norecurse noreturn uwtable
define internal fastcc void @_ZL5errorPKc(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.111)
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %0)
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.60) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.105) ; 0 uses
  tail call void @exit(i32 noundef 109) #24
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_ZL17is_tptp_extensionPKc(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.88) #22
  %.not11 = icmp eq i32 %i.a, 0
  br i1 %.not11, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.71) #22
  %.not11.1 = icmp eq i32 %i.b, 0
  br i1 %.not11.1, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.112) #22
  %.not11.2 = icmp eq i32 %i.c, 0
  br i1 %.not11.2, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.50) #22
  %.not11.3 = icmp eq i32 %i.d, 0
  br i1 %.not11.3, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.113) #22
  %.not11.4 = icmp eq i32 %i.e, 0
  br i1 %.not11.4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.114) #22
  %.not11.5 = icmp eq i32 %i.f, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.not11.lcssa = phi i1 [ true, %bb.d ], [ true, %bb.a ], [ true, %bb.b ], [ %.not11.5, %bb.f ], [ true, %bb.c ], [ true, %bb.e ]
  ret i1 %.not11.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare noundef i32 @_Z21read_smtlib2_commandsPKc(ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z11read_dimacsPKc(ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z9parse_optPKc10opt_format(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z12read_datalogPKc(ptr noundef) local_unnamed_addr #2

declare void @_Z13replay_z3_logPKc(ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z9read_dratPKc(ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z9read_tptpPKc(ptr noundef) local_unnamed_addr #2

declare void @_Z26notify_assertion_violationPKciS0_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z18invoke_exit_actionj(i32 noundef) local_unnamed_addr #2

declare void @_Z15disable_timeoutv() local_unnamed_addr #2

declare void @_ZN6memory8finalizeEb(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #8

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare noundef zeroext i1 @_ZNK12z3_exception14has_error_codeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

declare void @_Z11warning_msgPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #11

declare void @_ZN7gparams3setEPKcS1_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

declare void @_Z19set_verbosity_levelj(i32 noundef) local_unnamed_addr #2

declare void @_Z23enable_warning_messagesb(i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN7gparams7displayERSojbb(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN7gparams23display_module_markdownERSoPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare void @_ZN7gparams15display_modulesERSo(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN7gparams14display_moduleERSoPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare void @_ZN7gparams17display_parameterERSoPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare void @_Z12enable_debugPKc(ptr noundef) local_unnamed_addr #2

declare void @_Z12help_tacticsv() local_unnamed_addr #2

declare void @_Z11help_tacticPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_Z16help_simplifiersv() local_unnamed_addr #2

declare void @_Z15help_simplifierPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_Z11help_probesv() local_unnamed_addr #2

declare void @_Z11set_timeoutl(i64 noundef) local_unnamed_addr #2

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !18     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.109) #21
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !30

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #26 ; 5 uses
  switch i64 %1, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !16
  store i8 %i.t, ptr %i.s, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.i, %bb.h
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = load i8, ptr %3, align 1, !tbaa !16
  store i8 %i.x, ptr %i.w, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !16
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

end_hunk_0
