Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ClangREPL?download=true
inline.NumInlined: 248
inline.NumDeleted: 167
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.lldb_private::LanguageSet" = type { %"class.llvm::SmallBitVector" }
%"class.llvm::SmallBitVector" = type { i64 }
%"class.std::shared_ptr.169" = type { %"class.std::__shared_ptr.170" }
%"class.std::__shared_ptr.170" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.lldb_private::Status" = type { %"class.llvm::Error", %"class.std::__cxx11::basic_string" }
%"class.llvm::Error" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::shared_ptr.182" = type { %"class.std::__shared_ptr.183" }
%"class.std::__shared_ptr.183" = type { ptr, %"class.std::__shared_count" }
%"class.lldb_private::ConstString" = type { ptr }
%"class.lldb_private::LockedStreamFile" = type { %"class.lldb_private::StreamFile", %"class.std::unique_lock" }
%"class.lldb_private::StreamFile" = type { %"class.lldb_private::Stream", %"class.std::shared_ptr.182" }
%"class.lldb_private::Stream" = type { ptr, %"class.lldb_private::Flags", i32, i32, i64, %"class.lldb_private::Stream::RawOstreamForward" }
%"class.lldb_private::Flags" = type { i32 }
%"class.lldb_private::Stream::RawOstreamForward" = type { %"class.llvm::raw_ostream", ptr }
%"class.llvm::raw_ostream" = type { ptr, i32, ptr, ptr, ptr, i8, i32 }
%"class.std::unique_lock" = type <{ ptr, i8, [7 x i8] }>
%"class.std::optional.250" = type { %"struct.std::_Optional_base.251" }
%"struct.std::_Optional_base.251" = type { %"struct.std::_Optional_payload.253" }
%"struct.std::_Optional_payload.253" = type { %"struct.std::_Optional_payload.base.257", [7 x i8] }
%"struct.std::_Optional_payload.base.257" = type { %"struct.std::_Optional_payload_base.base.256" }
%"struct.std::_Optional_payload_base.base.256" = type <{ %"union.std::_Optional_payload_base<std::__cxx11::basic_string<char>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<std::__cxx11::basic_string<char>>::_Storage" = type { %"class.std::__cxx11::basic_string" }

$_ZN12lldb_private6Status15FromErrorStringEPKc = comdat any

$_ZN12lldb_private16LockedStreamFileD2Ev = comdat any

$_ZN12lldb_private17IOHandlerDelegate20IOHandlerDeactivatedERNS_9IOHandlerE = comdat any

$_ZN12lldb_private4REPL21OnExpressionEvaluatedERKNS_16ExecutionContextEN4llvm9StringRefERKNS_25EvaluateExpressionOptionsEN4lldb17ExpressionResultsERKSt10shared_ptrINS_11ValueObjectEERKNS_6StatusE = comdat any

$_ZNK4llvm11RTTIExtendsIN12lldb_private9ClangREPLENS1_4REPLEJEE14dynamicClassIDEv = comdat any

$_ZNK4llvm11RTTIExtendsIN12lldb_private9ClangREPLENS1_4REPLEJEE3isAEPKv = comdat any

$_ZThn16_NK4llvm11RTTIExtendsIN12lldb_private9ClangREPLENS1_4REPLEJEE14dynamicClassIDEv = comdat any

$_ZThn16_NK4llvm11RTTIExtendsIN12lldb_private9ClangREPLENS1_4REPLEJEE3isAEPKv = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN12lldb_private16LockedStreamFileC2ESt10shared_ptrINS_4FileEERSt15recursive_mutex = comdat any

$_ZN12lldb_private16LockedStreamFileD0Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private9ClangREPLESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private9ClangREPLESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private9ClangREPLESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private9ClangREPLESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZTVN12lldb_private16LockedStreamFileE = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN12lldb_private9ClangREPLESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZN12lldb_private9ClangREPL2IDE = global i8 0, align 1
@_ZTVN12lldb_private9ClangREPLE = unnamed_addr constant { [28 x ptr], [7 x ptr] } { [28 x ptr] [ptr null, ptr null, ptr @_ZN12lldb_private9ClangREPLD1Ev, ptr @_ZN12lldb_private9ClangREPLD0Ev, ptr @_ZN12lldb_private4REPL18IOHandlerActivatedERNS_9IOHandlerEb, ptr @_ZN12lldb_private17IOHandlerDelegate20IOHandlerDeactivatedERNS_9IOHandlerE, ptr @_ZN12lldb_private17IOHandlerDelegate19IOHandlerSuggestionB5cxx11ERNS_9IOHandlerEN4llvm9StringRefE, ptr @_ZN12lldb_private4REPL17IOHandlerCompleteERNS_9IOHandlerERNS_17CompletionRequestE, ptr @_ZN12lldb_private4REPL36IOHandlerGetFixIndentationCharactersEv, ptr @_ZN12lldb_private4REPL23IOHandlerFixIndentationERNS_9IOHandlerERKNS_10StringListEi, ptr @_ZN12lldb_private4REPL22IOHandlerInputCompleteERNS_9IOHandlerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN12lldb_private4REPL25IOHandlerInputInterruptedERNS_9IOHandlerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN12lldb_private4REPL24IOHandlerIsInputCompleteERNS_9IOHandlerERNS_10StringListE, ptr @_ZN12lldb_private4REPL27IOHandlerGetControlSequenceEc, ptr @_ZN12lldb_private4REPL25IOHandlerGetCommandPrefixEv, ptr @_ZN12lldb_private4REPL24IOHandlerGetHelpPrologueEv, ptr @_ZN12lldb_private4REPL18IOHandlerInterruptERNS_9IOHandlerE, ptr @_ZN12lldb_private4REPL21OnExpressionEvaluatedERKNS_16ExecutionContextEN4llvm9StringRefERKNS_25EvaluateExpressionOptionsEN4lldb17ExpressionResultsERKSt10shared_ptrINS_11ValueObjectEERKNS_6StatusE, ptr @_ZN12lldb_private9ClangREPL16DoInitializationEv, ptr @_ZN12lldb_private9ClangREPL21GetSourceFileBasenameEv, ptr @_ZN12lldb_private9ClangREPL23GetAutoIndentCharactersEv, ptr @_ZN12lldb_private9ClangREPL16SourceIsCompleteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN12lldb_private9ClangREPL21GetDesiredIndentationERKNS_10StringListEii, ptr @_ZN12lldb_private9ClangREPL11GetLanguageEv, ptr @_ZN12lldb_private9ClangREPL16PrintOneVariableERNS_8DebuggerERSt10shared_ptrINS_18LockableStreamFileEERS3_INS_11ValueObjectEEPNS_18ExpressionVariableE, ptr @_ZN12lldb_private9ClangREPL12CompleteCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_17CompletionRequestE, ptr @_ZNK4llvm11RTTIExtendsIN12lldb_private9ClangREPLENS1_4REPLEJEE14dynamicClassIDEv, ptr @_ZNK4llvm11RTTIExtendsIN12lldb_private9ClangREPLENS1_4REPLEJEE3isAEPKv], [7 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr null, ptr @_ZThn16_N12lldb_private9ClangREPLD1Ev, ptr @_ZThn16_N12lldb_private9ClangREPLD0Ev, ptr @_ZThn16_NK4llvm11RTTIExtendsIN12lldb_private9ClangREPLENS1_4REPLEJEE14dynamicClassIDEv, ptr @_ZThn16_NK4llvm11RTTIExtendsIN12lldb_private9ClangREPLENS1_4REPLEJEE3isAEPKv, ptr @_ZN4llvm8RTTIRoot6anchorEv] }, align 8
@.str = private unnamed_addr constant [9 x i8] c"\\$[0-9]+\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"C language REPL\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"must have a target to create a REPL\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"repl.c\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"error: \00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"ClangREPL\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"null error\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVN12lldb_private16LockedStreamFileE = linkonce_odr unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZN12lldb_private16LockedStreamFileD2Ev, ptr @_ZN12lldb_private16LockedStreamFileD0Ev, ptr @_ZN12lldb_private10StreamFile5FlushEv, ptr @_ZN12lldb_private10StreamFile9WriteImplEPKvm] }, comdat, align 8
@_ZTVN12lldb_private10StreamFileE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN12lldb_private9ClangREPLESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private9ClangREPLESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private9ClangREPLESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private9ClangREPLESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private9ClangREPLESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@_ZN12lldb_private4REPL2IDE = external global i8, align 1
@_ZN4llvm8RTTIRoot2IDE = external global i8, align 1

@_ZN12lldb_private9ClangREPLC1EN4lldb12LanguageTypeERNS_6TargetE = unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN12lldb_private9ClangREPLC2EN4lldb12LanguageTypeERNS_6TargetE
@_ZN12lldb_private9ClangREPLD1Ev = unnamed_addr alias void (ptr), ptr @_ZN12lldb_private9ClangREPLD2Ev

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @lldb_initialize_ClangREPL() local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN12lldb_private9ClangREPL10InitializeEv()
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private9ClangREPL10InitializeEv() local_unnamed_addr #0 align 2 {
bb.a:
  %0 = alloca %"struct.lldb_private::LanguageSet", align 8 ; 16 uses
  %1 = alloca %"struct.lldb_private::LanguageSet", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #14
  call void @_ZN12lldb_private11LanguageSetC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  call void @_ZN12lldb_private11LanguageSet6InsertEN4lldb12LanguageTypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 2) #14
  call void @_ZN12lldb_private11LanguageSet6InsertEN4lldb12LanguageTypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1) #14
  call void @_ZN12lldb_private11LanguageSet6InsertEN4lldb12LanguageTypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 12) #14
  call void @_ZN12lldb_private11LanguageSet6InsertEN4lldb12LanguageTypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 29) #14
  call void @_ZN12lldb_private11LanguageSet6InsertEN4lldb12LanguageTypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 4) #14
  call void @_ZN12lldb_private11LanguageSet6InsertEN4lldb12LanguageTypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 25) #14
  call void @_ZN12lldb_private11LanguageSet6InsertEN4lldb12LanguageTypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 26) #14
  call void @_ZN12lldb_private11LanguageSet6InsertEN4lldb12LanguageTypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 33) #14
  call void @_ZN12lldb_private11LanguageSet6InsertEN4lldb12LanguageTypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 16) #14
  call void @_ZN12lldb_private11LanguageSet6InsertEN4lldb12LanguageTypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 17) #14
  %i.a = load i64, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN12lldb_private11LanguageSetC2ERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #15 ; 9 uses
  %2 = load i64, ptr %0, align 8, !tbaa !8
  %i.d = inttoptr i64 %2 to ptr                   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 6, ptr %i.g, align 4, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !14   ; 5 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.i, 0
  %i.j = icmp eq ptr %i.c, %i.d
  %or.cond.i.i.i.i = or i1 %i.j, %.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN4llvm9BitVectorC2ERKS0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ugt i32 %i.i, 6
  br i1 %i.k, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i:     ; preds = %bb.c
  %i.l = zext i32 %i.i to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.c, ptr noundef nonnull %i.e, i64 noundef %i.l, i64 noundef 8) #14
  %.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !11
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i, %bb.c
  %i.m = phi ptr [ %.pre.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.e, %bb.c ]
  %i.n = phi i32 [ %.pre.i.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.i, %bb.c ]
  %i.o = zext i32 %i.n to i64
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !11
  %gepdiff.i.i.i.i.i = shl nuw nsw i64 %i.o, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 8 %i.p, i64 %gepdiff.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i
  store i32 %i.i, ptr %i.f, align 8, !tbaa !14
  br label %_ZN4llvm9BitVectorC2ERKS0_.exit.i.i

