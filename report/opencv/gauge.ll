Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gauge?download=true
inline.NumInlined: 415
inline.NumDeleted: 181
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.cv::Mat" = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.cv::MatShape", %"struct.cv::MatStep" }
%"struct.cv::MatShape" = type { i32, i32, i32, [10 x i32] }
%"struct.cv::MatStep" = type { [10 x i64] }
%"class.cv::_InputArray" = type { i32, ptr, %"class.cv::Size_" }
%"class.cv::Size_" = type { i32, i32 }
%"class.cv::_OutputArray" = type { %"class.cv::_InputArray" }
%"class.std::vector.16" = type { %"struct.std::_Vector_base.17" }
%"struct.std::_Vector_base.17" = type { %"struct.std::_Vector_base<cv::Vec<int, 4>, std::allocator<cv::Vec<int, 4>>>::_Vector_impl" }
%"struct.std::_Vector_base<cv::Vec<int, 4>, std::allocator<cv::Vec<int, 4>>>::_Vector_impl" = type { %"struct.std::_Vector_base<cv::Vec<int, 4>, std::allocator<cv::Vec<int, 4>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cv::Vec<int, 4>, std::allocator<cv::Vec<int, 4>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.cv::_InputOutputArray" = type { %"class.cv::_OutputArray" }
%"class.cv::Scalar_" = type { %"class.cv::Vec.3" }
%"class.cv::Vec.3" = type { %"class.cv::Matx.4" }
%"class.cv::Matx.4" = type { [4 x double] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<cv::Vec<float, 3>, std::allocator<cv::Vec<float, 3>>>::_Vector_impl" }
%"struct.std::_Vector_base<cv::Vec<float, 3>, std::allocator<cv::Vec<float, 3>>>::_Vector_impl" = type { %"struct.std::_Vector_base<cv::Vec<float, 3>, std::allocator<cv::Vec<float, 3>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cv::Vec<float, 3>, std::allocator<cv::Vec<float, 3>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector.11" = type { %"struct.std::_Vector_base.12" }
%"struct.std::_Vector_base.12" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.cv::CommandLineParser" = type { ptr }
%struct.GaugeCalibration = type <{ double, double, double, double, %"class.std::__cxx11::basic_string", i32, i32, i32, [4 x i8] }>

$__clang_call_terminate = comdat any

$_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

@.str = private unnamed_addr constant [89 x i8] c"{@input   |gauge-1.jpg|Input image to reads the value using functions from the OpenCV. }\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Analog-gauge-reader example:\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"@input\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"Error loading image. \00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"Current reading: \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Error loading image: \00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"No circles found.\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"gauge-calibration.jpg\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"Min angle (lowest possible angle of dial) - in degrees: \00", align 1
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@.str.10 = private unnamed_addr constant [50 x i8] c"Max angle (highest possible angle) - in degrees: \00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Min value: \00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Max value: \00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Enter units: \00", align 1
@__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@.str.15 = private unnamed_addr constant [15 x i8] c"No rows found.\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"No lines within the expected radius.\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %2 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %3 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %4 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %6 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %7 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %8 = alloca %"class.std::vector.16", align 8    ; 12 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %10 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %11 = alloca %"class.std::vector.16", align 8   ; 10 uses
  %12 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %13 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 14 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %16 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %17 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %18 = alloca %"class.std::vector", align 8      ; 11 uses
  %19 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %20 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %21 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %22 = alloca %"class.cv::Scalar_", align 8      ; 6 uses
  %23 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %24 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %25 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %26 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %27 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.cv::Scalar_", align 8      ; 4 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %31 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %32 = alloca %"class.std::vector.11", align 8   ; 9 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %33 = alloca %"class.cv::CommandLineParser", align 8 ; 9 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %39 = alloca %struct.GaugeCalibration, align 8  ; 14 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %41 = alloca %"class.cv::Mat", align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #17
  %i.e = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 6 uses
  store ptr %i.e, ptr %34, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i64 88, ptr %i.d, align 8, !tbaa !37
  %i.f = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.f, ptr %34, align 8, !tbaa !39
  %i.g = load i64, ptr %i.d, align 8, !tbaa !37   ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(88) %i.f, ptr noundef nonnull align 1 dereferenceable(88) @.str, i64 88, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  store i8 0, ptr %i.i, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  invoke void @_ZN2cv17CommandLineParserC1EiPKPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %33, i32 noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %bb.a unwind label %bb.k

bb.a:                                             ; preds = %.noexc
  %i.j = load ptr, ptr %34, align 8, !tbaa !39    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.e
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.l = load i64, ptr %i.e, align 8, !tbaa !40
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #17
  %i.n = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 6 uses
  store ptr %i.n, ptr %35, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i64 29, ptr %i.c, align 8, !tbaa !37
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc32 unwind label %bb.l   ; 2 uses

.noexc32:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.o, ptr %35, align 8, !tbaa !39
  %i.p = load i64, ptr %i.c, align 8, !tbaa !37   ; 3 uses
  store i64 %i.p, ptr %i.n, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.o, ptr noundef nonnull align 1 dereferenceable(29) @.str.1, i64 29, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !41
  %i.r = load ptr, ptr %35, align 8, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  invoke void @_ZN2cv17CommandLineParser5aboutERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(32) %35)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %.noexc32
  %i.t = load ptr, ptr %35, align 8, !tbaa !39    ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.n
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.b
  %i.v = load i64, ptr %i.n, align 8, !tbaa !40
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #17
  invoke void @_ZNK2cv17CommandLineParser12printMessageEv(ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %._crit_edge.i.i37 unwind label %bb.n

._crit_edge.i.i37:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #17
  %i.x = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 6 uses
  store ptr %i.x, ptr %37, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.x, ptr noundef nonnull align 1 dereferenceable(6) @.str.2, i64 6, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i64 6, ptr %i.y, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %37, i64 22
  store i8 0, ptr %i.z, align 2, !tbaa !40
  %i.aa = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 8 uses
  store ptr %i.aa, ptr %36, align 8, !tbaa !35, !alias.scope !42
  %i.ab = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 3 uses
  store i64 0, ptr %i.ab, align 8, !tbaa !41, !alias.scope !42
  store i8 0, ptr %i.aa, align 8, !tbaa !40, !alias.scope !42
  invoke void @_ZNK2cv17CommandLineParser9getByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS_5ParamEPv(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(32) %37, i1 noundef zeroext true, i32 noundef 3, ptr noundef nonnull align 8 %36)
          to label %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit unwind label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i37
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %36, align 8, !tbaa !39, !alias.scope !42 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.aa
  br i1 %i.ae, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.af = load i64, ptr %i.aa, align 8, !tbaa !40, !alias.scope !42
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #18
  br label %.body

_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit: ; preds = %._crit_edge.i.i37
  %i.ah = load ptr, ptr %37, align 8, !tbaa !39   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.x
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit
  %i.aj = load i64, ptr %i.x, align 8, !tbaa !40
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #17
  invoke void @_ZN2cv6imreadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %38, ptr noundef nonnull align 8 dereferenceable(32) %36, i32 noundef 1)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.al = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %38)
          to label %bb.e unwind label %bb.p

bb.e:                                             ; preds = %bb.d
  br i1 %i.al, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.3, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  %i.an = load ptr, ptr %36, align 8, !tbaa !39
  %i.ao = load i64, ptr %i.ab, align 8, !tbaa !41
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.an, i64 noundef %i.ao)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.p ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44
  %i.ar = getelementptr i8, ptr %i.aq, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %i.ap, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 240
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !60 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i, label %bb.g, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.g:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZSt16__throw_bad_castv() #19
          to label %.noexc98 unwind label %bb.p

.noexc98:                                         ; preds = %bb.g
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !66
  %.not.i1.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i1.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 67
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !40
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.av)
          to label %.noexc99 unwind label %bb.p

.noexc99:                                         ; preds = %bb.i
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !44
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = invoke noundef signext i8 %i.bc(ptr noundef nonnull align 8 dereferenceable(570) %i.av, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.p, !inline_history !19

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc99, %bb.h
  %.0.i.i.i = phi i8 [ %i.az, %bb.h ], [ %i.bd, %.noexc99 ]
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i8 noundef signext %.0.i.i.i)
          to label %.noexc101 unwind label %bb.p

