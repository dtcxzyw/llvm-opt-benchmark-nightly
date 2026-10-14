Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/mappergradeuclid?download=true
inline.NumInlined: 286
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.cv::Ptr" = type { %"class.std::shared_ptr" }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.cv::Mat" = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.cv::MatShape", %"struct.cv::MatStep" }
%"struct.cv::MatShape" = type { i32, i32, i32, [10 x i32] }
%"struct.cv::MatStep" = type { [10 x i64] }
%"class.cv::_OutputArray" = type { %"class.cv::_InputArray" }
%"class.cv::_InputArray" = type { i32, ptr, %"class.cv::Size_" }
%"class.cv::Size_" = type { i32, i32 }
%"class.cv::MatExpr" = type { ptr, i32, %"class.cv::Mat", %"class.cv::Mat", %"class.cv::Mat", double, double, %"class.cv::Scalar_" }
%"class.cv::Scalar_" = type { %"class.cv::Vec.1" }
%"class.cv::Vec.1" = type { %"class.cv::Matx.2" }
%"class.cv::Matx.2" = type { [4 x double] }
%"class.cv::Matx.3" = type { [4 x double] }
%"class.cv::Vec.4" = type { %"class.cv::Matx.5" }
%"class.cv::Matx.5" = type { [2 x double] }
%"struct.cv::Ptr.6" = type { %"class.std::shared_ptr.7" }
%"class.std::shared_ptr.7" = type { %"class.std::__shared_ptr.8" }
%"class.std::__shared_ptr.8" = type { ptr, %"class.std::__shared_count" }

$_ZN2cv7MatExprD2Ev = comdat any

$_ZNSt12__shared_ptrIN2cv3reg3MapELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIN2cv3reg9MapAffineELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt15_Sp_counted_ptrIPN2cv3reg9MapAffineELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt15_Sp_counted_ptrIPN2cv3reg9MapAffineELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt15_Sp_counted_ptrIPN2cv3reg9MapAffineELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt15_Sp_counted_ptrIPN2cv3reg9MapAffineELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZTIN2cv3reg6MapperE = comdat any

$_ZTSN2cv3reg6MapperE = comdat any

$_ZTVSt15_Sp_counted_ptrIPN2cv3reg9MapAffineELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt15_Sp_counted_ptrIPN2cv3reg9MapAffineELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt15_Sp_counted_ptrIPN2cv3reg9MapAffineELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

@_ZTVN2cv3reg16MapperGradEuclidE = constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN2cv3reg16MapperGradEuclidE, ptr @_ZN2cv3reg16MapperGradEuclidD1Ev, ptr @_ZN2cv3reg16MapperGradEuclidD0Ev, ptr @_ZNK2cv3reg16MapperGradEuclid9calculateERKNS_11_InputArrayES4_NS_3PtrINS0_3MapEEE, ptr @_ZNK2cv3reg16MapperGradEuclid6getMapEv] }, align 8
@_ZTIN2cv3reg3MapE = external constant ptr
@_ZTIN2cv3reg9MapAffineE = external constant ptr
@_ZTIN2cv3reg16MapperGradEuclidE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv3reg16MapperGradEuclidE, ptr @_ZTIN2cv3reg6MapperE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN2cv3reg16MapperGradEuclidE = constant [28 x i8] c"N2cv3reg16MapperGradEuclidE\00", align 1
@_ZTIN2cv3reg6MapperE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN2cv3reg6MapperE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN2cv3reg6MapperE = linkonce_odr constant [17 x i8] c"N2cv3reg6MapperE\00", comdat, align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVSt15_Sp_counted_ptrIPN2cv3reg9MapAffineELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt15_Sp_counted_ptrIPN2cv3reg9MapAffineELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN2cv3reg9MapAffineELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN2cv3reg9MapAffineELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN2cv3reg9MapAffineELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN2cv3reg9MapAffineELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt15_Sp_counted_ptrIPN2cv3reg9MapAffineELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt15_Sp_counted_ptrIPN2cv3reg9MapAffineELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt15_Sp_counted_ptrIPN2cv3reg9MapAffineELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [71 x i8] c"St15_Sp_counted_ptrIPN2cv3reg9MapAffineELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1

