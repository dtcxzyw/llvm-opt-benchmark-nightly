inline.NumInlined: 632
inline.NumDeleted: 462
begin_hunk_0
%"class.llvh::raw_ostream.base" = type <{ ptr, ptr, ptr, ptr, i32 }>
%"class.hermes::hbc::BytecodeSerializer" = type { ptr, ptr, %"struct.hermes::BytecodeGenerationOptions", i64, i8, i32, i32, i32, %"class.llvh::SHA1" }
%"struct.hermes::BytecodeGenerationOptions" = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, [3 x i8] }>
%"class.llvh::SHA1" = type { %struct.anon, [5 x i32] }
%struct.anon = type { %union.anon.62, [5 x i32], i32, i8 }
%union.anon.62 = type { [16 x i32] }
%"struct.std::array" = type { [20 x i8] }
%"class.llvh::raw_string_ostream" = type { %"class.llvh::raw_ostream.base", ptr }

$_ZN6hermes18SourceErrorManagerD2Ev = comdat any

$_ZN6hermes9SourceMapD2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN4llvh9SourceMgrD2Ev = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_ = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E = comdat any

$_ZN6hermes3hbc14BytecodeModuleD2Ev = comdat any

$_ZNSt6vectorISt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EESaIS6_EED2Ev = comdat any

$_ZNKSt14default_deleteIN6hermes3hbc19LazyCompilationDataEEclEPS2_ = comdat any

$_ZNK6hermes3hbc14BCProviderBase11getEpilogueEv = comdat any

$_ZNK6hermes3hbc14BCProviderBase13getSourceHashEv = comdat any

$_ZN6hermes3hbc14BCProviderBaseD2Ev = comdat any

$_ZN6hermes3hbc14BCProviderBaseD0Ev = comdat any

$_ZN6hermes3hbc14BCProviderBase11startWarmupEh = comdat any

$_ZN6hermes3hbc14BCProviderBase7madviseENS_8oscompat7MAdviceE = comdat any

$_ZN6hermes3hbc14BCProviderBase27adviseStringTableSequentialEv = comdat any

$_ZN6hermes3hbc14BCProviderBase23adviseStringTableRandomEv = comdat any

$_ZN6hermes3hbc14BCProviderBase19willNeedStringTableEv = comdat any

$_ZN6hermes3hbc14BCProviderBase22startPageAccessTrackerEv = comdat any

$_ZN6hermes3hbc14BCProviderBase20getPageAccessTrackerEv = comdat any

$_ZNK6hermes3hbc14BCProviderBase12getRawBufferEv = comdat any

$_ZTVN6hermes3hbc14BCProviderBaseE = comdat any