_ZN4llvm9BitVectorC2ERKS0_.exit.i.i:              ; preds = %.sink.split.i.i.i.i.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.s = load i32, ptr %i.r, align 8, !tbaa !16
  store i32 %i.s, ptr %i.q, align 8, !tbaa !16
  %i.t = ptrtoint ptr %i.c to i64
  br label %_ZN12lldb_private11LanguageSetC2ERKS0_.exit

_ZN12lldb_private11LanguageSetC2ERKS0_.exit:      ; preds = %bb.a, %_ZN4llvm9BitVectorC2ERKS0_.exit.i.i
  %storemerge.i.i = phi i64 [ %i.t, %_ZN4llvm9BitVectorC2ERKS0_.exit.i.i ], [ %i.a, %bb.a ]
  store i64 %storemerge.i.i, ptr %1, align 8, !tbaa !8
  %i.u = call noundef zeroext i1 @_ZN12lldb_private13PluginManager14RegisterPluginEN4llvm9StringRefES2_PFSt10shared_ptrINS_4REPLEERNS_6StatusEN4lldb12LanguageTypeEPNS_8DebuggerEPNS_6TargetEPKcENS_11LanguageSetE(ptr nonnull @.str.6, i64 9, ptr nonnull @.str.1, i64 15, ptr noundef nonnull @_ZN12lldb_private9ClangREPL14CreateInstanceERNS_6StatusEN4lldb12LanguageTypeEPNS_8DebuggerEPNS_6TargetEPKc, ptr nofree noundef nonnull align 8 dereferenceable(8) %1) #14 ; 0 uses
  %i.v = load i64, ptr %1, align 8, !tbaa !8      ; 3 uses
  %i.w = trunc i64 %i.v to i1
  br i1 %i.w, label %_ZN12lldb_private11LanguageSetD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN12lldb_private11LanguageSetC2ERKS0_.exit
  %i.x = inttoptr i64 %i.v to ptr                 ; 3 uses
  %i.y = icmp eq i64 %i.v, 0
  br i1 %i.y, label %_ZN12lldb_private11LanguageSetD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !11   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN4llvm9BitVectorD2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.z) #14
  br label %_ZN4llvm9BitVectorD2Ev.exit.i.i

