Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/pca?download=true
inline.NumInlined: 263
inline.NumDeleted: 113
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
%"class.cv::Range" = type { i32, i32 }
%"class.cv::Mat" = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.cv::MatShape", %"struct.cv::MatStep" }
%"struct.cv::MatShape" = type { i32, i32, i32, [10 x i32] }
%"struct.cv::MatStep" = type { [10 x i64] }
%"class.cv::_OutputArray" = type { %"class.cv::_InputArray" }
%"class.cv::_InputArray" = type { i32, ptr, %"class.cv::Size_" }
%"class.cv::Size_" = type { i32, i32 }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon.3 }
%union.anon.3 = type { i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"class.cv::CommandLineParser" = type { ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<cv::Mat, std::allocator<cv::Mat>>::_Vector_impl" }
%"struct.std::_Vector_base<cv::Mat, std::allocator<cv::Mat>>::_Vector_impl" = type { %"struct.std::_Vector_base<cv::Mat, std::allocator<cv::Mat>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cv::Mat, std::allocator<cv::Mat>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.cv::PCA" = type { %"class.cv::Mat", %"class.cv::Mat", %"class.cv::Mat" }
%struct.params = type { %"class.cv::Mat", i32, i32, %"class.cv::PCA", %"class.std::__cxx11::basic_string" }
%"class.cv::_InputOutputArray" = type { %"class.cv::_OutputArray" }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$__clang_call_terminate = comdat any

$_ZN6paramsD2Ev = comdat any

$_ZN2cv3PCAD2Ev = comdat any

$_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev = comdat any

$_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

@.str = private unnamed_addr constant [48 x i8] c"{@input||image list}{help h||show help message}\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"@input\00", align 1
@_ZTIN2cv9ExceptionE = external constant ptr
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"Error opening file \22\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"\22. Reason: \00", align 1
@.str.5 = private unnamed_addr constant [84 x i8] c"This demo needs at least 2 images to work. Please add more images to your data set!\00", align 1
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"/opt-bench/work/opencv/opencv/samples/cpp/pca.cpp\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Reconstruction | press 'q' to quit\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Retained Variance (%)\00", align 1
@.str.9 = private unnamed_addr constant [64 x i8] c"No valid input file was given, please check the given filename.\00", align 1
@__func__._ZL12read_imgListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIN2cv3MatESaIS9_EE = private unnamed_addr constant [13 x i8] c"read_imgList\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"Only Matrices with one channel are supported\00", align 1
@__func__._ZL11toGrayscaleRKN2cv11_InputArrayE = private unnamed_addr constant [12 x i8] c"toGrayscale\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.12 = private unnamed_addr constant [21 x i8] c"Retained Variance = \00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%   \00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"re-calculating PCA...\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"done!   # of principal components: \00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.cv::Range", align 4         ; 5 uses
  %3 = alloca %"class.cv::Range", align 8         ; 4 uses
  %4 = alloca %"class.cv::Range", align 4         ; 5 uses
  %5 = alloca %"class.cv::Range", align 8         ; 4 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %9 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %10 = alloca %"class.std::basic_ifstream", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %15 = alloca %"class.cv::CommandLineParser", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::vector", align 8      ; 15 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::allocator", align 1   ; 4 uses
  %23 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %24 = alloca %"class.cv::PCA", align 8          ; 11 uses
  %25 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %26 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %27 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %28 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %29 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %30 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %31 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %32 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %33 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %34 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %35 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %37 = alloca %struct.params, align 8            ; 17 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %39 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.e = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.e, ptr %16, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 47, ptr %i.c, align 8, !tbaa !15
  %i.f = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %bb.a unwind label %bb.f       ; 3 uses

bb.a:                                             ; preds = %.noexc.i
  store ptr %i.f, ptr %16, align 8, !tbaa !17
  %i.g = load i64, ptr %i.c, align 8, !tbaa !15   ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.f, ptr noundef nonnull align 1 dereferenceable(47) @.str, i64 47, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  store i8 0, ptr %i.i, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  invoke void @_ZN2cv17CommandLineParserC1EiPKPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %16, align 8, !tbaa !17    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.e
  br i1 %i.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.e, align 8, !tbaa !18
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.n = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.n, ptr %17, align 8, !tbaa !13
  store i32 1886152040, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 4, ptr %i.o, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %17, i64 20
  store i8 0, ptr %i.p, align 4, !tbaa !18
  %i.q = invoke noundef zeroext i1 @_ZNK2cv17CommandLineParser3hasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.r = load ptr, ptr %17, align 8, !tbaa !17    ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.n
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.c
  %i.t = load i64, ptr %i.n, align 8, !tbaa !18
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br i1 %i.q, label %bb.d, label %bb.j

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  invoke void @_ZNK2cv17CommandLineParser12printMessageEv(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @exit(i32 noundef 0) #21
  unreachable

bb.f:                                             ; preds = %.noexc.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.g:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %16, align 8, !tbaa !17    ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.e
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.g
  %i.z = load i64, ptr %i.e, align 8, !tbaa !18
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.f
  %.pn = phi { ptr, i32 } [ %i.v, %bb.f ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %i.w, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.cy

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %17, align 8, !tbaa !17   ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.n
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.h
  %i.ae = load i64, ptr %i.n, align 8, !tbaa !18
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.cx

bb.i:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  %i.ah = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.ah, ptr %19, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ah, ptr noundef nonnull align 1 dereferenceable(6) @.str.2, i64 6, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 6, ptr %i.ai, align 8, !tbaa !19
  %i.aj = getelementptr inbounds nuw i8, ptr %19, i64 22
  store i8 0, ptr %i.aj, align 2, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 8 uses
  store ptr %i.ak, ptr %18, align 8, !tbaa !13, !alias.scope !83
  %i.al = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  store i64 0, ptr %i.al, align 8, !tbaa !19, !alias.scope !83
  store i8 0, ptr %i.ak, align 8, !tbaa !18, !alias.scope !83
  invoke void @_ZNK2cv17CommandLineParser9getByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS_5ParamEPv(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(32) %19, i1 noundef zeroext true, i32 noundef 3, ptr noundef nonnull align 8 %18)
          to label %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %18, align 8, !tbaa !17, !alias.scope !83 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ak
  br i1 %i.ao, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  %i.ap = load i64, ptr %i.ak, align 8, !tbaa !18, !alias.scope !83
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #20
  br label %.body

_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit: ; preds = %bb.j
  %i.ar = load ptr, ptr %19, align 8, !tbaa !17   ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ah
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit
  %i.at = load i64, ptr %i.ah, align 8, !tbaa !18
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %i.av = load i64, ptr %i.al, align 8, !tbaa !19
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  invoke void @_ZNK2cv17CommandLineParser12printMessageEv(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @exit(i32 noundef 1) #22
  unreachable

.body:                                            ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ax = load ptr, ptr %19, align 8, !tbaa !17   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ah
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %.body
  %i.az = load i64, ptr %i.ah, align 8, !tbaa !18
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
end_hunk_0
begin_hunk_1_@main:.noexc.i
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.3, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ai
  %i.do = load ptr, ptr %18, align 8, !tbaa !17
  %i.dp = load i64, ptr %i.al, align 8, !tbaa !19
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.do, i64 noundef %i.dp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.aj ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull @.str.4, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111 unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !17
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !19
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef %i.dt, i64 noundef %i.dv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit113 unwind label %bb.aj

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit113: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.dw)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.aj, !inline_history !74 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit113
  call void @exit(i32 noundef 1) #22
  unreachable

bb.aj:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit113, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.ai
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cv unwind label %bb.cz

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i17.i: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.dz = load ptr, ptr %i.bu, align 8, !tbaa !46
  %i.ea = load ptr, ptr %20, align 8, !tbaa !49   ; 3 uses
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = sdiv exact i64 %i.ed, 208               ; 2 uses
  %i.ef = icmp ult i64 %i.ee, 2
  br i1 %i.ef, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i17.i
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.6, i32 noundef 152) #23
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %bb.ak
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

bb.ao:                                            ; preds = %bb.al
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %21, align 8, !tbaa !17   ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %bb.ao
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !18
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115, %bb.an
  %.pn72 = phi { ptr, i32 } [ %i.eg, %bb.an ], [ %i.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115 ], [ %i.eh, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br label %bb.cv

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i17.i
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  %i.en = trunc i64 %i.ee to i32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !85, !noalias !86
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !87, !noalias !86
  %i.es = mul nsw i32 %i.er, %i.ep
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %23, i32 noundef %i.en, i32 noundef %i.es, i32 noundef 5)
          to label %.noexc121 unwind label %bb.bt

.noexc121:                                        ; preds = %bb.ap
  %i.et = load ptr, ptr %i.bu, align 8, !tbaa !46, !noalias !86
  %i.eu = load ptr, ptr %20, align 8, !tbaa !49, !noalias !86 ; 2 uses
  %.not.i118 = icmp eq ptr %i.et, %i.eu
  br i1 %.not.i118, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc121
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ew = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.au, %.lr.ph.i
  %i.ey = phi ptr [ %i.eu, %.lr.ph.i ], [ %i.fe, %bb.au ]
  %i.ez = phi i64 [ 0, %.lr.ph.i ], [ %i.fc, %bb.au ]
  %.01522.i = phi i32 [ 0, %.lr.ph.i ], [ %i.fb, %bb.au ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19, !noalias !86
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19, !noalias !86
  %i.fa = getelementptr inbounds nuw [208 x i8], ptr %i.ey, i64 %i.ez
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %7, ptr noundef nonnull align 8 dereferenceable(208) %i.fa)
          to label %bb.ar unwind label %bb.av

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 1, i32 noundef 1)
          to label %bb.as unwind label %bb.aw

bb.as:                                            ; preds = %bb.ar
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19, !noalias !86
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19, !noalias !86
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !88
  %i.fb = add i32 %.01522.i, 1                    ; 3 uses
  store i32 %.01522.i, ptr %4, align 4, !tbaa !57, !noalias !88
  store i32 %i.fb, ptr %i.ev, align 4, !tbaa !58, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !88
  store i64 9223372034707292160, ptr %5, align 8, !noalias !88
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %23, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5)
          to label %bb.at unwind label %bb.ay

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19, !noalias !86
  store i64 0, ptr %i.ex, align 8, !noalias !86
  store i32 33619968, ptr %9, align 8, !tbaa !61, !noalias !86
  store ptr %8, ptr %i.ew, align 8, !tbaa !62, !noalias !86
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef 5, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.au unwind label %bb.az

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19, !noalias !86
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19, !noalias !86
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19, !noalias !86
  %i.fc = zext i32 %i.fb to i64                   ; 2 uses
  %i.fd = load ptr, ptr %i.bu, align 8, !tbaa !46, !noalias !86
  %i.fe = load ptr, ptr %20, align 8, !tbaa !49, !noalias !86 ; 2 uses
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = sdiv exact i64 %i.fh, 208
  %i.fj = icmp ugt i64 %i.fi, %i.fc
  br i1 %i.fj, label %bb.aq, label %.loopexit, !llvm.loop !79

bb.av:                                            ; preds = %bb.aq
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aw:                                            ; preds = %bb.ar
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #19
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pn.i119 = phi { ptr, i32 } [ %i.fl, %bb.aw ], [ %i.fk, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19, !noalias !86
  br label %bb.bb

bb.ay:                                            ; preds = %bb.as
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %bb.at
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19, !noalias !86
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #19
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pn18.pn.i = phi { ptr, i32 } [ %i.fn, %bb.az ], [ %i.fm, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19, !noalias !86
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #19
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ax
  %.pn18.pn.pn.i = phi { ptr, i32 } [ %.pn18.pn.i, %bb.ba ], [ %.pn.i119, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19, !noalias !86
  br label %bb.cu

.loopexit:                                        ; preds = %bb.au, %.noexc121
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  %i.fo = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i32 0, ptr %i.fo, align 8, !tbaa !63
  %i.fp = getelementptr inbounds nuw i8, ptr %25, i64 20
  store i32 0, ptr %i.fp, align 4, !tbaa !64
  store i32 16842752, ptr %25, align 8, !tbaa !61
  %i.fq = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %23, ptr %i.fq, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %27) #19
  %i.fr = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i32 0, ptr %i.fr, align 8, !tbaa !63
  %i.fs = getelementptr inbounds nuw i8, ptr %26, i64 20
  store i32 0, ptr %i.fs, align 4, !tbaa !64
  store i32 16842752, ptr %26, align 8, !tbaa !61
  %i.ft = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %27, ptr %i.ft, align 8, !tbaa !62
  invoke void @_ZN2cv3PCAC1ERKNS_11_InputArrayES3_id(ptr noundef nonnull align 8 dereferenceable(624) %24, ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(24) %26, i32 noundef 0, double noundef f0x3FEE666666666666)
          to label %bb.bc unwind label %bb.bu

bb.bc:                                            ; preds = %.loopexit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19, !noalias !89
  store i32 0, ptr %2, align 4, !tbaa !57, !noalias !89
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 1, ptr %i.fu, align 4, !tbaa !58, !noalias !89
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !89
  store i64 9223372034707292160, ptr %3, align 8, !noalias !89
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %30, ptr noundef nonnull align 8 dereferenceable(208) %23, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3)
          to label %bb.bd unwind label %bb.bv

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19, !noalias !89
  %i.fv = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i32 0, ptr %i.fv, align 8, !tbaa !63
  %i.fw = getelementptr inbounds nuw i8, ptr %29, i64 20
  store i32 0, ptr %i.fw, align 4, !tbaa !64
  store i32 16842752, ptr %29, align 8, !tbaa !61
  %i.fx = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %30, ptr %i.fx, align 8, !tbaa !62
  invoke void @_ZNK2cv3PCA7projectERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %28, ptr noundef nonnull align 8 dereferenceable(624) %24, ptr noundef nonnull align 8 dereferenceable(24) %29)
          to label %bb.be unwind label %bb.bw

bb.be:                                            ; preds = %bb.bd
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  %i.fy = getelementptr inbounds nuw i8, ptr %32, i64 16
  store i32 0, ptr %i.fy, align 8, !tbaa !63
  %i.fz = getelementptr inbounds nuw i8, ptr %32, i64 20
  store i32 0, ptr %i.fz, align 4, !tbaa !64
  store i32 16842752, ptr %32, align 8, !tbaa !61
  %i.ga = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %28, ptr %i.ga, align 8, !tbaa !62
  invoke void @_ZNK2cv3PCA11backProjectERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %31, ptr noundef nonnull align 8 dereferenceable(624) %24, ptr noundef nonnull align 8 dereferenceable(24) %32)
          to label %bb.bf unwind label %bb.by

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #19
  %i.gb = load ptr, ptr %20, align 8, !tbaa !49   ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !65
  %i.gd = lshr i32 %i.gc, 5
  %i.ge = and i32 %i.gd, 127
  %i.gf = add nuw nsw i32 %i.ge, 1
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !85
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %33, ptr noundef nonnull align 8 dereferenceable(208) %31, i32 noundef %i.gf, i32 noundef %i.gh)
          to label %bb.bg unwind label %bb.bz