@_ZN2cv3reg16MapperGradEuclidC1Ev = unnamed_addr alias void (ptr), ptr @_ZN2cv3reg16MapperGradEuclidC2Ev
@_ZN2cv3reg16MapperGradEuclidD1Ev = unnamed_addr alias void (ptr), ptr @_ZN2cv3reg16MapperGradEuclidD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN2cv3reg16MapperGradEuclidC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2cv3reg16MapperGradEuclidE, i64 16), ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN2cv3reg16MapperGradEuclidD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #1 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN2cv3reg16MapperGradEuclidD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN2cv3reg16MapperGradEuclidD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #17
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv3reg16MapperGradEuclid9calculateERKNS_11_InputArrayES4_NS_3PtrINS0_3MapEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.cv::Ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nofree noundef readonly align 8 captures(none) %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 13 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 13 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %10 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 14 uses
  %15 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %16 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %17 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %18 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %19 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %20 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %21 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %22 = alloca %"class.cv::_InputArray", align 8  ; 5 uses
  %23 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %24 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %25 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %26 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %27 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %28 = alloca %"class.cv::_InputArray", align 8  ; 5 uses
  %29 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %30 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %31 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %32 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %33 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %34 = alloca %"class.cv::_InputArray", align 8  ; 5 uses
  %35 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %36 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %37 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %38 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %39 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %40 = alloca %"class.cv::_InputArray", align 8  ; 5 uses
  %41 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %42 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %43 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %44 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %45 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %46 = alloca %"class.cv::_InputArray", align 8  ; 5 uses
  %47 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %48 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %49 = alloca %"class.cv::Scalar_", align 16     ; 5 uses
  %50 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %51 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %52 = alloca %"class.cv::_InputArray", align 8  ; 5 uses
  %53 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %54 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %55 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %56 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %57 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %58 = alloca %"class.cv::_InputArray", align 8  ; 5 uses
  %59 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %60 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %61 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %62 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %63 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %64 = alloca %"class.cv::_InputArray", align 8  ; 5 uses
  %65 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %66 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %67 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %68 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %69 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %70 = alloca %"class.cv::_InputArray", align 8  ; 5 uses
  %71 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %72 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %73 = alloca %"class.cv::Matx.3", align 8       ; 9 uses
  %74 = alloca %"class.cv::Vec.4", align 16       ; 6 uses
  %75 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %76 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %77 = alloca %"struct.cv::Ptr.6", align 8       ; 6 uses
  %78 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %79 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %80 = alloca %"struct.cv::Ptr.6", align 16      ; 7 uses
  %81 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %82 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %83 = alloca %"struct.cv::Ptr", align 8         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2), !noalias !38
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41, !noalias !38
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %9) #16
  %i.e = load ptr, ptr %4, align 8, !tbaa !17     ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.h, align 8
  store i32 33619968, ptr %10, align 8, !tbaa !42
  store ptr %9, ptr %i.g, align 8, !tbaa !41
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.fq

bb.g:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.m = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.g
  %i.n = icmp eq i32 %i.m, 65536
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !41, !noalias !43
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %i.p)
          to label %_ZNK2cv11_InputArray6getMatEi.exit156 unwind label %bb.k

bb.i:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit156 unwind label %bb.k

_ZNK2cv11_InputArray6getMatEi.exit156:            ; preds = %bb.h, %bb.i
  %i.q = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %11)
          to label %bb.j unwind label %bb.l       ; 0 uses

bb.j:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit156
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %bb.n

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit156
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn82 = phi { ptr, i32 } [ %i.s, %bb.l ], [ %i.r, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %bb.fq

bb.n:                                             ; preds = %bb.j, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %12) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %13) #16
  invoke void @_ZNK2cv3reg6Mapper4gridERKNS_3MatERS2_S5_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.o unwind label %bb.bo

bb.o:                                             ; preds = %bb.n
  invoke void @_ZNK2cv3reg6Mapper8gradientERKNS_3MatES4_RS2_S5_S5_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %8)
          to label %bb.p unwind label %bb.bo

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 0, ptr %i.t, align 8, !tbaa !44
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 20
  store i32 0, ptr %i.u, align 4, !tbaa !45
  store i32 16842752, ptr %16, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %7, ptr %i.v, align 8, !tbaa !41
  invoke void @_ZNK2cv3Mat3mulERKNS_11_InputArrayEd(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %15, ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(24) %16, double noundef 1.000000e+00)
          to label %bb.q unwind label %bb.bp

bb.q:                                             ; preds = %bb.p
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %14) #16
  %i.w = load ptr, ptr %15, align 8, !tbaa !59, !noalias !60 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(688) %15, ptr noundef nonnull align 8 dereferenceable(208) %14, i32 noundef -1)
          to label %bb.r unwind label %.body

