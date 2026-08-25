Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SBDeclaration?download=true
begin_hunk_0
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::raw_string_ostream" = type { %"class.llvm::raw_ostream", ptr }
%"class.llvm::raw_ostream" = type { ptr, i32, ptr, ptr, ptr, i8, i32 }
%"class.lldb_private::instrumentation::Instrumenter" = type <{ %"class.llvm::StringRef", i8, [7 x i8] }>
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.lldb::SBFileSpec" = type { %"class.std::unique_ptr.2" }
%"class.std::unique_ptr.2" = type { %"struct.std::__uniq_ptr_data.3" }
%"struct.std::__uniq_ptr_data.3" = type { %"class.std::__uniq_ptr_impl.4" }
%"class.std::__uniq_ptr_impl.4" = type { %"class.std::tuple.5" }
%"class.std::tuple.5" = type { %"struct.std::_Tuple_impl.6" }
%"struct.std::_Tuple_impl.6" = type { %"struct.std::_Head_base.9" }
%"struct.std::_Head_base.9" = type { ptr }
%"class.lldb_private::FileSpec" = type { %"class.lldb_private::ConstString", %"class.lldb_private::ConstString", i8, i32 }
%"class.lldb_private::ConstString" = type { ptr }

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@__PRETTY_FUNCTION__._ZN4lldb13SBDeclarationC2Ev = private unnamed_addr constant [37 x i8] c"lldb::SBDeclaration::SBDeclaration()\00", align 1
@__PRETTY_FUNCTION__._ZN4lldb13SBDeclarationC2ERKS0_ = private unnamed_addr constant [58 x i8] c"lldb::SBDeclaration::SBDeclaration(const SBDeclaration &)\00", align 1
@__PRETTY_FUNCTION__._ZN4lldb13SBDeclarationaSERKS0_ = private unnamed_addr constant [75 x i8] c"const SBDeclaration &lldb::SBDeclaration::operator=(const SBDeclaration &)\00", align 1
@__PRETTY_FUNCTION__._ZNK4lldb13SBDeclaration7IsValidEv = private unnamed_addr constant [42 x i8] c"bool lldb::SBDeclaration::IsValid() const\00", align 1
@__PRETTY_FUNCTION__._ZNK4lldb13SBDeclarationcvbEv = private unnamed_addr constant [48 x i8] c"bool lldb::SBDeclaration::operator bool() const\00", align 1
@__PRETTY_FUNCTION__._ZNK4lldb13SBDeclaration11GetFileSpecEv = private unnamed_addr constant [52 x i8] c"SBFileSpec lldb::SBDeclaration::GetFileSpec() const\00", align 1
@__PRETTY_FUNCTION__._ZNK4lldb13SBDeclaration7GetLineEv = private unnamed_addr constant [46 x i8] c"uint32_t lldb::SBDeclaration::GetLine() const\00", align 1
@__PRETTY_FUNCTION__._ZNK4lldb13SBDeclaration9GetColumnEv = private unnamed_addr constant [48 x i8] c"uint32_t lldb::SBDeclaration::GetColumn() const\00", align 1
@__PRETTY_FUNCTION__._ZN4lldb13SBDeclaration11SetFileSpecENS_10SBFileSpecE = private unnamed_addr constant [56 x i8] c"void lldb::SBDeclaration::SetFileSpec(lldb::SBFileSpec)\00", align 1
@__PRETTY_FUNCTION__._ZN4lldb13SBDeclaration7SetLineEj = private unnamed_addr constant [44 x i8] c"void lldb::SBDeclaration::SetLine(uint32_t)\00", align 1
@__PRETTY_FUNCTION__._ZN4lldb13SBDeclaration9SetColumnEj = private unnamed_addr constant [46 x i8] c"void lldb::SBDeclaration::SetColumn(uint32_t)\00", align 1
@__PRETTY_FUNCTION__._ZNK4lldb13SBDeclarationeqERKS0_ = private unnamed_addr constant [66 x i8] c"bool lldb::SBDeclaration::operator==(const SBDeclaration &) const\00", align 1
@__PRETTY_FUNCTION__._ZNK4lldb13SBDeclarationneERKS0_ = private unnamed_addr constant [66 x i8] c"bool lldb::SBDeclaration::operator!=(const SBDeclaration &) const\00", align 1
@__PRETTY_FUNCTION__._ZN4lldb13SBDeclaration14GetDescriptionERNS_8SBStreamE = private unnamed_addr constant [53 x i8] c"bool lldb::SBDeclaration::GetDescription(SBStream &)\00", align 1
@.str = private unnamed_addr constant [6 x i8] c"%s:%u\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c":%u\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"No value\00", align 1
@_ZTVN4llvm18raw_string_ostreamE = external unnamed_addr constant { [15 x ptr] }, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1

