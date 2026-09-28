Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/Platform?download=true
inline.NumInlined: 234
inline.NumDeleted: 116
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::mersenne_twister_engine" = type { [624 x i64], i64 }
%"class.std::uniform_int_distribution" = type { %"struct.std::uniform_int_distribution<>::param_type" }
%"struct.std::uniform_int_distribution<>::param_type" = type { i32, i32 }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon.1 }
%union.anon.1 = type { i32 }
%"class.std::__cxx11::basic_string.2" = type { %"struct.std::__cxx11::basic_string<wchar_t>::_Alloc_hider", i64, %union.anon.6 }
%"struct.std::__cxx11::basic_string<wchar_t>::_Alloc_hider" = type { ptr }
%union.anon.6 = type { i64, [8 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }

@_ZZN16OpenColorIO_v2_514GetEnvVariableEPKcE5valueB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZGVZN16OpenColorIO_v2_514GetEnvVariableEPKcE5valueB5cxx11 = internal global i64 0, align 8
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"String pointer for comparison must not be null.\00", align 1
@_ZTIN16OpenColorIO_v2_59ExceptionE = external constant ptr
@.str.2 = private unnamed_addr constant [11 x i8] c"/tmp/ocio_\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Only supported by the Windows platform.\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@_ZZN16OpenColorIO_v2_58Platform12_GLOBAL__N_120GenerateRandomNumberEvE6engine = internal global %"class.std::mersenne_twister_engine" zeroinitializer, align 8
@_ZGVZN16OpenColorIO_v2_58Platform12_GLOBAL__N_120GenerateRandomNumberEvE6engine = internal global i64 0, align 8
@_ZZN16OpenColorIO_v2_58Platform12_GLOBAL__N_120GenerateRandomNumberEvE4dist = internal global %"class.std::uniform_int_distribution" zeroinitializer, align 4
@_ZGVZN16OpenColorIO_v2_58Platform12_GLOBAL__N_120GenerateRandomNumberEvE4dist = internal global i64 0, align 8
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN16OpenColorIO_v2_514GetEnvVariableEPKc(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN16OpenColorIO_v2_514GetEnvVariableEPKcE5valueB5cxx11 acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN16OpenColorIO_v2_514GetEnvVariableEPKcE5valueB5cxx11) #18
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN16OpenColorIO_v2_514GetEnvVariableEPKcE5valueB5cxx11, i64 16), ptr @_ZZN16OpenColorIO_v2_514GetEnvVariableEPKcE5valueB5cxx11, align 8, !tbaa !11
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN16OpenColorIO_v2_514GetEnvVariableEPKcE5valueB5cxx11, i64 8), align 8, !tbaa !14
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN16OpenColorIO_v2_514GetEnvVariableEPKcE5valueB5cxx11, i64 16), align 8, !tbaa !15
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZN16OpenColorIO_v2_514GetEnvVariableEPKcE5valueB5cxx11, ptr nonnull @__dso_handle) #18 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN16OpenColorIO_v2_514GetEnvVariableEPKcE5valueB5cxx11) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZN16OpenColorIO_v2_58Platform6GetenvEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = load i8, ptr %0, align 1, !tbaa !15
  %.not11.i = icmp eq i8 %i.e, 0
  br i1 %.not11.i, label %_ZN16OpenColorIO_v2_58Platform6GetenvEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call ptr @getenv(ptr noundef nonnull readonly %0) #18 ; 3 uses
  %.not1 = icmp eq ptr %i.f, null
  br i1 %.not1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = load i8, ptr %i.f, align 1, !tbaa !15
  %.not12.i = icmp eq i8 %i.g, 0
  %spec.select.i = select i1 %.not12.i, ptr @.str, ptr %i.f
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.h = phi ptr [ @.str, %bb.f ], [ %spec.select.i, %bb.g ] ; 2 uses
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN16OpenColorIO_v2_514GetEnvVariableEPKcE5valueB5cxx11, i64 8), align 8, !tbaa !14
  %i.j = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #18
  %i.k = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN16OpenColorIO_v2_514GetEnvVariableEPKcE5valueB5cxx11, i64 noundef 0, i64 noundef %i.i, ptr noundef nonnull %i.h, i64 noundef %i.j) ; 0 uses
  br label %_ZN16OpenColorIO_v2_58Platform6GetenvEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN16OpenColorIO_v2_58Platform6GetenvEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.e, %bb.h
  %i.l = load ptr, ptr @_ZZN16OpenColorIO_v2_514GetEnvVariableEPKcE5valueB5cxx11, align 8, !tbaa !16
  ret ptr %i.l
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #2 align 2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_58Platform6GetenvEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !15
  %.not11 = icmp eq i8 %i.a, 0
  br i1 %.not11, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @getenv(ptr noundef nonnull %0) #18 ; 3 uses
  %i.c = icmp ne ptr %i.b, null                   ; 2 uses
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = load i8, ptr %i.b, align 1, !tbaa !15
  %.not12 = icmp eq i8 %i.d, 0
  %spec.select = select i1 %.not12, ptr @.str, ptr %i.b
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = phi ptr [ @.str, %bb.c ], [ %spec.select, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14
  %i.h = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #18
  %i.i = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.g, ptr noundef nonnull %i.e, i64 noundef %i.h) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.e
  %.0 = phi i1 [ %i.c, %bb.e ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_514SetEnvVariableEPKcS1_(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %.not = icmp eq ptr %1, null
  %i.b = select i1 %.not, ptr @.str, ptr %1       ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !11
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.d, ptr %i.a, align 8, !tbaa !17
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !16
  %i.g = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.g, ptr %i.c, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.d, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %i.b, align 1, !tbaa !15
  store i8 %i.i, ptr %i.h, align 1, !tbaa !15
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %i.b, i64 %i.d, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !14
  %i.l = load ptr, ptr %2, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZN16OpenColorIO_v2_58Platform6SetenvEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i8, ptr %0, align 1, !tbaa !15
  %.not4.i = icmp eq i8 %i.n, 0
  br i1 %.not4.i, label %_ZN16OpenColorIO_v2_58Platform6SetenvEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %2, align 8, !tbaa !16
  %i.p = call i32 @setenv(ptr noundef nonnull %0, ptr noundef %i.o, i32 noundef 1) #18 ; 0 uses
  br label %_ZN16OpenColorIO_v2_58Platform6SetenvEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN16OpenColorIO_v2_58Platform6SetenvEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.q = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN16OpenColorIO_v2_58Platform6SetenvEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !15
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN16OpenColorIO_v2_58Platform6SetenvEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_58Platform6SetenvEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !15
  %.not4 = icmp eq i8 %i.a, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !16
  %i.c = tail call i32 @setenv(ptr noundef nonnull %0, ptr noundef %i.b, i32 noundef 1) #18 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN16OpenColorIO_v2_516UnsetEnvVariableEPKc(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZN16OpenColorIO_v2_58Platform8UnsetenvEPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !15
  %.not3.i = icmp eq i8 %i.a, 0
  br i1 %.not3.i, label %_ZN16OpenColorIO_v2_58Platform8UnsetenvEPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 @unsetenv(ptr noundef nonnull readonly %0) #18 ; 0 uses
  br label %_ZN16OpenColorIO_v2_58Platform8UnsetenvEPKc.exit

_ZN16OpenColorIO_v2_58Platform8UnsetenvEPKc.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_58Platform8UnsetenvEPKc(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !15
  %.not3 = icmp eq i8 %i.a, 0
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 @unsetenv(ptr noundef nonnull %0) #18 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN16OpenColorIO_v2_520IsEnvVariablePresentEPKc(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN16OpenColorIO_v2_58Platform12isEnvPresentEPKc(ptr noundef %0)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_58Platform12isEnvPresentEPKc(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !15
  %.not6 = icmp eq i8 %i.a, 0
  br i1 %.not6, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !14
  store i8 0, ptr %i.b, align 8, !tbaa !15
  %i.d = call ptr @getenv(ptr noundef nonnull readonly %0) #18 ; 3 uses
  %i.e = icmp ne ptr %i.d, null                   ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load i8, ptr %i.d, align 1, !tbaa !15
  %.not12.i = icmp eq i8 %i.f, 0
  %spec.select.i = select i1 %.not12.i, ptr @.str, ptr %i.d
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = phi ptr [ @.str, %bb.c ], [ %spec.select.i, %bb.d ] ; 2 uses
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #18
  %i.i = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %i.g, i64 noundef %i.h)
          to label %_ZN16OpenColorIO_v2_58Platform6GetenvEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.f ; 0 uses

_ZN16OpenColorIO_v2_58Platform6GetenvEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e
  %i.j = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.b
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN16OpenColorIO_v2_58Platform6GetenvEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.l = load i64, ptr %i.b, align 8, !tbaa !15
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN16OpenColorIO_v2_58Platform6GetenvEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.f
  %i.q = load i64, ptr %i.b, align 8, !tbaa !15
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %i.n

bb.g:                                             ; preds = %bb.a, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0 = phi i1 [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @setenv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @unsetenv(ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #18
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %i.e = tail call i32 @strcasecmp(ptr noundef nonnull %0, ptr noundef nonnull %1) #21
  ret i32 %i.e
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #8

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_59ExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN16OpenColorIO_v2_58Platform11StrncasecmpEPKcS2_m(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #18
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %i.e = tail call i32 @strncasecmp(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) #21
  ret i32 %i.e
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden noundef ptr @_ZN16OpenColorIO_v2_58Platform13AlignedMallocEmm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8, !tbaa !35
  %i.b = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef %1, i64 noundef %0) #18
  %.not = icmp eq i32 %i.b, 0
  %i.c = load ptr, ptr %i.a, align 8
  %.0 = select i1 %.not, ptr %i.c, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %.0
}

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_58Platform11AlignedFreeEPv(ptr noundef captures(none) %0) local_unnamed_addr #11 {
bb.a:
  tail call void @free(ptr noundef %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_58Platform18CreateTempFilenameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !14
  store i8 0, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.b unwind label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.2, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.e = load atomic i8, ptr @_ZGVZN16OpenColorIO_v2_58Platform12_GLOBAL__N_120GenerateRandomNumberEvE6engine acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.h, !prof !7

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN16OpenColorIO_v2_58Platform12_GLOBAL__N_120GenerateRandomNumberEvE6engine) #18
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 5489, ptr @_ZZN16OpenColorIO_v2_58Platform12_GLOBAL__N_120GenerateRandomNumberEvE6engine, align 8, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %store_forwarded = phi i64 [ 5489, %bb.d ], [ %i.t, %bb.f ] ; 2 uses
  %.011.i.i.i.i = phi i64 [ 1, %bb.d ], [ %i.u, %bb.f ] ; 4 uses
  %i.h = getelementptr [8 x i8], ptr @_ZZN16OpenColorIO_v2_58Platform12_GLOBAL__N_120GenerateRandomNumberEvE6engine, i64 %.011.i.i.i.i
  %i.i = lshr i64 %store_forwarded, 30
  %i.j = xor i64 %i.i, %store_forwarded
  %i.k = mul nuw nsw i64 %i.j, 1812433253
  %i.l = add nuw i64 %i.k, %.011.i.i.i.i          ; 2 uses
  %i.m = and i64 %i.l, 4294967295                 ; 2 uses
  store i64 %i.m, ptr %i.h, align 8, !tbaa !17
  %i.n = add nuw nsw i64 %.011.i.i.i.i, 1         ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.n, 624
  br i1 %exitcond.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr [8 x i8], ptr @_ZZN16OpenColorIO_v2_58Platform12_GLOBAL__N_120GenerateRandomNumberEvE6engine, i64 %i.n
  %i.p = lshr i64 %i.m, 30
  %i.q = xor i64 %i.p, %i.l
  %i.r = mul i64 %i.q, 1812433253
  %i.s = add i64 %i.r, %i.n
  %i.t = and i64 %i.s, 4294967295                 ; 2 uses
  store i64 %i.t, ptr %i.o, align 8, !tbaa !17
  %i.u = add nuw nsw i64 %.011.i.i.i.i, 2
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  store i64 624, ptr getelementptr inbounds nuw (i8, ptr @_ZZN16OpenColorIO_v2_58Platform12_GLOBAL__N_120GenerateRandomNumberEvE6engine, i64 4992), align 8, !tbaa !19
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN16OpenColorIO_v2_58Platform12_GLOBAL__N_120GenerateRandomNumberEvE6engine) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.v = load atomic i8, ptr @_ZGVZN16OpenColorIO_v2_58Platform12_GLOBAL__N_120GenerateRandomNumberEvE4dist acquire, align 8
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.i, label %bb.k, !prof !7

bb.i:                                             ; preds = %bb.h
  %i.x = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN16OpenColorIO_v2_58Platform12_GLOBAL__N_120GenerateRandomNumberEvE4dist) #18
  %.not2.i = icmp eq i32 %i.x, 0
  br i1 %.not2.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr @_ZZN16OpenColorIO_v2_58Platform12_GLOBAL__N_120GenerateRandomNumberEvE4dist, align 4, !tbaa !21
  store i32 2147483647, ptr getelementptr inbounds nuw (i8, ptr @_ZZN16OpenColorIO_v2_58Platform12_GLOBAL__N_120GenerateRandomNumberEvE4dist, i64 4), align 4, !tbaa !22
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN16OpenColorIO_v2_58Platform12_GLOBAL__N_120GenerateRandomNumberEvE4dist) #18
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.y = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) @_ZZN16OpenColorIO_v2_58Platform12_GLOBAL__N_120GenerateRandomNumberEvE4dist, ptr noundef nonnull align 8 dereferenceable(5000) @_ZZN16OpenColorIO_v2_58Platform12_GLOBAL__N_120GenerateRandomNumberEvE6engine, ptr noundef nonnull align 4 dereferenceable(8) @_ZZN16OpenColorIO_v2_58Platform12_GLOBAL__N_120GenerateRandomNumberEvE4dist)
          to label %_ZN16OpenColorIO_v2_58Platform12_GLOBAL__N_120GenerateRandomNumberEv.exit unwind label %bb.x

