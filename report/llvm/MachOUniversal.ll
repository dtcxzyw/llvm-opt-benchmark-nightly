Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachOUniversal?download=true
inline.NumInlined: 579
inline.NumDeleted: 238
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::Expected" = type <{ %union.anon, i8, [7 x i8] }>
%union.anon = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.llvm::MemoryBufferRef" = type { %"class.llvm::StringRef", %"class.llvm::StringRef" }
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.llvm::Expected.10" = type <{ %union.anon.11, i8, [7 x i8] }>
%union.anon.11 = type { %"class.std::unique_ptr.12" }
%"class.std::unique_ptr.12" = type { %"struct.std::__uniq_ptr_data.13" }
%"struct.std::__uniq_ptr_data.13" = type { %"class.std::__uniq_ptr_impl.14" }
%"class.std::__uniq_ptr_impl.14" = type { %"class.std::tuple.15" }
%"class.std::tuple.15" = type { %"struct.std::_Tuple_impl.16" }
%"struct.std::_Tuple_impl.16" = type { %"struct.std::_Head_base.19" }
%"struct.std::_Head_base.19" = type { ptr }
%"class.llvm::Expected.21" = type <{ %union.anon.22, i8, [7 x i8] }>
%union.anon.22 = type { %"class.std::unique_ptr.23" }
%"class.std::unique_ptr.23" = type { %"struct.std::__uniq_ptr_data.24" }
%"struct.std::__uniq_ptr_data.24" = type { %"class.std::__uniq_ptr_impl.25" }
%"class.std::__uniq_ptr_impl.25" = type { %"class.std::tuple.26" }
%"class.std::tuple.26" = type { %"struct.std::_Tuple_impl.27" }
%"struct.std::_Tuple_impl.27" = type { %"struct.std::_Head_base.30" }
%"struct.std::_Head_base.30" = type { ptr }
%"class.llvm::Expected.32" = type <{ %union.anon.33, i8, [7 x i8] }>
%union.anon.33 = type { %"class.std::unique_ptr.34" }
%"class.std::unique_ptr.34" = type { %"struct.std::__uniq_ptr_data.35" }
%"struct.std::__uniq_ptr_data.35" = type { %"class.std::__uniq_ptr_impl.36" }
%"class.std::__uniq_ptr_impl.36" = type { %"class.std::tuple.37" }
%"class.std::tuple.37" = type { %"struct.std::_Tuple_impl.38" }
%"struct.std::_Tuple_impl.38" = type { %"struct.std::_Head_base.41" }
%"struct.std::_Head_base.41" = type { ptr }
%"class.llvm::Error" = type { ptr }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.llvm::object::MachOUniversalBinary::ObjectForArch" = type { ptr, i32, %"struct.llvm::MachO::fat_arch", %"struct.llvm::MachO::fat_arch_64" }
%"struct.llvm::MachO::fat_arch" = type { i32, i32, i32, i32, i32 }
%"struct.llvm::MachO::fat_arch_64" = type { i32, i32, i64, i64, i32, i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.46 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.46 = type { i64, [8 x i8] }
%"class.llvm::Expected.43" = type <{ %union.anon.44, i8, [7 x i8] }>
%union.anon.44 = type { %"class.llvm::object::MachOUniversalBinary::ObjectForArch" }
%"class.llvm::object::MachOUniversalBinary::object_iterator" = type { %"class.llvm::object::MachOUniversalBinary::ObjectForArch" }
%"class.llvm::Triple" = type { %"class.std::__cxx11::basic_string", i32, i32, i32, i32, i32, i32 }
%"class.llvm::iterator_range" = type { %"class.llvm::object::MachOUniversalBinary::object_iterator", %"class.llvm::object::MachOUniversalBinary::object_iterator" }

$_ZN4llvmplERKNS_5TwineES2_ = comdat any

$_ZNK4llvm6object20MachOUniversalBinary13ObjectForArch15getArchFlagNameB5cxx11Ev = comdat any

$_ZN4llvm6object20MachOUniversalBinaryD0Ev = comdat any

$_ZN4llvm6object6Binary11initContentEv = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [87 x i8] c"MachOUniversalBinary::ObjectForArch::getAsObjectFile() called when Parent is a nullptr\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"MachOUniversalBinary::ObjectForArch::getAsIRObject() called when Parent is a nullptr\00", align 1
@.str.2 = private unnamed_addr constant [84 x i8] c"MachOUniversalBinary::ObjectForArch::getAsArchive() called when Parent is a nullptr\00", align 1
@_ZTVN4llvm6object20MachOUniversalBinaryE = unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZN4llvm6object6BinaryD2Ev, ptr @_ZN4llvm6object20MachOUniversalBinaryD0Ev, ptr @_ZN4llvm6object6Binary11initContentEv, ptr @_ZN4llvm6object20MachOUniversalBinary6anchorEv] }, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"File too small to be a Mach-O universal file\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"contains zero architecture types\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"bad magic number\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"fat_arch\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"_64\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c" structs would extend past the end of the file\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"offset plus size of cputype (\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c") cpusubtype (\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c") extends past the end of the file\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"align (2^\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c") too large for cputype (\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c") (maximum 2^\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"offset: \00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c" for cputype (\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c") not aligned on it's alignment (2^\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"cputype (\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c") offset \00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c" overlaps universal headers\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"contains two of the same architecture (cputype (\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"))\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c") at offset \00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c" with a size of \00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c", overlaps cputype (\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"Unknown architecture named: \00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"fat file does not contain \00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"truncated or malformed fat file (\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

@_ZN4llvm6object20MachOUniversalBinary13ObjectForArchC1EPKS1_j = unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN4llvm6object20MachOUniversalBinary13ObjectForArchC2EPKS1_j
@_ZN4llvm6object20MachOUniversalBinaryC1ENS_15MemoryBufferRefERNS_5ErrorE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN4llvm6object20MachOUniversalBinaryC2ENS_15MemoryBufferRefERNS_5ErrorE

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm6object20MachOUniversalBinary13ObjectForArchC2EPKS1_j(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 12)) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %2, ptr %i.a, align 8, !tbaa !15
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.c = load i32, ptr %i.b, align 4, !tbaa !21
  %.not12 = icmp ult i32 %2, %i.c
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !14
  store i32 0, ptr %i.a, align 8, !tbaa !15
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.d = tail call { ptr, i64 } @_ZNK4llvm6object6Binary7getDataEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !22
  %i.h = icmp eq i32 %i.g, -889275714
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.j = zext i32 %2 to i64                       ; 2 uses
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = mul nuw nsw i64 %i.j, 20
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k ; 2 uses
  %.sroa.1235.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.1235.0.copyload37 = load i32, ptr %.sroa.1235.0..sroa_idx36, align 1
  %i.m = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.1235.0.copyload37)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load <4 x i32>, ptr %i.l, align 1
  %i.p = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.o)
  store <4 x i32> %i.p, ptr %i.n, align 4, !tbaa !23
  %.sroa.1235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.m, ptr %.sroa.1235.0..sroa_idx, align 4, !tbaa !23
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = shl nuw nsw i64 %i.j, 5
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.q ; 6 uses
  %.sroa.0.0.copyload13 = load i32, ptr %i.r, align 1
  %.sroa.6.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.sroa.6.0.copyload15 = load i32, ptr %.sroa.6.0..sroa_idx14, align 1
  %.sroa.8.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.8.0.copyload17 = load i64, ptr %.sroa.8.0..sroa_idx16, align 1
  %.sroa.10.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.10.0.copyload19 = load i64, ptr %.sroa.10.0..sroa_idx18, align 1
  %.sroa.12.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.12.0.copyload21 = load i32, ptr %.sroa.12.0..sroa_idx20, align 1
  %.sroa.14.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %.sroa.14.0.copyload23 = load i32, ptr %.sroa.14.0..sroa_idx22, align 1
  %i.s = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload13)
  %i.t = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.6.0.copyload15)
  %i.u = tail call noundef i64 @llvm.bswap.i64(i64 %.sroa.8.0.copyload17)
  %i.v = tail call noundef i64 @llvm.bswap.i64(i64 %.sroa.10.0.copyload19)
  %i.w = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.12.0.copyload21)
  %i.x = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.14.0.copyload23)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.s, ptr %i.y, align 8, !tbaa !23
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.t, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !23
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.u, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !24
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.v, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !24
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.w, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !23
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.x, ptr %.sroa.14.0..sroa_idx, align 4, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare { ptr, i64 } @_ZNK4llvm6object6Binary7getDataEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm6object20MachOUniversalBinary13ObjectForArch15getAsObjectFileEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str, i1 noundef zeroext true) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call { ptr, i64 } @_ZNK4llvm6object6Binary7getDataEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #14 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load i32, ptr %i.d, align 8, !tbaa !22
  %i.f = icmp eq i32 %i.e, -889275714
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !25
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !26
  %i.m = zext i32 %i.l to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load i64, ptr %i.q, align 8, !tbaa !28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi i64 [ %i.p, %bb.e ], [ %i.j, %bb.d ]
  %.sink19 = phi i64 [ %i.r, %bb.e ], [ %i.m, %bb.d ]
  %.0.in = phi ptr [ %i.n, %bb.e ], [ %i.g, %bb.d ]
  %i.s = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %.sroa.speculated4.i8 = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %.sink) ; 2 uses
  %i.t = sub i64 %i.s, %.sroa.speculated4.i8
  %.sroa.speculated.i9 = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %.sink19)
  %i.u = extractvalue { ptr, i64 } %i.b, 0
  %.sroa.012.0 = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.speculated4.i8
  %.0 = load i32, ptr %.0.in, align 4, !tbaa !23
  %i.v = tail call { ptr, i64 } @_ZNK4llvm6object6Binary11getFileNameEv(ptr noundef nonnull align 8 dereferenceable(48) %i.c) #14 ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.v, 0
  %i.x = extractvalue { ptr, i64 } %i.v, 1
  store ptr %.sroa.012.0, ptr %2, align 8, !tbaa !29
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.speculated.i9, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !24
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.w, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !29
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.x, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !15
  tail call void @_ZN4llvm6object10ObjectFile21createMachOObjectFileENS_15MemoryBufferRefEjjm(ptr dead_on_unwind writable sret(%"class.llvm::Expected") align 8 %0, ptr noundef nonnull byval(%"class.llvm::MemoryBufferRef") align 8 %2, i32 noundef %.0, i32 noundef %i.z, i64 noundef 0) #14
  ret void
}