.noexc101:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.p ; 0 uses

bb.j:                                             ; preds = %.noexc.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

bb.k:                                             ; preds = %.noexc
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %34, align 8, !tbaa !39   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.e
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

end_hunk_0
begin_hunk_1_@main:.noexc.i
  br i1 %i.co, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.6, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.w
  %i.cq = load ptr, ptr %40, align 8, !tbaa !39, !noalias !67
  %i.cr = load i64, ptr %i.ci, align 8, !tbaa !41, !noalias !67
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.cq, i64 noundef %i.cr)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.y

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.cs)
          to label %_ZNSolsEPFRSoS_E.exit.i unwind label %bb.y, !inline_history !22 ; 0 uses

_ZNSolsEPFRSoS_E.exit.i:                          ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  call void @exit(i32 noundef 1) #20
  unreachable

bb.x:                                             ; preds = %bb.t
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.y:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %bb.w, %bb.u
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.z:                                             ; preds = %bb.v
  %i.cw = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !74, !noalias !67
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17, !noalias !67
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %15) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17, !noalias !67
  %i.cy = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 0, ptr %i.cy, align 8, !tbaa !76, !noalias !67
  %i.cz = getelementptr inbounds nuw i8, ptr %16, i64 20
  store i32 0, ptr %i.cz, align 4, !tbaa !77, !noalias !67
  store i32 16842752, ptr %16, align 8, !tbaa !79, !noalias !67
  %i.da = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %14, ptr %i.da, align 8, !tbaa !80, !noalias !67
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17, !noalias !67
  %i.db = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i64 0, ptr %i.dc, align 8, !noalias !67
  store i32 33619968, ptr %17, align 8, !tbaa !79, !noalias !67
  store ptr %15, ptr %i.db, align 8, !tbaa !80, !noalias !67
  invoke void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %17, i32 noundef 6, i32 noundef 0, i32 noundef 0)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17, !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17, !noalias !67
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17, !noalias !67
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false), !noalias !67
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17, !noalias !67
  %i.dd = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 0, ptr %i.dd, align 8, !tbaa !76, !noalias !67
  %i.de = getelementptr inbounds nuw i8, ptr %19, i64 20
  store i32 0, ptr %i.de, align 4, !tbaa !77, !noalias !67
  store i32 16842752, ptr %19, align 8, !tbaa !79, !noalias !67
  %i.df = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %15, ptr %i.df, align 8, !tbaa !80, !noalias !67
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17, !noalias !67
  %i.dg = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i64 0, ptr %i.dh, align 8, !noalias !67
  store i32 -2113732539, ptr %20, align 8, !tbaa !79, !noalias !67
  store ptr %18, ptr %i.dg, align 8, !tbaa !80, !noalias !67
  %i.di = sitofp i32 %i.cx to double              ; 2 uses
  %i.dj = fmul nnan double %i.di, 3.500000e-01
  %i.dk = fptosi double %i.dj to i32
  %i.dl = fmul nnan double %i.di, 4.800000e-01
  %i.dm = fptosi double %i.dl to i32
  invoke void @_ZN2cv12HoughCirclesERKNS_11_InputArrayERKNS_12_OutputArrayEiddddii(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %20, i32 noundef 3, double noundef 1.000000e+00, double noundef 2.000000e+01, double noundef 1.000000e+02, double noundef 5.000000e+01, i32 noundef %i.dk, i32 noundef %i.dm)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17, !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17, !noalias !67
  %i.dn = load ptr, ptr %18, align 8, !tbaa !82, !noalias !67 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !82, !noalias !67 ; 2 uses
  %i.dq = icmp eq ptr %i.dn, %i.dp
  br i1 %i.dq, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.7, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119.i: ; preds = %bb.ac
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr)
          to label %_ZNSolsEPFRSoS_E.exit120.i unwind label %bb.af, !inline_history !22 ; 0 uses

_ZNSolsEPFRSoS_E.exit120.i:                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119.i
  call void @exit(i32 noundef 1) #20
  unreachable

bb.ad:                                            ; preds = %bb.z
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17, !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17, !noalias !67
  br label %bb.bk

bb.ae:                                            ; preds = %bb.aa
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17, !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17, !noalias !67
  br label %bb.bi

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119.i, %bb.ac
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.ag:                                            ; preds = %bb.ab
  %i.dw = ptrtoint ptr %i.dp to i64
  %i.dx = ptrtoint ptr %i.dn to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = sdiv exact i64 %i.dy, 12                ; 5 uses
  %i.ea = trunc i64 %i.dz to i32                  ; 2 uses
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph.preheader.i.i, label %.loopexit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ag
  %wide.trip.count.i.i = and i64 %i.dz, 2147483647
  %xtraiter = and i64 %i.dz, 1
  %i.ec = icmp eq i64 %wide.trip.count.i.i, 1
  br i1 %i.ec, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.dz, 2147483646
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ] ; 3 uses
  %.0231.i.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i.new ], [ %i.eq, %.lr.ph.i.i ]
  %i.ed = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader.i.i.new ], [ %i.eu, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.ee = getelementptr inbounds nuw [12 x i8], ptr %i.dn, i64 %indvars.iv.i.i ; 2 uses
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !84, !noalias !85
  %i.eg = fpext float %i.ef to double
  %i.eh = fadd double %.0231.i.i, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.ej = load <2 x float>, ptr %i.ei, align 4, !tbaa !84, !noalias !85
  %i.ek = fpext <2 x float> %i.ej to <2 x double>
  %i.el = fadd <2 x double> %i.ed, %i.ek
  %i.em = getelementptr inbounds nuw [12 x i8], ptr %i.dn, i64 %indvars.iv.i.i ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %i.eo = load float, ptr %i.en, align 4, !tbaa !84, !noalias !85
  %i.ep = fpext float %i.eo to double
  %i.eq = fadd double %i.eh, %i.ep                ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.es = load <2 x float>, ptr %i.er, align 4, !tbaa !84, !noalias !85
  %i.et = fpext <2 x float> %i.es to <2 x double>
  %i.eu = fadd <2 x double> %i.el, %i.et          ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !25

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %.0231.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %i.eq, %.loopexit.i.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader.i.i ], [ %i.eu, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod183 = trunc i64 %i.dz to i1
  call void @llvm.assume(i1 %lcmp.mod183)
  %i.ev = getelementptr inbounds nuw [12 x i8], ptr %i.dn, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !84, !noalias !85
  %i.ex = fpext float %i.ew to double
  %i.ey = fadd double %.0231.i.i.epil.init, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.fa = load <2 x float>, ptr %i.ez, align 4, !tbaa !84, !noalias !85
  %i.fb = fpext <2 x float> %i.fa to <2 x double>
  %i.fc = fadd <2 x double> %.epil.init, %i.fb
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %bb.ag
  %.023.lcssa.i.i = phi double [ 0.000000e+00, %bb.ag ], [ %i.eq, %.loopexit.i.loopexit.unr-lcssa ], [ %i.ey, %.lr.ph.i.i.epil.preheader ]
  %i.fd = phi <2 x double> [ zeroinitializer, %bb.ag ], [ %i.eu, %.loopexit.i.loopexit.unr-lcssa ], [ %i.fc, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %i.fe = sitofp i32 %i.ea to double              ; 2 uses
  %i.ff = extractelement <2 x double> %i.fd, i64 1
  %i.fg = fdiv double %i.ff, %i.fe
  %i.fh = fptrunc double %i.fg to float
  %i.fi = insertelement <2 x double> poison, double %.023.lcssa.i.i, i64 0
  %i.fj = shufflevector <2 x double> %i.fi, <2 x double> %i.fd, <2 x i32> <i32 0, i32 2>
  %i.fk = insertelement <2 x double> poison, double %i.fe, i64 0
  %i.fl = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fm = fdiv <2 x double> %i.fj, %i.fl
  %i.fn = fptrunc <2 x double> %i.fm to <2 x float>
  %i.fo = fptosi <2 x float> %i.fn to <2 x i32>   ; 4 uses
  %i.fp = fptosi float %i.fh to i32               ; 3 uses
  %42 = getelementptr inbounds nuw i8, ptr %39, i64 64 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %39, i64 68
  store <2 x i32> %i.fo, ptr %42, align 8, !tbaa !11, !alias.scope !67
  %i.fr = getelementptr inbounds nuw i8, ptr %39, i64 72 ; 2 uses
  store i32 %i.fp, ptr %i.fr, align 8, !tbaa !88, !alias.scope !67
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17, !noalias !67
  %i.fs = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i64 0, ptr %i.ft, align 8, !noalias !67
  store i32 50397184, ptr %21, align 8, !tbaa !79, !noalias !67
  store ptr %14, ptr %i.fs, align 8, !tbaa !80, !noalias !67
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17, !noalias !67
  %i.fu = getelementptr inbounds nuw i8, ptr %22, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false), !noalias !67
  store <2 x double> <double 2.550000e+02, double 0.000000e+00>, ptr %i.fu, align 8, !tbaa !89, !noalias !67
  %.sroa.0203.0.insert.insert.i = bitcast <2 x i32> %i.fo to i64 ; 2 uses
  invoke void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %21, i64 %.sroa.0203.0.insert.insert.i, i32 noundef %i.fp, ptr noundef nonnull align 8 dereferenceable(32) %22, i32 noundef 3, i32 noundef 16, i32 noundef 0)
          to label %bb.ah unwind label %bb.am

