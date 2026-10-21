Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmDebuggerAdapter?download=true
inline.NumInlined: 2977
inline.NumDeleted: 1566
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN10cmDebugger17cmDebuggerAdapter14ReportExitCodeEi:bb.a
bb.t:                                             ; preds = %.noexc.i.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.cf) #25
  br label %_ZN3dap15TerminatedEventD2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #26
  unreachable

_ZN3dap15TerminatedEventD2Ev.exit:                ; preds = %bb.r, %.noexc.i.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.ci = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.d
  br i1 %i.cj, label %_ZN3dap11ThreadEventD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN3dap15TerminatedEventD2Ev.exit
  %i.ck = load i64, ptr %i.d, align 8, !tbaa !62
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #25
  br label %_ZN3dap11ThreadEventD2Ev.exit

_ZN3dap11ThreadEventD2Ev.exit:                    ; preds = %_ZN3dap15TerminatedEventD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

.body:                                            ; preds = %bb.m, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.q ], [ %i.aw, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.v

bb.v:                                             ; preds = %.body, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bu, %bb.p ]
  %i.cm = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.d
  br i1 %i.cn, label %_ZN3dap11ThreadEventD2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15: ; preds = %bb.v
  %i.co = load i64, ptr %i.d, align 8, !tbaa !62
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #25
  br label %_ZN3dap11ThreadEventD2Ev.exit17

_ZN3dap11ThreadEventD2Ev.exit17:                  ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN10cmDebugger23cmDebuggerThreadManager9EndThreadERKSt10shared_ptrINS_16cmDebuggerThreadEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3dap15TerminatedEventD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !155    ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i, label %_ZN3dap8optionalINS_7variantISt6vectorINS_3anyESaIS3_EEJNS_7booleanENS_7integerEDnNS_6numberESt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_S3_EEESF_EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !156  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %i.a)
          to label %.noexc.i.i.i unwind label %bb.d, !inline_history !7

.noexc.i.i.i:                                     ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !157  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %_ZN3dap8optionalINS_7variantISt6vectorINS_3anyESaIS3_EEJNS_7booleanENS_7integerEDnNS_6numberESt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_S3_EEESF_EEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.noexc.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #25
  br label %_ZN3dap8optionalINS_7variantISt6vectorINS_3anyESaIS3_EEJNS_7booleanENS_7integerEDnNS_6numberESt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_S3_EEESF_EEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #26
  unreachable

