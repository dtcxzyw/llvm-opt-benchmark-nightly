inline.NumInlined: 103
inline.NumDeleted: 82
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.duckdb::unique_ptr" = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.duckdb::unique_ptr.15" = type { %"class.std::unique_ptr.16" }
%"class.std::unique_ptr.16" = type { %"struct.std::__uniq_ptr_data.17" }
%"struct.std::__uniq_ptr_data.17" = type { %"class.std::__uniq_ptr_impl.18" }
%"class.std::__uniq_ptr_impl.18" = type { %"class.std::tuple.19" }
%"class.std::tuple.19" = type { %"struct.std::_Tuple_impl.20" }
%"struct.std::_Tuple_impl.20" = type { %"struct.std::_Head_base.23" }
%"struct.std::_Head_base.23" = type { ptr }

$_ZN6duckdb24ExplainStatementVerifierD0Ev = comdat any

$_ZNK6duckdb17StatementVerifier15RequireEqualityEv = comdat any

$_ZNK6duckdb17StatementVerifier16DisableOptimizerEv = comdat any

$_ZNK6duckdb17StatementVerifier22DisableOperatorCachingEv = comdat any

$_ZNK6duckdb17StatementVerifier13ForceExternalEv = comdat any

$_ZNK6duckdb17StatementVerifier13ForceFetchRowEv = comdat any

$_ZTVN6duckdb24ExplainStatementVerifierE = comdat any

$_ZTIN6duckdb24ExplainStatementVerifierE = comdat any

$_ZTSN6duckdb24ExplainStatementVerifierE = comdat any

@.str = private unnamed_addr constant [8 x i8] c"Explain\00", align 1
@_ZTVN6duckdb24ExplainStatementVerifierE = linkonce_odr unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN6duckdb24ExplainStatementVerifierE, ptr @_ZN6duckdb17StatementVerifierD2Ev, ptr @_ZN6duckdb24ExplainStatementVerifierD0Ev, ptr @_ZN6duckdb17StatementVerifier3RunERNS_13ClientContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFNS_10unique_ptrINS_11QueryResultESt14default_deleteISD_ELb1EEESA_NSC_INS_12SQLStatementESE_ISH_ELb1EEENS_12optional_ptrISt13unordered_mapIS8_NS_18BoundParameterDataENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIS9_SM_EEELb1EEEEE, ptr @_ZNK6duckdb17StatementVerifier15RequireEqualityEv, ptr @_ZNK6duckdb17StatementVerifier16DisableOptimizerEv, ptr @_ZNK6duckdb17StatementVerifier22DisableOperatorCachingEv, ptr @_ZNK6duckdb17StatementVerifier13ForceExternalEv, ptr @_ZNK6duckdb17StatementVerifier13ForceFetchRowEv] }, comdat, align 8
@_ZTIN6duckdb24ExplainStatementVerifierE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb24ExplainStatementVerifierE, ptr @_ZTIN6duckdb17StatementVerifierE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6duckdb24ExplainStatementVerifierE = linkonce_odr constant [36 x i8] c"N6duckdb24ExplainStatementVerifierE\00", comdat, align 1
@_ZTIN6duckdb17StatementVerifierE = external constant ptr

@_ZN6duckdb24ExplainStatementVerifierC1ENS_10unique_ptrINS_12SQLStatementESt14default_deleteIS2_ELb1EEENS_12optional_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_18BoundParameterDataENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKSD_SE_EEELb1EEE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6duckdb24ExplainStatementVerifierC2ENS_10unique_ptrINS_12SQLStatementESt14default_deleteIS2_ELb1EEENS_12optional_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_18BoundParameterDataENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKSD_SE_EEELb1EEE

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb24ExplainStatementVerifierC2ENS_10unique_ptrINS_12SQLStatementESt14default_deleteIS2_ELb1EEENS_12optional_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_18BoundParameterDataENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKSD_SE_EEELb1EEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef captures(none) %1, ptr %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.a, ptr noundef nonnull align 1 dereferenceable(7) @.str, i64 7, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 7, ptr %i.b, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 23
  store i8 0, ptr %i.c, align 1, !tbaa !14
  %i.d = load i64, ptr %1, align 8, !tbaa !15
  store i64 %i.d, ptr %4, align 8, !tbaa !15
  store ptr null, ptr %1, align 8, !tbaa !15
  invoke void @_ZN6duckdb17StatementVerifierC2ENS_16VerificationTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10unique_ptrINS_12SQLStatementESt14default_deleteIS9_ELb1EEENS_12optional_ptrISt13unordered_mapIS7_NS_18BoundParameterDataENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKS7_SF_EEELb1EEE(ptr noundef nonnull align 8 dereferenceable(112) %0, i8 noundef zeroext 8, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr %2)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.e = load ptr, ptr %4, align 8, !tbaa !15     ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i: ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.e) #8, !inline_history !19
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i
  %i.i = load ptr, ptr %3, align 8, !tbaa !20     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.i) #9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6duckdb24ExplainStatementVerifierE, i64 16), ptr %0, align 8, !tbaa !17
  ret void

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !15     ; 3 uses
  %.not.i5 = icmp eq ptr %i.l, null
  br i1 %.not.i5, label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit7, label %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i6

