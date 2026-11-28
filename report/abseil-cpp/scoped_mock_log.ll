Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/scoped_mock_log?download=true
inline.NumInlined: 1801
inline.NumDeleted: 699
begin_hunk_0_@_ZN7testing8internal25UntypedFunctionMockerBase31UninterestingCallCleanupHandlerD2Ev:bb.a
  ret void

bb.f:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.q, %bb.c ]
  %i.ab = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.ab) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal14FunctionMockerIFvRKN4absl12lts_202605268LogEntryEEE13PerformActionEPKvOSt5tupleIJS6_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::Action.30", align 8 ; 14 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK7testing8internal14FunctionMockerIFvRKN4absl12lts_202605268LogEntryEEE20PerformDefaultActionEOSt5tupleIJS6_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i.i, label %_ZN7testing6ActionIFvRKN4absl12lts_202605268LogEntryEEEC2ERKS7_.exit.thread, label %bb.d

_ZN7testing6ActionIFvRKN4absl12lts_202605268LogEntryEEEC2ERKS7_.exit.thread: ; preds = %bb.c
  %i.f = load i64, ptr %2, align 8, !tbaa !230
  %i.g = inttoptr i64 %i.f to ptr
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.h = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %_ZN7testing6ActionIFvRKN4absl12lts_202605268LogEntryEEEC2ERKS7_.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !91   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %common.resume unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #22
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.f, %_ZN7testing6ActionIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit10
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %_ZN7testing6ActionIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit10 ], [ %i.i, %bb.f ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_ZN7testing6ActionIFvRKN4absl12lts_202605268LogEntryEEEC2ERKS7_.exit: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !241  ; 2 uses
  store ptr %i.o, ptr %i.c, align 8, !tbaa !241
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !91   ; 2 uses
  store ptr %i.p, ptr %i.b, align 8, !tbaa !91
  %i.q = icmp eq ptr %i.p, null
  %i.r = load i64, ptr %2, align 8, !tbaa !230
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  br i1 %i.q, label %bb.h, label %_ZN7testing8internal5ApplyIRKSt8functionIFvRKN4absl12lts_202605268LogEntryEEESt5tupleIJS7_EEEEDTcl9ApplyImplclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv18__make_integer_seqISt16integer_sequencemX12tuple_size_vINSt16remove_referenceISF_E4typeEEEE_EEEOSE_OSF_.exit.i

bb.h:                                             ; preds = %_ZN7testing6ActionIFvRKN4absl12lts_202605268LogEntryEEEC2ERKS7_.exit.thread, %_ZN7testing6ActionIFvRKN4absl12lts_202605268LogEntryEEEC2ERKS7_.exit
  %i.t = phi ptr [ %i.g, %_ZN7testing6ActionIFvRKN4absl12lts_202605268LogEntryEEEC2ERKS7_.exit.thread ], [ %i.s, %_ZN7testing6ActionIFvRKN4absl12lts_202605268LogEntryEEEC2ERKS7_.exit ]
  invoke void @_ZN7testing8internal16IllegalDoDefaultEPKci(ptr noundef nonnull @.str.72, i32 noundef 794)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.h
  %.pr.i = load ptr, ptr %i.b, align 8, !tbaa !91
  %.not.i.i.i.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i.i, label %bb.i, label %.noexc._ZN7testing8internal5ApplyIRKSt8functionIFvRKN4absl12lts_202605268LogEntryEEESt5tupleIJS7_EEEEDTcl9ApplyImplclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv18__make_integer_seqISt16integer_sequencemX12tuple_size_vINSt16remove_referenceISF_E4typeEEEE_EEEOSE_OSF_.exit.i_crit_edge

.noexc._ZN7testing8internal5ApplyIRKSt8functionIFvRKN4absl12lts_202605268LogEntryEEESt5tupleIJS7_EEEEDTcl9ApplyImplclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv18__make_integer_seqISt16integer_sequencemX12tuple_size_vINSt16remove_referenceISF_E4typeEEEE_EEEOSE_OSF_.exit.i_crit_edge: ; preds = %.noexc
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !241
  br label %_ZN7testing8internal5ApplyIRKSt8functionIFvRKN4absl12lts_202605268LogEntryEEESt5tupleIJS7_EEEEDTcl9ApplyImplclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv18__make_integer_seqISt16integer_sequencemX12tuple_size_vINSt16remove_referenceISF_E4typeEEEE_EEEOSE_OSF_.exit.i

bb.i:                                             ; preds = %.noexc
  invoke void @_ZSt25__throw_bad_function_callv() #23
          to label %.noexc7 unwind label %bb.l

.noexc7:                                          ; preds = %bb.i
  unreachable

_ZN7testing8internal5ApplyIRKSt8functionIFvRKN4absl12lts_202605268LogEntryEEESt5tupleIJS7_EEEEDTcl9ApplyImplclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv18__make_integer_seqISt16integer_sequencemX12tuple_size_vINSt16remove_referenceISF_E4typeEEEE_EEEOSE_OSF_.exit.i: ; preds = %.noexc._ZN7testing8internal5ApplyIRKSt8functionIFvRKN4absl12lts_202605268LogEntryEEESt5tupleIJS7_EEEEDTcl9ApplyImplclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv18__make_integer_seqISt16integer_sequencemX12tuple_size_vINSt16remove_referenceISF_E4typeEEEE_EEEOSE_OSF_.exit.i_crit_edge, %_ZN7testing6ActionIFvRKN4absl12lts_202605268LogEntryEEEC2ERKS7_.exit
  %i.u = phi ptr [ %i.t, %.noexc._ZN7testing8internal5ApplyIRKSt8functionIFvRKN4absl12lts_202605268LogEntryEEESt5tupleIJS7_EEEEDTcl9ApplyImplclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv18__make_integer_seqISt16integer_sequencemX12tuple_size_vINSt16remove_referenceISF_E4typeEEEE_EEEOSE_OSF_.exit.i_crit_edge ], [ %i.s, %_ZN7testing6ActionIFvRKN4absl12lts_202605268LogEntryEEEC2ERKS7_.exit ]
  %i.v = phi ptr [ %.pre, %.noexc._ZN7testing8internal5ApplyIRKSt8functionIFvRKN4absl12lts_202605268LogEntryEEESt5tupleIJS7_EEEEDTcl9ApplyImplclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv18__make_integer_seqISt16integer_sequencemX12tuple_size_vINSt16remove_referenceISF_E4typeEEEE_EEEOSE_OSF_.exit.i_crit_edge ], [ %i.o, %_ZN7testing6ActionIFvRKN4absl12lts_202605268LogEntryEEEC2ERKS7_.exit ]
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(136) %i.u)
          to label %_ZNK7testing6ActionIFvRKN4absl12lts_202605268LogEntryEEE7PerformESt5tupleIJS5_EE.exit unwind label %bb.l, !inline_history !16

