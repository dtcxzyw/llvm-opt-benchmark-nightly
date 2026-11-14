Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/testDebuggerVariablesManager?download=true
inline.NumInlined: 421
inline.NumDeleted: 258
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@"_ZNSt17_Function_handlerIFSt6vectorIN10cmDebugger23cmDebuggerVariableEntryESaIS2_EEvEZL25testVariablesRegistrationvE3$_0E9_M_invokeERKSt9_Any_data":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !119
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !37, !noalias !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.a, ptr noundef nonnull align 1 dereferenceable(11) @.str.5, i64 11, i1 false), !noalias !119
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 11, ptr %i.b, align 8, !tbaa !39, !noalias !119
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 27
  store i8 0, ptr %i.c, align 1, !tbaa !33, !noalias !119
  invoke void @_ZN10cmDebugger23cmDebuggerVariableEntryC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 %3, i64 noundef %.val)
          to label %bb.b unwind label %bb.h, !noalias !119

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !119
  %i.d = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #19
          to label %.noexc14.i.i.i unwind label %.body15.thread.i.i.i, !noalias !119 ; 4 uses

.noexc14.i.i.i:                                   ; preds = %bb.b
  store ptr %i.d, ptr %0, align 8, !tbaa !122, !alias.scope !119
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !123, !alias.scope !119
  invoke void @_ZN10cmDebugger23cmDebuggerVariableEntryC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %_ZSt10_ConstructIN10cmDebugger23cmDebuggerVariableEntryEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i unwind label %bb.c, !noalias !119

_ZSt10_ConstructIN10cmDebugger23cmDebuggerVariableEntryEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc14.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.g, align 8, !tbaa !124, !alias.scope !119
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41, !noalias !119 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.noexc14.i.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = call ptr @__cxa_begin_catch(ptr %i.m) #17, !noalias !119 ; 0 uses
  invoke void @__cxa_rethrow() #21
          to label %bb.f unwind label %bb.d, !noalias !119

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.e, !noalias !119

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #18, !noalias !119
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

.body15.thread.i.i.i:                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.g:                                             ; preds = %bb.d
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 96) #20, !noalias !119
  br label %.body.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZSt10_ConstructIN10cmDebugger23cmDebuggerVariableEntryEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i
  %i.s = load i64, ptr %i.j, align 8, !tbaa !33, !noalias !119
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.t) #20, !noalias !119
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %_ZSt10_ConstructIN10cmDebugger23cmDebuggerVariableEntryEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41, !noalias !119 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !33, !noalias !119
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #20, !noalias !119
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  %i.aa = load ptr, ptr %2, align 8, !tbaa !41, !noalias !119 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN10cmDebugger23cmDebuggerVariableEntryD2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !33, !noalias !119
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #20, !noalias !119
  br label %_ZN10cmDebugger23cmDebuggerVariableEntryD2Ev.exit.i.i.i

_ZN10cmDebugger23cmDebuggerVariableEntryD2Ev.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i
  %i.af = load ptr, ptr %3, align 8, !tbaa !41, !noalias !119 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %"_ZSt10__invoke_rISt6vectorIN10cmDebugger23cmDebuggerVariableEntryESaIS2_EERZL25testVariablesRegistrationvE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN10cmDebugger23cmDebuggerVariableEntryD2Ev.exit.i.i.i
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !119
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #20, !noalias !119
  br label %"_ZSt10__invoke_rISt6vectorIN10cmDebugger23cmDebuggerVariableEntryESaIS2_EERZL25testVariablesRegistrationvE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit"

bb.h:                                             ; preds = %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i.i

.body.i.i.i:                                      ; preds = %bb.g, %.body15.thread.i.i.i
  %eh.lpad-body1631.i.i.i = phi { ptr, i32 } [ %i.r, %.body15.thread.i.i.i ], [ %i.o, %bb.g ]
  call void @_ZN10cmDebugger23cmDebuggerVariableEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #17, !noalias !119
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.body.i.i.i, %bb.h
  %.pn.i.i.i = phi { ptr, i32 } [ %i.aj, %bb.h ], [ %eh.lpad-body1631.i.i.i, %.body.i.i.i ]
  %i.ak = load ptr, ptr %3, align 8, !tbaa !41, !noalias !119 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.a
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i.i: ; preds = %.loopexit.i.i.i
  %i.am = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !119
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #20, !noalias !119
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i.i: ; preds = %.loopexit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !119
  resume { ptr, i32 } %.pn.i.i.i