_ZN4llvm9BitVectorD2Ev.exit.i.i:                  ; preds = %bb.f, %bb.e
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 72) #16
  br label %_ZN12lldb_private11LanguageSetD2Ev.exit

_ZN12lldb_private11LanguageSetD2Ev.exit:          ; preds = %_ZN12lldb_private11LanguageSetC2ERKS0_.exit, %bb.d, %_ZN4llvm9BitVectorD2Ev.exit.i.i
  %i.ac = load i64, ptr %0, align 8, !tbaa !8     ; 3 uses
  %i.ad = trunc i64 %i.ac to i1
  br i1 %i.ad, label %_ZN12lldb_private11LanguageSetD2Ev.exit2, label %bb.g

bb.g:                                             ; preds = %_ZN12lldb_private11LanguageSetD2Ev.exit
  %i.ae = inttoptr i64 %i.ac to ptr               ; 3 uses
  %i.af = icmp eq i64 %i.ac, 0
  br i1 %i.af, label %_ZN12lldb_private11LanguageSetD2Ev.exit2, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !11 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZN4llvm9BitVectorD2Ev.exit.i.i1, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.ag) #14
  br label %_ZN4llvm9BitVectorD2Ev.exit.i.i1

_ZN4llvm9BitVectorD2Ev.exit.i.i1:                 ; preds = %bb.i, %bb.h
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 72) #16
  br label %_ZN12lldb_private11LanguageSetD2Ev.exit2