; Function Attrs: noreturn
declare void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare { ptr, i64 } @_ZNK4llvm6object6Binary11getFileNameEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare void @_ZN4llvm6object10ObjectFile21createMachOObjectFileENS_15MemoryBufferRefEjjm(ptr dead_on_unwind writable sret(%"class.llvm::Expected") align 8, ptr noundef byval(%"class.llvm::MemoryBufferRef") align 8, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm6object20MachOUniversalBinary13ObjectForArch13getAsIRObjectERNS_11LLVMContextE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected.10") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.1, i1 noundef zeroext true) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call { ptr, i64 } @_ZNK4llvm6object6Binary7getDataEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #14 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load i32, ptr %i.d, align 8, !tbaa !22
  %i.f = icmp eq i32 %i.e, -889275714
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !25
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !26
  %i.l = zext i32 %i.k to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi i64 [ %i.n, %bb.e ], [ %i.i, %bb.d ]
  %.sink19 = phi i64 [ %i.p, %bb.e ], [ %i.l, %bb.d ]
  %i.q = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %.sroa.speculated4.i9 = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %.sink) ; 2 uses
  %i.r = sub i64 %i.q, %.sroa.speculated4.i9
  %.sroa.speculated.i10 = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %.sink19)
  %i.s = extractvalue { ptr, i64 } %i.b, 0
  %.sroa.013.0 = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.speculated4.i9
  %i.t = tail call { ptr, i64 } @_ZNK4llvm6object6Binary11getFileNameEv(ptr noundef nonnull align 8 dereferenceable(48) %i.c) #14 ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.t, 0
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  store ptr %.sroa.013.0, ptr %3, align 8, !tbaa !29
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.speculated.i10, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !24
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.u, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !29
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.v, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !24
  tail call void @_ZN4llvm6object12IRObjectFile6createENS_15MemoryBufferRefERNS_11LLVMContextE(ptr dead_on_unwind writable sret(%"class.llvm::Expected.10") align 8 %0, ptr noundef nonnull byval(%"class.llvm::MemoryBufferRef") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  ret void
}

