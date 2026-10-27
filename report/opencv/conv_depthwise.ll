Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/conv_depthwise?download=true
inline.NumInlined: 179
inline.NumDeleted: 100
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.cv::ParallelLoopBodyLambdaWrapper" = type { %"class.cv::ParallelLoopBody", %"class.std::function" }
%"class.cv::ParallelLoopBody" = type { ptr }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"class.cv::Mat" = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.cv::MatShape", %"struct.cv::MatStep" }
%"struct.cv::MatShape" = type { i32, i32, i32, [10 x i32] }
%"struct.cv::MatStep" = type { [10 x i64] }
%"class.cv::Range" = type { i32, i32 }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN2cv29ParallelLoopBodyLambdaWrapperD0Ev = comdat any

$_ZNK2cv29ParallelLoopBodyLambdaWrapperclERKNS_5RangeE = comdat any

$_ZTVN2cv29ParallelLoopBodyLambdaWrapperE = comdat any

$_ZTIN2cv29ParallelLoopBodyLambdaWrapperE = comdat any

$_ZTSN2cv29ParallelLoopBodyLambdaWrapperE = comdat any

@.str = private unnamed_addr constant [49 x i8] c"inputShape.size() == 3 || inputShape.size() == 4\00", align 1
@__func__._ZN2cv3dnn12runDepthwiseERKNS_11_InputArrayERKNS_12_OutputArrayERKNS_3PtrINS0_8FastConvEEEPNS0_14dnn5_v2026060515ActivationLayerERKSt6vectorIfSaIfEEb = private unnamed_addr constant [13 x i8] c"runDepthwise\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"/opt-bench/work/opencv/opencv/modules/dnn/src/layers/cpu_kernels/conv_depthwise.cpp\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"inputShape.size() == outputShape.size()\00", align 1
@.str.3 = private unnamed_addr constant [114 x i8] c"(conv_dim == CONV_2D || conv_dim == CONV_1D) && \22DNN: Currently we do not support depth-wise for Convolution 3D!\22\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"ngroups > 1 && ngroups == K && ngroups == C\00", align 1
@.str.5 = private unnamed_addr constant [82 x i8] c"ksize > 1 || (pad_left == 0 && pad_right == 0 && pad_top == 0 && pad_bottom == 0)\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"idx < (size_t)(dims > 0 ? dims : 1)\00", align 1
@__func__._ZN2cv8MatShapeixEm = private unnamed_addr constant [11 x i8] c"operator[]\00", align 1
@.str.7 = private unnamed_addr constant [76 x i8] c"/opt-bench/work/opencv/opencv/modules/core/include/opencv2/core/mat.inl.hpp\00", align 1
@_ZTVN2cv29ParallelLoopBodyLambdaWrapperE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv29ParallelLoopBodyLambdaWrapperE, ptr @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev, ptr @_ZN2cv29ParallelLoopBodyLambdaWrapperD0Ev, ptr @_ZNK2cv29ParallelLoopBodyLambdaWrapperclERKNS_5RangeE] }, comdat, align 8
@_ZTIN2cv29ParallelLoopBodyLambdaWrapperE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv29ParallelLoopBodyLambdaWrapperE, ptr @_ZTIN2cv16ParallelLoopBodyE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN2cv29ParallelLoopBodyLambdaWrapperE = linkonce_odr hidden constant [37 x i8] c"N2cv29ParallelLoopBodyLambdaWrapperE\00", comdat, align 1
@_ZTIN2cv16ParallelLoopBodyE = external constant ptr
@.str.8 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@"_ZTIZN2cv3dnn12runDepthwiseERKNS_11_InputArrayERKNS_12_OutputArrayERKNS_3PtrINS0_8FastConvEEEPNS0_14dnn5_v2026060515ActivationLayerERKSt6vectorIfSaIfEEbE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN2cv3dnn12runDepthwiseERKNS_11_InputArrayERKNS_12_OutputArrayERKNS_3PtrINS0_8FastConvEEEPNS0_14dnn5_v2026060515ActivationLayerERKSt6vectorIfSaIfEEbE3$_0" }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@"_ZTSZN2cv3dnn12runDepthwiseERKNS_11_InputArrayERKNS_12_OutputArrayERKNS_3PtrINS0_8FastConvEEEPNS0_14dnn5_v2026060515ActivationLayerERKSt6vectorIfSaIfEEbE3$_0" = internal constant [154 x i8] c"ZN2cv3dnn12runDepthwiseERKNS_11_InputArrayERKNS_12_OutputArrayERKNS_3PtrINS0_8FastConvEEEPNS0_14dnn5_v2026060515ActivationLayerERKSt6vectorIfSaIfEEbE3$_0\00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dnn12runDepthwiseERKNS_11_InputArrayERKNS_12_OutputArrayERKNS_3PtrINS0_8FastConvEEEPNS0_14dnn5_v2026060515ActivationLayerERKSt6vectorIfSaIfEEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, i1 noundef zeroext %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::ParallelLoopBodyLambdaWrapper", align 8 ; 11 uses
  %7 = alloca %"class.std::function", align 8     ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator", align 1   ; 3 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = alloca i8, align 1                       ; 2 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %19 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %20 = alloca %"struct.cv::MatShape", align 4    ; 7 uses
  %21 = alloca %"struct.cv::MatShape", align 4    ; 7 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::allocator", align 1   ; 3 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca i32, align 4                      ; 6 uses
  %i.p = alloca i32, align 4                      ; 6 uses
  %i.q = alloca i32, align 4                      ; 6 uses
  %i.r = alloca i32, align 4                      ; 6 uses
  %i.s = alloca i32, align 4                      ; 5 uses
  %i.t = alloca ptr, align 8                      ; 5 uses
  %i.u = alloca ptr, align 8                      ; 5 uses
  %i.v = alloca ptr, align 8                      ; 5 uses
  %i.w = alloca ptr, align 8                      ; 5 uses
  %i.x = alloca ptr, align 8                      ; 5 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %31 = alloca %"class.std::allocator", align 1   ; 3 uses
  %32 = alloca %"class.cv::Range", align 4        ; 6 uses
  %33 = alloca %"class.std::function", align 8    ; 10 uses
  %i.y = zext i1 %5 to i8
  store i8 %i.y, ptr %i.a, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14
  %i.z = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0), !noalias !57
  %i.aa = icmp eq i32 %i.z, 65536
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !60, !noalias !57
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %i.ac)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #14
  %i.ad = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.ae = icmp eq i32 %i.ad, 65536
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !60, !noalias !61
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %19, ptr noundef nonnull align 8 dereferenceable(208) %i.ag)
          to label %_ZNK2cv11_InputArray6getMatEi.exit114 unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %19, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit114 unwind label %bb.f