_ZN16OpenColorIO_v2_58Platform12_GLOBAL__N_120GenerateRandomNumberEv.exit: ; preds = %bb.k
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.y)
          to label %bb.l unwind label %bb.x       ; 0 uses

bb.l:                                             ; preds = %_ZN16OpenColorIO_v2_58Platform12_GLOBAL__N_120GenerateRandomNumberEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  store ptr %i.aa, ptr %3, align 8, !tbaa !11, !alias.scope !42
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 0, ptr %i.ab, align 8, !tbaa !14, !alias.scope !42
  store i8 0, ptr %i.aa, align 8, !tbaa !15, !alias.scope !42
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !26, !noalias !42 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ad, null
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !42 ; 2 uses
  %i.ag = icmp ugt ptr %i.ad, %i.af
  %.08.i.i.i = select i1 %i.ag, ptr %i.ad, ptr %i.af ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !27, !noalias !42 ; 2 uses
  %i.aj = ptrtoint ptr %.08.i.i.i to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.ai, i64 noundef %i.al)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %3, align 8, !tbaa !16, !alias.scope !42 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.aa
  br i1 %i.ap, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.aq = load i64, ptr %i.aa, align 8, !tbaa !15, !alias.scope !42
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #19
  br label %.body

bb.o:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.n

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.o, %bb.m
  %i.at = load ptr, ptr %0, align 8, !tbaa !16    ; 6 uses
  %i.au = icmp eq ptr %i.at, %i.a
  %i.av = load ptr, ptr %3, align 8, !tbaa !16    ; 6 uses
  %i.aw = icmp eq ptr %i.av, %i.aa                ; 2 uses
  br i1 %i.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.aw, label %bb.p, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.aw, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ax = load i64, ptr %i.ab, align 8, !tbaa !14 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  call void @llvm.assume(i1 %i.ay)
  %.not21.i = icmp eq ptr %3, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.q, !prof !43

