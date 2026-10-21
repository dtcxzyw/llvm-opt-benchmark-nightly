Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/jit?download=true
inline.NumInlined: 625
inline.NumDeleted: 421
begin_hunk_0

$_ZTISt23enable_shared_from_thisIN8WasmEdge10ExecutableEE = comdat any

$_ZTSSt23enable_shared_from_thisIN8WasmEdge10ExecutableEE = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN8WasmEdge4LLVM10JITLibraryESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN8WasmEdge4LLVM10JITLibraryESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN8WasmEdge4LLVM10JITLibraryESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt19_Sp_make_shared_tag = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN8WasmEdge4LLVM10JITLibraryE = hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN8WasmEdge4LLVM10JITLibraryE, ptr @_ZN8WasmEdge4LLVM10JITLibraryD2Ev, ptr @_ZN8WasmEdge4LLVM10JITLibraryD0Ev, ptr @_ZN8WasmEdge4LLVM10JITLibrary13getIntrinsicsEv, ptr @_ZN8WasmEdge4LLVM10JITLibrary8getTypesEm, ptr @_ZN8WasmEdge4LLVM10JITLibrary8getCodesEmm] }, align 8
@.str = private unnamed_addr constant [11 x i8] c"intrinsics\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"{}\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"t{}\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"f{}\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"wasm-jit.ll\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"printModuleToFile failed\00", align 1
@_ZTIN8WasmEdge4LLVM10JITLibraryE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8WasmEdge4LLVM10JITLibraryE, ptr @_ZTIN8WasmEdge10ExecutableE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN8WasmEdge4LLVM10JITLibraryE = hidden constant [29 x i8] c"N8WasmEdge4LLVM10JITLibraryE\00", align 1
@_ZTIN8WasmEdge10ExecutableE = linkonce_odr hidden constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN8WasmEdge10ExecutableE, i32 0, i32 1, ptr @_ZTISt23enable_shared_from_thisIN8WasmEdge10ExecutableEE, i64 2050 }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN8WasmEdge10ExecutableE = linkonce_odr hidden constant [24 x i8] c"N8WasmEdge10ExecutableE\00", comdat, align 1
@_ZTISt23enable_shared_from_thisIN8WasmEdge10ExecutableEE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt23enable_shared_from_thisIN8WasmEdge10ExecutableEE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt23enable_shared_from_thisIN8WasmEdge10ExecutableEE = linkonce_odr hidden constant [53 x i8] c"St23enable_shared_from_thisIN8WasmEdge10ExecutableEE\00", comdat, align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN8WasmEdge4LLVM10JITLibraryESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN8WasmEdge4LLVM10JITLibraryESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8WasmEdge4LLVM10JITLibraryESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8WasmEdge4LLVM10JITLibraryESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8WasmEdge4LLVM10JITLibraryESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8WasmEdge4LLVM10JITLibraryESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN8WasmEdge4LLVM10JITLibraryESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN8WasmEdge4LLVM10JITLibraryESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN8WasmEdge4LLVM10JITLibraryESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [92 x i8] c"St23_Sp_counted_ptr_inplaceIN8WasmEdge4LLVM10JITLibraryESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8

@_ZN8WasmEdge4LLVM10JITLibraryC1ENS0_8OrcLLJITE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN8WasmEdge4LLVM10JITLibraryC2ENS0_8OrcLLJITE
@_ZN8WasmEdge4LLVM10JITLibraryD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN8WasmEdge4LLVM10JITLibraryD2Ev

; Function Attrs: mustprogress nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_ZN8WasmEdge4LLVM10JITLibraryC2ENS0_8OrcLLJITE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofreeobj noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 {
_ZNSt10unique_ptrIN8WasmEdge4LLVM8OrcLLJITESt14default_deleteIS2_EED2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN8WasmEdge4LLVM10JITLibraryE, i64 16), ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #14, !noalias !71 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !16, !noalias !71
  store ptr %i.d, ptr %i.c, align 8, !tbaa !16, !noalias !71
  store ptr null, ptr %1, align 8, !tbaa !16, !noalias !71
  store ptr %i.c, ptr %i.b, align 8, !tbaa !26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge4LLVM10JITLibraryD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(32) dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN8WasmEdge4LLVM10JITLibraryE, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !27
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN8WasmEdge4LLVM8OrcLLJITESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN8WasmEdge4LLVM8OrcLLJITEEclEPS2_.exit.i

