inline.NumInlined: 421
inline.NumDeleted: 213
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.duckdb::optional_ptr.2" = type { ptr }
%"class.duckdb::vector.280" = type { %"class.std::vector.281" }
%"class.std::vector.281" = type { %"struct.std::_Vector_base.282" }
%"struct.std::_Vector_base.282" = type { %"struct.std::_Vector_base<std::reference_wrapper<duckdb::EncodingFunction>, std::allocator<std::reference_wrapper<duckdb::EncodingFunction>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::reference_wrapper<duckdb::EncodingFunction>, std::allocator<std::reference_wrapper<duckdb::EncodingFunction>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::reference_wrapper<duckdb::EncodingFunction>, std::allocator<std::reference_wrapper<duckdb::EncodingFunction>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::reference_wrapper<duckdb::EncodingFunction>, std::allocator<std::reference_wrapper<duckdb::EncodingFunction>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::allocator" = type { i8 }

$_ZNK6duckdb10shared_ptrINS_16DatabaseInstanceELb1EEptEv = comdat any

$_ZNK6duckdb16EncodingFunction7GetNameB5cxx11Ev = comdat any

$_ZNK6duckdb12optional_ptrINS_16EncodingFunctionELb1EE10CheckValidEv = comdat any

$_ZTIN6duckdb21InvalidInputExceptionE = comdat any

$_ZTSN6duckdb21InvalidInputExceptionE = comdat any

$_ZTIN6duckdb9ExceptionE = comdat any

$_ZTSN6duckdb9ExceptionE = comdat any

$_ZTIN6duckdb17InternalExceptionE = comdat any

$_ZTSN6duckdb17InternalExceptionE = comdat any

@.str = private unnamed_addr constant [10 x i8] c"encodings\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"The CSV Reader does not support the encoding: \22\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [116 x i8] c"It is possible that the encoding exists in the encodings extension. You can try \22INSTALL encodings; LOAD encodings\22\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"The currently supported encodings are: \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"*  \00", align 1
@_ZTIN6duckdb21InvalidInputExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb21InvalidInputExceptionE, ptr @_ZTIN6duckdb9ExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6duckdb21InvalidInputExceptionE = linkonce_odr constant [33 x i8] c"N6duckdb21InvalidInputExceptionE\00", comdat, align 1
@_ZTIN6duckdb9ExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb9ExceptionE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN6duckdb9ExceptionE = linkonce_odr constant [20 x i8] c"N6duckdb9ExceptionE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.8 = private unnamed_addr constant [50 x i8] c"Attempted to dereference shared_ptr that is NULL!\00", align 1
@_ZTIN6duckdb17InternalExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb17InternalExceptionE, ptr @_ZTIN6duckdb9ExceptionE }, comdat, align 8
@_ZTSN6duckdb17InternalExceptionE = linkonce_odr constant [29 x i8] c"N6duckdb17InternalExceptionE\00", comdat, align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"Attempting to dereference an optional pointer that is not set\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN6duckdb10CSVEncoderC1ERNS_13ClientContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm = unnamed_addr alias void (ptr, ptr, ptr, i64), ptr @_ZN6duckdb10CSVEncoderC2ERNS_13ClientContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16CSVEncoderBuffer10InitializeEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((32, 40)) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %1, ptr %i.a, align 8, !tbaa !7
  %i.b = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %1) #15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !20
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #16
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK6duckdb16CSVEncoderBuffer3PtrEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK6duckdb16CSVEncoderBuffer11GetCapacityEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK6duckdb16CSVEncoderBuffer7GetSizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb16CSVEncoderBuffer7SetSizeEm(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((8, 16)) %0, i64 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb16CSVEncoderBuffer13HasDataToReadEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !21
  %i.d = icmp ult i64 %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb16CSVEncoderBuffer5ResetEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 16)) %0) local_unnamed_addr #4 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb10CSVEncoderC2ERNS_13ClientContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %5 = alloca %"class.duckdb::optional_ptr.2", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.duckdb::vector.280", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::allocator", align 1   ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !25
  store i8 0, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.c, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i8 0, i64 17, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.e, i8 0, i64 33, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.f, i8 0, i64 26, i1 false)
  %i.g = invoke noundef nonnull align 8 dereferenceable(1360) ptr @_ZN6duckdb8DBConfig9GetConfigERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %1)
          to label %bb.b unwind label %bb.l       ; 3 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !31     ; 6 uses
  %i.i = icmp eq ptr %i.h, %i.a
  %i.j = load ptr, ptr %4, align 8, !tbaa !31     ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.l = icmp eq ptr %i.j, %i.k                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.c
  br i1 %i.l, label %bb.d, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.c
  br i1 %i.l, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !25   ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.o)
  %.not21.i = icmp eq ptr %4, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.e, !prof !32