.body:                                            ; preds = %bb.q
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #16
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %15) #16
  br label %bb.bq

bb.r:                                             ; preds = %bb.q
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ab) #16
  %i.ac = getelementptr inbounds nuw i8, ptr %15, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ac) #16
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ad) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  %i.ae = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 0, ptr %i.ae, align 8, !tbaa !44
  %i.af = getelementptr inbounds nuw i8, ptr %18, i64 20
  store i32 0, ptr %i.af, align 4, !tbaa !45
  store i32 16842752, ptr %18, align 8, !tbaa !42
  %i.ag = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %6, ptr %i.ag, align 8, !tbaa !41
  invoke void @_ZNK2cv3Mat3mulERKNS_11_InputArrayEd(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %17, ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(24) %18, double noundef 1.000000e+00)
          to label %bb.s unwind label %bb.br

bb.s:                                             ; preds = %bb.r
  %i.ah = load ptr, ptr %17, align 8, !tbaa !59   ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(688) %17, ptr noundef nonnull align 8 dereferenceable(208) %14)
          to label %bb.t unwind label %bb.bs, !inline_history !34

end_hunk_0
begin_hunk_1_@_ZNK2cv3reg16MapperGradEuclid9calculateERKNS_11_InputArrayES4_NS_3PtrINS0_3MapEEE:bb.a
          to label %bb.aa unwind label %bb.cc

bb.aa:                                            ; preds = %bb.z
  %i.ba = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i32 -1056833530, ptr %26, align 8, !tbaa !42
  %i.bb = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %27, ptr %i.bb, align 8, !tbaa !41
  store i64 17179869185, ptr %i.ba, align 8, !tbaa !18
  invoke void @_ZN2cv3sumERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Scalar_") align 8 %25, ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %bb.ab unwind label %bb.cd

bb.ab:                                            ; preds = %bb.aa
  %i.bc = load double, ptr %25, align 8, !tbaa !61 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %29, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bd) #16
  %i.be = getelementptr inbounds nuw i8, ptr %29, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.be) #16
  %i.bf = getelementptr inbounds nuw i8, ptr %29, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bf) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #16
  %i.bg = getelementptr inbounds nuw i8, ptr %36, i64 16
  store i32 0, ptr %i.bg, align 8, !tbaa !44
  %i.bh = getelementptr inbounds nuw i8, ptr %36, i64 20
  store i32 0, ptr %i.bh, align 4, !tbaa !45
  store i32 16842752, ptr %36, align 8, !tbaa !42
  %i.bi = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %14, ptr %i.bi, align 8, !tbaa !41
  invoke void @_ZNK2cv3Mat3mulERKNS_11_InputArrayEd(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %35, ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(24) %36, double noundef 1.000000e+00)
          to label %bb.ac unwind label %bb.cg

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN2cv11_InputArrayC1ERKNS_7MatExprE(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(688) %35)
          to label %bb.ad unwind label %bb.ch

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN2cv3sumERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Scalar_") align 8 %33, ptr noundef nonnull align 8 dereferenceable(24) %34)
          to label %bb.ae unwind label %bb.ci

bb.ae:                                            ; preds = %bb.ad
  %i.bj = getelementptr inbounds nuw i8, ptr %32, i64 16
  store i32 -1056833530, ptr %32, align 8, !tbaa !42
  %i.bk = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %33, ptr %i.bk, align 8, !tbaa !41
  store i64 17179869185, ptr %i.bj, align 8, !tbaa !18
  invoke void @_ZN2cv3sumERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Scalar_") align 8 %31, ptr noundef nonnull align 8 dereferenceable(24) %32)
          to label %bb.af unwind label %bb.cj

bb.af:                                            ; preds = %bb.ae
  %i.bl = load double, ptr %31, align 8, !tbaa !61 ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %35, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bm) #16
  %i.bn = getelementptr inbounds nuw i8, ptr %35, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bn) #16
  %i.bo = getelementptr inbounds nuw i8, ptr %35, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bo) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #16
  %i.bp = getelementptr inbounds nuw i8, ptr %42, i64 16
  store i32 0, ptr %i.bp, align 8, !tbaa !44
  %i.bq = getelementptr inbounds nuw i8, ptr %42, i64 20
  store i32 0, ptr %i.bq, align 4, !tbaa !45
  store i32 16842752, ptr %42, align 8, !tbaa !42
  %i.br = getelementptr inbounds nuw i8, ptr %42, i64 8
  store ptr %7, ptr %i.br, align 8, !tbaa !41
  invoke void @_ZNK2cv3Mat3mulERKNS_11_InputArrayEd(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %41, ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(24) %42, double noundef 1.000000e+00)
          to label %bb.ag unwind label %bb.cm

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN2cv11_InputArrayC1ERKNS_7MatExprE(ptr noundef nonnull align 8 dereferenceable(24) %40, ptr noundef nonnull align 8 dereferenceable(688) %41)
          to label %bb.ah unwind label %bb.cn

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN2cv3sumERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Scalar_") align 8 %39, ptr noundef nonnull align 8 dereferenceable(24) %40)
          to label %bb.ai unwind label %bb.co