_ZNK7testing6ActionIFvRKN4absl12lts_202605268LogEntryEEE7PerformESt5tupleIJS5_EE.exit: ; preds = %_ZN7testing8internal5ApplyIRKSt8functionIFvRKN4absl12lts_202605268LogEntryEEESt5tupleIJS7_EEEEDTcl9ApplyImplclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv18__make_integer_seqISt16integer_sequencemX12tuple_size_vINSt16remove_referenceISF_E4typeEEEE_EEEOSE_OSF_.exit.i
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !91   ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZN7testing6ActionIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK7testing6ActionIFvRKN4absl12lts_202605268LogEntryEEE7PerformESt5tupleIJS5_EE.exit
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZN7testing6ActionIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #22
  unreachable

_ZN7testing6ActionIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit: ; preds = %_ZNK7testing6ActionIFvRKN4absl12lts_202605268LogEntryEEE7PerformESt5tupleIJS5_EE.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.o

bb.l:                                             ; preds = %_ZN7testing8internal5ApplyIRKSt8functionIFvRKN4absl12lts_202605268LogEntryEEESt5tupleIJS7_EEEEDTcl9ApplyImplclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv18__make_integer_seqISt16integer_sequencemX12tuple_size_vINSt16remove_referenceISF_E4typeEEEE_EEEOSE_OSF_.exit.i, %bb.i, %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !91  ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i9, label %_ZN7testing6ActionIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit10, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZN7testing6ActionIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit10 unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #22
  unreachable

