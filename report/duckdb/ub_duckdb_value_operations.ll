inline.NumInlined: 306
inline.NumDeleted: 152
begin_hunk_0
%"union.duckdb::Value::Val" = type { %"struct.duckdb::hugeint_t" }
%"struct.duckdb::hugeint_t" = type { i64, i64 }
%"class.duckdb::shared_ptr.0" = type { %"class.std::shared_ptr.1" }
%"class.std::shared_ptr.1" = type { %"class.std::__shared_ptr.2" }
%"class.std::__shared_ptr.2" = type { ptr, %"class.std::__shared_count" }
%"struct.duckdb::uhugeint_t" = type { i64, i64 }
%"class.duckdb::Vector" = type { i8, %"struct.duckdb::LogicalType", ptr, %"struct.duckdb::ValidityMask", %"class.duckdb::shared_ptr.9", %"class.duckdb::shared_ptr.9" }
%"struct.duckdb::ValidityMask" = type { %"struct.duckdb::TemplatedValidityMask" }
%"struct.duckdb::TemplatedValidityMask" = type { ptr, %"class.duckdb::shared_ptr.5", i64 }
%"class.duckdb::shared_ptr.5" = type { %"class.std::shared_ptr.6" }
%"class.std::shared_ptr.6" = type { %"class.std::__shared_ptr.7" }
%"class.std::__shared_ptr.7" = type { ptr, %"class.std::__shared_count" }
%"class.duckdb::shared_ptr.9" = type { %"class.std::shared_ptr.10" }
%"class.std::shared_ptr.10" = type { %"class.std::__shared_ptr.11" }
%"class.std::__shared_ptr.11" = type { ptr, %"class.std::__shared_count" }
%"struct.duckdb::RecursiveUnifiedVectorFormat" = type { %"struct.duckdb::UnifiedVectorFormat", %"class.duckdb::vector", %"struct.duckdb::LogicalType" }
%"struct.duckdb::UnifiedVectorFormat" = type <{ ptr, ptr, %"struct.duckdb::ValidityMask", %"struct.duckdb::SelectionVector", i8, [7 x i8] }>
%"struct.duckdb::SelectionVector" = type { ptr, %"class.duckdb::shared_ptr.13" }
%"class.duckdb::shared_ptr.13" = type { %"class.std::shared_ptr.14" }
%"class.std::shared_ptr.14" = type { %"class.std::__shared_ptr.15" }
%"class.std::__shared_ptr.15" = type { ptr, %"class.std::__shared_count" }
%"class.duckdb::vector" = type { %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<duckdb::RecursiveUnifiedVectorFormat, std::allocator<duckdb::RecursiveUnifiedVectorFormat>>::_Vector_impl" }
%"struct.std::_Vector_base<duckdb::RecursiveUnifiedVectorFormat, std::allocator<duckdb::RecursiveUnifiedVectorFormat>>::_Vector_impl" = type { %"struct.std::_Vector_base<duckdb::RecursiveUnifiedVectorFormat, std::allocator<duckdb::RecursiveUnifiedVectorFormat>>::_Vector_impl_data" }
%"struct.std::_Vector_base<duckdb::RecursiveUnifiedVectorFormat, std::allocator<duckdb::RecursiveUnifiedVectorFormat>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.duckdb::UnifiedVariantVectorData" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.std::vector.26" = type { %"struct.std::_Vector_base.27" }
%"struct.std::_Vector_base.27" = type { %"struct.std::_Vector_base<duckdb::ExceptionFormatValue, std::allocator<duckdb::ExceptionFormatValue>>::_Vector_impl" }
%"struct.std::_Vector_base<duckdb::ExceptionFormatValue, std::allocator<duckdb::ExceptionFormatValue>>::_Vector_impl" = type { %"struct.std::_Vector_base<duckdb::ExceptionFormatValue, std::allocator<duckdb::ExceptionFormatValue>>::_Vector_impl_data" }
%"struct.std::_Vector_base<duckdb::ExceptionFormatValue, std::allocator<duckdb::ExceptionFormatValue>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.duckdb::ExceptionFormatValue" = type { i8, double, %"struct.duckdb::hugeint_t", %"class.std::__cxx11::basic_string" }

$_ZN6duckdb28RecursiveUnifiedVectorFormatD2Ev = comdat any

$_ZN6duckdb6VectorD2Ev = comdat any

$_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm = comdat any

$_ZNSt6vectorIN6duckdb28RecursiveUnifiedVectorFormatESaIS1_EED2Ev = comdat any

$_ZN6duckdb19UnifiedVectorFormatD2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ = comdat any

$_ZN6duckdb9Exception25ConstructMessageRecursiveImJRKmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_ = comdat any

$_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev = comdat any

$_ZN6duckdb9Exception25ConstructMessageRecursiveImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_ = comdat any

$_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZTIN6duckdb17InternalExceptionE = comdat any

$_ZTSN6duckdb17InternalExceptionE = comdat any

$_ZTIN6duckdb9ExceptionE = comdat any

$_ZTSN6duckdb9ExceptionE = comdat any

@.str = private unnamed_addr constant [26 x i8] c"Comparison on NULL values\00", align 1
@_ZTIN6duckdb17InternalExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb17InternalExceptionE, ptr @_ZTIN6duckdb9ExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6duckdb17InternalExceptionE = linkonce_odr constant [29 x i8] c"N6duckdb17InternalExceptionE\00", comdat, align 1
@_ZTIN6duckdb9ExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb9ExceptionE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN6duckdb9ExceptionE = linkonce_odr constant [20 x i8] c"N6duckdb9ExceptionE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.2 = private unnamed_addr constant [40 x i8] c"Unimplemented type for value comparison\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Attempted to access index %ld within vector of size %ld\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb15ValueOperations6EqualsERKNS_5ValueES3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !7, !range !24, !noundef !25
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i8, ptr %i.d, align 8, !range !24
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #18
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !26     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn12 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.g) #17
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.m = tail call fastcc noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_6EqualsEEEbRKNS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1)
  ret i1 %i.m

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn11 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn12, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn11

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_6EqualsEEEbRKNS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::Value", align 8     ; 8 uses
  %3 = alloca %"class.duckdb::Value", align 8     ; 8 uses
  %4 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %5 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %6 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %7 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %8 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %9 = alloca %"class.duckdb::Vector", align 8    ; 8 uses
  %10 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %11 = alloca %"class.duckdb::Vector", align 8   ; 8 uses
  %12 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %13 = alloca %"struct.duckdb::RecursiveUnifiedVectorFormat", align 8 ; 11 uses
  %14 = alloca %"struct.duckdb::RecursiveUnifiedVectorFormat", align 8 ; 11 uses
  %15 = alloca %"struct.duckdb::UnifiedVariantVectorData", align 8 ; 5 uses
  %16 = alloca %"struct.duckdb::UnifiedVariantVectorData", align 8 ; 5 uses
  %17 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %18 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %19 = alloca %"class.duckdb::Value", align 8    ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::allocator", align 1   ; 5 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %26, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.fd, %26 ]    ; 25 uses
  %.tr183 = phi ptr [ %1, %bb.a ], [ %i.fe, %26 ] ; 23 uses
  %i.e = tail call noundef zeroext i1 @_ZNK6duckdb11LogicalTypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %.tr, ptr noundef nonnull align 8 dereferenceable(24) %.tr183)
  br i1 %i.e, label %bb.o, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN6duckdb5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %.tr)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZN6duckdb5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %.tr183)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_ZN6duckdb11LogicalType19ForceMaxLogicalTypeERKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.tr, ptr noundef nonnull align 8 dereferenceable(24) %.tr183)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.f = invoke noundef zeroext i1 @_ZN6duckdb5Value16DefaultTryCastAsERKNS_11LogicalTypeEb(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  br i1 %i.f, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.g = invoke noundef zeroext i1 @_ZN6duckdb5Value16DefaultTryCastAsERKNS_11LogicalTypeEb(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext false)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  br i1 %i.g, label %bb.k, label %bb.l

bb.h:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.i:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %bb.k, %bb.f, %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #17
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %i.k = invoke fastcc noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_6EqualsEEEbRKNS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k, %bb.e, %bb.g
  %.097 = phi i1 [ false, %bb.e ], [ false, %bb.g ], [ %i.k, %bb.k ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.critedge

bb.m:                                             ; preds = %bb.j, %bb.i
  %.pn135 = phi { ptr, i32 } [ %i.j, %bb.j ], [ %i.i, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h
  %.pn135.pn = phi { ptr, i32 } [ %.pn135, %bb.m ], [ %i.h, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.ch

bb.o:                                             ; preds = %tailrecurse
  %i.l = getelementptr inbounds nuw i8, ptr %.tr, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !31
  switch i8 %i.m, label %bb.cc [
    i8 1, label %bb.p
    i8 3, label %bb.q
    i8 5, label %bb.r
    i8 7, label %bb.s
    i8 9, label %bb.t
    i8 2, label %bb.u
    i8 4, label %bb.v
    i8 6, label %bb.w
    i8 8, label %bb.x
    i8 -53, label %bb.y
    i8 -52, label %bb.z
    i8 11, label %bb.aa
    i8 12, label %bb.ab
    i8 21, label %bb.ac
    i8 -56, label %bb.af
    i8 24, label %bb.ai
    i8 23, label %bb.bx
    i8 29, label %bb.ca
  ]

bb.p:                                             ; preds = %bb.o
  %i.n = tail call noundef zeroext i1 @_ZNK6duckdb5Value14GetValueUnsafeIbEET_v(ptr noundef nonnull align 8 dereferenceable(64) %.tr)
  %i.o = tail call noundef zeroext i1 @_ZNK6duckdb5Value14GetValueUnsafeIbEET_v(ptr noundef nonnull align 8 dereferenceable(64) %.tr183)
  %i.p = xor i1 %i.n, %i.o
  %i.q = xor i1 %i.p, true
  br label %.critedge

bb.q:                                             ; preds = %bb.o
  %i.r = tail call noundef signext i8 @_ZNK6duckdb5Value14GetValueUnsafeIaEET_v(ptr noundef nonnull align 8 dereferenceable(64) %.tr)
  %i.s = tail call noundef signext i8 @_ZNK6duckdb5Value14GetValueUnsafeIaEET_v(ptr noundef nonnull align 8 dereferenceable(64) %.tr183)
  %i.t = icmp eq i8 %i.r, %i.s
  br label %.critedge

bb.r:                                             ; preds = %bb.o
  %i.u = tail call noundef signext i16 @_ZNK6duckdb5Value14GetValueUnsafeIsEET_v(ptr noundef nonnull align 8 dereferenceable(64) %.tr)
  %i.v = tail call noundef signext i16 @_ZNK6duckdb5Value14GetValueUnsafeIsEET_v(ptr noundef nonnull align 8 dereferenceable(64) %.tr183)
  %i.w = icmp eq i16 %i.u, %i.v
  br label %.critedge

bb.s:                                             ; preds = %bb.o
  %i.x = tail call noundef i32 @_ZNK6duckdb5Value14GetValueUnsafeIiEET_v(ptr noundef nonnull align 8 dereferenceable(64) %.tr)
  %i.y = tail call noundef i32 @_ZNK6duckdb5Value14GetValueUnsafeIiEET_v(ptr noundef nonnull align 8 dereferenceable(64) %.tr183)
  %i.z = icmp eq i32 %i.x, %i.y
  br label %.critedge

bb.t:                                             ; preds = %bb.o
  %i.aa = tail call noundef i64 @_ZNK6duckdb5Value14GetValueUnsafeIlEET_v(ptr noundef nonnull align 8 dereferenceable(64) %.tr)
  %i.ab = tail call noundef i64 @_ZNK6duckdb5Value14GetValueUnsafeIlEET_v(ptr noundef nonnull align 8 dereferenceable(64) %.tr183)
  %i.ac = icmp eq i64 %i.aa, %i.ab
  br label %.critedge

bb.u:                                             ; preds = %bb.o
  %i.ad = tail call noundef zeroext i8 @_ZNK6duckdb5Value14GetValueUnsafeIhEET_v(ptr noundef nonnull align 8 dereferenceable(64) %.tr)
  %i.ae = tail call noundef zeroext i8 @_ZNK6duckdb5Value14GetValueUnsafeIhEET_v(ptr noundef nonnull align 8 dereferenceable(64) %.tr183)
  %i.af = icmp eq i8 %i.ad, %i.ae
  br label %.critedge

bb.v:                                             ; preds = %bb.o
  %i.ag = tail call noundef zeroext i16 @_ZNK6duckdb5Value14GetValueUnsafeItEET_v(ptr noundef nonnull align 8 dereferenceable(64) %.tr)
  %i.ah = tail call noundef zeroext i16 @_ZNK6duckdb5Value14GetValueUnsafeItEET_v(ptr noundef nonnull align 8 dereferenceable(64) %.tr183)
  %i.ai = icmp eq i16 %i.ag, %i.ah
  br label %.critedge

bb.w:                                             ; preds = %bb.o
  %i.aj = tail call noundef i32 @_ZNK6duckdb5Value14GetValueUnsafeIjEET_v(ptr noundef nonnull align 8 dereferenceable(64) %.tr)
  %i.ak = tail call noundef i32 @_ZNK6duckdb5Value14GetValueUnsafeIjEET_v(ptr noundef nonnull align 8 dereferenceable(64) %.tr183)
  %i.al = icmp eq i32 %i.aj, %i.ak
  br label %.critedge

bb.x:                                             ; preds = %bb.o
  %i.am = tail call noundef i64 @_ZNK6duckdb5Value14GetValueUnsafeImEET_v(ptr noundef nonnull align 8 dereferenceable(64) %.tr)
  %i.an = tail call noundef i64 @_ZNK6duckdb5Value14GetValueUnsafeImEET_v(ptr noundef nonnull align 8 dereferenceable(64) %.tr183)
  %i.ao = icmp eq i64 %i.am, %i.an
  br label %.critedge

bb.y:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.ap = tail call { i64, i64 } @_ZNK6duckdb5Value14GetValueUnsafeINS_10uhugeint_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %.tr) ; 2 uses
  %i.aq = extractvalue { i64, i64 } %i.ap, 0
  store i64 %i.aq, ptr %5, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.as = extractvalue { i64, i64 } %i.ap, 1
  store i64 %i.as, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.at = tail call { i64, i64 } @_ZNK6duckdb5Value14GetValueUnsafeINS_10uhugeint_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %.tr183) ; 2 uses
  %i.au = extractvalue { i64, i64 } %i.at, 0
  store i64 %i.au, ptr %6, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aw = extractvalue { i64, i64 } %i.at, 1
  store i64 %i.aw, ptr %i.av, align 8
  %i.ax = call noundef zeroext i1 @_ZNK6duckdb10uhugeint_teqERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %.critedge

bb.z:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.ay = tail call { i64, i64 } @_ZNK6duckdb5Value14GetValueUnsafeINS_9hugeint_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %.tr) ; 2 uses
  %i.az = extractvalue { i64, i64 } %i.ay, 0
  store i64 %i.az, ptr %7, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bb = extractvalue { i64, i64 } %i.ay, 1
  store i64 %i.bb, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.bc = tail call { i64, i64 } @_ZNK6duckdb5Value14GetValueUnsafeINS_9hugeint_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %.tr183) ; 2 uses
  %i.bd = extractvalue { i64, i64 } %i.bc, 0
  store i64 %i.bd, ptr %8, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bf = extractvalue { i64, i64 } %i.bc, 1
  store i64 %i.bf, ptr %i.be, align 8
  %i.bg = call noundef zeroext i1 @_ZNK6duckdb9hugeint_teqERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.critedge