bb.ai:                                            ; preds = %bb.ah
  %i.bs = getelementptr inbounds nuw i8, ptr %38, i64 16
  store i32 -1056833530, ptr %38, align 8, !tbaa !42
  %i.bt = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr %39, ptr %i.bt, align 8, !tbaa !41
  store i64 17179869185, ptr %i.bs, align 8, !tbaa !18
  invoke void @_ZN2cv3sumERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Scalar_") align 8 %37, ptr noundef nonnull align 8 dereferenceable(24) %38)
          to label %bb.aj unwind label %bb.cp

bb.aj:                                            ; preds = %bb.ai
  %i.bu = load double, ptr %37, align 8, !tbaa !61 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %41, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bv) #16
  %i.bw = getelementptr inbounds nuw i8, ptr %41, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bw) #16
  %i.bx = getelementptr inbounds nuw i8, ptr %41, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bx) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #16
  %i.by = getelementptr inbounds nuw i8, ptr %48, i64 16
  store i32 0, ptr %i.by, align 8, !tbaa !44
  %i.bz = getelementptr inbounds nuw i8, ptr %48, i64 20
  store i32 0, ptr %i.bz, align 4, !tbaa !45
  store i32 16842752, ptr %48, align 8, !tbaa !42
  %i.ca = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %14, ptr %i.ca, align 8, !tbaa !41
  invoke void @_ZNK2cv3Mat3mulERKNS_11_InputArrayEd(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %47, ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(24) %48, double noundef 1.000000e+00)
          to label %bb.ak unwind label %bb.cs

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN2cv11_InputArrayC1ERKNS_7MatExprE(ptr noundef nonnull align 8 dereferenceable(24) %46, ptr noundef nonnull align 8 dereferenceable(688) %47)
          to label %bb.al unwind label %bb.ct

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN2cv3sumERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Scalar_") align 8 %45, ptr noundef nonnull align 8 dereferenceable(24) %46)
          to label %bb.am unwind label %bb.cu

bb.am:                                            ; preds = %bb.al
  %i.cb = getelementptr inbounds nuw i8, ptr %44, i64 16
  store i32 -1056833530, ptr %44, align 8, !tbaa !42
  %i.cc = getelementptr inbounds nuw i8, ptr %44, i64 8
  store ptr %45, ptr %i.cc, align 8, !tbaa !41
  store i64 17179869185, ptr %i.cb, align 8, !tbaa !18
  invoke void @_ZN2cv3sumERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Scalar_") align 8 %43, ptr noundef nonnull align 8 dereferenceable(24) %44)
          to label %bb.an unwind label %bb.cv

bb.an:                                            ; preds = %bb.am
  %i.cd = load double, ptr %43, align 8, !tbaa !61 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %47, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ce) #16
  %i.cf = getelementptr inbounds nuw i8, ptr %47, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cf) #16
  %i.cg = getelementptr inbounds nuw i8, ptr %47, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cg) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #16
  %i.ch = getelementptr inbounds nuw i8, ptr %54, i64 16
  store i32 0, ptr %i.ch, align 8, !tbaa !44
  %i.ci = getelementptr inbounds nuw i8, ptr %54, i64 20
  store i32 0, ptr %i.ci, align 4, !tbaa !45
  store i32 16842752, ptr %54, align 8, !tbaa !42
  %i.cj = getelementptr inbounds nuw i8, ptr %54, i64 8
  store ptr %14, ptr %i.cj, align 8, !tbaa !41
  invoke void @_ZNK2cv3Mat3mulERKNS_11_InputArrayEd(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %53, ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(24) %54, double noundef 1.000000e+00)
          to label %bb.ao unwind label %bb.cy

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN2cv11_InputArrayC1ERKNS_7MatExprE(ptr noundef nonnull align 8 dereferenceable(24) %52, ptr noundef nonnull align 8 dereferenceable(688) %53)
          to label %bb.ap unwind label %bb.cz

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN2cv3sumERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Scalar_") align 8 %51, ptr noundef nonnull align 8 dereferenceable(24) %52)
          to label %bb.aq unwind label %bb.da