declare void @_ZN4llvm6object12IRObjectFile6createENS_15MemoryBufferRefERNS_11LLVMContextE(ptr dead_on_unwind writable sret(%"class.llvm::Expected.10") align 8, ptr noundef byval(%"class.llvm::MemoryBufferRef") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm6object20MachOUniversalBinary13ObjectForArch12getAsArchiveEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected.21") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.2, i1 noundef zeroext true) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call { ptr, i64 } @_ZNK4llvm6object6Binary7getDataEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #14 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load i32, ptr %i.d, align 8, !tbaa !22
  %i.f = icmp eq i32 %i.e, -889275714
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !25
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !26
  %i.l = zext i32 %i.k to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi i64 [ %i.n, %bb.e ], [ %i.i, %bb.d ]
  %.sink18 = phi i64 [ %i.p, %bb.e ], [ %i.l, %bb.d ]
  %i.q = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %.sroa.speculated4.i8 = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %.sink) ; 2 uses
  %i.r = sub i64 %i.q, %.sroa.speculated4.i8
  %.sroa.speculated.i9 = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %.sink18)
  %i.s = extractvalue { ptr, i64 } %i.b, 0
  %.sroa.012.0 = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.speculated4.i8
  %i.t = tail call { ptr, i64 } @_ZNK4llvm6object6Binary11getFileNameEv(ptr noundef nonnull align 8 dereferenceable(48) %i.c) #14 ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.t, 0
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  store ptr %.sroa.012.0, ptr %2, align 8, !tbaa !29
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.speculated.i9, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !24
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.u, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !29
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.v, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !24
  tail call void @_ZN4llvm6object7Archive6createENS_15MemoryBufferRefE(ptr dead_on_unwind writable sret(%"class.llvm::Expected.21") align 8 %0, ptr noundef nonnull byval(%"class.llvm::MemoryBufferRef") align 8 %2) #14
  ret void
}

declare void @_ZN4llvm6object7Archive6createENS_15MemoryBufferRefE(ptr dead_on_unwind writable sret(%"class.llvm::Expected.21") align 8, ptr noundef byval(%"class.llvm::MemoryBufferRef") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm6object20MachOUniversalBinary6anchorEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm6object20MachOUniversalBinary6createENS_15MemoryBufferRefE(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.32") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly byval(%"class.llvm::MemoryBufferRef") align 8 captures(none) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  %2 = alloca %"class.llvm::Error", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr null, ptr %2, align 8, !tbaa !32
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #16 ; 4 uses
  call void @_ZN4llvm6object20MachOUniversalBinaryC1ENS_15MemoryBufferRefERNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull byval(%"class.llvm::MemoryBufferRef") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  %i.b = load ptr, ptr %2, align 8, !tbaa !32     ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8               ; 2 uses
  br i1 %.not, label %_ZNSt10unique_ptrIN4llvm6object20MachOUniversalBinaryESt14default_deleteIS2_EED2Ev.exit.thread, label %_ZNSt10unique_ptrIN4llvm6object20MachOUniversalBinaryESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm6object20MachOUniversalBinaryESt14default_deleteIS2_EED2Ev.exit.thread: ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.e = and i8 %i.d, -2
  store i8 %i.e, ptr %i.c, align 8
  store ptr %i.a, ptr %0, align 8, !tbaa !51
  br label %_ZN4llvm5ErrorD2Ev.exit1

_ZNSt10unique_ptrIN4llvm6object20MachOUniversalBinaryESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.f = or i8 %i.d, 1
  store i8 %i.f, ptr %i.c, align 8
  store ptr null, ptr %2, align 8, !tbaa !32, !noalias !52
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #14, !inline_history !49
  %.pre = load ptr, ptr %2, align 8, !tbaa !32    ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !51
  %i.j = icmp eq ptr %.pre, null
  br i1 %i.j, label %_ZN4llvm5ErrorD2Ev.exit1, label %bb.a

bb.a:                                             ; preds = %_ZNSt10unique_ptrIN4llvm6object20MachOUniversalBinaryESt14default_deleteIS2_EED2Ev.exit
  %i.k = load ptr, ptr %.pre, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %.pre) #14, !inline_history !50
  br label %_ZN4llvm5ErrorD2Ev.exit1

_ZN4llvm5ErrorD2Ev.exit1:                         ; preds = %_ZNSt10unique_ptrIN4llvm6object20MachOUniversalBinaryESt14default_deleteIS2_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN4llvm6object20MachOUniversalBinaryESt14default_deleteIS2_EED2Ev.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm6object20MachOUniversalBinaryC2ENS_15MemoryBufferRefERNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef readonly byval(%"class.llvm::MemoryBufferRef") align 8 captures(none) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %8 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 9 uses
  %11 = alloca %"class.llvm::object::MachOUniversalBinary::ObjectForArch", align 8 ; 21 uses
  %12 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %17 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %24 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %26 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %27 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %28 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %29 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %30 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %31 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %32 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %33 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %34 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %35 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %36 = alloca %"class.llvm::Twine", align 8      ; 2 uses
  %37 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %38 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %39 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %40 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %41 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %42 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %43 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %44 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %45 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %46 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %47 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %48 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %49 = alloca %"class.llvm::object::MachOUniversalBinary::ObjectForArch", align 8 ; 13 uses
  %50 = alloca %"class.llvm::object::MachOUniversalBinary::ObjectForArch", align 8 ; 13 uses
  %51 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %52 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %53 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %54 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %55 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %56 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %57 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %58 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %59 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %60 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %61 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %62 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %63 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %64 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %65 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %66 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %67 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %68 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %69 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %70 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %71 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  tail call void @_ZN4llvm6object6BinaryC2EjNS_15MemoryBufferRefE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 1, ptr noundef nonnull byval(%"class.llvm::MemoryBufferRef") align 8 %1) #14
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm6object20MachOUniversalBinaryE, i64 16), ptr %0, align 8, !tbaa !34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  store i32 0, ptr %i.b, align 4, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !224
  %i.e = icmp ult i64 %i.d, 8
  br i1 %i.e, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.b

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #16, !noalias !225 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14, !noalias !225
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.g, align 1, !tbaa !37, !noalias !225
  store ptr @.str.3, ptr %3, align 8, !tbaa !38, !noalias !225
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 3, ptr %i.h, align 8, !tbaa !39, !noalias !225
  call void @_ZN4llvm6object18GenericBinaryErrorC1ERKNS_5TwineENS0_12object_errorE(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(34) %3, i32 noundef 2) #14, !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14, !noalias !225
  store ptr %i.f, ptr %2, align 8, !tbaa !32
  br label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.i = tail call { ptr, i64 } @_ZNK4llvm6object6Binary7getDataEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  %i.k = extractvalue { ptr, i64 } %i.i, 1        ; 3 uses
  %.val = load i64, ptr %i.j, align 1             ; 2 uses
  %i.l = tail call i64 @llvm.fshl.i64(i64 %.val, i64 %.val, i64 32)
  %.sroa.0.0.insert.insert.i = tail call i64 @llvm.bswap.i64(i64 %i.l) ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i32 ; 2 uses
  %.sroa.4.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i, 32 ; 3 uses
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.a, align 8
  %i.m = icmp eq i64 %.sroa.4.0.extract.shift, 0
  br i1 %i.m, label %_ZN4llvm5ErrorD2Ev.exit59, label %bb.c