bb.ah:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17, !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17, !noalias !67
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17, !noalias !67
  %i.fv = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i64 0, ptr %i.fw, align 8, !noalias !67
  store i32 50397184, ptr %23, align 8, !tbaa !79, !noalias !67
  store ptr %14, ptr %i.fv, align 8, !tbaa !80, !noalias !67
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #17, !noalias !67
  store <2 x double> <double 0.000000e+00, double 2.550000e+02>, ptr %24, align 16, !tbaa !89, !noalias !67
  %i.fx = getelementptr inbounds nuw i8, ptr %24, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fx, i8 0, i64 16, i1 false), !noalias !67
  invoke void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %23, i64 %.sroa.0203.0.insert.insert.i, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %24, i32 noundef 3, i32 noundef 16, i32 noundef 0)
          to label %bb.ai unwind label %bb.an

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17, !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17, !noalias !67
  %i.fy = invoke noalias noundef nonnull dereferenceable(576) ptr @_Znwm(i64 noundef 576) #21
          to label %bb.aj unwind label %bb.ao     ; 6 uses

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(576) %i.fy, i8 0, i64 576, i1 false)
  %i.fz = invoke noalias noundef nonnull dereferenceable(576) ptr @_Znwm(i64 noundef 576) #21
          to label %bb.ak unwind label %bb.ap     ; 5 uses

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(576) %i.fz, i8 0, i64 576, i1 false)
  %i.ga = invoke noalias noundef nonnull dereferenceable(576) ptr @_Znwm(i64 noundef 576) #21
          to label %bb.al unwind label %bb.aq     ; 5 uses

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(576) %i.ga, i8 0, i64 576, i1 false)
  %i.gb = sitofp i32 %i.fp to double              ; 3 uses
  %i.gc = fmul nnan double %i.gb, 9.000000e-01
  %i.gd = sitofp <2 x i32> %i.fo to <2 x double>  ; 3 uses
  %i.ge = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.ar

.preheader206.i:                                  ; preds = %bb.ar
  %i.gg = fmul nnan double %i.gb, 1.200000e+00
  %i.gh = add nsw <2 x i32> %i.fo, <i32 -10, i32 5>
  %i.gi = sitofp <2 x i32> %i.gh to <2 x double>
  %i.gj = insertelement <2 x double> poison, double %i.gb, i64 0
  %i.gk = shufflevector <2 x double> %i.gj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gl = insertelement <2 x double> poison, double %i.gg, i64 0
  %i.gm = shufflevector <2 x double> %i.gl, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.as

bb.am:                                            ; preds = %.loopexit.i
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17, !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17, !noalias !67
  br label %bb.bi

bb.an:                                            ; preds = %bb.ah
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17, !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17, !noalias !67
  br label %bb.bi

bb.ao:                                            ; preds = %bb.ai
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.ap:                                            ; preds = %bb.aj
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IdEESaIS2_EED2Ev.exit165.i

bb.aq:                                            ; preds = %bb.ak
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IdEESaIS2_EED2Ev.exit163.i

bb.ar:                                            ; preds = %bb.ar, %bb.al
  %indvars.iv.i = phi i64 [ 0, %bb.al ], [ %indvars.iv.next.i.1, %bb.ar ] ; 4 uses
  %i.gs = trunc i64 %indvars.iv.i to i32
  %i.gt = mul nuw nsw i32 %i.gs, 10
  %i.gu = uitofp nneg i32 %i.gt to double
  %i.gv = fmul nnan double %i.gu, f0x400921FB54442D18
  %i.gw = fdiv double %i.gv, 1.800000e+02         ; 2 uses
  %i.gx = call double @cos(double noundef %i.gw) #17
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.fy, i64 %indvars.iv.i
  %i.gz = call double @sin(double noundef %i.gw) #17
  %i.ha = insertelement <2 x double> poison, double %i.gx, i64 0
  %i.hb = insertelement <2 x double> %i.ha, double %i.gz, i64 1
  %i.hc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gf, <2 x double> %i.hb, <2 x double> %i.gd)
  store <2 x double> %i.hc, ptr %i.gy, align 8, !tbaa !89
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.hd = trunc i64 %indvars.iv.next.i to i32
  %i.he = mul nuw nsw i32 %i.hd, 10
  %i.hf = uitofp nneg i32 %i.he to double
  %i.hg = fmul nnan double %i.hf, f0x400921FB54442D18
  %i.hh = fdiv double %i.hg, 1.800000e+02         ; 2 uses
  %i.hi = call double @cos(double noundef %i.hh) #17
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %i.fy, i64 %indvars.iv.next.i
  %i.hk = call double @sin(double noundef %i.hh) #17
  %i.hl = insertelement <2 x double> poison, double %i.hi, i64 0
  %i.hm = insertelement <2 x double> %i.hl, double %i.hk, i64 1
  %i.hn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gf, <2 x double> %i.hm, <2 x double> %i.gd)
  store <2 x double> %i.hn, ptr %i.hj, align 8, !tbaa !89
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 36
  br i1 %exitcond.not.i.1, label %.preheader206.i, label %bb.ar, !llvm.loop !26

.preheader.i:                                     ; preds = %bb.as
  %i.ho = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.hq = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.hr = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.ht = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 5 uses
  br label %bb.at

bb.as:                                            ; preds = %bb.as, %.preheader206.i
  %indvars.iv227.i = phi i64 [ 0, %.preheader206.i ], [ %indvars.iv.next228.i, %bb.as ] ; 4 uses
  %i.hu = trunc i64 %indvars.iv227.i to i32
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %indvars.iv227.i
  %i.hw = mul i32 %i.hu, 10                       ; 2 uses
  %i.hx = add i32 %i.hw, 90
  %i.hy = uitofp nneg i32 %i.hx to double
  %i.hz = uitofp nneg i32 %i.hw to double
  %i.ia = insertelement <2 x double> poison, double %i.hz, i64 0
  %i.ib = insertelement <2 x double> %i.ia, double %i.hy, i64 1
  %i.ic = fmul nnan <2 x double> %i.ib, splat (double f0x400921FB54442D18)
  %i.id = fdiv <2 x double> %i.ic, splat (double 1.800000e+02) ; 2 uses
  %i.ie = extractelement <2 x double> %i.id, i64 0 ; 2 uses
  %i.if = call double @cos(double noundef %i.ie) #17
  %i.ig = call double @sin(double noundef %i.ie) #17
  %i.ih = insertelement <2 x double> poison, double %i.if, i64 0
  %i.ii = insertelement <2 x double> %i.ih, double %i.ig, i64 1
  %i.ij = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gk, <2 x double> %i.ii, <2 x double> %i.gd)
  store <2 x double> %i.ij, ptr %i.hv, align 8, !tbaa !89
  %i.ik = extractelement <2 x double> %i.id, i64 1 ; 2 uses
  %i.il = call double @cos(double noundef %i.ik) #17
  %i.im = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %indvars.iv227.i
  %i.in = call double @sin(double noundef %i.ik) #17
  %i.io = insertelement <2 x double> poison, double %i.il, i64 0
  %i.ip = insertelement <2 x double> %i.io, double %i.in, i64 1
  %i.iq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gm, <2 x double> %i.ip, <2 x double> %i.gi)
  store <2 x double> %i.iq, ptr %i.im, align 8, !tbaa !89
  %indvars.iv.next228.i = add nuw nsw i64 %indvars.iv227.i, 1 ; 2 uses
  %exitcond230.not.i = icmp eq i64 %indvars.iv.next228.i, 36
  br i1 %exitcond230.not.i, label %.preheader.i, label %bb.as, !llvm.loop !27

