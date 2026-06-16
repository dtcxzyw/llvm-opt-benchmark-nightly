inline.NumInlined: 3289
inline.NumDeleted: 1424
begin_hunk_0_@_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_11timestamp_tEEEvv:bb.a
bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_13PrimitiveTypeINS_11timestamp_tEEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !190
  %i.e = load ptr, ptr %0, align 8, !tbaa !189    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !83
  store i64 %i.i, ptr %i.b, align 8, !tbaa !83
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_13PrimitiveTypeINS_11timestamp_tEEELb1ESaIS3_EE3getILb1EEERS3_m.exit, label %bb.b, !prof !512

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !82     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_13PrimitiveTypeINS_11timestamp_tEEELb1ESaIS3_EE3getILb1EEERS3_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_11timestamp_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !150
  %i.e = icmp eq i8 %i.d, 9
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 9, ptr %i.a, align 1, !tbaa !648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.g = load i8, ptr %i.c, align 1, !tbaa !150
  store i8 %i.g, ptr %i.b, align 1, !tbaa !648
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.j = load ptr, ptr %1, align 8, !tbaa !82     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare noundef zeroext i1 @_ZN6duckdb5Value8IsFiniteINS_11timestamp_tEEEbT_(i64) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #19

declare i64 @_ZN6duckdb16SubtractOperator9OperationINS_11timestamp_tENS_10interval_tES2_EET1_T_T0_(i64, i64, i64) local_unnamed_addr #2

