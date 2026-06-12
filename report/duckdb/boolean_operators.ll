inline.NumInlined: 393
inline.NumDeleted: 221
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.duckdb::UnifiedVectorFormat" = type <{ ptr, ptr, %"struct.duckdb::ValidityMask", %"struct.duckdb::SelectionVector", i8, [7 x i8] }>
%"struct.duckdb::ValidityMask" = type { %"struct.duckdb::TemplatedValidityMask" }
%"struct.duckdb::TemplatedValidityMask" = type { ptr, %"class.duckdb::shared_ptr.0", i64 }
%"class.duckdb::shared_ptr.0" = type { %"class.std::shared_ptr.1" }
%"class.std::shared_ptr.1" = type { %"class.std::__shared_ptr.2" }
%"class.std::__shared_ptr.2" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"struct.duckdb::SelectionVector" = type { ptr, %"class.duckdb::shared_ptr.8" }
%"class.duckdb::shared_ptr.8" = type { %"class.std::shared_ptr.9" }
%"class.std::shared_ptr.9" = type { %"class.std::__shared_ptr.10" }
%"class.std::__shared_ptr.10" = type { ptr, %"class.std::__shared_count" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.12 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.12 = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<duckdb::ExceptionFormatValue, std::allocator<duckdb::ExceptionFormatValue>>::_Vector_impl" }
%"struct.std::_Vector_base<duckdb::ExceptionFormatValue, std::allocator<duckdb::ExceptionFormatValue>>::_Vector_impl" = type { %"struct.std::_Vector_base<duckdb::ExceptionFormatValue, std::allocator<duckdb::ExceptionFormatValue>>::_Vector_impl_data" }
%"struct.std::_Vector_base<duckdb::ExceptionFormatValue, std::allocator<duckdb::ExceptionFormatValue>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.duckdb::ExceptionFormatValue" = type { i8, double, %"struct.duckdb::hugeint_t", %"class.std::__cxx11::basic_string" }
%"struct.duckdb::hugeint_t" = type { i64, i64 }

$_ZN6duckdb19UnifiedVectorFormatD2Ev = comdat any

$_ZN6duckdb14ConstantVector16VerifyVectorTypeIhEEvRKNS_6VectorE = comdat any

$_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ = comdat any

$_ZN6duckdb9Exception25ConstructMessageRecursiveINS_12PhysicalTypeEJRKS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RSt6vectorINS_20ExceptionFormatValueESaISE_EERKT_DpOT0_ = comdat any

$_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev = comdat any

$_ZN6duckdb9Exception25ConstructMessageRecursiveINS_12PhysicalTypeEJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_RSt6vectorINS_20ExceptionFormatValueESaISC_EERKT_DpOT0_ = comdat any

$_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZN6duckdb14ConstantVector16VerifyVectorTypeIbEEvRKNS_6VectorE = comdat any

$_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIhEEvv = comdat any

$_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeERKS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ = comdat any

$_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE = comdat any

$_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm = comdat any

$_ZN6duckdb11make_bufferINS_21TemplatedValidityDataImEEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_ = comdat any

$_ZNK6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEptEv = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIbEEvv = comdat any

$_ZTIN6duckdb17InternalExceptionE = comdat any

$_ZTSN6duckdb17InternalExceptionE = comdat any

$_ZTIN6duckdb9ExceptionE = comdat any

$_ZTSN6duckdb9ExceptionE = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt19_Sp_make_shared_tag = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

@.str = private unnamed_addr constant [56 x i8] c"Expected vector of type %s, but found vector of type %s\00", align 1
@_ZTIN6duckdb17InternalExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb17InternalExceptionE, ptr @_ZTIN6duckdb9ExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6duckdb17InternalExceptionE = linkonce_odr constant [29 x i8] c"N6duckdb17InternalExceptionE\00", comdat, align 1
@_ZTIN6duckdb9ExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb9ExceptionE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN6duckdb9ExceptionE = linkonce_odr constant [20 x i8] c"N6duckdb9ExceptionE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.2 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"Expected unified vector format of type %s, but found type %s\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"Operation requires a flat vector but a non-flat vector was encountered\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [99 x i8] c"St23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Attempted to dereference shared_ptr that is NULL!\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16VectorOperations3AndERNS_6VectorES2_S2_m(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 13 uses
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 13 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !7
  %6 = icmp eq i8 %i.a, 2
  %7 = load i8, ptr %1, align 8
  %i.b = icmp eq i8 %7, 2
  %or.cond.i = select i1 %6, i1 %i.b, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIbEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.i = load i8, ptr %i.d, align 1, !tbaa !34
  %i.j = icmp ne i8 %i.i, 0                       ; 2 uses
  %i.k = load i8, ptr %i.f, align 1, !tbaa !34
  %i.l = icmp ne i8 %i.k, 0                       ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.n, align 8, !tbaa !36
  %i.p = trunc i64 %i.o to i1
  %i.q = xor i1 %i.p, true
  br label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi i1 [ %i.q, %bb.c ], [ false, %bb.b ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35   ; 2 uses
  %.not.i.i69.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i69.i, label %.sink.split.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit71.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit71.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i
  %i.t = load i64, ptr %i.s, align 8, !tbaa !36
  %i.u = trunc i64 %i.t to i1
  %i.v = xor i1 %i.u, true                        ; 2 uses
  %or.cond.i.i = and i1 %.0.i.i.i, %i.v
  br i1 %or.cond.i.i, label %_ZN6duckdb12_GLOBAL__N_110TernaryAnd9OperationEbbbbRb.exit.i, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit71.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i
  %.0.i.i70109.i = phi i1 [ %i.v, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit71.i ], [ false, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i ] ; 2 uses
  %brmerge.i.i = or i1 %.0.i.i.i, %.0.i.i70109.i
  %.mux14.i.i = select i1 %.0.i.i.i, i1 %i.l, i1 %i.j
  %i.w = or i1 %i.l, %.0.i.i70109.i
  %.mux.v.i.i = and i1 %i.j, %i.w
  %.sink.v.i.i = select i1 %.0.i.i.i, i1 %i.l, i1 %.mux.v.i.i
  %.sink.i.i = zext i1 %.sink.v.i.i to i8
  %.0.ph.i.i = and i1 %.mux14.i.i, %brmerge.i.i
  store i8 %.sink.i.i, ptr %i.h, align 1, !tbaa !37
  br label %_ZN6duckdb12_GLOBAL__N_110TernaryAnd9OperationEbbbbRb.exit.i

_ZN6duckdb12_GLOBAL__N_110TernaryAnd9OperationEbbbbRb.exit.i: ; preds = %.sink.split.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit71.i
  %.0.i.i = phi i1 [ true, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit71.i ], [ %.0.ph.i.i, %.sink.split.i.i ]
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext %.0.i.i)
  br label %_ZN6duckdb12_GLOBAL__N_124TemplatedBooleanNullmaskINS0_10TernaryAndEEEvRNS_6VectorES4_S4_m.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIhEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !39   ; 16 uses
  %i.z = ptrtoaddr ptr %i.y to i64
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIhEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !39 ; 16 uses
  %i.ac = ptrtoaddr ptr %i.ab to i64
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIbEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !33 ; 16 uses
  %i.af = ptrtoaddr ptr %i.ae to i64              ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !35
  %.not.i.i = icmp eq ptr %i.ai, null
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %.not.i73.i = icmp eq ptr %i.ak, null
  %or.cond117.i = select i1 %.not.i.i, i1 %.not.i73.i, i1 false
  %.not129.i = icmp eq i64 %3, 0                  ; 2 uses
  br i1 %or.cond117.i, label %.preheader.i, label %.preheader118.i

.preheader118.i:                                  ; preds = %bb.l
  br i1 %.not129.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader118.i
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.s

.preheader.i:                                     ; preds = %bb.l
  br i1 %.not129.i, label %.loopexit.i, label %.lr.ph124.i

.lr.ph124.i:                                      ; preds = %.preheader.i
  %i.am = load ptr, ptr %4, align 8, !tbaa !48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !49 ; 7 uses
  %.not.i93.i = icmp eq ptr %i.an, null
  %i.ao = load ptr, ptr %5, align 8, !tbaa !48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !49 ; 7 uses
  %.not.i95.i = icmp eq ptr %i.ap, null           ; 2 uses
  br i1 %.not.i93.i, label %.lr.ph124.split.us.i, label %.lr.ph124.split.i

.lr.ph124.split.us.i:                             ; preds = %.lr.ph124.i
  br i1 %.not.i95.i, label %iter.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.i.preheader: ; preds = %.lr.ph124.split.us.i
  %xtraiter57 = and i64 %3, 1
  %i.aq = icmp eq i64 %3, 1
  br i1 %i.aq, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.i.preheader
  %unroll_iter60 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.i

iter.check:                                       ; preds = %.lr.ph124.split.us.i
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ar = sub i64 %i.af, %i.z
  %diff.check = icmp ult i64 %i.ar, 32
  %i.as = sub i64 %i.af, %i.ac
  %diff.check35 = icmp ult i64 %i.as, 32
  %conflict.rdx = or i1 %diff.check, %diff.check35
  br i1 %conflict.rdx, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check36 = icmp ult i64 %3, 32
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %3, 28
  %n.vec = and i64 %3, -32                        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <16 x i8>, ptr %i.at, align 1, !tbaa !34
  %wide.load37 = load <16 x i8>, ptr %i.au, align 1, !tbaa !34
  %i.av = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.aw = icmp ne <16 x i8> %wide.load37, zeroinitializer
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load38 = load <16 x i8>, ptr %i.ax, align 1, !tbaa !34
  %wide.load39 = load <16 x i8>, ptr %i.ay, align 1, !tbaa !34
  %i.az = icmp ne <16 x i8> %wide.load38, zeroinitializer
  %i.ba = icmp ne <16 x i8> %wide.load39, zeroinitializer
  %i.bb = and <16 x i1> %i.av, %i.az
  %i.bc = and <16 x i1> %i.aw, %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ae, i64 %index ; 2 uses
  %i.be = zext <16 x i1> %i.bb to <16 x i8>
  %i.bf = zext <16 x i1> %i.bc to <16 x i8>
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <16 x i8> %i.be, ptr %i.bd, align 1, !tbaa !37
  store <16 x i8> %i.bf, ptr %i.bg, align 1, !tbaa !37
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.us.i.preheader, label %vec.epilog.ph, !prof !54

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec41 = and i64 %3, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index42 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.y, i64 %index42
  %wide.load43 = load <4 x i8>, ptr %i.bi, align 1, !tbaa !34
  %i.bj = icmp ne <4 x i8> %wide.load43, zeroinitializer
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index42
  %wide.load44 = load <4 x i8>, ptr %i.bk, align 1, !tbaa !34
  %i.bl = icmp ne <4 x i8> %wide.load44, zeroinitializer
  %i.bm = and <4 x i1> %i.bj, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ae, i64 %index42
  %i.bo = zext <4 x i1> %i.bm to <4 x i8>
  store <4 x i8> %i.bo, ptr %i.bn, align 1, !tbaa !37
  %index.next45 = add nuw i64 %index42, 4         ; 2 uses
  %i.bp = icmp eq i64 %index.next45, %n.vec41
  br i1 %i.bp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !55

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %3, %n.vec41
  br i1 %cmp.n46, label %.loopexit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.us.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.us.i.preheader: ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.057123.us.us.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec41, %vec.epilog.middle.block ] ; 6 uses
  %.neg = or disjoint i64 %.057123.us.us.i.ph, 1
  %xtraiter62 = and i64 %3, 1
  %lcmp.mod63.not = icmp eq i64 %xtraiter62, 0
  br i1 %lcmp.mod63.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.us.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.us.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.us.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.us.i.preheader
  %i.bq = getelementptr inbounds nuw i8, ptr %i.y, i64 %.057123.us.us.i.ph
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !34
  %i.bs = icmp ne i8 %i.br, 0
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.057123.us.us.i.ph
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !34
  %i.bv = icmp ne i8 %i.bu, 0
  %i.bw = and i1 %i.bs, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.057123.us.us.i.ph
  %i.by = zext i1 %i.bw to i8
  store i8 %i.by, ptr %i.bx, align 1, !tbaa !37
  %i.bz = or disjoint i64 %.057123.us.us.i.ph, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.us.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.us.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.us.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.us.i.preheader
  %.057123.us.us.i.unr = phi i64 [ %.057123.us.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.us.i.preheader ], [ %i.bz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.us.i.prol ]
  %i.ca = icmp eq i64 %3, %.neg
  br i1 %i.ca, label %.loopexit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.us.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.us.i
  %.057123.us.us.i = phi i64 [ %i.cu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.us.i ], [ %.057123.us.us.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit94.us.us.i.prol.loopexit ] ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.y, i64 %.057123.us.us.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !34
  %i.cd = icmp ne i8 %i.cc, 0
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.057123.us.us.i
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !34
  %i.cg = icmp ne i8 %i.cf, 0
end_hunk_0
begin_hunk_1_@_ZN6duckdb16VectorOperations3AndERNS_6VectorES2_S2_m:bb.a
bb.ad:                                            ; preds = %bb.ab
  %i.kl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.kl, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.km = add nsw i32 %i.kd, -1
  store i32 %i.km, ptr %i.ka, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.kn = atomicrmw volatile add ptr %i.ka, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.kd, %bb.ae ], [ %i.kn, %bb.af ]
  %i.ko = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ko, label %bb.ag, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !67

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jz) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.ac, %.loopexit.i
  %i.kp = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !60 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.kq, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8 ; 4 uses
  %i.ks = load atomic i64, ptr %i.kr acquire, align 8 ; 2 uses
  %i.kt = icmp eq i64 %i.ks, 4294967297
  %i.ku = trunc i64 %i.ks to i32                  ; 2 uses
  br i1 %i.kt, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.kr, align 8, !tbaa !61
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kq, i64 12
  store i32 0, ptr %i.kv, align 4, !tbaa !63
  %i.kw = load ptr, ptr %i.kq, align 8, !tbaa !64
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  %i.ky = load ptr, ptr %i.kx, align 8
  call void %i.ky(ptr noundef nonnull align 8 dereferenceable(16) %i.kq) #17, !inline_history !68
  %i.kz = load ptr, ptr %i.kq, align 8, !tbaa !64
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  %i.lb = load ptr, ptr %i.la, align 8
  call void %i.lb(ptr noundef nonnull align 8 dereferenceable(16) %i.kq) #17, !inline_history !68
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.lc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.lc, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ld = add nsw i32 %i.ku, -1
  store i32 %i.ld, ptr %i.kr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.al:                                            ; preds = %bb.aj
  %i.le = atomicrmw volatile add ptr %i.kr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.ku, %bb.ak ], [ %i.le, %bb.al ]
  %i.lf = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.lf, label %bb.am, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !67

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kq) #17
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.ai, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.lg = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !60 ; 8 uses
  %.not.i.i.i.i.i97.i = icmp eq ptr %i.lh, null
  br i1 %.not.i.i.i.i.i97.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i101.i, label %bb.an