.noexc.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i60
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #17, !noalias !67
  %i.ir = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  store ptr %i.ir, ptr %30, align 8, !tbaa !35, !noalias !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !67
  store i64 21, ptr %i.a, align 8, !tbaa !37, !noalias !67
  %i.is = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i61 unwind label %bb.be ; 2 uses

.noexc.i61:                                       ; preds = %.noexc.i.i
  store ptr %i.is, ptr %30, align 8, !tbaa !39, !noalias !67
  %i.it = load i64, ptr %i.a, align 8, !tbaa !37, !noalias !67 ; 3 uses
  store i64 %i.it, ptr %i.ir, align 8, !tbaa !40, !noalias !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.is, ptr noundef nonnull align 1 dereferenceable(21) @.str.8, i64 21, i1 false)
  %i.iu = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 %i.it, ptr %i.iu, align 8, !tbaa !41, !noalias !67
  %i.iv = load ptr, ptr %30, align 8, !tbaa !39, !noalias !67
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.it
  store i8 0, ptr %i.iw, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !67
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #17, !noalias !67
  %i.ix = getelementptr inbounds nuw i8, ptr %31, i64 16
  store i32 0, ptr %i.ix, align 8, !tbaa !76, !noalias !67
  %i.iy = getelementptr inbounds nuw i8, ptr %31, i64 20
  store i32 0, ptr %i.iy, align 4, !tbaa !77, !noalias !67
  store i32 16842752, ptr %31, align 8, !tbaa !79, !noalias !67
  %i.iz = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %14, ptr %i.iz, align 8, !tbaa !80, !noalias !67
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #17, !noalias !67
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, i8 0, i64 24, i1 false), !noalias !67
  %i.ja = invoke noundef zeroext i1 @_ZN2cv7imwriteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(24) %32)
          to label %bb.bb unwind label %bb.bf     ; 0 uses

end_hunk_1
begin_hunk_2_@main:.noexc.i

bb.bk:                                            ; preds = %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EED2Ev.exit167.i, %bb.ad
  %.pn112.pn.i = phi { ptr, i32 } [ %.pn112.i, %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EED2Ev.exit167.i ], [ %i.dt, %bb.ad ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17, !noalias !67
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.y
  %.pn115.i = phi { ptr, i32 } [ %i.cv, %bb.y ], [ %.pn112.pn.i, %bb.bk ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #17
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.x
  %.pn115.pn.i = phi { ptr, i32 } [ %.pn115.i, %bb.bl ], [ %i.cu, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17, !noalias !67
  %i.mz = load ptr, ptr %i.cl, align 8, !tbaa !39, !alias.scope !67 ; 2 uses
  %i.na = icmp eq ptr %i.mz, %i.cm
  br i1 %i.na, label %.body63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bm
  %i.nb = load i64, ptr %i.cm, align 8, !tbaa !40, !alias.scope !67
  %i.nc = add i64 %i.nb, 1
  call void @_ZdlPvm(ptr noundef %i.mz, i64 noundef %i.nc) #18
  br label %.body63

bb.bn:                                            ; preds = %bb.bd, %_ZNSt6vectorIN2cv6Point_IdEESaIS2_EED2Ev.exit153.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17, !noalias !67
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17, !noalias !67
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17, !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  %i.nd = load ptr, ptr %40, align 8, !tbaa !39   ; 2 uses
  %i.ne = icmp eq ptr %i.nd, %i.bz
  br i1 %i.ne, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.bn
  %i.nf = load i64, ptr %i.bz, align 8, !tbaa !40
  %i.ng = add i64 %i.nf, 1
  call void @_ZdlPvm(ptr noundef %i.nd, i64 noundef %i.ng) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %41, ptr noundef nonnull align 8 dereferenceable(208) %38)
          to label %bb.bo unwind label %bb.dc

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.nh = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.nh, align 8, !tbaa !76
  %i.ni = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 0, ptr %i.ni, align 4, !tbaa !77
  store i32 16842752, ptr %3, align 8, !tbaa !79
  %i.nj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %41, ptr %i.nj, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.nk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.nl = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.nl, align 8
  store i32 33619968, ptr %4, align 8, !tbaa !79
  store ptr %2, ptr %i.nk, align 8, !tbaa !80
  invoke void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 6, i32 noundef 0, i32 noundef 0)
          to label %bb.bp unwind label %bb.bw

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.nm = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.nm, align 8, !tbaa !76
  %i.nn = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 0, ptr %i.nn, align 4, !tbaa !77
  store i32 16842752, ptr %6, align 8, !tbaa !79
  %i.no = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %i.no, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.np = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.nq = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.nq, align 8
  store i32 33619968, ptr %7, align 8, !tbaa !79
  store ptr %5, ptr %i.np, align 8, !tbaa !80
  %i.nr = invoke noundef double @_ZN2cv9thresholdERKNS_11_InputArrayERKNS_12_OutputArrayEddi(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, double noundef 1.750000e+02, double noundef 2.550000e+02, i32 noundef 1)
          to label %bb.bq unwind label %bb.bx     ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.ns = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 0, ptr %i.ns, align 8, !tbaa !76
  %i.nt = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 0, ptr %i.nt, align 4, !tbaa !77
  store i32 16842752, ptr %9, align 8, !tbaa !79
  %i.nu = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %5, ptr %i.nu, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.nv = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.nw = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.nw, align 8
  store i32 -2113732508, ptr %10, align 8, !tbaa !79
  store ptr %8, ptr %i.nv, align 8, !tbaa !80
  invoke void @_ZN2cv11HoughLinesPERKNS_11_InputArrayERKNS_12_OutputArrayEddidd(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, double noundef 3.000000e+00, double noundef f0x3F91DF46A2529D39, i32 noundef 100, double noundef 1.000000e+01, double noundef 0.000000e+00)
          to label %bb.br unwind label %bb.by

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.nx = load ptr, ptr %8, align 8, !tbaa !98    ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !98
  %i.oa = icmp eq ptr %i.nx, %i.nz
  br i1 %i.oa, label %bb.bs, label %.lr.ph.i

bb.bs:                                            ; preds = %bb.br
  %i.ob = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.15, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i70 unwind label %bb.bz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i70: ; preds = %bb.bs
  %i.oc = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !44
  %i.od = getelementptr i8, ptr %i.oc, i64 -24
  %i.oe = load i64, ptr %i.od, align 8
  %i.of = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.oe
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 240
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !60 ; 6 uses
  %.not.i.i.i152.i = icmp eq ptr %i.oh, null
  br i1 %.not.i.i.i152.i, label %bb.bt, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.bt:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i70
  invoke void @_ZSt16__throw_bad_castv() #19
          to label %.noexc153.i unwind label %bb.bz

.noexc153.i:                                      ; preds = %bb.bt
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i70
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 56
  %i.oj = load i8, ptr %i.oi, align 8, !tbaa !66
  %.not.i1.i.i.i = icmp eq i8 %i.oj, 0
  br i1 %.not.i1.i.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oh, i64 67
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !40
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

bb.bv:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.oh)
          to label %.noexc154.i unwind label %bb.bz