bb.aq:                                            ; preds = %bb.ap
  %i.ck = getelementptr inbounds nuw i8, ptr %50, i64 16
  store i32 -1056833530, ptr %50, align 8, !tbaa !42
  %i.cl = getelementptr inbounds nuw i8, ptr %50, i64 8
  store ptr %51, ptr %i.cl, align 8, !tbaa !41
  store i64 17179869185, ptr %i.ck, align 8, !tbaa !18
  invoke void @_ZN2cv3sumERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Scalar_") align 8 %49, ptr noundef nonnull align 8 dereferenceable(24) %50)
          to label %bb.ar unwind label %bb.db

bb.ar:                                            ; preds = %bb.aq
  %84 = load <2 x double>, ptr %49, align 16      ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %53, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cm) #16
  %i.cn = getelementptr inbounds nuw i8, ptr %53, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cn) #16
  %i.co = getelementptr inbounds nuw i8, ptr %53, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.co) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #16
  %i.cp = getelementptr inbounds nuw i8, ptr %60, i64 16
  store i32 0, ptr %i.cp, align 8, !tbaa !44
  %i.cq = getelementptr inbounds nuw i8, ptr %60, i64 20
  store i32 0, ptr %i.cq, align 4, !tbaa !45
  store i32 16842752, ptr %60, align 8, !tbaa !42
  %i.cr = getelementptr inbounds nuw i8, ptr %60, i64 8
  store ptr %6, ptr %i.cr, align 8, !tbaa !41
  invoke void @_ZNK2cv3Mat3mulERKNS_11_InputArrayEd(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %59, ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(24) %60, double noundef 1.000000e+00)
          to label %bb.as unwind label %bb.de

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN2cv11_InputArrayC1ERKNS_7MatExprE(ptr noundef nonnull align 8 dereferenceable(24) %58, ptr noundef nonnull align 8 dereferenceable(688) %59)
          to label %bb.at unwind label %bb.df

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN2cv3sumERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Scalar_") align 8 %57, ptr noundef nonnull align 8 dereferenceable(24) %58)
          to label %bb.au unwind label %bb.dg

bb.au:                                            ; preds = %bb.at
  %i.cs = getelementptr inbounds nuw i8, ptr %56, i64 16
  store i32 -1056833530, ptr %56, align 8, !tbaa !42
  %i.ct = getelementptr inbounds nuw i8, ptr %56, i64 8
  store ptr %57, ptr %i.ct, align 8, !tbaa !41
  store i64 17179869185, ptr %i.cs, align 8, !tbaa !18
  invoke void @_ZN2cv3sumERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Scalar_") align 8 %55, ptr noundef nonnull align 8 dereferenceable(24) %56)
          to label %bb.av unwind label %bb.dh

bb.av:                                            ; preds = %bb.au
  %i.cu = load double, ptr %55, align 8, !tbaa !61
  %i.cv = fneg double %i.cu                       ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %59, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cw) #16
  %i.cx = getelementptr inbounds nuw i8, ptr %59, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cx) #16
  %i.cy = getelementptr inbounds nuw i8, ptr %59, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cy) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #16
  %i.cz = getelementptr inbounds nuw i8, ptr %66, i64 16
  store i32 0, ptr %i.cz, align 8, !tbaa !44
  %i.da = getelementptr inbounds nuw i8, ptr %66, i64 20
  store i32 0, ptr %i.da, align 4, !tbaa !45
  store i32 16842752, ptr %66, align 8, !tbaa !42
  %i.db = getelementptr inbounds nuw i8, ptr %66, i64 8
  store ptr %7, ptr %i.db, align 8, !tbaa !41
  invoke void @_ZNK2cv3Mat3mulERKNS_11_InputArrayEd(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %65, ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(24) %66, double noundef 1.000000e+00)
          to label %bb.aw unwind label %bb.dk

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN2cv11_InputArrayC1ERKNS_7MatExprE(ptr noundef nonnull align 8 dereferenceable(24) %64, ptr noundef nonnull align 8 dereferenceable(688) %65)
          to label %bb.ax unwind label %bb.dl

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN2cv3sumERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Scalar_") align 8 %63, ptr noundef nonnull align 8 dereferenceable(24) %64)
          to label %bb.ay unwind label %bb.dm