bb.aa:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.bh = tail call noundef float @_ZNK6duckdb5Value14GetValueUnsafeIfEET_v(ptr noundef nonnull align 8 dereferenceable(64) %.tr)
  store float %i.bh, ptr %i.a, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.bi = tail call noundef float @_ZNK6duckdb5Value14GetValueUnsafeIfEET_v(ptr noundef nonnull align 8 dereferenceable(64) %.tr183)
  store float %i.bi, ptr %i.b, align 4, !tbaa !32
  %i.bj = call noundef zeroext i1 @_ZN6duckdb6Equals9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_6EqualsEEEbRKNS_5ValueES5_:bb.a
bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  invoke void @_ZN6duckdb24UnifiedVariantVectorDataC1ERKNS_28RecursiveUnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(160) %16, ptr noundef nonnull align 8 dereferenceable(128) %14)
          to label %bb.au unwind label %bb.bg

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  invoke void @_ZN6duckdb12VariantUtils21ConvertVariantToValueERKNS_24UnifiedVariantVectorDataEmj(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %17, ptr noundef nonnull align 8 dereferenceable(160) %15, i64 noundef 0, i32 noundef 0)
          to label %bb.av unwind label %bb.bh

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  invoke void @_ZN6duckdb12VariantUtils21ConvertVariantToValueERKNS_24UnifiedVariantVectorDataEmj(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %18, ptr noundef nonnull align 8 dereferenceable(160) %16, i64 noundef 0, i32 noundef 0)
          to label %bb.aw unwind label %bb.bi

