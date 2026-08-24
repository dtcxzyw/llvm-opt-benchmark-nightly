Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/MatrixOpCPU?download=true
inline.NumInlined: 274
inline.NumDeleted: 126
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN16OpenColorIO_v2_55OpCPUD2Ev = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt19_Sp_make_shared_tag = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

@.str = private unnamed_addr constant [31 x i8] c"Op::finalize has to be called.\00", align 1
@_ZTIN16OpenColorIO_v2_59ExceptionE = external constant ptr
@_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = internal constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = internal constant [123 x i8] c"St23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererE, ptr @_ZN16OpenColorIO_v2_55OpCPUD2Ev, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererD0Ev, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRenderer5applyEPKvPvl, ptr @_ZNK16OpenColorIO_v2_55OpCPU9isDynamicEv, ptr @_ZNK16OpenColorIO_v2_55OpCPU18hasDynamicPropertyENS_19DynamicPropertyTypeE, ptr @_ZNK16OpenColorIO_v2_55OpCPU18getDynamicPropertyENS_19DynamicPropertyTypeE] }, align 8
@_ZTIN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererE, ptr @_ZTIN16OpenColorIO_v2_55OpCPUE }, align 8
@_ZTSN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererE = internal constant [60 x i8] c"N16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererE\00", align 1
@_ZTIN16OpenColorIO_v2_55OpCPUE = external constant ptr
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = internal constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = internal constant [113 x i8] c"St23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTVN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererE, ptr @_ZN16OpenColorIO_v2_55OpCPUD2Ev, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererD0Ev, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_113ScaleRenderer5applyEPKvPvl, ptr @_ZNK16OpenColorIO_v2_55OpCPU9isDynamicEv, ptr @_ZNK16OpenColorIO_v2_55OpCPU18hasDynamicPropertyENS_19DynamicPropertyTypeE, ptr @_ZNK16OpenColorIO_v2_55OpCPU18getDynamicPropertyENS_19DynamicPropertyTypeE] }, align 8
@_ZTIN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererE, ptr @_ZTIN16OpenColorIO_v2_55OpCPUE }, align 8
@_ZTSN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererE = internal constant [50 x i8] c"N16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererE\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = internal constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = internal constant [124 x i8] c"St23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTVN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererE, ptr @_ZN16OpenColorIO_v2_55OpCPUD2Ev, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererD0Ev, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRenderer5applyEPKvPvl, ptr @_ZNK16OpenColorIO_v2_55OpCPU9isDynamicEv, ptr @_ZNK16OpenColorIO_v2_55OpCPU18hasDynamicPropertyENS_19DynamicPropertyTypeE, ptr @_ZNK16OpenColorIO_v2_55OpCPU18getDynamicPropertyENS_19DynamicPropertyTypeE] }, align 8
@_ZTIN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererE, ptr @_ZTIN16OpenColorIO_v2_55OpCPUE }, align 8
@_ZTSN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererE = internal constant [61 x i8] c"N16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererE\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = internal constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = internal constant [114 x i8] c"St23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTVN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererE, ptr @_ZN16OpenColorIO_v2_55OpCPUD2Ev, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererD0Ev, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_114MatrixRenderer5applyEPKvPvl, ptr @_ZNK16OpenColorIO_v2_55OpCPU9isDynamicEv, ptr @_ZNK16OpenColorIO_v2_55OpCPU18hasDynamicPropertyENS_19DynamicPropertyTypeE, ptr @_ZNK16OpenColorIO_v2_55OpCPU18getDynamicPropertyENS_19DynamicPropertyTypeE] }, align 8
@_ZTIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererE, ptr @_ZTIN16OpenColorIO_v2_55OpCPUE }, align 8
@_ZTSN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererE = internal constant [51 x i8] c"N16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererE\00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_517GetMatrixRendererERSt10shared_ptrIKNS_12MatrixOpDataEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !8      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.c = load i32, ptr %i.b, align 8, !tbaa !14
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #14
  unreachable