bb.an:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8 ; 4 uses
  %i.lj = load atomic i64, ptr %i.li acquire, align 8 ; 2 uses
  %i.lk = icmp eq i64 %i.lj, 4294967297
  %i.ll = trunc i64 %i.lj to i32                  ; 2 uses
  br i1 %i.lk, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.li, align 8, !tbaa !61
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lh, i64 12
  store i32 0, ptr %i.lm, align 4, !tbaa !63
  %i.ln = load ptr, ptr %i.lh, align 8, !tbaa !64
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8
  call void %i.lp(ptr noundef nonnull align 8 dereferenceable(16) %i.lh) #17, !inline_history !66
  %i.lq = load ptr, ptr %i.lh, align 8, !tbaa !64
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  %i.ls = load ptr, ptr %i.lr, align 8
  call void %i.ls(ptr noundef nonnull align 8 dereferenceable(16) %i.lh) #17, !inline_history !66
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i101.i

bb.ap:                                            ; preds = %bb.an
  %i.lt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i.i.i98.i = icmp eq i8 %i.lt, 0
  br i1 %.not.i.i.i.i.i.i98.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.lu = add nsw i32 %i.ll, -1
  store i32 %i.lu, ptr %i.li, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i99.i

bb.ar:                                            ; preds = %bb.ap
  %i.lv = atomicrmw volatile add ptr %i.li, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i99.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i99.i: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i.i.i.i100.i = phi i32 [ %i.ll, %bb.aq ], [ %i.lv, %bb.ar ]
  %i.lw = icmp eq i32 %.0.i.i.i.i.i.i.i100.i, 1
  br i1 %i.lw, label %bb.as, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i101.i, !prof !67

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i99.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lh) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i101.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i101.i:      ; preds = %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i99.i, %bb.ao, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  %i.lx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !60 ; 8 uses
  %.not.i.i.i.i1.i102.i = icmp eq ptr %i.ly, null
  br i1 %.not.i.i.i.i1.i102.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit106.i, label %bb.at