@_ZN4lldb13SBDeclarationC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4lldb13SBDeclarationC2Ev
@_ZN4lldb13SBDeclarationC1ERKS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4lldb13SBDeclarationC2ERKS0_
@_ZN4lldb13SBDeclarationC1EPKN12lldb_private11DeclarationE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4lldb13SBDeclarationC2EPKN12lldb_private11DeclarationE
@_ZN4lldb13SBDeclarationD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4lldb13SBDeclarationD2Ev

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4lldb13SBDeclarationC2Ev(ptr noundef nonnull align 8 dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %2 = alloca %"class.lldb_private::instrumentation::Instrumenter", align 8 ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  store ptr null, ptr %0, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !15, !alias.scope !12
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !18, !alias.scope !12
  store i8 0, ptr %i.a, align 8, !tbaa !21, !alias.scope !12
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9, !noalias !12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !22, !noalias !12
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !27, !noalias !12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 1, ptr %i.e, align 4, !tbaa !28, !noalias !12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false), !noalias !12
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %1, align 8, !tbaa !29, !noalias !12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %3, ptr %i.g, align 8, !tbaa !31, !noalias !12
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef null, i64 noundef 0, i32 noundef 0) #9
  %i.h = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %0) #9 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9, !noalias !12
  call void @_ZN12lldb_private15instrumentation12InstrumenterC1EN4llvm9StringRefEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr nonnull @__PRETTY_FUNCTION__._ZN4lldb13SBDeclarationC2Ev, i64 36, ptr noundef nonnull align 8 dereferenceable(32) %3) #9
  %i.i = load ptr, ptr %3, align 8, !tbaa !33     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.a, align 8, !tbaa !21
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @_ZN12lldb_private15instrumentation12InstrumenterD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN12lldb_private15instrumentation12InstrumenterC1EN4llvm9StringRefEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(17), ptr, i64, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare void @_ZN12lldb_private15instrumentation12InstrumenterD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4lldb13SBDeclarationC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::raw_string_ostream", align 8 ; 15 uses
  %3 = alloca %"class.lldb_private::instrumentation::Instrumenter", align 8 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  store ptr null, ptr %0, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !15, !alias.scope !34
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !18, !alias.scope !34
  store i8 0, ptr %i.a, align 8, !tbaa !21, !alias.scope !34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9, !noalias !34
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !22, !noalias !34
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !27, !noalias !34
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 1, ptr %i.e, align 4, !tbaa !28, !noalias !34
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false), !noalias !34
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %2, align 8, !tbaa !29, !noalias !34
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %4, ptr %i.g, align 8, !tbaa !31, !noalias !34
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef null, i64 noundef 0, i32 noundef 0) #9
  %i.h = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull %0) #9 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37, !noalias !34
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38, !noalias !34 ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.o, 2
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull @.str.3, i64 noundef 2) #9 ; 0 uses
  br label %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb13SBDeclarationES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit

bb.c:                                             ; preds = %bb.a
  store i16 8236, ptr %i.l, align 1
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !38, !noalias !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store ptr %i.s, ptr %i.k, align 8, !tbaa !38, !noalias !34
  br label %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb13SBDeclarationES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit

_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb13SBDeclarationES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit: ; preds = %bb.b, %bb.c
  %i.t = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %1) #9 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9, !noalias !34
  call void @_ZN12lldb_private15instrumentation12InstrumenterC1EN4llvm9StringRefEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(17) %3, ptr nonnull @__PRETTY_FUNCTION__._ZN4lldb13SBDeclarationC2ERKS0_, i64 57, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  %i.u = load ptr, ptr %4, align 8, !tbaa !33     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb13SBDeclarationES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit
  %i.w = load i64, ptr %i.a, align 8, !tbaa !21
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb13SBDeclarationES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.y = load ptr, ptr %1, align 8, !tbaa !39, !noalias !40 ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZN12lldb_private5cloneINS_11DeclarationEEESt10unique_ptrIT_St14default_deleteIS3_EERKS6_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #11, !noalias !43 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false), !tbaa.struct !46, !noalias !43
  br label %_ZN12lldb_private5cloneINS_11DeclarationEEESt10unique_ptrIT_St14default_deleteIS3_EERKS6_.exit