_ZN7testing6ActionIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit10: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume

bb.o:                                             ; preds = %_ZN7testing6ActionIFvRKN4absl12lts_202605268LogEntryEEED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal25UntypedFunctionMockerBase21FailureCleanupHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(34) dereferenceable(34) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !581, !nonnull !136, !align !184
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.24, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ab ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !582, !nonnull !136, !align !184 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !584)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.f, ptr %1, align 8, !tbaa !96, !alias.scope !585
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 0, ptr %i.g, align 8, !tbaa !99, !alias.scope !585
  store i8 0, ptr %i.f, align 8, !tbaa !63, !alias.scope !585
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !196, !noalias !585 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !noalias !585 ; 2 uses
  %i.l = icmp ugt ptr %i.i, %i.k
  %.08.i.i.i = select i1 %i.l, ptr %i.i, ptr %i.k ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !197, !noalias !585 ; 2 uses
  %i.o = ptrtoint ptr %.08.i.i.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef 0, ptr noundef %i.n, i64 noundef %i.q)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.s = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !100, !alias.scope !585 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.f
  br i1 %i.u, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.w = load ptr, ptr %1, align 8, !tbaa !100
  %i.x = load i64, ptr %i.g, align 8, !tbaa !99
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.w, i64 noundef %i.x)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ab ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.z = load ptr, ptr %1, align 8, !tbaa !100    ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.f
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ab = load i64, ptr %i.f, align 8, !tbaa !63
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !238, !range !135, !noundef !136
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.ag = load ptr, ptr %0, align 8, !tbaa !581, !nonnull !136, !align !184 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !586)
  call void @llvm.experimental.noalias.scope.decl(metadata !587)
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.ah, ptr %2, align 8, !tbaa !96, !alias.scope !588
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ai, align 8, !tbaa !99, !alias.scope !588
  store i8 0, ptr %i.ah, align 8, !tbaa !63, !alias.scope !588
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !196, !noalias !588 ; 3 uses
  %.not.i.not.i.i1 = icmp eq ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !noalias !588 ; 2 uses
  %i.an = icmp ugt ptr %i.ak, %i.am
  %.08.i.i.i2 = select i1 %i.an, ptr %i.ak, ptr %i.am ; 2 uses
  %.not5.i.i3 = icmp eq ptr %.08.i.i.i2, null
  %.not.i.i4 = select i1 %.not.i.not.i.i1, i1 true, i1 %.not5.i.i3
  br i1 %.not.i.i4, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !197, !noalias !588 ; 2 uses
  %i.aq = ptrtoint ptr %.08.i.i.i2 to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.ap, i64 noundef %i.as)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit10 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.au = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.av = load ptr, ptr %2, align 8, !tbaa !100, !alias.scope !588 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.ah
  br i1 %i.aw, label %.body, label %.body.sink.split

bb.h:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ax)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit10 unwind label %bb.g

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit10: ; preds = %bb.h, %bb.f
  %i.ay = invoke noundef ptr @_ZN7testing8internal18GetFailureReporterEv()
          to label %.noexc unwind label %bb.ab    ; 2 uses

.noexc:                                           ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit10
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !31
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i32 noundef 0, ptr noundef null, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN7testing8internal6ExpectEbPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.ab, !inline_history !566