.noexc154.i:                                      ; preds = %bb.bv
  %i.om = load ptr, ptr %i.oh, align 8, !tbaa !44
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 48
  %i.oo = load ptr, ptr %i.on, align 8
  %i.op = invoke noundef signext i8 %i.oo(ptr noundef nonnull align 8 dereferenceable(570) %i.oh, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i unwind label %bb.bz, !inline_history !19

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i: ; preds = %.noexc154.i, %bb.bu
  %.0.i.i.i.i = phi i8 [ %i.ol, %bb.bu ], [ %i.op, %.noexc154.i ]
  %i.oq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i.i)
          to label %.noexc156.i unwind label %bb.bz

.noexc156.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
  %i.or = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.oq)
          to label %_ZNSolsEPFRSoS_E.exit.i69 unwind label %bb.bz ; 0 uses

bb.bw:                                            ; preds = %bb.bo
  %i.os = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %.body71

bb.bx:                                            ; preds = %bb.bp
  %i.ot = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.cw

bb.by:                                            ; preds = %bb.bq
  %i.ou = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.cu

bb.bz:                                            ; preds = %.noexc156.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i, %.noexc154.i, %bb.bv, %bb.bt, %bb.bs
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.lr.ph.i:                                         ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %43 = load i32, ptr %i.fq, align 4, !tbaa !99   ; 3 uses
  %44 = load i32, ptr %42, align 8, !tbaa !100    ; 3 uses
  %i.ow = load i32, ptr %i.fr, align 8, !tbaa !88
  %45 = sitofp i32 %44 to double
  %46 = sitofp i32 %43 to double
  %i.ox = sitofp i32 %i.ow to double              ; 4 uses
  %i.oy = fmul nnan double %i.ox, 2.500000e-01
  %i.oz = fmul nnan double %i.ox, 1.500000e-01
  %i.pa = fmul nnan double %i.ox, 5.000000e-01
  %i.pb = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %47 = insertelement <2 x double> poison, double %45, i64 0
  %i.pd = shufflevector <2 x double> %47, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %48 = insertelement <2 x double> poison, double %46, i64 0
  %49 = shufflevector <2 x double> %48, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.ca

._crit_edge.i:                                    ; preds = %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE9push_backERKS2_.exit.i
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !98 ; 2 uses
  %.pre179.i = load ptr, ptr %i.pb, align 8, !tbaa !98
  %i.pe = icmp eq ptr %.pre.i, %.pre179.i
  br i1 %i.pe, label %bb.cg, label %bb.cl

bb.ca:                                            ; preds = %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE9push_backERKS2_.exit.i, %.lr.ph.i
  %i.pf = phi ptr [ %i.nx, %.lr.ph.i ], [ %i.qo, %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE9push_backERKS2_.exit.i ]
  %.0112177.i = phi i64 [ 0, %.lr.ph.i ], [ %i.qm, %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE9push_backERKS2_.exit.i ] ; 2 uses
  %i.pg = getelementptr inbounds nuw [16 x i8], ptr %i.pf, i64 %.0112177.i ; 6 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 4
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pg, i64 12
  %i.pk = load <4 x i32>, ptr %i.pg, align 4, !tbaa !11 ; 2 uses
  %i.pl = load i32, ptr %i.pg, align 4, !tbaa !11
  %i.pm = shufflevector <4 x i32> %i.pk, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.pn = sitofp <2 x i32> %i.pm to <2 x double>
  %i.po = shufflevector <4 x i32> %i.pk, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.pp = sitofp <2 x i32> %i.po to <2 x double>
  %i.pq = fsub <2 x double> %i.pn, %i.pd          ; 2 uses
  %i.pr = fsub <2 x double> %i.pp, %49            ; 2 uses
  %i.ps = fmul <2 x double> %i.pr, %i.pr
  %i.pt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pq, <2 x double> %i.pq, <2 x double> %i.ps)
  %i.pu = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.pt) ; 2 uses
  %i.pv = extractelement <2 x double> %i.pu, i64 0 ; 3 uses
  %i.pw = extractelement <2 x double> %i.pu, i64 1 ; 3 uses
  %i.px = fcmp ogt double %i.pv, %i.pw            ; 2 uses
  %.0175.i = select i1 %i.px, double %i.pw, double %i.pv ; 2 uses
  %i.py = fcmp olt double %.0175.i, %i.oy
  %i.pz = fcmp ogt double %.0175.i, %i.oz
  %or.cond135.i = select i1 %i.py, i1 %i.pz, i1 false
  br i1 %or.cond135.i, label %bb.cc, label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE9push_backERKS2_.exit.i

bb.cb:                                            ; preds = %bb.cf
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.cc:                                            ; preds = %bb.ca
  %.0176.i = select i1 %i.px, double %i.pv, double %i.pw ; 2 uses
  %i.qb = fcmp olt double %.0176.i, %i.ox
  %i.qc = fcmp ogt double %.0176.i, %i.pa
  %or.cond137.i = select i1 %i.qb, i1 %i.qc, i1 false
  br i1 %or.cond137.i, label %bb.cd, label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE9push_backERKS2_.exit.i

bb.cd:                                            ; preds = %bb.cc
  %i.qd = load ptr, ptr %i.pb, align 8, !tbaa !14 ; 7 uses
  %i.qe = load ptr, ptr %i.pc, align 8, !tbaa !15
  %.not.i.i = icmp eq ptr %i.qd, %i.qe
  br i1 %.not.i.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  store i32 %i.pl, ptr %i.qd, align 4, !tbaa !11
  %i.qf = load i32, ptr %i.ph, align 4, !tbaa !11
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qd, i64 4
  store i32 %i.qf, ptr %i.qg, align 4, !tbaa !11
  %i.qh = load i32, ptr %i.pi, align 4, !tbaa !11
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  store i32 %i.qh, ptr %i.qi, align 4, !tbaa !11
  %i.qj = load i32, ptr %i.pj, align 4, !tbaa !11
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qd, i64 12
  store i32 %i.qj, ptr %i.qk, align 4, !tbaa !11
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  store ptr %i.ql, ptr %i.pb, align 8, !tbaa !14
  br label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE9push_backERKS2_.exit.i

bb.cf:                                            ; preds = %bb.cd
  invoke void @_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.qd, ptr noundef nonnull align 4 dereferenceable(16) %i.pg)
          to label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE9push_backERKS2_.exit.i unwind label %bb.cb

_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE9push_backERKS2_.exit.i: ; preds = %bb.cf, %bb.ce, %bb.cc, %bb.ca
  %i.qm = add nuw i64 %.0112177.i, 1              ; 2 uses
  %i.qn = load ptr, ptr %i.ny, align 8, !tbaa !14
  %i.qo = load ptr, ptr %8, align 8, !tbaa !16    ; 2 uses
  %i.qp = ptrtoint ptr %i.qn to i64
  %i.qq = ptrtoint ptr %i.qo to i64
  %i.qr = sub i64 %i.qp, %i.qq
  %i.qs = ashr exact i64 %i.qr, 4
  %i.qt = icmp ult i64 %i.qm, %i.qs
  br i1 %i.qt, label %bb.ca, label %._crit_edge.i, !llvm.loop !32

bb.cg:                                            ; preds = %._crit_edge.i
  %i.qu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.16, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141.i unwind label %bb.ck ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141.i: ; preds = %bb.cg
  %i.qv = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !44
  %i.qw = getelementptr i8, ptr %i.qv, i64 -24
  %i.qx = load i64, ptr %i.qw, align 8
  %i.qy = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.qx
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 240
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !60 ; 6 uses
  %.not.i.i.i158.i = icmp eq ptr %i.ra, null
  br i1 %.not.i.i.i158.i, label %bb.ch, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i159.i

bb.ch:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141.i
  invoke void @_ZSt16__throw_bad_castv() #19
          to label %.noexc163.i unwind label %bb.ck

.noexc163.i:                                      ; preds = %bb.ch
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i159.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141.i
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 56
  %i.rc = load i8, ptr %i.rb, align 8, !tbaa !66
  %.not.i1.i.i160.i = icmp eq i8 %i.rc, 0
  br i1 %.not.i1.i.i160.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i159.i
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ra, i64 67
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !40
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i161.i

bb.cj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i159.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ra)
          to label %.noexc164.i unwind label %bb.ck