declare void @_ZN6duckdb9Timestamp7ConvertENS_11timestamp_tERNS_6date_tERNS_7dtime_tE(i64, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_(i32, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare void @_ZN6duckdb4Time7ConvertENS_7dtime_tERiS2_S2_S2_(i64, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare i64 @_ZN6duckdb9Timestamp12FromDatetimeENS_6date_tENS_7dtime_tE(i32, i64) local_unnamed_addr #2

declare i32 @_ZN6duckdb4Date8FromDateEiii(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @_ZN6duckdb4Time8FromTimeEiiii(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb4Date7IsValidEiii(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN6duckdb17ScalarFunctionSetC1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_117BindLeastGreatestINS0_7LeastOpEEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS4_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS3_INS_10ExpressionES5_ISD_ELb1EEELb1ESaISF_EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function", align 8     ; 7 uses
  %5 = alloca %"class.std::function", align 8     ; 7 uses
  %6 = alloca %"class.std::function", align 8     ; 7 uses
  %7 = alloca %"class.std::function", align 8     ; 7 uses
  %8 = alloca %"class.std::function", align 8     ; 7 uses
  %9 = alloca %"class.std::function", align 8     ; 7 uses
  %10 = alloca %"class.std::function", align 8    ; 7 uses
  %11 = alloca %"class.std::function", align 8    ; 7 uses
  %12 = alloca %"struct.duckdb::LogicalType", align 8 ; 26 uses
  %13 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.std::allocator", align 1   ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %19 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %20 = alloca %"class.std::function", align 8    ; 6 uses
  %21 = alloca %"class.std::function", align 8    ; 6 uses
  %22 = alloca %"class.std::function", align 8    ; 6 uses
  %23 = alloca %"class.std::function", align 8    ; 6 uses
  %24 = alloca %"class.std::function", align 8    ; 6 uses
  %25 = alloca %"class.std::function", align 8    ; 6 uses
  %26 = alloca %"class.std::function", align 8    ; 6 uses
  %27 = alloca %"class.std::function", align 8    ; 6 uses
  %28 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
  %i.b = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @_ZN6duckdb16ExpressionBinder23GetExpressionReturnTypeERKNS_10ExpressionE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %12, ptr noundef nonnull align 8 dereferenceable(88) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !509
  %i.e = load ptr, ptr %3, align 8, !tbaa !511
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.h, 8
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.s, %bb.a
  %i.j = load i8, ptr %12, align 8, !tbaa !149
  switch i8 %i.j, label %bb.ad [
    i8 2, label %bb.v
    i8 38, label %bb.z
    i8 37, label %bb.ab
  ]

.lr.ph:                                           ; preds = %bb.a, %bb.s
  %.023150 = phi i64 [ %i.ak, %bb.s ], [ 1, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.023150)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %.lr.ph
  %i.l = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb16ExpressionBinder23GetExpressionReturnTypeERKNS_10ExpressionE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %13, ptr noundef nonnull align 8 dereferenceable(88) %i.l)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.m = invoke noundef zeroext i1 @_ZN6duckdb11LogicalType20TryGetMaxLogicalTypeERNS_13ClientContextERKS0_S4_RS0_(ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  br i1 %i.m, label %bb.s, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.023150)
          to label %bb.g unwind label %.thread

bb.g:                                             ; preds = %bb.f
  %i.p = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.h unwind label %.thread

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.q, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.i unwind label %.thread131

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  invoke void @_ZNK6duckdb11LogicalType8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  invoke void @_ZNK6duckdb11LogicalType8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6duckdb15BinderExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEENS_12optional_idxERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.cg unwind label %bb.p

bb.m:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.n:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.thread:                                          ; preds = %bb.f, %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.thread131:                                       ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.r

bb.o:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.p:                                             ; preds = %bb.l, %bb.k
  %.0 = phi i1 [ false, %bb.l ], [ true, %bb.k ]  ; 2 uses
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %17, align 8, !tbaa !82    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.x) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %.pn = phi { ptr, i32 } [ %i.v, %bb.o ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.w, %bb.p ] ; 4 uses
  %.1 = phi i1 [ true, %bb.o ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %i.aa = load ptr, ptr %16, align 8, !tbaa !82   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.aa) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.ad = load ptr, ptr %14, align 8, !tbaa !82   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread: ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.ah = load ptr, ptr %14, align 8, !tbaa !82   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %.thread140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread
  call void @_ZdlPv(ptr noundef %i.ah) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.r

.thread140:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  call void @_ZdlPv(ptr noundef %i.ad) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br i1 %.1, label %bb.r, label %bb.t

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br i1 %.1, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.thread, %.thread140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %.thread131, %.thread, %bb.q
  %.pn.pn.pn.pn130 = phi { ptr, i32 } [ %i.t, %.thread ], [ %.pn, %bb.q ], [ %i.u, %.thread131 ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %i.ag, %.thread140 ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.thread ]
  call void @__cxa_free_exception(ptr %i.n) #23
  br label %bb.t

bb.s:                                             ; preds = %bb.e
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.ak = add nuw i64 %.023150, 1                 ; 2 uses
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !509
  %i.am = load ptr, ptr %3, align 8, !tbaa !511
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3
  %i.ar = icmp ult i64 %i.ak, %i.aq
end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_117BindLeastGreatestINS0_7LeastOpEEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS4_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS3_INS_10ExpressionES5_ISD_ELb1EEELb1ESaISF_EEE:bb.a
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.bq, align 8, !tbaa !13
  store <2 x ptr> %i.dn, ptr %i.dm, align 8, !tbaa !13
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.br, align 8, !tbaa !13
  %.not.i.i.i83 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i83, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit84.thread, label %bb.au

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit84.thread: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.au:                                            ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i82
  %i.dp = invoke noundef zeroext i1 %i.do(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit84 unwind label %bb.av ; 0 uses

bb.av:                                            ; preds = %bb.au
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #26
  unreachable

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit84: ; preds = %bb.au
  %.pre155 = load ptr, ptr %i.dk, align 8, !tbaa !17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %.not.i85 = icmp eq ptr %.pre155, null
  br i1 %.not.i85, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit84
  %i.ds = invoke noundef zeroext i1 %.pre155(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %24, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.ax ; 0 uses

bb.ax:                                            ; preds = %bb.aw
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #26
  unreachable

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i89: ; preds = %bb.ad
  %i.dv = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 0, ptr %i.dw, align 8
  store ptr @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionIdNS_8LessThanENS0_21StandardLeastGreatestILb0EEEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %25, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 16, i1 false), !tbaa.struct !95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %25, i64 16, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dy = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !13
  %i.dz = load ptr, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.bq, align 8, !tbaa !13
  store <2 x ptr> %i.dy, ptr %i.dx, align 8, !tbaa !13
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.br, align 8, !tbaa !13
  %.not.i.i.i90 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i90, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit91.thread, label %bb.ay

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit91.thread: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.ay:                                            ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i89
  %i.ea = invoke noundef zeroext i1 %i.dz(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit91 unwind label %bb.az ; 0 uses

bb.az:                                            ; preds = %bb.ay
  %i.eb = landingpad { ptr, i32 }
          catch ptr null
  %i.ec = extractvalue { ptr, i32 } %i.eb, 0
  call void @__clang_call_terminate(ptr %i.ec) #26
  unreachable

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit91: ; preds = %bb.ay
  %.pre154 = load ptr, ptr %i.dv, align 8, !tbaa !17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.not.i92 = icmp eq ptr %.pre154, null
  br i1 %.not.i92, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit91
  %i.ed = invoke noundef zeroext i1 %.pre154(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %25, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.bb ; 0 uses

bb.bb:                                            ; preds = %bb.ba
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #26
  unreachable

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i96: ; preds = %bb.ad
  %i.eg = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 0, ptr %i.eh, align 8
  store ptr @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionINS_8string_tENS_8LessThanENS0_21StandardLeastGreatestILb1EEEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %26, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eg, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 16, i1 false), !tbaa.struct !95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %26, i64 16, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ej = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !13
  %i.ek = load ptr, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.bq, align 8, !tbaa !13
  store <2 x ptr> %i.ej, ptr %i.ei, align 8, !tbaa !13
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.br, align 8, !tbaa !13
  %.not.i.i.i97 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i97, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit98.thread, label %bb.bc

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit98.thread: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.bc:                                            ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i96
  %i.el = invoke noundef zeroext i1 %i.ek(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit98 unwind label %bb.bd ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %i.em, 0
  call void @__clang_call_terminate(ptr %i.en) #26
  unreachable

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit98: ; preds = %bb.bc
  %.pre = load ptr, ptr %i.eg, align 8, !tbaa !17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i99 = icmp eq ptr %.pre, null
  br i1 %.not.i99, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit98
  %i.eo = invoke noundef zeroext i1 %.pre(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %26, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.bf ; 0 uses

bb.bf:                                            ; preds = %bb.be
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #26
  unreachable

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i103: ; preds = %bb.ad
  %i.er = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 0, ptr %i.es, align 8
  store ptr @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionINS_8string_tENS_8LessThanENS0_20SortKeyLeastGreatestEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %27, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.er, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 16, i1 false), !tbaa.struct !95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %27, i64 16, i1 false)
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eu = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !13
  %i.ev = load ptr, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.bq, align 8, !tbaa !13
  store <2 x ptr> %i.eu, ptr %i.et, align 8, !tbaa !13
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.br, align 8, !tbaa !13
  %.not.i.i.i104 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i104, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit105.thread, label %bb.bg

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit105.thread: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNSt14_Function_baseD2Ev.exit107

bb.bg:                                            ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i103
  %i.ew = invoke noundef zeroext i1 %i.ev(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit105 unwind label %bb.bh ; 0 uses

bb.bh:                                            ; preds = %bb.bg
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #26
  unreachable

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit105: ; preds = %bb.bg
  %.pre160 = load ptr, ptr %i.er, align 8, !tbaa !17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %.not.i106 = icmp eq ptr %.pre160, null
  br i1 %.not.i106, label %_ZNSt14_Function_baseD2Ev.exit107, label %bb.bi

bb.bi:                                            ; preds = %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit105
  %i.ez = invoke noundef zeroext i1 %.pre160(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %27, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit107 unwind label %bb.bj ; 0 uses

bb.bj:                                            ; preds = %bb.bi
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  call void @__clang_call_terminate(ptr %i.fb) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit107:                ; preds = %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit105.thread, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit105, %bb.bi
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 288
  store ptr @_ZN6duckdb12_GLOBAL__N_124LeastGreatestSortKeyInitINS0_7LeastOpEEENS_10unique_ptrINS_18FunctionLocalStateESt14default_deleteIS4_ELb1EEERNS_15ExpressionStateERKNS_23BoundFunctionExpressionEPNS_12FunctionDataE, ptr %i.fc, align 8, !tbaa !700
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit98.thread, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit91.thread, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit84.thread, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit77.thread, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit70.thread, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit63.thread, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit.thread, %bb.be, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit98, %bb.ba, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit91, %bb.aw, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit84, %bb.as, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit77, %bb.ao, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit70, %bb.ak, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit63, %bb.ag, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit, %_ZNSt14_Function_baseD2Ev.exit107
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.fe = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, i64 noundef 0)
          to label %bb.bk unwind label %bb.y      ; 5 uses

bb.bk:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ff = icmp eq ptr %i.fe, %12
  br i1 %i.ff, label %bb.bv, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fg = load i8, ptr %12, align 8, !tbaa !149
  store i8 %i.fg, ptr %i.fe, align 8, !tbaa !149
  %i.fh = load i8, ptr %i.bn, align 1, !tbaa !150
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 1
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !150
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !85 ; 2 uses
  %i.fn = load <2 x ptr>, ptr %i.fk, align 8, !tbaa !13
  %.not.i.i.i.i.i.i108 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i.i.i.i108, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 3 uses
  %i.fp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i.i.i109 = icmp eq i8 %i.fp, 0
  br i1 %.not.i.i.i.i.i.i.i109, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fq = load i32, ptr %i.fo, align 4, !tbaa !3
  %i.fr = add nsw i32 %i.fq, 1
  store i32 %i.fr, ptr %i.fo, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.fs = atomicrmw volatile add ptr %i.fo, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i: ; preds = %bb.bo, %bb.bn, %bb.bl
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !85 ; 8 uses
  store <2 x ptr> %i.fn, ptr %i.fj, align 8, !tbaa !13
  %.not.i.i.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i.i.i, label %bb.bv, label %bb.bp

bb.bp:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 4 uses
  %i.fw = load atomic i64, ptr %i.fv acquire, align 8 ; 2 uses
  %i.fx = icmp eq i64 %i.fw, 4294967297
  %i.fy = trunc i64 %i.fw to i32                  ; 2 uses
  br i1 %i.fx, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.fv, align 8, !tbaa !86
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 12
  store i32 0, ptr %i.fz, align 4, !tbaa !88
  %i.ga = load ptr, ptr %i.fu, align 8, !tbaa !79
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #23, !inline_history !151
  %i.gd = load ptr, ptr %i.fu, align 8, !tbaa !79
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #23, !inline_history !151
  br label %bb.bv

bb.br:                                            ; preds = %bb.bp
  %i.gg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.gg, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gh = add nsw i32 %i.fy, -1
  store i32 %i.gh, ptr %i.fv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.gi = atomicrmw volatile add ptr %i.fv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bt, %bb.bs
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.fy, %bb.bs ], [ %i.gi, %bb.bt ]
  %i.gj = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.gj, label %bb.bu, label %bb.bv, !prof !90

bb.bu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #23
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bk, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.bu
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.gk = load i8, ptr %12, align 8, !tbaa !149
  store i8 %i.gk, ptr %29, align 8, !tbaa !149
  %i.gl = load i8, ptr %i.bn, align 1, !tbaa !150
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 185
  store i8 %i.gl, ptr %i.gm, align 1, !tbaa !150
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.go = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !85 ; 2 uses
  %i.gr = load <2 x ptr>, ptr %i.go, align 8, !tbaa !13
  %.not.i.i.i.i.i.i110 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i.i.i.i110, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i112, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 3 uses
  %i.gt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i.i.i111 = icmp eq i8 %i.gt, 0
  br i1 %.not.i.i.i.i.i.i.i111, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gu = load i32, ptr %i.gs, align 4, !tbaa !3
  %i.gv = add nsw i32 %i.gu, 1
  store i32 %i.gv, ptr %i.gs, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i112

bb.by:                                            ; preds = %bb.bw
  %i.gw = atomicrmw volatile add ptr %i.gs, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i112

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i112: ; preds = %bb.by, %bb.bx, %bb.bv
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !85 ; 8 uses
  store <2 x ptr> %i.gr, ptr %i.gn, align 8, !tbaa !13
  %.not.i.i.i.i.i113 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i.i.i113, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit117, label %bb.bz

bb.bz:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i112
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 4 uses
  %i.ha = load atomic i64, ptr %i.gz acquire, align 8 ; 2 uses
  %i.hb = icmp eq i64 %i.ha, 4294967297
  %i.hc = trunc i64 %i.ha to i32                  ; 2 uses
  br i1 %i.hb, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store i32 0, ptr %i.gz, align 8, !tbaa !86
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 12
  store i32 0, ptr %i.hd, align 4, !tbaa !88
  %i.he = load ptr, ptr %i.gy, align 8, !tbaa !79
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8
  call void %i.hg(ptr noundef nonnull align 8 dereferenceable(16) %i.gy) #23, !inline_history !151
  %i.hh = load ptr, ptr %i.gy, align 8, !tbaa !79
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(16) %i.gy) #23, !inline_history !151
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit117

bb.cb:                                            ; preds = %bb.bz
  %i.hk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i5.i.i114 = icmp eq i8 %i.hk, 0
  br i1 %.not.i.i.i.i5.i.i114, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.hl = add nsw i32 %i.hc, -1
  store i32 %i.hl, ptr %i.gz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i115

bb.cd:                                            ; preds = %bb.cb
  %i.hm = atomicrmw volatile add ptr %i.gz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i115

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i115: ; preds = %bb.cd, %bb.cc
  %.0.i.i.i.i.i.i.i116 = phi i32 [ %i.hc, %bb.cc ], [ %i.hm, %bb.cd ]
  %i.hn = icmp eq i32 %.0.i.i.i.i.i.i.i116, 1
  br i1 %i.hn, label %bb.ce, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit117, !prof !90

bb.ce:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i115
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gy) #23
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit117

_ZN6duckdb11LogicalTypeaSERKS0_.exit117:          ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i112, %bb.ca, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i115, %bb.ce
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i122 unwind label %bb.y

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i122: ; preds = %_ZN6duckdb11LogicalTypeaSERKS0_.exit117
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.hp = load i8, ptr %28, align 8, !tbaa !149
  store i8 %i.hp, ptr %i.ho, align 8, !tbaa !149
  %i.hq = getelementptr inbounds nuw i8, ptr %28, i64 1
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !150
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 209
  store i8 %i.hr, ptr %i.hs, align 1, !tbaa !150
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.hv = load <2 x ptr>, ptr %i.hu, align 8, !tbaa !13
  %i.hw = load <2 x ptr>, ptr %i.ht, align 8, !tbaa !13
  store <2 x ptr> %i.hv, ptr %i.ht, align 8, !tbaa !13
  store <2 x ptr> %i.hw, ptr %i.hu, align 8, !tbaa !13
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %28) #23
  store ptr null, ptr %0, align 8, !tbaa !152
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  ret void

bb.cf:                                            ; preds = %bb.ac, %bb.aa, %bb.y, %bb.x, %bb.u
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.u ], [ %i.au, %bb.y ], [ %i.at, %bb.x ], [ %i.bd, %bb.aa ], [ %i.bm, %bb.ac ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn

bb.cg:                                            ; preds = %bb.w, %bb.l
  unreachable
}

declare void @_ZN6duckdb16ExpressionBinder23GetExpressionReturnTypeERKNS_10ExpressionE(ptr dead_on_unwind writable sret(%"struct.duckdb::LogicalType") align 8, ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb11LogicalType20TryGetMaxLogicalTypeERNS_13ClientContextERKS0_S4_RS0_(ptr noundef nonnull align 8 dereferenceable(512), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15BinderExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEENS_12optional_idxERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector.75", align 8    ; 9 uses
  %6 = alloca %"class.std::unordered_map", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZN6duckdb9Exception19InitializeExtraInfoB5cxx11ENS_12optional_idxE(ptr dead_on_unwind nonnull writable sret(%"class.std::unordered_map") align 8 %6, i64 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !701
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !701
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS7_EEES7_S9_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %5, align 8, !tbaa !516, !noalias !701 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !519, !noalias !701 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !82   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #27
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !520

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %5, align 8, !tbaa !516, !noalias !701
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #27
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !701
  br label %.body

bb.e:                                             ; preds = %bb.c, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !701
  invoke void @_ZN6duckdb15BinderExceptionC2ERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEERSD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %7, align 8, !tbaa !82     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !541  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i8

.lr.ph.i.i.i.i8:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.p, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 6 uses
  %i.p = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !543 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !82   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 56
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i9: ; preds = %.lr.ph.i.i.i.i8
  call void @_ZdlPv(ptr noundef %i.s) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i9
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !82   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.v) #27
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #27
  %.not.i.i.i.i10 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i10, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i8, !llvm.loop !544

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = load ptr, ptr %6, align 8, !tbaa !545
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !546
  %i.ab = shl i64 %i.aa, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.y, i8 0, i64 %i.ab, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.ac = load ptr, ptr %6, align 8, !tbaa !545   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.ac) #27
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret void

bb.h:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %7, align 8, !tbaa !82    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.ag) #27
  br label %.body

.body:                                            ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.d
  %.pn = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.af, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  resume { ptr, i32 } %.pn
}

declare void @_ZN6duckdb14IntegerLiteral7GetTypeERKNS_11LogicalTypeE(ptr dead_on_unwind writable sret(%"struct.duckdb::LogicalType") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionIaNS_8LessThanENS0_21StandardLeastGreatestILb0EEEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 7 uses
  %3 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !536  ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !537    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp eq i64 %i.g, 104
end_hunk_1
begin_hunk_2_@_ZN6duckdb9make_uniqINS_12_GLOBAL__N_125LeastGreatestSortKeyStateEJmNS_15OrderByNullTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn.i = phi { ptr, i32 } [ %i.r, %bb.m ], [ %i.q, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.s

bb.o:                                             ; preds = %._crit_edge.i
  invoke void @_ZN6duckdb9DataChunk10InitializeERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 2048)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.s = load ptr, ptr %2, align 8, !tbaa !7      ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.p, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i ], [ %i.s, %bb.p ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i.i) #23
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !18

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %2, align 8, !tbaa !7
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.p
  %i.w = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.s, %bb.p ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i.i, label %bb.u, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.w) #27
  br label %bb.u