bb.q:                                             ; preds = %bb.p
  switch i64 %i.ax, label %bb.s [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.az = load i8, ptr %i.av, align 1, !tbaa !15
  store i8 %i.az, ptr %i.at, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %i.av, i64 %i.ax, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.s, %bb.r, %bb.q
  %i.ba = load i64, ptr %i.ab, align 8, !tbaa !14 ; 2 uses
  store i64 %i.ba, ptr %i.b, align 8, !tbaa !14
  %i.bb = load ptr, ptr %0, align 8, !tbaa !16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  store i8 0, ptr %i.bc, align 1, !tbaa !15
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.av, ptr %0, align 8, !tbaa !16
  %i.bd = load <2 x i64>, ptr %i.ab, align 8, !tbaa !15
  store <2 x i64> %i.bd, ptr %i.b, align 8, !tbaa !15
  br label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.be = load i64, ptr %i.a, align 8, !tbaa !15
  store ptr %i.av, ptr %0, align 8, !tbaa !16
  %i.bf = load <2 x i64>, ptr %i.ab, align 8, !tbaa !15
  store <2 x i64> %i.bf, ptr %i.b, align 8, !tbaa !15
  %.not.i7 = icmp eq ptr %i.at, null
  br i1 %.not.i7, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.at, ptr %3, align 8, !tbaa !16
  store i64 %i.be, ptr %i.aa, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.aa, ptr %3, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.t, %bb.u
  %i.bg = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.at, %bb.t ], [ %i.aa, %bb.u ], [ %i.av, %bb.p ]
  store i64 0, ptr %i.ab, align 8, !tbaa !14
  store i8 0, ptr %i.bg, align 1, !tbaa !15
  %i.bh = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.aa
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bj = load i64, ptr %i.aa, align 8, !tbaa !15
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !14 ; 2 uses
  %i.bn = load i64, ptr %i.b, align 8, !tbaa !14
  %i.bo = sub i64 4611686018427387903, %i.bn
  %i.bp = icmp ult i64 %i.bo, %i.bm
  br i1 %i.bp, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #20
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.v
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bq = load ptr, ptr %1, align 8, !tbaa !16
  %i.br = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bq, i64 noundef %i.bm)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.x ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bs = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bs, ptr %2, align 8, !tbaa !29
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bu = getelementptr i8, ptr %i.bs, i64 -24
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds i8, ptr %2, i64 %i.bv
  store ptr %i.bt, ptr %i.bw, align 8, !tbaa !29
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bx, ptr %i.c, align 8, !tbaa !29
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.by, align 8, !tbaa !29
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !15
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #19
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.by, align 8, !tbaa !29
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cf) #18
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cg, ptr %2, align 8, !tbaa !29
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ci = getelementptr i8, ptr %i.cg, i64 -24
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds i8, ptr %2, i64 %i.cj
  store ptr %i.ch, ptr %i.ck, align 8, !tbaa !29
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.cl, align 8, !tbaa !45
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cm) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.w:                                             ; preds = %bb.a
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.v, %bb.k, %bb.b, %_ZN16OpenColorIO_v2_58Platform12_GLOBAL__N_120GenerateRandomNumberEv.exit
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.body:                                            ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.y