bb.e:                                             ; preds = %bb.d
  switch i64 %i.n, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.p = load i8, ptr %i.j, align 1, !tbaa !27
  store i8 %i.p, ptr %i.h, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %i.j, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.q = load i64, ptr %i.m, align 8, !tbaa !25   ; 2 uses
  store i64 %i.q, ptr %i.b, align 8, !tbaa !25
  %i.r = load ptr, ptr %0, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  store i8 0, ptr %i.s, align 1, !tbaa !27
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.j, ptr %0, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = load <2 x i64>, ptr %i.t, align 8, !tbaa !27
  store <2 x i64> %i.u, ptr %i.b, align 8, !tbaa !27
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.v = load i64, ptr %i.a, align 8, !tbaa !27
  store ptr %i.j, ptr %0, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = load <2 x i64>, ptr %i.w, align 8, !tbaa !27
  store <2 x i64> %i.x, ptr %i.b, align 8, !tbaa !27
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.h, ptr %4, align 8, !tbaa !31
  store i64 %i.v, ptr %i.k, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.k, ptr %4, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.h, %bb.i
  %i.y = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.h, %bb.h ], [ %i.k, %bb.i ], [ %i.j, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !25
  store i8 0, ptr %i.y, align 1, !tbaa !27
  %i.aa = load ptr, ptr %4, align 8, !tbaa !31    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.aa) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.ad = invoke ptr @_ZNK6duckdb8DBConfig17GetEncodeFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1360) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.n       ; 2 uses

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.ad, ptr %5, align 8
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %._crit_edge.i.i, label %.thread

._crit_edge.i.i:                                  ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.ae, ptr %6, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ae, ptr noundef nonnull align 1 dereferenceable(9) @.str, i64 9, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 9, ptr %i.af, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 25
  store i8 0, ptr %i.ag, align 1, !tbaa !27
  %i.ah = call noundef zeroext i1 @_ZN6duckdb7Catalog11TryAutoLoadERNS_13ClientContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  %i.ai = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ae
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %._crit_edge.i.i
  call void @_ZdlPv(ptr noundef %i.ai) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br i1 %i.ah, label %bb.k, label %thread-pre-split.thread

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.ak = invoke ptr @_ZNK6duckdb8DBConfig17GetEncodeFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1360) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %thread-pre-split unwind label %bb.o ; 2 uses

bb.l:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.m:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.ar

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.o:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

thread-pre-split:                                 ; preds = %bb.k
  store ptr %i.ak, ptr %5, align 8, !tbaa !33
  %i.ap = icmp eq ptr %i.ak, null
  br i1 %i.ap, label %thread-pre-split.thread, label %.thread

thread-pre-split.thread:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %thread-pre-split
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_ZNK6duckdb8DBConfig25GetLoadedEncodedFunctionsEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.280") align 8 %7, ptr noundef nonnull align 8 dereferenceable(1360) %i.g)
          to label %bb.p unwind label %bb.v

bb.p:                                             ; preds = %thread-pre-split.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %8)
          to label %bb.q unwind label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.1, i64 noundef 47)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.x ; 0 uses

end_hunk_0
begin_hunk_1_@_ZNK6duckdb16EncodingFunction7GetNameB5cxx11Ev:bb.a
  store ptr %i.h, ptr %0, align 8, !tbaa !31
  %i.i = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.i, ptr %i.c, align 8, !tbaa !27
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !27
  store i8 %i.k, ptr %i.j, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !25
  %i.n = load ptr, ptr %0, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #0 align 2