"_ZSt10__invoke_rISt6vectorIN10cmDebugger23cmDebuggerVariableEntryESaIS2_EERZL25testVariablesRegistrationvE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit": ; preds = %_ZN10cmDebugger23cmDebuggerVariableEntryD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !119
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !118
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFSt6vectorIN10cmDebugger23cmDebuggerVariableEntryESaIS2_EEvEZL25testVariablesRegistrationvE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZL25testVariablesRegistrationvE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZL25testVariablesRegistrationvE3$_0", ptr %0, align 8, !tbaa !126
  br label %"_ZNSt14_Function_base13_Base_managerIZL25testVariablesRegistrationvE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !12
  br label %"_ZNSt14_Function_base13_Base_managerIZL25testVariablesRegistrationvE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !40
  store i64 %.val.i, ptr %0, align 8, !tbaa !40
  br label %"_ZNSt14_Function_base13_Base_managerIZL25testVariablesRegistrationvE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZL25testVariablesRegistrationvE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cmDebugger23cmDebuggerVariableEntryC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef align 8 %1, i64 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !37
  %i.b = load ptr, ptr %1, align 8, !tbaa !41     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !39   ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !41
  %i.i = load i64, ptr %i.c, align 8, !tbaa !33
  store i64 %i.i, ptr %i.a, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !39
  store ptr %i.c, ptr %1, align 8, !tbaa !41
  store i64 0, ptr %i.j, align 8, !tbaa !39
  store i8 0, ptr %i.c, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.n = tail call i64 @llvm.abs.i64(i64 %2, i1 false) ; 21 uses
  %i.o = icmp ult i64 %i.n, 10
  br i1 %i.o, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %3 = icmp ult i64 %i.n, 100
  br i1 %3, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %4

4:                                                ; preds = %.lr.ph.i.i
  %5 = icmp ult i64 %i.n, 1000
  br i1 %5, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %6

6:                                                ; preds = %4
  %7 = icmp ult i64 %i.n, 10000
  br i1 %7, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %8

8:                                                ; preds = %6
  %9 = icmp ult i64 %i.n, 100000
  br i1 %9, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %8
  %10 = icmp ult i64 %i.n, 1000000
  br i1 %10, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %11

11:                                               ; preds = %.lr.ph.i.i.1
  %12 = icmp ult i64 %i.n, 10000000
  br i1 %12, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %13

13:                                               ; preds = %11
  %14 = icmp ult i64 %i.n, 100000000
  br i1 %14, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %15

15:                                               ; preds = %13
  %16 = icmp ult i64 %i.n, 1000000000
  br i1 %16, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %15
  %17 = icmp ult i64 %i.n, 10000000000
  br i1 %17, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %18