_ZN4llvm5ErrorD2Ev.exit59:                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.o, align 1, !tbaa !37
  store ptr @.str.4, ptr %5, align 8, !tbaa !38
  store i8 3, ptr %i.n, align 8, !tbaa !39
  call fastcc void @_ZL14malformedErrorN4llvm5TwineE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull byval(%"class.llvm::Twine") align 8 %5)
  %i.p = load ptr, ptr %4, align 8, !tbaa !32
  store ptr %i.p, ptr %2, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.v

bb.c:                                             ; preds = %bb.b
  switch i32 %.sroa.0.0.extract.trunc, label %_ZN4llvm5ErrorD2Ev.exit60 [
    i32 -889275714, label %72
    i32 -889275713, label %bb.d
  ]

_ZN4llvm5ErrorD2Ev.exit60:                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.r, align 1, !tbaa !37
  store ptr @.str.5, ptr %7, align 8, !tbaa !38
  store i8 3, ptr %i.q, align 8, !tbaa !39
  call fastcc void @_ZL14malformedErrorN4llvm5TwineE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull byval(%"class.llvm::Twine") align 8 %7)
  %i.s = load ptr, ptr %6, align 8, !tbaa !32
  store ptr %i.s, ptr %2, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.v

72:                                               ; preds = %bb.c
  %73 = mul nuw nsw i64 %.sroa.4.0.extract.shift, 20
  %74 = add nuw nsw i64 %73, 8
  %75 = and i64 %74, 4294967292                   ; 2 uses
  %76 = icmp ult i64 %i.k, %75
  br i1 %76, label %bb.e, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %77 = shl nuw nsw i64 %.sroa.4.0.extract.shift, 5
  %i.t = and i64 %77, 4294967264
  %78 = or disjoint i64 %i.t, 8                   ; 2 uses
  %i.u = icmp ult i64 %i.k, %78
  br i1 %i.u, label %.thread1248, label %.lr.ph

.thread1248:                                      ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  br label %bb.f

.lr.ph:                                           ; preds = %bb.d, %72
  %79 = phi i64 [ %78, %bb.d ], [ %75, %72 ]
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 48
  %.sroa.gep813 = getelementptr inbounds nuw i8, ptr %11, i64 28
  %.sroa.gep814 = getelementptr inbounds nuw i8, ptr %11, i64 56
  br label %bb.g

bb.e:                                             ; preds = %72
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.z = icmp eq i32 %.sroa.0.0.extract.trunc, -889275714
  br i1 %i.z, label %80, label %bb.f

80:                                               ; preds = %bb.e
  store ptr @.str.6, ptr %10, align 8
  br label %_ZN4llvm5ErrorD2Ev.exit77

bb.f:                                             ; preds = %.thread1248, %bb.e
  store ptr @.str.6, ptr %10, align 8, !alias.scope !226
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr @.str.8, ptr %i.aa, align 8, !alias.scope !226
  br label %_ZN4llvm5ErrorD2Ev.exit77

_ZN4llvm5ErrorD2Ev.exit77:                        ; preds = %80, %bb.f
  %.014.i.i65.a = phi i8 [ 1, %80 ], [ 3, %bb.f ]
  %81 = phi i1 [ true, %80 ], [ false, %bb.f ]    ; 2 uses
  %.sroa.51205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 3, ptr %.sroa.51205.0..sroa_idx, align 8, !tbaa !40
  %.sroa.71206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 %.014.i.i65.a, ptr %.sroa.71206.0..sroa_idx, align 1, !tbaa !40
  %.014.i.i65 = select i1 %81, i8 3, i8 2
  %.sroa.05.0.i.i66 = select i1 %81, ptr @.str.6, ptr %10
  store ptr %.sroa.05.0.i.i66, ptr %9, align 8, !alias.scope !227
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @.str.9, ptr %i.ab, align 8, !alias.scope !227
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 %.014.i.i65, ptr %i.ac, align 8, !tbaa !39, !alias.scope !227
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 3, ptr %i.ad, align 1, !tbaa !37, !alias.scope !227
  call fastcc void @_ZL14malformedErrorN4llvm5TwineE(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull byval(%"class.llvm::Twine") align 8 %9)
  %i.ae = load ptr, ptr %8, align 8, !tbaa !32
  store ptr %i.ae, ptr %2, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.v

.critedge52.preheader:                            ; preds = %bb.k
  %i.af = icmp eq i32 %i.fd, 0
  br i1 %i.af, label %_ZN4llvm5ErrorD2Ev.exit788, label %.lr.ph887

.lr.ph887:                                        ; preds = %.critedge52.preheader
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %50, i64 12
  %.sroa.gep790 = getelementptr inbounds nuw i8, ptr %50, i64 32
  %.sroa.gep799 = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 2 uses
  %.sroa.gep800 = getelementptr inbounds nuw i8, ptr %49, i64 36 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %49, i64 20
  %i.ah = getelementptr inbounds nuw i8, ptr %49, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %50, i64 20
  %i.aj = getelementptr inbounds nuw i8, ptr %50, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %50, i64 24 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %50, i64 48 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %49, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %49, i64 48 ; 2 uses
  br label %bb.l