_ZNK2cv11_InputArray6getMatEi.exit114:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #14
  %i.ah = getelementptr inbounds nuw i8, ptr %18, i64 72
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %20, ptr noundef nonnull align 4 dereferenceable(52) %i.ah)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit unwind label %bb.g

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit: ; preds = %_ZNK2cv11_InputArray6getMatEi.exit114
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #14
  %i.ai = getelementptr inbounds nuw i8, ptr %19, i64 72
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %21, ptr noundef nonnull align 4 dereferenceable(52) %i.ai)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit117 unwind label %bb.h

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit117: ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit
  %i.aj = load i32, ptr %20, align 4, !tbaa !64   ; 3 uses
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.aj, i32 0) ; 3 uses
  %spec.select.i = zext nneg i32 %narrow.i to i64 ; 2 uses
  %i.ak = add nsw i32 %narrow.i, -3
  %switch = icmp ult i32 %i.ak, 2
  br i1 %switch, label %bb.n, label %bb.i

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZNK2cv11_InputArray6getMatEi.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.g:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit114
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.h:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.i:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit117
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @__func__._ZN2cv3dnn12runDepthwiseERKNS_11_InputArrayERKNS_12_OutputArrayERKNS_3PtrINS0_8FastConvEEEPNS0_14dnn5_v2026060515ActivationLayerERKSt6vectorIfSaIfEEb, ptr noundef nonnull @.str.1, i32 noundef 39) #15
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.m:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %22, align 8, !tbaa !15   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !16
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.l ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ap, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  br label %bb.ce

bb.n:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit117
  %i.av = load i32, ptr %21, align 4, !tbaa !64   ; 3 uses
  %narrow.i122 = call i32 @llvm.smax.i32(i32 %i.av, i32 0) ; 2 uses
  %spec.select.i123 = zext nneg i32 %narrow.i122 to i64 ; 2 uses
  %i.aw = icmp eq i32 %narrow.i, %narrow.i122
  br i1 %i.aw, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @__func__._ZN2cv3dnn12runDepthwiseERKNS_11_InputArrayERKNS_12_OutputArrayERKNS_3PtrINS0_8FastConvEEEPNS0_14dnn5_v2026060515ActivationLayerERKSt6vectorIfSaIfEEb, ptr noundef nonnull @.str.1, i32 noundef 40) #15
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

bb.s:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %24, align 8, !tbaa !15   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %bb.s
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !16
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124, %bb.r
  %.pn85 = phi { ptr, i32 } [ %i.ax, %bb.r ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124 ], [ %i.ay, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #14
  br label %bb.ce

bb.t:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.be = load ptr, ptr %2, align 8, !tbaa !69    ; 14 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 196
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !80 ; 3 uses
  store i32 %i.bg, ptr %i.b, align 4, !tbaa !18
  %or.cond = icmp ult i32 %i.bg, 2
  br i1 %or.cond, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %27)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @__func__._ZN2cv3dnn12runDepthwiseERKNS_11_InputArrayERKNS_12_OutputArrayERKNS_3PtrINS0_8FastConvEEEPNS0_14dnn5_v2026060515ActivationLayerERKSt6vectorIfSaIfEEb, ptr noundef nonnull @.str.1, i32 noundef 44) #15
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

bb.y:                                             ; preds = %bb.v
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load ptr, ptr %26, align 8, !tbaa !15   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %bb.y
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !16
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127, %bb.x
  %.pn87 = phi { ptr, i32 } [ %i.bh, %bb.x ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127 ], [ %i.bi, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #14
  br label %bb.cd

bb.z:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.bo = load ptr, ptr %4, align 8, !tbaa !19
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !19
  %i.br = icmp eq ptr %i.bo, %i.bq
  %i.bs = select i1 %i.br, ptr %3, ptr null
  store ptr %i.bs, ptr %i.c, align 8, !tbaa !21
  %narrow.i130 = call i32 @llvm.smax.i32(i32 %i.aj, i32 1)
  %i.bt = getelementptr inbounds nuw i8, ptr %20, i64 12 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %spec.select.i133 = zext nneg i32 %narrow.i130 to i64 ; 2 uses
  %i.bv = icmp sgt i32 %i.aj, 1
  br i1 %i.bv, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %.noexc134 unwind label %87

.noexc134:                                        ; preds = %bb.aa
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.7, i32 noundef 97) #15
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %.noexc134
  unreachable

bb.ac:                                            ; preds = %.noexc134
  %i.bw = landingpad { ptr, i32 }
          cleanup
  %i.bx = load ptr, ptr %16, align 8, !tbaa !15   ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ac
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !16
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  br label %.body

bb.ad:                                            ; preds = %bb.z
  %i.cc = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !18 ; 2 uses
  store i32 %i.cd, ptr %i.d, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.ce = icmp eq i32 %i.bg, 0                    ; 2 uses
  br i1 %i.ce, label %49, label %34

34:                                               ; preds = %bb.ad
  %35 = add nsw i64 %spec.select.i, -2            ; 2 uses
  %36 = icmp samesign ult i64 %35, %spec.select.i133
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %.noexc142 unwind label %89

.noexc142:                                        ; preds = %37
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.7, i32 noundef 97) #15
          to label %38 unwind label %39

38:                                               ; preds = %.noexc142
  unreachable