@.str = private unnamed_addr constant [37 x i8] c"Input source must be zero-terminated\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Input sourcemap must be zero-terminated\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to parse source map:\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Unknown compilation error\00", align 1
@_ZZ19hermesGetPropertiesE5propsB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZGVZ19hermesGetPropertiesE5propsB5cxx11 = internal global i64 0, align 8
@__dso_handle = external hidden global i8
@__const.main.map = private unnamed_addr constant [422 x i8] c"\0A      {\0A        \22version\22: 3,\0A        \22file\22: \22x.js\22,\0A        \22sourceRoot\22: \22\22,\0A        \22sources\22: [\0A          \22test.js\22\0A        ],\0A        \22names\22: [],\0A        \22mappings\22: \22AAKA,SAAS,OAAO,CAAC,MAAc;IAC3B,OAAO,SAAS,GAAG,MAAM,CAAC,SAAS,GAAG,GAAG,GAAG,MAAM,CAAC,QAAQ,CAAC;AAChE,CAAC;AAED,IAAI,IAAI,GAAG,EAAE,SAAS,EAAE,MAAM,EAAE,QAAQ,EAAE,MAAM,EAAE,CAAC;AACnD,OAAO,CAAC,GAAG,CAAC,OAAO,CAAC,IAAI,CAAC,CAAC,CAAC\22\0A      }\0A    \00", align 16
@_ZZ4mainE4src1 = internal constant [21 x i8] c"var x = 1; print(x);\00", align 16
@.str.5 = private unnamed_addr constant [5 x i8] c"x.js\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Generated \00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c" bytecode bytes\0A\00", align 1
@_ZZ4mainE4src2 = internal constant [14 x i8] c"var x = 1 + ;\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Error \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"<source map>\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVN4llvh19raw_svector_ostreamE = external unnamed_addr constant { [14 x ptr] }, align 8
@_ZTVN6hermes3hbc14BCProviderBaseE = linkonce_odr hidden unnamed_addr constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr null, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK6hermes3hbc14BCProviderBase11getEpilogueEv, ptr @_ZNK6hermes3hbc14BCProviderBase13getSourceHashEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN6hermes3hbc14BCProviderBaseD2Ev, ptr @_ZN6hermes3hbc14BCProviderBaseD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN6hermes3hbc14BCProviderBase11startWarmupEh, ptr @_ZN6hermes3hbc14BCProviderBase7madviseENS_8oscompat7MAdviceE, ptr @_ZN6hermes3hbc14BCProviderBase27adviseStringTableSequentialEv, ptr @_ZN6hermes3hbc14BCProviderBase23adviseStringTableRandomEv, ptr @_ZN6hermes3hbc14BCProviderBase19willNeedStringTableEv, ptr @_ZN6hermes3hbc14BCProviderBase22startPageAccessTrackerEv, ptr @_ZN6hermes3hbc14BCProviderBase20getPageAccessTrackerEv, ptr @_ZNK6hermes3hbc14BCProviderBase12getRawBufferEv] }, comdat, align 8
@.str.11 = private unnamed_addr constant [24 x i8] c"{ \22BYTECODE_ALIGNMENT\22:\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c", \22HEADER_SIZE\22:\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c", \22VERSION\22:\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c", \22MAGIC\22: [\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c", \22LENGTH_OFFSET\22:\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@_ZTVN4llvh18raw_string_ostreamE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZTVN6hermes6BufferE = external unnamed_addr constant { [4 x ptr] }, align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden void @hermesCompileResult_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN4llvh11SmallVectorIcLj0EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.c) #17
  br label %_ZN4llvh11SmallVectorIcLj0EED2Ev.exit.i

_ZN4llvh11SmallVectorIcLj0EED2Ev.exit.i:          ; preds = %bb.c, %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN13CompileResultD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvh11SmallVectorIcLj0EED2Ev.exit.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !16
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #18
  br label %_ZN13CompileResultD2Ev.exit

_ZN13CompileResultD2Ev.exit:                      ; preds = %_ZN4llvh11SmallVectorIcLj0EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #18
  br label %bb.d

bb.d:                                             ; preds = %_ZN13CompileResultD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @hermesCompileResult_getError(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @hermesCompileResult_getBytecodeAddr(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i64 0, 4294967296) i64 @hermesCompileResult_getBytecodeSize(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18
  %i.c = zext i32 %i.b to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.b ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @hermesCompileToBytecode(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.llvh::MemoryBufferRef", align 8 ; 7 uses
  %6 = alloca %"class.hermes::SourceErrorManager", align 8 ; 6 uses
  %7 = alloca %"class.hermes::SimpleDiagHandlerRAII", align 8 ; 5 uses
  %8 = alloca %"class.std::unique_ptr.2", align 8 ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"struct.hermes::hbc::CompileFlags", align 4 ; 14 uses
  %12 = alloca %"struct.std::pair", align 8       ; 10 uses
  %13 = alloca %"class.std::unique_ptr.54", align 8 ; 3 uses
  %14 = alloca %"class.std::unique_ptr.2", align 8 ; 3 uses
  %15 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 9 uses
  %16 = alloca %"class.hermes::hbc::BytecodeSerializer", align 8 ; 17 uses
  %17 = alloca %"struct.std::array", align 1      ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19, !noalias !19 ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !noalias !19
  store ptr %i.b, ptr %i.a, align 8, !tbaa !22, !noalias !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store i64 0, ptr %i.c, align 8, !tbaa !17, !noalias !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.e, ptr %i.d, align 8, !tbaa !8, !noalias !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 0, ptr %i.f, align 8, !tbaa !18, !noalias !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 0, ptr %i.g, align 4, !tbaa !23, !noalias !19
  %i.h = add i64 %1, -1                           ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !16
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %bb.b, label %18

18:                                               ; preds = %bb.a
  %19 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str, i64 noundef 36) #17 ; 0 uses
  br label %_ZNSt10unique_ptrI13CompileResultSt14default_deleteIS0_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %.not17 = icmp eq ptr %3, null
  br i1 %.not17, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %3, align 1, !tbaa !16
  %.not18 = icmp eq i8 %i.k, 0
  br i1 %.not18, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %4, -1                           ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !16
  %.not19 = icmp eq i8 %i.n, 0
  br i1 %.not19, label %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EEaSEOS4_.exit, label %20

20:                                               ; preds = %bb.d
  %21 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.1, i64 noundef 39) #17 ; 0 uses
  br label %_ZNSt10unique_ptrI13CompileResultSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @_ZN6hermes18SourceErrorManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(464) %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @_ZN6hermes21SimpleDiagHandlerRAIIC1ERNS_18SourceErrorManagerE(ptr noundef nonnull align 8 dereferenceable(388) %7, ptr noundef nonnull align 8 dereferenceable(464) %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8, !tbaa !24, !noalias !25
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.l, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !28, !noalias !25
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.10, ptr %i.o, align 8, !tbaa !24, !noalias !25
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 12, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !28, !noalias !25
  call void @_ZN6hermes15SourceMapParser5parseEN4llvh15MemoryBufferRefERNS_18SourceErrorManagerE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %8, ptr noundef nonnull byval(%"class.llvh::MemoryBufferRef") align 8 %5, ptr noundef nonnull align 8 dereferenceable(464) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.p = load ptr, ptr %8, align 8, !tbaa !29     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %.not75 = icmp eq ptr %i.p, null                ; 2 uses
  br i1 %.not75, label %bb.e, label %bb.l

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EEaSEOS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @_ZNK6hermes17SimpleDiagHandler14getErrorStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(360) %7) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.q = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.2, i64 noundef 27) #17, !noalias !31 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 9 uses
  store ptr %i.r, ptr %9, align 8, !tbaa !22, !alias.scope !31
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !11   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !17   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  store ptr %i.s, ptr %9, align 8, !tbaa !11, !alias.scope !31
  %i.z = load i64, ptr %i.t, align 8, !tbaa !16
  store i64 %i.z, ptr %i.r, align 8, !tbaa !16, !alias.scope !31
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !17
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = phi i64 [ %i.w, %bb.f ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !17, !alias.scope !31
  store ptr %i.t, ptr %i.q, align 8, !tbaa !11
  store i64 0, ptr %i.ab, align 8, !tbaa !17
  store i8 0, ptr %i.t, align 8, !tbaa !16
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !11  ; 6 uses
  %i.ae = icmp eq ptr %i.ad, %i.b
  %i.af = load ptr, ptr %9, align 8, !tbaa !11    ; 5 uses
  %i.ag = icmp eq ptr %i.af, %i.r                 ; 2 uses
  br i1 %i.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  br i1 %i.ag, label %bb.g, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  br i1 %i.ag, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ah = load i64, ptr %i.ac, align 8, !tbaa !17 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  switch i64 %i.ah, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.aj = load i8, ptr %i.af, align 1, !tbaa !16
  store i8 %i.aj, ptr %i.ad, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.ak = load i64, ptr %i.ac, align 8, !tbaa !17 ; 2 uses
  store i64 %i.ak, ptr %i.c, align 8, !tbaa !17
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  store i8 0, ptr %i.am, align 1, !tbaa !16
  %.pre.i22 = load ptr, ptr %9, align 8, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.af, ptr %i.a, align 8, !tbaa !11
  %i.an = load <2 x i64>, ptr %i.ac, align 8, !tbaa !16
  store <2 x i64> %i.an, ptr %i.c, align 8, !tbaa !16
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !16
  store ptr %i.af, ptr %i.a, align 8, !tbaa !11
  %i.ap = load <2 x i64>, ptr %i.ac, align 8, !tbaa !16
  store <2 x i64> %i.ap, ptr %i.c, align 8, !tbaa !16
  %.not.i21 = icmp eq ptr %i.ad, null
  br i1 %.not.i21, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ad, ptr %9, align 8, !tbaa !11
  store i64 %i.ao, ptr %i.r, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.r, ptr %9, align 8, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %i.aq = phi ptr [ %i.ad, %bb.j ], [ %i.r, %bb.k ], [ %.pre.i22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.ac, align 8, !tbaa !17
  store i8 0, ptr %i.aq, align 1, !tbaa !16
  %i.ar = load ptr, ptr %9, align 8, !tbaa !11    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.r
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.at = load i64, ptr %i.r, align 8, !tbaa !16
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  %i.av = load ptr, ptr %10, align 8, !tbaa !11   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !16
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EEaSEOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %.sroa.049.0 = phi ptr [ %i.a, %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EEaSEOS4_.exit ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ] ; 7 uses
  call void @_ZN6hermes21SimpleDiagHandlerRAIID1Ev(ptr noundef nonnull align 8 dereferenceable(388) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @_ZN6hermes18SourceErrorManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(464) dereferenceable(464) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br i1 %.not75, label %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit33, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.c, %bb.b
  %.sroa.046.0 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.p, %bb.l ]
  %.sroa.049.1 = phi ptr [ %i.a, %bb.b ], [ %i.a, %bb.c ], [ %.sroa.049.0, %bb.l ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.ba, align 1, !tbaa !34
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.bb, align 2, !tbaa !42
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 65536, ptr %i.bc, align 4, !tbaa !43
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 160, ptr %i.bd, align 4, !tbaa !44
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i8 0, ptr %i.be, align 4, !tbaa !45
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 14
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.bf, align 2, !tbaa !46
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 18
  store i8 0, ptr %i.bg, align 2, !tbaa !47
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 19
  store i8 1, ptr %i.bh, align 1, !tbaa !48
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i8 0, ptr %i.bi, align 4, !tbaa !49
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 12, ptr %i.bj, align 4, !tbaa !50
  store i8 1, ptr %11, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.bk = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19, !noalias !52 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6hermes6BufferE, i64 16), ptr %i.bk, align 8, !tbaa !55, !noalias !52
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %0, ptr %i.bl, align 8, !tbaa !57, !noalias !52
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 %i.h, ptr %i.bm, align 8, !tbaa !59, !noalias !52
  store ptr %i.bk, ptr %13, align 8, !tbaa !60, !alias.scope !52
  %.not20 = icmp eq ptr %2, null
  %i.bn = select i1 %.not20, ptr @.str.3, ptr %2  ; 2 uses
  %i.bo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bn) #20
  %i.bp = ptrtoint ptr %.sroa.046.0 to i64
  store i64 %i.bp, ptr %14, align 8, !tbaa !29
  call void @_ZN6hermes3hbc17BCProviderFromSrc23createBCProviderFromSrcB5cxx11ESt10unique_ptrINS_6BufferESt14default_deleteIS3_EEN4llvh9StringRefES2_INS_9SourceMapES4_IS9_EERKNS0_12CompileFlagsE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %12, ptr noundef nonnull %13, ptr nonnull %i.bn, i64 %i.bo, ptr noundef nonnull %14, ptr noundef nonnull align 4 dereferenceable(28) %11) #17
  %i.bq = load ptr, ptr %14, align 8, !tbaa !29   ; 3 uses
  %.not.i27 = icmp eq ptr %i.bq, null
  br i1 %.not.i27, label %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit29, label %_ZNKSt14default_deleteIN6hermes9SourceMapEEclEPS1_.exit.i28

_ZNKSt14default_deleteIN6hermes9SourceMapEEclEPS1_.exit.i28: ; preds = %bb.m
  call void @_ZN6hermes9SourceMapD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.bq) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef 104) #18
  br label %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit29

