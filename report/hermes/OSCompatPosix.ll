inline.NumInlined: 516
inline.NumDeleted: 274
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvh::ErrorOr" = type { %union.anon, i8, [7 x i8] }
%union.anon = type { %"struct.llvh::AlignedCharArrayUnion.0" }
%"struct.llvh::AlignedCharArrayUnion.0" = type { %"struct.llvh::AlignedCharArray.1" }
%"struct.llvh::AlignedCharArray.1" = type { [16 x i8] }
%"class.llvh::ErrorOr.2" = type { %union.anon.3, i8, [7 x i8] }
%union.anon.3 = type { %"struct.llvh::AlignedCharArrayUnion.0" }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon.6 }
%union.anon.6 = type { i32 }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.7 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.7 = type { i64, [8 x i8] }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%struct.rusage = type { %struct.timeval, %struct.timeval, %union.anon.11, %union.anon.12, %union.anon.13, %union.anon.14, %union.anon.15, %union.anon.16, %union.anon.17, %union.anon.18, %union.anon.19, %union.anon.20, %union.anon.21, %union.anon.22, %union.anon.23, %union.anon.24 }
%struct.timeval = type { i64, i64 }
%union.anon.11 = type { i64 }
%union.anon.12 = type { i64 }
%union.anon.13 = type { i64 }
%union.anon.14 = type { i64 }
%union.anon.15 = type { i64 }
%union.anon.16 = type { i64 }
%union.anon.17 = type { i64 }
%union.anon.18 = type { i64 }
%union.anon.19 = type { i64 }
%union.anon.20 = type { i64 }
%union.anon.21 = type { i64 }
%union.anon.22 = type { i64 }
%union.anon.23 = type { i64 }
%union.anon.24 = type { i64 }
%"class.std::vector.25" = type { %"struct.std::_Vector_base.26" }
%"struct.std::_Vector_base.26" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.timespec = type { i64, i64 }
%"class.std::vector.30" = type { %"struct.std::_Bvector_base" }
%"struct.std::_Bvector_base" = type { %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl" }
%"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl" = type { %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data" }
%"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data" = type { %"struct.std::_Bit_iterator", %"struct.std::_Bit_iterator", ptr }
%"struct.std::_Bit_iterator" = type { %"struct.std::_Bit_iterator_base.base", [4 x i8] }
%"struct.std::_Bit_iterator_base.base" = type <{ ptr, i32 }>
%struct.cpu_set_t = type { [16 x i64] }
%struct.stack_t = type { ptr, i32, i64 }

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA8_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb = comdat any

$_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb = comdat any

@__const._ZN6hermes8oscompat12vm_footprintEPcS1_.label = private unnamed_addr constant [5 x i8] c"Rss:\00", align 1
@.str = private unnamed_addr constant [17 x i8] c"/proc/self/smaps\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"/proc/self/statm\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%*d %ld\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"/proc/self/maps\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"%llx-%llx %4s\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Unable to obtain native stack bounds\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"thread_name failed\00", align 1
@_ZN6hermes8oscompat25SigAltStackLeakSuppressor10stackRoot_E = hidden local_unnamed_addr global ptr null, align 8
@_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external unnamed_addr constant { [4 x ptr] }, align 8
@_ZTVSt13basic_filebufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [5 x ptr], [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.13 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"vector<bool>::_M_insert_aux\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"vector<bool>::_M_fill_insert\00", align 1

@_ZN6hermes8oscompat25SigAltStackLeakSuppressorD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6hermes8oscompat25SigAltStackLeakSuppressorD2Ev

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i64 -2147483648, 2147483648) i64 @_ZN6hermes8oscompat9page_sizeEv() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @getpagesize() #21
  %i.b = sext i32 %i.a to i64
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes8oscompat11vm_allocateEmPv(ptr dead_on_unwind noalias writable sret(%"class.llvh::ErrorOr") align 8 captures(none) initializes((0, 4)) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7)
  %i.a = tail call ptr @mmap(ptr noundef %2, i64 noundef %1, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #22, !noalias !7 ; 2 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #21
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3, !noalias !7
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !alias.scope !7
  %i.h = or i8 %i.g, 1
  store i8 %i.h, ptr %i.f, align 8, !alias.scope !7
  store i32 %i.d, ptr %0, align 8, !tbaa !3, !alias.scope !7
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !10, !alias.scope !7
  br label %_ZN6hermes8oscompatL7vm_mmapEPvmiib.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !alias.scope !7
  %i.k = and i8 %i.j, -2
  store i8 %i.k, ptr %i.i, align 8, !alias.scope !7
  store ptr %i.a, ptr %0, align 8, !tbaa !13, !alias.scope !7
  br label %_ZN6hermes8oscompatL7vm_mmapEPvmiib.exit

_ZN6hermes8oscompatL7vm_mmapEPvmiib.exit:         ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes8oscompat19vm_allocate_alignedEmmPv(ptr dead_on_unwind noalias writable sret(%"class.llvh::ErrorOr") align 8 captures(none) initializes((0, 4)) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @mmap(ptr noundef %3, i64 noundef %1, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #22, !noalias !14 ; 5 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %_ZN4llvh7ErrorOrIPvEC2EOS2_.exit, label %bb.b

_ZN4llvh7ErrorOrIPvEC2EOS2_.exit:                 ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #21
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3, !noalias !14
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = or i8 %i.g, 1
  store i8 %i.h, ptr %i.f, align 8
  store i32 %i.d, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.i, align 8
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.a to i64
  %i.k = add i64 %2, -1
  %i.l = add i64 %i.k, %i.j                       ; 2 uses
  %i.m = urem i64 %i.l, %2
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = icmp eq ptr %i.a, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8
  %i.s = and i8 %i.r, -2
  store i8 %i.s, ptr %i.q, align 8
  store ptr %i.a, ptr %0, align 8, !tbaa !13
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.t = tail call i32 @munmap(ptr noundef %i.a, i64 noundef %1) #22 ; 0 uses
  tail call fastcc void @_ZN6hermes8oscompatL15vm_mmap_alignedEPvmmii(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %3, i64 noundef %1, i64 noundef %2, i32 noundef 3, i32 noundef 34)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %_ZN4llvh7ErrorOrIPvEC2EOS2_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6hermes8oscompatL15vm_mmap_alignedEPvmmii(ptr dead_on_unwind noalias writable align 8 captures(none) initializes((0, 4)) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef range(i32 0, 4) %4, i32 noundef range(i32 34, 16419) %5) unnamed_addr #1 {
bb.a:
  %i.a = add i64 %3, %2
  %i.b = tail call i32 @getpagesize() #21
  %i.c = sext i32 %i.b to i64
  %i.d = sub i64 %i.a, %i.c                       ; 3 uses
  %i.e = tail call ptr @mmap(ptr noundef %1, i64 noundef %i.d, i32 noundef range(i32 0, 4) %4, i32 noundef range(i32 34, 16435) %5, i32 noundef -1, i64 noundef 0) #22, !noalias !17 ; 4 uses
  %i.f = icmp eq ptr %i.e, inttoptr (i64 -1 to ptr)
  br i1 %i.f, label %_ZN4llvh7ErrorOrIPvEC2EOS2_.exit, label %bb.b

_ZN4llvh7ErrorOrIPvEC2EOS2_.exit:                 ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #21
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3, !noalias !17
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8
  %i.l = or i8 %i.k, 1
  store i8 %i.l, ptr %i.j, align 8
  store i32 %i.h, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.m, align 8
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.n = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.o = add i64 %3, -1
  %i.p = add i64 %i.o, %i.n                       ; 2 uses
  %i.q = urem i64 %i.p, %3
  %i.r = sub nuw i64 %i.p, %i.q                   ; 2 uses
  %i.s = inttoptr i64 %i.r to ptr                 ; 3 uses
  %i.t = sub i64 %i.r, %i.n                       ; 2 uses
  %i.u = add i64 %i.t, %2                         ; 2 uses
  %i.v = sub i64 %i.d, %i.u
  %.not = icmp eq ptr %i.e, %i.s
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = tail call i32 @munmap(ptr noundef %i.e, i64 noundef %i.t) #22 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not18 = icmp eq i64 %i.d, %i.u
  br i1 %.not18, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %2
  %i.y = tail call i32 @munmap(ptr noundef %i.x, i64 noundef %i.v) #22 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8
  %i.ab = and i8 %i.aa, -2
  store i8 %i.ab, ptr %i.z, align 8
  store ptr %i.s, ptr %0, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4llvh7ErrorOrIPvEC2EOS2_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes8oscompat7vm_freeEPvm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @munmap(ptr noundef %0, i64 noundef %1) #22 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes8oscompat15vm_free_alignedEPvm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @munmap(ptr noundef %0, i64 noundef %1) #22 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes8oscompat18vm_reserve_alignedEmmPv(ptr dead_on_unwind noalias writable sret(%"class.llvh::ErrorOr") align 8 captures(none) initializes((0, 4)) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  tail call fastcc void @_ZN6hermes8oscompatL15vm_mmap_alignedEPvmmii(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %3, i64 noundef %1, i64 noundef %2, i32 noundef 0, i32 noundef 16418)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes8oscompat18vm_release_alignedEPvm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @munmap(ptr noundef %0, i64 noundef %1) #22 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes8oscompat9vm_commitEPvm(ptr dead_on_unwind noalias writable sret(%"class.llvh::ErrorOr") align 8 captures(none) initializes((0, 4)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.a = tail call ptr @mmap(ptr noundef %1, i64 noundef %2, i32 noundef 3, i32 noundef 50, i32 noundef -1, i64 noundef 0) #22, !noalias !20 ; 2 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #21
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3, !noalias !20
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !alias.scope !20
  %i.h = or i8 %i.g, 1
  store i8 %i.h, ptr %i.f, align 8, !alias.scope !20
  store i32 %i.d, ptr %0, align 8, !tbaa !3, !alias.scope !20
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !10, !alias.scope !20
  br label %_ZN6hermes8oscompatL7vm_mmapEPvmiib.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !alias.scope !20
  %i.k = and i8 %i.j, -2
  store i8 %i.k, ptr %i.i, align 8, !alias.scope !20
  store ptr %i.a, ptr %0, align 8, !tbaa !13, !alias.scope !20
  br label %_ZN6hermes8oscompatL7vm_mmapEPvmiib.exit

_ZN6hermes8oscompatL7vm_mmapEPvmiib.exit:         ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes8oscompat11vm_uncommitEPvm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
_ZN6hermes8oscompatL7vm_mmapEPvmiib.exit:
  %i.a = tail call ptr @mmap(ptr noundef %0, i64 noundef %1, i32 noundef 0, i32 noundef 16434, i32 noundef -1, i64 noundef 0) #22, !noalias !23 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes8oscompat11vm_hugepageEPvm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @madvise(ptr noundef %0, i64 noundef %1, i32 noundef 14) #22 ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare i32 @madvise(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes8oscompat9vm_unusedEPvm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @madvise(ptr noundef %0, i64 noundef %1, i32 noundef 4) #22 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes8oscompat11vm_prefetchEPvm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @madvise(ptr noundef %0, i64 noundef %1, i32 noundef 3) #22 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6hermes8oscompat7vm_nameEPvmPKc(ptr noundef readnone captures(none) %0, i64 noundef %1, ptr noundef readnone captures(none) %2) local_unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes8oscompat10vm_protectEPvmNS0_11ProtectModeE(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  %spec.store.select = select i1 %i.a, i32 3, i32 0
  %i.b = tail call i32 @mprotect(ptr noundef %0, i64 noundef %1, i32 noundef %spec.store.select) #22
  %i.c = icmp ne i32 %i.b, -1
  ret i1 %i.c
}

; Function Attrs: nounwind
declare i32 @mprotect(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes8oscompat10vm_madviseEPvmNS0_7MAdviceE(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %switch.selectcmp = icmp eq i32 %2, 1
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  %switch.selectcmp3 = icmp eq i32 %2, 0
  %switch.select4 = select i1 %switch.selectcmp3, i32 1, i32 %switch.select
  %i.a = tail call i32 @madvise(ptr noundef %0, i64 noundef %1, i32 noundef %switch.select4) #22
  %i.b = icmp eq i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes8oscompat12vm_footprintEPcS1_(ptr dead_on_unwind noalias writable sret(%"class.llvh::ErrorOr.2") align 8 captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %"class.std::basic_ifstream", align 8 ; 22 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 30 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 29 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %2 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %3, ptr noundef nonnull @.str, i32 noundef 8)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 344
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 352
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 353
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 360
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 5 uses
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 4 uses
  %i.o = getelementptr i8, ptr %i.m, i64 -24      ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 3 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8 ; 2 uses
  %i.t = getelementptr i8, ptr %i.r, i64 -24      ; 2 uses
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8 ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 -24      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  %i.y = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 -24     ; 2 uses
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 80
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.af = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %3, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !28 ; 2 uses
  %i.al = and i32 %i.ak, 5
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %bb.c, label %split

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.f, ptr %4, align 8, !tbaa !38
  store i64 0, ptr %i.g, align 8, !tbaa !41
  store i8 0, ptr %i.f, align 8, !tbaa !43
  %i.am = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #22 ; 0 uses
  %i.an = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi6ignoreEli(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef 9223372036854775807, i32 noundef 10) #22 ; 0 uses
  %i.ao = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 noundef signext 58, i64 noundef -1) #22
  %.not = icmp eq i64 %i.ao, -1
  br i1 %.not, label %bb.d, label %bb.e, !llvm.loop !44

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.h) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8, !tbaa !26
  store ptr null, ptr %i.i, align 8, !tbaa !46
  store i8 0, ptr %i.j, align 8, !tbaa !54
  store i8 0, ptr %i.k, align 1, !tbaa !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  store ptr %i.m, ptr %5, align 8, !tbaa !26
  %i.ap = load i64, ptr %i.o, align 8
  %i.aq = getelementptr inbounds i8, ptr %5, i64 %i.ap
  store ptr %i.n, ptr %i.aq, align 8, !tbaa !26
  store i64 0, ptr %i.p, align 8, !tbaa !56
  %i.ar = load ptr, ptr %5, align 8, !tbaa !26
  %i.as = getelementptr i8, ptr %i.ar, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %5, i64 %i.at
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.au, ptr noundef null) #22
  store ptr %i.r, ptr %i.q, align 8, !tbaa !26
  %i.av = load i64, ptr %i.t, align 8
  %i.aw = getelementptr inbounds i8, ptr %i.q, i64 %i.av
  store ptr %i.s, ptr %i.aw, align 8, !tbaa !26
  %i.ax = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.q, i64 %i.az
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ba, ptr noundef null) #22
  %i.bb = load i64, ptr %i.w, align 8
  %i.bc = getelementptr inbounds i8, ptr %5, i64 %i.bb
  store ptr %i.v, ptr %i.bc, align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %5, align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.h, align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.q, align 8, !tbaa !26
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEC2ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(104) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 24)
  %i.bd = load ptr, ptr %5, align 8, !tbaa !26
  %i.be = getelementptr i8, ptr %i.bd, i64 -24
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr %5, i64 %i.bf
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bg, ptr noundef nonnull %i.x) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.bh = load ptr, ptr %5, align 8, !tbaa !26
  %i.bi = getelementptr i8, ptr %i.bh, i64 -24
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds i8, ptr %5, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !58
  %i.bn = and i32 %i.bm, -75
  %i.bo = or disjoint i32 %i.bn, 8
  store i32 %i.bo, ptr %i.bl, align 8, !tbaa !59
end_hunk_0