39:                                               ; preds = %.noexc142
  %40 = landingpad { ptr, i32 }
          cleanup
  %41 = load ptr, ptr %14, align 8, !tbaa !15     ; 2 uses
  %42 = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %43 = icmp eq ptr %41, %42
  br i1 %43, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139: ; preds = %39
  %44 = load i64, ptr %42, align 8, !tbaa !16
  %45 = add i64 %44, 1
  call void @_ZdlPvm(ptr noundef %41, i64 noundef %45) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i140: ; preds = %39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  br label %.body143

46:                                               ; preds = %34
  %47 = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %35
  %48 = load i32, ptr %47, align 4, !tbaa !18
  br label %49

49:                                               ; preds = %bb.ad, %46
  %50 = phi i32 [ %48, %46 ], [ 1, %bb.ad ]       ; 2 uses
  store i32 %50, ptr %i.e, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %51 = add nsw i64 %spec.select.i, -1            ; 2 uses
  %52 = icmp samesign ult i64 %51, %spec.select.i133
  br i1 %52, label %bb.ae, label %53

53:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc153 unwind label %91

.noexc153:                                        ; preds = %53
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.7, i32 noundef 97) #15
          to label %54 unwind label %55

54:                                               ; preds = %.noexc153
  unreachable

55:                                               ; preds = %.noexc153
  %56 = landingpad { ptr, i32 }
          cleanup
  %57 = load ptr, ptr %12, align 8, !tbaa !15     ; 2 uses
  %58 = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %59 = icmp eq ptr %57, %58
  br i1 %59, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i150: ; preds = %55
  %60 = load i64, ptr %58, align 8, !tbaa !16
  %61 = add i64 %60, 1
  call void @_ZdlPvm(ptr noundef %57, i64 noundef %61) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i151: ; preds = %55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %.body154

bb.ae:                                            ; preds = %49
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %51
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !18 ; 2 uses
  store i32 %i.cg, ptr %i.f, align 4, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  %i.cj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !82 ; 2 uses
  store i32 %i.ck, ptr %i.g, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  %i.cl = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !83 ; 2 uses
  store i32 %i.cm, ptr %i.h, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  br i1 %i.ce, label %._crit_edge208, label %62

._crit_edge208:                                   ; preds = %bb.ae
  %.pre = call i32 @llvm.smax.i32(i32 %i.av, i32 1)
  %.pre209 = zext nneg i32 %.pre to i64
  br label %74

62:                                               ; preds = %bb.ae
  %63 = add nsw i64 %spec.select.i123, -2         ; 2 uses
  %narrow.i159 = call i32 @llvm.smax.i32(i32 %i.av, i32 1)
  %spec.select.i160 = zext nneg i32 %narrow.i159 to i64 ; 2 uses
  %64 = icmp samesign ult i64 %63, %spec.select.i160
  br i1 %64, label %bb.af, label %65

65:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc164 unwind label %93

.noexc164:                                        ; preds = %65
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.7, i32 noundef 97) #15
          to label %66 unwind label %67

66:                                               ; preds = %.noexc164
  unreachable

67:                                               ; preds = %.noexc164
  %68 = landingpad { ptr, i32 }
          cleanup
  %69 = load ptr, ptr %10, align 8, !tbaa !15     ; 2 uses
  %70 = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %71 = icmp eq ptr %69, %70
  br i1 %71, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i161: ; preds = %67
  %72 = load i64, ptr %70, align 8, !tbaa !16
  %73 = add i64 %72, 1
  call void @_ZdlPvm(ptr noundef %69, i64 noundef %73) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i162: ; preds = %67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %.body165

bb.af:                                            ; preds = %62
  %i.cn = getelementptr inbounds nuw i8, ptr %21, i64 12
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %63
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !18
  br label %74

74:                                               ; preds = %._crit_edge208, %bb.af
  %spec.select.i171.pre-phi = phi i64 [ %.pre209, %._crit_edge208 ], [ %spec.select.i160, %bb.af ]
  %75 = phi i32 [ 1, %._crit_edge208 ], [ %i.cp, %bb.af ] ; 2 uses
  store i32 %75, ptr %i.i, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  %76 = add nsw i64 %spec.select.i123, -1         ; 2 uses
  %77 = icmp samesign ult i64 %76, %spec.select.i171.pre-phi
  br i1 %77, label %bb.ag, label %78

78:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc175 unwind label %bb.ah

.noexc175:                                        ; preds = %78
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.7, i32 noundef 97) #15
          to label %79 unwind label %80

79:                                               ; preds = %.noexc175
  unreachable

80:                                               ; preds = %.noexc175
  %81 = landingpad { ptr, i32 }
          cleanup
  %82 = load ptr, ptr %8, align 8, !tbaa !15      ; 2 uses
  %83 = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %84 = icmp eq ptr %82, %83
  br i1 %84, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i172: ; preds = %80
  %85 = load i64, ptr %83, align 8, !tbaa !16
  %86 = add i64 %85, 1
  call void @_ZdlPvm(ptr noundef %82, i64 noundef %86) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i173: ; preds = %80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %.body176

bb.ag:                                            ; preds = %74
  %i.cq = getelementptr inbounds nuw i8, ptr %21, i64 12
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %76
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !18 ; 2 uses
  store i32 %i.cs, ptr %i.j, align 4, !tbaa !18
  %i.ct = load i32, ptr %i.be, align 8, !tbaa !84 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  %i.cu = sext i32 %50 to i64
  %i.cv = sext i32 %i.cg to i64
  %i.cw = mul nsw i64 %i.cv, %i.cu
  store i64 %i.cw, ptr %i.k, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  %i.cx = sext i32 %75 to i64
  %i.cy = sext i32 %i.cs to i64
  %i.cz = mul nsw i64 %i.cy, %i.cx
  store i64 %i.cz, ptr %i.l, align 8, !tbaa !22
  %i.da = icmp sgt i32 %i.ct, 1
  %i.db = icmp eq i32 %i.ct, %i.ci
  %or.cond109 = select i1 %i.da, i1 %i.db, i1 false
  %i.dc = icmp eq i32 %i.ct, %i.cd
  %or.cond111 = select i1 %or.cond109, i1 %i.dc, i1 false
  br i1 %or.cond111, label %bb.an, label %bb.ai