declare void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #9 align 2

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb10CSVEncoder6EncodeERNS_10FileHandleEPcm(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i64, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !21
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %.lr.ph.preheader, label %bb.b

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.i = phi i64 [ %i.p, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.j = phi i64 [ %i.m, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !27
  %i.m = add i64 %i.j, 1                          ; 2 uses
  store i64 %i.m, ptr %i.a, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %i.j
  store i8 %i.l, ptr %i.n, align 1, !tbaa !27
  %i.o = load i64, ptr %i.b, align 8, !tbaa !49
  %i.p = add i64 %i.o, 1                          ; 3 uses
  store i64 %i.p, ptr %i.b, align 8, !tbaa !49
  %i.q = load i64, ptr %i.d, align 8, !tbaa !21
  %i.r = icmp ult i64 %i.p, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %.lr.ph
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 16, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !21
  %i.w = icmp ult i64 %i.t, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_16EncodingFunctionELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !55   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !56
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !20
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %3, ptr noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.y)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 129 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit, %bb.d
  %i.al = load i64, ptr %i.a, align 8, !tbaa !48  ; 3 uses
  %i.am = icmp ult i64 %i.al, %3
  br i1 %i.am, label %bb.f, label %bb.ae

bb.f:                                             ; preds = %bb.e
  %i.an = load i64, ptr %i.s, align 8, !tbaa !57
  %i.ao = load i64, ptr %i.u, align 8, !tbaa !21
  %.not = icmp eq i64 %i.an, %i.ao
  br i1 %.not, label %.loopexit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZNK6duckdb12optional_ptrINS_16EncodingFunctionELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  %i.ap = load ptr, ptr %i.ad, align 8, !tbaa !55 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !58
  %i.as = load i64, ptr %i.u, align 8, !tbaa !21
  %i.at = load i64, ptr %i.s, align 8, !tbaa !57
  %i.au = sub i64 %i.as, %i.at                    ; 2 uses
  %i.av = icmp ugt i64 %i.ar, %i.au
  br i1 %i.av, label %_ZN6duckdb12optional_ptrINS_16EncodingFunctionELb1EEptEv.exit41, label %.loopexit.thread

.preheader._crit_edge:                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backERKc.exit
  %i.aw = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.h:                                             ; preds = %.preheader._crit_edge
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.aw, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #18
          to label %bb.l unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %.preheader._crit_edge
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.az = load ptr, ptr %4, align 8, !tbaa !31    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.az) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br i1 %.0.i, label %bb.k, label %.body50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br i1 %.0.i, label %bb.k, label %.body50

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.aw) #17
  br label %.body50

bb.l:                                             ; preds = %bb.i
  unreachable

_ZN6duckdb12optional_ptrINS_16EncodingFunctionELb1EEptEv.exit41: ; preds = %bb.g, %_ZNSt6vectorIcSaIcEE9push_backERKc.exit
  %i.bc = phi ptr [ %i.bw, %_ZNSt6vectorIcSaIcEE9push_backERKc.exit ], [ %i.ap, %bb.g ]
  %.03090 = phi i64 [ %i.bv, %_ZNSt6vectorIcSaIcEE9push_backERKc.exit ], [ %i.au, %bb.g ] ; 3 uses
  %.sroa.26.089 = phi ptr [ %.sroa.26.1, %_ZNSt6vectorIcSaIcEE9push_backERKc.exit ], [ null, %bb.g ] ; 3 uses
  %.sroa.15.088 = phi ptr [ %.sroa.15.2, %_ZNSt6vectorIcSaIcEE9push_backERKc.exit ], [ null, %bb.g ] ; 5 uses
  %.sroa.0.087 = phi ptr [ %.sroa.0.3, %_ZNSt6vectorIcSaIcEE9push_backERKc.exit ], [ null, %bb.g ] ; 17 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !58
  %i.bf = icmp ult i64 %.03090, %i.be
  br i1 %i.bf, label %bb.m, label %.loopexit

