inline.NumInlined: 14179
inline.NumDeleted: 6830
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 120
loop-unroll.NumUnrolled: 157
begin_hunk_0_@_ZNK6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEptEv:bb.a
bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !63     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !446  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIN6duckdb21TemplatedValidityDataImEEEvPT_.exit, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #32
  br label %_ZSt8_DestroyIN6duckdb21TemplatedValidityDataImEEEvPT_.exit

_ZSt8_DestroyIN6duckdb21TemplatedValidityDataImEEEvPT_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1337 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !239
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #30
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb20ConstantScanFunctionIaEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !461
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) %i.a)
  %i.d = invoke noundef signext i8 @_ZNK6duckdb5Value14GetValueUnsafeIaEET_v(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZN6duckdb12NumericStats6GetMinIaEET_RKNS_14BaseStatisticsE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.e

_ZN6duckdb12NumericStats6GetMinIaEET_RKNS_14BaseStatisticsE.exit: ; preds = %bb.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  store i8 %i.d, ptr %i.c, align 1, !tbaa !239
  call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb19ConstantScanPartialIaEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !461
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %5, ptr noundef nonnull align 8 dereferenceable(128) %i.a)
  %i.d = invoke noundef signext i8 @_ZNK6duckdb5Value14GetValueUnsafeIaEET_v(ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZN6duckdb12NumericStats6GetMinIaEET_RKNS_14BaseStatisticsE.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %i.e

_ZN6duckdb12NumericStats6GetMinIaEET_RKNS_14BaseStatisticsE.exit.i: ; preds = %bb.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN6duckdb20ConstantFillFunctionIaEEvRNS_13ColumnSegmentERNS_6VectorEmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb12NumericStats6GetMinIaEET_RKNS_14BaseStatisticsE.exit.i
  %i.f = getelementptr i8, ptr %i.c, i64 %4
  call void @llvm.memset.p0.i64(ptr align 1 %i.f, i8 %i.d, i64 %2, i1 false), !tbaa !239
  br label %_ZN6duckdb20ConstantFillFunctionIaEEvRNS_13ColumnSegmentERNS_6VectorEmm.exit

_ZN6duckdb20ConstantFillFunctionIaEEvRNS_13ColumnSegmentERNS_6VectorEmm.exit: ; preds = %_ZN6duckdb12NumericStats6GetMinIaEET_RKNS_14BaseStatisticsE.exit.i, %.lr.ph.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb16ConstantFetchRowIaEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !461
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %5, ptr noundef nonnull align 8 dereferenceable(128) %i.a)
  %i.d = invoke noundef signext i8 @_ZNK6duckdb5Value14GetValueUnsafeIaEET_v(ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZN6duckdb20ConstantFillFunctionIaEEvRNS_13ColumnSegmentERNS_6VectorEmm.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %i.e

_ZN6duckdb20ConstantFillFunctionIaEEvRNS_13ColumnSegmentERNS_6VectorEmm.exit: ; preds = %bb.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.f = getelementptr i8, ptr %i.c, i64 %4
  store i8 %i.d, ptr %i.f, align 1
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConstantSelectIaEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %5) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !461
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %6, ptr noundef nonnull align 8 dereferenceable(128) %i.a)
  %i.d = invoke noundef signext i8 @_ZNK6duckdb5Value14GetValueUnsafeIaEET_v(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %_ZN6duckdb20ConstantScanFunctionIaEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  resume { ptr, i32 } %i.e

_ZN6duckdb20ConstantScanFunctionIaEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE.exit: ; preds = %bb.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  store i8 %i.d, ptr %i.c, align 1, !tbaa !239
  call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !186
  %i.e = and i8 %i.d, -3
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.55, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 3, ptr %i.a, align 1, !tbaa !1364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.h = load i8, ptr %i.c, align 1, !tbaa !186
  store i8 %i.h, ptr %i.b, align 1, !tbaa !1364
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.k = load ptr, ptr %1, align 8, !tbaa !63     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.g) #30
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.1187", align 8  ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !1365
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !1365
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINS_12PhysicalTypeEJRKS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RSt6vectorINS_20ExceptionFormatValueESaISE_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !1121, !noalias !1365 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1124, !noalias !1365 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #32
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1125

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 8, !tbaa !1121, !noalias !1365
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #32
  br label %_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !1365
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !1365
  invoke void @_ZN6duckdb17InternalExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_.exit
  %i.k = load ptr, ptr %5, align 8, !tbaa !63     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %5, align 8, !tbaa !63     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