87:                                               ; preds = %bb.aa
  %88 = landingpad { ptr, i32 }
          cleanup
  br label %.body

89:                                               ; preds = %37
  %90 = landingpad { ptr, i32 }
          cleanup
  br label %.body143

91:                                               ; preds = %53
  %92 = landingpad { ptr, i32 }
          cleanup
  br label %.body154

93:                                               ; preds = %65
  %94 = landingpad { ptr, i32 }
          cleanup
  br label %.body165

bb.ah:                                            ; preds = %78
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.body176

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %29)
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @__func__._ZN2cv3dnn12runDepthwiseERKNS_11_InputArrayERKNS_12_OutputArrayERKNS_3PtrINS0_8FastConvEEEPNS0_14dnn5_v2026060515ActivationLayerERKSt6vectorIfSaIfEEb, ptr noundef nonnull @.str.1, i32 noundef 61) #15
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  unreachable

bb.al:                                            ; preds = %bb.ai
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

bb.am:                                            ; preds = %bb.aj
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = load ptr, ptr %28, align 8, !tbaa !15   ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %bb.am
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !16
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179, %bb.al
  %.pn89 = phi { ptr, i32 } [ %i.de, %bb.al ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179 ], [ %i.df, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #14
  br label %95

bb.an:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  %i.dl = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !85
  store i32 %i.dm, ptr %i.m, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #14
  %i.dn = getelementptr inbounds nuw i8, ptr %i.be, i64 28
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !86
  store i32 %i.do, ptr %i.n, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #14
  %i.dp = getelementptr inbounds nuw i8, ptr %i.be, i64 36
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !87
  store i32 %i.dq, ptr %i.o, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #14
  %i.dr = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !88
  store i32 %i.ds, ptr %i.p, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #14
  %i.dt = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !89
  store i32 %i.du, ptr %i.q, align 4, !tbaa !18
  %i.dv = getelementptr inbounds nuw i8, ptr %i.be, i64 52
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #14
  %i.dx = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !91
  store i32 %i.dy, ptr %i.r, align 4, !tbaa !18
  %i.dz = getelementptr inbounds nuw i8, ptr %i.be, i64 60
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !92
  %i.eb = mul nsw i32 %i.cm, %i.ck                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #14
  %i.ec = add nsw i32 %i.eb, 31
  %i.ed = sdiv i32 %i.ec, 32
  %i.ee = shl nsw i32 %i.ed, 5
  store i32 %i.ee, ptr %i.s, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #14
  %i.ef = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !97
  store ptr %i.eg, ptr %i.t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #14
  %i.eh = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !97
  store ptr %i.ei, ptr %i.u, align 8, !tbaa !19
  %i.ej = mul nsw i32 %i.eb, 3
  %i.ek = sext i32 %i.ej to i64                   ; 2 uses
  %i.el = icmp slt i32 %i.eb, 0
  br i1 %i.el, label %bb.ao, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #15
          to label %.noexc182 unwind label %bb.aq

.noexc182:                                        ; preds = %bb.ao
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.an
  %.not.i.i.i.i = icmp eq i32 %i.eb, 0
  br i1 %.not.i.i.i.i, label %._crit_edge, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.em = shl nuw nsw i64 %i.ek, 2                ; 2 uses
  %i.en = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #17
          to label %.lr.ph unwind label %bb.aq    ; 6 uses

.lr.ph:                                           ; preds = %bb.ap
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.en, i8 0, i64 %i.em, i1 false), !tbaa !18
  %i.eo = zext nneg i32 %i.eb to i64              ; 4 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.eo ; 2 uses
  %i.eq = load i32, ptr %i.h, align 4, !tbaa !18  ; 3 uses
  %i.er = load i32, ptr %i.o, align 4, !tbaa !18  ; 2 uses
  %i.es = load i32, ptr %i.p, align 4, !tbaa !18  ; 2 uses
  %i.et = load i32, ptr %i.f, align 4, !tbaa !18  ; 2 uses
  %min.iters.check = icmp ult i32 %i.eb, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.eo, 2147483644              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.eq, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert292 = insertelement <4 x i32> poison, i32 %i.er, i64 0
  %broadcast.splat293 = shufflevector <4 x i32> %broadcast.splatinsert292, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert294 = insertelement <4 x i32> poison, i32 %i.es, i64 0
  %broadcast.splat295 = shufflevector <4 x i32> %broadcast.splatinsert294, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert296 = insertelement <4 x i32> poison, i32 %i.et, i64 0
  %broadcast.splat297 = shufflevector <4 x i32> %broadcast.splatinsert296, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.op = mul <4 x i32> %broadcast.splat293, %broadcast.splat297
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind.frozen = freeze <4 x i32> %vec.ind     ; 2 uses
  %broadcast.splat.frozen = freeze <4 x i32> %broadcast.splat ; 2 uses
  %i.eu = sdiv <4 x i32> %vec.ind.frozen, %broadcast.splat.frozen ; 3 uses
  %i.ev = mul <4 x i32> %i.eu, %broadcast.splat.frozen
  %.decomposed = sub <4 x i32> %vec.ind.frozen, %i.ev
  %i.ew = mul nsw <4 x i32> %i.eu, %broadcast.splat293
  %i.ex = mul nsw <4 x i32> %.decomposed, %broadcast.splat295 ; 2 uses
  %i.ey = shl nuw nsw i64 %index, 3
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.ey
  %interleaved.vec = shufflevector <4 x i32> %i.ew, <4 x i32> %i.ex, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i32> %interleaved.vec, ptr %i.ez, align 4, !tbaa !18
  %.reass = mul <4 x i32> %i.eu, %invariant.op
  %i.fa = add nsw <4 x i32> %.reass, %i.ex
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %index
  store <4 x i32> %i.fa, ptr %i.fb, align 4, !tbaa !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.eo
  br i1 %cmp.n, label %._crit_edge.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.loopexit:                             ; preds = %scalar.ph, %middle.block
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.ek
  %i.fe = ptrtoint ptr %i.fd to i64
  %.pre257 = load ptr, ptr %2, align 8, !tbaa !69
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ff = phi ptr [ %i.be, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %.pre257, %._crit_edge.loopexit ]
  %.sroa.0200.0251 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.en, %._crit_edge.loopexit ] ; 6 uses
  %.sroa.10204.0246 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.fe, %._crit_edge.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #14
  %i.fg = invoke noundef ptr @_ZN2cv3dnn8FastConv10getWeightsEv(ptr noundef nonnull align 8 dereferenceable(206) %i.ff)
          to label %bb.ar unwind label %bb.at

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit198

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.fi = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.fj = sdiv i32 %i.fi, %i.eq
  %i.fk = srem i32 %i.fi, %i.eq
  %i.fl = mul nsw i32 %i.fj, %i.er                ; 2 uses
  %i.fm = mul nsw i32 %i.fk, %i.es                ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.idx ; 2 uses
  store i32 %i.fl, ptr %i.fn, align 4, !tbaa !18
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  store i32 %i.fm, ptr %i.fo, align 4, !tbaa !18
  %i.fp = mul nsw i32 %i.fl, %i.et
  %i.fq = add nsw i32 %i.fp, %i.fm
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.eo
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !56