.loopexit77:                                      ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body50

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body50

bb.m:                                             ; preds = %_ZN6duckdb12optional_ptrINS_16EncodingFunctionELb1EEptEv.exit41
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.03090 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.15.088, %.sroa.26.089
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !27
  store i8 %i.bi, ptr %.sroa.15.088, align 1, !tbaa !27
  br label %_ZNSt6vectorIcSaIcEE9push_backERKc.exit

bb.o:                                             ; preds = %bb.m
  %i.bj = ptrtoint ptr %.sroa.26.089 to i64
  %i.bk = ptrtoint ptr %.sroa.0.087 to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 7 uses
  %i.bm = icmp eq i64 %i.bl, 9223372036854775807
  br i1 %i.bm, label %bb.p, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #18
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.p
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bn = add i64 %.sroa.speculated.i.i.i, %i.bl  ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bl
  %i.bp = call i64 @llvm.umin.i64(i64 %i.bn, i64 9223372036854775807)
  %i.bq = select i1 %i.bo, i64 9223372036854775807, i64 %i.bp ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bq, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %6 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #15
          to label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i unwind label %.loopexit77 ; 4 uses

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i: ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 %i.bl ; 2 uses
  %i.bs = load i8, ptr %i.bh, align 1, !tbaa !27
  store i8 %i.bs, ptr %i.br, align 1, !tbaa !27
  %i.bt = icmp sgt i64 %i.bl, 0
  br i1 %i.bt, label %bb.q, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %6, ptr align 1 %.sroa.0.087, i64 %i.bl, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i: ; preds = %bb.q, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i
  %.not.i17.i.i = icmp eq ptr %.sroa.0.087, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0.087) #16
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 %i.bq
  br label %_ZNSt6vectorIcSaIcEE9push_backERKc.exit

_ZNSt6vectorIcSaIcEE9push_backERKc.exit:          ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i, %bb.n
  %.sroa.0.3 = phi ptr [ %6, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i ], [ %.sroa.0.087, %bb.n ] ; 4 uses
  %.pn = phi ptr [ %i.br, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i ], [ %.sroa.15.088, %bb.n ]
  %.sroa.26.1 = phi ptr [ %i.bu, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i ], [ %.sroa.26.089, %bb.n ]
  %.sroa.15.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 1
  %i.bv = add nuw i64 %.03090, 1
  %i.bw = load ptr, ptr %i.ad, align 8, !tbaa !55 ; 2 uses
  %.not.i49 = icmp eq ptr %i.bw, null
  br i1 %.not.i49, label %.preheader._crit_edge, label %_ZN6duckdb12optional_ptrINS_16EncodingFunctionELb1EEptEv.exit41, !llvm.loop !59

.loopexit.thread:                                 ; preds = %bb.f, %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, i8 0, i64 16, i1 false)
  br label %._crit_edge96

.loopexit:                                        ; preds = %_ZN6duckdb12optional_ptrINS_16EncodingFunctionELb1EEptEv.exit41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, i8 0, i64 16, i1 false)
  %i.bx = ptrtoint ptr %.sroa.15.088 to i64       ; 2 uses
  %i.by = ptrtoint ptr %.sroa.0.087 to i64        ; 2 uses
  %i.bz = sub i64 %i.bx, %i.by                    ; 4 uses
  %.not98 = icmp eq ptr %.sroa.15.088, %.sroa.0.087
  br i1 %.not98, label %._crit_edge96, label %.lr.ph95.preheader

.lr.ph95.preheader:                               ; preds = %.loopexit
  %xtraiter = and i64 %i.bz, 3                    ; 3 uses
  %i.ca = sub i64 %i.by, %i.bx
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %.lr.ph95.epil.preheader, label %.lr.ph95.preheader.new

.lr.ph95.preheader.new:                           ; preds = %.lr.ph95.preheader
  %unroll_iter = and i64 %i.bz, -4
  br label %.lr.ph95

._crit_edge96.loopexit.unr-lcssa:                 ; preds = %.lr.ph95
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge96, label %.lr.ph95.epil.preheader