common.resume:                                    ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.bj, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i ], [ %i.ee, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #13
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_512MatrixOpData10isDiagonalEv(ptr noundef nonnull align 8 dereferenceable(260) %i.a)
  %i.h = load ptr, ptr %1, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  %i.j = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_512MatrixOpData7Offsets9isNotNullEv(ptr noundef nonnull align 8 dereferenceable(32) %i.i) ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.val = load ptr, ptr %1, align 8               ; 3 uses
  br i1 %i.j, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f
  %i.k = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #15, !noalias !46 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 1, ptr %i.l, align 8, !tbaa !49, !noalias !46
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 1, ptr %i.m, align 4, !tbaa !51, !noalias !46
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.k, align 8, !tbaa !52, !noalias !46
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererE, i64 16), ptr %i.n, align 8, !tbaa !52, !noalias !46
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 192
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !54, !noalias !46 ; 4 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !55, !noalias !46
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.t = load double, ptr %i.s, align 8, !tbaa !55, !noalias !46
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.v = load double, ptr %i.u, align 8, !tbaa !55, !noalias !46
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.x = load double, ptr %i.w, align 8, !tbaa !55, !noalias !46
  %i.y = insertelement <4 x double> poison, double %i.q, i64 0
  %i.z = insertelement <4 x double> %i.y, double %i.t, i64 1
  %i.aa = insertelement <4 x double> %i.z, double %i.v, i64 2
  %i.ab = insertelement <4 x double> %i.aa, double %i.x, i64 3
  %i.ac = fptrunc <4 x double> %i.ab to <4 x float>
  store <4 x float> %i.ac, ptr %i.r, align 8, !tbaa !57, !noalias !46
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 216
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.af = load <4 x double>, ptr %i.ad, align 8, !tbaa !55, !noalias !46
  %i.ag = fptrunc <4 x double> %i.af to <4 x float>
  store <4 x float> %i.ag, ptr %i.ae, align 8, !tbaa !57, !noalias !46
  br label %bb.j

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f
  %i.ah = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #15, !noalias !59 ; 6 uses
  %i.ai = getelementptr i8, ptr %.val, i64 192
  %.val11.val.i.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !54, !noalias !59 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 1, ptr %i.aj, align 8, !tbaa !49, !noalias !59
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 1, ptr %i.ak, align 4, !tbaa !51, !noalias !59
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ah, align 8, !tbaa !52, !noalias !59
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererE, i64 16), ptr %i.al, align 8, !tbaa !52, !noalias !59
  %i.am = load double, ptr %.val11.val.i.i.i.i, align 8, !tbaa !55, !noalias !59
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %.val11.val.i.i.i.i, i64 40
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !55, !noalias !59
  %i.aq = getelementptr inbounds nuw i8, ptr %.val11.val.i.i.i.i, i64 80
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !55, !noalias !59
  %i.as = getelementptr inbounds nuw i8, ptr %.val11.val.i.i.i.i, i64 120
  %i.at = load double, ptr %i.as, align 8, !tbaa !55, !noalias !59
  %i.au = insertelement <4 x double> poison, double %i.am, i64 0
  %i.av = insertelement <4 x double> %i.au, double %i.ap, i64 1
  %i.aw = insertelement <4 x double> %i.av, double %i.ar, i64 2
  %i.ax = insertelement <4 x double> %i.aw, double %i.at, i64 3
  %i.ay = fptrunc <4 x double> %i.ax to <4 x float>
  store <4 x float> %i.ay, ptr %i.an, align 8, !tbaa !57, !noalias !59
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.az = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #15, !noalias !62 ; 11 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i32 1, ptr %i.ba, align 8, !tbaa !49, !noalias !62
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 1, ptr %i.bb, align 4, !tbaa !51, !noalias !62
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.az, align 8, !tbaa !52, !noalias !62
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererE, i64 16), ptr %i.bc, align 8, !tbaa !52, !noalias !62
  %i.bd = load ptr, ptr %1, align 8, !tbaa !8, !noalias !62
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 168 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !52, !noalias !62
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !62
  %i.bi = invoke noundef i64 %i.bh(ptr noundef nonnull align 8 dereferenceable(48) %i.be)
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i, !noalias !62, !inline_history !65 ; 3 uses

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i: ; preds = %bb.h
  %i.bj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 104) #16, !noalias !62
  br label %common.resume

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.h
  %i.bk = load ptr, ptr %1, align 8, !tbaa !8, !noalias !62 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 192
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !54, !noalias !62 ; 7 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !55, !noalias !62
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bp = getelementptr [8 x i8], ptr %i.bm, i64 %i.bi ; 4 uses
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !55, !noalias !62
  %.idx.i.i.i.i.i.i.i = shl i64 %i.bi, 4
  %i.br = getelementptr i8, ptr %i.bm, i64 %.idx.i.i.i.i.i.i.i ; 4 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !55, !noalias !62
  %.idx39.i.i.i.i.i.i.i = mul i64 %i.bi, 24
  %i.bt = getelementptr i8, ptr %i.bm, i64 %.idx39.i.i.i.i.i.i.i ; 4 uses
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !55, !noalias !62
  %i.bv = insertelement <4 x double> poison, double %i.bn, i64 0
  %i.bw = insertelement <4 x double> %i.bv, double %i.bq, i64 1
  %i.bx = insertelement <4 x double> %i.bw, double %i.bs, i64 2
  %i.by = insertelement <4 x double> %i.bx, double %i.bu, i64 3
  %i.bz = fptrunc <4 x double> %i.by to <4 x float>
  store <4 x float> %i.bz, ptr %i.bo, align 8, !tbaa !57, !noalias !62
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !55, !noalias !62
  %i.cc = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.cd = getelementptr i8, ptr %i.bp, i64 8
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !55, !noalias !62
  %i.cf = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !55, !noalias !62
  %i.ch = getelementptr i8, ptr %i.bt, i64 8
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !55, !noalias !62
  %i.cj = insertelement <4 x double> poison, double %i.cb, i64 0
  %i.ck = insertelement <4 x double> %i.cj, double %i.ce, i64 1
  %i.cl = insertelement <4 x double> %i.ck, double %i.cg, i64 2
  %i.cm = insertelement <4 x double> %i.cl, double %i.ci, i64 3
  %i.cn = fptrunc <4 x double> %i.cm to <4 x float>
  store <4 x float> %i.cn, ptr %i.cc, align 8, !tbaa !57, !noalias !62
  %i.co = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.cp = load double, ptr %i.co, align 8, !tbaa !55, !noalias !62
  %i.cq = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.cr = getelementptr i8, ptr %i.bp, i64 16
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !55, !noalias !62
  %i.ct = getelementptr i8, ptr %i.br, i64 16
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !55, !noalias !62
  %i.cv = getelementptr i8, ptr %i.bt, i64 16
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !55, !noalias !62
  %i.cx = insertelement <4 x double> poison, double %i.cp, i64 0
  %i.cy = insertelement <4 x double> %i.cx, double %i.cs, i64 1
  %i.cz = insertelement <4 x double> %i.cy, double %i.cu, i64 2
  %i.da = insertelement <4 x double> %i.cz, double %i.cw, i64 3
  %i.db = fptrunc <4 x double> %i.da to <4 x float>
  store <4 x float> %i.db, ptr %i.cq, align 8, !tbaa !57, !noalias !62
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !55, !noalias !62
  %i.de = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  %i.df = getelementptr i8, ptr %i.bp, i64 24
  %i.dg = load double, ptr %i.df, align 8, !tbaa !55, !noalias !62
  %i.dh = getelementptr i8, ptr %i.br, i64 24
  %i.di = load double, ptr %i.dh, align 8, !tbaa !55, !noalias !62
  %i.dj = getelementptr i8, ptr %i.bt, i64 24
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !55, !noalias !62
  %i.dl = insertelement <4 x double> poison, double %i.dd, i64 0
  %i.dm = insertelement <4 x double> %i.dl, double %i.dg, i64 1
  %i.dn = insertelement <4 x double> %i.dm, double %i.di, i64 2
  %i.do = insertelement <4 x double> %i.dn, double %i.dk, i64 3
  %i.dp = fptrunc <4 x double> %i.do to <4 x float>
  store <4 x float> %i.dp, ptr %i.de, align 8, !tbaa !57, !noalias !62
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bk, i64 216
  %i.dr = getelementptr inbounds nuw i8, ptr %i.az, i64 88
  %i.ds = load <4 x double>, ptr %i.dq, align 8, !tbaa !55, !noalias !62
  %i.dt = fptrunc <4 x double> %i.ds to <4 x float>
  store <4 x float> %i.dt, ptr %i.dr, align 8, !tbaa !57, !noalias !62
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.du = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #15, !noalias !66 ; 10 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i32 1, ptr %i.dv, align 8, !tbaa !49, !noalias !66
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i32 1, ptr %i.dw, align 4, !tbaa !51, !noalias !66
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.du, align 8, !tbaa !52, !noalias !66
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererE, i64 16), ptr %i.dx, align 8, !tbaa !52, !noalias !66
  %i.dy = load ptr, ptr %1, align 8, !tbaa !8, !noalias !66
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 168 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !52, !noalias !66
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !66
  %i.ed = invoke noundef i64 %i.ec(ptr noundef nonnull align 8 dereferenceable(48) %i.dz)
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i, !noalias !66, !inline_history !69 ; 3 uses

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i: ; preds = %bb.i
  %i.ee = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef 88) #16, !noalias !66
  br label %common.resume

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i
  %i.ef = load ptr, ptr %1, align 8, !tbaa !8, !noalias !66
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 192
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !54, !noalias !66 ; 7 uses
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !55, !noalias !66
  %i.ej = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.ek = getelementptr [8 x i8], ptr %i.eh, i64 %i.ed ; 4 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !55, !noalias !66
  %.idx.i.i.i.i.i.i.i22 = shl i64 %i.ed, 4
  %i.em = getelementptr i8, ptr %i.eh, i64 %.idx.i.i.i.i.i.i.i22 ; 4 uses
  %i.en = load double, ptr %i.em, align 8, !tbaa !55, !noalias !66
  %.idx34.i.i.i.i.i.i.i = mul i64 %i.ed, 24
  %i.eo = getelementptr i8, ptr %i.eh, i64 %.idx34.i.i.i.i.i.i.i ; 4 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !55, !noalias !66
  %i.eq = insertelement <4 x double> poison, double %i.ei, i64 0
  %i.er = insertelement <4 x double> %i.eq, double %i.el, i64 1
  %i.es = insertelement <4 x double> %i.er, double %i.en, i64 2
  %i.et = insertelement <4 x double> %i.es, double %i.ep, i64 3
  %i.eu = fptrunc <4 x double> %i.et to <4 x float>
  store <4 x float> %i.eu, ptr %i.ej, align 8, !tbaa !57, !noalias !66
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !55, !noalias !66
  %i.ex = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  %i.ey = getelementptr i8, ptr %i.ek, i64 8
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !55, !noalias !66
  %i.fa = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !55, !noalias !66
  %i.fc = getelementptr i8, ptr %i.eo, i64 8
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !55, !noalias !66
  %i.fe = insertelement <4 x double> poison, double %i.ew, i64 0
  %i.ff = insertelement <4 x double> %i.fe, double %i.ez, i64 1
  %i.fg = insertelement <4 x double> %i.ff, double %i.fb, i64 2
  %i.fh = insertelement <4 x double> %i.fg, double %i.fd, i64 3
  %i.fi = fptrunc <4 x double> %i.fh to <4 x float>
  store <4 x float> %i.fi, ptr %i.ex, align 8, !tbaa !57, !noalias !66
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !55, !noalias !66
  %i.fl = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  %i.fm = getelementptr i8, ptr %i.ek, i64 16
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !55, !noalias !66
  %i.fo = getelementptr i8, ptr %i.em, i64 16
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !55, !noalias !66
  %i.fq = getelementptr i8, ptr %i.eo, i64 16
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !55, !noalias !66
  %i.fs = insertelement <4 x double> poison, double %i.fk, i64 0
  %i.ft = insertelement <4 x double> %i.fs, double %i.fn, i64 1
  %i.fu = insertelement <4 x double> %i.ft, double %i.fp, i64 2
  %i.fv = insertelement <4 x double> %i.fu, double %i.fr, i64 3
  %i.fw = fptrunc <4 x double> %i.fv to <4 x float>
  store <4 x float> %i.fw, ptr %i.fl, align 8, !tbaa !57, !noalias !66
  %i.fx = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !55, !noalias !66
  %i.fz = getelementptr inbounds nuw i8, ptr %i.du, i64 72
  %i.ga = getelementptr i8, ptr %i.ek, i64 24
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !55, !noalias !66
end_hunk_0