_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit29: ; preds = %bb.m, %_ZNKSt14default_deleteIN6hermes9SourceMapEEclEPS1_.exit.i28
  %i.br = load ptr, ptr %13, align 8, !tbaa !60   ; 3 uses
  %.not.i30 = icmp eq ptr %i.br, null
  br i1 %.not.i30, label %_ZNSt10unique_ptrIN6hermes6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6hermes6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6hermes6BufferEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit29
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !55
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.br) #17, !inline_history !62
  br label %_ZNSt10unique_ptrIN6hermes6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit29, %_ZNKSt14default_deleteIN6hermes6BufferEEclEPS1_.exit.i
  %i.bv = load ptr, ptr %12, align 8, !tbaa !63
  %.not76 = icmp eq ptr %i.bv, null
  br i1 %.not76, label %bb.n, label %bb.q

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN6hermes6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !17
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.049.1, ptr noundef nonnull align 8 dereferenceable(32) %i.bz) #17
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.049.1, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !17
  %i.cc = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.049.1, i64 noundef 0, i64 noundef %i.cb, ptr noundef nonnull @.str.4, i64 noundef 25) #17 ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %_ZNSt10unique_ptrIN6hermes6BufferESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.049.1, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 1, ptr %i.ce, align 8, !tbaa !65
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %15, align 8, !tbaa !55
  %i.cg = getelementptr inbounds nuw i8, ptr %15, i64 40
  store ptr %i.cd, ptr %i.cg, align 8, !tbaa !68
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef null, i64 noundef 0, i32 noundef 0) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  store ptr %15, ptr %16, align 8, !tbaa !70
  %i.ch = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 11, ptr %i.ch, align 8, !tbaa !72
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 20
  store i8 0, ptr %.sroa.462.0..sroa_idx, align 4, !tbaa !46
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 21
  store i8 0, ptr %.sroa.563.0..sroa_idx, align 1, !tbaa !46
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 22
  store i8 1, ptr %.sroa.664.0..sroa_idx, align 2, !tbaa !46
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 23
  store i32 0, ptr %.sroa.765.0..sroa_idx, align 1
  %.sroa.967.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 28
  store i32 0, ptr %.sroa.967.0..sroa_idx, align 4, !tbaa !4
  %.sroa.1068.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i8 0, ptr %.sroa.1068.0..sroa_idx, align 8, !tbaa !46
  %i.ci = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i64 0, ptr %i.ci, align 8, !tbaa !73
  %i.cj = getelementptr inbounds nuw i8, ptr %16, i64 48
  store i8 1, ptr %i.cj, align 8, !tbaa !79
  %i.ck = getelementptr inbounds nuw i8, ptr %16, i64 52
  store i32 0, ptr %i.ck, align 4, !tbaa !80
  %i.cl = getelementptr inbounds nuw i8, ptr %16, i64 56
  store i32 0, ptr %i.cl, align 8, !tbaa !81
  %i.cm = getelementptr inbounds nuw i8, ptr %16, i64 60
  store i32 0, ptr %i.cm, align 4, !tbaa !82
  %i.cn = getelementptr inbounds nuw i8, ptr %16, i64 64
  call void @_ZN4llvh4SHA14initEv(ptr noundef nonnull align 4 dereferenceable(112) %i.cn) #17
  %i.co = load ptr, ptr %12, align 8, !tbaa !63
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 280
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  call void @_ZN4llvh4SHA14hashENS_8ArrayRefIhEE(ptr dead_on_unwind nonnull writable sret(%"struct.std::array") align 1 %17, ptr nonnull %0, i64 %i.h) #17
  call void @_ZN6hermes3hbc18BytecodeSerializer9serializeERNS0_14BytecodeModuleERKSt5arrayIhLm20EE(ptr noundef nonnull align 8 dereferenceable(176) %16, ptr noundef nonnull align 8 dereferenceable(513) %i.cq, ptr noundef nonnull align 1 dereferenceable(20) %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.q
  %i.cr = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !11 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.r
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !16
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.cx = load ptr, ptr %12, align 8, !tbaa !63   ; 6 uses
  %.not.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i, label %_ZNSt4pairISt10unique_ptrIN6hermes3hbc17BCProviderFromSrcESt14default_deleteIS3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 280
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !83 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6hermes3hbc14BytecodeModuleESt14default_deleteIS2_EED2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6hermes3hbc14BytecodeModuleEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6hermes3hbc14BytecodeModuleEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.s
  call void @_ZN6hermes3hbc14BytecodeModuleD2Ev(ptr noundef nonnull align 8 dead_on_return(513) dereferenceable(513) %i.cz) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef 520) #18
  br label %_ZNSt10unique_ptrIN6hermes3hbc14BytecodeModuleESt14default_deleteIS2_EED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrIN6hermes3hbc14BytecodeModuleESt14default_deleteIS2_EED2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6hermes3hbc14BytecodeModuleEEclEPS2_.exit.i.i.i.i.i, %bb.s
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN6hermes3hbc14BCProviderBaseE, i64 16), ptr %i.cx, align 8, !tbaa !55
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 248
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !11 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 264 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNKSt14default_deleteIN6hermes3hbc17BCProviderFromSrcEEclEPS2_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6hermes3hbc14BytecodeModuleESt14default_deleteIS2_EED2Ev.exit.i.i.i.i
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !16
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #18, !inline_history !84
  br label %_ZNKSt14default_deleteIN6hermes3hbc17BCProviderFromSrcEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN6hermes3hbc17BCProviderFromSrcEEclEPS2_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6hermes3hbc14BytecodeModuleESt14default_deleteIS2_EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef 312) #18
  br label %_ZNSt4pairISt10unique_ptrIN6hermes3hbc17BCProviderFromSrcESt14default_deleteIS3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZNSt4pairISt10unique_ptrIN6hermes3hbc17BCProviderFromSrcESt14default_deleteIS3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt14default_deleteIN6hermes3hbc17BCProviderFromSrcEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %_ZNSt10unique_ptrI13CompileResultSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit33: ; preds = %bb.l
  %.not.i34 = icmp eq ptr %.sroa.049.0, null
  br i1 %.not.i34, label %_ZNSt10unique_ptrI13CompileResultSt14default_deleteIS0_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit33
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.049.0, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !8  ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.049.0, i64 48
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZN4llvh11SmallVectorIcLj0EED2Ev.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef %i.dh) #17
  br label %_ZN4llvh11SmallVectorIcLj0EED2Ev.exit.i.i.i