_ZN12lldb_private5cloneINS_11DeclarationEEESt10unique_ptrIT_St14default_deleteIS3_EERKS6_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  %storemerge.i = phi ptr [ %i.z, %bb.d ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.aa = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  store ptr %storemerge.i, ptr %0, align 8, !tbaa !39
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN12lldb_private11DeclarationESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN12lldb_private11DeclarationEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN12lldb_private11DeclarationEEclEPS1_.exit.i.i.i.i: ; preds = %_ZN12lldb_private5cloneINS_11DeclarationEEESt10unique_ptrIT_St14default_deleteIS3_EERKS6_.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #10
  br label %_ZNSt10unique_ptrIN12lldb_private11DeclarationESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN12lldb_private11DeclarationESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN12lldb_private11DeclarationEEclEPS1_.exit.i.i.i.i, %_ZN12lldb_private5cloneINS_11DeclarationEEESt10unique_ptrIT_St14default_deleteIS3_EERKS6_.exit
  call void @_ZN12lldb_private15instrumentation12InstrumenterD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4lldb13SBDeclarationC2EPKN12lldb_private11DeclarationE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !8
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN12lldb_private11DeclarationESt14default_deleteIS1_EED2Ev.exit.a

_ZNSt10unique_ptrIN12lldb_private11DeclarationESt14default_deleteIS1_EED2Ev.exit.a: ; preds = %bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #11, !noalias !55 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !46, !noalias !55
  store ptr %i.a, ptr %0, align 8, !tbaa !39
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN12lldb_private11DeclarationESt14default_deleteIS1_EED2Ev.exit.a, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lldb13SBDeclarationaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::raw_string_ostream", align 8 ; 15 uses
  %3 = alloca %"class.lldb_private::instrumentation::Instrumenter", align 8 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !15, !alias.scope !58
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !18, !alias.scope !58
  store i8 0, ptr %i.a, align 8, !tbaa !21, !alias.scope !58
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9, !noalias !58
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !22, !noalias !58
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !27, !noalias !58
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 1, ptr %i.e, align 4, !tbaa !28, !noalias !58
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false), !noalias !58
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %2, align 8, !tbaa !29, !noalias !58
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %4, ptr %i.g, align 8, !tbaa !31, !noalias !58
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef null, i64 noundef 0, i32 noundef 0) #9
  %i.h = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull %0) #9 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37, !noalias !58
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38, !noalias !58 ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.o, 2
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull @.str.3, i64 noundef 2) #9 ; 0 uses
  br label %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb13SBDeclarationES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit

bb.c:                                             ; preds = %bb.a
  store i16 8236, ptr %i.l, align 1
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !38, !noalias !58
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store ptr %i.s, ptr %i.k, align 8, !tbaa !38, !noalias !58
  br label %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb13SBDeclarationES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit

_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb13SBDeclarationES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit: ; preds = %bb.b, %bb.c
  %i.t = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %1) #9 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9, !noalias !58
  call void @_ZN12lldb_private15instrumentation12InstrumenterC1EN4llvm9StringRefEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(17) %3, ptr nonnull @__PRETTY_FUNCTION__._ZN4lldb13SBDeclarationaSERKS0_, i64 74, ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  %i.u = load ptr, ptr %4, align 8, !tbaa !33     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb13SBDeclarationES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit
  %i.w = load i64, ptr %i.a, align 8, !tbaa !21
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb13SBDeclarationES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %_ZNSt10unique_ptrIN12lldb_private11DeclarationESt14default_deleteIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = load ptr, ptr %1, align 8, !tbaa !39, !noalias !61 ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZN12lldb_private5cloneINS_11DeclarationEEESt10unique_ptrIT_St14default_deleteIS3_EERKS6_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #11, !noalias !64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false), !tbaa.struct !46, !noalias !64
  br label %_ZN12lldb_private5cloneINS_11DeclarationEEESt10unique_ptrIT_St14default_deleteIS3_EERKS6_.exit