_ZN12lldb_private11LanguageSetD2Ev.exit2:         ; preds = %_ZN12lldb_private11LanguageSetD2Ev.exit, %bb.g, %_ZN4llvm9BitVectorD2Ev.exit.i.i1
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @lldb_terminate_ClangREPL() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN12lldb_private13PluginManager16UnregisterPluginEPFSt10shared_ptrINS_4REPLEERNS_6StatusEN4lldb12LanguageTypeEPNS_8DebuggerEPNS_6TargetEPKcE(ptr noundef nonnull @_ZN12lldb_private9ClangREPL14CreateInstanceERNS_6StatusEN4lldb12LanguageTypeEPNS_8DebuggerEPNS_6TargetEPKc) #14 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private9ClangREPL9TerminateEv() local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN12lldb_private13PluginManager16UnregisterPluginEPFSt10shared_ptrINS_4REPLEERNS_6StatusEN4lldb12LanguageTypeEPNS_8DebuggerEPNS_6TargetEPKcE(ptr noundef nonnull @_ZN12lldb_private9ClangREPL14CreateInstanceERNS_6StatusEN4lldb12LanguageTypeEPNS_8DebuggerEPNS_6TargetEPKc) #14 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private9ClangREPLC2EN4lldb12LanguageTypeERNS_6TargetE(ptr noundef nonnull align 8 dereferenceable(1352) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(2200) %2) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN12lldb_private4REPLC2ERNS_6TargetE(ptr noundef nonnull align 8 dereferenceable(1296) %0, ptr noundef nonnull align 8 dereferenceable(2200) %2) #14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTVN12lldb_private9ClangREPLE, i64 16), ptr %0, align 8, !tbaa !23
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12lldb_private9ClangREPLE, i64 240), ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1296
  store i32 %1, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1304
  tail call void @_ZN12lldb_private17RegularExpressionC1EN4llvm9StringRefENS1_5Regex10RegexFlagsE(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr nonnull @.str, i64 8, i32 noundef 0) #14
  ret void
}