_ZN4llvh11SmallVectorIcLj0EED2Ev.exit.i.i.i:      ; preds = %bb.u, %bb.t
  %i.dk = load ptr, ptr %.sroa.049.0, align 8, !tbaa !11 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.049.0, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNKSt14default_deleteI13CompileResultEclEPS0_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN4llvh11SmallVectorIcLj0EED2Ev.exit.i.i.i
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !16
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #18
  br label %_ZNKSt14default_deleteI13CompileResultEclEPS0_.exit.i

_ZNKSt14default_deleteI13CompileResultEclEPS0_.exit.i: ; preds = %_ZN4llvh11SmallVectorIcLj0EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.049.0, i64 noundef 48) #18
  br label %_ZNSt10unique_ptrI13CompileResultSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI13CompileResultSt14default_deleteIS0_EED2Ev.exit: ; preds = %18, %20, %_ZNSt4pairISt10unique_ptrIN6hermes3hbc17BCProviderFromSrcESt14default_deleteIS3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit33, %_ZNKSt14default_deleteI13CompileResultEclEPS0_.exit.i
  %.274 = phi ptr [ %i.a, %_ZNKSt14default_deleteI13CompileResultEclEPS0_.exit.i ], [ %i.a, %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit33 ], [ %.sroa.049.1, %_ZNSt4pairISt10unique_ptrIN6hermes3hbc17BCProviderFromSrcESt14default_deleteIS3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit ], [ %i.a, %20 ], [ %i.a, %18 ]
  ret ptr %.274
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @_ZN6hermes18SourceErrorManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(464)) unnamed_addr #4