bb.bg:                                            ; preds = %bb.bf
  %i.gi = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %31, ptr noundef nonnull align 8 dereferenceable(208) %33)
          to label %bb.bh unwind label %bb.ca     ; 0 uses

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %33) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #19
  %i.gj = getelementptr inbounds nuw i8, ptr %35, i64 16
  store i32 0, ptr %i.gj, align 8, !tbaa !63
  %i.gk = getelementptr inbounds nuw i8, ptr %35, i64 20
  store i32 0, ptr %i.gk, align 4, !tbaa !64
  store i32 16842752, ptr %35, align 8, !tbaa !61
  %i.gl = getelementptr inbounds nuw i8, ptr %35, i64 8
  store ptr %31, ptr %i.gl, align 8, !tbaa !62
  invoke fastcc void @_ZL11toGrayscaleRKN2cv11_InputArrayE(ptr dead_on_unwind noalias writable align 8 %34, ptr noundef nonnull align 8 dereferenceable(24) %35)
          to label %bb.bi unwind label %bb.cc

bb.bi:                                            ; preds = %bb.bh
  %i.gm = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %31, ptr noundef nonnull align 8 dereferenceable(208) %34)
          to label %.noexc.i126 unwind label %bb.cd ; 0 uses

.noexc.i126:                                      ; preds = %bb.bi
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %34) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #19
  %i.gn = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 6 uses
  store ptr %i.gn, ptr %36, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 34, ptr %i.b, align 8, !tbaa !15
  %i.go = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %bb.bj unwind label %bb.cf     ; 3 uses