bb.aw:                                            ; preds = %bb.av
  %i.di = invoke fastcc noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_6EqualsEEEbRKNS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(64) %17, ptr noundef nonnull align 8 dereferenceable(64) %18)
          to label %bb.ax unwind label %bb.bj

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %18) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @_ZN6duckdb28RecursiveUnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @_ZN6duckdb28RecursiveUnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %.critedge

bb.ay:                                            ; preds = %bb.aj
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #17
  br label %bb.br

bb.az:                                            ; preds = %bb.ak
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.ba:                                            ; preds = %bb.al
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #17
  br label %bb.bq

bb.bb:                                            ; preds = %bb.an, %bb.am
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bc:                                            ; preds = %bb.ao
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bd:                                            ; preds = %_ZN6duckdb28RecursiveUnifiedVectorFormatC2Ev.exit
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %.body375

bb.be:                                            ; preds = %bb.ar, %_ZN6duckdb28RecursiveUnifiedVectorFormatC2Ev.exit377
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bf:                                            ; preds = %bb.as
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bg:                                            ; preds = %bb.at
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bh:                                            ; preds = %bb.au
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bi:                                            ; preds = %bb.av
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %bb.aw
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %18) #17
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn = phi { ptr, i32 } [ %i.du, %bb.bj ], [ %i.dt, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %17) #17
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bh
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bk ], [ %i.ds, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bg
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bl ], [ %i.dr, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bf
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.bm ], [ %i.dq, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.be
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.bn ], [ %i.dp, %bb.be ]
  call void @_ZN6duckdb28RecursiveUnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %14) #17
  br label %.body375

.body375:                                         ; preds = %bb.bd, %bb.aq, %bb.bo
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.bo ], [ %i.do, %bb.bd ], [ %i.dh, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @_ZN6duckdb28RecursiveUnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %13) #17
  br label %.body

.body:                                            ; preds = %bb.bc, %bb.ap, %.body375
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %.body375 ], [ %i.dn, %bb.bc ], [ %i.de, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.bp

bb.bp:                                            ; preds = %.body, %bb.bb
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %i.dm, %bb.bb ]
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %11) #17
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.ba, %bb.az
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bp ], [ %i.dl, %bb.ba ], [ %i.dk, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %9) #17
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.ay
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bq ], [ %i.dj, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.ch

bb.bs:                                            ; preds = %bb.ai
  %i.dv = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11StructValue11GetChildrenERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64) %.tr) ; 6 uses
  %i.dw = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11StructValue11GetChildrenERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64) %.tr183) ; 3 uses
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !38 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !38 ; 2 uses
  %i.ea = icmp eq ptr %i.dx, %i.dz
  br i1 %i.ea, label %bb.bt, label %.preheader