declare void @_ZN6hermes21SimpleDiagHandlerRAIIC1ERNS_18SourceErrorManagerE(ptr noundef nonnull align 8 dereferenceable(388), ptr noundef nonnull align 8 dereferenceable(464)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @_ZNK6hermes17SimpleDiagHandler14getErrorStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZN6hermes21SimpleDiagHandlerRAIID1Ev(ptr noundef nonnull align 8 dereferenceable(388)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes18SourceErrorManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(464) dereferenceable(464) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %1 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %2 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN6hermes18SourceErrorManager11MessageDataEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyIN6hermes18SourceErrorManager11MessageDataEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyIN6hermes18SourceErrorManager11MessageDataEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !16
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #18
  br label %_ZSt8_DestroyIN6hermes18SourceErrorManager11MessageDataEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6hermes18SourceErrorManager11MessageDataEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !89

_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6hermes18SourceErrorManager11MessageDataEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !85
  br label %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exit.i

_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exitthread-pre-split.i, %bb.a
  %i.l = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !91
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #18
  br label %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit

_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exit.i, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !92   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !95   ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN6hermes18SourceErrorManager15BufferedMessageEEvPT_.exit.i.i.i
  %.05.i.i.i3 = phi ptr [ %i.ab, %_ZSt8_DestroyIN6hermes18SourceErrorManager15BufferedMessageEEvPT_.exit.i.i.i ], [ %i.s, %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !11   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 48 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZSt8_DestroyIN6hermes18SourceErrorManager15BufferedMessageEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4: ; preds = %.lr.ph.i.i.i2
  %i.z = load i64, ptr %i.x, align 8, !tbaa !16
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #18
  br label %_ZSt8_DestroyIN6hermes18SourceErrorManager15BufferedMessageEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6hermes18SourceErrorManager15BufferedMessageEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 72 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.ab, %i.u
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !96

_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6hermes18SourceErrorManager15BufferedMessageEEvPT_.exit.i.i.i
  %.pr.i6 = load ptr, ptr %i.r, align 8, !tbaa !92
  br label %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exit.i

_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exitthread-pre-split.i, %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit
  %i.ac = phi ptr [ %.pr.i6, %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exitthread-pre-split.i ], [ %i.s, %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i7 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i7, label %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !97
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #18
  br label %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EED2Ev.exit

_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exit.i, %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !98 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  %.pre1.i = load ptr, ptr %i.ai, align 8, !tbaa !101 ; 3 uses
  br i1 %i.al, label %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EED2Ev.exit
  %i.am = zext i32 %i.ak to i64
  %.idx.i.i = mul nuw nsw i64 %i.am, 40
  %i.an = getelementptr inbounds nuw i8, ptr %.pre1.i, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %.lr.ph.preheader.i.i
  %.010.i.i = phi ptr [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pre1.i, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.ao = load i32, ptr %.010.i.i, align 4, !tbaa !4
  %switch.i.i = icmp ugt i32 %i.ao, -3
  br i1 %switch.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !11 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 24 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !16
  %i.au = add i64 %i.at, 1
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %.lr.ph.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, %i.an
  br i1 %.not.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !102

_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.ai, align 8, !tbaa !101
  br label %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit

_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit: ; preds = %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EED2Ev.exit, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i
  %i.aw = phi ptr [ %.pre.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i ], [ %.pre1.i, %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EED2Ev.exit ]
  tail call void @_ZdlPv(ptr noundef %i.aw) #17
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !98 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  %.pre1.i9 = load ptr, ptr %i.ax, align 8, !tbaa !101 ; 3 uses
  br i1 %i.ba, label %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit21, label %.lr.ph.preheader.i.i10

.lr.ph.preheader.i.i10:                           ; preds = %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit
  %i.bb = zext i32 %i.az to i64
  %.idx.i.i11 = mul nuw nsw i64 %i.bb, 40
  %i.bc = getelementptr inbounds nuw i8, ptr %.pre1.i9, i64 %.idx.i.i11
  br label %.lr.ph.i.i12

.lr.ph.i.i12:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16, %.lr.ph.preheader.i.i10
  %.010.i.i13 = phi ptr [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16 ], [ %.pre1.i9, %.lr.ph.preheader.i.i10 ] ; 4 uses
  %i.bd = load i32, ptr %.010.i.i13, align 4, !tbaa !4
  %switch.i.i14 = icmp ugt i32 %i.bd, -3
  br i1 %switch.i.i14, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i12
  %i.be = getelementptr inbounds nuw i8, ptr %.010.i.i13, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !11 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.010.i.i13, i64 24 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15: ; preds = %bb.e
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !16
  %i.bj = add i64 %i.bi, 1
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15, %.lr.ph.i.i12
  %i.bk = getelementptr inbounds nuw i8, ptr %.010.i.i13, i64 40 ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.bk, %i.bc
  br i1 %.not.i.i17, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i18, label %.lr.ph.i.i12, !llvm.loop !102

_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16
  %.pre.i19 = load ptr, ptr %i.ax, align 8, !tbaa !101
  br label %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit21
end_hunk_0