bb.r:                                             ; preds = %bb.o, %._crit_edge.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.n
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.n ], [ %i.x, %bb.r ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.c) #23
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.g, %bb.f
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.s ], [ %i.k, %bb.g ], [ %i.j, %bb.f ]
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.b) #23
  br label %.body

.body:                                            ; preds = %bb.t, %bb.e
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.i, %bb.t ], [ %i.i, %bb.e ]
  call void @_ZN6duckdb18FunctionLocalStateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(186) %i.a) #23
  call void @_ZdlPv(ptr noundef nonnull %i.a) #27
  resume { ptr, i32 } %.pn.pn.pn.pn.i

bb.u:                                             ; preds = %bb.q, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  store ptr %i.a, ptr %0, align 8, !tbaa !744
  ret void
}

declare void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

declare void @_ZN6duckdb9DataChunk10InitializeERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb9Allocator16DefaultAllocatorEv() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6duckdb18FunctionLocalStateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125LeastGreatestSortKeyStateD2Ev(ptr noundef nonnull align 8 dereferenceable(186) initializes((0, 8)) %0) unnamed_addr #5 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_125LeastGreatestSortKeyStateE, i64 16), ptr %0, align 8, !tbaa !79
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.b) #23
  tail call void @_ZN6duckdb18FunctionLocalStateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125LeastGreatestSortKeyStateD0Ev(ptr noundef nonnull align 8 dereferenceable(186) initializes((0, 8)) %0) unnamed_addr #5 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_125LeastGreatestSortKeyStateE, i64 16), ptr %0, align 8, !tbaa !79
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.a) #23, !inline_history !756
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.b) #23, !inline_history !756
  tail call void @_ZN6duckdb18FunctionLocalStateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(186) %0) #23, !inline_history !756
  tail call void @_ZdlPv(ptr noundef nonnull %0) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !7      ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
  unreachable