_ZN3dap8optionalINS_7variantISt6vectorINS_3anyESaIS3_EEJNS_7booleanENS_7integerEDnNS_6numberESt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_S3_EEESF_EEEED2Ev.exit: ; preds = %bb.a, %.noexc.i.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10cmDebugger17cmDebuggerAdapter24OnFileParsedSuccessfullyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorI18cmListFileFunctionSaISA_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(193) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86
  tail call void @_ZN10cmDebugger27cmDebuggerBreakpointManager16SourceFileLoadedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorI18cmListFileFunctionSaISA_EE(ptr noundef nonnull align 8 dereferenceable(224) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

declare void @_ZN10cmDebugger27cmDebuggerBreakpointManager16SourceFileLoadedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorI18cmListFileFunctionSaISA_EE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10cmDebugger17cmDebuggerAdapter19OnBeginFunctionCallEP10cmMakefileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK18cmListFileFunction(ptr noundef nonnull align 8 dereferenceable(193) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.172", align 8   ; 12 uses
  %5 = alloca %"struct.dap::StoppedEvent", align 8 ; 25 uses
  %6 = alloca %"class.std::vector.181", align 8   ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #27
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121
  invoke void @_ZN10cmDebugger16cmDebuggerThread14PushStackFrameEP10cmMakefileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK18cmListFileFunction(ptr noundef nonnull align 8 dereferenceable(288) %i.d, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.c unwind label %.thread58

bb.c:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.e = load ptr, ptr %3, align 8, !tbaa !164
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load i64, ptr %i.f, align 8, !tbaa !171  ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.w, label %bb.d

.thread58:                                        ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !86
  invoke void @_ZN10cmDebugger27cmDebuggerBreakpointManager14GetBreakpointsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.172") align 8 %4, ptr noundef nonnull align 8 dereferenceable(224) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.g)
          to label %bb.e unwind label %bb.z

bb.e:                                             ; preds = %bb.d
  %i.l = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !93
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.p, align 8, !tbaa !47
  store i8 0, ptr %i.o, align 8, !tbaa !62
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i8 0, ptr %i.q, align 8, !tbaa !173
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.r, i8 0, i64 25, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i8 0, ptr %i.s, align 8, !tbaa !175
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 81
  store i8 0, ptr %i.t, align 1, !tbaa !177
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 4 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !93
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 4 uses
  store i64 0, ptr %i.w, align 8, !tbaa !47
  store i8 0, ptr %i.v, align 8, !tbaa !62
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 136 ; 4 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !93
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 128
  store i64 0, ptr %i.z, align 8, !tbaa !47
  store i8 0, ptr %i.y, align 8, !tbaa !62
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 152
  store i8 0, ptr %i.aa, align 8, !tbaa !173
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 160
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 168
  store i8 1, ptr %5, align 8, !tbaa !175
  store i8 1, ptr %i.m, align 1, !tbaa !177
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !121 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !143
  store i64 %i.ae, ptr %i.ab, align 8, !tbaa !118
  store i8 1, ptr %i.ac, align 8, !tbaa !179
  %i.af = load ptr, ptr %4, align 8, !tbaa !181   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !181 ; 2 uses
  %.not66 = icmp eq ptr %i.af, %i.ah              ; 2 uses
  br i1 %.not66, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120
  store atomic i64 -2147483648, ptr %i.ai seq_cst, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  store atomic i8 0, ptr %i.aj seq_cst, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 136
  store atomic i64 -2147483648, ptr %i.ak seq_cst, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 144
  store atomic i8 0, ptr %i.al seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.am = ptrtoint ptr %i.ah to i64
  %i.an = ptrtoint ptr %i.af to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ar = icmp ugt i64 %i.ao, 9223372036854775800
  br i1 %i.ar, label %bb.g, label %_ZNKSt6vectorIN3dap7integerESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #27
          to label %.noexc46 unwind label %bb.k

.noexc46:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorIN3dap7integerESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.f
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #24
          to label %_ZNSt6vectorIN3dap7integerESaIS1_EE6resizeEm.exit unwind label %bb.k ; 4 uses

_ZNSt6vectorIN3dap7integerESaIS1_EE6resizeEm.exit: ; preds = %_ZNKSt6vectorIN3dap7integerESaIS1_EE12_M_check_lenEmPKc.exit.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.as, i8 0, i64 %i.ao, i1 false), !tbaa !118
  store ptr %i.as, ptr %6, align 8, !tbaa !184
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ao ; 2 uses
  store ptr %i.at, ptr %i.ap, align 8, !tbaa !185
  store ptr %i.at, ptr %i.aq, align 8, !tbaa !186
  %.pre = load ptr, ptr %4, align 8, !tbaa !181   ; 2 uses
  %.pre67 = load ptr, ptr %i.ag, align 8, !tbaa !181 ; 2 uses
  %.not7.i = icmp eq ptr %.pre, %.pre67
  br i1 %.not7.i, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS1_IPN3dap7integerES3_IS8_SaIS8_EEEEZN10cmDebugger17cmDebuggerAdapter19OnBeginFunctionCallEP10cmMakefileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK18cmListFileFunctionE3$_0ET0_T_SU_ST_T1_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN3dap7integerESaIS1_EE6resizeEm.exit, %.lr.ph.i
  %.sroa.0.09.i = phi ptr [ %i.aw, %.lr.ph.i ], [ %i.as, %_ZNSt6vectorIN3dap7integerESaIS1_EE6resizeEm.exit ] ; 2 uses
  %.sroa.04.08.i = phi ptr [ %i.av, %.lr.ph.i ], [ %.pre, %_ZNSt6vectorIN3dap7integerESaIS1_EE6resizeEm.exit ] ; 2 uses
  %i.au = load i64, ptr %.sroa.04.08.i, align 8, !tbaa !116
  store i64 %i.au, ptr %.sroa.0.09.i, align 8, !tbaa !116
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i, i64 8
  %.not.i27 = icmp eq ptr %i.av, %.pre67
  br i1 %.not.i27, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS1_IPN3dap7integerES3_IS8_SaIS8_EEEEZN10cmDebugger17cmDebuggerAdapter19OnBeginFunctionCallEP10cmMakefileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK18cmListFileFunctionE3$_0ET0_T_SU_ST_T1_.exit", label %.lr.ph.i, !llvm.loop !397

"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS1_IPN3dap7integerES3_IS8_SaIS8_EEEEZN10cmDebugger17cmDebuggerAdapter19OnBeginFunctionCallEP10cmMakefileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK18cmListFileFunctionE3$_0ET0_T_SU_ST_T1_.exit": ; preds = %.lr.ph.i, %_ZNSt6vectorIN3dap7integerESaIS1_EE6resizeEm.exit
  %i.ax = load i64, ptr %i.w, align 8, !tbaa !47
  %i.ay = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef 0, i64 noundef %i.ax, ptr noundef nonnull @.str.8, i64 noundef 10)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.k ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS1_IPN3dap7integerES3_IS8_SaIS8_EEEEZN10cmDebugger17cmDebuggerAdapter19OnBeginFunctionCallEP10cmMakefileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK18cmListFileFunctionE3$_0ET0_T_SU_ST_T1_.exit"
  %i.az = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN3dap7integerESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(25) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.h unwind label %bb.k       ; 0 uses

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i8 1, ptr %i.ba, align 8, !tbaa !402
  %i.bb = load ptr, ptr %6, align 8, !tbaa !184   ; 3 uses
  %.not.i.i.i30 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIN3dap7integerESaIS1_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !186
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bg) #25
  br label %_ZNSt6vectorIN3dap7integerESaIS1_EED2Ev.exit