.preheader:                                       ; preds = %bb.bs
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.dx to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %.not250 = icmp eq i64 %i.ed, 64
  br i1 %.not250, label %._crit_edge, label %.lr.ph

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  call void @_ZN6duckdb5Value7BOOLEANEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %19, i1 noundef zeroext true)
  %i.ee = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.ef = load i8, ptr %i.ee, align 8, !tbaa !7, !range !24, !noundef !25
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_6EqualsEEEbRKNS_5ValueES6_.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.eh = invoke fastcc noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_6EqualsEEEbRKNS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(64) %19, ptr noundef nonnull align 8 dereferenceable(64) %19)
          to label %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_6EqualsEEEbRKNS_5ValueES6_.exit unwind label %bb.bv, !inline_history !40

_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_6EqualsEEEbRKNS_5ValueES6_.exit: ; preds = %bb.bu, %bb.bt
  %.0.i = phi i1 [ true, %bb.bt ], [ %i.eh, %bb.bu ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  br label %.critedge

bb.bv:                                            ; preds = %bb.bu
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  br label %bb.ch

.lr.ph:                                           ; preds = %.preheader, %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit140.thread
  %.0122234 = phi i64 [ %i.eu, %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit140.thread ], [ 0, %.preheader ] ; 5 uses
  %i.ej = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, i64 noundef %.0122234) ; 0 uses
  %i.ek = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i64 noundef %.0122234) ; 0 uses
  %i.el = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, i64 noundef %.0122234) ; 2 uses
  %i.em = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i64 noundef %.0122234) ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.eo = load i8, ptr %i.en, align 8, !tbaa !7, !range !24, !noundef !25
  %i.ep = trunc nuw i8 %i.eo to i1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.er = load i8, ptr %i.eq, align 8, !tbaa !7, !range !24 ; 2 uses
  br i1 %i.ep, label %22, label %bb.bw

22:                                               ; preds = %.lr.ph
  %23 = trunc nuw i8 %i.er to i1
  br i1 %23, label %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit140.thread, label %.critedge

bb.bw:                                            ; preds = %.lr.ph
  %i.es = icmp eq i8 %i.er, 0
  br i1 %i.es, label %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit140, label %.critedge

_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit140: ; preds = %bb.bw
  %i.et = tail call fastcc noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_6EqualsEEEbRKNS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(64) %i.el, ptr noundef nonnull align 8 dereferenceable(64) %i.em), !inline_history !41
  br i1 %i.et, label %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit140.thread, label %.critedge

_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit140.thread: ; preds = %22, %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit140
  %i.eu = add nuw i64 %.0122234, 1                ; 3 uses
  %i.ev = load ptr, ptr %i.dy, align 8, !tbaa !42
  %i.ew = load ptr, ptr %i.dv, align 8, !tbaa !44
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = ashr exact i64 %i.ez, 6
  %i.fb = add nsw i64 %i.fa, -1
  %i.fc = icmp ult i64 %i.eu, %i.fb
  br i1 %i.fc, label %.lr.ph, label %._crit_edge, !llvm.loop !45

._crit_edge:                                      ; preds = %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit140.thread, %.preheader
  %.0122.lcssa = phi i64 [ 0, %.preheader ], [ %i.eu, %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit140.thread ] ; 2 uses
  %i.fd = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, i64 noundef %.0122.lcssa) ; 2 uses
  %i.fe = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i64 noundef %.0122.lcssa) ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.fg = load i8, ptr %i.ff, align 8, !tbaa !7, !range !24, !noundef !25
  %i.fh = trunc nuw i8 %i.fg to i1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fj = load i8, ptr %i.fi, align 8, !tbaa !7, !range !24 ; 2 uses
  br i1 %i.fh, label %24, label %26

24:                                               ; preds = %._crit_edge
  %25 = trunc nuw i8 %i.fj to i1
  br label %.critedge

26:                                               ; preds = %._crit_edge
  %27 = icmp eq i8 %i.fj, 0
  br i1 %27, label %tailrecurse, label %.critedge

bb.bx:                                            ; preds = %bb.o
  %i.fk = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb9ListValue11GetChildrenERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64) %.tr) ; 5 uses
  %i.fl = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb9ListValue11GetChildrenERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64) %.tr183) ; 7 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !42
  %i.fo = load ptr, ptr %i.fk, align 8, !tbaa !44
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = sub i64 %i.fp, %i.fq                    ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 0
  %.pre487 = load ptr, ptr %i.fl, align 8, !tbaa !44 ; 3 uses
  br i1 %i.fs, label %._crit_edge246, label %.lr.ph245

.lr.ph245:                                        ; preds = %bb.bx
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !42
  %i.fv = icmp eq ptr %i.fu, %.pre487
  br i1 %i.fv, label %._crit_edge246, label %.lr.ph431

bb.by:                                            ; preds = %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit144.thread
  %i.fw = load ptr, ptr %i.ft, align 8, !tbaa !42
  %i.fx = load ptr, ptr %i.fl, align 8, !tbaa !44 ; 2 uses
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = ashr exact i64 %i.ga, 6
  %i.gc = icmp eq i64 %i.gv, %i.gb
  br i1 %i.gc, label %._crit_edge246, label %.lr.ph431, !llvm.loop !47

_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit144.thread.._crit_edge246.loopexit_crit_edge: ; preds = %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit144.thread
  %.pre = load ptr, ptr %i.fl, align 8, !tbaa !44
  br label %._crit_edge246, !llvm.loop !47

._crit_edge246:                                   ; preds = %bb.by, %.lr.ph245, %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit144.thread.._crit_edge246.loopexit_crit_edge, %bb.bx
  %i.gd = phi ptr [ %.pre487, %bb.bx ], [ %.pre, %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit144.thread.._crit_edge246.loopexit_crit_edge ], [ %.pre487, %.lr.ph245 ], [ %i.fx, %bb.by ]
  %.lcssa = phi i64 [ 0, %bb.bx ], [ %i.ha, %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit144.thread.._crit_edge246.loopexit_crit_edge ], [ %i.fr, %.lr.ph245 ], [ %i.ha, %bb.by ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !42
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  %i.gj = icmp eq i64 %.lcssa, %i.gi
  br label %.critedge

.lr.ph431:                                        ; preds = %.lr.ph245, %bb.by
  %.0106243430 = phi i64 [ %i.gv, %bb.by ], [ 0, %.lr.ph245 ] ; 5 uses
  %i.gk = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fk, i64 noundef %.0106243430) ; 0 uses
  %i.gl = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fl, i64 noundef %.0106243430) ; 0 uses
  %i.gm = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fk, i64 noundef %.0106243430) ; 2 uses
  %i.gn = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fl, i64 noundef %.0106243430) ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.gp = load i8, ptr %i.go, align 8, !tbaa !7, !range !24, !noundef !25
  %i.gq = trunc nuw i8 %i.gp to i1
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gs = load i8, ptr %i.gr, align 8, !tbaa !7, !range !24 ; 2 uses
  br i1 %i.gq, label %28, label %bb.bz