_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i) #23
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.0911.i.i.i.i) #23
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !757

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.s, %.lr.ph.i.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i16, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i.i17
  %.012.i.i.i.i18 = phi ptr [ %i.v, %.lr.ph.i.i.i.i17 ], [ %i.t, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i.i19 = phi ptr [ %i.u, %.lr.ph.i.i.i.i17 ], [ %1, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i18, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i19) #23
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.0911.i.i.i.i19) #23
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i.i20, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i.i17, !llvm.loop !757

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i.i17, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i21 = phi ptr [ %i.t, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.v, %.lr.ph.i.i.i.i17 ]
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #27
  br label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !7
  store ptr %.0.lcssa.i.i.i.i21, ptr %i.a, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.x, ptr %i.w, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_117BindLeastGreatestINS0_9GreaterOpEEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS4_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS3_INS_10ExpressionES5_ISD_ELb1EEELb1ESaISF_EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function", align 8     ; 7 uses
  %5 = alloca %"class.std::function", align 8     ; 7 uses
  %6 = alloca %"class.std::function", align 8     ; 7 uses
  %7 = alloca %"class.std::function", align 8     ; 7 uses
  %8 = alloca %"class.std::function", align 8     ; 7 uses
  %9 = alloca %"class.std::function", align 8     ; 7 uses
  %10 = alloca %"class.std::function", align 8    ; 7 uses
  %11 = alloca %"class.std::function", align 8    ; 7 uses
  %12 = alloca %"struct.duckdb::LogicalType", align 8 ; 26 uses
  %13 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.std::allocator", align 1   ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %19 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %20 = alloca %"class.std::function", align 8    ; 6 uses
  %21 = alloca %"class.std::function", align 8    ; 6 uses
  %22 = alloca %"class.std::function", align 8    ; 6 uses
  %23 = alloca %"class.std::function", align 8    ; 6 uses
  %24 = alloca %"class.std::function", align 8    ; 6 uses
  %25 = alloca %"class.std::function", align 8    ; 6 uses
  %26 = alloca %"class.std::function", align 8    ; 6 uses
  %27 = alloca %"class.std::function", align 8    ; 6 uses
  %28 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
  %i.b = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @_ZN6duckdb16ExpressionBinder23GetExpressionReturnTypeERKNS_10ExpressionE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %12, ptr noundef nonnull align 8 dereferenceable(88) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !509
  %i.e = load ptr, ptr %3, align 8, !tbaa !511
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.h, 8
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.s, %bb.a
  %i.j = load i8, ptr %12, align 8, !tbaa !149
  switch i8 %i.j, label %bb.ad [
    i8 2, label %bb.v
    i8 38, label %bb.z
    i8 37, label %bb.ab
  ]