bb.y:                                             ; preds = %.body, %bb.x
  %.pn = phi { ptr, i32 } [ %i.co, %bb.x ], [ %i.an, %.body ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #18
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.y ], [ %i.cn, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.cp = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.a
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.z
  %i.cr = load i64, ptr %i.a, align 8, !tbaa !15
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_58Platform21CreateInputFileStreamEPKcSt13_Ios_Openmode(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::basic_ifstream") align 8 %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_58Platform19OpenInputFileStreamERSt14basic_ifstreamIcSt11char_traitsIcEEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = or i32 %2, 8
  %i.c = tail call noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(240) %i.a, ptr noundef %1, i32 noundef %i.b)
  %.not.i = icmp eq ptr %i.c, null
  %i.d = load ptr, ptr %0, align 8, !tbaa !29
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  br i1 %.not.i, label %bb.b, label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !52
  %i.j = or i32 %i.i, 4
  br label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit

_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit: ; preds = %bb.a, %bb.b
  %.sink.i = phi i32 [ %i.j, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %.sink.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_58Platform13filenameToUTFERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !11
  %i.c = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.e, ptr %i.a, align 8, !tbaa !17
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !16
  %i.h = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.h, ptr %i.b, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !15
  store i8 %i.j, ptr %i.i, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !14
  %i.m = load ptr, ptr %0, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_58Platform11Utf8ToUtf16ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.2") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !33
  store i32 0, ptr %i.d, align 8, !tbaa !55
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull @.str.3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.f) #18
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_58Platform11Utf16ToUtf8ERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !33
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !14
  store i8 0, ptr %i.d, align 8, !tbaa !15
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull @.str.3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.f) #18
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_58Platform21CreateFileContentHashERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = load ptr, ptr %1, align 8, !tbaa !16
  %i.b = call i32 @stat(ptr noundef %i.a, ptr noundef nonnull %2) #18
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.d = load i64, ptr %2, align 8, !tbaa !62
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.d)
          to label %_ZNSolsEm.exit unwind label %bb.f