_ZN7testing8internal6ExpectEbPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc
  %i.bc = load ptr, ptr %2, align 8, !tbaa !100   ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ah
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZN7testing8internal6ExpectEbPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.be = load i64, ptr %i.ah, align 8, !tbaa !63
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZN7testing8internal6ExpectEbPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.aa

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !239, !range !135, !noundef !136
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !237 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !133
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.bp = load ptr, ptr %0, align 8, !tbaa !581, !nonnull !136, !align !184 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !589)
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.bq, ptr %3, align 8, !tbaa !96, !alias.scope !591
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.br, align 8, !tbaa !99, !alias.scope !591
  store i8 0, ptr %i.bq, align 8, !tbaa !63, !alias.scope !591
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !196, !noalias !591 ; 3 uses
  %.not.i.not.i.i15 = icmp eq ptr %i.bt, null
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !591 ; 2 uses
  %i.bw = icmp ugt ptr %i.bt, %i.bv
  %.08.i.i.i16 = select i1 %i.bw, ptr %i.bt, ptr %i.bv ; 2 uses
  %.not5.i.i17 = icmp eq ptr %.08.i.i.i16, null
  %.not.i.i18 = select i1 %.not.i.not.i.i15, i1 true, i1 %.not5.i.i17
  br i1 %.not.i.i18, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !197, !noalias !591 ; 2 uses
  %i.bz = ptrtoint ptr %.08.i.i.i16 to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.by, i64 noundef %i.cb)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit24 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.cd = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ce = load ptr, ptr %3, align 8, !tbaa !100, !alias.scope !591 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.bq
  br i1 %i.cf, label %.body, label %.body.sink.split

bb.m:                                             ; preds = %bb.j
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bp, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.cg)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit24 unwind label %bb.l

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit24: ; preds = %bb.m, %bb.k
  %i.ch = invoke noundef ptr @_ZN7testing8internal18GetFailureReporterEv()
          to label %.noexc25 unwind label %bb.ab  ; 2 uses

.noexc25:                                         ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !31
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  invoke void %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, i32 noundef 0, ptr noundef %i.bm, i32 noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN7testing8internal6ExpectEbPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit27 unwind label %bb.ab, !inline_history !566

_ZN7testing8internal6ExpectEbPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit27: ; preds = %.noexc25
  %i.cl = load ptr, ptr %3, align 8, !tbaa !100   ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bq
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZN7testing8internal6ExpectEbPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit27
  %i.cn = load i64, ptr %i.bq, align 8, !tbaa !63
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZN7testing8internal6ExpectEbPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.aa

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !592, !nonnull !136, !align !184 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !593)
  call void @llvm.experimental.noalias.scope.decl(metadata !594)
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.cr, ptr %5, align 8, !tbaa !96, !alias.scope !595
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.cs, align 8, !tbaa !99, !alias.scope !595
  store i8 0, ptr %i.cr, align 8, !tbaa !63, !alias.scope !595
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 64
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !196, !noalias !595 ; 3 uses
  %.not.i.not.i.i31 = icmp eq ptr %i.cu, null
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !595 ; 2 uses
  %i.cx = icmp ugt ptr %i.cu, %i.cw
  %.08.i.i.i32 = select i1 %i.cx, ptr %i.cu, ptr %i.cw ; 2 uses
  %.not5.i.i33 = icmp eq ptr %.08.i.i.i32, null
  %.not.i.i34 = select i1 %.not.i.not.i.i31, i1 true, i1 %.not5.i.i33
  br i1 %.not.i.i34, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !197, !noalias !595 ; 2 uses
  %i.da = ptrtoint ptr %.08.i.i.i32 to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.cz, i64 noundef %i.dc)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit40 unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.de = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.df = load ptr, ptr %5, align 8, !tbaa !100, !alias.scope !595 ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.cr
  br i1 %i.dg, label %.body, label %.body.sink.split