bb.bj:                                            ; preds = %.noexc.i126
  store ptr %i.go, ptr %36, align 8, !tbaa !17
  %i.gp = load i64, ptr %i.b, align 8, !tbaa !15  ; 3 uses
  store i64 %i.gp, ptr %i.gn, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.go, ptr noundef nonnull align 1 dereferenceable(34) @.str.7, i64 34, i1 false)
  %i.gq = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 %i.gp, ptr %i.gq, align 8, !tbaa !19
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gp
  store i8 0, ptr %i.gr, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  invoke void @_ZN2cv11namedWindowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %36, i32 noundef 0)
          to label %bb.bk unwind label %bb.cg

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #19
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(872) %37) #19
  %i.gs = getelementptr inbounds nuw i8, ptr %37, i64 216 ; 3 uses
  invoke void @_ZN2cv3PCAC1Ev(ptr noundef nonnull align 8 dereferenceable(624) %i.gs)
          to label %bb.bm unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(872) %37) #19
  br label %.body129

bb.bm:                                            ; preds = %bb.bk
  %i.gu = getelementptr inbounds nuw i8, ptr %37, i64 840 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %37, i64 856 ; 4 uses
  store ptr %i.gv, ptr %i.gu, align 8, !tbaa !13
  %i.gw = getelementptr inbounds nuw i8, ptr %37, i64 848
  store i64 0, ptr %i.gw, align 8, !tbaa !19
  store i8 0, ptr %i.gv, align 8, !tbaa !18
  %i.gx = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %37, ptr noundef nonnull align 8 dereferenceable(208) %23)
          to label %bb.bn unwind label %bb.ch     ; 0 uses