bb.g:                                             ; preds = %.lr.ph, %bb.k
  %.040880 = phi i32 [ 0, %.lr.ph ], [ %i.fc, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  call void @_ZN4llvm6object20MachOUniversalBinary13ObjectForArchC1EPKS1_j(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull %0, i32 noundef %.040880) #14
  %i.ao = load ptr, ptr %11, align 8, !tbaa !14
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !22
  %i.ar = icmp eq i32 %i.aq, -889275714           ; 10 uses
  %i.as = load i32, ptr %i.v, align 4
  %i.at = zext i32 %i.as to i64
  %i.au = load i64, ptr %i.w, align 8
  %.0.i = select i1 %i.ar, i64 %i.at, i64 %i.au   ; 4 uses
  %i.av = load i32, ptr %i.x, align 8
  %i.aw = zext i32 %i.av to i64
  %i.ax = load i64, ptr %i.y, align 8
  %.0.i78 = select i1 %i.ar, i64 %i.aw, i64 %i.ax
  %i.ay = add i64 %.0.i78, %.0.i
  %i.az = icmp ugt i64 %i.ay, %i.k
  br i1 %i.az, label %_ZN4llvm5ErrorD2Ev.exit146, label %bb.h

_ZN4llvm5ErrorD2Ev.exit146:                       ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  %.0.in.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ar, i64 12, i64 32
  %.0.in.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %11, i64 %.0.in.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %.0.i80 = load i32, ptr %.0.in.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !23
  %.sroa.01162.0.insert.ext = zext i32 %.0.i80 to i64
  %i.ba = inttoptr i64 %.sroa.01162.0.insert.ext to ptr
  store ptr @.str.10, ptr %16, align 8, !alias.scope !228
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %i.ba, ptr %i.bb, align 8, !alias.scope !228
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i8 3, ptr %i.bc, align 8, !tbaa !39, !alias.scope !228
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 9, ptr %i.bd, align 1, !tbaa !37, !alias.scope !228
  store ptr %16, ptr %15, align 8, !alias.scope !229
  %i.be = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr @.str.11, ptr %i.be, align 8, !alias.scope !229
  %i.bf = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 2, ptr %i.bf, align 8, !tbaa !39, !alias.scope !229
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 3, ptr %i.bg, align 1, !tbaa !37, !alias.scope !229
  %.0.in.v.i112.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ar, i64 16, i64 36
  %.0.in.v.i112.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %11, i64 %.0.in.v.i112.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %.0.i114 = load i32, ptr %.0.in.v.i112.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !23
  %i.bh = and i32 %.0.i114, 16777215
  %.sroa.01150.0.insert.ext = zext nneg i32 %i.bh to i64
  %i.bi = inttoptr i64 %.sroa.01150.0.insert.ext to ptr
  store ptr %15, ptr %14, align 8, !alias.scope !230
  %i.bj = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.bi, ptr %i.bj, align 8, !alias.scope !230
  %i.bk = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 2, ptr %i.bk, align 8, !tbaa !39, !alias.scope !230
  %i.bl = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 9, ptr %i.bl, align 1, !tbaa !37, !alias.scope !230
  store ptr %14, ptr %13, align 8, !alias.scope !231
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr @.str.12, ptr %i.bm, align 8, !alias.scope !231
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i8 2, ptr %i.bn, align 8, !tbaa !39, !alias.scope !231
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 3, ptr %i.bo, align 1, !tbaa !37, !alias.scope !231
  call fastcc void @_ZL14malformedErrorN4llvm5TwineE(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef nonnull byval(%"class.llvm::Twine") align 8 %13)
  %i.bp = load ptr, ptr %12, align 8, !tbaa !32
  store ptr %i.bp, ptr %2, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %.critedge

bb.h:                                             ; preds = %bb.g
  %.sroa.gep813.val = load i32, ptr %.sroa.gep813, align 4
  %.sroa.gep814.val = load i32, ptr %.sroa.gep814, align 8
  %.0.i149 = select i1 %i.ar, i32 %.sroa.gep813.val, i32 %.sroa.gep814.val ; 3 uses
  %i.bq = icmp ugt i32 %.0.i149, 15
  br i1 %i.bq, label %_ZN4llvm5ErrorD2Ev.exit284, label %bb.i

_ZN4llvm5ErrorD2Ev.exit284:                       ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #14
  %.sroa.01132.0.insert.ext = zext i32 %.0.i149 to i64
  %i.br = inttoptr i64 %.sroa.01132.0.insert.ext to ptr
  store ptr @.str.13, ptr %25, align 8, !alias.scope !232
  %i.bs = getelementptr inbounds nuw i8, ptr %25, i64 16
  store ptr %i.br, ptr %i.bs, align 8, !alias.scope !232
  %i.bt = getelementptr inbounds nuw i8, ptr %25, i64 32
  store i8 3, ptr %i.bt, align 8, !tbaa !39, !alias.scope !232
  %i.bu = getelementptr inbounds nuw i8, ptr %25, i64 33
  store i8 9, ptr %i.bu, align 1, !tbaa !37, !alias.scope !232
  store ptr %25, ptr %24, align 8, !alias.scope !233
  %i.bv = getelementptr inbounds nuw i8, ptr %24, i64 16
  store ptr @.str.14, ptr %i.bv, align 8, !alias.scope !233
  %i.bw = getelementptr inbounds nuw i8, ptr %24, i64 32
  store i8 2, ptr %i.bw, align 8, !tbaa !39, !alias.scope !233
  %i.bx = getelementptr inbounds nuw i8, ptr %24, i64 33
  store i8 3, ptr %i.bx, align 1, !tbaa !37, !alias.scope !233
  %.0.in.v.i185.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ar, i64 12, i64 32
  %.0.in.v.i185.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %11, i64 %.0.in.v.i185.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %.0.i187 = load i32, ptr %.0.in.v.i185.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !23
  %.sroa.01120.0.insert.ext = zext i32 %.0.i187 to i64
  %i.by = inttoptr i64 %.sroa.01120.0.insert.ext to ptr
  store ptr %24, ptr %23, align 8, !alias.scope !234
  %i.bz = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr %i.by, ptr %i.bz, align 8, !alias.scope !234
  %i.ca = getelementptr inbounds nuw i8, ptr %23, i64 32
  store i8 2, ptr %i.ca, align 8, !tbaa !39, !alias.scope !234
  %i.cb = getelementptr inbounds nuw i8, ptr %23, i64 33
  store i8 9, ptr %i.cb, align 1, !tbaa !37, !alias.scope !234
  store ptr %23, ptr %22, align 8, !alias.scope !235
  %i.cc = getelementptr inbounds nuw i8, ptr %22, i64 16
  store ptr @.str.11, ptr %i.cc, align 8, !alias.scope !235
  %i.cd = getelementptr inbounds nuw i8, ptr %22, i64 32
  store i8 2, ptr %i.cd, align 8, !tbaa !39, !alias.scope !235
  %i.ce = getelementptr inbounds nuw i8, ptr %22, i64 33
  store i8 3, ptr %i.ce, align 1, !tbaa !37, !alias.scope !235
  %.0.in.v.i219.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ar, i64 16, i64 36
  %.0.in.v.i219.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %11, i64 %.0.in.v.i219.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %.0.i221 = load i32, ptr %.0.in.v.i219.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !23
  %i.cf = and i32 %.0.i221, 16777215
  %.sroa.01108.0.insert.ext = zext nneg i32 %i.cf to i64
  %i.cg = inttoptr i64 %.sroa.01108.0.insert.ext to ptr
  store ptr %22, ptr %21, align 8, !alias.scope !236
  %i.ch = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %i.cg, ptr %i.ch, align 8, !alias.scope !236
  %i.ci = getelementptr inbounds nuw i8, ptr %21, i64 32
  store i8 2, ptr %i.ci, align 8, !tbaa !39, !alias.scope !236
  %i.cj = getelementptr inbounds nuw i8, ptr %21, i64 33
  store i8 9, ptr %i.cj, align 1, !tbaa !37, !alias.scope !236
  store ptr %21, ptr %20, align 8, !alias.scope !237
  %i.ck = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr @.str.15, ptr %i.ck, align 8, !alias.scope !237
  %i.cl = getelementptr inbounds nuw i8, ptr %20, i64 32
  store i8 2, ptr %i.cl, align 8, !tbaa !39, !alias.scope !237
  %i.cm = getelementptr inbounds nuw i8, ptr %20, i64 33
  store i8 3, ptr %i.cm, align 1, !tbaa !37, !alias.scope !237
  store ptr %20, ptr %19, align 8, !alias.scope !238
  %i.cn = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr inttoptr (i64 15 to ptr), ptr %i.cn, align 8, !alias.scope !238
  %i.co = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i8 2, ptr %i.co, align 8, !tbaa !39, !alias.scope !238
  %i.cp = getelementptr inbounds nuw i8, ptr %19, i64 33
  store i8 9, ptr %i.cp, align 1, !tbaa !37, !alias.scope !238
  store ptr %19, ptr %18, align 8, !alias.scope !239
  %i.cq = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr @.str.16, ptr %i.cq, align 8, !alias.scope !239
  %i.cr = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i8 2, ptr %i.cr, align 8, !tbaa !39, !alias.scope !239
  %i.cs = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 3, ptr %i.cs, align 1, !tbaa !37, !alias.scope !239
  call fastcc void @_ZL14malformedErrorN4llvm5TwineE(ptr dead_on_unwind noalias writable align 8 %17, ptr noundef nonnull byval(%"class.llvm::Twine") align 8 %18)
  %i.ct = load ptr, ptr %17, align 8, !tbaa !32
  store ptr %i.ct, ptr %2, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  br label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.cu = zext nneg i32 %.0.i149 to i64           ; 2 uses
  %notmask = shl nsw i64 -1, %i.cu
  %i.cv = xor i64 %notmask, -1
  %i.cw = and i64 %.0.i, %i.cv
  %.not = icmp eq i64 %i.cw, 0
  br i1 %.not, label %bb.j, label %_ZN4llvm5ErrorD2Ev.exit424

_ZN4llvm5ErrorD2Ev.exit424:                       ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #14
  %.sroa.04.0.copyload.i.i297.cast = inttoptr i64 %.0.i to ptr
  store ptr @.str.17, ptr %34, align 8, !alias.scope !240
  %i.cx = getelementptr inbounds nuw i8, ptr %34, i64 16
  store ptr %.sroa.04.0.copyload.i.i297.cast, ptr %i.cx, align 8, !alias.scope !240
  %i.cy = getelementptr inbounds nuw i8, ptr %34, i64 32
  store i8 3, ptr %i.cy, align 8, !tbaa !39, !alias.scope !240
  %i.cz = getelementptr inbounds nuw i8, ptr %34, i64 33
  store i8 11, ptr %i.cz, align 1, !tbaa !37, !alias.scope !240
  store ptr %34, ptr %33, align 8, !alias.scope !241
  %i.da = getelementptr inbounds nuw i8, ptr %33, i64 16
  store ptr @.str.18, ptr %i.da, align 8, !alias.scope !241
  %i.db = getelementptr inbounds nuw i8, ptr %33, i64 32
  store i8 2, ptr %i.db, align 8, !tbaa !39, !alias.scope !241
  %i.dc = getelementptr inbounds nuw i8, ptr %33, i64 33
  store i8 3, ptr %i.dc, align 1, !tbaa !37, !alias.scope !241
  %.0.in.v.i322.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ar, i64 12, i64 32
  %.0.in.v.i322.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %11, i64 %.0.in.v.i322.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %.0.i324 = load i32, ptr %.0.in.v.i322.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !23
  %.sroa.01066.0.insert.ext = zext i32 %.0.i324 to i64
  %i.dd = inttoptr i64 %.sroa.01066.0.insert.ext to ptr
  store ptr %33, ptr %32, align 8, !alias.scope !242
  %i.de = getelementptr inbounds nuw i8, ptr %32, i64 16
  store ptr %i.dd, ptr %i.de, align 8, !alias.scope !242
  %i.df = getelementptr inbounds nuw i8, ptr %32, i64 32
  store i8 2, ptr %i.df, align 8, !tbaa !39, !alias.scope !242
  %i.dg = getelementptr inbounds nuw i8, ptr %32, i64 33
  store i8 9, ptr %i.dg, align 1, !tbaa !37, !alias.scope !242
  store ptr %32, ptr %31, align 8, !alias.scope !243
  %i.dh = getelementptr inbounds nuw i8, ptr %31, i64 16
  store ptr @.str.11, ptr %i.dh, align 8, !alias.scope !243
  %i.di = getelementptr inbounds nuw i8, ptr %31, i64 32
  store i8 2, ptr %i.di, align 8, !tbaa !39, !alias.scope !243
  %i.dj = getelementptr inbounds nuw i8, ptr %31, i64 33
  store i8 3, ptr %i.dj, align 1, !tbaa !37, !alias.scope !243
  %.0.in.v.i356.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ar, i64 16, i64 36
  %.0.in.v.i356.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %11, i64 %.0.in.v.i356.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %.0.i358 = load i32, ptr %.0.in.v.i356.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !23
  %i.dk = and i32 %.0.i358, 16777215
  %.sroa.01054.0.insert.ext = zext nneg i32 %i.dk to i64
  %i.dl = inttoptr i64 %.sroa.01054.0.insert.ext to ptr
  store ptr %31, ptr %30, align 8, !alias.scope !244
  %i.dm = getelementptr inbounds nuw i8, ptr %30, i64 16
  store ptr %i.dl, ptr %i.dm, align 8, !alias.scope !244
  %i.dn = getelementptr inbounds nuw i8, ptr %30, i64 32
  store i8 2, ptr %i.dn, align 8, !tbaa !39, !alias.scope !244
  %i.do = getelementptr inbounds nuw i8, ptr %30, i64 33
  store i8 9, ptr %i.do, align 1, !tbaa !37, !alias.scope !244
  store ptr %30, ptr %29, align 8, !alias.scope !245
  %i.dp = getelementptr inbounds nuw i8, ptr %29, i64 16
  store ptr @.str.19, ptr %i.dp, align 8, !alias.scope !245
  %i.dq = getelementptr inbounds nuw i8, ptr %29, i64 32
  store i8 2, ptr %i.dq, align 8, !tbaa !39, !alias.scope !245
  %i.dr = getelementptr inbounds nuw i8, ptr %29, i64 33
  store i8 3, ptr %i.dr, align 1, !tbaa !37, !alias.scope !245
  %i.ds = inttoptr i64 %i.cu to ptr
  store ptr %29, ptr %28, align 8, !alias.scope !246
  %i.dt = getelementptr inbounds nuw i8, ptr %28, i64 16
  store ptr %i.ds, ptr %i.dt, align 8, !alias.scope !246
  %i.du = getelementptr inbounds nuw i8, ptr %28, i64 32
  store i8 2, ptr %i.du, align 8, !tbaa !39, !alias.scope !246
  %i.dv = getelementptr inbounds nuw i8, ptr %28, i64 33
  store i8 9, ptr %i.dv, align 1, !tbaa !37, !alias.scope !246
  store ptr %28, ptr %27, align 8, !alias.scope !247
  %i.dw = getelementptr inbounds nuw i8, ptr %27, i64 16
  store ptr @.str.16, ptr %i.dw, align 8, !alias.scope !247
  %i.dx = getelementptr inbounds nuw i8, ptr %27, i64 32
  store i8 2, ptr %i.dx, align 8, !tbaa !39, !alias.scope !247
  %i.dy = getelementptr inbounds nuw i8, ptr %27, i64 33
  store i8 3, ptr %i.dy, align 1, !tbaa !37, !alias.scope !247
  call fastcc void @_ZL14malformedErrorN4llvm5TwineE(ptr dead_on_unwind noalias writable align 8 %26, ptr noundef nonnull byval(%"class.llvm::Twine") align 8 %27)
  %i.dz = load ptr, ptr %26, align 8, !tbaa !32
  store ptr %i.dz, ptr %2, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #14
  br label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.ea = icmp ult i64 %.0.i, %79
  br i1 %i.ea, label %_ZN4llvm5ErrorD2Ev.exit437, label %bb.k

_ZN4llvm5ErrorD2Ev.exit437:                       ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #14
  %i.eb = getelementptr inbounds nuw i8, ptr %42, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %42, i64 33
  store i8 1, ptr %i.ec, align 1, !tbaa !37
  store ptr @.str.20, ptr %42, align 8, !tbaa !38
  store i8 3, ptr %i.eb, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #14
  %.0.in.v.i427.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ar, i64 12, i64 32
  %.0.in.v.i427.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %11, i64 %.0.in.v.i427.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %.0.i429 = load i32, ptr %.0.in.v.i427.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !23
  %i.ed = getelementptr inbounds nuw i8, ptr %43, i64 32
  store i8 9, ptr %i.ed, align 8, !tbaa !39
  %i.ee = getelementptr inbounds nuw i8, ptr %43, i64 33
  store i8 1, ptr %i.ee, align 1, !tbaa !37
  store i32 %.0.i429, ptr %43, align 8, !tbaa !38
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %41, ptr noundef nonnull align 8 dereferenceable(34) %42, ptr noundef nonnull align 8 dereferenceable(34) %43)
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #14
  %i.ef = getelementptr inbounds nuw i8, ptr %44, i64 32
  %i.eg = getelementptr inbounds nuw i8, ptr %44, i64 33
  store i8 1, ptr %i.eg, align 1, !tbaa !37
  store ptr @.str.11, ptr %44, align 8, !tbaa !38
  store i8 3, ptr %i.ef, align 8, !tbaa !39
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %40, ptr noundef nonnull align 8 dereferenceable(34) %41, ptr noundef nonnull align 8 dereferenceable(34) %44)
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #14
  %i.eh = load ptr, ptr %11, align 8, !tbaa !14
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !22
  %i.ek = icmp eq i32 %i.ej, -889275714
  %.0.in.v.i431.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ek, i64 16, i64 36
  %.0.in.v.i431.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %11, i64 %.0.in.v.i431.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %.0.i433 = load i32, ptr %.0.in.v.i431.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !23
  %i.el = and i32 %.0.i433, 16777215
  %i.em = getelementptr inbounds nuw i8, ptr %45, i64 32
  store i8 9, ptr %i.em, align 8, !tbaa !39
  %i.en = getelementptr inbounds nuw i8, ptr %45, i64 33
  store i8 1, ptr %i.en, align 1, !tbaa !37
  store i32 %i.el, ptr %45, align 8, !tbaa !38
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %39, ptr noundef nonnull align 8 dereferenceable(34) %40, ptr noundef nonnull align 8 dereferenceable(34) %45)
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #14
  %i.eo = getelementptr inbounds nuw i8, ptr %46, i64 32
  %i.ep = getelementptr inbounds nuw i8, ptr %46, i64 33
  store i8 1, ptr %i.ep, align 1, !tbaa !37
  store ptr @.str.21, ptr %46, align 8, !tbaa !38
  store i8 3, ptr %i.eo, align 8, !tbaa !39
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %38, ptr noundef nonnull align 8 dereferenceable(34) %39, ptr noundef nonnull align 8 dereferenceable(34) %46)
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #14
  %i.eq = load ptr, ptr %11, align 8, !tbaa !14
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 48
  %i.es = load i32, ptr %i.er, align 8, !tbaa !22
  %i.et = icmp eq i32 %i.es, -889275714
  %i.eu = load i32, ptr %i.v, align 4
  %i.ev = zext i32 %i.eu to i64
  %i.ew = load i64, ptr %i.w, align 8
  %.0.i435 = select i1 %i.et, i64 %i.ev, i64 %i.ew
  %i.ex = getelementptr inbounds nuw i8, ptr %47, i64 32
  store i8 11, ptr %i.ex, align 8, !tbaa !39
  %i.ey = getelementptr inbounds nuw i8, ptr %47, i64 33
  store i8 1, ptr %i.ey, align 1, !tbaa !37
  store i64 %.0.i435, ptr %47, align 8, !tbaa !38
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %37, ptr noundef nonnull align 8 dereferenceable(34) %38, ptr noundef nonnull align 8 dereferenceable(34) %47)
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #14
  %i.ez = getelementptr inbounds nuw i8, ptr %48, i64 32
  %i.fa = getelementptr inbounds nuw i8, ptr %48, i64 33
  store i8 1, ptr %i.fa, align 1, !tbaa !37
  store ptr @.str.22, ptr %48, align 8, !tbaa !38
  store i8 3, ptr %i.ez, align 8, !tbaa !39
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %36, ptr noundef nonnull align 8 dereferenceable(34) %37, ptr noundef nonnull align 8 dereferenceable(34) %48)
  call fastcc void @_ZL14malformedErrorN4llvm5TwineE(ptr dead_on_unwind noalias writable align 8 %35, ptr noundef nonnull byval(%"class.llvm::Twine") align 8 %36)
  %i.fb = load ptr, ptr %35, align 8, !tbaa !32
  store ptr %i.fb, ptr %2, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #14
  br label %.critedge

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  %i.fc = add nuw i32 %.040880, 1                 ; 2 uses
  %i.fd = load i32, ptr %i.b, align 4, !tbaa !21  ; 2 uses
  %.not45 = icmp ult i32 %i.fc, %i.fd
  br i1 %.not45, label %bb.g, label %.critedge52.preheader, !llvm.loop !145