.noexc164.i:                                      ; preds = %bb.cj
  %i.rf = load ptr, ptr %i.ra, align 8, !tbaa !44
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 48
  %i.rh = load ptr, ptr %i.rg, align 8
  %i.ri = invoke noundef signext i8 %i.rh(ptr noundef nonnull align 8 dereferenceable(570) %i.ra, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i161.i unwind label %bb.ck, !inline_history !19

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i161.i: ; preds = %.noexc164.i, %bb.ci
  %.0.i.i.i162.i = phi i8 [ %i.re, %bb.ci ], [ %i.ri, %.noexc164.i ]
  %i.rj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i162.i)
          to label %.noexc166.i unwind label %bb.ck

.noexc166.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i161.i
  %i.rk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.rj)
          to label %_ZNSolsEPFRSoS_E.exit143.i unwind label %bb.ck ; 0 uses

bb.ck:                                            ; preds = %.noexc166.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i161.i, %.noexc164.i, %bb.cj, %bb.ch, %bb.cg
  %i.rl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.cl:                                            ; preds = %._crit_edge.i
  %i.rm = load <2 x i64>, ptr %.pre.i, align 4    ; 4 uses
  %i.rn = extractelement <2 x i64> %i.rm, i64 1   ; 2 uses
  %i.ro = extractelement <2 x i64> %i.rm, i64 0   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.rp = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.rq = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 0, ptr %i.rq, align 8
  store i32 50397184, ptr %12, align 8, !tbaa !79
  store ptr %41, ptr %i.rp, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  store <2 x double> <double 0.000000e+00, double 2.550000e+02>, ptr %13, align 16, !tbaa !89
  %i.rr = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.rr, i8 0, i64 16, i1 false)
  invoke void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 %i.ro, i64 %i.rn, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 2, i32 noundef 8, i32 noundef 0)
          to label %bb.cm unwind label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.rs = lshr <2 x i64> %i.rm, splat (i64 32)
  %i.rt = trunc <2 x i64> %i.rm to <2 x i32>
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %i.ru = trunc nuw <2 x i64> %i.rs to <2 x i32>  ; 3 uses
  %i.rv = sitofp <2 x i32> %i.rt to <2 x double>
  %i.rw = sitofp <2 x i32> %i.ru to <2 x double>
  %i.rx = fsub <2 x double> %i.rv, %i.pd          ; 2 uses
  %i.ry = fsub <2 x double> %i.rw, %49            ; 2 uses
  %i.rz = fmul <2 x double> %i.ry, %i.ry
  %i.sa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rx, <2 x double> %i.rx, <2 x double> %i.rz)
  %i.sb = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.sa) ; 2 uses
  %i.sc = extractelement <2 x double> %i.sb, i64 0
  %i.sd = extractelement <2 x double> %i.sb, i64 1
  %i.se = fcmp ogt double %i.sc, %i.sd            ; 2 uses
  %..i.v = select i1 %i.se, i64 %i.ro, i64 %i.rn
  %..i = trunc i64 %..i.v to i32                  ; 2 uses
  %i.sf = extractelement <2 x i32> %i.ru, i64 0
  %i.sg = extractelement <2 x i32> %i.ru, i64 1
  %.138.i = select i1 %i.se, i32 %i.sf, i32 %i.sg ; 2 uses
  %.0110.in.i = sub nsw i32 %43, %.138.i          ; 3 uses
  %.0111.in.i = sub nsw i32 %..i, %44             ; 3 uses
  %.not.i = icmp eq i32 %44, %..i
  br i1 %.not.i, label %bb.cp, label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.sh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %bb.cr

bb.co:                                            ; preds = %bb.cm
  %.0110.i = sitofp i32 %.0110.in.i to double
  %.0111.i = sitofp i32 %.0111.in.i to double
  %i.si = fdiv double %.0110.i, %.0111.i
  %i.sj = call double @atan(double noundef %i.si) #17
  %i.sk = fmul double %i.sj, 1.800000e+02
  %i.sl = fdiv double %i.sk, f0x400921FB54442D18
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cm
  %.0109.i = phi double [ %i.sl, %bb.co ], [ 0.000000e+00, %bb.cm ] ; 2 uses
  %i.sm = icmp sgt i32 %.0111.in.i, 0             ; 2 uses
  %i.sn = icmp sgt i32 %.0110.in.i, 0
  %or.cond.i = select i1 %i.sm, i1 %i.sn, i1 false
  %i.so = fsub double 2.700000e+02, %.0109.i      ; 2 uses
  %.0105.i = select i1 %or.cond.i, double %i.so, double 0.000000e+00
  %i.sp = icmp slt i32 %.0111.in.i, 0
  %i.sq = fsub double 9.000000e+01, %.0109.i
  %i.sr = icmp slt i32 %.0110.in.i, 0
  %i.ss = icmp ne i32 %43, %.138.i
  %i.st = select i1 %i.sp, i1 %i.ss, i1 false
  %.2107.i = select i1 %i.st, double %i.sq, double %.0105.i
  %or.cond7.i = select i1 %i.sm, i1 %i.sr, i1 false
  %.3108.i = select i1 %or.cond7.i, double %i.so, double %.2107.i
  %i.su = load double, ptr %39, align 8, !tbaa !101 ; 2 uses
  %i.sv = load double, ptr %i.lq, align 8, !tbaa !102
  %i.sw = load double, ptr %i.lt, align 8, !tbaa !103 ; 2 uses
  %i.sx = load double, ptr %i.lw, align 8, !tbaa !104
  %i.sy = fsub double %i.sv, %i.su
  %i.sz = fsub double %i.sx, %i.sw
  %i.ta = fsub double %.3108.i, %i.su
  %i.tb = fmul double %i.ta, %i.sz
  %i.tc = fdiv double %i.tb, %i.sy
  %i.td = fadd double %i.sw, %i.tc
  br label %_ZNSolsEPFRSoS_E.exit143.i

_ZNSolsEPFRSoS_E.exit143.i:                       ; preds = %bb.cp, %.noexc166.i
  %.0.i = phi double [ %i.td, %bb.cp ], [ 0.000000e+00, %.noexc166.i ]
  %i.te = load ptr, ptr %11, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i.i68 = icmp eq ptr %i.te, null
  br i1 %.not.i.i.i.i68, label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit.i, label %bb.cq

bb.cq:                                            ; preds = %_ZNSolsEPFRSoS_E.exit143.i
  %i.tf = load ptr, ptr %i.pc, align 8, !tbaa !15
  %i.tg = ptrtoint ptr %i.tf to i64
  %i.th = ptrtoint ptr %i.te to i64
  %i.ti = sub i64 %i.tg, %i.th
  call void @_ZdlPvm(ptr noundef nonnull %i.te, i64 noundef %i.ti) #18
  br label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit.i: ; preds = %bb.cq, %_ZNSolsEPFRSoS_E.exit143.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %_ZNSolsEPFRSoS_E.exit.i69

bb.cr:                                            ; preds = %bb.cn, %bb.ck, %bb.cb
  %.pn128.i = phi { ptr, i32 } [ %i.qa, %bb.cb ], [ %i.rl, %bb.ck ], [ %i.sh, %bb.cn ]
  %i.tj = load ptr, ptr %11, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i146.i = icmp eq ptr %i.tj, null
  br i1 %.not.i.i.i146.i, label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit147.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.tk = load ptr, ptr %i.pc, align 8, !tbaa !15
  %i.tl = ptrtoint ptr %i.tk to i64
  %i.tm = ptrtoint ptr %i.tj to i64
  %i.tn = sub i64 %i.tl, %i.tm
  call void @_ZdlPvm(ptr noundef nonnull %i.tj, i64 noundef %i.tn) #18
  br label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit147.i

_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit147.i: ; preds = %bb.cs, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.cu

_ZNSolsEPFRSoS_E.exit.i69:                        ; preds = %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit.i, %.noexc156.i
  %.1.i = phi double [ %.0.i, %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit.i ], [ 0.000000e+00, %.noexc156.i ]
  %i.to = load ptr, ptr %8, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i148.i = icmp eq ptr %i.to, null
  br i1 %.not.i.i.i148.i, label %bb.cx, label %bb.ct