bb.q:                                             ; preds = %bb.n
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cq, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.dh)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit40 unwind label %bb.p

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit40: ; preds = %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.di = load ptr, ptr %0, align 8, !tbaa !581, !nonnull !136, !align !184 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !596)
  call void @llvm.experimental.noalias.scope.decl(metadata !597)
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.dj, ptr %6, align 8, !tbaa !96, !alias.scope !598
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.dk, align 8, !tbaa !99, !alias.scope !598
  store i8 0, ptr %i.dj, align 8, !tbaa !63, !alias.scope !598
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !196, !noalias !598 ; 3 uses
  %.not.i.not.i.i41 = icmp eq ptr %i.dm, null
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !598 ; 2 uses
  %i.dp = icmp ugt ptr %i.dm, %i.do
  %.08.i.i.i42 = select i1 %i.dp, ptr %i.dm, ptr %i.do ; 2 uses
  %.not5.i.i43 = icmp eq ptr %.08.i.i.i42, null
  %.not.i.i44 = select i1 %.not.i.not.i.i41, i1 true, i1 %.not5.i.i43
  br i1 %.not.i.i44, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit40
  %i.dq = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !197, !noalias !598 ; 2 uses
  %i.ds = ptrtoint ptr %.08.i.i.i42 to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.dr, i64 noundef %i.du)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit50 unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.dw = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.dx = load ptr, ptr %6, align 8, !tbaa !100, !alias.scope !598 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.dj
  br i1 %i.dy, label %.body, label %.body.sink.split

bb.t:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit40
  %i.dz = getelementptr inbounds nuw i8, ptr %i.di, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.dz)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit50 unwind label %bb.s

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit50: ; preds = %bb.t, %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !599)
  %i.ea = load i64, ptr %i.cs, align 8, !tbaa !99, !noalias !599 ; 4 uses
  %i.eb = load i64, ptr %i.dk, align 8, !tbaa !99, !noalias !599 ; 4 uses
  %i.ec = add i64 %i.eb, %i.ea                    ; 2 uses
  %i.ed = load ptr, ptr %5, align 8, !tbaa !100, !noalias !599 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.cr
  br i1 %i.ee, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i52: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit50
  %i.ef = icmp ult i64 %i.ea, 16
  call void @llvm.assume(i1 %i.ef)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit50
  %i.eg = load i64, ptr %i.cr, align 8, !tbaa !63, !noalias !599
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i52
  %i.eh = phi i64 [ %i.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i52 ]
  %i.ei = icmp ugt i64 %i.ec, %i.eh
  br i1 %i.ei, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.ej = load ptr, ptr %6, align 8, !tbaa !100, !noalias !599
  %i.ek = icmp eq ptr %i.ej, %i.dj
  br i1 %i.ek, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i: ; preds = %bb.u
  %i.el = icmp ult i64 %i.eb, 16
  call void @llvm.assume(i1 %i.el)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i: ; preds = %bb.u
  %i.em = load i64, ptr %i.dj, align 8, !tbaa !63, !noalias !599
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i
  %i.en = phi i64 [ %i.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i ]
  %.not.i = icmp ugt i64 %i.ec, %i.en
  br i1 %.not.i, label %bb.w, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i
  %i.eo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.ed, i64 noundef %i.ea)
          to label %.noexc53 unwind label %bb.ab, !noalias !599 ; 5 uses

.noexc53:                                         ; preds = %.critedge.i
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.ep, ptr %4, align 8, !tbaa !96, !alias.scope !599
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !100 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 5 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i

bb.v:                                             ; preds = %.noexc53
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !99 ; 2 uses
  %i.ev = icmp ult i64 %i.eu, 16
  call void @llvm.assume(i1 %i.ev)
  %i.ew = add nuw nsw i64 %i.eu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ep, ptr noundef nonnull align 8 dereferenceable(1) %i.er, i64 %i.ew, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i: ; preds = %.noexc53
  store ptr %i.eq, ptr %4, align 8, !tbaa !100, !alias.scope !599
  %i.ex = load i64, ptr %i.er, align 8, !tbaa !63
  store i64 %i.ex, ptr %i.ep, align 8, !tbaa !63, !alias.scope !599
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i, %bb.v
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !99
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ez, ptr %i.fa, align 8, !tbaa !99, !alias.scope !599
  store ptr %i.er, ptr %i.eo, align 8, !tbaa !100
  store i64 0, ptr %i.ey, align 8, !tbaa !99
  store i8 0, ptr %i.er, align 8, !tbaa !63
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.fb = sub i64 4611686018427387903, %i.ea
  %i.fc = icmp ult i64 %i.fb, %i.eb
  br i1 %i.fc, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #23
          to label %.noexc54 unwind label %bb.ab, !noalias !599