bb.ay:                                            ; preds = %bb.ax
  %i.dc = getelementptr inbounds nuw i8, ptr %62, i64 16
  store i32 -1056833530, ptr %62, align 8, !tbaa !42
  %i.dd = getelementptr inbounds nuw i8, ptr %62, i64 8
  store ptr %63, ptr %i.dd, align 8, !tbaa !41
  store i64 17179869185, ptr %i.dc, align 8, !tbaa !18
  invoke void @_ZN2cv3sumERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Scalar_") align 8 %61, ptr noundef nonnull align 8 dereferenceable(24) %62)
          to label %bb.az unwind label %bb.dn

bb.az:                                            ; preds = %bb.ay
  %i.de = load double, ptr %61, align 8, !tbaa !61
  %i.df = fneg double %i.de                       ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %65, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dg) #16
  %i.dh = getelementptr inbounds nuw i8, ptr %65, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dh) #16
  %i.di = getelementptr inbounds nuw i8, ptr %65, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.di) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #16
  %i.dj = getelementptr inbounds nuw i8, ptr %72, i64 16
  store i32 0, ptr %i.dj, align 8, !tbaa !44
  %i.dk = getelementptr inbounds nuw i8, ptr %72, i64 20
  store i32 0, ptr %i.dk, align 4, !tbaa !45
  store i32 16842752, ptr %72, align 8, !tbaa !42
  %i.dl = getelementptr inbounds nuw i8, ptr %72, i64 8
  store ptr %14, ptr %i.dl, align 8, !tbaa !41
  invoke void @_ZNK2cv3Mat3mulERKNS_11_InputArrayEd(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %71, ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(24) %72, double noundef 1.000000e+00)
          to label %bb.ba unwind label %bb.dq

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN2cv11_InputArrayC1ERKNS_7MatExprE(ptr noundef nonnull align 8 dereferenceable(24) %70, ptr noundef nonnull align 8 dereferenceable(688) %71)
          to label %bb.bb unwind label %bb.dr

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZN2cv3sumERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Scalar_") align 8 %69, ptr noundef nonnull align 8 dereferenceable(24) %70)
          to label %bb.bc unwind label %bb.ds

bb.bc:                                            ; preds = %bb.bb
  %i.dm = getelementptr inbounds nuw i8, ptr %68, i64 16
  store i32 -1056833530, ptr %68, align 8, !tbaa !42
  %i.dn = getelementptr inbounds nuw i8, ptr %68, i64 8
  store ptr %69, ptr %i.dn, align 8, !tbaa !41
  store i64 17179869185, ptr %i.dm, align 8, !tbaa !18
  invoke void @_ZN2cv3sumERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Scalar_") align 8 %67, ptr noundef nonnull align 8 dereferenceable(24) %68)
          to label %bb.bd unwind label %bb.dt