18:                                               ; preds = %.lr.ph.i.i.2
  %19 = icmp ult i64 %i.n, 100000000000
  br i1 %19, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %18
  %i.p = icmp ult i64 %i.n, 1000000000000
  br i1 %i.p, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.a
  %20 = icmp ult i64 %i.n, 10000000000000
  br i1 %20, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = icmp ult i64 %i.n, 100000000000000
  br i1 %i.q, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %21 = icmp ult i64 %i.n, 1000000000000000
  br i1 %21, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = icmp ult i64 %i.n, 10000000000000000
  br i1 %i.r, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %22 = icmp ult i64 %i.n, 100000000000000000
  br i1 %22, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %23 = icmp ult i64 %i.n, 1000000000000000000
  %spec.select = select i1 %23, i32 18, i32 19
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.h, %8, %15, %bb.c, %bb.g, %6, %13, %.lr.ph.i.i.a, %bb.f, %4, %11, %18, %bb.e, %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.022.i.i = phi i32 [ 16, %bb.f ], [ 17, %bb.g ], [ %spec.select, %bb.h ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ 2, %.lr.ph.i.i ], [ 6, %.lr.ph.i.i.1 ], [ 10, %.lr.ph.i.i.2 ], [ 14, %bb.d ], [ 3, %4 ], [ 7, %11 ], [ 11, %18 ], [ 15, %bb.e ], [ 4, %6 ], [ 8, %13 ], [ 12, %.lr.ph.i.i.a ], [ 5, %8 ], [ 9, %15 ], [ 13, %bb.c ] ; 2 uses
  %.lobit.i = lshr i64 %2, 63                     ; 2 uses
  %i.s = trunc nuw nsw i64 %.lobit.i to i32
  %i.t = add i32 %.022.i.i, %i.s
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.v, ptr %i.m, align 8, !tbaa !37, !alias.scope !130
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 noundef %i.u, i8 noundef signext 45)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.noexc:                                           ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !41, !alias.scope !130
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.lobit.i ; 4 uses
  %i.y = icmp ugt i64 %i.n, 99
  br i1 %i.y, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.noexc
  %i.z = add i32 %.022.i.i, -1
  br label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %.lr.ph.i13.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.ac, %.lr.ph.i13.i ], [ %i.n, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.am, %.lr.ph.i13.i ], [ %i.z, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.aa = urem i64 %.020.i.i, 100
  %i.ab = shl nuw nsw i64 %i.aa, 1
  %i.ac = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ab ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !33, !noalias !130
  %i.ag = zext i32 %.01819.i.i to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ag
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !33
  %i.ai = load i8, ptr %i.ad, align 2, !tbaa !33, !noalias !130
  %i.aj = add i32 %.01819.i.i, -1
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ak
  store i8 %i.ai, ptr %i.al, align 1, !tbaa !33
  %i.am = add i32 %.01819.i.i, -2
  %i.an = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.an, label %.lr.ph.i13.i, label %._crit_edge.i.i, !llvm.loop !129

._crit_edge.i.i:                                  ; preds = %.lr.ph.i13.i, %.noexc
  %.0.lcssa.i.i = phi i64 [ %i.n, %.noexc ], [ %i.ac, %.lr.ph.i13.i ] ; 3 uses
  %i.ao = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ap = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.aq = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !33, !noalias !130
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store i8 %i.as, ptr %i.at, align 1, !tbaa !33
  %i.au = load i8, ptr %i.aq, align 2, !tbaa !33, !noalias !130
  br label %._crit_edge.i.i5

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.av = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.aw = or disjoint i8 %i.av, 48
  br label %._crit_edge.i.i5

._crit_edge.i.i5:                                 ; preds = %bb.j, %bb.i
  %storemerge.i.i = phi i8 [ %i.aw, %bb.j ], [ %i.au, %bb.i ]
  store i8 %storemerge.i.i, ptr %i.x, align 1, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !37
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ay, ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 3, ptr %i.az, align 8, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 83
  store i8 0, ptr %i.ba, align 1, !tbaa !33
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = load ptr, ptr %0, align 8, !tbaa !41    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.a
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.be = load i64, ptr %i.a, align 8, !tbaa !33
  %i.bf = add i64 %i.be, 1
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  resume { ptr, i32 } %i.bb
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cmDebugger23cmDebuggerVariableEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !33
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !33
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = load ptr, ptr %0, align 8, !tbaa !41     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.p = load i64, ptr %i.n, align 8, !tbaa !33
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #2

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cmDebugger23cmDebuggerVariableEntryC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !37
  %i.e = load ptr, ptr %1, align 8, !tbaa !41     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !39   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i64 %i.g, ptr %i.c, align 8, !tbaa !40
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !41
  %i.j = load i64, ptr %i.c, align 8, !tbaa !40
  store i64 %i.j, ptr %i.d, align 8, !tbaa !33
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !33
  store i8 %i.l, ptr %i.k, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !39
  %i.o = load ptr, ptr %0, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !37
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !41   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !39   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 %i.v, ptr %i.b, align 8, !tbaa !40
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i8, label %._crit_edge.i.i7

.noexc.i8:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i8
  store ptr %i.x, ptr %i.q, align 8, !tbaa !41
  %i.y = load i64, ptr %i.b, align 8, !tbaa !40
  store i64 %i.y, ptr %i.s, align 8, !tbaa !33
  br label %._crit_edge.i.i7

._crit_edge.i.i7:                                 ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.z = phi ptr [ %i.x, %.noexc ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.v, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i7
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !33
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !33
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i7
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !40  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !39
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !37
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !41 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !39 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !40
  %i.al = icmp ugt i64 %i.ak, 15
  br i1 %i.al, label %.noexc.i11, label %._crit_edge.i.i10

.noexc.i11:                                       ; preds = %bb.f
  %i.am = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc12 unwind label %bb.k   ; 2 uses

.noexc12:                                         ; preds = %.noexc.i11
  store ptr %i.am, ptr %i.af, align 8, !tbaa !41
  %i.an = load i64, ptr %i.a, align 8, !tbaa !40
  store i64 %i.an, ptr %i.ah, align 8, !tbaa !33
  br label %._crit_edge.i.i10

._crit_edge.i.i10:                                ; preds = %.noexc12, %bb.f
  %i.ao = phi ptr [ %i.am, %.noexc12 ], [ %i.ah, %bb.f ] ; 2 uses
  switch i64 %i.ak, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i10
  %i.ap = load i8, ptr %i.ai, align 1, !tbaa !33
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !33
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.ai, i64 %i.ak, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i10
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !39
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !41
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void

bb.j:                                             ; preds = %.noexc.i8
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %.noexc.i11
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %i.q, align 8, !tbaa !41  ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.s
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ay = load i64, ptr %i.s, align 8, !tbaa !33
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.au, %bb.j ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.av, %bb.k ]
  %i.ba = load ptr, ptr %0, align 8, !tbaa !41    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.d
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bc = load i64, ptr %i.d, align 8, !tbaa !33
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  resume { ptr, i32 } %.pn
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #17, !inline_history !131
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !34   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !34
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #17, !inline_history !131
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3dap8VariableD2Ev(ptr noundef nonnull align 8 dead_on_return(352) dereferenceable(352) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !33
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !33
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #20
  br label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.r = load i64, ptr %i.p, align 8, !tbaa !33
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #20
  br label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i

_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i: ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !41   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit3.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i: ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !33
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #20
  br label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit3.i.i

_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit3.i.i: ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !135  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !136 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit3.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.ah, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.z, %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit3.i.i ] ; 3 uses
  %i.ac = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !41 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !33
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.ab
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !132

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !135
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit3.i.i
  %i.ai = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.z, %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit3.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN3dap8optionalINS_24VariablePresentationHintEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !137
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #20
  br label %_ZN3dap8optionalINS_24VariablePresentationHintEED2Ev.exit

_ZN3dap8optionalINS_24VariablePresentationHintEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !41 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZN3dap8optionalINS_24VariablePresentationHintEED2Ev.exit
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !33
  %i.at = add i64 %i.as, 1
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZN3dap8optionalINS_24VariablePresentationHintEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !41 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !33
  %i.az = add i64 %i.ay, 1
  tail call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #20
  br label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit6

_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  %i.ba = load ptr, ptr %0, align 8, !tbaa !41    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit6
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !33
  %i.be = add i64 %i.bd, 1
  tail call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #20
  br label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit9

_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit9: ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbvEPS0_E9_M_invokeERKSt9_Any_data(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = tail call noundef zeroext i1 %i.a(), !inline_history !138
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbvEPS0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIPFbvEE10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIPFbvEE10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
    i32 2, label %.sink.split.i
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIPFbvEE10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split

.sink.split.i:                                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  br label %_ZNSt14_Function_base13_Base_managerIPFbvEE10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIPFbvEE10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b, %.sink.split.i
  %.sink = phi ptr [ %i.a, %.sink.split.i ], [ %1, %bb.b ], [ @_ZTIPFbvE, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !12
  br label %_ZNSt14_Function_base13_Base_managerIPFbvEE10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIPFbvEE10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIPFbvEE10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !48}
!1 = distinct !{null, null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"_ZTSSt14_Function_base", !7, i64 0, !11, i64 16}
!14 = !{!13, !11, i64 16}
!15 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 8, !8, i64 12}
!16 = !{!15, !8, i64 8}
!17 = !{!15, !8, i64 12}
!18 = !{!"vtable pointer", !6, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"any p2 pointer", !11, i64 0}
!21 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !20, i64 0}
!22 = !{!"long", !7, i64 0}
!23 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !11, i64 0}
!24 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !23, i64 0}
!25 = !{!"float", !7, i64 0}
!26 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !25, i64 0, !22, i64 8}
!27 = !{!"_ZTSSt10_HashtableIlSt4pairIKlSt8functionIFSt6vectorIN3dap8VariableESaIS5_EERKNS4_16VariablesRequestEEEESaISD_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE", !21, i64 0, !22, i64 8, !24, i64 16, !22, i64 24, !26, i64 32, !23, i64 48}
!28 = !{!27, !21, i64 0}
!29 = !{!27, !22, i64 8}
!30 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!31 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !30, i64 0}
!32 = !{!31, !30, i64 0}
!33 = !{!7, !7, i64 0}
!34 = !{!8, !8, i64 0}
!35 = !{!"p1 omnipotent char", !11, i64 0}
!36 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !35, i64 0}
!37 = !{!36, !35, i64 0}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !36, i64 0, !22, i64 8, !7, i64 16}
!39 = !{!38, !22, i64 8}
!40 = !{!22, !22, i64 0}
!41 = !{!38, !35, i64 0}
!42 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!43 = !{!"p1 _ZTSN3dap8VariableE", !11, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseIN3dap8VariableESaIS1_EE17_Vector_impl_dataE", !43, i64 0, !43, i64 8, !43, i64 16}
!45 = !{!44, !43, i64 8}
!46 = !{!44, !43, i64 0}
!47 = !{!44, !43, i64 16}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"_ZTSSt9type_info", !35, i64 8}
!50 = !{!49, !35, i64 8}
!51 = distinct !{ptr @_ZNSt17_Function_handlerIFbvEPS0_E9_M_invokeERKSt9_Any_data, null}
!52 = !{!"_ZTSSt8functionIFbvEE", !13, i64 0, !11, i64 24}
!53 = !{!52, !11, i64 24}
!54 = distinct !{!54, i1 true, !"_ZSt11make_sharedIN10cmDebugger26cmDebuggerVariablesManagerEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_"}
!55 = distinct !{!55, !54, !"_ZSt11make_sharedIN10cmDebugger26cmDebuggerVariablesManagerEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_: argument 0"}
!56 = distinct !{!56, i1 true, !"_ZSt11make_sharedIN10cmDebugger19cmDebuggerVariablesEJRSt10shared_ptrINS0_26cmDebuggerVariablesManagerEERA6_KcbZL25testVariablesRegistrationvE3$_0EES2_INSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_"}
!57 = distinct !{!57, !56, !"_ZSt11make_sharedIN10cmDebugger19cmDebuggerVariablesEJRSt10shared_ptrINS0_26cmDebuggerVariablesManagerEERA6_KcbZL25testVariablesRegistrationvE3$_0EES2_INSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_: argument 0"}
!58 = distinct !{null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN10cmDebugger26cmDebuggerVariablesManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!59 = distinct !{null, ptr @_ZNSt12__shared_ptrIN10cmDebugger19cmDebuggerVariablesELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!60 = distinct !{ptr @_ZNSt12__shared_ptrIN10cmDebugger19cmDebuggerVariablesELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!61 = distinct !{ptr @_ZNSt12__shared_ptrIN10cmDebugger26cmDebuggerVariablesManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!62 = !{!55}
!63 = !{!26, !25, i64 0}
!64 = !{!"p1 _ZTSN10cmDebugger26cmDebuggerVariablesManagerE", !11, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!57}
!67 = !{!"p1 _ZTSN10cmDebugger19cmDebuggerVariablesE", !11, i64 0}
!68 = !{!"_ZTSSt12__shared_ptrIN10cmDebugger19cmDebuggerVariablesELN9__gnu_cxx12_Lock_policyE2EE", !67, i64 0, !31, i64 8}
!69 = !{!68, !67, i64 0}
!70 = !{!"_ZTSSt12__shared_ptrIN10cmDebugger26cmDebuggerVariablesManagerELN9__gnu_cxx12_Lock_policyE2EE", !64, i64 0, !31, i64 8}
!71 = !{!70, !64, i64 0}
!72 = !{!"_ZTSSt8functionIFSt6vectorIN10cmDebugger23cmDebuggerVariableEntryESaIS2_EEvEE", !13, i64 0, !11, i64 24}
!73 = !{!72, !11, i64 24}
!74 = !{!67, !67, i64 0}
!75 = !{!"_ZTSN3dap7integerE", !22, i64 0}
!76 = !{!75, !22, i64 0}
!77 = !{!"bool", !7, i64 0}
!78 = !{!"_ZTSN3dap8optionalINS_7integerEEE", !75, i64 0, !77, i64 8}
!79 = !{!78, !77, i64 8}
!80 = !{!"_ZTSN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !38, i64 0, !77, i64 32}
!81 = !{!80, !77, i64 32}
!82 = !{!"p1 _ZTSSt10shared_ptrIN10cmDebugger19cmDebuggerVariablesEE", !11, i64 0}
!83 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN10cmDebugger19cmDebuggerVariablesEESaIS3_EE17_Vector_impl_dataE", !82, i64 0, !82, i64 8, !82, i64 16}
!84 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN10cmDebugger19cmDebuggerVariablesEESaIS3_EE12_Vector_implE", !83, i64 0}
!85 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN10cmDebugger19cmDebuggerVariablesEESaIS3_EE", !84, i64 0}
!86 = !{!"_ZTSSt6vectorISt10shared_ptrIN10cmDebugger19cmDebuggerVariablesEESaIS3_EE", !85, i64 0}
!87 = !{!"_ZTSSt10shared_ptrIN10cmDebugger26cmDebuggerVariablesManagerEE", !70, i64 0}
!88 = !{!"_ZTSN10cmDebugger19cmDebuggerVariablesE", !22, i64 8, !38, i64 16, !38, i64 48, !72, i64 80, !86, i64 112, !77, i64 136, !77, i64 137, !77, i64 138, !87, i64 144}
!89 = !{!88, !22, i64 8}
!90 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!91 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!92 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!93 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !22, i64 8}
!94 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!95 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!96 = !{!"_ZTSSt6locale", !95, i64 0}
!97 = !{!"_ZTSSt8ios_base", !22, i64 8, !22, i64 16, !90, i64 24, !91, i64 28, !91, i64 32, !92, i64 40, !93, i64 48, !7, i64 64, !8, i64 192, !94, i64 200, !96, i64 208}
!98 = !{!97, !22, i64 16}
!99 = !{!43, !43, i64 0}
!100 = distinct !{!100, !48}
!101 = !{!27, !23, i64 16}
!102 = !{!24, !23, i64 0}
!103 = distinct !{null}
!104 = distinct !{!104, i1 true, !"_ZZL25testVariablesRegistrationvENK3$_0clEv"}
!105 = distinct !{!105, !104, !"_ZZL25testVariablesRegistrationvENK3$_0clEv: argument 0"}
!106 = distinct !{!106, i1 true, !"_ZSt10__invoke_rISt6vectorIN10cmDebugger23cmDebuggerVariableEntryESaIS2_EERZL25testVariablesRegistrationvE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_"}
!107 = distinct !{!107, !106, !"_ZSt10__invoke_rISt6vectorIN10cmDebugger23cmDebuggerVariableEntryESaIS2_EERZL25testVariablesRegistrationvE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_: argument 0"}
!108 = distinct !{!108, i1 true, !"_ZSt13__invoke_implISt6vectorIN10cmDebugger23cmDebuggerVariableEntryESaIS2_EERZL25testVariablesRegistrationvE3$_0JEET_St14__invoke_otherOT0_DpOT1_"}
!109 = distinct !{!109, !108, !"_ZSt13__invoke_implISt6vectorIN10cmDebugger23cmDebuggerVariableEntryESaIS2_EERZL25testVariablesRegistrationvE3$_0JEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!110 = distinct !{!110, i1 true, !"_ZZL25testVariablesRegistrationvENK3$_0clEv"}
!111 = distinct !{!111, !110, !"_ZZL25testVariablesRegistrationvENK3$_0clEv: argument 0"}
!112 = !{!"_ZTSZL25testVariablesRegistrationvE3$_0", !22, i64 0}
!113 = !{!112, !22, i64 0}
!114 = !{!105}
!115 = !{!107}
!116 = !{!109}
!117 = !{!111}
!118 = !{!109, !107}
!119 = !{!111, !109, !107}
!120 = !{!"p1 _ZTSN10cmDebugger23cmDebuggerVariableEntryE", !11, i64 0}
!121 = !{!"_ZTSNSt12_Vector_baseIN10cmDebugger23cmDebuggerVariableEntryESaIS1_EE17_Vector_impl_dataE", !120, i64 0, !120, i64 8, !120, i64 16}
!122 = !{!121, !120, i64 0}
!123 = !{!121, !120, i64 16}
!124 = !{!121, !120, i64 8}
!125 = !{!"p1 _ZTSSt9type_info", !11, i64 0}
!126 = !{!125, !125, i64 0}
!127 = distinct !{!127, i1 true, !"_ZNSt7__cxx119to_stringEl"}
!128 = distinct !{!128, !127, !"_ZNSt7__cxx119to_stringEl: argument 0"}
!129 = distinct !{!129, !48}
!130 = !{!128}
!131 = distinct !{null}
!132 = distinct !{!132, !48}
!133 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!134 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !133, i64 0, !133, i64 8, !133, i64 16}
!135 = !{!134, !133, i64 0}
!136 = !{!134, !133, i64 8}
!137 = !{!134, !133, i64 16}
!138 = distinct !{null, null}
end_hunk_0