28:                                               ; preds = %.lr.ph431
  %29 = trunc nuw i8 %i.gs to i1
  br i1 %29, label %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit144.thread, label %.critedge

bb.bz:                                            ; preds = %.lr.ph431
  %i.gt = icmp eq i8 %i.gs, 0
  br i1 %i.gt, label %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit144, label %.critedge

_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit144: ; preds = %bb.bz
  %i.gu = tail call fastcc noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_6EqualsEEEbRKNS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(64) %i.gm, ptr noundef nonnull align 8 dereferenceable(64) %i.gn), !inline_history !41
  br i1 %i.gu, label %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit144.thread, label %.critedge

_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit144.thread: ; preds = %28, %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit144
  %i.gv = add i64 %.0106243430, 1                 ; 3 uses
  %i.gw = load ptr, ptr %i.fm, align 8, !tbaa !42
  %i.gx = load ptr, ptr %i.fk, align 8, !tbaa !44
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = sub i64 %i.gy, %i.gz                    ; 3 uses
  %i.hb = ashr exact i64 %i.ha, 6
  %i.hc = icmp eq i64 %i.gv, %i.hb
  br i1 %i.hc, label %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit144.thread.._crit_edge246.loopexit_crit_edge, label %bb.by, !llvm.loop !47

bb.ca:                                            ; preds = %bb.o
  %i.hd = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb10ArrayValue11GetChildrenERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64) %.tr) ; 5 uses
  %i.he = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb10ArrayValue11GetChildrenERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64) %.tr183) ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !42
  %i.hh = load ptr, ptr %i.hd, align 8, !tbaa !44
  %.not.not235.not = icmp eq ptr %i.hg, %i.hh
  br i1 %.not.not235.not, label %.critedge, label %.lr.ph238

.lr.ph238:                                        ; preds = %bb.ca, %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit146.thread
  %.096236 = phi i64 [ %i.ht, %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit146.thread ], [ 0, %bb.ca ] ; 5 uses
  %i.hi = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hd, i64 noundef %.096236) ; 0 uses
  %i.hj = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.he, i64 noundef %.096236) ; 0 uses
  %i.hk = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hd, i64 noundef %.096236) ; 2 uses
  %i.hl = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.he, i64 noundef %.096236) ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hn = load i8, ptr %i.hm, align 8, !tbaa !7, !range !24, !noundef !25
  %i.ho = trunc nuw i8 %i.hn to i1
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hq = load i8, ptr %i.hp, align 8, !tbaa !7, !range !24 ; 2 uses
  br i1 %i.ho, label %30, label %bb.cb

30:                                               ; preds = %.lr.ph238
  %31 = trunc nuw i8 %i.hq to i1
  br i1 %31, label %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit146.thread, label %.critedge

bb.cb:                                            ; preds = %.lr.ph238
  %i.hr = icmp eq i8 %i.hq, 0
  br i1 %i.hr, label %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit146, label %.critedge

_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit146: ; preds = %bb.cb
  %i.hs = tail call fastcc noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_6EqualsEEEbRKNS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(64) %i.hk, ptr noundef nonnull align 8 dereferenceable(64) %i.hl), !inline_history !41
  br i1 %i.hs, label %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit146.thread, label %.critedge

_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit146.thread: ; preds = %30, %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit146
  %i.ht = add nuw i64 %.096236, 1                 ; 2 uses
  %i.hu = load ptr, ptr %i.hf, align 8, !tbaa !42
  %i.hv = load ptr, ptr %i.hd, align 8, !tbaa !44
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = sub i64 %i.hw, %i.hx
  %i.hz = ashr exact i64 %i.hy, 6
  %.not.not = icmp ult i64 %i.ht, %i.hz
  br i1 %.not.not, label %.lr.ph238, label %.critedge, !llvm.loop !48