_ZNSolsEm.exit:                                   ; preds = %bb.b
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSolsEm.exit
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !63
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.h)
          to label %_ZNSolsEm.exit4 unwind label %bb.f ; 0 uses

_ZNSolsEm.exit4:                                  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !11, !alias.scope !66
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !14, !alias.scope !66
  store i8 0, ptr %i.j, align 8, !tbaa !15, !alias.scope !66
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26, !noalias !66 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !noalias !66 ; 2 uses
  %i.p = icmp ugt ptr %i.m, %i.o
  %.08.i.i.i = select i1 %i.p, ptr %i.m, ptr %i.o ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSolsEm.exit4
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27, !noalias !66 ; 2 uses
  %i.s = ptrtoint ptr %.08.i.i.i to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.r, i64 noundef %i.u)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !16, !alias.scope !66 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.j
  br i1 %i.y, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.z = load i64, ptr %i.j, align 8, !tbaa !15, !alias.scope !66
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #19
  br label %.body

bb.e:                                             ; preds = %_ZNSolsEm.exit4
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.ac = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ac, ptr %3, align 8, !tbaa !29
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ae = getelementptr i8, ptr %i.ac, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %3, i64 %i.af
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ah, align 8, !tbaa !29
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !15
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #19
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ah, align 8, !tbaa !29
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #18
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ap) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSolsEm.exit, %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.f ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.w, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %eh.lpad-body

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ar, ptr %0, align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.as, align 8, !tbaa !14
  store i8 0, ptr %i.ar, align 8, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.std::uniform_int_distribution<>::param_type", align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22
  %i.c = sext i32 %i.b to i64
  %i.d = load i32, ptr %2, align 4, !tbaa !21
  %i.e = sext i32 %i.d to i64
  %i.f = sub nsw i64 %i.c, %i.e                   ; 4 uses
  %i.g = icmp ult i64 %i.f, 4294967295
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = trunc nuw i64 %i.f to i32                ; 3 uses
  %i.i = add nuw i32 %i.h, 1                      ; 2 uses
  %i.j = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.k = zext i32 %i.i to i64                     ; 2 uses
  %i.l = mul i64 %i.j, %i.k                       ; 3 uses
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %.not21 = icmp ult i32 %i.h, %i.m
  br i1 %.not21, label %_ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = xor i32 %i.h, -1
  %i.o = urem i32 %i.n, %i.i                      ; 2 uses
  %i.p = icmp ugt i32 %i.o, %i.m
  br i1 %i.p, label %.lr.ph.i, label %_ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.q = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.r = mul i64 %i.q, %i.k                       ; 2 uses
  %i.s = trunc i64 %i.r to i32
  %i.t = icmp ugt i32 %i.o, %i.s
  br i1 %i.t, label %.lr.ph.i, label %_ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit, !llvm.loop !67

_ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit: ; preds = %.lr.ph.i, %bb.b, %bb.c
  %.1.i = phi i64 [ %i.l, %bb.b ], [ %i.l, %bb.c ], [ %i.r, %.lr.ph.i ]
  %i.u = lshr i64 %.1.i, 32
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.f, 4294967295
  br i1 %.not, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i32 0, ptr %3, align 4, !tbaa !21
  store i32 -1, ptr %i.v, align 4, !tbaa !22
  %i.w = call noundef i32 @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 4 dereferenceable(8) %3)
  %i.x = sext i32 %i.w to i64
  %i.y = shl nsw i64 %i.x, 32                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.z = call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.aa = add i64 %i.y, %i.z                      ; 3 uses
  %i.ab = icmp ugt i64 %i.aa, %i.f
  %i.ac = icmp ult i64 %i.aa, %i.y
  %i.ad = or i1 %i.ab, %i.ac
  br i1 %i.ad, label %bb.e, label %.loopexit, !llvm.loop !68

bb.f:                                             ; preds = %bb.d
  %i.ae = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.f, %_ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
  %.0 = phi i64 [ %i.u, %_ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit ], [ %i.ae, %bb.f ], [ %i.aa, %bb.e ]
  %i.af = load i32, ptr %2, align 4, !tbaa !21
  %i.ag = trunc i64 %.0 to i32
  %i.ah = add i32 %i.af, %i.ag
  ret i32 %i.ah
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4992 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = icmp ugt i64 %i.b, 623
  br i1 %i.c, label %vector.ph, label %bb.b