.lr.ph:                                           ; preds = %bb.a, %bb.s
  %.023150 = phi i64 [ %i.ak, %bb.s ], [ 1, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.023150)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %.lr.ph
  %i.l = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb16ExpressionBinder23GetExpressionReturnTypeERKNS_10ExpressionE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %13, ptr noundef nonnull align 8 dereferenceable(88) %i.l)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.m = invoke noundef zeroext i1 @_ZN6duckdb11LogicalType20TryGetMaxLogicalTypeERNS_13ClientContextERKS0_S4_RS0_(ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  br i1 %i.m, label %bb.s, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.023150)
          to label %bb.g unwind label %.thread

bb.g:                                             ; preds = %bb.f
  %i.p = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.h unwind label %.thread

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.q, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.i unwind label %.thread131

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  invoke void @_ZNK6duckdb11LogicalType8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  invoke void @_ZNK6duckdb11LogicalType8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6duckdb15BinderExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEENS_12optional_idxERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.cg unwind label %bb.p

bb.m:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.n:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.thread:                                          ; preds = %bb.f, %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.thread131:                                       ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.r

bb.o:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.p:                                             ; preds = %bb.l, %bb.k
  %.0 = phi i1 [ false, %bb.l ], [ true, %bb.k ]  ; 2 uses
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %17, align 8, !tbaa !82    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.x) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %.pn = phi { ptr, i32 } [ %i.v, %bb.o ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.w, %bb.p ] ; 4 uses
  %.1 = phi i1 [ true, %bb.o ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %i.aa = load ptr, ptr %16, align 8, !tbaa !82   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.aa) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.ad = load ptr, ptr %14, align 8, !tbaa !82   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread: ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.ah = load ptr, ptr %14, align 8, !tbaa !82   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %.thread140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread
  call void @_ZdlPv(ptr noundef %i.ah) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.r

.thread140:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  call void @_ZdlPv(ptr noundef %i.ad) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br i1 %.1, label %bb.r, label %bb.t

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br i1 %.1, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.thread, %.thread140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %.thread131, %.thread, %bb.q
  %.pn.pn.pn.pn130 = phi { ptr, i32 } [ %i.t, %.thread ], [ %.pn, %bb.q ], [ %i.u, %.thread131 ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %i.ag, %.thread140 ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.thread ]
  call void @__cxa_free_exception(ptr %i.n) #23
  br label %bb.t

bb.s:                                             ; preds = %bb.e
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.ak = add nuw i64 %.023150, 1                 ; 2 uses
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !509
  %i.am = load ptr, ptr %3, align 8, !tbaa !511
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3
  %i.ar = icmp ult i64 %i.ak, %i.aq