bb.cc:                                            ; preds = %bb.o
  %i.ia = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.cd unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ia, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.ce unwind label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  invoke void @__cxa_throw(ptr nonnull %i.ia, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #18
          to label %bb.ci unwind label %bb.cf

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.cc
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  br label %bb.cg

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.0 = phi i1 [ false, %bb.ce ], [ true, %bb.cd ] ; 2 uses
  %i.ic = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.id = load ptr, ptr %20, align 8, !tbaa !26   ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.if = icmp eq ptr %i.id, %i.ie
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.cf
  call void @_ZdlPv(ptr noundef %i.id) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  br i1 %.0, label %bb.cg, label %bb.ch

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  br i1 %.0, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn133177 = phi { ptr, i32 } [ %i.ib, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ic, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ic, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.ia) #17
  br label %bb.ch

.critedge:                                        ; preds = %26, %22, %bb.bw, %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit140, %30, %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit146, %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit146.thread, %bb.cb, %28, %bb.bz, %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit144, %24, %bb.ca, %bb.ah, %bb.ag, %bb.af, %bb.ae, %._crit_edge.i.i.i, %bb.ad, %._crit_edge246, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_6EqualsEEEbRKNS_5ValueES6_.exit, %bb.ax, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.l
  %.6 = phi i1 [ %.097, %bb.l ], [ %i.q, %bb.p ], [ %i.t, %bb.q ], [ %i.w, %bb.r ], [ %i.z, %bb.s ], [ %i.ac, %bb.t ], [ %i.af, %bb.u ], [ %i.ai, %bb.v ], [ %i.al, %bb.w ], [ %i.ao, %bb.x ], [ %i.ax, %bb.y ], [ %i.bg, %bb.z ], [ %i.bj, %bb.aa ], [ %i.bm, %bb.ab ], [ true, %bb.ca ], [ false, %._crit_edge.i.i.i ], [ %i.di, %bb.ax ], [ %i.cz, %bb.ah ], [ true, %bb.ag ], [ %.0.i, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_6EqualsEEEbRKNS_5ValueES6_.exit ], [ %25, %24 ], [ %i.gj, %._crit_edge246 ], [ false, %28 ], [ true, %bb.ad ], [ %i.co, %bb.ae ], [ false, %bb.af ], [ false, %30 ], [ false, %22 ], [ false, %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit144 ], [ false, %bb.bz ], [ true, %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit146.thread ], [ false, %bb.cb ], [ false, %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit146 ], [ false, %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit140 ], [ false, %bb.bw ], [ false, %26 ]
  ret i1 %.6

bb.ch:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.cg, %bb.bv, %bb.br, %bb.n
  %.pn135.pn.pn = phi { ptr, i32 } [ %.pn135.pn, %bb.n ], [ %.pn133177, %bb.cg ], [ %i.ic, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.br ], [ %i.ei, %bb.bv ], [ %i.ic, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn135.pn.pn

bb.ci:                                            ; preds = %bb.ce
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb15ValueOperations9NotEqualsERKNS_5ValueES3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6duckdb15ValueOperations6EqualsERKNS_5ValueES3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.b = xor i1 %i.a, true
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb15ValueOperations11GreaterThanERKNS_5ValueES3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !7, !range !24, !noundef !25
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i8, ptr %i.d, align 8, !range !24
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #18
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !26     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn12 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.g) #17
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.m = tail call fastcc noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_11GreaterThanEEEbRKNS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1)
  ret i1 %i.m

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn11 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn12, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn11

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_11GreaterThanEEEbRKNS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::Value", align 8     ; 8 uses
  %3 = alloca %"class.duckdb::Value", align 8     ; 8 uses
  %4 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %5 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %6 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %7 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %8 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %9 = alloca %"class.duckdb::Vector", align 8    ; 8 uses
  %10 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %11 = alloca %"class.duckdb::Vector", align 8   ; 8 uses
  %12 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %13 = alloca %"struct.duckdb::RecursiveUnifiedVectorFormat", align 8 ; 11 uses
  %14 = alloca %"struct.duckdb::RecursiveUnifiedVectorFormat", align 8 ; 11 uses
  %15 = alloca %"struct.duckdb::UnifiedVariantVectorData", align 8 ; 5 uses
  %16 = alloca %"struct.duckdb::UnifiedVariantVectorData", align 8 ; 5 uses
  %17 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %18 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %19 = alloca %"class.duckdb::Value", align 8    ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::allocator", align 1   ; 5 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %.thread182, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.fj, %.thread182 ] ; 25 uses
  %.tr206 = phi ptr [ %1, %bb.a ], [ %i.fk, %.thread182 ] ; 23 uses
  %i.e = tail call noundef zeroext i1 @_ZNK6duckdb11LogicalTypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %.tr, ptr noundef nonnull align 8 dereferenceable(24) %.tr206)
  br i1 %i.e, label %bb.o, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN6duckdb5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %.tr)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZN6duckdb5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %.tr206)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_ZN6duckdb11LogicalType19ForceMaxLogicalTypeERKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.tr, ptr noundef nonnull align 8 dereferenceable(24) %.tr206)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.f = invoke noundef zeroext i1 @_ZN6duckdb5Value16DefaultTryCastAsERKNS_11LogicalTypeEb(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  br i1 %i.f, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.g = invoke noundef zeroext i1 @_ZN6duckdb5Value16DefaultTryCastAsERKNS_11LogicalTypeEb(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext false)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  br i1 %i.g, label %bb.k, label %bb.l

bb.h:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.i:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %bb.k, %bb.f, %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #17
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %i.k = invoke fastcc noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_11GreaterThanEEEbRKNS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k, %bb.e, %bb.g
  %.097 = phi i1 [ false, %bb.e ], [ false, %bb.g ], [ %i.k, %bb.k ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit

bb.m:                                             ; preds = %bb.j, %bb.i
  %.pn135 = phi { ptr, i32 } [ %i.j, %bb.j ], [ %i.i, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h
  %.pn135.pn = phi { ptr, i32 } [ %.pn135, %bb.m ], [ %i.h, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.ck

bb.o:                                             ; preds = %tailrecurse
  %i.l = getelementptr inbounds nuw i8, ptr %.tr, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !31
  switch i8 %i.m, label %bb.cf [
    i8 1, label %bb.p
end_hunk_1
begin_hunk_2_@_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_11GreaterThanEEEbRKNS_5ValueES5_:bb.a
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = sub i64 %i.fw, %i.fx                    ; 2 uses
  %i.fz = icmp eq i64 %i.fy, 0
  %.pre518 = load ptr, ptr %i.fs, align 8, !tbaa !44 ; 3 uses
  br i1 %i.fz, label %._crit_edge277, label %.lr.ph276

.lr.ph276:                                        ; preds = %bb.by
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !42
  %i.gc = icmp eq ptr %i.gb, %.pre518
  br i1 %i.gc, label %._crit_edge277, label %.lr.ph460

bb.bz:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit143.thread
  %i.gd = load ptr, ptr %i.ga, align 8, !tbaa !42
  %i.ge = load ptr, ptr %i.fs, align 8, !tbaa !44 ; 2 uses
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = ashr exact i64 %i.gh, 6
  %i.gj = icmp eq i64 %i.hj, %i.gi
  br i1 %i.gj, label %._crit_edge277, label %.lr.ph460, !llvm.loop !53

_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit143.thread.._crit_edge277.loopexit_crit_edge: ; preds = %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit143.thread
  %.pre = load ptr, ptr %i.fs, align 8, !tbaa !44
  br label %._crit_edge277, !llvm.loop !53

._crit_edge277:                                   ; preds = %bb.bz, %.lr.ph276, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit143.thread.._crit_edge277.loopexit_crit_edge, %bb.by
  %i.gk = phi ptr [ %.pre518, %bb.by ], [ %.pre, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit143.thread.._crit_edge277.loopexit_crit_edge ], [ %.pre518, %.lr.ph276 ], [ %i.ge, %bb.bz ]
  %.lcssa = phi i64 [ 0, %bb.by ], [ %i.ho, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit143.thread.._crit_edge277.loopexit_crit_edge ], [ %i.fy, %.lr.ph276 ], [ %i.ho, %bb.bz ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !42
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = ptrtoint ptr %i.gk to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = icmp ugt i64 %.lcssa, %i.gp
  br label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit

.lr.ph460:                                        ; preds = %.lr.ph276, %bb.bz
  %.0106274459 = phi i64 [ %i.hj, %bb.bz ], [ 0, %.lr.ph276 ] ; 5 uses
  %i.gr = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, i64 noundef %.0106274459) ; 2 uses
  %i.gs = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fs, i64 noundef %.0106274459) ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %i.gu = load i8, ptr %i.gt, align 8, !tbaa !7, !range !24, !noundef !25
  %i.gv = trunc nuw i8 %i.gu to i1
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.gx = load i8, ptr %i.gw, align 8, !tbaa !7, !range !24, !noundef !25
  %i.gy = trunc nuw i8 %i.gx to i1                ; 2 uses
  br i1 %i.gv, label %bb.ca, label %.thread184

bb.ca:                                            ; preds = %.lr.ph460
  br i1 %i.gy, label %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit153.thread, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit

.thread184:                                       ; preds = %.lr.ph460
  br i1 %i.gy, label %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit153.thread, label %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit153

_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit153: ; preds = %.thread184
  %i.gz = tail call fastcc noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_11GreaterThanEEEbRKNS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(64) %i.gr, ptr noundef nonnull align 8 dereferenceable(64) %i.gs), !inline_history !50
  br i1 %i.gz, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit, label %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit153.thread

_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit153.thread: ; preds = %.thread184, %bb.ca, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit153
  %i.ha = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, i64 noundef %.0106274459) ; 2 uses
  %i.hb = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fs, i64 noundef %.0106274459) ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hd = load i8, ptr %i.hc, align 8, !tbaa !7, !range !24, !noundef !25 ; 2 uses
  %i.he = trunc nuw i8 %i.hd to i1
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %i.hg = load i8, ptr %i.hf, align 8, !range !24 ; 2 uses
  %i.hh = trunc nuw i8 %i.hg to i1
  %or.cond.i.i140 = select i1 %i.he, i1 %i.hh, i1 false
  br i1 %or.cond.i.i140, label %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit143.thread, label %bb.cb

bb.cb:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit153.thread
  %.not.i.i141 = icmp eq i8 %i.hd, %i.hg
  br i1 %.not.i.i141, label %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit143, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit

_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit143: ; preds = %bb.cb
  %i.hi = tail call fastcc noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_6EqualsEEEbRKNS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(64) %i.ha, ptr noundef nonnull align 8 dereferenceable(64) %i.hb), !inline_history !51
  br i1 %i.hi, label %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit143.thread, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit

_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit143.thread: ; preds = %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit153.thread, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit143
  %i.hj = add i64 %.0106274459, 1                 ; 3 uses
  %i.hk = load ptr, ptr %i.ft, align 8, !tbaa !42
  %i.hl = load ptr, ptr %i.fr, align 8, !tbaa !44
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = sub i64 %i.hm, %i.hn                    ; 3 uses
  %i.hp = ashr exact i64 %i.ho, 6
  %i.hq = icmp eq i64 %i.hj, %i.hp
  br i1 %i.hq, label %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit143.thread.._crit_edge277.loopexit_crit_edge, label %bb.bz, !llvm.loop !53

bb.cc:                                            ; preds = %bb.o
  %i.hr = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb10ArrayValue11GetChildrenERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64) %.tr) ; 5 uses
  %i.hs = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb10ArrayValue11GetChildrenERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64) %.tr206) ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !42
  %i.hv = load ptr, ptr %i.hr, align 8, !tbaa !44
  %.not263 = icmp eq ptr %i.hu, %i.hv
  br i1 %.not263, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit, label %.lr.ph266

.lr.ph266:                                        ; preds = %bb.cc, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit147.thread
  %.096264 = phi i64 [ %i.io, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit147.thread ], [ 0, %bb.cc ] ; 5 uses
  %i.hw = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hr, i64 noundef %.096264) ; 2 uses
  %i.hx = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hs, i64 noundef %.096264) ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.hz = load i8, ptr %i.hy, align 8, !tbaa !7, !range !24, !noundef !25
  %i.ia = trunc nuw i8 %i.hz to i1
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.ic = load i8, ptr %i.ib, align 8, !tbaa !7, !range !24, !noundef !25
  %i.id = trunc nuw i8 %i.ic to i1                ; 2 uses
  br i1 %i.ia, label %bb.cd, label %.thread192

bb.cd:                                            ; preds = %.lr.ph266
  br i1 %i.id, label %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit155.thread, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit

.thread192:                                       ; preds = %.lr.ph266
  br i1 %i.id, label %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit155.thread, label %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit155

_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit155: ; preds = %.thread192
  %i.ie = tail call fastcc noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_11GreaterThanEEEbRKNS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(64) %i.hw, ptr noundef nonnull align 8 dereferenceable(64) %i.hx), !inline_history !50
  br i1 %i.ie, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit, label %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit155.thread

_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit155.thread: ; preds = %.thread192, %bb.cd, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit155
  %i.if = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hr, i64 noundef %.096264) ; 2 uses
  %i.ig = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hs, i64 noundef %.096264) ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ii = load i8, ptr %i.ih, align 8, !tbaa !7, !range !24, !noundef !25 ; 2 uses
  %i.ij = trunc nuw i8 %i.ii to i1
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.il = load i8, ptr %i.ik, align 8, !range !24 ; 2 uses
  %i.im = trunc nuw i8 %i.il to i1
  %or.cond.i.i144 = select i1 %i.ij, i1 %i.im, i1 false
  br i1 %or.cond.i.i144, label %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit147.thread, label %bb.ce

bb.ce:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit155.thread
  %.not.i.i145 = icmp eq i8 %i.ii, %i.il
  br i1 %.not.i.i145, label %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit147, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit

_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit147: ; preds = %bb.ce
  %i.in = tail call fastcc noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_6EqualsEEEbRKNS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(64) %i.if, ptr noundef nonnull align 8 dereferenceable(64) %i.ig), !inline_history !51
  br i1 %i.in, label %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit147.thread, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit

_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit147.thread: ; preds = %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit155.thread, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit147
  %i.io = add nuw i64 %.096264, 1                 ; 2 uses
  %i.ip = load ptr, ptr %i.ht, align 8, !tbaa !42
  %i.iq = load ptr, ptr %i.hr, align 8, !tbaa !44
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = sub i64 %i.ir, %i.is
  %i.iu = ashr exact i64 %i.it, 6
  %.not.not = icmp ult i64 %i.io, %i.iu
  br i1 %.not.not, label %.lr.ph266, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit, !llvm.loop !54