vector.ph:                                        ; preds = %bb.a
  %.pre.i = load i64, ptr %0, align 8, !tbaa !17
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre.i, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.load = load <2 x i64>, ptr %i.f, align 8, !tbaa !17 ; 5 uses
  %i.g = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.h = and <2 x i64> %i.g, splat (i64 -2147483648)
  %i.i = and <2 x i64> %wide.load, splat (i64 2147483646)
  %i.j = or disjoint <2 x i64> %i.i, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 3176
  %wide.load9 = load <2 x i64>, ptr %i.k, align 8, !tbaa !17
  %i.l = lshr exact <2 x i64> %i.j, splat (i64 1)
  %i.m = xor <2 x i64> %i.l, %wide.load9
  %i.n = and <2 x i64> %wide.load, splat (i64 1)
  %i.o = icmp eq <2 x i64> %i.n, zeroinitializer
  %i.p = select <2 x i1> %i.o, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.q = xor <2 x i64> %i.m, %i.p
  store <2 x i64> %i.q, ptr %i.d, align 8, !tbaa !17
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.r = icmp eq i64 %index.next, 226
  br i1 %i.r, label %vector.ph11, label %vector.body, !llvm.loop !69

vector.ph11:                                      ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.t = and i64 %vector.recur.extract, -2147483648
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.v = load i64, ptr %i.u, align 8, !tbaa !17   ; 2 uses
  %i.w = and i64 %i.v, 2147483646
  %i.x = or disjoint i64 %i.w, %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4984
  %i.z = load i64, ptr %i.y, align 8, !tbaa !17
  %i.aa = lshr exact i64 %i.x, 1
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = and i64 %i.v, 1
  %.not20.i = icmp eq i64 %i.ac, 0
  %i.ad = select i1 %.not20.i, i64 0, i64 2567483615
  %i.ae = xor i64 %i.ab, %i.ad
  store i64 %i.ae, ptr %i.s, align 8, !tbaa !17
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %.pre24.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !17
  %vector.recur.init14 = insertelement <2 x i64> poison, i64 %.pre24.i, i64 1
  br label %vector.body12