bb.bn:                                            ; preds = %bb.bm
  %i.gy = load ptr, ptr %20, align 8, !tbaa !49   ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !65
  %i.ha = lshr i32 %i.gz, 5
  %i.hb = and i32 %i.ha, 127
  %i.hc = add nuw nsw i32 %i.hb, 1
  %i.hd = getelementptr inbounds nuw i8, ptr %37, i64 208
  store i32 %i.hc, ptr %i.hd, align 8, !tbaa !68
  %i.he = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !85
  %i.hg = getelementptr inbounds nuw i8, ptr %37, i64 212
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !69
  %i.hh = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(624) %i.gs, ptr noundef nonnull align 8 dereferenceable(624) %24)
          to label %.noexc131 unwind label %bb.ch ; 0 uses

.noexc131:                                        ; preds = %bb.bn
  %i.hi = getelementptr inbounds nuw i8, ptr %37, i64 424 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %24, i64 208 ; 2 uses
  %i.hk = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.hi, ptr noundef nonnull align 8 dereferenceable(208) %i.hj)
          to label %.noexc132 unwind label %bb.ch ; 0 uses

.noexc132:                                        ; preds = %.noexc131
  %i.hl = getelementptr inbounds nuw i8, ptr %37, i64 632 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %24, i64 416 ; 2 uses
  %i.hn = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.hl, ptr noundef nonnull align 8 dereferenceable(208) %i.hm)
          to label %_ZN2cv3PCAaSERKS0_.exit unwind label %bb.ch ; 0 uses

