begin_hunk_0
@__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@.str.175 = private unnamed_addr constant [38 x i8] c"Unimplemented type for update segment\00", align 1
@.str.176 = private unnamed_addr constant [56 x i8] c"Expected vector of type %s, but found vector of type %s\00", align 1
@.str.177 = private unnamed_addr constant [48 x i8] c"Unimplemented type for update segment fetch row\00", align 1
@.str.178 = private unnamed_addr constant [44 x i8] c"Unimplemented type for uncompressed segment\00", align 1
@.str.179 = private unnamed_addr constant [61 x i8] c"Expected unified vector format of type %s, but found type %s\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
end_hunk_0
begin_hunk_1
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %20 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  store ptr %1, ptr %0, align 8, !tbaa !301
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN6duckdb11StorageLockC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
end_hunk_1
begin_hunk_2
  store ptr null, ptr %i.b, align 8, !tbaa !2019
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb17SegmentStatisticsC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull %20)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #39
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i8 0, i64 40, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
end_hunk_2
begin_hunk_3

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.n = load i8, ptr %i.m, align 1, !tbaa !414   ; 10 uses
  %i.o = invoke noundef i64 @_ZN6duckdb13GetTypeIdSizeENS_12PhysicalTypeE(i8 noundef zeroext %i.n)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.o, ptr %i.p, align 8, !tbaa !1080
  switch i8 %i.n, label %21 [
    i8 -50, label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a
    i8 1, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread
    i8 3, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread
    i8 5, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread93
    i8 7, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread95
    i8 9, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread97
    i8 2, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread99
    i8 4, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread101
    i8 6, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread103
    i8 8, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread105
    i8 -52, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread107
    i8 -53, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread109
    i8 11, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread111
    i8 12, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread113
    i8 21, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread115
    i8 -56, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread117
  ]

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread93: ; preds = %bb.f
  br label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread95: ; preds = %bb.f
  br label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread97: ; preds = %bb.f
  br label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread99: ; preds = %bb.f
  br label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread101: ; preds = %bb.f
  br label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread103: ; preds = %bb.f
  br label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread105: ; preds = %bb.f
  br label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread107: ; preds = %bb.f
  br label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread109: ; preds = %bb.f
  br label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread111: ; preds = %bb.f
  br label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread113: ; preds = %bb.f
  br label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread115: ; preds = %bb.f
  br label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread117: ; preds = %bb.f
  br label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a

21:                                               ; preds = %bb.f
  %22 = call ptr @__cxa_allocate_exception(i64 16) #39 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #39
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.175, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %23 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

23:                                               ; preds = %21
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %24 unwind label %26

24:                                               ; preds = %23
  invoke void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #42
          to label %32 unwind label %26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %21
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br label %31

26:                                               ; preds = %24, %23
  %.0.i = phi i1 [ false, %24 ], [ true, %23 ]    ; 2 uses
  %27 = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %28 = load ptr, ptr %18, align 8, !tbaa !31     ; 2 uses
  %29 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %26
  call void @_ZdlPv(ptr noundef %28) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br i1 %.0.i, label %31, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br i1 %.0.i, label %31, label %.body

31:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn11.i = phi { ptr, i32 } [ %25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %22) #39
  br label %.body

32:                                               ; preds = %24
  unreachable

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread: ; preds = %bb.f, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr @_ZN6duckdbL20InitializeUpdateDataIaEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE, ptr %i.q, align 8, !tbaa !1091
  switch i8 %i.n, label %33 [
    i8 3, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread93.a
    i8 1, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread93.a
  ]

33:                                               ; preds = %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread
  %34 = call ptr @__cxa_allocate_exception(i64 16) #39 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #39
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.175, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %35 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i21

35:                                               ; preds = %33
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %36 unwind label %38