vector.body12:                                    ; preds = %vector.body12, %vector.ph11
  %index13 = phi i64 [ 0, %vector.ph11 ], [ %index.next18, %vector.body12 ] ; 3 uses
  %vector.recur15 = phi <2 x i64> [ %vector.recur.init14, %vector.ph11 ], [ %wide.load16, %vector.body12 ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index13 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1816
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1824
  %wide.load16 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !17 ; 4 uses
  %i.aj = shufflevector <2 x i64> %vector.recur15, <2 x i64> %wide.load16, <2 x i32> <i32 1, i32 2>
  %i.ak = and <2 x i64> %i.aj, splat (i64 -2147483648)
  %i.al = and <2 x i64> %wide.load16, splat (i64 2147483646)
  %i.am = or disjoint <2 x i64> %i.al, %i.ak
  %wide.load17 = load <2 x i64>, ptr %i.af, align 8, !tbaa !17
  %i.an = lshr exact <2 x i64> %i.am, splat (i64 1)
  %i.ao = xor <2 x i64> %i.an, %wide.load17
  %i.ap = and <2 x i64> %wide.load16, splat (i64 1)
  %i.aq = icmp eq <2 x i64> %i.ap, zeroinitializer
  %i.ar = select <2 x i1> %i.aq, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.as = xor <2 x i64> %i.ao, %i.ar
  store <2 x i64> %i.as, ptr %i.ag, align 8, !tbaa !17
  %index.next18 = add nuw i64 %index13, 2         ; 2 uses
  %i.at = icmp eq i64 %index.next18, 396
  br i1 %i.at, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit, label %vector.body12, !llvm.loop !70

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit: ; preds = %vector.body12
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4984 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !17
  %i.aw = and i64 %i.av, -2147483648
  %i.ax = load i64, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.ay = and i64 %i.ax, 2147483646
  %i.az = or disjoint i64 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !17
  %i.bc = lshr exact i64 %i.az, 1
  %i.bd = xor i64 %i.bc, %i.bb
  %i.be = and i64 %i.ax, 1
  %.not.i = icmp eq i64 %i.be, 0
  %i.bf = select i1 %.not.i, i64 0, i64 2567483615
  %i.bg = xor i64 %i.bd, %i.bf
  store i64 %i.bg, ptr %i.au, align 8, !tbaa !17
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit, %bb.a
  %i.bh = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.bi = add nuw nsw i64 %i.bh, 1
  store i64 %i.bi, ptr %i.a, align 8, !tbaa !19
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bh
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !17 ; 2 uses
  %i.bl = lshr i64 %i.bk, 11
  %i.bm = and i64 %i.bl, 4294967295
  %i.bn = xor i64 %i.bm, %i.bk                    ; 2 uses
  %i.bo = shl i64 %i.bn, 7
  %i.bp = and i64 %i.bo, 2636928640
  %i.bq = xor i64 %i.bp, %i.bn                    ; 2 uses
  %i.br = shl i64 %i.bq, 15
  %i.bs = and i64 %i.br, 4022730752
  %i.bt = xor i64 %i.bs, %i.bq                    ; 2 uses
  %i.bu = lshr i64 %i.bt, 18
  %i.bv = xor i64 %i.bu, %i.bt
  ret i64 %i.bv
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #8

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(240), ptr noundef, i32 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn }
attributes #21 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"branch_weights", i32 1, i32 1048575}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"long", !4, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !12, i64 8, !4, i64 16}
!14 = !{!13, !12, i64 8}
!15 = !{!4, !4, i64 0}
!16 = !{!13, !9, i64 0}
!17 = !{!12, !12, i64 0}
!18 = !{!"_ZTSSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE", !4, i64 0, !12, i64 4992}
!19 = !{!18, !12, i64 4992}
!20 = !{!"_ZTSNSt24uniform_int_distributionIiE10param_typeE", !5, i64 0, !5, i64 4}
!21 = !{!20, !5, i64 0}
!22 = !{!20, !5, i64 4}
!23 = !{!"p1 _ZTSNSt6locale5_ImplE", !8, i64 0}
!24 = !{!"_ZTSSt6locale", !23, i64 0}
!25 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !24, i64 56}
!26 = !{!25, !9, i64 40}
!27 = !{!25, !9, i64 32}
!28 = !{!"vtable pointer", !3, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"p1 wchar_t", !8, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !30, i64 0}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !31, i64 0, !12, i64 8, !4, i64 16}
!33 = !{!32, !12, i64 8}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!8, !8, i64 0}
!36 = distinct !{!36, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!37 = distinct !{!37, !36, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!38 = distinct !{!38, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!39 = distinct !{!39, !38, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!40 = !{!37}
!41 = !{!39}
!42 = !{!39, !37}
!43 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!44 = !{!"_ZTSSi", !12, i64 8}
!45 = !{!44, !12, i64 8}
!46 = !{!"_ZTSSt13_Ios_Fmtflags", !4, i64 0}
!47 = !{!"_ZTSSt12_Ios_Iostate", !4, i64 0}
!48 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !8, i64 0}
!49 = !{!"_ZTSNSt8ios_base6_WordsE", !8, i64 0, !12, i64 8}
!50 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !8, i64 0}
!51 = !{!"_ZTSSt8ios_base", !12, i64 8, !12, i64 16, !46, i64 24, !47, i64 28, !47, i64 32, !48, i64 40, !49, i64 48, !4, i64 64, !5, i64 192, !50, i64 200, !24, i64 208}
!52 = !{!51, !47, i64 32}
!53 = !{!31, !30, i64 0}
!54 = !{!"wchar_t", !4, i64 0}
!55 = !{!54, !54, i64 0}
!56 = distinct !{!56, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!57 = distinct !{!57, !56, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!58 = distinct !{!58, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!59 = distinct !{!59, !58, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!60 = !{!"_ZTS8timespec", !12, i64 0, !12, i64 8}
!61 = !{!"_ZTS4stat", !12, i64 0, !12, i64 8, !12, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !60, i64 72, !60, i64 88, !60, i64 104, !4, i64 120}
!62 = !{!61, !12, i64 0}
!63 = !{!61, !12, i64 8}
!64 = !{!57}
!65 = !{!59}
!66 = !{!59, !57}
!67 = distinct !{!67, !34}
!68 = distinct !{!68, !34}
!69 = distinct !{!69, !34, !71, !72}
!70 = distinct !{!70, !34, !71, !72}
!71 = !{!"llvm.loop.isvectorized", i32 1}
!72 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