.lr.ph95.epil.preheader:                          ; preds = %._crit_edge96.loopexit.unr-lcssa, %.lr.ph95.preheader
  %.03193.epil.init = phi i64 [ 0, %.lr.ph95.preheader ], [ %i.dd, %._crit_edge96.loopexit.unr-lcssa ]
  %lcmp.mod157 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod157)
  br label %.lr.ph95.epil

.lr.ph95.epil:                                    ; preds = %.lr.ph95.epil, %.lr.ph95.epil.preheader
  %.03193.epil = phi i64 [ %i.cg, %.lr.ph95.epil ], [ %.03193.epil.init, %.lr.ph95.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph95.epil ], [ 0, %.lr.ph95.epil.preheader ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.087, i64 %.03193.epil
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !27
  %i.ce = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.03193.epil
  store i8 %i.cd, ptr %i.cf, align 1, !tbaa !27
  %i.cg = add nuw i64 %.03193.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge96, label %.lr.ph95.epil, !llvm.loop !60

._crit_edge96:                                    ; preds = %._crit_edge96.loopexit.unr-lcssa, %.lr.ph95.epil, %.loopexit.thread, %.loopexit
  %i.ch = phi i64 [ 0, %.loopexit.thread ], [ 0, %.loopexit ], [ %i.bz, %.lr.ph95.epil ], [ %i.bz, %._crit_edge96.loopexit.unr-lcssa ] ; 5 uses
  %.sroa.0.1120 = phi ptr [ null, %.loopexit.thread ], [ %.sroa.0.087, %.loopexit ], [ %.sroa.0.087, %.lr.ph95.epil ], [ %.sroa.0.087, %._crit_edge96.loopexit.unr-lcssa ] ; 4 uses
  %i.ci = load i8, ptr %i.af, align 1, !tbaa !62, !range !63, !noundef !64
  %i.cj = trunc nuw i8 %i.ci to i1
  %.pre107 = load ptr, ptr %i.ae, align 8, !tbaa !20 ; 2 uses
  br i1 %i.cj, label %bb.s, label %bb.t

.lr.ph95:                                         ; preds = %.lr.ph95, %.lr.ph95.preheader.new
  %.03193 = phi i64 [ 0, %.lr.ph95.preheader.new ], [ %i.dd, %.lr.ph95 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph95.preheader.new ], [ %niter.next.3, %.lr.ph95 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.087, i64 %.03193
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !27
  %i.cm = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.03193
  store i8 %i.cl, ptr %i.cn, align 1, !tbaa !27
  %i.co = or disjoint i64 %.03193, 1              ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.087, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !27
  %i.cr = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.co
  store i8 %i.cq, ptr %i.cs, align 1, !tbaa !27
  %i.ct = or disjoint i64 %.03193, 2              ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.087, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !27
  %i.cw = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.ct
  store i8 %i.cv, ptr %i.cx, align 1, !tbaa !27
  %i.cy = or disjoint i64 %.03193, 3              ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.087, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !27
  %i.db = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cy
  store i8 %i.da, ptr %i.dc, align 1, !tbaa !27
  %i.dd = add nuw i64 %.03193, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge96.loopexit.unr-lcssa, label %.lr.ph95, !llvm.loop !65

bb.s:                                             ; preds = %._crit_edge96
  %i.de = load i8, ptr %i.ag, align 8, !tbaa !66
  %i.df = getelementptr inbounds nuw i8, ptr %.pre107, i64 %i.ch
  store i8 %i.de, ptr %i.df, align 1, !tbaa !27
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !20
  %.pre108 = load i8, ptr %i.af, align 1, !tbaa !62, !range !63
  %i.dg = zext nneg i8 %.pre108 to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge96
  %i.dh = phi i64 [ %i.dg, %bb.s ], [ 0, %._crit_edge96 ] ; 2 uses
  %i.di = phi ptr [ %.pre, %bb.s ], [ %.pre107, %._crit_edge96 ]
  %.sroa.02.0.copyload = load ptr, ptr %i.ah, align 8, !tbaa !67
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.ch
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dh
  %i.dl = load i64, ptr %i.ai, align 8, !tbaa !7
  %i.dm = add i64 %i.ch, %i.dh
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = invoke noundef i64 @_ZN6duckdb10FileHandle4ReadENS_12QueryContextEPvm(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr %.sroa.02.0.copyload, ptr noundef %i.dk, i64 noundef %i.dn)
          to label %bb.u unwind label %bb.v       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.dp = add i64 %i.do, %i.ch
  %i.dq = load i8, ptr %i.af, align 1, !tbaa !62, !range !63, !noundef !64
  %i.dr = zext nneg i8 %i.dq to i64
  %i.ds = add i64 %i.dp, %i.dr
  store i64 %i.ds, ptr %i.u, align 8, !tbaa !21
  %i.dt = load i64, ptr %i.ai, align 8, !tbaa !7
  %i.du = sub i64 %i.dt, %i.ch
  %i.dv = icmp ult i64 %i.do, %i.du
  br i1 %i.dv, label %.sink.split, label %bb.w

bb.v:                                             ; preds = %bb.z, %bb.aa, %bb.t
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body50

bb.w:                                             ; preds = %bb.u
  %.sroa.0.0.copyload = load ptr, ptr %i.ah, align 8, !tbaa !67
  %i.dx = invoke noundef i64 @_ZN6duckdb10FileHandle4ReadENS_12QueryContextEPvm(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr %.sroa.0.0.copyload, ptr noundef nonnull %i.ag, i64 noundef 1)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %.sink.split, label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.body50

.sink.split:                                      ; preds = %bb.x, %bb.u
  store i8 1, ptr %i.aj, align 8, !tbaa !68
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.x
  %storemerge36 = phi i8 [ 1, %bb.x ], [ 0, %.sink.split ]
  store i8 %storemerge36, ptr %i.af, align 1, !tbaa !62
  invoke void @_ZNK6duckdb12optional_ptrINS_16EncodingFunctionELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %bb.aa unwind label %bb.v

bb.aa:                                            ; preds = %bb.z
  %i.ea = load ptr, ptr %i.ad, align 8, !tbaa !55 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !56
  %i.ed = load ptr, ptr %i.ak, align 8, !tbaa !20
  invoke void %i.ec(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %3, ptr noundef %i.ed, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.ea)
          to label %bb.ab unwind label %bb.v

bb.ab:                                            ; preds = %bb.aa
  %i.ee = load i64, ptr %i.a, align 8, !tbaa !48
  %.not38 = icmp eq i64 %i.ee, %i.al
  %.not.i.i.i46 = icmp eq ptr %.sroa.0.1120, null
  br i1 %.not.i.i.i46, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0.1120) #16
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.ab, %bb.ac
  br i1 %.not38, label %bb.ae, label %bb.e, !llvm.loop !69

.body50:                                          ; preds = %.loopexit77, %.loopexit.split-lp, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.v, %bb.y
  %.sroa.0.2 = phi ptr [ %.sroa.0.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.sroa.0.1120, %bb.v ], [ %.sroa.0.1120, %bb.y ], [ %.sroa.0.3, %bb.k ], [ %.sroa.0.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.sroa.0.087, %.loopexit77 ], [ %.sroa.0.087, %.loopexit.split-lp ] ; 2 uses
  %.pn39 = phi { ptr, i32 } [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dw, %bb.v ], [ %i.dz, %bb.y ], [ %.pn9.i, %bb.k ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %lpad.loopexit, %.loopexit77 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i47 = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i.i.i47, label %_ZNSt6vectorIcSaIcEED2Ev.exit48, label %bb.ad

bb.ad:                                            ; preds = %.body50
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0.2) #16
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit48

_ZNSt6vectorIcSaIcEED2Ev.exit48:                  ; preds = %.body50, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  resume { ptr, i32 } %.pn39

bb.ae:                                            ; preds = %bb.e, %_ZNSt6vectorIcSaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %i.al
}

declare noundef i64 @_ZN6duckdb10FileHandle4ReadENS_12QueryContextEPvm(ptr noundef nonnull align 8 dereferenceable(80), ptr, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11
end_hunk_1