_ZN2cv3PCAaSERKS0_.exit:                          ; preds = %.noexc132
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.gu, ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %.noexc.i136 unwind label %bb.ch

.noexc.i136:                                      ; preds = %_ZN2cv3PCAaSERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 95, ptr %i.d, align 4, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #19
  %i.ho = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 6 uses
  store ptr %i.ho, ptr %38, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 21, ptr %i.a, align 8, !tbaa !15
  %i.hp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %bb.bo unwind label %bb.ci     ; 2 uses

bb.bo:                                            ; preds = %.noexc.i136
  store ptr %i.hp, ptr %38, align 8, !tbaa !17
  %i.hq = load i64, ptr %i.a, align 8, !tbaa !15  ; 3 uses
  store i64 %i.hq, ptr %i.ho, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.hp, ptr noundef nonnull align 1 dereferenceable(21) @.str.8, i64 21, i1 false)
  %i.hr = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 %i.hq, ptr %i.hr, align 8, !tbaa !19
  %i.hs = load ptr, ptr %38, align 8, !tbaa !17
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hq
  store i8 0, ptr %i.ht, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.hu = invoke noundef i32 @_ZN2cv14createTrackbarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_PiiPFviPvES9_(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull %i.d, i32 noundef 100, ptr noundef nonnull @_ZL10onTrackbariPv, ptr noundef nonnull %37)
          to label %bb.bp unwind label %bb.cj     ; 0 uses