bb.at:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i101.i
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8 ; 4 uses
  %i.ma = load atomic i64, ptr %i.lz acquire, align 8 ; 2 uses
  %i.mb = icmp eq i64 %i.ma, 4294967297
  %i.mc = trunc i64 %i.ma to i32                  ; 2 uses
  br i1 %i.mb, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.lz, align 8, !tbaa !61
  %i.md = getelementptr inbounds nuw i8, ptr %i.ly, i64 12
  store i32 0, ptr %i.md, align 4, !tbaa !63
  %i.me = load ptr, ptr %i.ly, align 8, !tbaa !64
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %i.mg = load ptr, ptr %i.mf, align 8
  call void %i.mg(ptr noundef nonnull align 8 dereferenceable(16) %i.ly) #17, !inline_history !68
  %i.mh = load ptr, ptr %i.ly, align 8, !tbaa !64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 24
  %i.mj = load ptr, ptr %i.mi, align 8
  call void %i.mj(ptr noundef nonnull align 8 dereferenceable(16) %i.ly) #17, !inline_history !68
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit106.i

bb.av:                                            ; preds = %bb.at
  %i.mk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i.i2.i103.i = icmp eq i8 %i.mk, 0
  br i1 %.not.i.i.i.i.i2.i103.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ml = add nsw i32 %i.mc, -1
  store i32 %i.ml, ptr %i.lz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i104.i