bb.bd:                                            ; preds = %bb.bc
  %i.do = load double, ptr %67, align 8, !tbaa !61
  %i.dp = fneg double %i.do                       ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %71, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dq) #16
  %i.dr = getelementptr inbounds nuw i8, ptr %71, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dr) #16
  %i.ds = getelementptr inbounds nuw i8, ptr %71, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ds) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #16
  %i.dt = fneg double %i.cd                       ; 2 uses
  %i.du = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.dv = insertelement <2 x double> %i.du, double %i.bl, i64 1
  %i.dw = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.dx = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dy = fmul <2 x double> %i.dv, %i.dx
  %i.dz = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.ea = insertelement <2 x double> %i.dz, double %i.bc, i64 1
  %i.eb = shufflevector <2 x double> %84, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ec = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ea, <2 x double> %i.eb, <2 x double> %i.dy) ; 3 uses
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ee = insertelement <2 x double> %i.ed, double %i.bu, i64 1
  %i.ef = fneg <2 x double> %i.ee
  %i.eg = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.eh = insertelement <2 x double> %i.eg, double %i.bl, i64 1
  %i.ei = fmul <2 x double> %i.eh, %i.ef
  %i.ej = insertelement <2 x double> poison, double %i.at, i64 0
  %i.ek = insertelement <2 x double> %i.ej, double %i.bc, i64 1
  %i.el = insertelement <2 x double> %i.ec, double %i.cd, i64 1
  %i.em = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %i.el, <2 x double> %i.ei) ; 3 uses
  %i.en = extractelement <2 x double> %i.em, i64 0
  %i.eo = extractelement <2 x double> %i.em, i64 1
  %i.ep = call noundef double @llvm.fmuladd.f64(double %i.bl, double %i.eo, double %i.en) ; 2 uses
  %i.eq = fcmp une double %i.ep, 0.000000e+00
  br i1 %i.eq, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.er = fdiv double 1.000000e+00, %i.ep         ; 2 uses
  %i.es = extractelement <2 x double> %i.ec, i64 0
  %i.et = fmul double %i.es, %i.er
  %i.eu = insertelement <2 x double> %84, double %i.bl, i64 1 ; 2 uses
  %i.ev = fneg <2 x double> %i.eu
  %i.ew = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.ex = insertelement <2 x double> %i.ew, double %i.bc, i64 1 ; 2 uses
  %i.ey = fneg <2 x double> %i.ex
  %i.ez = fmul double %i.at, %i.dt
  %i.fa = insertelement <2 x double> %i.eu, double %i.bc, i64 0
  %i.fb = fmul <2 x double> %i.fa, %i.ev
  %i.fc = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.fd = insertelement <2 x double> %i.fc, double %i.at, i64 1
  %i.fe = shufflevector <2 x double> %84, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ff = insertelement <2 x double> %i.fe, double %i.cd, i64 0
  %i.fg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> %i.ff, <2 x double> %i.fb)
  %i.fh = insertelement <2 x double> poison, double %i.er, i64 0
  %i.fi = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fj = fmul <2 x double> %i.fg, %i.fi          ; 2 uses
  %i.fk = call double @llvm.fmuladd.f64(double %i.bl, double %i.bc, double %i.ez)
  %i.fl = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fm = insertelement <2 x double> %i.fl, double %i.fk, i64 1
  %i.fn = fmul <2 x double> %i.fm, %i.fi
  %i.fo = insertelement <2 x double> %i.ex, double %i.bu, i64 0 ; 2 uses
  %i.fp = fmul <2 x double> %i.fo, %i.ey
  %i.fq = shufflevector <2 x double> %i.fo, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fr = insertelement <2 x double> %i.fq, double %i.at, i64 1
  %i.fs = insertelement <2 x double> %i.fq, double %i.cd, i64 0
  %i.ft = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> %i.fs, <2 x double> %i.fp)
  %i.fu = fmul <2 x double> %i.ft, %i.fi
  %i.fv = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.fw = insertelement <2 x double> %i.fv, double %i.et, i64 0
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.fx = phi <2 x double> [ %i.fn, %bb.be ], [ zeroinitializer, %bb.bd ] ; 2 uses
  %i.fy = phi <2 x double> [ %i.fj, %bb.be ], [ zeroinitializer, %bb.bd ]
  %i.fz = phi <2 x double> [ %i.fw, %bb.be ], [ zeroinitializer, %bb.bd ]
  %i.ga = phi <2 x double> [ %i.fu, %bb.be ], [ zeroinitializer, %bb.bd ] ; 2 uses
  %i.gb = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.gc = shufflevector <2 x double> %i.gb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.gc, <2 x double> zeroinitializer)
  %i.ge = extractelement <2 x double> %i.ga, i64 0
  %i.gf = call double @llvm.fmuladd.f64(double %i.ge, double %i.cv, double 0.000000e+00)
  %i.gg = extractelement <2 x double> %i.fx, i64 1
  %i.gh = call double @llvm.fmuladd.f64(double %i.gg, double %i.df, double %i.gf)
  %i.gi = extractelement <2 x double> %i.ga, i64 1
  %i.gj = call double @llvm.fmuladd.f64(double %i.gi, double %i.dp, double %i.gh) ; 2 uses
  %i.gk = call double @cos(double noundef %i.gj) #16 ; 2 uses
  %i.gl = call double @sin(double noundef %i.gj) #16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #16
  %i.gm = fneg double %i.gl
  store double %i.gk, ptr %73, align 8, !tbaa !61
  %i.gn = getelementptr inbounds nuw i8, ptr %73, i64 8
  store double %i.gm, ptr %i.gn, align 8, !tbaa !61
  %i.go = getelementptr inbounds nuw i8, ptr %73, i64 16
  store double %i.gl, ptr %i.go, align 8, !tbaa !61
  %i.gp = getelementptr inbounds nuw i8, ptr %73, i64 24
  store double %i.gk, ptr %i.gp, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #16
  %i.gq = insertelement <2 x double> poison, double %i.df, i64 0
  %i.gr = shufflevector <2 x double> %i.gq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fy, <2 x double> %i.gr, <2 x double> %i.gd)
  %i.gt = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.gu = shufflevector <2 x double> %i.gt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> %i.gu, <2 x double> %i.gs)
  store <2 x double> %i.gv, ptr %74, align 16, !tbaa !61
  %i.gw = load ptr, ptr %4, align 8, !tbaa !17
  %i.gx = icmp eq ptr %i.gw, null
  br i1 %i.gx, label %bb.bg, label %bb.dy