.noexc54:                                         ; preds = %bb.x
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.w
  %i.fd = load ptr, ptr %6, align 8, !tbaa !100, !noalias !599
  %i.fe = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.fd, i64 noundef %i.eb)
          to label %.noexc55 unwind label %bb.ab, !noalias !599 ; 5 uses

.noexc55:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.ff, ptr %4, align 8, !tbaa !96, !alias.scope !599
  %i.fg = load ptr, ptr %i.fe, align 8, !tbaa !100 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 5 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i

bb.y:                                             ; preds = %.noexc55
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !99 ; 2 uses
  %i.fl = icmp ult i64 %i.fk, 16
  call void @llvm.assume(i1 %i.fl)
  %i.fm = add nuw nsw i64 %i.fk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ff, ptr noundef nonnull align 8 dereferenceable(1) %i.fh, i64 %i.fm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i: ; preds = %.noexc55
  store ptr %i.fg, ptr %4, align 8, !tbaa !100, !alias.scope !599
  %i.fn = load i64, ptr %i.fh, align 8, !tbaa !63
  store i64 %i.fn, ptr %i.ff, align 8, !tbaa !63, !alias.scope !599
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i, %bb.y
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !99
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !99, !alias.scope !599
  store ptr %i.fh, ptr %i.fe, align 8, !tbaa !100
  store i64 0, ptr %i.fo, align 8, !tbaa !99
  store i8 0, ptr %i.fh, align 8, !tbaa !63
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  invoke void @_ZN7testing8internal3LogENS0_11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 2)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.fr = load ptr, ptr %4, align 8, !tbaa !100   ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.z
  %i.fu = load i64, ptr %i.fs, align 8, !tbaa !63
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  %i.fw = load ptr, ptr %6, align 8, !tbaa !100   ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.dj
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.fy = load i64, ptr %i.dj, align 8, !tbaa !63
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.ga = load ptr, ptr %5, align 8, !tbaa !100   ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.cr
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.gc = load i64, ptr %i.cr, align 8, !tbaa !63
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  ret void

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.x, %.critedge.i, %.noexc25, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit24, %.noexc, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit10, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %bb.a, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.ge = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body.sink.split:                                 ; preds = %bb.s, %bb.p, %bb.l, %bb.g, %bb.c
  %.sink96 = phi ptr [ %i.f, %bb.c ], [ %i.bq, %bb.l ], [ %i.cr, %bb.p ], [ %i.ah, %bb.g ], [ %i.dj, %bb.s ]
  %.sink = phi ptr [ %i.t, %bb.c ], [ %i.ce, %bb.l ], [ %i.df, %bb.p ], [ %i.av, %bb.g ], [ %i.dx, %bb.s ]
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.s, %bb.c ], [ %i.cd, %bb.l ], [ %i.de, %bb.p ], [ %i.au, %bb.g ], [ %i.dw, %bb.s ]
  %7 = load i64, ptr %.sink96, align 8, !tbaa !63
  %8 = add i64 %7, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %8) #24
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.s, %bb.p, %bb.l, %bb.g, %bb.c, %bb.ab
  %eh.lpad-body = phi { ptr, i32 } [ %i.de, %bb.p ], [ %i.cd, %bb.l ], [ %i.s, %bb.c ], [ %i.dw, %bb.s ], [ %i.au, %bb.g ], [ %i.ge, %bb.ab ], [ %eh.lpad-body.ph, %.body.sink.split ]
  %i.gf = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.gf) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNK7testing8internal10OnCallSpecIFvRKN4absl12lts_202605268LogEntryEEE9GetActionEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !242
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 58, ptr %i.a, align 8, !tbaa !131
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !100
  %i.f = load i64, ptr %i.a, align 8, !tbaa !131  ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.e, ptr noundef nonnull align 1 dereferenceable(58) @.str.71, i64 58, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !99
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 0, ptr %i.h, align 1, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.i = icmp eq i32 %i.c, 2
  br i1 %i.i, label %_ZNK7testing8internal21UntypedOnCallSpecBase18AssertSpecPropertyEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.a