_ZNKSt14default_deleteIN8WasmEdge4LLVM8OrcLLJITEEclEPS2_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = tail call ptr @LLVMOrcDisposeLLJIT(ptr noundef %i.c) #15 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8) #16
  br label %_ZNSt10unique_ptrIN8WasmEdge4LLVM8OrcLLJITESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN8WasmEdge4LLVM8OrcLLJITESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN8WasmEdge4LLVM8OrcLLJITEEclEPS2_.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30   ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN8WasmEdge10ExecutableD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN8WasmEdge4LLVM8OrcLLJITESt14default_deleteIS2_EED2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !32   ; 2 uses
  %i.j = add nsw i32 %i.i, -1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i = phi i32 [ %i.i, %bb.c ], [ %i.k, %bb.d ]
  %i.l = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.l, label %bb.e, label %_ZN8WasmEdge10ExecutableD2Ev.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #15, !inline_history !72
  br label %_ZN8WasmEdge10ExecutableD2Ev.exit

_ZN8WasmEdge10ExecutableD2Ev.exit:                ; preds = %_ZNSt10unique_ptrIN8WasmEdge4LLVM8OrcLLJITESt14default_deleteIS2_EED2Ev.exit, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge4LLVM10JITLibraryD0Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN8WasmEdge4LLVM10JITLibraryE, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !27
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN8WasmEdge4LLVM8OrcLLJITESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN8WasmEdge4LLVM8OrcLLJITEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN8WasmEdge4LLVM8OrcLLJITEEclEPS2_.exit.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = tail call ptr @LLVMOrcDisposeLLJIT(ptr noundef %i.c) #15, !inline_history !74 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8) #16, !inline_history !74
  br label %_ZNSt10unique_ptrIN8WasmEdge4LLVM8OrcLLJITESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN8WasmEdge4LLVM8OrcLLJITESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN8WasmEdge4LLVM8OrcLLJITEEclEPS2_.exit.i.i, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30   ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN8WasmEdge4LLVM10JITLibraryD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN8WasmEdge4LLVM8OrcLLJITESt14default_deleteIS2_EED2Ev.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !32   ; 2 uses
  %i.j = add nsw i32 %i.i, -1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.c ], [ %i.k, %bb.d ]
  %i.l = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.l, label %bb.e, label %_ZN8WasmEdge4LLVM10JITLibraryD2Ev.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #15, !inline_history !73
  br label %_ZN8WasmEdge4LLVM10JITLibraryD2Ev.exit