bb.bp:                                            ; preds = %bb.bo
  %i.hv = load ptr, ptr %38, align 8, !tbaa !17   ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.ho
  br i1 %i.hw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %bb.bp
  %i.hx = load i64, ptr %i.ho, align 8, !tbaa !18
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i140: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19
  %i.hz = getelementptr inbounds nuw i8, ptr %39, i64 16
  store i32 0, ptr %i.hz, align 8, !tbaa !63
  %i.ia = getelementptr inbounds nuw i8, ptr %39, i64 20
  store i32 0, ptr %i.ia, align 4, !tbaa !64
  store i32 16842752, ptr %39, align 8, !tbaa !61
  %i.ib = getelementptr inbounds nuw i8, ptr %39, i64 8
  store ptr %31, ptr %i.ib, align 8, !tbaa !62
  invoke void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(24) %39)
          to label %bb.bq unwind label %bb.ck

bb.bq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  br label %bb.br

bb.br:                                            ; preds = %bb.bs, %bb.bq
  %.0 = phi i32 [ 0, %bb.bq ], [ %i.ic, %bb.bs ]
  %sext.mask = and i32 %.0, 255
  %.not = icmp eq i32 %sext.mask, 113
  br i1 %.not, label %bb.cm, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ic = invoke noundef i32 @_ZN2cv7waitKeyEi(i32 noundef 0)
          to label %bb.br unwind label %bb.cl, !llvm.loop !82

bb.bt:                                            ; preds = %bb.ap
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %.body122

bb.bu:                                            ; preds = %.loopexit
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  br label %40