bb.ar:                                            ; preds = %._crit_edge
  store ptr %i.fg, ptr %i.v, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #14
  %i.fs = load ptr, ptr %2, align 8, !tbaa !69
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 120
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !98
  store ptr %i.fu, ptr %i.w, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #14
  %i.fv = load ptr, ptr %4, align 8, !tbaa !98
  store ptr %i.fv, ptr %i.x, align 8, !tbaa !19
  %i.fw = icmp samesign ugt i32 %i.eb, 1
  br i1 %i.fw, label %bb.az, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fx = load i32, ptr %i.r, align 4, !tbaa !18
  %i.fy = icmp eq i32 %i.fx, 0
  %i.fz = icmp eq i32 %i.ea, 0
  %or.cond3 = select i1 %i.fy, i1 %i.fz, i1 false
  %i.ga = load i32, ptr %i.q, align 4
  %i.gb = icmp eq i32 %i.ga, 0
  %or.cond5 = select i1 %or.cond3, i1 %i.gb, i1 false
  %i.gc = icmp eq i32 %i.dw, 0
  %or.cond7 = select i1 %or.cond5, i1 %i.gc, i1 false
  br i1 %or.cond7, label %bb.az, label %bb.au

bb.at:                                            ; preds = %._crit_edge
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %31)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @__func__._ZN2cv3dnn12runDepthwiseERKNS_11_InputArrayERKNS_12_OutputArrayERKNS_3PtrINS0_8FastConvEEEPNS0_14dnn5_v2026060515ActivationLayerERKSt6vectorIfSaIfEEb, ptr noundef nonnull @.str.1, i32 noundef 97) #15
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %bb.au
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

bb.ay:                                            ; preds = %bb.av
  %i.gf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gg = load ptr, ptr %30, align 8, !tbaa !15   ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184: ; preds = %bb.ay
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !16
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gk) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184, %bb.ax
  %.pn91 = phi { ptr, i32 } [ %i.ge, %bb.ax ], [ %i.gf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184 ], [ %i.gf, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #14
  br label %bb.ca

bb.az:                                            ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #14
  %i.gl = load i32, ptr %i.d, align 4, !tbaa !18
  %i.gm = mul nsw i32 %i.gl, %i.bu
  store i32 0, ptr %32, align 4, !tbaa !27
  %i.gn = getelementptr inbounds nuw i8, ptr %32, i64 4
  store i32 %i.gm, ptr %i.gn, align 4, !tbaa !28
  %i.go = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %33, i8 0, i64 32, i1 false)
  %i.gp = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #17
          to label %bb.bd unwind label %bb.ba     ; 26 uses

bb.ba:                                            ; preds = %bb.az
  %i.gq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gr = load ptr, ptr %i.go, align 8, !tbaa !30 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i, label %.body187, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gs = invoke noundef zeroext i1 %i.gr(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %33, i32 noundef 3)
          to label %.body187 unwind label %bb.bc  ; 0 uses

bb.bc:                                            ; preds = %bb.bb
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #18
  unreachable

bb.bd:                                            ; preds = %bb.az
  %i.gv = getelementptr inbounds nuw i8, ptr %33, i64 24
  store ptr %i.d, ptr %i.gp, align 16, !tbaa !32
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store ptr %i.t, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !35
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !37
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  store ptr %i.u, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !35
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  store ptr %i.l, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !37
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  store ptr %i.v, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !35
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 48
  store ptr %i.s, ptr %.sroa.10.0..sroa_idx, align 16, !tbaa !32
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 56
  store ptr %i.b, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !32
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 64
  store ptr %i.g, ptr %.sroa.12.0..sroa_idx, align 16, !tbaa !32
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 72
  store ptr %i.h, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !32
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 80
  store ptr %i.m, ptr %.sroa.14.0..sroa_idx, align 16, !tbaa !32
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 88
  store ptr %i.n, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !32
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 96
  store ptr %i.o, ptr %.sroa.16.0..sroa_idx, align 16, !tbaa !32
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 104
  store ptr %i.p, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !32
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 112
  store ptr %i.q, ptr %.sroa.18.0..sroa_idx, align 16, !tbaa !32
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 120
  store ptr %i.r, ptr %.sroa.19.0..sroa_idx, align 8, !tbaa !32
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 128
  store ptr %i.w, ptr %.sroa.20.0..sroa_idx, align 16, !tbaa !35
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 136
  store ptr %i.x, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !35
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 144
  store ptr %i.e, ptr %.sroa.22.0..sroa_idx, align 16, !tbaa !32
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 152
  store ptr %i.f, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !32
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 160
  store ptr %i.i, ptr %.sroa.24.0..sroa_idx, align 16, !tbaa !32
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 168
  store ptr %i.j, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !32
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 176
  store ptr %i.a, ptr %.sroa.26.0..sroa_idx, align 16, !tbaa !39
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 184
  store ptr %i.c, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !41
  store ptr %i.gp, ptr %33, align 8, !tbaa !42
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12runDepthwiseERKNS0_11_InputArrayERKNS0_12_OutputArrayERKNS0_3PtrINS5_8FastConvEEEPNS5_14dnn5_v2026060515ActivationLayerERKSt6vectorIfSaIfEEbE3$_0E9_M_invokeERKSt9_Any_dataS3_", ptr %i.gv, align 8, !tbaa !44
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12runDepthwiseERKNS0_11_InputArrayERKNS0_12_OutputArrayERKNS0_3PtrINS5_8FastConvEEEPNS5_14dnn5_v2026060515ActivationLayerERKSt6vectorIfSaIfEEbE3$_0E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation", ptr %i.go, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.gw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.gx = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #17
          to label %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit.i unwind label %bb.be ; 2 uses