bb.ax:                                            ; preds = %bb.av
  %i.mm = atomicrmw volatile add ptr %i.lz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i104.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i104.i: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i.i.i4.i105.i = phi i32 [ %i.mc, %bb.aw ], [ %i.mm, %bb.ax ]
  %i.mn = icmp eq i32 %.0.i.i.i.i.i.i4.i105.i, 1
  br i1 %i.mn, label %bb.ay, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit106.i, !prof !67

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i104.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ly) #17
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit106.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit106.i:    ; preds = %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i104.i, %bb.au, %_ZN6duckdb15SelectionVectorD2Ev.exit.i101.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %_ZN6duckdb12_GLOBAL__N_124TemplatedBooleanNullmaskINS0_10TernaryAndEEEvRNS_6VectorES4_S4_m.exit

bb.az:                                            ; preds = %bb.aa, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %.pn61.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.ey, %bb.n ], [ %i.ez, %bb.o ], [ %i.fa, %bb.p ], [ %i.fb, %bb.q ], [ %i.he, %bb.aa ], [ %i.fc, %bb.r ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #17
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.m
  %.pn61.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn61.pn.pn.pn.pn.pn.i, %bb.az ], [ %i.ex, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %.pn61.pn.pn.pn.pn.pn.pn.i

_ZN6duckdb12_GLOBAL__N_124TemplatedBooleanNullmaskINS0_10TernaryAndEEEvRNS_6VectorES4_S4_m.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_110TernaryAnd9OperationEbbbbRb.exit.i, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit106.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16VectorOperations2OrERNS_6VectorES2_S2_m(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 13 uses
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 13 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !7
  %6 = icmp eq i8 %i.a, 2
  %7 = load i8, ptr %1, align 8
  %i.b = icmp eq i8 %7, 2
  %or.cond.i = select i1 %6, i1 %i.b, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIbEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33   ; 3 uses
  %i.i = load i8, ptr %i.d, align 1, !tbaa !34    ; 2 uses
  %i.j = icmp ne i8 %i.i, 0                       ; 2 uses
  %i.k = load i8, ptr %i.f, align 1, !tbaa !34    ; 2 uses
  %i.l = icmp ne i8 %i.k, 0                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.n, align 8, !tbaa !36   ; 2 uses
  %i.p = trunc i64 %i.o to i1                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !35   ; 2 uses
  %.not.i.i69.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i69.i, label %.thread.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit71.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i: ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35   ; 2 uses
  %.not.i.i69118.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i69118.i, label %.thread105.i, label %.thread126.i

.thread126.i:                                     ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i
  %i.u = load i64, ptr %i.t, align 8, !tbaa !36
  %i.v = trunc i64 %i.u to i1
  br i1 %i.v, label %.thread105.i, label %bb.f

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit71.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i
  %i.w = load i64, ptr %i.r, align 8, !tbaa !36   ; 2 uses
  %i.x = trunc i64 %i.w to i1
  %i.y = or i64 %i.w, %i.o
  %i.z = and i64 %i.y, 1
  %or.cond.i.i = icmp eq i64 %i.z, 0
  br i1 %or.cond.i.i, label %_ZN6duckdb12_GLOBAL__N_19TernaryOr9OperationEbbbbRb.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit71.i
  br i1 %i.p, label %bb.e, label %bb.d

.thread.i:                                        ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i
  br i1 %i.p, label %.thread105.i, label %bb.d

bb.d:                                             ; preds = %.thread.i, %bb.c
  %i.aa = zext i1 %i.l to i8
  store i8 %i.aa, ptr %i.h, align 1, !tbaa !37
  %i.ab = xor i1 %i.l, true
  br label %_ZN6duckdb12_GLOBAL__N_19TernaryOr9OperationEbbbbRb.exit.i

bb.e:                                             ; preds = %bb.c
  br i1 %i.x, label %.thread105.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread126.i
  %i.ac = zext i1 %i.j to i8
  store i8 %i.ac, ptr %i.h, align 1, !tbaa !37
  %i.ad = xor i1 %i.j, true
  br label %_ZN6duckdb12_GLOBAL__N_19TernaryOr9OperationEbbbbRb.exit.i

.thread105.i:                                     ; preds = %bb.e, %.thread.i, %.thread126.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i
  %i.ae = or i8 %i.k, %i.i
  %i.af = icmp ne i8 %i.ae, 0
  %i.ag = zext i1 %i.af to i8
  store i8 %i.ag, ptr %i.h, align 1, !tbaa !37
  br label %_ZN6duckdb12_GLOBAL__N_19TernaryOr9OperationEbbbbRb.exit.i

_ZN6duckdb12_GLOBAL__N_19TernaryOr9OperationEbbbbRb.exit.i: ; preds = %.thread105.i, %bb.f, %bb.d, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit71.i
  %.0.i.i = phi i1 [ false, %.thread105.i ], [ %i.ab, %bb.d ], [ %i.ad, %bb.f ], [ true, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit71.i ]
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext %.0.i.i)
  br label %_ZN6duckdb12_GLOBAL__N_124TemplatedBooleanNullmaskINS0_9TernaryOrEEEvRNS_6VectorES4_S4_m.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIhEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !39 ; 16 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIhEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !39 ; 16 uses
  %i.am = ptrtoaddr ptr %i.al to i64
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIbEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.n unwind label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !33 ; 18 uses
  %i.ap = ptrtoaddr ptr %i.ao to i64              ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !35
  %.not.i.i = icmp eq ptr %i.as, null
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8
  %.not.i73.i = icmp eq ptr %i.au, null
  %or.cond130.i = select i1 %.not.i.i, i1 %.not.i73.i, i1 false
  %.not145.i = icmp eq i64 %3, 0                  ; 2 uses
  br i1 %or.cond130.i, label %.preheader.i, label %.preheader131.i

.preheader131.i:                                  ; preds = %bb.o
  br i1 %.not145.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader131.i
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.v

.preheader.i:                                     ; preds = %bb.o
  br i1 %.not145.i, label %.loopexit.i, label %.lr.ph140.i

.lr.ph140.i:                                      ; preds = %.preheader.i
  %i.aw = load ptr, ptr %4, align 8, !tbaa !48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !49 ; 7 uses
  %.not.i86.i = icmp eq ptr %i.ax, null
  %i.ay = load ptr, ptr %5, align 8, !tbaa !48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !49 ; 7 uses
  %.not.i88.i = icmp eq ptr %i.az, null           ; 2 uses
  br i1 %.not.i86.i, label %.lr.ph140.split.us.i, label %.lr.ph140.split.i

.lr.ph140.split.us.i:                             ; preds = %.lr.ph140.i
  br i1 %.not.i88.i, label %iter.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit87.us.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit87.us.i.preheader: ; preds = %.lr.ph140.split.us.i
  %xtraiter59 = and i64 %3, 1
  %i.ba = icmp eq i64 %3, 1
  br i1 %i.ba, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit87.us.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit87.us.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit87.us.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit87.us.i.preheader
  %unroll_iter62 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit87.us.i

iter.check:                                       ; preds = %.lr.ph140.split.us.i
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit87.us.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bb = sub i64 %i.ap, %i.aj
  %diff.check = icmp ult i64 %i.bb, 32
  %i.bc = sub i64 %i.ap, %i.am
  %diff.check37 = icmp ult i64 %i.bc, 32
  %conflict.rdx = or i1 %diff.check, %diff.check37
  br i1 %conflict.rdx, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit87.us.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check38 = icmp ult i64 %3, 32
  br i1 %min.iters.check38, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %3, 28
  %n.vec = and i64 %3, -32                        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load = load <16 x i8>, ptr %i.bd, align 1, !tbaa !34
  %wide.load39 = load <16 x i8>, ptr %i.be, align 1, !tbaa !34
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load40 = load <16 x i8>, ptr %i.bf, align 1, !tbaa !34
  %wide.load41 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !34
  %i.bh = or <16 x i8> %wide.load40, %wide.load
  %i.bi = or <16 x i8> %wide.load41, %wide.load39
  %i.bj = icmp ne <16 x i8> %i.bh, zeroinitializer
  %i.bk = icmp ne <16 x i8> %i.bi, zeroinitializer
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ao, i64 %index ; 2 uses
  %i.bm = zext <16 x i1> %i.bj to <16 x i8>
  %i.bn = zext <16 x i1> %i.bk to <16 x i8>
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <16 x i8> %i.bm, ptr %i.bl, align 1, !tbaa !37
  store <16 x i8> %i.bn, ptr %i.bo, align 1, !tbaa !37
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit87.us.us.i.preheader, label %vec.epilog.ph, !prof !54

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec43 = and i64 %3, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index44 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next47, %vec.epilog.vector.body ] ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index44
  %wide.load45 = load <4 x i8>, ptr %i.bq, align 1, !tbaa !34
  %i.br = getelementptr inbounds nuw i8, ptr %i.al, i64 %index44
  %wide.load46 = load <4 x i8>, ptr %i.br, align 1, !tbaa !34
  %i.bs = or <4 x i8> %wide.load46, %wide.load45
  %i.bt = icmp ne <4 x i8> %i.bs, zeroinitializer
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ao, i64 %index44
  %i.bv = zext <4 x i1> %i.bt to <4 x i8>
  store <4 x i8> %i.bv, ptr %i.bu, align 1, !tbaa !37
  %index.next47 = add nuw i64 %index44, 4         ; 2 uses
  %i.bw = icmp eq i64 %index.next47, %n.vec43
  br i1 %i.bw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !70

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n48 = icmp eq i64 %3, %n.vec43
  br i1 %cmp.n48, label %.loopexit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit87.us.us.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit87.us.us.i.preheader: ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.057139.us.us.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec43, %vec.epilog.middle.block ] ; 6 uses
  %.neg = or disjoint i64 %.057139.us.us.i.ph, 1
  %xtraiter64 = and i64 %3, 1
  %lcmp.mod65.not = icmp eq i64 %xtraiter64, 0
  br i1 %lcmp.mod65.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit87.us.us.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit87.us.us.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit87.us.us.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit87.us.us.i.preheader
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.057139.us.us.i.ph
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !34
  %i.bz = getelementptr inbounds nuw i8, ptr %i.al, i64 %.057139.us.us.i.ph
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !34
  %i.cb = or i8 %i.ca, %i.by
  %i.cc = icmp ne i8 %i.cb, 0
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.057139.us.us.i.ph
  %i.ce = zext i1 %i.cc to i8
  store i8 %i.ce, ptr %i.cd, align 1, !tbaa !37
  %i.cf = or disjoint i64 %.057139.us.us.i.ph, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit87.us.us.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit87.us.us.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit87.us.us.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit87.us.us.i.preheader
  %.057139.us.us.i.unr = phi i64 [ %.057139.us.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit87.us.us.i.preheader ], [ %i.cf, %_ZNK6duckdb15SelectionVector9get_indexEm.exit87.us.us.i.prol ]
  %i.cg = icmp eq i64 %3, %.neg
  br i1 %i.cg, label %.loopexit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit87.us.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit87.us.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit87.us.us.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit87.us.us.i
  %.057139.us.us.i = phi i64 [ %i.cy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit87.us.us.i ], [ %.057139.us.us.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit87.us.us.i.prol.loopexit ] ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.057139.us.us.i
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !34
  %i.cj = getelementptr inbounds nuw i8, ptr %i.al, i64 %.057139.us.us.i
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !34
  %i.cl = or i8 %i.ck, %i.ci
  %i.cm = icmp ne i8 %i.cl, 0
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.057139.us.us.i
  %i.co = zext i1 %i.cm to i8
  store i8 %i.co, ptr %i.cn, align 1, !tbaa !37
  %i.cp = add nuw i64 %.057139.us.us.i, 1         ; 3 uses
end_hunk_1