bb.cf:                                            ; preds = %bb.o
  %i.iv = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.cg unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.iv, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.ch unwind label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  invoke void @__cxa_throw(ptr nonnull %i.iv, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #18
          to label %bb.cl unwind label %bb.ci

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.cf
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  br label %bb.cj

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.0 = phi i1 [ false, %bb.ch ], [ true, %bb.cg ] ; 2 uses
  %i.ix = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.iy = load ptr, ptr %20, align 8, !tbaa !26   ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.ja = icmp eq ptr %i.iy, %i.iz
  br i1 %i.ja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ci
  call void @_ZdlPv(ptr noundef %i.iy) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  br i1 %.0, label %bb.cj, label %bb.ck

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  br i1 %.0, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn133202 = phi { ptr, i32 } [ %i.iw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ix, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ix, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.iv) #17
  br label %bb.ck

_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit: ; preds = %.thread182, %bb.bw, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit149, %bb.bv, %bb.ce, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit147, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit155, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit147.thread, %bb.cd, %bb.cb, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit153, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit143, %bb.ca, %bb.bx, %bb.cc, %bb.af, %bb.ae, %bb.ad, %bb.ac, %._crit_edge277, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit, %bb.aw, %_ZN6duckdb11GreaterThan9OperationINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SA_.exit, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.l
  %.6 = phi i1 [ %.097, %bb.l ], [ %i.p, %bb.p ], [ %i.s, %bb.q ], [ %i.v, %bb.r ], [ %i.y, %bb.s ], [ %i.ab, %bb.t ], [ %i.ae, %bb.u ], [ %i.ah, %bb.v ], [ %i.ak, %bb.w ], [ %i.an, %bb.x ], [ %i.aw, %bb.y ], [ %i.bf, %bb.z ], [ %i.bi, %bb.aa ], [ %i.bl, %bb.ab ], [ true, %bb.cd ], [ %i.cy, %_ZN6duckdb11GreaterThan9OperationINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SA_.exit ], [ %i.dh, %bb.aw ], [ true, %bb.cc ], [ true, %bb.ae ], [ %.0.i, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit ], [ true, %bb.bv ], [ %not., %bb.bx ], [ %i.gq, %._crit_edge277 ], [ true, %bb.ca ], [ %spec.select.i.i.i, %bb.af ], [ true, %bb.ac ], [ false, %bb.ad ], [ true, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit153 ], [ false, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit143 ], [ false, %bb.cb ], [ true, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit147.thread ], [ false, %bb.ce ], [ true, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit155 ], [ false, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit147 ], [ true, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit149 ], [ false, %bb.bw ], [ false, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit ], [ false, %.thread182 ]
  ret i1 %.6

bb.ck:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.cj, %bb.bu, %bb.bq, %bb.n
  %.pn135.pn.pn = phi { ptr, i32 } [ %.pn135.pn, %bb.n ], [ %.pn133202, %bb.cj ], [ %i.ix, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bq ], [ %i.eh, %bb.bu ], [ %i.ix, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn135.pn.pn

bb.cl:                                            ; preds = %bb.ch
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb15ValueOperations17GreaterThanEqualsERKNS_5ValueES3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6duckdb15ValueOperations11GreaterThanERKNS_5ValueES3_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.b = xor i1 %i.a, true
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb15ValueOperations8LessThanERKNS_5ValueES3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6duckdb15ValueOperations11GreaterThanERKNS_5ValueES3_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %0)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb15ValueOperations14LessThanEqualsERKNS_5ValueES3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6duckdb15ValueOperations11GreaterThanERKNS_5ValueES3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.b = xor i1 %i.a, true
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !7, !range !24, !noundef !25 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i8, ptr %i.d, align 8, !range !24   ; 2 uses
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i8 %i.b, %i.e
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call fastcc noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_6EqualsEEEbRKNS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ %i.g, %bb.c ], [ true, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb15ValueOperations12DistinctFromERKNS_5ValueES3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !7, !range !24, !noundef !25 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i8, ptr %i.d, align 8, !range !24   ; 2 uses
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond.i = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond.i, label %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i8 %i.b, %i.e
  br i1 %.not.i, label %bb.c, label %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call fastcc noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_6EqualsEEEbRKNS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1), !inline_history !51
  %i.h = xor i1 %i.g, true
  br label %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit

_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i1 [ %i.h, %bb.c ], [ false, %bb.a ], [ true, %bb.b ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb15ValueOperations19DistinctGreaterThanERKNS_5ValueES3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !7, !range !24, !noundef !25
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i8, ptr %i.d, align 8, !tbaa !7, !range !24, !noundef !25
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %not. = xor i1 %i.f, true
  br label %bb.d

.thread:                                          ; preds = %bb.a
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.g = tail call fastcc noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_11GreaterThanEEEbRKNS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %.thread, %bb.c
  %.0 = phi i1 [ %i.g, %bb.c ], [ %not., %bb.b ], [ false, %.thread ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb15ValueOperations25DistinctGreaterThanEqualsERKNS_5ValueES3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !7, !range !24, !noundef !25 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i8, ptr %i.d, align 8, !tbaa !7, !range !24, !noundef !25 ; 2 uses
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = or i8 %i.b, %i.e
  %brmerge.not = icmp eq i8 %i.g, 0
  %not. = xor i1 %i.c, true
  %.mux = or i1 %not., %i.f
  br i1 %brmerge.not, label %bb.b, label %_ZN6duckdb15ValueOperations19DistinctGreaterThanERKNS_5ValueES3_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call fastcc noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_11GreaterThanEEEbRKNS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %0), !inline_history !55
  %i.i = xor i1 %i.h, true
  br label %_ZN6duckdb15ValueOperations19DistinctGreaterThanERKNS_5ValueES3_.exit

_ZN6duckdb15ValueOperations19DistinctGreaterThanERKNS_5ValueES3_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.i, %bb.b ], [ %.mux, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb15ValueOperations16DistinctLessThanERKNS_5ValueES3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !7, !range !24, !noundef !25
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i8, ptr %i.d, align 8, !tbaa !7, !range !24, !noundef !25
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  br i1 %i.c, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %bb.a
  %not..i = xor i1 %i.f, true
  br label %_ZN6duckdb15ValueOperations19DistinctGreaterThanERKNS_5ValueES3_.exit

.thread.i:                                        ; preds = %bb.a
  br i1 %i.f, label %_ZN6duckdb15ValueOperations19DistinctGreaterThanERKNS_5ValueES3_.exit, label %bb.c

bb.c:                                             ; preds = %.thread.i
  %i.g = tail call fastcc noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_11GreaterThanEEEbRKNS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %0), !inline_history !55
  br label %_ZN6duckdb15ValueOperations19DistinctGreaterThanERKNS_5ValueES3_.exit

_ZN6duckdb15ValueOperations19DistinctGreaterThanERKNS_5ValueES3_.exit: ; preds = %bb.b, %.thread.i, %bb.c
  %.0.i = phi i1 [ %i.g, %bb.c ], [ %not..i, %bb.b ], [ false, %.thread.i ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb15ValueOperations22DistinctLessThanEqualsERKNS_5ValueES3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !7, !range !24, !noundef !25 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i8, ptr %i.d, align 8, !tbaa !7, !range !24, !noundef !25 ; 2 uses
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = or i8 %i.b, %i.e
  %brmerge.not = icmp eq i8 %i.g, 0
  %not. = xor i1 %i.c, true
  %.mux = or i1 %not., %i.f
  br i1 %brmerge.not, label %bb.b, label %_ZN6duckdb15ValueOperations19DistinctGreaterThanERKNS_5ValueES3_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call fastcc noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_11GreaterThanEEEbRKNS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1), !inline_history !55
  %i.i = xor i1 %i.h, true
  br label %_ZN6duckdb15ValueOperations19DistinctGreaterThanERKNS_5ValueES3_.exit

_ZN6duckdb15ValueOperations19DistinctGreaterThanERKNS_5ValueES3_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.i, %bb.b ], [ %.mux, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN6duckdb5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare void @_ZN6duckdb11LogicalType19ForceMaxLogicalTypeERKS0_S2_(ptr dead_on_unwind writable sret(%"struct.duckdb::LogicalType") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb5Value16DefaultTryCastAsERKNS_11LogicalTypeEb(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #2

end_hunk_2