bb.bv:                                            ; preds = %bb.bc
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bd
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #19
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.pn47.pn = phi { ptr, i32 } [ %i.ig, %bb.bw ], [ %i.if, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  br label %bb.ct

bb.by:                                            ; preds = %bb.be
  %i.ih = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  br label %bb.cs

bb.bz:                                            ; preds = %bb.bf
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bg
  %i.ij = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %33) #19
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.pn52 = phi { ptr, i32 } [ %i.ij, %bb.ca ], [ %i.ii, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  br label %bb.cr

bb.cc:                                            ; preds = %bb.bh
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.cd:                                            ; preds = %bb.bi
  %i.il = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %34) #19
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cc, %bb.cd
  %.pn54.pn = phi { ptr, i32 } [ %i.ik, %bb.cc ], [ %i.il, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  br label %bb.cr

bb.cf:                                            ; preds = %.noexc.i126
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

bb.cg:                                            ; preds = %bb.bj
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.ch:                                            ; preds = %_ZN2cv3PCAaSERKS0_.exit, %.noexc132, %.noexc131, %bb.bn, %bb.bm
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.ci:                                            ; preds = %.noexc.i136
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

bb.cj:                                            ; preds = %bb.bo
  %i.iq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ir = load ptr, ptr %38, align 8, !tbaa !17   ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.ho
  br i1 %i.is, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %bb.cj
  %i.it = load i64, ptr %i.ho, align 8, !tbaa !18
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iu) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142, %bb.ci
  %.pn57 = phi { ptr, i32 } [ %i.ip, %bb.ci ], [ %i.iq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ], [ %i.iq, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  br label %bb.co

bb.ck:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i140
  %i.iv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  br label %bb.co

bb.cl:                                            ; preds = %bb.bs
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.cm:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.ix = load ptr, ptr %i.gu, align 8, !tbaa !17 ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.gv
  br i1 %i.iy, label %_ZN6paramsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i145: ; preds = %bb.cm
  %i.iz = load i64, ptr %i.gv, align 8, !tbaa !18
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.ja) #20
  br label %_ZN6paramsD2Ev.exit

_ZN6paramsD2Ev.exit:                              ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i145
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.hl) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.hi) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(624) %i.gs) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(872) %37) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  %i.jb = load ptr, ptr %36, align 8, !tbaa !17   ; 2 uses
  %i.jc = icmp eq ptr %i.jb, %i.gn
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %_ZN6paramsD2Ev.exit
  %i.jd = load i64, ptr %i.gn, align 8, !tbaa !18
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.je) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %_ZN6paramsD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.hm) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.hj) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(624) %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  %i.jf = load ptr, ptr %20, align 8, !tbaa !49   ; 3 uses
  %i.jg = load ptr, ptr %i.bu, align 8, !tbaa !46 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.jf, %i.jg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.jh, %.lr.ph.i.i.i ], [ %i.jf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150 ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #19
  %i.jh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i151 = icmp eq ptr %i.jh, %i.jg
  br i1 %.not.i.i.i151, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %20, align 8, !tbaa !49
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
  %i.ji = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.jf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ji, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.cn

bb.cn:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.jj = load ptr, ptr %i.bv, align 8, !tbaa !47
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = ptrtoint ptr %i.ji to i64
  %i.jm = sub i64 %i.jk, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %i.ji, i64 noundef %i.jm) #20
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  %i.jn = load ptr, ptr %18, align 8, !tbaa !17   ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.ak
  br i1 %i.jo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  %i.jp = load i64, ptr %i.ak, align 8, !tbaa !18
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @_ZN2cv17CommandLineParserD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  ret i32 0