bb.a:                                             ; preds = %.noexc.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !176
  %i.l = load ptr, ptr %0, align 8, !tbaa !175
  %i.m = invoke noundef ptr @_ZN7testing8internal18GetFailureReporterEv()
          to label %.noexc4 unwind label %bb.b    ; 2 uses

.noexc4:                                          ; preds = %bb.a
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i32 noundef 1, ptr noundef %i.l, i32 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNK7testing8internal21UntypedOnCallSpecBase18AssertSpecPropertyEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.b, !inline_history !17

_ZNK7testing8internal21UntypedOnCallSpecBase18AssertSpecPropertyEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc.i, %.noexc4
  %i.q = load ptr, ptr %1, align 8, !tbaa !100    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.d
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK7testing8internal21UntypedOnCallSpecBase18AssertSpecPropertyEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.s = load i64, ptr %i.d, align 8, !tbaa !63
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK7testing8internal21UntypedOnCallSpecBase18AssertSpecPropertyEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  ret ptr %i.u

bb.b:                                             ; preds = %.noexc4, %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %1, align 8, !tbaa !100    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.d
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.b
  %i.y = load i64, ptr %i.d, align 8, !tbaa !63
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %i.v
}

declare void @_ZN7testing8internal16IllegalDoDefaultEPKci(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #13

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

declare void @_ZN7testing8internal23ReportUninterestingCallENS0_12CallReactionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal14FunctionMockerIFvvEE10InvokeWithEOSt5tupleIJEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %5 = alloca %"struct.testing::internal::UntypedFunctionMockerBase::UninterestingCallCleanupHandler", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i8, align 1                       ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %8 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 17 uses
  %9 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 18 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"struct.testing::internal::UntypedFunctionMockerBase::FailureCleanupHandler", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !192
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !193
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZNK7testing8internal25UntypedFunctionMockerBase10MockObjectEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %i.j = tail call noundef i32 @_ZN7testing4Mock31GetReactionOnUninterestingCallsEPKv(ptr noundef %i.i) ; 2 uses
  switch i32 %i.j, label %.critedge [
    i32 0, label %.split
    i32 1, label %bb.c
  ]

.split:                                           ; preds = %bb.b
  %i.k = tail call noundef zeroext i1 @_ZN7testing8internal12LogIsVisibleENS0_11LogSeverityE(i32 noundef 0)
  br i1 %i.k, label %.critedge, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef zeroext i1 @_ZN7testing8internal12LogIsVisibleENS0_11LogSeverityE(i32 noundef 1)
  br i1 %i.l, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.split, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.m = tail call noundef ptr @_ZNK7testing8internal25UntypedFunctionMockerBase4NameEv(ptr noundef nonnull align 8 dereferenceable(72) %0) ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.n, ptr %3, align 8, !tbaa !96
  %i.o = icmp eq ptr %i.m, null
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.67) #23
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.p, ptr %i.a, align 8, !tbaa !131
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.f
  %i.r = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc57 unwind label %bb.m   ; 2 uses

.noexc57:                                         ; preds = %.noexc.i
  store ptr %i.r, ptr %3, align 8, !tbaa !100
  %i.s = load i64, ptr %i.a, align 8, !tbaa !131
  store i64 %i.s, ptr %i.n, align 8, !tbaa !63
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc57, %bb.f
  %i.t = phi ptr [ %i.r, %.noexc57 ], [ %i.n, %bb.f ] ; 2 uses
  switch i64 %i.p, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.u = load i8, ptr %i.m, align 1, !tbaa !63
  store i8 %i.u, ptr %i.t, align 1, !tbaa !63
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %i.m, i64 %i.p, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  %i.v = load i64, ptr %i.a, align 8, !tbaa !131  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !99
  %i.x = load ptr, ptr %3, align 8, !tbaa !100
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !610)
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.68, i64 noundef 15)
          to label %.noexc58 unwind label %bb.n, !noalias !610 ; 6 uses

.noexc58:                                         ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.aa, ptr %2, align 8, !tbaa !96, !alias.scope !610
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !100 ; 2 uses
end_hunk_0