_ZN8WasmEdge4LLVM10JITLibraryD2Ev.exit:           ; preds = %_ZNSt10unique_ptrIN8WasmEdge4LLVM8OrcLLJITESt14default_deleteIS2_EED2Ev.exit.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #16
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge4LLVM10JITLibrary13getIntrinsicsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.WasmEdge::Symbol") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15, !noalias !83
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29, !noalias !83
  %i.e = call ptr @LLVMOrcLLJITLookup(ptr noundef %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull @.str) #15, !noalias !83 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  %i.f = load i64, ptr %i.a, align 8, !noalias !83
  %i.g = inttoptr i64 %i.f to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !83
  br i1 %.not.i, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30, !noalias !85 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = load atomic i32, ptr %i.k monotonic, align 8, !noalias !85
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.06.i.i.i.i.i.i = phi i32 [ %i.l, %bb.c ], [ %i.p, %bb.e ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.n = cmpxchg weak ptr %i.k, i32 %.06.i.i.i.i.i.i, i32 %i.m acq_rel monotonic, align 8, !noalias !85 ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.n, 1
  %i.p = extractvalue { i32, i1 } %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.d, !llvm.loop !0

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i: ; preds = %bb.d, %bb.b
  call void @abort() #17, !noalias !85
  unreachable

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.q = call ptr @LLVMGetErrorMessage(ptr noundef nonnull %i.e) #15, !noalias !86 ; 3 uses
  %i.r = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #15
  store i64 %i.r, ptr %3, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.q, ptr %i.s, align 8
  %i.t = call noundef ptr @_ZN6spdlog18default_logger_rawEv() #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJSt17basic_string_viewIcSt11char_traitsIcEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.t, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %2, i32 noundef 4, ptr nonnull @.str.1, i64 2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @LLVMDisposeErrorMessage(ptr noundef nonnull %i.q) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @LLVMConsumeError(ptr noundef null) #15
  br label %_ZN5cxx206detail21expected_storage_baseIPPA38_KPvN8WasmEdge4LLVM5ErrorELb1ELb0EED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !34, !noalias !85
  store ptr %i.v, ptr %0, align 8, !tbaa !37, !alias.scope !84
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.w, align 8, !tbaa !38, !alias.scope !84
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.x, align 8, !tbaa !90, !alias.scope !84
  br label %_ZN5cxx206detail21expected_storage_baseIPPA38_KPvN8WasmEdge4LLVM5ErrorELb1ELb0EED2Ev.exit

_ZN5cxx206detail21expected_storage_baseIPPA38_KPvN8WasmEdge4LLVM5ErrorELb1ELb0EED2Ev.exit: ; preds = %bb.f, %.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge4LLVM10JITLibrary8getTypesEm(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.109", align 16 ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.WasmEdge::Symbol.20", align 8 ; 7 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = icmp ugt i64 %2, 384307168202282325
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not38 = icmp eq i64 %2, 0
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.d = mul nuw nsw i64 %2, 24
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #14 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !42
  store ptr %i.e, ptr %i.f, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2
  store ptr %i.g, ptr %i.c, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %storemerge27 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15, !noalias !103
  %.sroa.01.0.insert.ext.i = zext nneg i64 %storemerge27 to i128
  store i128 %.sroa.01.0.insert.ext.i, ptr %4, align 16, !noalias !103
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.2, i64 3, i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15, !noalias !103
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.q = load ptr, ptr %5, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15, !noalias !104
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !29, !noalias !104
  %i.s = call ptr @LLVMOrcLLJITLookup(ptr noundef %i.r, ptr noundef nonnull %i.a, ptr noundef %i.q) #15, !noalias !104 ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  %i.t = load i64, ptr %i.a, align 8, !noalias !104
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !104
  br i1 %.not.i, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !30, !noalias !106 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.y = load atomic i32, ptr %i.x monotonic, align 8, !noalias !106
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.06.i.i.i.i.i.i = phi i32 [ %i.y, %bb.f ], [ %i.ac, %bb.h ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.aa = cmpxchg weak ptr %i.x, i32 %.06.i.i.i.i.i.i, i32 %i.z acq_rel monotonic, align 8, !noalias !106 ; 2 uses
  %i.ab = extractvalue { i32, i1 } %i.aa, 1
  %i.ac = extractvalue { i32, i1 } %i.aa, 0
  br i1 %i.ab, label %_ZNK8WasmEdge10Executable12createSymbolIFvPvS2_PKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEPSF_EEENS_6SymbolIT_EEPSL_.exit, label %bb.g, !llvm.loop !0

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i: ; preds = %bb.e, %bb.g
  call void @abort() #17, !noalias !106
  unreachable

_ZNK8WasmEdge10Executable12createSymbolIFvPvS2_PKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEPSF_EEENS_6SymbolIT_EEPSL_.exit: ; preds = %bb.h
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !34, !noalias !106 ; 2 uses
  store ptr %i.ad, ptr %6, align 8, !tbaa !37, !alias.scope !105
  store ptr %i.v, ptr %i.m, align 8, !tbaa !38, !alias.scope !105
  store ptr %i.u, ptr %i.n, align 8, !tbaa !51, !alias.scope !105
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !43  ; 6 uses
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !44
  %.not.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK8WasmEdge10Executable12createSymbolIFvPvS2_PKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEPSF_EEENS_6SymbolIT_EEPSL_.exit
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !37
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  store ptr null, ptr %i.ag, align 8, !tbaa !38
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !38
  store ptr null, ptr %i.m, align 8, !tbaa !38
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !38
  store ptr null, ptr %6, align 8, !tbaa !37
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.u, ptr %i.ai, align 8, !tbaa !51
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.aj, ptr %i.j, align 8, !tbaa !43
  br label %_ZNSt6vectorIN8WasmEdge6SymbolIFvPvS2_PKNS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEPSF_EEESaISK_EE9push_backEOSK_.exit

bb.j:                                             ; preds = %_ZNK8WasmEdge10Executable12createSymbolIFvPvS2_PKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEPSF_EEENS_6SymbolIT_EEPSL_.exit
  call void @_ZNSt6vectorIN8WasmEdge6SymbolIFvPvS2_PKNS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEPSF_EEESaISK_EE17_M_realloc_insertIJSK_EEEvN9__gnu_cxx17__normal_iteratorIPSK_SM_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNSt6vectorIN8WasmEdge6SymbolIFvPvS2_PKNS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEPSF_EEESaISK_EE9push_backEOSK_.exit

_ZNSt6vectorIN8WasmEdge6SymbolIFvPvS2_PKNS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEPSF_EEESaISK_EE9push_backEOSK_.exit: ; preds = %bb.i, %bb.j
  %i.ak = load ptr, ptr %i.m, align 8, !tbaa !38  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8WasmEdge6SymbolIFvPvS2_PKNS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEPSF_EEESaISK_EE12emplace_backIJEEERSK_DpOT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN8WasmEdge6SymbolIFvPvS2_PKNS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEPSF_EEESaISK_EE9push_backEOSK_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.al, align 8, !tbaa !53
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !54
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #15, !inline_history !99
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #15, !inline_history !99
  br label %_ZNSt6vectorIN8WasmEdge6SymbolIFvPvS2_PKNS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEPSF_EEESaISK_EE12emplace_backIJEEERSK_DpOT_.exit

bb.m:                                             ; preds = %bb.k
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i3 = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i3, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i = phi i32 [ %i.ao, %bb.n ], [ %i.ay, %bb.o ]
  %i.az = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.az, label %bb.p, label %_ZNSt6vectorIN8WasmEdge6SymbolIFvPvS2_PKNS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEPSF_EEESaISK_EE12emplace_backIJEEERSK_DpOT_.exit, !prof !55

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #15
  br label %_ZNSt6vectorIN8WasmEdge6SymbolIFvPvS2_PKNS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEPSF_EEESaISK_EE12emplace_backIJEEERSK_DpOT_.exit

bb.q:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.ba = call ptr @LLVMGetErrorMessage(ptr noundef nonnull %i.s) #15, !noalias !107 ; 3 uses
  %i.bb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ba) #15
  store i64 %i.bb, ptr %7, align 8
  store ptr %i.ba, ptr %i.i, align 8
  %i.bc = call noundef ptr @_ZN6spdlog18default_logger_rawEv() #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJSt17basic_string_viewIcSt11char_traitsIcEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bc, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 4, ptr nonnull @.str.1, i64 2, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @LLVMDisposeErrorMessage(ptr noundef nonnull %i.ba) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !43  ; 3 uses
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !44
  %.not.i6 = icmp eq ptr %i.bd, %i.be
  br i1 %.not.i6, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  %i.bf = load ptr, ptr %i.j, align 8, !tbaa !43
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store ptr %i.bg, ptr %i.j, align 8, !tbaa !43
  br label %_ZNSt6vectorIN8WasmEdge6SymbolIFvPvS2_PKNS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEPSF_EEESaISK_EE12emplace_backIJEEERSK_DpOT_.exit.thread

bb.s:                                             ; preds = %bb.q
  call void @_ZNSt6vectorIN8WasmEdge6SymbolIFvPvS2_PKNS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEPSF_EEESaISK_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSK_SM_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.bd)
  br label %_ZNSt6vectorIN8WasmEdge6SymbolIFvPvS2_PKNS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEPSF_EEESaISK_EE12emplace_backIJEEERSK_DpOT_.exit.thread

_ZNSt6vectorIN8WasmEdge6SymbolIFvPvS2_PKNS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEPSF_EEESaISK_EE12emplace_backIJEEERSK_DpOT_.exit: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.l, %_ZNSt6vectorIN8WasmEdge6SymbolIFvPvS2_PKNS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEPSF_EEESaISK_EE9push_backEOSK_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %_ZN5cxx206detail21expected_storage_baseIPFvPvS2_PKN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS3_10RefVariantEEEEPSG_ENS3_4LLVM5ErrorELb1ELb0EED2Ev.exit

_ZNSt6vectorIN8WasmEdge6SymbolIFvPvS2_PKNS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEPSF_EEESaISK_EE12emplace_backIJEEERSK_DpOT_.exit.thread: ; preds = %bb.r, %bb.s
  call void @LLVMConsumeError(ptr noundef null) #15
  br label %_ZN5cxx206detail21expected_storage_baseIPFvPvS2_PKN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS3_10RefVariantEEEEPSG_ENS3_4LLVM5ErrorELb1ELb0EED2Ev.exit

_ZN5cxx206detail21expected_storage_baseIPFvPvS2_PKN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS3_10RefVariantEEEEPSG_ENS3_4LLVM5ErrorELb1ELb0EED2Ev.exit: ; preds = %_ZNSt6vectorIN8WasmEdge6SymbolIFvPvS2_PKNS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEPSF_EEESaISK_EE12emplace_backIJEEERSK_DpOT_.exit, %_ZNSt6vectorIN8WasmEdge6SymbolIFvPvS2_PKNS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEPSF_EEESaISK_EE12emplace_backIJEEERSK_DpOT_.exit.thread
  %i.bh = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.o
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5cxx206detail21expected_storage_baseIPFvPvS2_PKN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS3_10RefVariantEEEEPSG_ENS3_4LLVM5ErrorELb1ELb0EED2Ev.exit
  %i.bj = load i64, ptr %i.o, align 8, !tbaa !31
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5cxx206detail21expected_storage_baseIPFvPvS2_PKN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS3_10RefVariantEEEEPSG_ENS3_4LLVM5ErrorELb1ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.bl = add nuw i64 %storemerge27, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.bl, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !102
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge4LLVM10JITLibrary8getCodesEmm(ptr dead_on_unwind noalias writable sret(%"class.std::vector.21") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.109", align 16 ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.WasmEdge::Symbol.40", align 8 ; 7 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = icmp ugt i64 %3, 384307168202282325
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not41 = icmp eq i64 %3, 0
  br i1 %.not41, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.d = mul nuw nsw i64 %3, 24
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #14 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !58
  store ptr %i.e, ptr %i.f, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %3
  store ptr %i.g, ptr %i.c, align 8, !tbaa !60
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.030 = phi i64 [ 0, %.lr.ph ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.p = add i64 %.030, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15, !noalias !120
  %.sroa.01.0.insert.ext.i = zext i64 %i.p to i128
  store i128 %.sroa.01.0.insert.ext.i, ptr %5, align 16, !noalias !120
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.3, i64 3, i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !120
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.r = load ptr, ptr %6, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15, !noalias !121
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !29, !noalias !121
  %i.t = call ptr @LLVMOrcLLJITLookup(ptr noundef %i.s, ptr noundef nonnull %i.a, ptr noundef %i.r) #15, !noalias !121 ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  %i.u = load i64, ptr %i.a, align 8, !noalias !121
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !121
  br i1 %.not.i, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !30, !noalias !123 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.z = load atomic i32, ptr %i.y monotonic, align 8, !noalias !123
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.06.i.i.i.i.i.i = phi i32 [ %i.z, %bb.f ], [ %i.ad, %bb.h ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.ab = cmpxchg weak ptr %i.y, i32 %.06.i.i.i.i.i.i, i32 %i.aa acq_rel monotonic, align 8, !noalias !123 ; 2 uses
  %i.ac = extractvalue { i32, i1 } %i.ab, 1
  %i.ad = extractvalue { i32, i1 } %i.ab, 0
  br i1 %i.ac, label %_ZNK8WasmEdge10Executable12createSymbolIvEENS_6SymbolIT_EEPS3_.exit, label %bb.g, !llvm.loop !0

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i: ; preds = %bb.e, %bb.g
  call void @abort() #17, !noalias !123
  unreachable

_ZNK8WasmEdge10Executable12createSymbolIvEENS_6SymbolIT_EEPS3_.exit: ; preds = %bb.h
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !34, !noalias !123 ; 2 uses
  store ptr %i.ae, ptr %7, align 8, !tbaa !37, !alias.scope !122
  store ptr %i.w, ptr %i.m, align 8, !tbaa !38, !alias.scope !122
  store ptr %i.v, ptr %i.n, align 8, !tbaa !62, !alias.scope !122
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !59  ; 6 uses
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !60
  %.not.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK8WasmEdge10Executable12createSymbolIvEENS_6SymbolIT_EEPS3_.exit
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !37
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !38
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !38
  store ptr null, ptr %i.m, align 8, !tbaa !38
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !38
  store ptr null, ptr %7, align 8, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.v, ptr %i.aj, align 8, !tbaa !62
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %i.ak, ptr %i.j, align 8, !tbaa !59
  br label %_ZNSt6vectorIN8WasmEdge6SymbolIvEESaIS2_EE9push_backEOS2_.exit

bb.j:                                             ; preds = %_ZNK8WasmEdge10Executable12createSymbolIvEENS_6SymbolIT_EEPS3_.exit
  call void @_ZNSt6vectorIN8WasmEdge6SymbolIvEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.af, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZNSt6vectorIN8WasmEdge6SymbolIvEESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN8WasmEdge6SymbolIvEESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.i, %bb.j
  %i.al = load ptr, ptr %i.m, align 8, !tbaa !38  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8WasmEdge6SymbolIvEESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN8WasmEdge6SymbolIvEESaIS2_EE9push_backEOS2_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.am, align 8, !tbaa !53
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !54
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #15, !inline_history !116
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #15, !inline_history !116
  br label %_ZNSt6vectorIN8WasmEdge6SymbolIvEESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

bb.m:                                             ; preds = %bb.k
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i7 = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i7, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i = phi i32 [ %i.ap, %bb.n ], [ %i.az, %bb.o ]
  %i.ba = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ba, label %bb.p, label %_ZNSt6vectorIN8WasmEdge6SymbolIvEESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit, !prof !55

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #15
  br label %_ZNSt6vectorIN8WasmEdge6SymbolIvEESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

bb.q:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.bb = call ptr @LLVMGetErrorMessage(ptr noundef nonnull %i.t) #15, !noalias !124 ; 3 uses
  %i.bc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bb) #15
  store i64 %i.bc, ptr %8, align 8
  store ptr %i.bb, ptr %i.i, align 8
  %i.bd = call noundef ptr @_ZN6spdlog18default_logger_rawEv() #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJSt17basic_string_viewIcSt11char_traitsIcEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bd, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 4, ptr nonnull @.str.1, i64 2, ptr noundef nonnull align 8 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @LLVMDisposeErrorMessage(ptr noundef nonnull %i.bb) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.be = load ptr, ptr %i.j, align 8, !tbaa !59  ; 3 uses
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !60
  %.not.i10 = icmp eq ptr %i.be, %i.bf
  br i1 %.not.i10, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 24, i1 false)
  %i.bg = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store ptr %i.bh, ptr %i.j, align 8, !tbaa !59
  br label %_ZNSt6vectorIN8WasmEdge6SymbolIvEESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.thread

bb.s:                                             ; preds = %bb.q
  call void @_ZNSt6vectorIN8WasmEdge6SymbolIvEESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.be)
  br label %_ZNSt6vectorIN8WasmEdge6SymbolIvEESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.thread

_ZNSt6vectorIN8WasmEdge6SymbolIvEESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.l, %_ZNSt6vectorIN8WasmEdge6SymbolIvEESaIS2_EE9push_backEOS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %_ZN5cxx206detail21expected_storage_baseIPvN8WasmEdge4LLVM5ErrorELb1ELb0EED2Ev.exit

_ZNSt6vectorIN8WasmEdge6SymbolIvEESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.thread: ; preds = %bb.r, %bb.s
  call void @LLVMConsumeError(ptr noundef null) #15
  br label %_ZN5cxx206detail21expected_storage_baseIPvN8WasmEdge4LLVM5ErrorELb1ELb0EED2Ev.exit

_ZN5cxx206detail21expected_storage_baseIPvN8WasmEdge4LLVM5ErrorELb1ELb0EED2Ev.exit: ; preds = %_ZNSt6vectorIN8WasmEdge6SymbolIvEESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit, %_ZNSt6vectorIN8WasmEdge6SymbolIvEESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit.thread
  %i.bi = load ptr, ptr %6, align 8, !tbaa !49    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.o
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5cxx206detail21expected_storage_baseIPvN8WasmEdge4LLVM5ErrorELb1ELb0EED2Ev.exit
  %i.bk = load i64, ptr %i.o, align 8, !tbaa !31
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5cxx206detail21expected_storage_baseIPvN8WasmEdge4LLVM5ErrorELb1ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.bm = add nuw i64 %.030, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bm, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !119

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge4LLVM3JIT4loadENS0_4DataE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected.41") align 8 captures(none) initializes((0, 1), (8, 12)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(168) %1, ptr nofreeobj noundef readonly align 8 captures(none) dereferenceable(176) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %4 = alloca %"struct.spdlog::details::log_msg", align 8 ; 4 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"class.WasmEdge::LLVM::OrcLLJIT", align 8 ; 7 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.WasmEdge::LLVM::Message", align 8 ; 6 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15, !noalias !146
  store ptr null, ptr %7, align 8, !tbaa !29, !noalias !146
  %i.a = call ptr @LLVMOrcCreateLLJIT(ptr noundef nonnull %7, ptr noundef null) #15, !noalias !146 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  %i.b = load ptr, ptr %7, align 8, !tbaa !16, !noalias !146 ; 5 uses
  br i1 %.not.i, label %bb.b, label %_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4LLVM8OrcLLJITENS3_5ErrorELb0ELb0EED2Ev.exit

_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4LLVM8OrcLLJITENS3_5ErrorELb0ELb0EED2Ev.exit: ; preds = %bb.a
  %i.c = call ptr @LLVMOrcDisposeLLJIT(ptr noundef %i.b) #15, !noalias !146 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !146
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.d = call ptr @LLVMGetErrorMessage(ptr noundef nonnull %i.a) #15, !noalias !147 ; 3 uses
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #15
  store i64 %i.e, ptr %8, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.d, ptr %i.f, align 8
  %i.g = call noundef ptr @_ZN6spdlog18default_logger_rawEv() #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJSt17basic_string_viewIcSt11char_traitsIcEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.g, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.1, i64 2, ptr noundef nonnull align 8 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @LLVMDisposeErrorMessage(ptr noundef nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  store i8 0, ptr %0, align 8, !tbaa !150
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1038, ptr %i.h, align 8, !tbaa !31
  call void @LLVMConsumeError(ptr noundef null) #15
  br label %bb.n

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %7, align 8, !tbaa !16, !noalias !146
  %i.i = call ptr @LLVMOrcDisposeLLJIT(ptr noundef null) #15, !noalias !146 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !146
  %i.j = call ptr @LLVMOrcDisposeLLJIT(ptr noundef null) #15 ; 0 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !152    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !154, !noalias !155
  store ptr null, ptr %i.k, align 8, !tbaa !154, !noalias !155
  %i.n = call ptr @LLVMOrcCreateNewThreadSafeContextFromLLVMContext(ptr noundef %i.m) #15, !noalias !155 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 130
  %i.p = load atomic i8, ptr %i.o monotonic, align 2, !range !156, !noundef !157
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  store ptr null, ptr %9, align 8, !tbaa !160, !alias.scope !158
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !163, !noalias !158
  %i.s = call i32 @LLVMPrintModuleToFile(ptr noundef %i.r, ptr noundef nonnull @.str.4, ptr noundef nonnull align 8 %9) #15 ; 0 uses
  %i.t = load ptr, ptr %9, align 8, !tbaa !160
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = call noundef ptr @_ZN6spdlog18default_logger_rawEv() #15 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.w = load atomic i32, ptr %i.v monotonic, align 4
  %i.x = icmp slt i32 %i.w, 5                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.z = call noundef zeroext i1 @_ZNK6spdlog7details10backtracer7enabledEv(ptr noundef nonnull align 8 dereferenceable(104) %i.y) #15 ; 2 uses
  %or.cond.i.i.i.i = or i1 %i.x, %i.z
  br i1 %or.cond.i.i.i.i, label %bb.e, label %_ZN6spdlog5errorISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !49
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !63
  call void @_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt3v1117basic_string_viewIcEENS_5level10level_enumES6_(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, ptr %i.ab, i64 %i.ad, i32 noundef 4, ptr nonnull @.str.5, i64 24) #15
  call void @_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb(ptr noundef nonnull align 8 dereferenceable(208) %i.u, ptr noundef nonnull align 8 dereferenceable(96) %4, i1 noundef zeroext %i.x, i1 noundef zeroext %i.z) #15
end_hunk_0