end_hunk_2
begin_hunk_3_@_ZN6duckdb12_GLOBAL__N_117BindLeastGreatestINS0_9GreaterOpEEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS4_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS3_INS_10ExpressionES5_ISD_ELb1EEELb1ESaISF_EEE:bb.a
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.bq, align 8, !tbaa !13
  store <2 x ptr> %i.dn, ptr %i.dm, align 8, !tbaa !13
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.br, align 8, !tbaa !13
  %.not.i.i.i83 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i83, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit84.thread, label %bb.au

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit84.thread: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.au:                                            ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i82
  %i.dp = invoke noundef zeroext i1 %i.do(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit84 unwind label %bb.av ; 0 uses

bb.av:                                            ; preds = %bb.au
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #26
  unreachable

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit84: ; preds = %bb.au
  %.pre155 = load ptr, ptr %i.dk, align 8, !tbaa !17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %.not.i85 = icmp eq ptr %.pre155, null
  br i1 %.not.i85, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit84
  %i.ds = invoke noundef zeroext i1 %.pre155(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %24, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.ax ; 0 uses

bb.ax:                                            ; preds = %bb.aw
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #26
  unreachable

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i89: ; preds = %bb.ad
  %i.dv = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 0, ptr %i.dw, align 8
  store ptr @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionIdNS_11GreaterThanENS0_21StandardLeastGreatestILb0EEEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %25, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 16, i1 false), !tbaa.struct !95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %25, i64 16, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dy = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !13
  %i.dz = load ptr, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.bq, align 8, !tbaa !13
  store <2 x ptr> %i.dy, ptr %i.dx, align 8, !tbaa !13
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.br, align 8, !tbaa !13
  %.not.i.i.i90 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i90, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit91.thread, label %bb.ay

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit91.thread: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.ay:                                            ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i89
  %i.ea = invoke noundef zeroext i1 %i.dz(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit91 unwind label %bb.az ; 0 uses

bb.az:                                            ; preds = %bb.ay
  %i.eb = landingpad { ptr, i32 }
          catch ptr null
  %i.ec = extractvalue { ptr, i32 } %i.eb, 0
  call void @__clang_call_terminate(ptr %i.ec) #26
  unreachable

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit91: ; preds = %bb.ay
  %.pre154 = load ptr, ptr %i.dv, align 8, !tbaa !17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.not.i92 = icmp eq ptr %.pre154, null
  br i1 %.not.i92, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit91
  %i.ed = invoke noundef zeroext i1 %.pre154(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %25, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.bb ; 0 uses

bb.bb:                                            ; preds = %bb.ba
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #26
  unreachable

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i96: ; preds = %bb.ad
  %i.eg = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 0, ptr %i.eh, align 8
  store ptr @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionINS_8string_tENS_11GreaterThanENS0_21StandardLeastGreatestILb1EEEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %26, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eg, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 16, i1 false), !tbaa.struct !95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %26, i64 16, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ej = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !13
  %i.ek = load ptr, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.bq, align 8, !tbaa !13
  store <2 x ptr> %i.ej, ptr %i.ei, align 8, !tbaa !13
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.br, align 8, !tbaa !13
  %.not.i.i.i97 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i97, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit98.thread, label %bb.bc

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit98.thread: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.bc:                                            ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i96
  %i.el = invoke noundef zeroext i1 %i.ek(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit98 unwind label %bb.bd ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %i.em, 0
  call void @__clang_call_terminate(ptr %i.en) #26
  unreachable

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit98: ; preds = %bb.bc
  %.pre = load ptr, ptr %i.eg, align 8, !tbaa !17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i99 = icmp eq ptr %.pre, null
  br i1 %.not.i99, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit98
  %i.eo = invoke noundef zeroext i1 %.pre(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %26, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.bf ; 0 uses

bb.bf:                                            ; preds = %bb.be
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #26
  unreachable

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i103: ; preds = %bb.ad
  %i.er = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 0, ptr %i.es, align 8
  store ptr @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionINS_8string_tENS_11GreaterThanENS0_20SortKeyLeastGreatestEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %27, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.er, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 16, i1 false), !tbaa.struct !95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %27, i64 16, i1 false)
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eu = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !13
  %i.ev = load ptr, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.bq, align 8, !tbaa !13
  store <2 x ptr> %i.eu, ptr %i.et, align 8, !tbaa !13
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.br, align 8, !tbaa !13
  %.not.i.i.i104 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i104, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit105.thread, label %bb.bg

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit105.thread: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNSt14_Function_baseD2Ev.exit107

bb.bg:                                            ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i103
  %i.ew = invoke noundef zeroext i1 %i.ev(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit105 unwind label %bb.bh ; 0 uses

bb.bh:                                            ; preds = %bb.bg
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #26
  unreachable

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit105: ; preds = %bb.bg
  %.pre160 = load ptr, ptr %i.er, align 8, !tbaa !17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %.not.i106 = icmp eq ptr %.pre160, null
  br i1 %.not.i106, label %_ZNSt14_Function_baseD2Ev.exit107, label %bb.bi

bb.bi:                                            ; preds = %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit105
  %i.ez = invoke noundef zeroext i1 %.pre160(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %27, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit107 unwind label %bb.bj ; 0 uses

bb.bj:                                            ; preds = %bb.bi
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  call void @__clang_call_terminate(ptr %i.fb) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit107:                ; preds = %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit105.thread, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit105, %bb.bi
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 288
  store ptr @_ZN6duckdb12_GLOBAL__N_124LeastGreatestSortKeyInitINS0_9GreaterOpEEENS_10unique_ptrINS_18FunctionLocalStateESt14default_deleteIS4_ELb1EEERNS_15ExpressionStateERKNS_23BoundFunctionExpressionEPNS_12FunctionDataE, ptr %i.fc, align 8, !tbaa !700
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit98.thread, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit91.thread, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit84.thread, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit77.thread, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit70.thread, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit63.thread, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit.thread, %bb.be, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit98, %bb.ba, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit91, %bb.aw, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit84, %bb.as, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit77, %bb.ao, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit70, %bb.ak, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit63, %bb.ag, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit, %_ZNSt14_Function_baseD2Ev.exit107
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.fe = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, i64 noundef 0)
          to label %bb.bk unwind label %bb.y      ; 5 uses

bb.bk:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ff = icmp eq ptr %i.fe, %12
  br i1 %i.ff, label %bb.bv, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fg = load i8, ptr %12, align 8, !tbaa !149
  store i8 %i.fg, ptr %i.fe, align 8, !tbaa !149
  %i.fh = load i8, ptr %i.bn, align 1, !tbaa !150
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 1
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !150
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !85 ; 2 uses
  %i.fn = load <2 x ptr>, ptr %i.fk, align 8, !tbaa !13
  %.not.i.i.i.i.i.i108 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i.i.i.i108, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 3 uses
  %i.fp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i.i.i109 = icmp eq i8 %i.fp, 0
  br i1 %.not.i.i.i.i.i.i.i109, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fq = load i32, ptr %i.fo, align 4, !tbaa !3
  %i.fr = add nsw i32 %i.fq, 1
  store i32 %i.fr, ptr %i.fo, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.fs = atomicrmw volatile add ptr %i.fo, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i: ; preds = %bb.bo, %bb.bn, %bb.bl
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !85 ; 8 uses
  store <2 x ptr> %i.fn, ptr %i.fj, align 8, !tbaa !13
  %.not.i.i.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i.i.i, label %bb.bv, label %bb.bp

bb.bp:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 4 uses
  %i.fw = load atomic i64, ptr %i.fv acquire, align 8 ; 2 uses
  %i.fx = icmp eq i64 %i.fw, 4294967297
  %i.fy = trunc i64 %i.fw to i32                  ; 2 uses
  br i1 %i.fx, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.fv, align 8, !tbaa !86
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 12
  store i32 0, ptr %i.fz, align 4, !tbaa !88
  %i.ga = load ptr, ptr %i.fu, align 8, !tbaa !79
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #23, !inline_history !151
  %i.gd = load ptr, ptr %i.fu, align 8, !tbaa !79
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #23, !inline_history !151
  br label %bb.bv

bb.br:                                            ; preds = %bb.bp
  %i.gg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.gg, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gh = add nsw i32 %i.fy, -1
  store i32 %i.gh, ptr %i.fv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.gi = atomicrmw volatile add ptr %i.fv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bt, %bb.bs
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.fy, %bb.bs ], [ %i.gi, %bb.bt ]
  %i.gj = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.gj, label %bb.bu, label %bb.bv, !prof !90

bb.bu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #23
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bk, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.bu
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.gk = load i8, ptr %12, align 8, !tbaa !149
  store i8 %i.gk, ptr %29, align 8, !tbaa !149
  %i.gl = load i8, ptr %i.bn, align 1, !tbaa !150
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 185
  store i8 %i.gl, ptr %i.gm, align 1, !tbaa !150
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.go = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !85 ; 2 uses
  %i.gr = load <2 x ptr>, ptr %i.go, align 8, !tbaa !13
  %.not.i.i.i.i.i.i110 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i.i.i.i110, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i112, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 3 uses
  %i.gt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i.i.i111 = icmp eq i8 %i.gt, 0
  br i1 %.not.i.i.i.i.i.i.i111, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gu = load i32, ptr %i.gs, align 4, !tbaa !3
  %i.gv = add nsw i32 %i.gu, 1
  store i32 %i.gv, ptr %i.gs, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i112

bb.by:                                            ; preds = %bb.bw
  %i.gw = atomicrmw volatile add ptr %i.gs, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i112

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i112: ; preds = %bb.by, %bb.bx, %bb.bv
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !85 ; 8 uses
  store <2 x ptr> %i.gr, ptr %i.gn, align 8, !tbaa !13
  %.not.i.i.i.i.i113 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i.i.i113, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit117, label %bb.bz

bb.bz:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i112
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 4 uses
  %i.ha = load atomic i64, ptr %i.gz acquire, align 8 ; 2 uses
  %i.hb = icmp eq i64 %i.ha, 4294967297
  %i.hc = trunc i64 %i.ha to i32                  ; 2 uses
  br i1 %i.hb, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store i32 0, ptr %i.gz, align 8, !tbaa !86
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 12
  store i32 0, ptr %i.hd, align 4, !tbaa !88
  %i.he = load ptr, ptr %i.gy, align 8, !tbaa !79
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8
  call void %i.hg(ptr noundef nonnull align 8 dereferenceable(16) %i.gy) #23, !inline_history !151
  %i.hh = load ptr, ptr %i.gy, align 8, !tbaa !79
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(16) %i.gy) #23, !inline_history !151
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit117

bb.cb:                                            ; preds = %bb.bz
  %i.hk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i5.i.i114 = icmp eq i8 %i.hk, 0
  br i1 %.not.i.i.i.i5.i.i114, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.hl = add nsw i32 %i.hc, -1
  store i32 %i.hl, ptr %i.gz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i115

bb.cd:                                            ; preds = %bb.cb
  %i.hm = atomicrmw volatile add ptr %i.gz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i115

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i115: ; preds = %bb.cd, %bb.cc
  %.0.i.i.i.i.i.i.i116 = phi i32 [ %i.hc, %bb.cc ], [ %i.hm, %bb.cd ]
  %i.hn = icmp eq i32 %.0.i.i.i.i.i.i.i116, 1
  br i1 %i.hn, label %bb.ce, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit117, !prof !90

bb.ce:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i115
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gy) #23
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit117