bb.ct:                                            ; preds = %_ZNSolsEPFRSoS_E.exit.i69
  %i.tp = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !15
  %i.tr = ptrtoint ptr %i.tq to i64
  %i.ts = ptrtoint ptr %i.to to i64
  %i.tt = sub i64 %i.tr, %i.ts
  call void @_ZdlPvm(ptr noundef nonnull %i.to, i64 noundef %i.tt) #18
  br label %bb.cx

bb.cu:                                            ; preds = %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit147.i, %bb.bz, %bb.by
  %.pn130.i = phi { ptr, i32 } [ %i.ov, %bb.bz ], [ %.pn128.i, %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit147.i ], [ %i.ou, %bb.by ]
  %i.tu = load ptr, ptr %8, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i150.i = icmp eq ptr %i.tu, null
  br i1 %.not.i.i.i150.i, label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit151.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.tv = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !15
  %i.tx = ptrtoint ptr %i.tw to i64
  %i.ty = ptrtoint ptr %i.tu to i64
  %i.tz = sub i64 %i.tx, %i.ty
  call void @_ZdlPvm(ptr noundef nonnull %i.tu, i64 noundef %i.tz) #18
  br label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit151.i

_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit151.i: ; preds = %bb.cv, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit151.i, %bb.bx
  %.pn130.pn.i = phi { ptr, i32 } [ %.pn130.i, %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EED2Ev.exit151.i ], [ %i.ot, %bb.bx ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %.body71

.body71:                                          ; preds = %bb.cw, %bb.bw
  %.pn130.pn.pn.i = phi { ptr, i32 } [ %.pn130.pn.i, %bb.cw ], [ %i.os, %bb.bw ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %41) #17
  br label %bb.dd

bb.cx:                                            ; preds = %bb.ct, %_ZNSolsEPFRSoS_E.exit.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %41) #17
  %i.ua = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.4, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74 unwind label %bb.dc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74: ; preds = %bb.cx
  %i.ub = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %.1.i)
          to label %_ZNSolsEd.exit unwind label %bb.dc ; 2 uses

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74
  %i.uc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ub, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77 unwind label %bb.dc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77: ; preds = %_ZNSolsEd.exit
  %i.ud = load ptr, ptr %i.cl, align 8, !tbaa !39
  %i.ue = load i64, ptr %i.cn, align 8, !tbaa !41
  %i.uf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ub, ptr noundef %i.ud, i64 noundef %i.ue)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit79 unwind label %bb.dc ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit79: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !44
  %i.uh = getelementptr i8, ptr %i.ug, i64 -24
  %i.ui = load i64, ptr %i.uh, align 8
  %i.uj = getelementptr inbounds i8, ptr %i.uf, i64 %i.ui
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 240
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !60 ; 6 uses
  %.not.i.i.i103 = icmp eq ptr %i.ul, null
  br i1 %.not.i.i.i103, label %bb.cy, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i104

bb.cy:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit79
  invoke void @_ZSt16__throw_bad_castv() #19
          to label %.noexc108 unwind label %bb.dc

.noexc108:                                        ; preds = %bb.cy
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i104: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit79
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 56
  %i.un = load i8, ptr %i.um, align 8, !tbaa !66
  %.not.i1.i.i105 = icmp eq i8 %i.un, 0
  br i1 %.not.i1.i.i105, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i104
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ul, i64 67
  %i.up = load i8, ptr %i.uo, align 1, !tbaa !40
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i106

bb.da:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i104
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ul)
          to label %.noexc109 unwind label %bb.dc

.noexc109:                                        ; preds = %bb.da
  %i.uq = load ptr, ptr %i.ul, align 8, !tbaa !44
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 48
  %i.us = load ptr, ptr %i.ur, align 8
  %i.ut = invoke noundef signext i8 %i.us(ptr noundef nonnull align 8 dereferenceable(570) %i.ul, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i106 unwind label %bb.dc, !inline_history !19

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i106: ; preds = %.noexc109, %bb.cz
  %.0.i.i.i107 = phi i8 [ %i.up, %bb.cz ], [ %i.ut, %.noexc109 ]
  %i.uu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.uf, i8 noundef signext %.0.i.i.i107)
          to label %.noexc111 unwind label %bb.dc

.noexc111:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i106
  %i.uv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.uu)
          to label %_ZNSolsEPFRSoS_E.exit81 unwind label %bb.dc ; 0 uses

_ZNSolsEPFRSoS_E.exit81:                          ; preds = %.noexc111
  %i.uw = load ptr, ptr %i.cl, align 8, !tbaa !39 ; 2 uses
  %i.ux = icmp eq ptr %i.uw, %i.cm
  br i1 %i.ux, label %_ZN16GaugeCalibrationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82: ; preds = %_ZNSolsEPFRSoS_E.exit81
  %i.uy = load i64, ptr %i.cm, align 8, !tbaa !40
  %i.uz = add i64 %i.uy, 1
  call void @_ZdlPvm(ptr noundef %i.uw, i64 noundef %i.uz) #18
  br label %_ZN16GaugeCalibrationD2Ev.exit

_ZN16GaugeCalibrationD2Ev.exit:                   ; preds = %_ZNSolsEPFRSoS_E.exit81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #17
  br label %_ZNSolsEPFRSoS_E.exit

bb.db:                                            ; preds = %.noexc.i57
  %i.va = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

.body63:                                          ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.vb = load ptr, ptr %40, align 8, !tbaa !39   ; 2 uses
  %i.vc = icmp eq ptr %i.vb, %i.bz
  br i1 %i.vc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %.body63
  %i.vd = load i64, ptr %i.bz, align 8, !tbaa !40
  %i.ve = add i64 %i.vd, 1
  call void @_ZdlPvm(ptr noundef %i.vb, i64 noundef %i.ve) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.dc:                                            ; preds = %.noexc111, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i106, %.noexc109, %bb.da, %bb.cy, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77, %_ZNSolsEd.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74, %bb.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %i.vf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dd:                                            ; preds = %.body71, %bb.dc
end_hunk_2
begin_hunk_3_@main:.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #17
  %i.vk = load ptr, ptr %36, align 8, !tbaa !39   ; 2 uses
  %i.vl = icmp eq ptr %i.vk, %i.aa
  br i1 %i.vl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.vm = load i64, ptr %i.aa, align 8, !tbaa !40
  %i.vn = add i64 %i.vm, 1
  call void @_ZdlPvm(ptr noundef %i.vk, i64 noundef %i.vn) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #17
  call void @_ZN2cv17CommandLineParserD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #17
  ret i32 %.015