_ZNSt6vectorIN3dap7integerESaIS1_EED2Ev.exit:     ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.pre68 = load ptr, ptr %i.c, align 8, !tbaa !121
  br label %bb.m

bb.j:                                             ; preds = %.noexc37, %.critedge, %bb.q, %bb.p, %_ZN3dap7Session4sendINS_12StoppedEventEvEEvRKT_.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %_ZNKSt6vectorIN3dap7integerESaIS1_EE12_M_check_lenEmPKc.exit.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS1_IPN3dap7integerES3_IS8_SaIS8_EEEEZN10cmDebugger17cmDebuggerAdapter19OnBeginFunctionCallEP10cmMakefileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK18cmListFileFunctionE3$_0ET0_T_SU_ST_T1_.exit"
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load ptr, ptr %6, align 8, !tbaa !184   ; 3 uses
  %.not.i.i.i31 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIN3dap7integerESaIS1_EED2Ev.exit32, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !186
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bo) #25
  br label %_ZNSt6vectorIN3dap7integerESaIS1_EED2Ev.exit32

_ZNSt6vectorIN3dap7integerESaIS1_EED2Ev.exit32:   ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.x

bb.m:                                             ; preds = %_ZNSt6vectorIN3dap7integerESaIS1_EED2Ev.exit, %bb.e
  %i.bp = phi ptr [ %.pre68, %_ZNSt6vectorIN3dap7integerESaIS1_EED2Ev.exit ], [ %i.ad, %bb.e ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !187
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !188
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.bz = load atomic i64, ptr %i.by seq_cst, align 8
  %.not = icmp sgt i64 %i.bx, %i.bz
  br i1 %.not, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cb = load atomic i8, ptr %i.ca seq_cst, align 8, !range !55, !noundef !56
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = load ptr, ptr %i.c, align 8, !tbaa !121 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !187
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !188
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 4
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cn = load atomic i64, ptr %i.cm seq_cst, align 8
  %.not20 = icmp sgt i64 %i.cl, %i.cn
  br i1 %.not20, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit34, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  store atomic i64 -2147483648, ptr %i.by seq_cst, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 128
  store atomic i8 0, ptr %i.co seq_cst, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 136
  store atomic i64 -2147483648, ptr %i.cp seq_cst, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  store atomic i8 0, ptr %i.cq seq_cst, align 8
  %i.cr = load i64, ptr %i.w, align 8, !tbaa !47
  %i.cs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef 0, i64 noundef %i.cr, ptr noundef nonnull @.str.9, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit34.thread unwind label %bb.j ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit34: ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.cu = load atomic i8, ptr %i.ct seq_cst, align 8, !range !55, !noundef !56
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.q, label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit34.thread: ; preds = %bb.p
  %i.cw = load atomic i8, ptr %i.cq seq_cst, align 8, !range !55, !noundef !56
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.q, label %.critedge

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit34.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit34
  %i.cy = phi ptr [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit34.thread ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit34 ]
  store atomic i64 -2147483648, ptr %i.by seq_cst, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 128
  store atomic i8 0, ptr %i.cz seq_cst, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 136
  store atomic i64 -2147483648, ptr %i.da seq_cst, align 8
  store atomic i8 0, ptr %i.cy seq_cst, align 1
  %i.db = load i64, ptr %i.w, align 8, !tbaa !47
  %i.dc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef 0, i64 noundef %i.db, ptr noundef nonnull @.str.10, i64 noundef 5)
          to label %.critedge unwind label %bb.j  ; 0 uses

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit34
  br i1 %.not66, label %bb.s, label %.critedge

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit34.thread, %bb.q, %bb.r
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !84 ; 2 uses
  %i.df = invoke noundef ptr @_ZN3dap6TypeOfINS_12StoppedEventEE4typeEv()
          to label %.noexc37 unwind label %bb.j