declare void @_ZN12lldb_private17RegularExpressionC1EN4llvm9StringRefENS1_5Regex10RegexFlagsE(ptr noundef nonnull align 8 dereferenceable(48), ptr, i64, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private9ClangREPLD2Ev(ptr noundef nonnull align 8 dead_on_return(1352) dereferenceable(1352) initializes((0, 8), (16, 24)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTVN12lldb_private9ClangREPLE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12lldb_private9ClangREPLE, i64 240), ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1336
  tail call void @_ZN4llvm5RegexD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.c) #14
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !95   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN12lldb_private17RegularExpressionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !96
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #16
  br label %_ZN12lldb_private17RegularExpressionD2Ev.exit

_ZN12lldb_private17RegularExpressionD2Ev.exit:    ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZN12lldb_private4REPLD2Ev(ptr noundef nonnull align 8 dead_on_return(1296) dereferenceable(1296) %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn16_N12lldb_private9ClangREPLD1Ev(ptr noundef %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN12lldb_private9ClangREPLD1Ev(ptr noundef nonnull align 8 dead_on_return(1352) dereferenceable(1352) %i.a) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private9ClangREPLD0Ev(ptr noundef nonnull align 8 dereferenceable(1352) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN12lldb_private9ClangREPLD1Ev(ptr noundef nonnull align 8 dead_on_return(1352) dereferenceable(1352) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1352) #16
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn16_N12lldb_private9ClangREPLD0Ev(ptr noundef %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  tail call void @_ZN12lldb_private9ClangREPLD1Ev(ptr noundef nonnull align 8 dead_on_return(1352) dereferenceable(1352) %i.a) #14, !inline_history !97
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(1352) %i.a, i64 noundef 1352) #16, !inline_history !97
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @_ZN12lldb_private11LanguageSetC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN12lldb_private11LanguageSet6InsertEN4lldb12LanguageTypeE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN12lldb_private13PluginManager14RegisterPluginEN4llvm9StringRefES2_PFSt10shared_ptrINS_4REPLEERNS_6StatusEN4lldb12LanguageTypeEPNS_8DebuggerEPNS_6TargetEPKcENS_11LanguageSetE(ptr, i64, ptr, i64, ptr noundef, ptr nofree noundef align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

end_hunk_0