bb.be:                                            ; preds = %bb.bd
  %i.gy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gz = load ptr, ptr %i.gw, align 8, !tbaa !30 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i, label %.body192, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ha = invoke noundef zeroext i1 %i.gz(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %.body192 unwind label %bb.bg  ; 0 uses

bb.bg:                                            ; preds = %bb.bf
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  %i.hc = extractvalue { ptr, i32 } %i.hb, 0
  call void @__clang_call_terminate(ptr %i.hc) #18
  unreachable

_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit.i:  ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %i.gx, ptr noundef nonnull readonly align 16 dereferenceable(192) %i.gp, i64 192, i1 false), !tbaa.struct !45
  store ptr %i.gx, ptr %7, align 8, !tbaa !42
  %i.hd = load <2 x ptr>, ptr %i.go, align 8, !tbaa !42
  %i.he = load ptr, ptr %i.go, align 8, !tbaa !30 ; 2 uses
  store <2 x ptr> %i.hd, ptr %i.gw, align 8, !tbaa !42
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %6, align 8, !tbaa !47
  %i.hf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hf, i8 0, i64 32, i1 false)
  %.not.i.i.not.i.i.i = icmp eq ptr %i.he, null
  br i1 %.not.i.i.not.i.i.i, label %_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit.i, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit.i
  %i.hh = invoke noundef zeroext i1 %i.he(ptr noundef nonnull align 8 dereferenceable(32) %i.hf, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 2)
          to label %bb.bi unwind label %bb.bj     ; 0 uses

bb.bi:                                            ; preds = %bb.bh
  %i.hi = load <2 x ptr>, ptr %i.gw, align 8, !tbaa !42
  store <2 x ptr> %i.hi, ptr %i.hg, align 8, !tbaa !42
  br label %_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit.i

bb.bj:                                            ; preds = %bb.bh
  %i.hj = landingpad { ptr, i32 }
          cleanup
  %i.hk = load ptr, ptr %i.hg, align 8, !tbaa !30 ; 2 uses
  %.not.i.i.i.i189 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i.i189, label %.body.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hl = invoke noundef zeroext i1 %i.hk(ptr noundef nonnull align 8 dereferenceable(32) %i.hf, ptr noundef nonnull align 8 dereferenceable(32) %i.hf, i32 noundef 3)
          to label %.body.i.i unwind label %bb.bl ; 0 uses

bb.bl:                                            ; preds = %bb.bk
  %i.hm = landingpad { ptr, i32 }
          catch ptr null
  %i.hn = extractvalue { ptr, i32 } %i.hm, 0
  call void @__clang_call_terminate(ptr %i.hn) #18
  unreachable

.body.i.i:                                        ; preds = %bb.bk, %bb.bj
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %6) #14
  br label %.body.i

_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit.i: ; preds = %bb.bi, %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit.i
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %32, ptr noundef nonnull align 8 dereferenceable(8) %6, double noundef -1.000000e+00)
          to label %bb.bm unwind label %bb.br

bb.bm:                                            ; preds = %_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %6, align 8, !tbaa !47
  %i.ho = load ptr, ptr %i.hg, align 8, !tbaa !30 ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.ho, null
  br i1 %.not.i.i5.i, label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hp = invoke noundef zeroext i1 %i.ho(ptr noundef nonnull align 8 dereferenceable(32) %i.hf, ptr noundef nonnull align 8 dereferenceable(32) %i.hf, i32 noundef 3)
          to label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit.i unwind label %bb.bo, !inline_history !48 ; 0 uses

bb.bo:                                            ; preds = %bb.bn
  %i.hq = landingpad { ptr, i32 }
          catch ptr null
  %i.hr = extractvalue { ptr, i32 } %i.hq, 0
  call void @__clang_call_terminate(ptr %i.hr) #18, !inline_history !48
  unreachable

_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit.i: ; preds = %bb.bn, %bb.bm
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %6) #14, !inline_history !48
  %i.hs = load ptr, ptr %i.gw, align 8, !tbaa !30 ; 2 uses
  %.not.i.i190 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i190, label %bb.bu, label %bb.bp