bb.bg:                                            ; preds = %bb.bf
  %i.gy = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #18
          to label %bb.bh unwind label %bb.dw     ; 6 uses

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #16
  %i.gz = getelementptr inbounds nuw i8, ptr %75, i64 16
  store i32 -1056833530, ptr %75, align 8, !tbaa !42
  %i.ha = getelementptr inbounds nuw i8, ptr %75, i64 8
  store ptr %73, ptr %i.ha, align 8, !tbaa !41
  store i64 8589934594, ptr %i.gz, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #16
  %i.hb = getelementptr inbounds nuw i8, ptr %76, i64 16
  store i32 -1056833530, ptr %76, align 8, !tbaa !42
  %i.hc = getelementptr inbounds nuw i8, ptr %76, i64 8
  store ptr %74, ptr %i.hc, align 8, !tbaa !41
  store i64 8589934593, ptr %i.hb, align 8, !tbaa !18
  invoke void @_ZN2cv3reg9MapAffineC1ERKNS_11_InputArrayES4_(ptr noundef nonnull align 8 dereferenceable(56) %i.gy, ptr noundef nonnull align 8 dereferenceable(24) %75, ptr noundef nonnull align 8 dereferenceable(24) %76)
          to label %bb.bi unwind label %.thread247

bb.bi:                                            ; preds = %bb.bh
  store ptr %i.gy, ptr %0, align 8, !tbaa !17
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.hd, align 8, !tbaa !19
  %i.he = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %bb.bn unwind label %bb.bj     ; 5 uses

bb.bj:                                            ; preds = %bb.bi
  %i.hf = landingpad { ptr, i32 }
          catch ptr null
  %i.hg = extractvalue { ptr, i32 } %i.hf, 0
  %i.hh = call ptr @__cxa_begin_catch(ptr %i.hg) #16 ; 0 uses
  %i.hi = load ptr, ptr %i.gy, align 8, !tbaa !11
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8
  call void %i.hk(ptr noundef nonnull align 8 dereferenceable(56) %i.gy) #16, !inline_history !0
  invoke void @__cxa_rethrow() #19
          to label %bb.bm unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dx unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hm = landingpad { ptr, i32 }
          catch ptr null
  %i.hn = extractvalue { ptr, i32 } %i.hm, 0
  call void @__clang_call_terminate(ptr %i.hn) #20
  unreachable

bb.bm:                                            ; preds = %bb.bj
  unreachable

bb.bn:                                            ; preds = %bb.bi
  %i.ho = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store i32 1, ptr %i.ho, align 8, !tbaa !21
  %i.hp = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  store i32 1, ptr %i.hp, align 4, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN2cv3reg9MapAffineELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.he, align 8, !tbaa !11
  %i.hq = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store ptr %i.gy, ptr %i.hq, align 8, !tbaa !25
  store ptr %i.he, ptr %i.hd, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #16
  br label %bb.fl

bb.bo:                                            ; preds = %bb.o, %bb.n
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.bp:                                            ; preds = %bb.p
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.body
  %.pn84.pn = phi { ptr, i32 } [ %i.hs, %bb.bp ], [ %i.aa, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %bb.fo

bb.br:                                            ; preds = %bb.r
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bs:                                            ; preds = %bb.s
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %17) #16
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %.pn87.pn = phi { ptr, i32 } [ %i.ht, %bb.br ], [ %i.hu, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %bb.fn

bb.bu:                                            ; preds = %bb.t
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bv:                                            ; preds = %bb.u
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bw:                                            ; preds = %bb.v
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bx:                                            ; preds = %bb.w
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx, %bb.bv
  %.pn90.pn = phi { ptr, i32 } [ %i.hw, %bb.bv ], [ %i.hy, %bb.bx ], [ %i.hx, %bb.bw ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %23) #16
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bu, %bb.by
  %.pn90.pn.pn.pn = phi { ptr, i32 } [ %i.hv, %bb.bu ], [ %.pn90.pn, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  br label %bb.fn

bb.ca:                                            ; preds = %bb.x
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.cb:                                            ; preds = %bb.y
  %i.ia = landingpad { ptr, i32 }
end_hunk_1