end_hunk_0
begin_hunk_1_@_ZN6duckdb16ConstantFetchRowIlEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.f = getelementptr [8 x i8], ptr %i.c, i64 %4
  store i64 %i.d, ptr %i.f, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConstantSelectIlEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %5) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !461
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %6, ptr noundef nonnull align 8 dereferenceable(128) %i.a)
  %i.d = invoke noundef i64 @_ZNK6duckdb5Value14GetValueUnsafeIlEET_v(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %_ZN6duckdb20ConstantScanFunctionIlEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  resume { ptr, i32 } %i.e

_ZN6duckdb20ConstantScanFunctionIlEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE.exit: ; preds = %bb.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  store i64 %i.d, ptr %i.c, align 8, !tbaa !21
  call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !186
  %i.e = icmp eq i8 %i.d, 9
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.55, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 9, ptr %i.a, align 1, !tbaa !1364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.g = load i8, ptr %i.c, align 1, !tbaa !186
  store i8 %i.g, ptr %i.b, align 1, !tbaa !1364
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.j = load ptr, ptr %1, align 8, !tbaa !63     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #30
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare noundef i64 @_ZNK6duckdb5Value14GetValueUnsafeIlEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb20ConstantScanFunctionIhEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !461
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) %i.a)
  %i.d = invoke noundef zeroext i8 @_ZNK6duckdb5Value14GetValueUnsafeIhEET_v(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZN6duckdb12NumericStats6GetMinIhEET_RKNS_14BaseStatisticsE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.e

_ZN6duckdb12NumericStats6GetMinIhEET_RKNS_14BaseStatisticsE.exit: ; preds = %bb.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  store i8 %i.d, ptr %i.c, align 1, !tbaa !239
  call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb19ConstantScanPartialIhEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !461
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %5, ptr noundef nonnull align 8 dereferenceable(128) %i.a)
  %i.d = invoke noundef zeroext i8 @_ZNK6duckdb5Value14GetValueUnsafeIhEET_v(ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZN6duckdb12NumericStats6GetMinIhEET_RKNS_14BaseStatisticsE.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %i.e

_ZN6duckdb12NumericStats6GetMinIhEET_RKNS_14BaseStatisticsE.exit.i: ; preds = %bb.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN6duckdb20ConstantFillFunctionIhEEvRNS_13ColumnSegmentERNS_6VectorEmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb12NumericStats6GetMinIhEET_RKNS_14BaseStatisticsE.exit.i
  %i.f = getelementptr i8, ptr %i.c, i64 %4
  call void @llvm.memset.p0.i64(ptr align 1 %i.f, i8 %i.d, i64 %2, i1 false), !tbaa !239
  br label %_ZN6duckdb20ConstantFillFunctionIhEEvRNS_13ColumnSegmentERNS_6VectorEmm.exit

_ZN6duckdb20ConstantFillFunctionIhEEvRNS_13ColumnSegmentERNS_6VectorEmm.exit: ; preds = %_ZN6duckdb12NumericStats6GetMinIhEET_RKNS_14BaseStatisticsE.exit.i, %.lr.ph.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb16ConstantFetchRowIhEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !461
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %5, ptr noundef nonnull align 8 dereferenceable(128) %i.a)
  %i.d = invoke noundef zeroext i8 @_ZNK6duckdb5Value14GetValueUnsafeIhEET_v(ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZN6duckdb20ConstantFillFunctionIhEEvRNS_13ColumnSegmentERNS_6VectorEmm.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %i.e

_ZN6duckdb20ConstantFillFunctionIhEEvRNS_13ColumnSegmentERNS_6VectorEmm.exit: ; preds = %bb.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.f = getelementptr i8, ptr %i.c, i64 %4
  store i8 %i.d, ptr %i.f, align 1
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConstantSelectIhEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %5) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !461
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %6, ptr noundef nonnull align 8 dereferenceable(128) %i.a)
  %i.d = invoke noundef zeroext i8 @_ZNK6duckdb5Value14GetValueUnsafeIhEET_v(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %_ZN6duckdb20ConstantScanFunctionIhEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  resume { ptr, i32 } %i.e

_ZN6duckdb20ConstantScanFunctionIhEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE.exit: ; preds = %bb.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  store i8 %i.d, ptr %i.c, align 1, !tbaa !239
  call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !186
  %i.e = add i8 %i.d, -1
  %i.f = icmp ult i8 %i.e, 2
  br i1 %i.f, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.55, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 2, ptr %i.a, align 1, !tbaa !1364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.h = load i8, ptr %i.c, align 1, !tbaa !186
  store i8 %i.h, ptr %i.b, align 1, !tbaa !1364
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.k = load ptr, ptr %1, align 8, !tbaa !63     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.g) #30
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare noundef zeroext i8 @_ZNK6duckdb5Value14GetValueUnsafeIhEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb20ConstantScanFunctionItEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeItEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !461
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) %i.a)
  %i.d = invoke noundef zeroext i16 @_ZNK6duckdb5Value14GetValueUnsafeItEET_v(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZN6duckdb12NumericStats6GetMinItEET_RKNS_14BaseStatisticsE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.e

_ZN6duckdb12NumericStats6GetMinItEET_RKNS_14BaseStatisticsE.exit: ; preds = %bb.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  store i16 %i.d, ptr %i.c, align 2, !tbaa !670
  call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb19ConstantScanPartialItEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeItEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !461
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %5, ptr noundef nonnull align 8 dereferenceable(128) %i.a)
  %i.d = invoke noundef zeroext i16 @_ZNK6duckdb5Value14GetValueUnsafeItEET_v(ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZN6duckdb12NumericStats6GetMinItEET_RKNS_14BaseStatisticsE.exit.i unwind label %bb.b ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %i.e

_ZN6duckdb12NumericStats6GetMinItEET_RKNS_14BaseStatisticsE.exit.i: ; preds = %bb.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN6duckdb20ConstantFillFunctionItEEvRNS_13ColumnSegmentERNS_6VectorEmm.exit, label %iter.check

iter.check:                                       ; preds = %_ZN6duckdb12NumericStats6GetMinItEET_RKNS_14BaseStatisticsE.exit.i
  %i.f = getelementptr [2 x i8], ptr %i.c, i64 %4 ; 3 uses
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check3 = icmp ult i64 %2, 16
  br i1 %min.iters.check3, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %2, 12
  %n.vec = and i64 %2, -16                        ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.d, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.h = getelementptr [2 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.h, align 2, !tbaa !670
  store <8 x i16> %broadcast.splat, ptr %i.i, align 2, !tbaa !670
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !1376

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb20ConstantFillFunctionItEEvRNS_13ColumnSegmentERNS_6VectorEmm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1369

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
end_hunk_1