_ZN6duckdb11LogicalTypeaSERKS0_.exit117:          ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i112, %bb.ca, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i115, %bb.ce
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i122 unwind label %bb.y

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i122: ; preds = %_ZN6duckdb11LogicalTypeaSERKS0_.exit117
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.hp = load i8, ptr %28, align 8, !tbaa !149
  store i8 %i.hp, ptr %i.ho, align 8, !tbaa !149
  %i.hq = getelementptr inbounds nuw i8, ptr %28, i64 1
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !150
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 209
  store i8 %i.hr, ptr %i.hs, align 1, !tbaa !150
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.hv = load <2 x ptr>, ptr %i.hu, align 8, !tbaa !13
  %i.hw = load <2 x ptr>, ptr %i.ht, align 8, !tbaa !13
  store <2 x ptr> %i.hv, ptr %i.ht, align 8, !tbaa !13
  store <2 x ptr> %i.hw, ptr %i.hu, align 8, !tbaa !13
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %28) #23
  store ptr null, ptr %0, align 8, !tbaa !152
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  ret void

bb.cf:                                            ; preds = %bb.ac, %bb.aa, %bb.y, %bb.x, %bb.u
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.u ], [ %i.au, %bb.y ], [ %i.at, %bb.x ], [ %i.bd, %bb.aa ], [ %i.bm, %bb.ac ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn

bb.cg:                                            ; preds = %bb.w, %bb.l
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_121LeastGreatestFunctionIaNS_11GreaterThanENS0_21StandardLeastGreatestILb0EEEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 7 uses
  %3 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !536  ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !537    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp eq i64 %i.g, 104
  br i1 %i.h, label %bb.b, label %.preheader78

.preheader78:                                     ; preds = %bb.a
  %.not90 = icmp eq ptr %i.c, %i.d
  br i1 %.not90, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  tail call void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %i.i)
  br label %bb.aj