bb.bp:                                            ; preds = %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit.i
  %i.ht = invoke noundef zeroext i1 %i.hs(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %bb.bu unwind label %bb.bq     ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  %i.hu = landingpad { ptr, i32 }
          catch ptr null
  %i.hv = extractvalue { ptr, i32 } %i.hu, 0
  call void @__clang_call_terminate(ptr %i.hv) #18
  unreachable

bb.br:                                            ; preds = %_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit.i
  %i.hw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #14
  br label %.body.i

.body.i:                                          ; preds = %bb.br, %.body.i.i
  %.pn.i = phi { ptr, i32 } [ %i.hw, %bb.br ], [ %i.hj, %.body.i.i ]
  %i.hx = load ptr, ptr %i.gw, align 8, !tbaa !30 ; 2 uses
  %.not.i7.i = icmp eq ptr %i.hx, null
  br i1 %.not.i7.i, label %_ZNSt14_Function_baseD2Ev.exit8.i, label %bb.bs

bb.bs:                                            ; preds = %.body.i
  %i.hy = invoke noundef zeroext i1 %i.hx(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit8.i unwind label %bb.bt ; 0 uses

bb.bt:                                            ; preds = %bb.bs
  %i.hz = landingpad { ptr, i32 }
          catch ptr null
  %i.ia = extractvalue { ptr, i32 } %i.hz, 0
  call void @__clang_call_terminate(ptr %i.ia) #18
  unreachable

_ZNSt14_Function_baseD2Ev.exit8.i:                ; preds = %bb.bs, %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %.body192

bb.bu:                                            ; preds = %bb.bp, %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ib = load ptr, ptr %i.go, align 8, !tbaa !30 ; 2 uses
  %.not.i = icmp eq ptr %i.ib, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ic = invoke noundef zeroext i1 %i.ib(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %33, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.bw ; 0 uses

bb.bw:                                            ; preds = %bb.bv
  %i.id = landingpad { ptr, i32 }
          catch ptr null
  %i.ie = extractvalue { ptr, i32 } %i.id, 0
  call void @__clang_call_terminate(ptr %i.ie) #18
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.bu, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #14
  %.not.i.i.i194 = icmp eq ptr %.sroa.0200.0251, null
  br i1 %.not.i.i.i194, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.if = ptrtoint ptr %.sroa.0200.0251 to i64
  %i.ig = sub i64 %.sroa.10204.0246, %i.if
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0200.0251, i64 noundef %i.ig) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  ret void

.body192:                                         ; preds = %bb.be, %bb.bf, %_ZNSt14_Function_baseD2Ev.exit8.i
  %eh.lpad-body193 = phi { ptr, i32 } [ %i.gy, %bb.be ], [ %.pn.i, %_ZNSt14_Function_baseD2Ev.exit8.i ], [ %i.gy, %bb.bf ] ; 2 uses
  %i.ih = load ptr, ptr %i.go, align 8, !tbaa !30 ; 2 uses
  %.not.i195 = icmp eq ptr %i.ih, null
  br i1 %.not.i195, label %.body187, label %bb.by

bb.by:                                            ; preds = %.body192
  %i.ii = invoke noundef zeroext i1 %i.ih(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %33, i32 noundef 3)
          to label %.body187 unwind label %bb.bz  ; 0 uses

bb.bz:                                            ; preds = %bb.by
  %i.ij = landingpad { ptr, i32 }
          catch ptr null
  %i.ik = extractvalue { ptr, i32 } %i.ij, 0
  call void @__clang_call_terminate(ptr %i.ik) #18
  unreachable

.body187:                                         ; preds = %bb.by, %.body192, %bb.bb, %bb.ba
  %.pn93 = phi { ptr, i32 } [ %i.gq, %bb.ba ], [ %eh.lpad-body193, %bb.by ], [ %i.gq, %bb.bb ], [ %eh.lpad-body193, %.body192 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #14
  br label %bb.ca

bb.ca:                                            ; preds = %.body187, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186
  %.pn93.pn = phi { ptr, i32 } [ %.pn93, %.body187 ], [ %.pn91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #14
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.at
  %.pn93.pn.pn = phi { ptr, i32 } [ %.pn93.pn, %bb.ca ], [ %i.gd, %bb.at ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #14
  %.not.i.i.i197 = icmp eq ptr %.sroa.0200.0251, null
  br i1 %.not.i.i.i197, label %_ZNSt6vectorIiSaIiEED2Ev.exit198, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.il = ptrtoint ptr %.sroa.0200.0251 to i64
  %i.im = sub i64 %.sroa.10204.0246, %i.il
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0200.0251, i64 noundef %i.im) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit198

_ZNSt6vectorIiSaIiEED2Ev.exit198:                 ; preds = %bb.cc, %bb.cb, %bb.aq
  %.pn93.pn.pn.pn = phi { ptr, i32 } [ %i.fh, %bb.aq ], [ %.pn93.pn.pn, %bb.cb ], [ %.pn93.pn.pn, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  br label %95

95:                                               ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit198, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181
  %.pn93.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn93.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit198 ], [ %.pn89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  br label %.body176

.body176:                                         ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i173, %95
  %.pn93.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn93.pn.pn.pn.pn, %95 ], [ %i.dd, %bb.ah ], [ %81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i173 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  br label %.body165

.body165:                                         ; preds = %93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i162, %.body176
  %.pn93.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn93.pn.pn.pn.pn.pn, %.body176 ], [ %94, %93 ], [ %68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i162 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  br label %.body154

.body154:                                         ; preds = %91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i151, %.body165
  %.pn93.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn93.pn.pn.pn.pn.pn.pn, %.body165 ], [ %92, %91 ], [ %56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i151 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %.body143

.body143:                                         ; preds = %89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i140, %.body154
  %.pn93.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn93.pn.pn.pn.pn.pn.pn.pn, %.body154 ], [ %90, %89 ], [ %40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i140 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %.body

.body:                                            ; preds = %87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.body143
  %.pn93.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn93.pn.pn.pn.pn.pn.pn.pn.pn, %.body143 ], [ %88, %87 ], [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %bb.cd

bb.cd:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
  %.pn93.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn93.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %.pn87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %.pn93.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn93.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cd ], [ %.pn85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.an, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.g
  %.pn93.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn93.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ce ], [ %i.am, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #14
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.f
  %.pn93.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn93.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cf ], [ %i.al, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  resume { ptr, i32 } %.pn93.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !99
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.8) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.d, ptr %i.a, align 8, !tbaa !22
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !15
  %i.g = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.g, ptr %i.b, align 8, !tbaa !16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !16
  store i8 %i.i, ptr %i.h, align 1, !tbaa !16
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !100
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef ptr @_ZN2cv3dnn8FastConv10getWeightsEv(ptr noundef nonnull align 8 dereferenceable(206)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv3dnn20depthWiseBlockConv2DEPKfiiiiiiiiS2_S2_S2_iiPfiiib(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(address_is_null) %10, ptr nofree noundef readonly captures(none) %11, i32 noundef %12, i32 noundef %13, ptr nofree noundef captures(none) %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, i1 noundef zeroext %18) local_unnamed_addr #5 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !50   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !50 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !50 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load float, ptr %i.f, align 4, !tbaa !50 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load float, ptr %i.h, align 4, !tbaa !50 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.k = load float, ptr %i.j, align 4, !tbaa !50 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load float, ptr %i.l, align 4, !tbaa !50 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = load float, ptr %i.n, align 4, !tbaa !50 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load float, ptr %i.p, align 4, !tbaa !50 ; 2 uses
  %.neg230 = sub i32 1, %2
  %.neg231 = mul i32 %.neg230, %6
  %i.r = add i32 %8, %.neg231
  %i.s = add i32 %i.r, %13
  %i.t = sdiv i32 %i.s, %4
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.t, i32 %17) ; 3 uses
  %.not = icmp eq ptr %10, null                   ; 4 uses
  %.pre = sext i32 %15 to i64                     ; 2 uses
  br i1 %.not, label %._crit_edge243, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds [4 x i8], ptr %10, i64 %.pre
  %i.v = load float, ptr %i.u, align 4, !tbaa !50
  br label %._crit_edge243

._crit_edge243:                                   ; preds = %bb.a, %bb.b
  %i.w = phi float [ %i.v, %bb.b ], [ 1.000000e+00, %bb.a ] ; 3 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %9, i64 %.pre
  %i.y = load float, ptr %i.x, align 4, !tbaa !50 ; 3 uses
  %i.z = icmp sgt i32 %16, 0
  br i1 %i.z, label %.lr.ph228, label %._crit_edge229

.lr.ph228:                                        ; preds = %._crit_edge243
  %factor.op.mul = mul i32 %5, %13                ; 2 uses
  %i.aa = sext i32 %factor.op.mul to i64
  %.reass = shl i32 %factor.op.mul, 1
  %i.ab = sext i32 %.reass to i64
  %i.ac = add nsw i32 %1, -1
  %i.ad = mul nsw i32 %5, %i.ac
  %i.ae = icmp sgt i32 %8, 0
  %i.af = sext i32 %6 to i64                      ; 5 uses
  %i.ag = shl nsw i32 %6, 1
  %i.ah = sext i32 %4 to i64                      ; 2 uses
  %i.ai = sext i32 %8 to i64                      ; 2 uses
  %i.aj = sext i32 %i.ag to i64                   ; 2 uses
  %i.ak = sext i32 %13 to i64                     ; 4 uses
  %i.al = sext i32 %3 to i64
  %i.am = sext i32 %7 to i64
  %i.an = sext i32 %i.ad to i64
  %i.ao = sext i32 %12 to i64
  %i.ap = sext i32 %17 to i64
  %wide.trip.count241 = zext nneg i32 %16 to i64
  %invariant.op = sub nsw i64 %i.ao, %i.an
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64
  %wide.trip.count236 = zext nneg i32 %17 to i64
  br label %bb.c

._crit_edge229:                                   ; preds = %._crit_edge, %._crit_edge243
  ret void

bb.c:                                             ; preds = %.lr.ph228, %._crit_edge
  %indvars.iv238 = phi i64 [ 0, %.lr.ph228 ], [ %indvars.iv.next239, %._crit_edge ] ; 3 uses
  %i.aq = mul nsw i64 %indvars.iv238, %i.al
  %i.ar = sub nsw i64 %i.aq, %i.am                ; 3 uses
  %i.as = mul nsw i64 %i.ar, %i.ak
  %i.at = getelementptr inbounds [4 x i8], ptr %11, i64 %i.as ; 4 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.aa ; 10 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ab ; 2 uses
  %i.aw = icmp slt i64 %i.ar, 0
  br i1 %i.aw, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not214 = icmp slt i64 %i.ar, %invariant.op
  br i1 %.not214, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.0204 = phi ptr [ %i.at, %bb.d ], [ %i.at, %bb.e ], [ %i.au, %bb.c ] ; 8 uses
  %.0203 = phi ptr [ %i.av, %bb.d ], [ %i.au, %bb.e ], [ %i.av, %bb.c ] ; 8 uses
  %.0201 = phi float [ %i.a, %bb.d ], [ %i.a, %bb.e ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %.0200 = phi float [ %i.c, %bb.d ], [ %i.c, %bb.e ], [ 0.000000e+00, %bb.c ] ; 3 uses
  %.0199 = phi float [ %i.e, %bb.d ], [ %i.e, %bb.e ], [ 0.000000e+00, %bb.c ] ; 3 uses
  %.0198 = phi float [ %i.m, %bb.d ], [ 0.000000e+00, %bb.e ], [ %i.m, %bb.c ] ; 2 uses
  %.0197 = phi float [ %i.o, %bb.d ], [ 0.000000e+00, %bb.e ], [ %i.o, %bb.c ] ; 3 uses
  %.0196 = phi float [ %i.q, %bb.d ], [ 0.000000e+00, %bb.e ], [ %i.q, %bb.c ] ; 3 uses
  %i.ax = mul nsw i64 %indvars.iv238, %i.ap
  %i.ay = getelementptr inbounds [4 x i8], ptr %14, i64 %i.ax ; 6 uses
  br i1 %i.ae, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.az = load float, ptr %.0204, align 4, !tbaa !50
  %i.ba = getelementptr inbounds [4 x i8], ptr %.0204, i64 %i.af
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !50
  %i.bc = fmul float %.0199, %i.bb
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.az, float %.0200, float %i.bc)
  %i.be = load float, ptr %i.au, align 4, !tbaa !50
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.be, float %i.i, float %i.bd)
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.af
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !50
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.k, float %i.bf)
  %i.bj = load float, ptr %.0203, align 4, !tbaa !50
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bj, float %.0197, float %i.bi)
  %i.bl = getelementptr inbounds [4 x i8], ptr %.0203, i64 %i.af
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !50
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bm, float %.0196, float %i.bk)
  %i.bo = fadd float %i.y, %i.bn                  ; 2 uses
  br i1 %18, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bp = load float, ptr %i.ay, align 4, !tbaa !50
  %i.bq = fadd float %i.bo, %i.bp
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0202 = phi float [ %i.bq, %bb.h ], [ %i.bo, %bb.g ] ; 4 uses
end_hunk_0