_ZN12lldb_private5cloneINS_11DeclarationEEESt10unique_ptrIT_St14default_deleteIS3_EERKS6_.exit: ; preds = %bb.d, %bb.e
  %storemerge.i = phi ptr [ %i.z, %bb.e ], [ null, %bb.d ]
  %i.aa = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  store ptr %storemerge.i, ptr %0, align 8, !tbaa !39
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN12lldb_private11DeclarationESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN12lldb_private11DeclarationEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN12lldb_private11DeclarationEEclEPS1_.exit.i.i.i.i: ; preds = %_ZN12lldb_private5cloneINS_11DeclarationEEESt10unique_ptrIT_St14default_deleteIS3_EERKS6_.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #10
  br label %_ZNSt10unique_ptrIN12lldb_private11DeclarationESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN12lldb_private11DeclarationESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN12lldb_private5cloneINS_11DeclarationEEESt10unique_ptrIT_St14default_deleteIS3_EERKS6_.exit, %_ZNKSt14default_deleteIN12lldb_private11DeclarationEEclEPS1_.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN12lldb_private15instrumentation12InstrumenterD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4lldb13SBDeclaration14SetDeclarationERKN12lldb_private11DeclarationE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(30) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %_ZN4lldb13SBDeclaration3refEv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #11, !noalias !67 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false), !noalias !67
  tail call void @_ZN12lldb_private8FileSpecC1Ev(ptr noundef nonnull align 8 dereferenceable(30) %i.b) #9, !noalias !67
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 0, ptr %i.c, align 8, !tbaa !70, !noalias !67
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i16 0, ptr %i.d, align 4, !tbaa !74, !noalias !67
  %i.e = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !39
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZN4lldb13SBDeclaration3refEv.exit, label %_ZNKSt14default_deleteIN12lldb_private11DeclarationEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN12lldb_private11DeclarationEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 32) #10
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !39
  br label %_ZN4lldb13SBDeclaration3refEv.exit

_ZN4lldb13SBDeclaration3refEv.exit:               ; preds = %bb.a, %bb.b, %_ZNKSt14default_deleteIN12lldb_private11DeclarationEEclEPS1_.exit.i.i.i.i.i
  %i.f = phi ptr [ %i.b, %bb.b ], [ %.pre.i, %_ZNKSt14default_deleteIN12lldb_private11DeclarationEEclEPS1_.exit.i.i.i.i.i ], [ %i.a, %bb.a ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(30) %i.f, ptr noundef nonnull align 8 dereferenceable(30) %1, i64 30, i1 false), !tbaa.struct !46
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(30) ptr @_ZN4lldb13SBDeclaration3refEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %_ZNSt10unique_ptrIN12lldb_private11DeclarationESt14default_deleteIS1_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #11, !noalias !75 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false), !noalias !75
  tail call void @_ZN12lldb_private8FileSpecC1Ev(ptr noundef nonnull align 8 dereferenceable(30) %i.b) #9, !noalias !75
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 0, ptr %i.c, align 8, !tbaa !70, !noalias !75
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i16 0, ptr %i.d, align 4, !tbaa !74, !noalias !75
  %i.e = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !39
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN12lldb_private11DeclarationESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN12lldb_private11DeclarationEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN12lldb_private11DeclarationEEclEPS1_.exit.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 32) #10
  %.pre = load ptr, ptr %0, align 8, !tbaa !39
  br label %_ZNSt10unique_ptrIN12lldb_private11DeclarationESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN12lldb_private11DeclarationESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN12lldb_private11DeclarationEEclEPS1_.exit.i.i.i.i, %bb.a
  %i.f = phi ptr [ %i.b, %bb.b ], [ %.pre, %_ZNKSt14default_deleteIN12lldb_private11DeclarationEEclEPS1_.exit.i.i.i.i ], [ %i.a, %bb.a ]
  ret ptr %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4lldb13SBDeclarationD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN12lldb_private11DeclarationESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN12lldb_private11DeclarationEEclEPS1_.exit.i

_ZNKSt14default_deleteIN12lldb_private11DeclarationEEclEPS1_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #10
  br label %_ZNSt10unique_ptrIN12lldb_private11DeclarationESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN12lldb_private11DeclarationESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN12lldb_private11DeclarationEEclEPS1_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4lldb13SBDeclaration7IsValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %2 = alloca %"class.lldb_private::instrumentation::Instrumenter", align 8 ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !15, !alias.scope !78
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !18, !alias.scope !78
  store i8 0, ptr %i.a, align 8, !tbaa !21, !alias.scope !78
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9, !noalias !78
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !22, !noalias !78
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !27, !noalias !78
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 1, ptr %i.e, align 4, !tbaa !28, !noalias !78
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_0