bb.de:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %bb.p
  %.pn24 = phi { ptr, i32 } [ %i.by, %bb.p ], [ %.pn21.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #17
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.o
  %.pn24.pn = phi { ptr, i32 } [ %.pn24, %bb.de ], [ %i.bx, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #17
  %i.vo = load ptr, ptr %36, align 8, !tbaa !39   ; 2 uses
  %i.vp = icmp eq ptr %i.vo, %i.aa
  br i1 %i.vp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.df
  %i.vq = load i64, ptr %i.aa, align 8, !tbaa !40
  %i.vr = add i64 %i.vq, 1
  call void @_ZdlPvm(ptr noundef %i.vo, i64 noundef %i.vr) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %.pn24.pn.pn = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %.pn24.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ], [ %.pn24.pn, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #17
  br label %bb.dg

bb.dg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn24.pn.pn.pn = phi { ptr, i32 } [ %.pn24.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ], [ %i.bs, %bb.n ], [ %.pn17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ]
  call void @_ZN2cv17CommandLineParserD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #17
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %.pn24.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn24.pn.pn.pn, %bb.dg ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #17
  resume { ptr, i32 } %.pn24.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN2cv17CommandLineParserC1EiPKPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN2cv17CommandLineParser5aboutERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZNK2cv17CommandLineParser12printMessageEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN2cv6imreadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN2cv17CommandLineParserD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #4

declare void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv12HoughCirclesERKNS_11_InputArrayERKNS_12_OutputArrayEiddddii(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24), i64, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #6

declare void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24), i64, i64, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv7putTextERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEidNS_7Scalar_IdEEiib(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32), i64, i32 noundef, double noundef, ptr noundef align 8 dead_on_return, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2cv7imwriteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef double @_ZN2cv9thresholdERKNS_11_InputArrayERKNS_12_OutputArrayEddi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef, double noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv11HoughLinesPERKNS_11_InputArrayERKNS_12_OutputArrayEddidd(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef, double noundef, i32 noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !16     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN2cv3VecIiLi4EEESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #19
  unreachable

_ZNKSt6vectorIN2cv3VecIiLi4EEESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #21 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load <4 x i32>, ptr %2, align 4, !tbaa !11
  store <4 x i32> %i.r, ptr %i.q, align 4, !tbaa !11
  %.not13.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN2cv3VecIiLi4EEESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i
  %.015.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN2cv3VecIiLi4EEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN2cv3VecIiLi4EEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.s = load i32, ptr %.01214.i.i.i.i.i, align 4, !tbaa !11
  store i32 %i.s, ptr %.015.i.i.i.i.i, align 4, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 4
  store i32 %i.u, ptr %i.v, align 4, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 8
  store i32 %i.x, ptr %i.y, align 4, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 12
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !105

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN2cv3VecIiLi4EEESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN2cv3VecIiLi4EEESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ad, %.lr.ph.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not13.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %.lr.ph.i.i.i.i.i29
  %.015.i.i.i.i.i30 = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i29 ], [ %i.ae, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %.01214.i.i.i.i.i31 = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i29 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %i.af = load <4 x i32>, ptr %.01214.i.i.i.i.i31, align 4, !tbaa !11
  store <4 x i32> %i.af, ptr %.015.i.i.i.i.i30, align 4, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i31, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i30, i64 16 ; 2 uses
  %.not.i.i.i.i.i32 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, label %.lr.ph.i.i.i.i.i29, !llvm.loop !105

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34: ; preds = %.lr.ph.i.i.i.i.i29, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i33 = phi ptr [ %i.ae, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.ah, %.lr.ph.i.i.i.i.i29 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN2cv3VecIiLi4EEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !15
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #18
  br label %_ZNSt12_Vector_baseIN2cv3VecIiLi4EEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN2cv3VecIiLi4EEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !16
  store ptr %.0.lcssa.i.i.i.i.i33, ptr %i.a, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !15
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #10

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

declare void @_ZNK2cv17CommandLineParser9getByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS_5ParamEPv(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #16

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn }
attributes #20 = { cold noreturn nounwind }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!6, !6, i64 0}
!12 = !{!"p1 _ZTSN2cv3VecIiLi4EEE", !9, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseIN2cv3VecIiLi4EEESaIS2_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!14 = !{!13, !12, i64 8}
!15 = !{!13, !12, i64 16}
!16 = !{!13, !12, i64 0}
!17 = distinct !{!17, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b"}
!18 = distinct !{!18, !17, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b: argument 0"}
!19 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null}
!20 = distinct !{!20, !"_ZL15calibrate_gaugeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!21 = distinct !{!21, !20, !"_ZL15calibrate_gaugeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!22 = distinct !{null}
!23 = distinct !{!23, !"_ZL11avg_circlesRKSt6vectorIN2cv3VecIfLi3EEESaIS2_EE"}
!24 = distinct !{!24, !23, !"_ZL11avg_circlesRKSt6vectorIN2cv3VecIfLi3EEESaIS2_EE: argument 0"}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !"_ZNSt7__cxx119to_stringEi"}
!29 = distinct !{!29, !28, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = !{!"p1 omnipotent char", !9, i64 0}
!34 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !33, i64 0}
!35 = !{!34, !33, i64 0}
!36 = !{!"long", !5, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !34, i64 0, !36, i64 8, !5, i64 16}
!39 = !{!38, !33, i64 0}
!40 = !{!5, !5, i64 0}
!41 = !{!38, !36, i64 8}
!42 = !{!18}
!43 = !{!"vtable pointer", !4, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!46 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!47 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !9, i64 0}
!48 = !{!"_ZTSNSt8ios_base6_WordsE", !9, i64 0, !36, i64 8}
!49 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !9, i64 0}
!50 = !{!"p1 _ZTSNSt6locale5_ImplE", !9, i64 0}
!51 = !{!"_ZTSSt6locale", !50, i64 0}
!52 = !{!"_ZTSSt8ios_base", !36, i64 8, !36, i64 16, !45, i64 24, !46, i64 28, !46, i64 32, !47, i64 40, !48, i64 48, !5, i64 64, !6, i64 192, !49, i64 200, !51, i64 208}
!53 = !{!"p1 _ZTSSo", !9, i64 0}
!54 = !{!"bool", !5, i64 0}
!55 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !9, i64 0}
!56 = !{!"p1 _ZTSSt5ctypeIcE", !9, i64 0}
!57 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !9, i64 0}
!58 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !9, i64 0}
!59 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !52, i64 0, !53, i64 216, !5, i64 224, !54, i64 225, !55, i64 232, !56, i64 240, !57, i64 248, !58, i64 256}
!60 = !{!59, !56, i64 240}
!61 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!62 = !{!"p1 _ZTS15__locale_struct", !9, i64 0}
!63 = !{!"p1 int", !9, i64 0}
!64 = !{!"p1 short", !9, i64 0}
!65 = !{!"_ZTSSt5ctypeIcE", !61, i64 0, !62, i64 16, !54, i64 24, !63, i64 32, !63, i64 40, !64, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!66 = !{!65, !5, i64 56}
!67 = !{!21}
!68 = !{!"p1 _ZTSN2cv12MatAllocatorE", !9, i64 0}
!69 = !{!"p1 _ZTSN2cv8UMatDataE", !9, i64 0}
!70 = !{!"_ZTSN2cv10DataLayoutE", !5, i64 0}
!71 = !{!"_ZTSN2cv8MatShapeE", !6, i64 0, !70, i64 4, !6, i64 8, !5, i64 12}
!72 = !{!"_ZTSN2cv7MatStepE", !5, i64 0}
!73 = !{!"_ZTSN2cv3MatE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !33, i64 24, !33, i64 32, !33, i64 40, !33, i64 48, !68, i64 56, !69, i64 64, !71, i64 72, !72, i64 128}
!74 = !{!73, !6, i64 8}
!75 = !{!"_ZTSN2cv5Size_IiEE", !6, i64 0, !6, i64 4}
!76 = !{!75, !6, i64 0}
!77 = !{!75, !6, i64 4}
!78 = !{!"_ZTSN2cv11_InputArrayE", !6, i64 0, !9, i64 8, !75, i64 16}
!79 = !{!78, !6, i64 0}
!80 = !{!78, !9, i64 8}
!81 = !{!"p1 _ZTSN2cv3VecIfLi3EEE", !9, i64 0}
!82 = !{!81, !81, i64 0}
!83 = !{!"float", !5, i64 0}
!84 = !{!83, !83, i64 0}
!85 = !{!24}
!86 = !{!"double", !5, i64 0}
!87 = !{!"_ZTS16GaugeCalibration", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !38, i64 32, !6, i64 64, !6, i64 68, !6, i64 72}
!88 = !{!87, !6, i64 72}
!89 = !{!86, !86, i64 0}
!90 = !{!29}
!91 = !{!29, !21}
!92 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !63, i64 0, !63, i64 8, !63, i64 16}
!93 = !{!92, !63, i64 0}
!94 = !{!92, !63, i64 16}
!95 = !{!"_ZTSNSt12_Vector_baseIN2cv3VecIfLi3EEESaIS2_EE17_Vector_impl_dataE", !81, i64 0, !81, i64 8, !81, i64 16}
!96 = !{!95, !81, i64 0}
!97 = !{!95, !81, i64 16}
!98 = !{!12, !12, i64 0}
!99 = !{!87, !6, i64 68}
!100 = !{!87, !6, i64 64}
!101 = !{!87, !86, i64 0}
!102 = !{!87, !86, i64 8}
!103 = !{!87, !86, i64 16}
!104 = !{!87, !86, i64 24}
!105 = distinct !{!105, !10}
end_hunk_3
