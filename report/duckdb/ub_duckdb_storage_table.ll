begin_hunk_0
@__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@.str.175 = private unnamed_addr constant [38 x i8] c"Unimplemented type for update segment\00", align 1
@.str.176 = private unnamed_addr constant [56 x i8] c"Expected vector of type %s, but found vector of type %s\00", align 1
@.str.179 = private unnamed_addr constant [61 x i8] c"Expected unified vector format of type %s, but found type %s\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
end_hunk_0
begin_hunk_1
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %4 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  store ptr %1, ptr %0, align 8, !tbaa !301
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN6duckdb11StorageLockC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
end_hunk_1
begin_hunk_2
  store ptr null, ptr %i.b, align 8, !tbaa !2019
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb17SegmentStatisticsC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull %4)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #39
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i8 0, i64 40, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
end_hunk_2
begin_hunk_3

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.n = load i8, ptr %i.m, align 1, !tbaa !414   ; 3 uses
  %i.o = invoke noundef i64 @_ZN6duckdb13GetTypeIdSizeENS_12PhysicalTypeE(i8 noundef zeroext %i.n)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.o, ptr %i.p, align 8, !tbaa !1080
  switch i8 %i.n, label %bb.g [
    i8 -50, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread
    i8 1, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit
    i8 3, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit
    i8 5, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread93.a
    i8 7, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread95.a
    i8 9, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread97.a
    i8 2, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread99.a
    i8 4, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread101.a
    i8 6, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread103.a
    i8 8, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread105.a
    i8 -52, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread107.a
    i8 -53, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread109.a
    i8 11, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread111.a
    i8 12, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread113.a
    i8 21, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread115.a
    i8 -56, label %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread117.a
  ]

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread: ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr @_ZN6duckdbL24InitializeUpdateValidityERNS_10UpdateInfoERNS_6VectorES1_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE, ptr %i.q, align 8, !tbaa !1091
  br label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread93.a: ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr @_ZN6duckdbL20InitializeUpdateDataIsEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE, ptr %i.r, align 8, !tbaa !1091
  br label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread95.a: ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr @_ZN6duckdbL20InitializeUpdateDataIiEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE, ptr %i.s, align 8, !tbaa !1091
  br label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread97.a: ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr @_ZN6duckdbL20InitializeUpdateDataIlEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE, ptr %i.t, align 8, !tbaa !1091
  br label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread99.a: ; preds = %bb.f
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr @_ZN6duckdbL20InitializeUpdateDataIhEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE, ptr %5, align 8, !tbaa !1091
  br label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread101.a: ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr @_ZN6duckdbL20InitializeUpdateDataItEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE, ptr %i.u, align 8, !tbaa !1091
  br label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread103.a: ; preds = %bb.f
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr @_ZN6duckdbL20InitializeUpdateDataIjEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE, ptr %6, align 8, !tbaa !1091
  br label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread105.a: ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr @_ZN6duckdbL20InitializeUpdateDataImEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE, ptr %i.v, align 8, !tbaa !1091
  br label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread107.a: ; preds = %bb.f
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr @_ZN6duckdbL20InitializeUpdateDataINS_9hugeint_tEEEvRNS_10UpdateInfoERNS_6VectorES3_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE, ptr %7, align 8, !tbaa !1091
  br label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread109.a: ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr @_ZN6duckdbL20InitializeUpdateDataINS_10uhugeint_tEEEvRNS_10UpdateInfoERNS_6VectorES3_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE, ptr %i.w, align 8, !tbaa !1091
  br label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread111.a: ; preds = %bb.f
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr @_ZN6duckdbL20InitializeUpdateDataIfEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE, ptr %8, align 8, !tbaa !1091
  br label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread113.a: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr @_ZN6duckdbL20InitializeUpdateDataIdEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE, ptr %i.x, align 8, !tbaa !1091
  br label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread115.a: ; preds = %bb.f
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr @_ZN6duckdbL20InitializeUpdateDataINS_10interval_tEEEvRNS_10UpdateInfoERNS_6VectorES3_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE, ptr %9, align 8, !tbaa !1091
  br label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread117.a: ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr @_ZN6duckdbL20InitializeUpdateDataINS_8string_tEEEvRNS_10UpdateInfoERNS_6VectorES3_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE, ptr %i.y, align 8, !tbaa !1091
  br label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a