_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i6: ; preds = %bb.b
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.l) #8, !inline_history !19
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit7

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit7: ; preds = %bb.b, %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i6
  %i.p = load ptr, ptr %3, align 8, !tbaa !20     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.a
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit7
  call void @_ZdlPv(ptr noundef %i.p) #9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  resume { ptr, i32 } %i.k
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN6duckdb17StatementVerifierC2ENS_16VerificationTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10unique_ptrINS_12SQLStatementESt14default_deleteIS9_ELb1EEENS_12optional_ptrISt13unordered_mapIS7_NS_18BoundParameterDataENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKS7_SF_EEELb1EEE(ptr noundef nonnull align 8 dereferenceable(112), i8 noundef zeroext, ptr noundef, ptr noundef, ptr) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb24ExplainStatementVerifier6CreateERKNS_12SQLStatementENS_12optional_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_18BoundParameterDataENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKSB_SC_EEELb1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.15") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr", align 8 ; 6 uses
  %4 = alloca %"class.duckdb::unique_ptr", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.a = load ptr, ptr %1, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(120) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.d = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #10
          to label %.noexc unwind label %bb.d     ; 3 uses

.noexc:                                           ; preds = %bb.a
  %i.e = load i64, ptr %4, align 8, !tbaa !15, !noalias !21
  store i64 %i.e, ptr %3, align 8, !tbaa !15, !noalias !21
  store ptr null, ptr %4, align 8, !tbaa !15, !noalias !21
  invoke void @_ZN6duckdb24ExplainStatementVerifierC1ENS_10unique_ptrINS_12SQLStatementESt14default_deleteIS2_ELb1EEENS_12optional_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_18BoundParameterDataENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKSD_SE_EEELb1EEE(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull %3, ptr %2)
          to label %bb.b unwind label %bb.c, !noalias !21

bb.b:                                             ; preds = %.noexc
  %i.f = load ptr, ptr %3, align 8, !tbaa !15, !noalias !21 ; 3 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6duckdb24ExplainStatementVerifierESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i.i: ; preds = %bb.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17, !noalias !21
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !noalias !21
  call void %i.i(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.f) #8, !noalias !21, !inline_history !24
  br label %_ZNSt10unique_ptrIN6duckdb24ExplainStatementVerifierESt14default_deleteIS1_EED2Ev.exit

bb.c:                                             ; preds = %.noexc
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %3, align 8, !tbaa !15, !noalias !21 ; 3 uses
  %.not.i4.i = icmp eq ptr %i.k, null
  br i1 %.not.i4.i, label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit6.i, label %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i5.i

_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i5.i: ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17, !noalias !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !21
  call void %i.n(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.k) #8, !noalias !21, !inline_history !24
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit6.i

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit6.i: ; preds = %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i5.i, %bb.c
  call void @_ZdlPv(ptr noundef nonnull %i.d) #9, !noalias !21
  br label %.body

_ZNSt10unique_ptrIN6duckdb24ExplainStatementVerifierESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr %i.d, ptr %0, align 8, !tbaa !25
  %i.o = load ptr, ptr %4, align 8, !tbaa !15     ; 3 uses
  %.not.i2 = icmp eq ptr %i.o, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb24ExplainStatementVerifierESt14default_deleteIS1_EED2Ev.exit
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.o) #8, !inline_history !19
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb24ExplainStatementVerifierESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret void

bb.d:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit6.i, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.j, %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit6.i ]
  %i.t = load ptr, ptr %4, align 8, !tbaa !15     ; 3 uses
  %.not.i3 = icmp eq ptr %i.t, null
  br i1 %.not.i3, label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit5, label %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i4

_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i4: ; preds = %.body
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.t) #8, !inline_history !19
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit5

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit5: ; preds = %.body, %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nounwind
declare void @_ZN6duckdb17StatementVerifierD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb24ExplainStatementVerifierD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb17StatementVerifierD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #8
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  ret void
}

declare noundef zeroext i1 @_ZN6duckdb17StatementVerifier3RunERNS_13ClientContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFNS_10unique_ptrINS_11QueryResultESt14default_deleteISD_ELb1EEESA_NSC_INS_12SQLStatementESE_ISH_ELb1EEENS_12optional_ptrISt13unordered_mapIS8_NS_18BoundParameterDataENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIS9_SM_EEELb1EEEEE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(512), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 1) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK6duckdb17StatementVerifier15RequireEqualityEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK6duckdb17StatementVerifier16DisableOptimizerEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK6duckdb17StatementVerifier22DisableOperatorCachingEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK6duckdb17StatementVerifier13ForceExternalEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK6duckdb17StatementVerifier13ForceFetchRowEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { builtin nounwind }
attributes #10 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
end_hunk_0