.critedge:                                        ; preds = %_ZN4llvm5ErrorD2Ev.exit437, %_ZN4llvm5ErrorD2Ev.exit424, %_ZN4llvm5ErrorD2Ev.exit284, %_ZN4llvm5ErrorD2Ev.exit146
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %bb.v

bb.l:                                             ; preds = %.lr.ph887, %.critedge52
  %.039886 = phi i32 [ 0, %.lr.ph887 ], [ %i.fe, %.critedge52 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #14
  call void @_ZN4llvm6object20MachOUniversalBinary13ObjectForArchC1EPKS1_j(ptr noundef nonnull align 8 dereferenceable(64) %49, ptr noundef nonnull %0, i32 noundef %.039886) #14
  %i.fe = add nuw i32 %.039886, 1                 ; 4 uses
  %i.ff = load i32, ptr %i.b, align 4, !tbaa !21
  %.not49882 = icmp ult i32 %i.fe, %i.ff
  br i1 %.not49882, label %.lr.ph884, label %.critedge52.thread

.critedge52.thread:                               ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #14
  br label %_ZN4llvm5ErrorD2Ev.exit788

.lr.ph884:                                        ; preds = %bb.l, %bb.t
  %.0883 = phi i32 [ %i.jx, %bb.t ], [ %i.fe, %bb.l ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #14
  call void @_ZN4llvm6object20MachOUniversalBinary13ObjectForArchC1EPKS1_j(ptr noundef nonnull align 8 dereferenceable(64) %50, ptr noundef nonnull %0, i32 noundef %.0883) #14
  %i.fg = load ptr, ptr %49, align 8, !tbaa !14   ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !22
  %i.fj = icmp eq i32 %i.fi, -889275714           ; 4 uses
  %.0.in.v.i438.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.fj, i64 12, i64 32
  %.0.in.v.i438.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %49, i64 %.0.in.v.i438.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %.0.i440 = load i32, ptr %.0.in.v.i438.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !23 ; 3 uses
  %i.fk = load ptr, ptr %50, align 8, !tbaa !14   ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !22
  %i.fn = icmp eq i32 %i.fm, -889275714           ; 6 uses
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 4 ; 2 uses
  %.sroa.gep790.val = load i32, ptr %.sroa.gep790, align 8 ; 2 uses
  %.0.i443 = select i1 %i.fn, i32 %.sroa.gep.val, i32 %.sroa.gep790.val
  %i.fo = icmp eq i32 %.0.i440, %.0.i443
  br i1 %i.fo, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph884
  %.sroa.gep799.val = load i32, ptr %.sroa.gep799, align 8
  %.sroa.gep800.val = load i32, ptr %.sroa.gep800, align 4
  %.0.i446 = select i1 %i.fj, i32 %.sroa.gep799.val, i32 %.sroa.gep800.val ; 2 uses
  %.0.in.v.i447.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.fn, i64 16, i64 36
  %.0.in.v.i447.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.0.in.v.i447.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %.0.i449 = load i32, ptr %.0.in.v.i447.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !23
  %i.fp = xor i32 %.0.i446, %.0.i449
  %i.fq = and i32 %i.fp, 16777215
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %_ZN4llvm5ErrorD2Ev.exit519, label %bb.n

_ZN4llvm5ErrorD2Ev.exit519:                       ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #14
  %.sroa.01016.0.insert.ext = zext i32 %.0.i440 to i64
  %i.fs = inttoptr i64 %.sroa.01016.0.insert.ext to ptr
  store ptr @.str.23, ptr %55, align 8, !alias.scope !249
  %i.ft = getelementptr inbounds nuw i8, ptr %55, i64 16
  store ptr %i.fs, ptr %i.ft, align 8, !alias.scope !249
  %i.fu = getelementptr inbounds nuw i8, ptr %55, i64 32
  store i8 3, ptr %i.fu, align 8, !tbaa !39, !alias.scope !249
  %i.fv = getelementptr inbounds nuw i8, ptr %55, i64 33
  store i8 9, ptr %i.fv, align 1, !tbaa !37, !alias.scope !249
  store ptr %55, ptr %54, align 8, !alias.scope !250
  %i.fw = getelementptr inbounds nuw i8, ptr %54, i64 16
  store ptr @.str.11, ptr %i.fw, align 8, !alias.scope !250
  %i.fx = getelementptr inbounds nuw i8, ptr %54, i64 32
  store i8 2, ptr %i.fx, align 8, !tbaa !39, !alias.scope !250
  %i.fy = getelementptr inbounds nuw i8, ptr %54, i64 33
  store i8 3, ptr %i.fy, align 1, !tbaa !37, !alias.scope !250
  %i.fz = and i32 %.0.i446, 16777215
  %.sroa.01004.0.insert.ext = zext nneg i32 %i.fz to i64
  %i.ga = inttoptr i64 %.sroa.01004.0.insert.ext to ptr
  store ptr %54, ptr %53, align 8, !alias.scope !251
  %i.gb = getelementptr inbounds nuw i8, ptr %53, i64 16
  store ptr %i.ga, ptr %i.gb, align 8, !alias.scope !251
  %i.gc = getelementptr inbounds nuw i8, ptr %53, i64 32
  store i8 2, ptr %i.gc, align 8, !tbaa !39, !alias.scope !251
  %i.gd = getelementptr inbounds nuw i8, ptr %53, i64 33
  store i8 9, ptr %i.gd, align 1, !tbaa !37, !alias.scope !251
  store ptr %53, ptr %52, align 8, !alias.scope !252
  %i.ge = getelementptr inbounds nuw i8, ptr %52, i64 16
  store ptr @.str.24, ptr %i.ge, align 8, !alias.scope !252
  %i.gf = getelementptr inbounds nuw i8, ptr %52, i64 32
  store i8 2, ptr %i.gf, align 8, !tbaa !39, !alias.scope !252
  %i.gg = getelementptr inbounds nuw i8, ptr %52, i64 33
  store i8 3, ptr %i.gg, align 1, !tbaa !37, !alias.scope !252
  call fastcc void @_ZL14malformedErrorN4llvm5TwineE(ptr dead_on_unwind noalias writable align 8 %51, ptr noundef nonnull byval(%"class.llvm::Twine") align 8 %52)
  %i.gh = load ptr, ptr %51, align 8, !tbaa !32
  store ptr %i.gh, ptr %2, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #14
  br label %bb.u

bb.n:                                             ; preds = %bb.m, %.lr.ph884
  %i.gi = load i32, ptr %i.ag, align 4
end_hunk_0