.noexc37:                                         ; preds = %.critedge
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !61
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 88
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = invoke noundef zeroext i1 %i.di(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef %i.df, ptr noundef nonnull align 8 dereferenceable(176) %5)
          to label %_ZN3dap7Session4sendINS_12StoppedEventEvEEvRKT_.exit unwind label %bb.j, !inline_history !9 ; 0 uses

_ZN3dap7Session4sendINS_12StoppedEventEvEEvRKT_.exit: ; preds = %.noexc37
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !77
  invoke void @_ZN10cmDebugger9Semaphore4WaitEv(ptr noundef nonnull align 8 dereferenceable(92) %i.dl)
          to label %bb.s unwind label %bb.j

bb.s:                                             ; preds = %_ZN3dap7Session4sendINS_12StoppedEventEvEEvRKT_.exit, %bb.r
  %i.dm = load ptr, ptr %i.x, align 8, !tbaa !48  ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.y
  br i1 %i.dn, label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.s
  %i.do = load i64, ptr %i.y, align 8, !tbaa !62
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #25
  br label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i

_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.dq = load ptr, ptr %i.u, align 8, !tbaa !48  ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.v
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i
  %i.ds = load i64, ptr %i.v, align 8, !tbaa !62
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.du = load ptr, ptr %i.r, align 8, !tbaa !184 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i, label %_ZN3dap8optionalISt6vectorINS_7integerESaIS2_EEED2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !186
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.du to i64
  %i.dz = sub i64 %i.dx, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.dz) #25
  br label %_ZN3dap8optionalISt6vectorINS_7integerESaIS2_EEED2Ev.exit.i

_ZN3dap8optionalISt6vectorINS_7integerESaIS2_EEED2Ev.exit.i: ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
end_hunk_0