36:                                               ; preds = %35
  invoke void @__cxa_throw(ptr nonnull %34, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #42
          to label %44 unwind label %38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i21: ; preds = %33
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  br label %43

38:                                               ; preds = %36, %35
  %.0.i24 = phi i1 [ false, %36 ], [ true, %35 ]  ; 2 uses
  %39 = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %40 = load ptr, ptr %16, align 8, !tbaa !31     ; 2 uses
  %41 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25: ; preds = %38
  call void @_ZdlPv(ptr noundef %40) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  br i1 %.0.i24, label %43, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i26: ; preds = %38
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  br i1 %.0.i24, label %43, label %.body

43:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i21
  %.pn11.i22 = phi { ptr, i32 } [ %37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i21 ], [ %39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i26 ], [ %39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25 ]
  call void @__cxa_free_exception(ptr %34) #39
  br label %.body

44:                                               ; preds = %36
  unreachable

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread93.a: ; preds = %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr @_ZN6duckdbL16UpdateMergeFetchIaEEvmmRNS_10UpdateInfoERNS_6VectorE, ptr %i.r, align 8, !tbaa !1025
  switch i8 %i.n, label %45 [
    i8 3, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread95.a
    i8 1, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread95.a
  ]

45:                                               ; preds = %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread93.a
  %46 = call ptr @__cxa_allocate_exception(i64 16) #39 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #39
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.175, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %47 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i30

47:                                               ; preds = %45
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %46, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %48 unwind label %50

48:                                               ; preds = %47
  invoke void @__cxa_throw(ptr nonnull %46, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #42
          to label %56 unwind label %50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i30: ; preds = %45
  %49 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39
  br label %55

50:                                               ; preds = %48, %47
  %.0.i33 = phi i1 [ false, %48 ], [ true, %47 ]  ; 2 uses
  %51 = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %52 = load ptr, ptr %14, align 8, !tbaa !31     ; 2 uses
  %53 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34: ; preds = %50
  call void @_ZdlPv(ptr noundef %52) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39
  br i1 %.0.i33, label %55, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35: ; preds = %50
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39
  br i1 %.0.i33, label %55, label %.body

55:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i30
  %.pn11.i31 = phi { ptr, i32 } [ %49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i30 ], [ %51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35 ], [ %51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34 ]
  call void @__cxa_free_exception(ptr %46) #39
  br label %.body

56:                                               ; preds = %48
  unreachable

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread95.a: ; preds = %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread93.a, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread93.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr @_ZN6duckdbL23TemplatedFetchCommittedIaEEvRNS_10UpdateInfoERNS_6VectorE, ptr %i.s, align 8, !tbaa !2020
  switch i8 %i.n, label %57 [
    i8 3, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread97.a
    i8 1, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread97.a
  ]

57:                                               ; preds = %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread95.a
  %58 = call ptr @__cxa_allocate_exception(i64 16) #39 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.175, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %59 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i39

59:                                               ; preds = %57
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %58, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %60 unwind label %62

60:                                               ; preds = %59
  invoke void @__cxa_throw(ptr nonnull %58, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #42
          to label %68 unwind label %62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i39: ; preds = %57
  %61 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  br label %67

62:                                               ; preds = %60, %59
  %.0.i42 = phi i1 [ false, %60 ], [ true, %59 ]  ; 2 uses
  %63 = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %64 = load ptr, ptr %12, align 8, !tbaa !31     ; 2 uses
  %65 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %66 = icmp eq ptr %64, %65
  br i1 %66, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43: ; preds = %62
  call void @_ZdlPv(ptr noundef %64) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  br i1 %.0.i42, label %67, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i44: ; preds = %62
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  br i1 %.0.i42, label %67, label %.body

67:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i39
  %.pn11.i40 = phi { ptr, i32 } [ %61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i39 ], [ %63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i44 ], [ %63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43 ]
  call void @__cxa_free_exception(ptr %58) #39
  br label %.body

68:                                               ; preds = %60
  unreachable

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread97.a: ; preds = %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread95.a, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread95.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr @_ZN6duckdbL28TemplatedFetchCommittedRangeIaEEvRNS_10UpdateInfoEmmmRNS_6VectorE, ptr %i.t, align 8, !tbaa !1093
  switch i8 %i.n, label %69 [
    i8 3, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread101.a
    i8 1, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread101.a
  ]

69:                                               ; preds = %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread97.a
  %70 = call ptr @__cxa_allocate_exception(i64 16) #39 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.177, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %71 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i48

71:                                               ; preds = %69
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %70, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %72 unwind label %74

72:                                               ; preds = %71
  invoke void @__cxa_throw(ptr nonnull %70, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #42
          to label %79 unwind label %74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i48: ; preds = %69
  %73 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  br label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread99.a

74:                                               ; preds = %72, %71
  %.0.i51 = phi i1 [ false, %72 ], [ true, %71 ]  ; 2 uses
  %75 = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %76 = load ptr, ptr %10, align 8, !tbaa !31     ; 2 uses
  %77 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %78 = icmp eq ptr %76, %77
  br i1 %78, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52: ; preds = %74
  call void @_ZdlPv(ptr noundef %76) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  br i1 %.0.i51, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread99.a, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i53: ; preds = %74
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  br i1 %.0.i51, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread99.a, label %.body

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread99.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i48
  %.pn11.i49 = phi { ptr, i32 } [ %73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i48 ], [ %75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i53 ], [ %75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52 ]
  call void @__cxa_free_exception(ptr %70) #39
  br label %.body

79:                                               ; preds = %72
  unreachable

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread101.a: ; preds = %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread97.a, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread97.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr @_ZN6duckdbL17TemplatedFetchRowIaEEvmmRNS_10UpdateInfoEmRNS_6VectorEm, ptr %i.u, align 8, !tbaa !1055
  switch i8 %i.n, label %80 [
    i8 3, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread109.a
    i8 1, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread109.a
  ]

80:                                               ; preds = %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread101.a
  %81 = call ptr @__cxa_allocate_exception(i64 16) #39 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.178, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %82 unwind label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread103.a

82:                                               ; preds = %80
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %81, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %83 unwind label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread105.a

83:                                               ; preds = %82
  invoke void @__cxa_throw(ptr nonnull %81, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #42
          to label %88 unwind label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread105.a

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread103.a: ; preds = %80
  %84 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread107.a

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread105.a: ; preds = %83, %82
  %.0.i60 = phi i1 [ false, %83 ], [ true, %82 ]  ; 2 uses
  %85 = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %86 = load ptr, ptr %8, align 8, !tbaa !31      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16
  %87 = icmp eq ptr %86, %i.v
  br i1 %87, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61: ; preds = %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread105.a
  call void @_ZdlPv(ptr noundef %86) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br i1 %.0.i60, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread107.a, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i62: ; preds = %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread105.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br i1 %.0.i60, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread107.a, label %.body

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread107.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread103.a
  %.pn11.i58 = phi { ptr, i32 } [ %84, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread103.a ], [ %85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i62 ], [ %85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61 ]
  call void @__cxa_free_exception(ptr %81) #39
  br label %.body

88:                                               ; preds = %83
  unreachable

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread109.a: ; preds = %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread101.a, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread101.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr @_ZN6duckdbL15MergeUpdateLoopIaEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm, ptr %i.w, align 8, !tbaa !1089
  switch i8 %i.n, label %89 [
    i8 3, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread117.a
    i8 1, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread117.a
  ]

89:                                               ; preds = %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread109.a
  %90 = call ptr @__cxa_allocate_exception(i64 16) #39 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.178, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %91 unwind label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread111.a

91:                                               ; preds = %89
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %90, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %92 unwind label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread113.a

92:                                               ; preds = %91
  invoke void @__cxa_throw(ptr nonnull %90, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #42
          to label %97 unwind label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread113.a

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread111.a: ; preds = %89
  %93 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread115.a

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread113.a: ; preds = %92, %91
  %.0.i69 = phi i1 [ false, %92 ], [ true, %91 ]  ; 2 uses
  %94 = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %95 = load ptr, ptr %6, align 8, !tbaa !31      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16
  %96 = icmp eq ptr %95, %i.x
  br i1 %96, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70: ; preds = %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread113.a
  call void @_ZdlPv(ptr noundef %95) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br i1 %.0.i69, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread115.a, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i71: ; preds = %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread113.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br i1 %.0.i69, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread115.a, label %.body

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread115.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread111.a
  %.pn11.i67 = phi { ptr, i32 } [ %93, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread111.a ], [ %94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i71 ], [ %94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70 ]
  call void @__cxa_free_exception(ptr %90) #39
  br label %.body

97:                                               ; preds = %92
  unreachable

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread117.a: ; preds = %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread109.a, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread109.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr @_ZN6duckdbL14RollbackUpdateIaEEvRNS_10UpdateInfoES2_, ptr %i.y, align 8, !tbaa !2021
  switch i8 %i.n, label %bb.g [
    i8 3, label %_ZN6duckdbL27GetStatisticsUpdateFunctionENS_12PhysicalTypeE.exit
    i8 1, label %_ZN6duckdbL27GetStatisticsUpdateFunctionENS_12PhysicalTypeE.exit
  ]

bb.g:                                             ; preds = %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread117.a
  %i.z = call ptr @__cxa_allocate_exception(i64 16) #39 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.178, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.a

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
end_hunk_3
begin_hunk_4
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.a: ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i.a = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ac = load ptr, ptr %4, align 8, !tbaa !31    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.a: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.ac) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br i1 %.0.i.a, label %bb.k, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.a: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br i1 %.0.i.a, label %bb.k, label %.body

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.a
end_hunk_4
begin_hunk_5
bb.l:                                             ; preds = %bb.i
  unreachable

_ZN6duckdbL27GetStatisticsUpdateFunctionENS_12PhysicalTypeE.exit: ; preds = %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread117.a, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread117.a
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr @_ZN6duckdb32TemplatedUpdateNumericStatisticsIaEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE, ptr %98, align 8, !tbaa !1059
  switch i8 %i.n, label %99 [
    i8 3, label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit
    i8 1, label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit
  ]

99:                                               ; preds = %_ZN6duckdbL27GetStatisticsUpdateFunctionENS_12PhysicalTypeE.exit
  %100 = call ptr @__cxa_allocate_exception(i64 16) #39 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.178, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %101 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i84

101:                                              ; preds = %99
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %100, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %102 unwind label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit

102:                                              ; preds = %101
  invoke void @__cxa_throw(ptr nonnull %100, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #42
          to label %107 unwind label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i84: ; preds = %99
  %103 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  br label %_ZN6duckdbL22GetFetchUpdateFunctionENS_12PhysicalTypeE.exit

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit: ; preds = %102, %101
  %.0.i87 = phi i1 [ false, %102 ], [ true, %101 ] ; 2 uses
  %104 = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %105 = load ptr, ptr %2, align 8, !tbaa !31     ; 2 uses
  %106 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = icmp eq ptr %105, %106
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88: ; preds = %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit
  call void @_ZdlPv(ptr noundef %105) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  br i1 %.0.i87, label %_ZN6duckdbL22GetFetchUpdateFunctionENS_12PhysicalTypeE.exit, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i89: ; preds = %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  br i1 %.0.i87, label %_ZN6duckdbL22GetFetchUpdateFunctionENS_12PhysicalTypeE.exit, label %.body

_ZN6duckdbL22GetFetchUpdateFunctionENS_12PhysicalTypeE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i84
  %.pn11.i85 = phi { ptr, i32 } [ %103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i84 ], [ %104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i89 ], [ %104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88 ]
  call void @__cxa_free_exception(ptr %100) #39
  br label %.body

107:                                              ; preds = %102
  unreachable

_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a: ; preds = %bb.f, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread93, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread95, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread97, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread99, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread101, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread103, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread105, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread107, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread109, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread111, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread113, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread115, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread117
  %_ZN6duckdbL20InitializeUpdateDataINS_8string_tEEEvRNS_10UpdateInfoERNS_6VectorES3_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE.sink = phi ptr [ @_ZN6duckdbL20InitializeUpdateDataINS_8string_tEEEvRNS_10UpdateInfoERNS_6VectorES3_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread117 ], [ @_ZN6duckdbL20InitializeUpdateDataINS_10interval_tEEEvRNS_10UpdateInfoERNS_6VectorES3_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread115 ], [ @_ZN6duckdbL20InitializeUpdateDataIdEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread113 ], [ @_ZN6duckdbL20InitializeUpdateDataIfEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread111 ], [ @_ZN6duckdbL20InitializeUpdateDataINS_10uhugeint_tEEEvRNS_10UpdateInfoERNS_6VectorES3_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread109 ], [ @_ZN6duckdbL20InitializeUpdateDataINS_9hugeint_tEEEvRNS_10UpdateInfoERNS_6VectorES3_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread107 ], [ @_ZN6duckdbL20InitializeUpdateDataImEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread105 ], [ @_ZN6duckdbL20InitializeUpdateDataIjEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread103 ], [ @_ZN6duckdbL20InitializeUpdateDataItEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread101 ], [ @_ZN6duckdbL20InitializeUpdateDataIhEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread99 ], [ @_ZN6duckdbL20InitializeUpdateDataIlEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread97 ], [ @_ZN6duckdbL20InitializeUpdateDataIiEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread95 ], [ @_ZN6duckdbL20InitializeUpdateDataIsEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread93 ], [ @_ZN6duckdbL24InitializeUpdateValidityERNS_10UpdateInfoERNS_6VectorES1_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE, %bb.f ]
  %_ZN6duckdbL16UpdateMergeFetchINS_8string_tEEEvmmRNS_10UpdateInfoERNS_6VectorE.sink = phi ptr [ @_ZN6duckdbL16UpdateMergeFetchINS_8string_tEEEvmmRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread117 ], [ @_ZN6duckdbL16UpdateMergeFetchINS_10interval_tEEEvmmRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread115 ], [ @_ZN6duckdbL16UpdateMergeFetchIdEEvmmRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread113 ], [ @_ZN6duckdbL16UpdateMergeFetchIfEEvmmRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread111 ], [ @_ZN6duckdbL16UpdateMergeFetchINS_10uhugeint_tEEEvmmRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread109 ], [ @_ZN6duckdbL16UpdateMergeFetchINS_9hugeint_tEEEvmmRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread107 ], [ @_ZN6duckdbL16UpdateMergeFetchImEEvmmRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread105 ], [ @_ZN6duckdbL16UpdateMergeFetchIjEEvmmRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread103 ], [ @_ZN6duckdbL16UpdateMergeFetchItEEvmmRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread101 ], [ @_ZN6duckdbL16UpdateMergeFetchIhEEvmmRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread99 ], [ @_ZN6duckdbL16UpdateMergeFetchIlEEvmmRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread97 ], [ @_ZN6duckdbL16UpdateMergeFetchIiEEvmmRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread95 ], [ @_ZN6duckdbL16UpdateMergeFetchIsEEvmmRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread93 ], [ @_ZN6duckdbL19UpdateMergeValidityEmmRNS_10UpdateInfoERNS_6VectorE, %bb.f ]
  %_ZN6duckdbL23TemplatedFetchCommittedINS_8string_tEEEvRNS_10UpdateInfoERNS_6VectorE.sink = phi ptr [ @_ZN6duckdbL23TemplatedFetchCommittedINS_8string_tEEEvRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread117 ], [ @_ZN6duckdbL23TemplatedFetchCommittedINS_10interval_tEEEvRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread115 ], [ @_ZN6duckdbL23TemplatedFetchCommittedIdEEvRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread113 ], [ @_ZN6duckdbL23TemplatedFetchCommittedIfEEvRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread111 ], [ @_ZN6duckdbL23TemplatedFetchCommittedINS_10uhugeint_tEEEvRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread109 ], [ @_ZN6duckdbL23TemplatedFetchCommittedINS_9hugeint_tEEEvRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread107 ], [ @_ZN6duckdbL23TemplatedFetchCommittedImEEvRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread105 ], [ @_ZN6duckdbL23TemplatedFetchCommittedIjEEvRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread103 ], [ @_ZN6duckdbL23TemplatedFetchCommittedItEEvRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread101 ], [ @_ZN6duckdbL23TemplatedFetchCommittedIhEEvRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread99 ], [ @_ZN6duckdbL23TemplatedFetchCommittedIlEEvRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread97 ], [ @_ZN6duckdbL23TemplatedFetchCommittedIiEEvRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread95 ], [ @_ZN6duckdbL23TemplatedFetchCommittedIsEEvRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread93 ], [ @_ZN6duckdbL22FetchCommittedValidityERNS_10UpdateInfoERNS_6VectorE, %bb.f ]
  %_ZN6duckdbL28TemplatedFetchCommittedRangeINS_8string_tEEEvRNS_10UpdateInfoEmmmRNS_6VectorE.sink = phi ptr [ @_ZN6duckdbL28TemplatedFetchCommittedRangeINS_8string_tEEEvRNS_10UpdateInfoEmmmRNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread117 ], [ @_ZN6duckdbL28TemplatedFetchCommittedRangeINS_10interval_tEEEvRNS_10UpdateInfoEmmmRNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread115 ], [ @_ZN6duckdbL28TemplatedFetchCommittedRangeIdEEvRNS_10UpdateInfoEmmmRNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread113 ], [ @_ZN6duckdbL28TemplatedFetchCommittedRangeIfEEvRNS_10UpdateInfoEmmmRNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread111 ], [ @_ZN6duckdbL28TemplatedFetchCommittedRangeINS_10uhugeint_tEEEvRNS_10UpdateInfoEmmmRNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread109 ], [ @_ZN6duckdbL28TemplatedFetchCommittedRangeINS_9hugeint_tEEEvRNS_10UpdateInfoEmmmRNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread107 ], [ @_ZN6duckdbL28TemplatedFetchCommittedRangeImEEvRNS_10UpdateInfoEmmmRNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread105 ], [ @_ZN6duckdbL28TemplatedFetchCommittedRangeIjEEvRNS_10UpdateInfoEmmmRNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread103 ], [ @_ZN6duckdbL28TemplatedFetchCommittedRangeItEEvRNS_10UpdateInfoEmmmRNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread101 ], [ @_ZN6duckdbL28TemplatedFetchCommittedRangeIhEEvRNS_10UpdateInfoEmmmRNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread99 ], [ @_ZN6duckdbL28TemplatedFetchCommittedRangeIlEEvRNS_10UpdateInfoEmmmRNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread97 ], [ @_ZN6duckdbL28TemplatedFetchCommittedRangeIiEEvRNS_10UpdateInfoEmmmRNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread95 ], [ @_ZN6duckdbL28TemplatedFetchCommittedRangeIsEEvRNS_10UpdateInfoEmmmRNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread93 ], [ @_ZN6duckdbL27FetchCommittedRangeValidityERNS_10UpdateInfoEmmmRNS_6VectorE, %bb.f ]
  %_ZN6duckdbL17TemplatedFetchRowINS_8string_tEEEvmmRNS_10UpdateInfoEmRNS_6VectorEm.sink = phi ptr [ @_ZN6duckdbL17TemplatedFetchRowINS_8string_tEEEvmmRNS_10UpdateInfoEmRNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread117 ], [ @_ZN6duckdbL17TemplatedFetchRowINS_10interval_tEEEvmmRNS_10UpdateInfoEmRNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread115 ], [ @_ZN6duckdbL17TemplatedFetchRowIdEEvmmRNS_10UpdateInfoEmRNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread113 ], [ @_ZN6duckdbL17TemplatedFetchRowIfEEvmmRNS_10UpdateInfoEmRNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread111 ], [ @_ZN6duckdbL17TemplatedFetchRowINS_10uhugeint_tEEEvmmRNS_10UpdateInfoEmRNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread109 ], [ @_ZN6duckdbL17TemplatedFetchRowINS_9hugeint_tEEEvmmRNS_10UpdateInfoEmRNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread107 ], [ @_ZN6duckdbL17TemplatedFetchRowImEEvmmRNS_10UpdateInfoEmRNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread105 ], [ @_ZN6duckdbL17TemplatedFetchRowIjEEvmmRNS_10UpdateInfoEmRNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread103 ], [ @_ZN6duckdbL17TemplatedFetchRowItEEvmmRNS_10UpdateInfoEmRNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread101 ], [ @_ZN6duckdbL17TemplatedFetchRowIhEEvmmRNS_10UpdateInfoEmRNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread99 ], [ @_ZN6duckdbL17TemplatedFetchRowIlEEvmmRNS_10UpdateInfoEmRNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread97 ], [ @_ZN6duckdbL17TemplatedFetchRowIiEEvmmRNS_10UpdateInfoEmRNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread95 ], [ @_ZN6duckdbL17TemplatedFetchRowIsEEvmmRNS_10UpdateInfoEmRNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread93 ], [ @_ZN6duckdbL16FetchRowValidityEmmRNS_10UpdateInfoEmRNS_6VectorEm, %bb.f ]
  %_ZN6duckdbL15MergeUpdateLoopINS_8string_tEEEvRNS_10UpdateInfoERNS_6VectorES3_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm.sink = phi ptr [ @_ZN6duckdbL15MergeUpdateLoopINS_8string_tEEEvRNS_10UpdateInfoERNS_6VectorES3_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread117 ], [ @_ZN6duckdbL15MergeUpdateLoopINS_10interval_tEEEvRNS_10UpdateInfoERNS_6VectorES3_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread115 ], [ @_ZN6duckdbL15MergeUpdateLoopIdEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread113 ], [ @_ZN6duckdbL15MergeUpdateLoopIfEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread111 ], [ @_ZN6duckdbL15MergeUpdateLoopINS_10uhugeint_tEEEvRNS_10UpdateInfoERNS_6VectorES3_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread109 ], [ @_ZN6duckdbL15MergeUpdateLoopINS_9hugeint_tEEEvRNS_10UpdateInfoERNS_6VectorES3_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread107 ], [ @_ZN6duckdbL15MergeUpdateLoopImEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread105 ], [ @_ZN6duckdbL15MergeUpdateLoopIjEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread103 ], [ @_ZN6duckdbL15MergeUpdateLoopItEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread101 ], [ @_ZN6duckdbL15MergeUpdateLoopIhEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread99 ], [ @_ZN6duckdbL15MergeUpdateLoopIlEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread97 ], [ @_ZN6duckdbL15MergeUpdateLoopIiEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread95 ], [ @_ZN6duckdbL15MergeUpdateLoopIsEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread93 ], [ @_ZN6duckdbL17MergeValidityLoopERNS_10UpdateInfoERNS_6VectorES1_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm, %bb.f ]
  %_ZN6duckdbL14RollbackUpdateINS_8string_tEEEvRNS_10UpdateInfoES3_.sink = phi ptr [ @_ZN6duckdbL14RollbackUpdateINS_8string_tEEEvRNS_10UpdateInfoES3_, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread117 ], [ @_ZN6duckdbL14RollbackUpdateINS_10interval_tEEEvRNS_10UpdateInfoES3_, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread115 ], [ @_ZN6duckdbL14RollbackUpdateIdEEvRNS_10UpdateInfoES2_, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread113 ], [ @_ZN6duckdbL14RollbackUpdateIfEEvRNS_10UpdateInfoES2_, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread111 ], [ @_ZN6duckdbL14RollbackUpdateINS_10uhugeint_tEEEvRNS_10UpdateInfoES3_, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread109 ], [ @_ZN6duckdbL14RollbackUpdateINS_9hugeint_tEEEvRNS_10UpdateInfoES3_, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread107 ], [ @_ZN6duckdbL14RollbackUpdateImEEvRNS_10UpdateInfoES2_, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread105 ], [ @_ZN6duckdbL14RollbackUpdateIjEEvRNS_10UpdateInfoES2_, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread103 ], [ @_ZN6duckdbL14RollbackUpdateItEEvRNS_10UpdateInfoES2_, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread101 ], [ @_ZN6duckdbL14RollbackUpdateIhEEvRNS_10UpdateInfoES2_, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread99 ], [ @_ZN6duckdbL14RollbackUpdateIlEEvRNS_10UpdateInfoES2_, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread97 ], [ @_ZN6duckdbL14RollbackUpdateIiEEvRNS_10UpdateInfoES2_, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread95 ], [ @_ZN6duckdbL14RollbackUpdateIsEEvRNS_10UpdateInfoES2_, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread93 ], [ @_ZN6duckdbL14RollbackUpdateIbEEvRNS_10UpdateInfoES2_, %bb.f ]
  %_ZN6duckdb22UpdateStringStatisticsEPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE.sink = phi ptr [ @_ZN6duckdb22UpdateStringStatisticsEPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread117 ], [ @_ZN6duckdb32TemplatedUpdateNumericStatisticsINS_10interval_tEEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread115 ], [ @_ZN6duckdb32TemplatedUpdateNumericStatisticsIdEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread113 ], [ @_ZN6duckdb32TemplatedUpdateNumericStatisticsIfEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread111 ], [ @_ZN6duckdb32TemplatedUpdateNumericStatisticsINS_10uhugeint_tEEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread109 ], [ @_ZN6duckdb32TemplatedUpdateNumericStatisticsINS_9hugeint_tEEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread107 ], [ @_ZN6duckdb32TemplatedUpdateNumericStatisticsImEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread105 ], [ @_ZN6duckdb32TemplatedUpdateNumericStatisticsIjEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread103 ], [ @_ZN6duckdb32TemplatedUpdateNumericStatisticsItEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread101 ], [ @_ZN6duckdb32TemplatedUpdateNumericStatisticsIhEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread99 ], [ @_ZN6duckdb32TemplatedUpdateNumericStatisticsIlEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread97 ], [ @_ZN6duckdb32TemplatedUpdateNumericStatisticsIiEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread95 ], [ @_ZN6duckdb32TemplatedUpdateNumericStatisticsIsEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread93 ], [ @_ZN6duckdb24UpdateValidityStatisticsEPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE, %bb.f ]
  %.06.i83.ph = phi ptr [ @_ZN6duckdb28TemplatedGetEffectiveUpdatesINS_8string_tEEEmRNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread117 ], [ @_ZN6duckdb28TemplatedGetEffectiveUpdatesINS_10interval_tEEEmRNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread115 ], [ @_ZN6duckdb28TemplatedGetEffectiveUpdatesIdEEmRNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread113 ], [ @_ZN6duckdb28TemplatedGetEffectiveUpdatesIfEEmRNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread111 ], [ @_ZN6duckdb28TemplatedGetEffectiveUpdatesINS_10uhugeint_tEEEmRNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread109 ], [ @_ZN6duckdb28TemplatedGetEffectiveUpdatesINS_9hugeint_tEEEmRNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread107 ], [ @_ZN6duckdb28TemplatedGetEffectiveUpdatesImEEmRNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread105 ], [ @_ZN6duckdb28TemplatedGetEffectiveUpdatesIjEEmRNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread103 ], [ @_ZN6duckdb28TemplatedGetEffectiveUpdatesItEEmRNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread101 ], [ @_ZN6duckdb28TemplatedGetEffectiveUpdatesIhEEmRNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread99 ], [ @_ZN6duckdb28TemplatedGetEffectiveUpdatesIlEEmRNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread97 ], [ @_ZN6duckdb28TemplatedGetEffectiveUpdatesIiEEmRNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread95 ], [ @_ZN6duckdb28TemplatedGetEffectiveUpdatesIsEEmRNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread93 ], [ @_ZN6duckdb27GetEffectiveUpdatesValidityERNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %bb.f ]
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %_ZN6duckdbL20InitializeUpdateDataINS_8string_tEEEvRNS_10UpdateInfoERNS_6VectorES3_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE.sink, ptr %108, align 8, !tbaa !1091
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %_ZN6duckdbL16UpdateMergeFetchINS_8string_tEEEvmmRNS_10UpdateInfoERNS_6VectorE.sink, ptr %i.ag, align 8, !tbaa !1025
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 304
end_hunk_5
begin_hunk_6
  store ptr %_ZN6duckdbL14RollbackUpdateINS_8string_tEEEvRNS_10UpdateInfoES3_.sink, ptr %i.al, align 8, !tbaa !2021
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %_ZN6duckdb22UpdateStringStatisticsEPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE.sink, ptr %i.am, align 8, !tbaa !1059
  br label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit

_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit: ; preds = %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a, %_ZN6duckdbL27GetStatisticsUpdateFunctionENS_12PhysicalTypeE.exit, %_ZN6duckdbL27GetStatisticsUpdateFunctionENS_12PhysicalTypeE.exit
  %.06.i83 = phi ptr [ @_ZN6duckdb28TemplatedGetEffectiveUpdatesIaEEmRNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %_ZN6duckdbL27GetStatisticsUpdateFunctionENS_12PhysicalTypeE.exit ], [ @_ZN6duckdb28TemplatedGetEffectiveUpdatesIaEEmRNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %_ZN6duckdbL27GetStatisticsUpdateFunctionENS_12PhysicalTypeE.exit ], [ %.06.i83.ph, %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a ]
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %.06.i83, ptr %109, align 8, !tbaa !1071
  ret void

bb.m:                                             ; preds = %bb.a
end_hunk_6
begin_hunk_7
bb.n:                                             ; preds = %bb.b
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #39
  br label %bb.r

bb.o:                                             ; preds = %bb.d, %bb.c
end_hunk_7
begin_hunk_8
          cleanup
  br label %.body

.body:                                            ; preds = %43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25, %67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread107.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i89, %_ZN6duckdbL22GetFetchUpdateFunctionENS_12PhysicalTypeE.exit, %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i71, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread115.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i53, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread99.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35, %55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %31
  %eh.lpad-body = phi { ptr, i32 } [ %27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn11.i, %31 ], [ %39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25 ], [ %39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i26 ], [ %.pn11.i22, %43 ], [ %51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34 ], [ %51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35 ], [ %.pn11.i31, %55 ], [ %63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43 ], [ %63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i44 ], [ %.pn11.i40, %67 ], [ %75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52 ], [ %75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i53 ], [ %.pn11.i49, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread99.a ], [ %85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61 ], [ %85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i62 ], [ %.pn11.i58, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread107.a ], [ %94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70 ], [ %94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i71 ], [ %.pn11.i67, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread115.a ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.a ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.a ], [ %.pn11.i.a, %bb.k ], [ %i.aq, %bb.p ], [ %104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i89 ], [ %.pn11.i85, %_ZN6duckdbL22GetFetchUpdateFunctionENS_12PhysicalTypeE.exit ], [ %104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88 ]
  call void @_ZN6duckdb14ArenaAllocatorD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #39
  br label %bb.q

end_hunk_8