bb.co:                                            ; preds = %bb.cl, %bb.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %.pn61 = phi { ptr, i32 } [ %i.iw, %bb.cl ], [ %i.iv, %bb.ck ], [ %.pn57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.ch
  %.pn61.pn = phi { ptr, i32 } [ %.pn61, %bb.co ], [ %i.io, %bb.ch ]
  call void @_ZN6paramsD2Ev(ptr noundef nonnull align 8 dead_on_return(872) dereferenceable(872) %37) #19
  br label %.body129

.body129:                                         ; preds = %bb.bl, %bb.cp
  %.pn61.pn.pn = phi { ptr, i32 } [ %.pn61.pn, %bb.cp ], [ %i.gt, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  br label %bb.cq

bb.cq:                                            ; preds = %.body129, %bb.cg
  %.pn61.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn, %.body129 ], [ %i.in, %bb.cg ] ; 2 uses
  %i.jr = load ptr, ptr %36, align 8, !tbaa !17   ; 2 uses
  %i.js = icmp eq ptr %i.jr, %i.gn
  br i1 %i.js, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %bb.cq
  %i.jt = load i64, ptr %i.gn, align 8, !tbaa !18
  %i.ju = add i64 %i.jt, 1
  call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef %i.ju) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155, %bb.cf
  %.pn61.pn.pn.pn.pn = phi { ptr, i32 } [ %i.im, %bb.cf ], [ %.pn61.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155 ], [ %.pn61.pn.pn.pn, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  br label %bb.cr

bb.cr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %bb.ce, %bb.cb
  %.pn61.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157 ], [ %.pn54.pn, %bb.ce ], [ %.pn52, %bb.cb ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #19
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.by
  %.pn61.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn.pn.pn.pn, %bb.cr ], [ %i.ih, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #19
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.bx
  %.pn61.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn.pn.pn.pn.pn, %bb.cs ], [ %.pn47.pn, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  call void @_ZN2cv3PCAD2Ev(ptr noundef nonnull align 8 dead_on_return(624) dereferenceable(624) %24) #19
  br label %40

40:                                               ; preds = %bb.ct, %bb.bu
  %.pn61.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn.pn.pn.pn.pn.pn, %bb.ct ], [ %i.ie, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  br label %bb.cu

bb.cu:                                            ; preds = %40, %bb.bb
  %.pn61.pn.pn.pn.pn.pn.pn.pn.pn.a = phi { ptr, i32 } [ %.pn18.pn.pn.i, %bb.bb ], [ %.pn61.pn.pn.pn.pn.pn.pn.pn.pn, %40 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #19
  br label %.body122

.body122:                                         ; preds = %bb.cu, %bb.bt
  %.pn61.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.id, %bb.bt ], [ %.pn61.pn.pn.pn.pn.pn.pn.pn.pn.a, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %bb.cv

bb.cv:                                            ; preds = %bb.aj, %.body122, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %.body106
  %.merged77 = phi { ptr, i32 } [ %.pn72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ], [ %.pn61.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body122 ], [ %eh.lpad-body107, %.body106 ], [ %i.dy, %bb.aj ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.n
  %.merged76 = phi { ptr, i32 } [ %i.bb, %bb.n ], [ %.merged77, %bb.cv ] ; 2 uses
  %i.jv = load ptr, ptr %18, align 8, !tbaa !17   ; 2 uses
  %i.jw = icmp eq ptr %i.jv, %i.ak
  br i1 %i.jw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %bb.cw
  %i.jx = load i64, ptr %i.ak, align 8, !tbaa !18
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.jy) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %.merged75 = phi { ptr, i32 } [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ], [ %.merged76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158 ], [ %.merged76, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.cx

bb.cx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %.merged74 = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %.merged75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ]
  call void @_ZN2cv17CommandLineParserD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #19
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %.merged = phi { ptr, i32 } [ %.merged74, %bb.cx ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  resume { ptr, i32 } %.merged

bb.cz:                                            ; preds = %bb.aj
  %i.jz = landingpad { ptr, i32 }
          catch ptr null
  %i.ka = extractvalue { ptr, i32 } %i.jz, 0
  call void @__clang_call_terminate(ptr %i.ka) #21
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !13
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.16) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.d, ptr %i.a, align 8, !tbaa !15
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !17
  %i.g = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.g, ptr %i.b, align 8, !tbaa !18
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !18
  store i8 %i.i, ptr %i.h, align 1, !tbaa !18
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !19
  %i.l = load ptr, ptr %0, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZN2cv17CommandLineParserC1EiPKPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZNK2cv17CommandLineParser3hasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZNK2cv17CommandLineParser12printMessageEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #5

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #10

declare void @_ZN2cv3PCAC1ERKNS_11_InputArrayES3_id(ptr noundef nonnull align 8 dereferenceable(624), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #10

declare void @_ZNK2cv3PCA7projectERKNS_11_InputArrayE(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(624), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZNK2cv3PCA11backProjectERKNS_11_InputArrayE(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(624), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL11toGrayscaleRKN2cv11_InputArrayE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !93
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62, !noalias !93
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  %i.e = load i32, ptr %2, align 8, !tbaa !65
  %i.f = and i32 %i.e, 4064
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZL11toGrayscaleRKN2cv11_InputArrayE, ptr noundef nonnull @.str.6, i32 noundef 82) #23
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_1