bb.g:                                             ; preds = %bb.f
  %i.z = call ptr @__cxa_allocate_exception(i64 16) #39 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.175, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.a

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
end_hunk_3
begin_hunk_4
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.a: ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i.a = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !31    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.a: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.ac) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  br i1 %.0.i.a, label %bb.k, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.a: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  br i1 %.0.i.a, label %bb.k, label %.body

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.a
end_hunk_4
begin_hunk_5
bb.l:                                             ; preds = %bb.i
  unreachable

_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit: ; preds = %bb.f, %bb.f
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr @_ZN6duckdbL20InitializeUpdateDataIaEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatERKNS_15SelectionVectorE, ptr %10, align 8, !tbaa !1091
  %i.af = icmp eq i8 %i.n, 2
  br i1 %i.af, label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a, label %_ZN6duckdbL22GetFetchUpdateFunctionENS_12PhysicalTypeE.exit

_ZN6duckdbL22GetFetchUpdateFunctionENS_12PhysicalTypeE.exit: ; preds = %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit
  br label %_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a

_ZN6duckdbL27GetEffectiveUpdatesFunctionENS_12PhysicalTypeE.exit.a: ; preds = %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread99.a, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread117.a, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread115.a, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread113.a, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread111.a, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread109.a, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread107.a, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread105.a, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread103.a, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread101.a, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread97.a, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread95.a, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread93.a, %_ZN6duckdbL22GetFetchUpdateFunctionENS_12PhysicalTypeE.exit, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread
  %_ZN6duckdbL16UpdateMergeFetchINS_8string_tEEEvmmRNS_10UpdateInfoERNS_6VectorE.sink = phi ptr [ @_ZN6duckdbL16UpdateMergeFetchINS_8string_tEEEvmmRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread117.a ], [ @_ZN6duckdbL16UpdateMergeFetchINS_10interval_tEEEvmmRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread115.a ], [ @_ZN6duckdbL16UpdateMergeFetchIdEEvmmRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread113.a ], [ @_ZN6duckdbL16UpdateMergeFetchIfEEvmmRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread111.a ], [ @_ZN6duckdbL16UpdateMergeFetchINS_10uhugeint_tEEEvmmRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread109.a ], [ @_ZN6duckdbL16UpdateMergeFetchINS_9hugeint_tEEEvmmRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread107.a ], [ @_ZN6duckdbL16UpdateMergeFetchImEEvmmRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread105.a ], [ @_ZN6duckdbL16UpdateMergeFetchIjEEvmmRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread103.a ], [ @_ZN6duckdbL16UpdateMergeFetchItEEvmmRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread101.a ], [ @_ZN6duckdbL19UpdateMergeValidityEmmRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread ], [ @_ZN6duckdbL16UpdateMergeFetchIlEEvmmRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread97.a ], [ @_ZN6duckdbL16UpdateMergeFetchIiEEvmmRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread95.a ], [ @_ZN6duckdbL16UpdateMergeFetchIsEEvmmRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread93.a ], [ @_ZN6duckdbL16UpdateMergeFetchIaEEvmmRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL22GetFetchUpdateFunctionENS_12PhysicalTypeE.exit ], [ @_ZN6duckdbL16UpdateMergeFetchIhEEvmmRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit ], [ @_ZN6duckdbL16UpdateMergeFetchIhEEvmmRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread99.a ]
  %_ZN6duckdbL23TemplatedFetchCommittedINS_8string_tEEEvRNS_10UpdateInfoERNS_6VectorE.sink = phi ptr [ @_ZN6duckdbL23TemplatedFetchCommittedINS_8string_tEEEvRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread117.a ], [ @_ZN6duckdbL23TemplatedFetchCommittedINS_10interval_tEEEvRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread115.a ], [ @_ZN6duckdbL23TemplatedFetchCommittedIdEEvRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread113.a ], [ @_ZN6duckdbL23TemplatedFetchCommittedIfEEvRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread111.a ], [ @_ZN6duckdbL23TemplatedFetchCommittedINS_10uhugeint_tEEEvRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread109.a ], [ @_ZN6duckdbL23TemplatedFetchCommittedINS_9hugeint_tEEEvRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread107.a ], [ @_ZN6duckdbL23TemplatedFetchCommittedImEEvRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread105.a ], [ @_ZN6duckdbL23TemplatedFetchCommittedIjEEvRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread103.a ], [ @_ZN6duckdbL23TemplatedFetchCommittedItEEvRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread101.a ], [ @_ZN6duckdbL22FetchCommittedValidityERNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread ], [ @_ZN6duckdbL23TemplatedFetchCommittedIlEEvRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread97.a ], [ @_ZN6duckdbL23TemplatedFetchCommittedIiEEvRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread95.a ], [ @_ZN6duckdbL23TemplatedFetchCommittedIsEEvRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread93.a ], [ @_ZN6duckdbL23TemplatedFetchCommittedIaEEvRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL22GetFetchUpdateFunctionENS_12PhysicalTypeE.exit ], [ @_ZN6duckdbL23TemplatedFetchCommittedIhEEvRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit ], [ @_ZN6duckdbL23TemplatedFetchCommittedIhEEvRNS_10UpdateInfoERNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread99.a ]
  %_ZN6duckdbL28TemplatedFetchCommittedRangeINS_8string_tEEEvRNS_10UpdateInfoEmmmRNS_6VectorE.sink = phi ptr [ @_ZN6duckdbL28TemplatedFetchCommittedRangeINS_8string_tEEEvRNS_10UpdateInfoEmmmRNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread117.a ], [ @_ZN6duckdbL28TemplatedFetchCommittedRangeINS_10interval_tEEEvRNS_10UpdateInfoEmmmRNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread115.a ], [ @_ZN6duckdbL28TemplatedFetchCommittedRangeIdEEvRNS_10UpdateInfoEmmmRNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread113.a ], [ @_ZN6duckdbL28TemplatedFetchCommittedRangeIfEEvRNS_10UpdateInfoEmmmRNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread111.a ], [ @_ZN6duckdbL28TemplatedFetchCommittedRangeINS_10uhugeint_tEEEvRNS_10UpdateInfoEmmmRNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread109.a ], [ @_ZN6duckdbL28TemplatedFetchCommittedRangeINS_9hugeint_tEEEvRNS_10UpdateInfoEmmmRNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread107.a ], [ @_ZN6duckdbL28TemplatedFetchCommittedRangeImEEvRNS_10UpdateInfoEmmmRNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread105.a ], [ @_ZN6duckdbL28TemplatedFetchCommittedRangeIjEEvRNS_10UpdateInfoEmmmRNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread103.a ], [ @_ZN6duckdbL28TemplatedFetchCommittedRangeItEEvRNS_10UpdateInfoEmmmRNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread101.a ], [ @_ZN6duckdbL27FetchCommittedRangeValidityERNS_10UpdateInfoEmmmRNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread ], [ @_ZN6duckdbL28TemplatedFetchCommittedRangeIlEEvRNS_10UpdateInfoEmmmRNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread97.a ], [ @_ZN6duckdbL28TemplatedFetchCommittedRangeIiEEvRNS_10UpdateInfoEmmmRNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread95.a ], [ @_ZN6duckdbL28TemplatedFetchCommittedRangeIsEEvRNS_10UpdateInfoEmmmRNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread93.a ], [ @_ZN6duckdbL28TemplatedFetchCommittedRangeIaEEvRNS_10UpdateInfoEmmmRNS_6VectorE, %_ZN6duckdbL22GetFetchUpdateFunctionENS_12PhysicalTypeE.exit ], [ @_ZN6duckdbL28TemplatedFetchCommittedRangeIhEEvRNS_10UpdateInfoEmmmRNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit ], [ @_ZN6duckdbL28TemplatedFetchCommittedRangeIhEEvRNS_10UpdateInfoEmmmRNS_6VectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread99.a ]
  %_ZN6duckdbL17TemplatedFetchRowINS_8string_tEEEvmmRNS_10UpdateInfoEmRNS_6VectorEm.sink = phi ptr [ @_ZN6duckdbL17TemplatedFetchRowINS_8string_tEEEvmmRNS_10UpdateInfoEmRNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread117.a ], [ @_ZN6duckdbL17TemplatedFetchRowINS_10interval_tEEEvmmRNS_10UpdateInfoEmRNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread115.a ], [ @_ZN6duckdbL17TemplatedFetchRowIdEEvmmRNS_10UpdateInfoEmRNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread113.a ], [ @_ZN6duckdbL17TemplatedFetchRowIfEEvmmRNS_10UpdateInfoEmRNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread111.a ], [ @_ZN6duckdbL17TemplatedFetchRowINS_10uhugeint_tEEEvmmRNS_10UpdateInfoEmRNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread109.a ], [ @_ZN6duckdbL17TemplatedFetchRowINS_9hugeint_tEEEvmmRNS_10UpdateInfoEmRNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread107.a ], [ @_ZN6duckdbL17TemplatedFetchRowImEEvmmRNS_10UpdateInfoEmRNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread105.a ], [ @_ZN6duckdbL17TemplatedFetchRowIjEEvmmRNS_10UpdateInfoEmRNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread103.a ], [ @_ZN6duckdbL17TemplatedFetchRowItEEvmmRNS_10UpdateInfoEmRNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread101.a ], [ @_ZN6duckdbL16FetchRowValidityEmmRNS_10UpdateInfoEmRNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread ], [ @_ZN6duckdbL17TemplatedFetchRowIlEEvmmRNS_10UpdateInfoEmRNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread97.a ], [ @_ZN6duckdbL17TemplatedFetchRowIiEEvmmRNS_10UpdateInfoEmRNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread95.a ], [ @_ZN6duckdbL17TemplatedFetchRowIsEEvmmRNS_10UpdateInfoEmRNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread93.a ], [ @_ZN6duckdbL17TemplatedFetchRowIaEEvmmRNS_10UpdateInfoEmRNS_6VectorEm, %_ZN6duckdbL22GetFetchUpdateFunctionENS_12PhysicalTypeE.exit ], [ @_ZN6duckdbL17TemplatedFetchRowIhEEvmmRNS_10UpdateInfoEmRNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit ], [ @_ZN6duckdbL17TemplatedFetchRowIhEEvmmRNS_10UpdateInfoEmRNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread99.a ]
  %_ZN6duckdbL15MergeUpdateLoopINS_8string_tEEEvRNS_10UpdateInfoERNS_6VectorES3_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm.sink = phi ptr [ @_ZN6duckdbL15MergeUpdateLoopINS_8string_tEEEvRNS_10UpdateInfoERNS_6VectorES3_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread117.a ], [ @_ZN6duckdbL15MergeUpdateLoopINS_10interval_tEEEvRNS_10UpdateInfoERNS_6VectorES3_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread115.a ], [ @_ZN6duckdbL15MergeUpdateLoopIdEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread113.a ], [ @_ZN6duckdbL15MergeUpdateLoopIfEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread111.a ], [ @_ZN6duckdbL15MergeUpdateLoopINS_10uhugeint_tEEEvRNS_10UpdateInfoERNS_6VectorES3_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread109.a ], [ @_ZN6duckdbL15MergeUpdateLoopINS_9hugeint_tEEEvRNS_10UpdateInfoERNS_6VectorES3_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread107.a ], [ @_ZN6duckdbL15MergeUpdateLoopImEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread105.a ], [ @_ZN6duckdbL15MergeUpdateLoopIjEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread103.a ], [ @_ZN6duckdbL15MergeUpdateLoopItEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread101.a ], [ @_ZN6duckdbL17MergeValidityLoopERNS_10UpdateInfoERNS_6VectorES1_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread ], [ @_ZN6duckdbL15MergeUpdateLoopIlEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread97.a ], [ @_ZN6duckdbL15MergeUpdateLoopIiEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread95.a ], [ @_ZN6duckdbL15MergeUpdateLoopIsEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread93.a ], [ @_ZN6duckdbL15MergeUpdateLoopIaEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm, %_ZN6duckdbL22GetFetchUpdateFunctionENS_12PhysicalTypeE.exit ], [ @_ZN6duckdbL15MergeUpdateLoopIhEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit ], [ @_ZN6duckdbL15MergeUpdateLoopIhEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread99.a ]
  %_ZN6duckdbL14RollbackUpdateINS_8string_tEEEvRNS_10UpdateInfoES3_.sink = phi ptr [ @_ZN6duckdbL14RollbackUpdateINS_8string_tEEEvRNS_10UpdateInfoES3_, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread117.a ], [ @_ZN6duckdbL14RollbackUpdateINS_10interval_tEEEvRNS_10UpdateInfoES3_, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread115.a ], [ @_ZN6duckdbL14RollbackUpdateIdEEvRNS_10UpdateInfoES2_, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread113.a ], [ @_ZN6duckdbL14RollbackUpdateIfEEvRNS_10UpdateInfoES2_, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread111.a ], [ @_ZN6duckdbL14RollbackUpdateINS_10uhugeint_tEEEvRNS_10UpdateInfoES3_, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread109.a ], [ @_ZN6duckdbL14RollbackUpdateINS_9hugeint_tEEEvRNS_10UpdateInfoES3_, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread107.a ], [ @_ZN6duckdbL14RollbackUpdateImEEvRNS_10UpdateInfoES2_, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread105.a ], [ @_ZN6duckdbL14RollbackUpdateIjEEvRNS_10UpdateInfoES2_, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread103.a ], [ @_ZN6duckdbL14RollbackUpdateItEEvRNS_10UpdateInfoES2_, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread101.a ], [ @_ZN6duckdbL14RollbackUpdateIbEEvRNS_10UpdateInfoES2_, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread ], [ @_ZN6duckdbL14RollbackUpdateIlEEvRNS_10UpdateInfoES2_, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread97.a ], [ @_ZN6duckdbL14RollbackUpdateIiEEvRNS_10UpdateInfoES2_, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread95.a ], [ @_ZN6duckdbL14RollbackUpdateIsEEvRNS_10UpdateInfoES2_, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread93.a ], [ @_ZN6duckdbL14RollbackUpdateIaEEvRNS_10UpdateInfoES2_, %_ZN6duckdbL22GetFetchUpdateFunctionENS_12PhysicalTypeE.exit ], [ @_ZN6duckdbL14RollbackUpdateIhEEvRNS_10UpdateInfoES2_, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit ], [ @_ZN6duckdbL14RollbackUpdateIhEEvRNS_10UpdateInfoES2_, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread99.a ]
  %_ZN6duckdb22UpdateStringStatisticsEPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE.sink = phi ptr [ @_ZN6duckdb22UpdateStringStatisticsEPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread117.a ], [ @_ZN6duckdb32TemplatedUpdateNumericStatisticsINS_10interval_tEEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread115.a ], [ @_ZN6duckdb32TemplatedUpdateNumericStatisticsIdEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread113.a ], [ @_ZN6duckdb32TemplatedUpdateNumericStatisticsIfEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread111.a ], [ @_ZN6duckdb32TemplatedUpdateNumericStatisticsINS_10uhugeint_tEEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread109.a ], [ @_ZN6duckdb32TemplatedUpdateNumericStatisticsINS_9hugeint_tEEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread107.a ], [ @_ZN6duckdb32TemplatedUpdateNumericStatisticsImEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread105.a ], [ @_ZN6duckdb32TemplatedUpdateNumericStatisticsIjEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread103.a ], [ @_ZN6duckdb32TemplatedUpdateNumericStatisticsItEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread101.a ], [ @_ZN6duckdb24UpdateValidityStatisticsEPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread ], [ @_ZN6duckdb32TemplatedUpdateNumericStatisticsIlEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread97.a ], [ @_ZN6duckdb32TemplatedUpdateNumericStatisticsIiEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread95.a ], [ @_ZN6duckdb32TemplatedUpdateNumericStatisticsIsEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread93.a ], [ @_ZN6duckdb32TemplatedUpdateNumericStatisticsIaEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE, %_ZN6duckdbL22GetFetchUpdateFunctionENS_12PhysicalTypeE.exit ], [ @_ZN6duckdb32TemplatedUpdateNumericStatisticsIhEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit ], [ @_ZN6duckdb32TemplatedUpdateNumericStatisticsIhEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread99.a ]
  %.06.i83 = phi ptr [ @_ZN6duckdb28TemplatedGetEffectiveUpdatesINS_8string_tEEEmRNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread117.a ], [ @_ZN6duckdb28TemplatedGetEffectiveUpdatesINS_10interval_tEEEmRNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread115.a ], [ @_ZN6duckdb28TemplatedGetEffectiveUpdatesIdEEmRNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread113.a ], [ @_ZN6duckdb28TemplatedGetEffectiveUpdatesIfEEmRNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread111.a ], [ @_ZN6duckdb28TemplatedGetEffectiveUpdatesINS_10uhugeint_tEEEmRNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread109.a ], [ @_ZN6duckdb28TemplatedGetEffectiveUpdatesINS_9hugeint_tEEEmRNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread107.a ], [ @_ZN6duckdb28TemplatedGetEffectiveUpdatesImEEmRNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread105.a ], [ @_ZN6duckdb28TemplatedGetEffectiveUpdatesIjEEmRNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread103.a ], [ @_ZN6duckdb28TemplatedGetEffectiveUpdatesItEEmRNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread101.a ], [ @_ZN6duckdb27GetEffectiveUpdatesValidityERNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread ], [ @_ZN6duckdb28TemplatedGetEffectiveUpdatesIlEEmRNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread97.a ], [ @_ZN6duckdb28TemplatedGetEffectiveUpdatesIiEEmRNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread95.a ], [ @_ZN6duckdb28TemplatedGetEffectiveUpdatesIsEEmRNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread93.a ], [ @_ZN6duckdb28TemplatedGetEffectiveUpdatesIaEEmRNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %_ZN6duckdbL22GetFetchUpdateFunctionENS_12PhysicalTypeE.exit ], [ @_ZN6duckdb28TemplatedGetEffectiveUpdatesIhEEmRNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit ], [ @_ZN6duckdb28TemplatedGetEffectiveUpdatesIhEEmRNS_19UnifiedVectorFormatEPlmRNS_15SelectionVectorERNS_6VectorEm, %_ZN6duckdbL27GetInitializeUpdateFunctionENS_12PhysicalTypeE.exit.thread99.a ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %_ZN6duckdbL16UpdateMergeFetchINS_8string_tEEEvmmRNS_10UpdateInfoERNS_6VectorE.sink, ptr %i.ag, align 8, !tbaa !1025
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 304
end_hunk_5
begin_hunk_6
  store ptr %_ZN6duckdbL14RollbackUpdateINS_8string_tEEEvRNS_10UpdateInfoES3_.sink, ptr %i.al, align 8, !tbaa !2021
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %_ZN6duckdb22UpdateStringStatisticsEPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE.sink, ptr %i.am, align 8, !tbaa !1059
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %.06.i83, ptr %11, align 8, !tbaa !1071
  ret void

bb.m:                                             ; preds = %bb.a
end_hunk_6
begin_hunk_7
bb.n:                                             ; preds = %bb.b
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #39
  br label %bb.r

bb.o:                                             ; preds = %bb.d, %bb.c
end_hunk_7
begin_hunk_8
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.a, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.a ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.a ], [ %.pn11.i.a, %bb.k ], [ %i.aq, %bb.p ]
  call void @_ZN6duckdb14ArenaAllocatorD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #39
  br label %bb.q

end_hunk_8