._crit_edge:                                      ; preds = %.lr.ph, %.preheader78
  %.0.lcssa = phi i8 [ 2, %.preheader78 ], [ %spec.select, %.lr.ph ]
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !379  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !536
  %i.m = load ptr, ptr %0, align 8, !tbaa !537
  %.not91 = icmp eq ptr %i.l, %i.m
  br i1 %.not91, label %._crit_edge89, label %.lr.ph88

.lr.ph88:                                         ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.g

.lr.ph:                                           ; preds = %.preheader78, %.lr.ph
  %.080 = phi i8 [ %spec.select, %.lr.ph ], [ 2, %.preheader78 ]
  %.05579 = phi i64 [ %i.u, %.lr.ph ], [ 0, %.preheader78 ] ; 2 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.05579)
  %i.t = load i8, ptr %i.s, align 8, !tbaa !104
  %.not = icmp eq i8 %i.t, 2
  %spec.select = select i1 %.not, i8 %.080, i8 0  ; 2 uses
  %i.u = add nuw i64 %.05579, 1                   ; 2 uses
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !536
  %i.w = load ptr, ptr %0, align 8, !tbaa !537
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 104
  %i.ab = icmp ult i64 %i.u, %i.aa
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !759

._crit_edge89:                                    ; preds = %bb.ah, %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !103 ; 2 uses
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %_ZN6duckdb12_GLOBAL__N_121StandardLeastGreatestILb0EE14FinalizeResultEmPbRNS_6VectorERNS_15ExpressionStateE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge89
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %.01.i = phi i64 [ 0, %.lr.ph.i ], [ %i.at, %bb.f ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %.01.i
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !131, !range !133, !noundef !76
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !128 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %bb.e, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ak = load i64, ptr %i.af, align 8, !tbaa !381
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef %i.ak)
  %.pre.i.i = load ptr, ptr %i.ae, align 8, !tbaa !128
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i: ; preds = %bb.e, %bb.d
  %i.al = phi ptr [ %.pre.i.i, %bb.e ], [ %i.aj, %bb.d ]
  %i.am = lshr i64 %.01.i, 6
  %i.an = and i64 %.01.i, 63
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = xor i64 %i.ao, -1
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !83
  %i.as = and i64 %i.ar, %i.ap
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !83
  br label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i, %bb.c
  %i.at = add nuw i64 %.01.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.at, %i.ad
  br i1 %exitcond.not.i, label %_ZN6duckdb12_GLOBAL__N_121StandardLeastGreatestILb0EE14FinalizeResultEmPbRNS_6VectorERNS_15ExpressionStateE.exit, label %bb.c, !llvm.loop !705

_ZN6duckdb12_GLOBAL__N_121StandardLeastGreatestILb0EE14FinalizeResultEmPbRNS_6VectorERNS_15ExpressionStateE.exit: ; preds = %bb.f, %._crit_edge89
  call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext %.0.lcssa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.aj

bb.g:                                             ; preds = %.lr.ph88, %bb.ah
  %.05785 = phi i64 [ 0, %.lr.ph88 ], [ %i.ek, %bb.ah ] ; 4 uses
  %i.au = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.05785)
  %i.av = load i8, ptr %i.au, align 8, !tbaa !104
  %i.aw = icmp eq i8 %i.av, 2
  br i1 %i.aw, label %bb.h, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ax = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.05785)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !128 ; 2 uses
  %.not.i.i64 = icmp eq ptr %i.az, null
  br i1 %.not.i.i64, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.h
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !83
  %i.bb = trunc i64 %i.ba to i1
  br i1 %i.bb, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %bb.ah

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.h, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  %i.bc = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.05785)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %i.bd = load i64, ptr %i.n, align 8, !tbaa !103
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.bc, i64 noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIaEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.o, align 8, !tbaa !129 ; 2 uses
  %i.bf = load ptr, ptr %i.p, align 8, !tbaa !128
  %.not.i65 = icmp eq ptr %i.bf, null
  %i.bg = load i64, ptr %i.n, align 8, !tbaa !103 ; 3 uses
  %.not93 = icmp eq i64 %i.bg, 0                  ; 2 uses
  br i1 %.not.i65, label %.preheader, label %.preheader76

.preheader76:                                     ; preds = %bb.k
  br i1 %.not93, label %.loopexit, label %.lr.ph82.preheader

.lr.ph82.preheader:                               ; preds = %.preheader76
  %.pre95 = load ptr, ptr %3, align 8, !tbaa !130
  br label %.lr.ph82

.preheader:                                       ; preds = %bb.k
  br i1 %.not93, label %.loopexit, label %.lr.ph84.preheader

.lr.ph84.preheader:                               ; preds = %.preheader
  %.pre98 = load ptr, ptr %3, align 8, !tbaa !130
  br label %.lr.ph84
end_hunk_3
